<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="section active-general">
            <div class="container">
                <div class="block-title">
                    <h2>
                        <xsl:value-of select="/ZoneList/ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                </div>
                <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="active-list">
            <div class="active-title">
                <h3>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </h3>
                <a class="btn btn__viewmore">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
                    <div class="icon">
                       
                    </div>
                </a>
            </div>
            <div class="row">
                <xsl:apply-templates select="News"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
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
                                </h1>
                            </div>
                        </figcaption>
                    </figure>
                </div>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>