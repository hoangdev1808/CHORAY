<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="IsActive='true'">
            <div class="specialist-title">
                <h3>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </h3>
            </div>
            <div class="specialist-items">
                <div class="row">
                    <xsl:apply-templates select="Zone" mode="ListChuyenkhoa"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="ListChuyenkhoa">
        <div class="col-xl-3 col-md-4 col-lg-3 col-sm-6 col-6">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <div class="item">
                    <span>Khoa</span>
                    <p>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>