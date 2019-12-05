<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

 

    <xsl:template match="/">
    
                <table id="cameraTable" border= "1" class="indent">
                    <thead>
                        <tr>
                            
                            <th colspan="3">Camera Dot Com</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Title</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/cameraModels/section">
                            <tr style= "background: rgb(150, 150, 122); font-weight: bold">
                                <td colspan="3">

                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="entree">
                                <tr id="{position()}">
                                      <td align="center">
                                        <input name="item0" type="checkbox" />
                                    </td> 
                                    <td >
                                        <xsl:value-of select="item" />
                                    </td>

                                    <td>
                                        <xsl:value-of select="price" />
                                    </td>

                                </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table>
                <p></p>
                <form class="indent">
   <p>
    <input id="calcBill" name="btnCalcBill" type="button" value="Calculate Bill"/>
    Total: €
    <input name="txtBillAmt" type="text"/>
   </p>
  </form>
    </xsl:template>
</xsl:stylesheet>