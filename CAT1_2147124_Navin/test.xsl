<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body>
		<h1 style="text-align:center">Employee Management System</h1>
		<table border="1" align="center">
		<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>AGE</th>
		<th>SALARY</th>
		<th>EMAIL</th>
		<th>MobNum</th>
		<th>Designation</th>
		<th>Promotion</th>
		</tr>
		<xsl:for-each select="Company/Employee">
		<xsl:sort select="Emp-id"></xsl:sort>
		
		<tr>
		<td>
		<xsl:value-of select="Emp-id"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp-name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp-age"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp-salary"></xsl:value-of>
        </td>
		<td>
		<xsl:value-of select="Emp-emailid"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp-Phonenum"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp-Designation"></xsl:value-of>
		</td>

		<td>
		<xsl:choose>
		<xsl:when test="Emp-age &gt; 50">Associate Project manager
		</xsl:when>
		<xsl:when test="Emp-age &gt; 40 and Emp-age &lt; 49">Team Leader
		</xsl:when>
		<xsl:otherwise>Developer</xsl:otherwise>
		</xsl:choose>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>