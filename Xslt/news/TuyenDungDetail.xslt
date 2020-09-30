<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="section hr-detail">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-xl-9">
                        <h1 class="section-title">
                            <xsl:value-of disable-output-escaping="yes" select="NewsDetail/Title"></xsl:value-of>
                            <xsl:value-of select="NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                        <div class="date-social">
                            <span class="date">
                                <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/EndDate"></xsl:value-of>
                            </span>
                            <div class="social">
                                <ul>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text disable-output-escaping="yes">https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                                <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullUrl"></xsl:value-of>
                                            </xsl:attribute>
                                            <em class="ri-facebook-fill"></em>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text disable-output-escaping="yes">https://twitter.com/home?status=</xsl:text>
                                                <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullUrl"></xsl:value-of>
                                            </xsl:attribute>
                                            <em class="ri-twitter-fill"></em>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="hr-1">
                            <table>
                                <xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>
                            </table>
                            <div class="hr-2">
                                <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-xl-3">
                        <div class="button-hr">
                            <a class="btn ut">Ứng tuyển</a>
                            <a class="btn dow">Tải form ứng tuyển</a>
                        </div>
                        <div class="ttlh">
                            <div class="sidebar-title">Thông tin liên hệ</div>
                            <ul>
                                <li>
                                    <span class="material-icons">  location_on</span>201B Nguyễn Chí Thanh, Phường 12, Quận 5, TP.HCM
                                
                                </li>
                                <li>
                                    <span class="material-icons">  call</span>(84-028) 3855 4137
                                
                                </li>
                                <li>
                                    <span class="material-icons">  call</span>(84-028) 3855 4137
                                
                                </li>
                            </ul>
                        </div>
                        <div class="vtk">
                            <div class="sidebar-title">Vị trí khác</div>
                            <ul>
                                <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsAttributes">
        <tr>
            <th>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </th>
            <td>
                <xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="NewsOther">
        <li>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <p class="text">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </p>
                <span class="date">
                    <xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
                </span>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>