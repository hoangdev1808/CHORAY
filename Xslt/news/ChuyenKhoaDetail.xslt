<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()=1">
            <section class="section ld-1">
                <div class="container">
                    <xsl:apply-templates select="News" mode="Sec1"></xsl:apply-templates>
                    <div class="number">
                        <ul class="row no-gutters">
                            <xsl:apply-templates select="News" mode="Number"></xsl:apply-templates>
                        </ul>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="News/ProductRelated" mode="ProductRelated"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=2">
            <section class="section ld-2">
                <div class="container-fluid p-0">
                    <div class="row">
                        <xsl:apply-templates select="News" mode="GioiThieu"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=3">
            <section class="section ld-3">
                <div class="container">
                    <div class="block-title blue">
                        <h2>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                    </div>
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=4">
            <section class="section ld-4">
                <div class="container">
                    <div class="block-title blue">
                        <h2>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                    </div>
                    <article class="question">
                        <xsl:apply-templates select="News" mode="Tuvan"></xsl:apply-templates>
                    </article>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Sec1">
        <xsl:if test="position()=1">
            <div class="block-title">
                <h2>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </h2>
                <p>
                    <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                </p>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Number">
        <xsl:if test="position()&gt;1 and position()&lt;7">
            <li class="col">
                <p class="counter" data-count="21">
                    <xsl:attribute name="data-count">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </p>
                <p>
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </p>
            </li>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="GioiThieu">
        <div class="col-xl-6 col-lg-6 col-md-6 left">
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
        </div>
        <div class="col-xl-6 col-lg-6 col-md-6 content">
            <div class="desc">
                <div class="block-title blue">
                    <h2>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                </div>
                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="ld-item">
            <div class="row">
                <div class="col-xl-6 col-md-6 left">
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
                </div>
                <div class="col-xl-6 col-md-6 right">
                    <div class="content">
                        <div class="desc">
                            <h3>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                            <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                            <div class="box-btn">
                                <a class="btn btn-ld">
                                    <xsl:attribute name="data-toggle">
                                        <xsl:text disable-output-escaping="yes">modal</xsl:text>
                                    </xsl:attribute>
                                    <xsl:attribute name="data-target">
                                        <xsl:text disable-output-escaping="yes">#popupTV</xsl:text>
                                    </xsl:attribute>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="Url"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                    <span>
                                        <xsl:text disable-output-escaping="yes">Đăng ký tư vấn </xsl:text>
                                    </span>
                                    <em class="ri-quill-pen-line"></em>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Tuvan">
        <div class="question-card">
            <div class="question-title">
                <p>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </p>
                <em class="ri-arrow-drop-down-line"></em>
            </div>
            <div class="question-body">
                <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="ProductRelated" mode="ProductRelated">
        <div class="col-xl-3 col-lg-3 col-md-6">
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
                        <div class="desc">
                            <h3>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                            <p>
                                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>