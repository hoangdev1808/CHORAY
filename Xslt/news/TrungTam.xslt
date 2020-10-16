<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="block-title">
            <h2>
                <xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
            </h2>
        </div>
        <div class="cental-list">
            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="cental-item">
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
                    <div class="desc">
                        <h3>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h3>
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                        <div class="box-btn">
                            <a class="btn btn__viewmore" href="" data-toggle="modal" data-target="#popupTT">Xem thêm
                                
                                
                                <div class="icon"></div>
                            </a>
                            <a class="btn btn__popup" href="" data-toggle="modal" data-target="#popupTT">
                                <span>Xem trang web</span>
                                <em class="material-icons">arrow_right_alt</em>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Modal-->
            <div class="modal fade" id="popupTT" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-dialog-centered container" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-xl-5 col-md-6 left">
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
                                <div class="col-xl-7 col-md-6 right">
                                    <div class="desc">
                                        <h3>
                                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                        </h3>
                                        <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>