<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()=1">
            <div class="container panel">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <xsl:if test="position() = 1">
                    <xsl:attribute name="class">
                        <xsl:text disable-output-escaping="yes">container panel active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <div class="row">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()=2">
            <div class="container panel">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="row">
                    <xsl:apply-templates select="News" ></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()=3">
            <div class="container panel">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="row">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News">
        <xsl:if test="position()&lt;5">
            <div class="col-xl-3 col-lg-3 col-md-6">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <div class="item">
                        <div class="date"><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></div>
                        <div class="desc">
                            <h1><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h1>
                        </div>
                    </div>
                </a>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>