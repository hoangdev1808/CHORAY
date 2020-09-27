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
            <section class="section about-1">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-md-6"></div>
                        <div class="col-xl-6 col-md-6">
                            <xsl:apply-templates select="News" mode="ThuNgo"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=2">
            <section class="section about-2">
                <div class="container">
                    <div class="block-title">
                        <h2>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                    </div>
                    <div class="desc-page">
                        <p>
                            <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                    <div class="row">
                        <div class="col-xl-4 col-md-12">
                            <xsl:apply-templates select="News" mode="Left"></xsl:apply-templates>
                        </div>
                        <div class="col-xl-4 col-md-6">
                            <div class="item">
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
                        </div>
                        <div class="col-xl-4 col-md-6">
                            <xsl:apply-templates select="News" mode="Right"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=3">
            <section class="section about-3">
                <div class="container">
                    <div class="block-title">
                        <h2>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                    </div>
                    <div class="history-slide">
                        <div class="swiper-container slide-block">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="LichSu"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=4">
            <section class="section about-4">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-8">
                            <div class="block-title">
                                <h2>
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </h2>
                            </div>
                            <div class="row">
                                <xsl:apply-templates select="News" mode="SuMenh"></xsl:apply-templates>
                                <xsl:apply-templates select="News" mode="TamNhin"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="col-xl-4">
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
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=5">
            <section class="section about-5">
                <div class="container">
                    <div class="block-title">
                        <h2>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                    </div>
                    <div class="list-item">
                        <xsl:apply-templates select="News" mode="GiaTri"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=6">
            <section class="section about-6">
                <div class="container">
                    <div class="block-title">
                        <h2>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                    </div>
                    <div class="top">
                        <xsl:apply-templates select="News" mode="Top"></xsl:apply-templates>
                    </div>
                    <div class="bottom">
                        <xsl:apply-templates select="News" mode="Bottom"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=7">
            <section class="section about-7">
                <div class="container">
                    <div class="block-title">
                        <h2>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                        <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="top">
                        <div class="row">
                            <xsl:apply-templates select="News" mode="top"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="bottom">
                        <div class="row">
                            <xsl:apply-templates select="News" mode="bottom"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=8">
            <section class="section about-8">
                <div class="container">
                    <div class="block-title">
                        <h2>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="Zone" mode="ThanhTuu1"></xsl:apply-templates>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="Zone" mode="ThanhTuu2"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=9">
            <section class="section about-9">
                <div class="container">
                    <div class="shape-block">
                        <div class="block-title">
                            <h2>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </h2>
                        </div>
                        <xsl:apply-templates select="News" mode="Shape"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="ThuNgo">
        <div class="block-title">
            <h2>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </h2>
        </div>
        <div class="content">
            <div class="desc">
                <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Left">
        <xsl:if test="position()=1">
            <div class="item">
                <div class="item-title">
                    <em class="ri-bookmark-3-fill"></em>
                    <p>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
                <div class="desc">
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Right">
        <xsl:if test="position()=2">
            <div class="item">
                <div class="item-title">
                    <em class="ri-hand-heart-fill"></em>
                    <p>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
                <div class="desc">
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="LichSu">
        <div class="swiper-slide">
            <div class="item">
                <div class="time">
                    <span>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                </div>
                <div class="box-content">
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="SuMenh">
        <xsl:if test="position()=1">
            <div class="col-xl-6 col-lg-6">
                <div class="item">
                    <div class="item-title">
                        <p>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                    <div class="desc">
                        <p>
                            <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="TamNhin">
        <xsl:if test="position()=2">
            <div class="col-xl-6 col-lg-6">
                <div class="item">
                    <div class="item-title">
                        <p>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                    <div class="desc">
                        <p>
                            <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="GiaTri">
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
                    <p>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Top">
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
                        <div class="desc">
                            <h3>
                                <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                            <span>
                                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                            </span>
                            <p>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Bottom">
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
                        <div class="desc">
                            <h3>
                                <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                            <span>
                                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                            </span>
                            <p>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="top">
        <xsl:if test="position()&gt;0 and position()&lt;5">
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                <div class="item">
                    <h3>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h3>
                    <p>
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                        <span>
                            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </span>
                    </p>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="bottom">
        <xsl:if test="position()&gt;4 and position()&lt;9">
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                <div class="item">
                    <h3>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h3>
                    <p>
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                        <span>
                            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </span>
                    </p>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="ThanhTuu1">
        <xsl:if test="position()=1">
            <div class="col-xl-3 col-lg-3">
                <div class="item">
                    <h3>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h3>
                </div>
            </div>
            <div class="col-xl-9 col-lg-9">
                <div class="slide-block" id="top">
                    <div class="swiper-container top-slide">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="News" mode="TT1"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="ThanhTuu2">
        <xsl:if test="position()=2">
            <div class="col-xl-3 col-lg-3">
                <div class="item">
                    <h3>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h3>
                </div>
            </div>
            <div class="col-xl-9 col-lg-9">
                <div class="slide-block" id="bottom">
                    <div class="swiper-container bottom-slide">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="News" mode="TT2"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="TT1">
        <div class="swiper-slide">
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
                            <p>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="TT2">
        <div class="swiper-slide">
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
                            <p>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Shape">
        <img >
            <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
        </img>
    </xsl:template>
</xsl:stylesheet>