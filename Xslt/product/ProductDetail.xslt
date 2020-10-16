<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="section doctor-detail">
            <div class="container">
                <div class="item">
                    <div class="row">
                        <div class="col-xl-4 col-md-5 left">
                            <div class="img">
                                <img >
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="/ProductDetail/ProductImages/ImageUrl"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="alt">
                                        <xsl:value-of select="/ProductDetail/ProductImages/Title"></xsl:value-of>
                                    </xsl:attribute>
                                </img>
                            </div>
                        </div>
                        <div class="col-xl-8 col-md-7 right">
                            <div class="content">
                                <div class="name">
                                    <a>
                                        <xsl:attribute name="href">
                                            <xsl:value-of select="Url"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="title">
                                            <xsl:value-of select="Title"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:value-of select="/ProductDetail/Title"></xsl:value-of>
                                    </a>
                                    <p>24 nhận xét</p>
                                </div>
                                <div class="desc">
                                    <xsl:value-of select="/ProductDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="form-block section">
            <div class="container">
                <div class="wrap-form">
                </div>
            </div>
        </section>
        <section class="comment-block section">
            <div class="container">
                <h5>Bình luận</h5>
            </div>
        </section>
    </xsl:template>
</xsl:stylesheet>