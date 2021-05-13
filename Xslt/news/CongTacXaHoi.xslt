<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<section class="section home-6">
			<div class="container">
				<div class="section-header">
					<div class="block-title">
						<h2>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
					</div>
					<div class="box-btn">
						<a class="btn btn__viewmore">
							<xsl:attribute name="href">
								<xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
							<div class="icon"></div>
						</a>
					</div>
				</div>
			</div>
			<div class="content border-top">
				<div class="container">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 small-img border-right">
							<xsl:apply-templates select="News" mode="SmallImg"></xsl:apply-templates>
						</div>
						<div class="col-xl-6 col-lg-6 big-img border-right">
							<xsl:apply-templates select="News" mode="BigImg"></xsl:apply-templates>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 small-img">
							<xsl:apply-templates select="News" mode="SmallImg2"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="SmallImg">
		<xsl:if test="position()&gt;0 and position()&lt;3">
			<div class="item">
				<figure>
					<div class="img">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<img >
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
							</img>
						</a>
					</div>
					<figcaption>
						<div class="date">
							<xsl:value-of select="CreateDate" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="desc">
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
						</div>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="SmallImg2">
		<xsl:if test="position()&gt;3 and position()&lt;6">
			<div class="item">
				<figure>
					<div class="img">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<img >
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
							</img>
						</a>
					</div>
					<figcaption>
						<div class="date">
							<xsl:value-of select="CreateDate" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="desc">
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
						</div>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="BigImg">
		<xsl:if test="position()=3">
			<div class="item">
				<figure>
					<div class="img">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<img >
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
							</img>
						</a>
					</div>
					<figcaption>
						<div class="date">
							<xsl:value-of select="CreateDate" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="desc">
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
						</div>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						<a  class="btn btn-detail">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:text disable-output-escaping="yes">Chi tiết</xsl:text>
							<em class="material-icons">arrow_right_alt</em>
						</a>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>