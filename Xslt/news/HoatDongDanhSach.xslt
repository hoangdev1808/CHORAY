<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="big-img">
            <div class="row">
                <xsl:apply-templates select="NewsList/News" mode="BigImg"></xsl:apply-templates>
            </div>
        </div>
        <div class="small-img">
            <div class="row">
                <xsl:apply-templates select="NewsList/News" mode="SmallImg"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="BigImg">
        <xsl:if test="position()&gt;0 and position()&lt;3">
            <div class="col-xl-6 col-lg-6 col-md-6">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <div class="item">
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
                                <div class="date">
                                    <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                                </div>
                                <div class="desc">
                                    <h1>
                                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                                    </h1>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                </a>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="SmallImg">
        <xsl:if test="position()&gt;2 and position()&lt;11">
            <div class="col-xl-3 col-md-4 col-lg-3 col-sm-6">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <div class="item">
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
                                <div class="date">
                                    <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                                </div>
                                <div class="desc">
                                    <h1>
                                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                                    </h1>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                </a>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>