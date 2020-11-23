<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="tuyendung-position section">
            <div class="container">
                <div class="block-title text-center">
                    <h2>
                        <xsl:value-of select="NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
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
                            <xsl:apply-templates select="NewsList/News" mode="Desktop"></xsl:apply-templates>
                        </tbody>
                    </table>
                </div>
                <div class="tuyendung-ps-box">
                    <div class="row">
                        <xsl:apply-templates select="NewsList/News" mode="Mobile"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News" mode="Desktop">
        <tr>
            <td>
                <xsl:value-of select="position()"></xsl:value-of>
            </td>
            <td>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <h1>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h1>
                </a>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of select="SubTitle"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
            </td>
            <td class="text-right">
                <xsl:value-of select="EndDate"></xsl:value-of>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="News" mode="Mobile">
        <div class="col-md-6">
            <div class="tuyendung-mobile p-4">
                <h1 class="mobile-title">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </h1>
                <ul>
                    <li>Vị trí tuyển dụng:
                    
                        
                        
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <span>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </span>
                        </a>
                    </li>
                    <li>Số lượng:
                                            
                                            
                        
                        
                        
                        
                        
                        <span>
                            <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                        </span>
                    </li>
                    <li>Địa điểm:
                                            
                                            
                        
                        
                        
                        
                        
                        <span>
                            <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                        </span>
                    </li>
                    <li>Hạn nộp:
                                            
                                            
                        
                        
                        
                        
                        
                        <span>
                            <xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
                        </span>
                    </li>
                </ul>
                <a class="btn btn-chitiet">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">Xem chi tiết</xsl:text>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>