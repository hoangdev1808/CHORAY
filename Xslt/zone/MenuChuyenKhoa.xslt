<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="title">
            <h3>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </h3>
        </div>
        <nav class="acnav" role="navigation">
            <ul class="acnav__list">
                <xsl:apply-templates select="Zone" mode="Lv-1"></xsl:apply-templates>
            </ul>
        </nav>
    </xsl:template>
    <xsl:template match="Zone" mode="Lv-1">
        <li class="has-children">
            <div class="label">
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                        <xsl:text>label active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <p>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </p>
                <span class="material-icons">keyboard_arrow_down</span>
            </div>
            <ul class="list-level2" id="list-child">
                <xsl:apply-templates select="Zone" mode="Lv-2"></xsl:apply-templates>
            </ul>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="Lv-2">
        <li class="has-children">
            <div class="label">
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                        <xsl:text>label active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="count(Zone) > 0">
                    <span class="material-icons">keyboard_arrow_down</span>
                    <a href="javascript:;">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </a>
                </xsl:if>
                <xsl:if test="count(Zone)=0">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </a>
                </xsl:if>
            </div>
        </li>
    </xsl:template>
</xsl:stylesheet>