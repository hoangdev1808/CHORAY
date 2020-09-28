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
                        <div class="col-xl-3 col-lg-3 col-md-6">
                            <div class="item">
                                <figure>
                                    <div class="img">
                                        <img src="./assets/images/landingpage/ld-1.png" alt=""/>
                                    </div>
                                    <figcaption>
                                        <div class="desc">
                                            <h3>Vũ Hải Long</h3>
                                            <p>Trưởng khoa: Bs - CKII</p>
                                        </div>
                                    </figcaption>
                                </figure>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6">
                            <div class="item">
                                <figure>
                                    <div class="img">
                                        <img src="./assets/images/landingpage/ld-2.png" alt=""/>
                                    </div>
                                    <figcaption>
                                        <div class="desc">
                                            <h3>Vũ Hải Long</h3>
                                            <p>Trưởng khoa: Bs - CKII</p>
                                        </div>
                                    </figcaption>
                                </figure>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6">
                            <div class="item">
                                <figure>
                                    <div class="img">
                                        <img src="./assets/images/landingpage/ld-3.png" alt=""/>
                                    </div>
                                    <figcaption>
                                        <div class="desc">
                                            <h3>Vũ Hải Long</h3>
                                            <p>Trưởng khoa: Bs - CKII</p>
                                        </div>
                                    </figcaption>
                                </figure>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6">
                            <div class="item">
                                <figure>
                                    <div class="img">
                                        <img src="./assets/images/landingpage/ld-4.png" alt=""/>
                                    </div>
                                    <figcaption>
                                        <div class="desc">
                                            <h3>Vũ Hải Long</h3>
                                            <p>Trưởng khoa: Bs - CKII</p>
                                        </div>
                                    </figcaption>
                                </figure>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=2">
            <section class="section ld-2">
                <div class="container-fluid p-0">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 left">
                            <div class="img">
                                <img src="./assets/images/landingpage/ld-5.png" alt=""/>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 content">
                            <div class="desc">
                                <div class="block-title blue">
                                    <h2>Giới thiệu</h2>
                                </div>
                                <p>Khoa tai mũi họng bệnh viện Chợ Rẫy, đây là một trong những bệnh viện có bề dày lịch sử và chuyên môn khá cao trên địa bàn TPHCM và cả khu vực phía nam.</p>
                                <p>Bệnh viện hội tụ đội ngũ giáo sư chuyên gia uy tín, nhiều kinh nghiệm, thiết bị máy móc hiện đại tiên tiến.</p>
                                <p>Khoa Tai mũi họng với đội ngũ thầy thuốc có trình độ chuyên môn giỏi, giàu kinh nghiệm, nhiệt tình và tận tâm, phối hợp chặt chẽ với các chuyên khoa khác trong và ngoài bệnh viện để thực hiện điều trị toàn diện và triệt để.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=3">
            <section class="section ld-3">
                <div class="container">
                    <div class="block-title blue">
                        <h2>Bệnh lý điều trị tại khoa</h2>
                    </div>
                    <div class="ld-item">
                        <div class="row">
                            <div class="col-xl-6 col-md-6 left">
                                <div class="img">
                                    <img src="./assets/images/landingpage/ld-6.png" alt=""/>
                                </div>
                            </div>
                            <div class="col-xl-6 col-md-6 right">
                                <div class="content">
                                    <div class="desc">
                                        <h3>Các bệnh lý về tai</h3>
                                        <p>Đau tai: triệu chứng phổ biến nhất.</p>
                                        <p>Chảy mủ tai: thường gặp trong trường hợp viêm tai giữa cấp tính hoặc viêm tai giữa mạn tính trong giai đoạn vỡ mủ.</p>
                                        <p>Ù tai: có thể là triệu chứng của các bệnh lý màng nhĩ như xơ hóa màng nhĩ hoặc do các bệnh lý ngoài tai.</p>
                                        <div class="box-btn">
                                            <a class="btn btn-ld" href="">
                                                <em class="ri-quill-pen-line"></em>
                                                <span>Đăng ký tư vấn</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ld-item">
                        <div class="row">
                            <div class="col-xl-6 col-md-6 left">
                                <div class="img">
                                    <img src="./assets/images/landingpage/ld-7.png" alt=""/>
                                </div>
                            </div>
                            <div class="col-xl-6 col-md-6 right">
                                <div class="content">
                                    <div class="desc">
                                        <h3>Các bệnh lý về tai</h3>
                                        <p>Đau tai: triệu chứng phổ biến nhất.</p>
                                        <p>Chảy mủ tai: thường gặp trong trường hợp viêm tai giữa cấp tính hoặc viêm tai giữa mạn tính trong giai đoạn vỡ mủ.</p>
                                        <p>Ù tai: có thể là triệu chứng của các bệnh lý màng nhĩ như xơ hóa màng nhĩ hoặc do các bệnh lý ngoài tai.</p>
                                        <div class="box-btn">
                                            <a class="btn btn-ld" href="">
                                                <em class="ri-quill-pen-line"></em>
                                                <span>Đăng ký tư vấn</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ld-item">
                        <div class="row">
                            <div class="col-xl-6 col-md-6 left">
                                <div class="img">
                                    <img src="./assets/images/landingpage/ld-8.png" alt=""/>
                                </div>
                            </div>
                            <div class="col-xl-6 col-md-6 right">
                                <div class="content">
                                    <div class="desc">
                                        <h3>Các bệnh lý về tai</h3>
                                        <p>Đau tai: triệu chứng phổ biến nhất.</p>
                                        <p>Chảy mủ tai: thường gặp trong trường hợp viêm tai giữa cấp tính hoặc viêm tai giữa mạn tính trong giai đoạn vỡ mủ.</p>
                                        <p>Ù tai: có thể là triệu chứng của các bệnh lý màng nhĩ như xơ hóa màng nhĩ hoặc do các bệnh lý ngoài tai.</p>
                                        <div class="box-btn">
                                            <a class="btn btn-ld" href="">
                                                <em class="ri-quill-pen-line"></em>
                                                <span>Đăng ký tư vấn</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=4">
            <section class="section ld-4">
                <div class="container">
                    <div class="block-title blue">
                        <h2>Câu hỏi thường gặp</h2>
                    </div>
                    <article class="question">
                        <div class="question-card">
                            <div class="question-title">
                                <p>Nội soi tai mũi họng là gì? Khi nào nên thực hiện nội soi tai mũi họng?</p>
                                <em class="ri-arrow-drop-down-line"></em>
                            </div>
                            <div class="question-body">
                                <p>Lệt kê ra những khó chịu mà hiện tại bạn đang có. Bạn mô tả càng chi tiết càng tốt. Ví dụ như: Khó chịu ở vị trí nào? Thường bị lúc nào? Bị bao lâu rồi? Nó xuất hiện đột ngột hay do điều gì đó gây nên?…</p>
                                <p>Liệt kê ra các bệnh lý khác mà bạn đang điều trị, tên các thuốc điều trị, thuốc bổ hoặc các thực phẩm chức năng đang dùng. Chú ý nếu bạn có dị ứng với một loại thuốc nào đó, cần cho bác sĩ biết tên cụ thể của loại thuốc đó. </p>
                                <p>Nếu đã từng đi khám trước đây, cần nhớ đem theo những giấy tờ của lần trước như: toa thuốc, kết quả nội soi, X-quang… Nhớ đem theo bảo hiểm y tế của bạn nữa nhé!</p>
                            </div>
                        </div>
                        <div class="question-card">
                            <div class="question-title">
                                <p>Nội soi tai mũi họng là gì? Khi nào nên thực hiện nội soi tai mũi họng?</p>
                                <em class="ri-arrow-drop-down-line"></em>
                            </div>
                            <div class="question-body">
                                <p>Lệt kê ra những khó chịu mà hiện tại bạn đang có. Bạn mô tả càng chi tiết càng tốt. Ví dụ như: Khó chịu ở vị trí nào? Thường bị lúc nào? Bị bao lâu rồi? Nó xuất hiện đột ngột hay do điều gì đó gây nên?…</p>
                                <p>Liệt kê ra các bệnh lý khác mà bạn đang điều trị, tên các thuốc điều trị, thuốc bổ hoặc các thực phẩm chức năng đang dùng. Chú ý nếu bạn có dị ứng với một loại thuốc nào đó, cần cho bác sĩ biết tên cụ thể của loại thuốc đó. </p>
                                <p>Nếu đã từng đi khám trước đây, cần nhớ đem theo những giấy tờ của lần trước như: toa thuốc, kết quả nội soi, X-quang… Nhớ đem theo bảo hiểm y tế của bạn nữa nhé!</p>
                            </div>
                        </div>
                        <div class="question-card">
                            <div class="question-title">
                                <p>Nội soi tai mũi họng là gì? Khi nào nên thực hiện nội soi tai mũi họng?</p>
                                <em class="ri-arrow-drop-down-line"></em>
                            </div>
                            <div class="question-body">
                                <p>Lệt kê ra những khó chịu mà hiện tại bạn đang có. Bạn mô tả càng chi tiết càng tốt. Ví dụ như: Khó chịu ở vị trí nào? Thường bị lúc nào? Bị bao lâu rồi? Nó xuất hiện đột ngột hay do điều gì đó gây nên?…</p>
                                <p>Liệt kê ra các bệnh lý khác mà bạn đang điều trị, tên các thuốc điều trị, thuốc bổ hoặc các thực phẩm chức năng đang dùng. Chú ý nếu bạn có dị ứng với một loại thuốc nào đó, cần cho bác sĩ biết tên cụ thể của loại thuốc đó. </p>
                                <p>Nếu đã từng đi khám trước đây, cần nhớ đem theo những giấy tờ của lần trước như: toa thuốc, kết quả nội soi, X-quang… Nhớ đem theo bảo hiểm y tế của bạn nữa nhé!</p>
                            </div>
                        </div>
                        <div class="question-card">
                            <div class="question-title">
                                <p>Nội soi tai mũi họng là gì? Khi nào nên thực hiện nội soi tai mũi họng?</p>
                                <em class="ri-arrow-drop-down-line"></em>
                            </div>
                            <div class="question-body">
                                <p>Lệt kê ra những khó chịu mà hiện tại bạn đang có. Bạn mô tả càng chi tiết càng tốt. Ví dụ như: Khó chịu ở vị trí nào? Thường bị lúc nào? Bị bao lâu rồi? Nó xuất hiện đột ngột hay do điều gì đó gây nên?…</p>
                                <p>Liệt kê ra các bệnh lý khác mà bạn đang điều trị, tên các thuốc điều trị, thuốc bổ hoặc các thực phẩm chức năng đang dùng. Chú ý nếu bạn có dị ứng với một loại thuốc nào đó, cần cho bác sĩ biết tên cụ thể của loại thuốc đó. </p>
                                <p>Nếu đã từng đi khám trước đây, cần nhớ đem theo những giấy tờ của lần trước như: toa thuốc, kết quả nội soi, X-quang… Nhớ đem theo bảo hiểm y tế của bạn nữa nhé!</p>
                            </div>
                        </div>
                        <div class="question-card">
                            <div class="question-title">
                                <p>Nội soi tai mũi họng là gì? Khi nào nên thực hiện nội soi tai mũi họng?</p>
                                <em class="ri-arrow-drop-down-line"></em>
                            </div>
                            <div class="question-body">
                                <p>Lệt kê ra những khó chịu mà hiện tại bạn đang có. Bạn mô tả càng chi tiết càng tốt. Ví dụ như: Khó chịu ở vị trí nào? Thường bị lúc nào? Bị bao lâu rồi? Nó xuất hiện đột ngột hay do điều gì đó gây nên?…</p>
                                <p>Liệt kê ra các bệnh lý khác mà bạn đang điều trị, tên các thuốc điều trị, thuốc bổ hoặc các thực phẩm chức năng đang dùng. Chú ý nếu bạn có dị ứng với một loại thuốc nào đó, cần cho bác sĩ biết tên cụ thể của loại thuốc đó. </p>
                                <p>Nếu đã từng đi khám trước đây, cần nhớ đem theo những giấy tờ của lần trước như: toa thuốc, kết quả nội soi, X-quang… Nhớ đem theo bảo hiểm y tế của bạn nữa nhé!</p>
                            </div>
                        </div>
                    </article>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=5">
            <section class="section ld-5">
                <div class="container">
                    <div class="content">
                        <div class="block-title blue">
                            <h2>Đăng ký tư vấn</h2>
                        </div>
                        <div class="row">
                            <div class="col-xl-7">
                                <div class="wrap-form">
                                    <div class="form-group">
                                        <input type="text" placeholder="Họ tên"/>
                                        <input type="text" placeholder="Số điện thoại"/>
                                    </div>
                                    <div class="form-group">
                                        <textarea cols="30" rows="10" placeholder="Nội dung"></textarea>
                                    </div>
                                    <div class="form-group frm-btnwrap">
                                        <div class="frm-btn">
                                            <input class="btn btn-default frm-btn-submit" type="submit" name="" value="Đăng ký"/>
                                            <em class="material-icons">arrow_right_alt</em>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
</xsl:stylesheet>