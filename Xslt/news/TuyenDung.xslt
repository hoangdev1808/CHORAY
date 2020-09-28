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
            <section class="pages-tuyendung">
                <div class="container">
                    <div class="block-title text-center">
                        <h2>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                    </div>
                    <div class="tuyendung-introduce">
                        <div class="row">
                            <xsl:apply-templates select="News" mode="TuyenDung"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=2">
            <section class="tuyendung-position">
                <div class="container">
                    <div class="block-title text-center">
                        <h2>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                    </div>
                    <div class="tuyendung-ps-table">
                        <table>
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Vị trí tuyển dụng </th>
                                    <th>Số lượng </th>
                                    <th>Địa điểm </th>
                                    <th class="text-right">Hạn nộp</th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:apply-templates select="News" mode="Desktop"></xsl:apply-templates>
                                <tr>
                                    <td>1 </td>
                                    <td>
                                        <a href="">
                                            <h1>Bác sĩ</h1>
                                        </a>
                                    </td>
                                    <td>02 </td>
                                    <td>Quận 5, TP.HCM</td>
                                    <td class="text-right">30.09.2020</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tuyendung-ps-box">
                        <div class="row">
                            <xsl:apply-templates select="News" mode="Mobile"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="TuyenDung">
        <div class="tuyendung-col col-lg-12 col-xl-6">
            <div class="introduce-img">
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
        <div class="tuyendung-col-2 col-lg-12 col-xl-6">
            <div class="introduce-content">
                <div class="introduce-scroll">
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Desktop">
        <tr>
            <td>1 </td>
            <td>
                <a href="">
                    <h1>Bác sĩ</h1>
                </a>
            </td>
            <td>02 </td>
            <td>Quận 5, TP.HCM</td>
            <td class="text-right">30.09.2020</td>
        </tr>
    </xsl:template>
    <xsl:template match="News" mode="Mobile">
        <div class="col-md-6">
            <div class="tuyendung-mobile p-4">
                <h1 class="mobile-title">Bác sĩ </h1>
                <ul>
                    <li>Vị trí tuyển dụng:
                                            
                                            
                        <span>Bác sĩ</span>
                    </li>
                    <li>Số lượng:
                                            
                                            
                        <span>02</span>
                    </li>
                    <li>Địa điểm:
                                            
                                            
                        <span>Quận 5, TP.HCM</span>
                    </li>
                    <li>Hạn nộp:
                                            
                                            
                        <span>30.09.2020</span>
                    </li>
                </ul>
                <button class="btn btn-chitiet">Xem chi tiết</button>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>