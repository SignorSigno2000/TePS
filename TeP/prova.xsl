<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
	<xsl:template match="/">
		<html>
			Vx vnkbjvadklbv
			<hr/>
			<table cellpadding="2" cellspadding ="2">
				<xsl:apply-templates select="lista/sito"/>
			</table>
		</html>
	</xsl:template>
	<xsl:template match="lista/sito">
		<xsl:if test="categoria==Giornale online">
			<html>
				<body style="background: whitesmoke">
					<table border="1">
						<tr>
							<td>Nome</td>
							<td>URL</td>
							<td>Descrizione</td>
							<td>Categoria</td>
						</tr>
						<xsl:for-each select="lista/sito">
							<tr>
								<td><xsl:value-of select="name" /></td>
								<td><xsl:value-of select="URL" /></td>
								<td><xsl:value-of select="descrizione" /></td>
								<td><xsl:value-of select="categoria" /></td>
							</tr>
						</xsl:for-each>
					</table>
				</body>
			</html>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>