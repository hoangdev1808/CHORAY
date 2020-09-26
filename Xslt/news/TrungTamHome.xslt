<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="block-title">
            <h2>
                <xsl:value-of select="/ZoneList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
            </h2>
        </div>
        <div class="row">
            <div class="col-xl-4 col-lg-4 col-md-12">
                <xsl:apply-templates select="News" mode="BigImg"></xsl:apply-templates>
            </div>
            <div class="col-xl-8 col-lg-8 col-md-12">
                <div class="row">
                    <xsl:apply-templates select="News" mode="SmallImg"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="BigImg">
        <xsl:if test="position()=1">
            <div class="big-img">
                <figure>
                    <div class="img">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <figcaption>
                        <div class="desc">
                            <p>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="SmallImg">
        <xsl:if test="position()&gt;1 and position()&lt;6">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 small-img">
                <figure>
                    <div class="img">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <figcaption>
                        <div class="desc">
                            <p>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>