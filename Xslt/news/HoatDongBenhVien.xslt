<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="section home-4">
            <div class="container">
                <div class="section-header">
                    <div class="block-title">
                        <h2>
                            <xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                    </div>
                    <div class="box-btn">
                        <a class="btn btn__viewmore">
                            <xsl:attribute name="href">
                                <xsl:text disable-output-escaping="yes">/tin-tuc/tin-tuc-1/tin-hoat-dong-benh-vien</xsl:text>
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
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 big-img">
                            <xsl:apply-templates select="/NewsList/News" mode="bigimg"></xsl:apply-templates>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 small-img">
                                    <xsl:apply-templates select="/NewsList/News" mode="smallimg"></xsl:apply-templates>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                    <div class="list-news">
                                        <xsl:apply-templates select="/NewsList/News" mode="notimg"></xsl:apply-templates>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News" mode="bigimg">
        <xsl:if test="position()=1">
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
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <h1>
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                                </h1>
                            </a>
                        </div>
                    </figcaption>
                </figure>
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
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="smallimg">
        <xsl:if test="position()&gt;1 and position()&lt;4">
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
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <h1>
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                                </h1>
                            </a>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="notimg">
        <xsl:if test="position()&gt;3 and position()&lt;9">
            <div class="item">
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
                            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                    </a>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>