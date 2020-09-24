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
                                <img src="./assets/images/doctor/doctor-1.png" alt=""/>
                            </div>
                        </div>
                        <div class="col-xl-8 col-md-7 right">
                            <div class="content">
                                <div class="name">
                                    <a href="doi-ngu-chi-tiet.html">bs.võ mỹ hương</a>
                                    <p>24 nhận xét</p>
                                </div>
                                <div class="desc">
                                    <ul>
                                        <li>
                                            <p>Bác sĩ Lê Thị Kim Ngân tốt nghiệp bác sĩ chuyên khoa I - Sản Phụ Khoa tại ĐH Y Dược, TP. HCM năm 1999, tốt nghiệp BS. Đa khoa, ĐH Y Dược TPHCM (1996)</p>
                                        </li>
                                        <li>
                                            <p>Bà là Phó Giám đốc chuyên khoa Sản - Bệnh viện TWG và là thành viên Hội Đồng Y khoa. Nguyên Trưởng khoa Sản Phụ - BV Hoàn Mỹ Sài Gòn từ 2011 đến T6/2019</p>
                                        </li>
                                        <li>
                                            <p>BS. Ngân có hơn 20 năm kinh nghiệm và từng công tác tại BV. Hoàn Mỹ Sài Gòn và một số bệnh viện lớn khác.</p>
                                        </li>
                                    </ul>
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
                    <p>Gửi đánh giá bình luận</p>
                    <div class="form-group">
                        <label for="">1. Gửi bình luận, góp ý cho bác sĩ</label>
                        <div class="f-input">
                            <input type="text" placeholder="Hài lòng"></input>
                            <input type="text" placeholder="Chưa hài lòng"></input>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">2. Gửi bình luận, góp ý cho bệnh viện</label>
                        <div class="f-input">
                            <textarea cols="30" rows="10" placeholder="Góp ý"></textarea>
                        </div>
                    </div>
                    <div class="form-group frm-btnwrap">
                        <div class="frm-btn">
                            <input class="btn btn-default frm-btn-submit" type="submit" name="" value="Gửi"></input>
                            <em class="material-icons">arrow_right_alt</em>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="comment-block section">
            <div class="container">
                <div class="comment-list">
                    <p>Bình luận (200 bình luận)</p>
                    <div class="item">
                        <div class="item__header">
                            <p>ID: lamchame200</p>
                            <span>10 giờ trước</span>
                        </div>
                        <div class="item__content">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="item__header">
                            <p>ID: lamchame200</p>
                            <span>10 giờ trước</span>
                        </div>
                        <div class="item__content">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="item__header">
                            <p>ID: lamchame200</p>
                            <span>10 giờ trước</span>
                        </div>
                        <div class="item__content">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="item__header">
                            <p>ID: lamchame200</p>
                            <span>10 giờ trước</span>
                        </div>
                        <div class="item__content">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                        </div>
                    </div>
                    <div class="view-more">
                        <a class="btn btn__viewmore" href="">Xem thêm
										
                                        
                            <div class="icon">
                                <img src="./assets/icons/doingu_ct.png" alt=""/>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
</xsl:stylesheet>