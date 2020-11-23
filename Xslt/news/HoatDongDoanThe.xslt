<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="block-bottom section">
            <div class="container">
                <div class="section-header">
                    <div class="block-title">
                        <h2>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                    </div>
                    <div class="box-btn">
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
                </div>
            </div>
            <div class="content border-top">
                <div class="container">
                    <div id="bottom">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="swiper-slide">
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
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <h1>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </h1>
                        </a>
                    </div>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>