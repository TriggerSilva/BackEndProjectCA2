<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


    <xsl:template match="/">
    
                <table id="cameraTable" border= "1" class="indent">
                    <thead>
                        <tr>
                            
                            <th colspan="3">Camera Dot Com</th>
                        </tr>
                        <tr>
                            <th>Title</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/cameraModels/section">
                            <tr>
                                <td colspan="3" >

                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="entree">
                                <tr id="{position()}">
                                       
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
    </xsl:template>
</xsl:stylesheet>