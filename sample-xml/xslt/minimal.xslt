<!--
TR-UBL compliant minimal invoice XSLT
Author: Raitonn
Focus:
- GIB validation friendly
- Outlook/Gmail safe HTML
-->


<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <table border="1">
          <tr>
            <td>Invoice Sample</td>
          </tr>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>



Gib'in Son Regulasyonunun Bir Kısmı:

<xsl:if test="//n1:Invoice/cbc:ProfileID = 'YATIRIMTESVIK'">
									<td class="lineTableTd" style="width:10.6%" align="center">
										<span style="font-weight:bold;">
											<xsl:text>Harcama Tipi</xsl:text>
										</span>
									</td>
									<xsl:if test="count(//n1:Invoice/cac:InvoiceLine/cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode[normalize-space(.) = '01']) > 0">
										<td class="lineTableTd" style="width:10.6%" align="center">
											<span style="font-weight:bold;">
												<xsl:text>Makine Adı</xsl:text>
											</span>
										</td>
									 
									</xsl:if>
								</xsl:if>
