<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="slide-home-5">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="swiper-slide">
            <div class="row">
                <div class="col-xl-6 col-lg-6 content">
                    <div class="block-title">
                        <h1>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                    </div>
                    <div class="desc">
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <a class="btn btn-detail">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text disable-output-escaping="yes">Chi tiết</xsl:text>
                        <em class="material-icons">arrow_right_alt</em>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>