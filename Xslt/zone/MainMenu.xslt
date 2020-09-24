<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <ul class="nav-list">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        </ul>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()=1">
            <li class="nav-item">
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                        <xsl:text>nav-item active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <a class="nav-link">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <em class="ri-home-3-line"></em>
                </a>
            </li>
        </xsl:if>
        <xsl:if test="position()!=1">
            <li class="nav-item">
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                        <xsl:text>nav-item active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="ZoneId=84">
                    <xsl:attribute name="class">
                        <xsl:text>nav-item dropdown</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="ZoneId=85">
                    <xsl:attribute name="class">
                        <xsl:text>nav-item dropdown</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <a class="nav-link">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title"></xsl:value-of>
                </a>
                <xsl:if test="count(Zone)>0">
                    <xsl:choose>
                        <xsl:when test="ZoneId=84">
                            <ul class="dropdown-menu">
                                <xsl:apply-templates select="Zone" mode="lv-2"></xsl:apply-templates>
                            </ul>
                        </xsl:when>
                        <xsl:when test="ZoneId=85">
                            <ul class="dropdown-menu">
                                <xsl:apply-templates select="Zone" mode="DropDown"></xsl:apply-templates>
                            </ul>
                        </xsl:when>
                    </xsl:choose>
                </xsl:if>
            </li>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="lv-2">
        <li class="dropdown-item">
            <xsl:if test="ZoneId=90">
                <xsl:attribute name="class">
                    <xsl:text>dropdown-item dropdown</xsl:text>
                </xsl:attribute>
                <a class="nav-link">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title"></xsl:value-of>
                    <em class="ri-arrow-down-s-line"></em>
                </a>
                <ul class="sup-menu">
                    <xsl:apply-templates select="/ZoneList/Zone/Zone/Zone" mode="lv-3"></xsl:apply-templates>
                </ul>
            </xsl:if>
            <xsl:if test="ZoneId!=90">
                <a class="nav-link">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title"></xsl:value-of>
                </a>
            </xsl:if>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="DropDown">
        <li class="dropdown-item">
            <a class="nav-link">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="lv-3">
        <li class="sup-item">
            <a class="nav-link">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>