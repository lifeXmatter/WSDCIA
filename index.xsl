<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>          
            td,th
            {
                font-size:larger;
                padding:20px;
                text-align:center !important;
            }
                </style>
            </head>
            <body>
                <h1 style="text-align:center;">Employee Management System</h1>
                
                    <table border="2" align="center">
                        <tr bgcolor="#FFA500">
			    <th style="text-align:left">Name</th>
                            <th style="text-align:left">Age</th>
                            <th style="text-align:left">Salary</th>
                            <th style="text-align:left">Email</th>
                            <th style="text-align:left">MobNum</th>
                            <th style="text-align:left">Designation</th>
			    <th style="text-align:left">Promotion</th>
                        </tr>
                        <xsl:for-each select="Company/Employee">
                            <tr>
				 <td>
                                    <xsl:value-of select="emp-name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="emp-age"/>
                                </td>
                                <td>
                                    <xsl:value-of select="emp-salary"/>
                                </td>
                                <td>
                                    <xsl:value-of select="emp-emailid"/>
                                </td>
                                <td>
                                    <xsl:value-of select="emp-phonenum"/>
                                </td>
                                <td>
                                    <xsl:value-of select="emp-designation"/>
                                </td>
				<td> 
                       		    <xsl:choose> 
                          	    <xsl:when test = "emp-age > 50"> 
                              	    Associate Project Manager 
                           	    </xsl:when> 
									
                          	    <xsl:when test = "emp-age < 50"> 
                              	    Team Leader 
                          	    </xsl:when> 
									
				    <xsl:otherwise> 
                              	    Age and you shall
                           	    </xsl:otherwise> 
                       	 	    </xsl:choose> 
                     	  	</td>
                            </tr>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
