<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="section news-detail">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-xl-9">
                        <h1 class="section-title">
                            <xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
                            <xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                        <div class="date-social">
                            <span class="date">
                                <xsl:value-of select="/NewsDetail/CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                            </span>
                            <div class="social">
                                <a class="social-tw">
                                    <xsl:attribute name="href">
                                        <xsl:text>https://twitter.com/home?status=</xsl:text>
                                        <xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
                                    </xsl:attribute>
                                    <i class="fab fa-twitter"></i>
                                </a>
                                <a class="social-fb">
                                    <xsl:attribute name="href">
                                        <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                        <xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
                                    </xsl:attribute>
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </div>
                        </div>
                        <div class="content">
                            <xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                    <div class="col-lg-12 col-xl-3">
                        <div class="title-sidebar">Tin tức khác</div>
                        <ul class="tintuc-sidebar">
                            <div class="row">
                                <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <li class="col-lg-6 col-xl-12">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
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
                <div class="tintuc-text">
                    <span class="date">
                        <xsl:value-of select="/NewsDetail/CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                    <h2 class="text">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                </div>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>