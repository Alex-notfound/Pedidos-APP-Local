<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:tns="http://www.pedidos-app-local.es/app" version="1.0">

	<xsl:output method="html" indent="yes" encoding="utf-8" />

	<xsl:template match="/">
		<!-- <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text> -->
		<html>
			<head>
				<title>Pedidos APP</title>
			</head>
			<body>
				<div>
                    <h1>Pedidos APP</h1>
					<h3>Listado de pedidos</h3>
					<xsl:apply-templates select="tns:root/pedido" />
					<hr/>
				</div>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="pedido">
		<div class="pedido">
			<h3><xsl:value-of select="referencia"/></h3>
			<div class="fechaPedido">Fecha pedido: <xsl:value-of select="fechaPedido"/></div>
			<div class="fechaEntrega">Fecha entrega: <xsl:value-of select="fechaEntrega" /></div>
            <div class="precio">Precio: <xsl:value-of select="precio" /></div>
            <div class="urgente">Urgente: <xsl:value-of select="urgente" /></div>
            <div class="muebl">Fecha entrega: <xsl:value-of select="fechaEntrega" /></div>
            <div class="fechaEntrega">Fecha entrega: <xsl:value-of select="fechaEntrega" /></div>
            <xsl:apply-templates select="tns:root/mueble"/>
		</div>
	</xsl:template>

	<xsl:template match="mueble">
		<div class="mueble">
            <h4>Muebles</h4>
            <div class="id">Nº: <xsl:value-of select="id" /></div>
			<div class="unidades">Unidades: <xsl:value-of select="unidades" /></div>
			<div class="tipo">Tipo: <xsl:value-of select="tipo" /></div>
            <div class="modelo">Modelo: <xsl:value-of select="modelo" /></div>
            <div class="color">Color: <xsl:value-of select="color" /></div>
            <div class="grosor">Grosor: <xsl:value-of select="grosor" /></div>
            <div class="medidas">Medidas: <xsl:value-of select="medidas" /></div>
            <div class="descripcion">Descripcion: <xsl:value-of select="descripcion" /></div>
            <div class="precioUnidad">Precio unidad: <xsl:value-of select="precioUnidad" /></div>
		</div>
	</xsl:template>

</xsl:stylesheet>