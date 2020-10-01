<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="acnav__label">
            <h3>
                <xsl:value-of disable-output-escaping="yes" select="/ProductList/ZoneTitle"></xsl:value-of>
            </h3>
        </div>
        <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Product">
        <xsl:if test="position()&lt;7">
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
                        <div class="name">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="Title"></xsl:value-of>
                            </a>
                            <p>24 nhận xét</p>
                        </div>
                        <div class="desc">
                            <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                        <div class="detail">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text>Xem chi tiết</xsl:text>
                                <span class="material-icons">arrow_forward</span>
                            </a>
                            <a class="btn btn__book">
                                <xsl:attribute name="href">
                                    <xsl:text disable-output-escaping="yes">javascript:;</xsl:text>
                                </xsl:attribute>
                                <xsl:attribute name="data-toggle">
                                    <xsl:text disable-output-escaping="yes">modal</xsl:text>
                                </xsl:attribute>
                                <xsl:attribute name="data-target">
                                    <xsl:text disable-output-escaping="yes">#popupKB</xsl:text>
                                </xsl:attribute>
                                <span class="material-icons">event_available</span>
                                <xsl:text disable-output-escaping="yes">đặt lịch</xsl:text>
                            </a>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>