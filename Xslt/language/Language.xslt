<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <button class="dropdown-toggle" id="dropdownMenuButton" type="button" data-toggle="dropdown">
            <xsl:apply-templates select="/LanguageList/Language" mode="Active"></xsl:apply-templates>
        </button>
        <div class="dropdown-menu">
            <xsl:apply-templates select="/LanguageList/Language" mode="Drop"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="Language" mode="Active">
        <xsl:if test="IsActive='true'">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Language" mode="Drop">
        <xsl:if test="IsActive='false'">
            <a class="dropdown-item">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>