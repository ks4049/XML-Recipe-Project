<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/Recipe">
<html>
<head>
    <link rel="stylesheet" type="text/css" href="Recipe.css"/>
    <title> Recipe Preparation </title>
</head>
<body>
    <h1> <xsl:value-of select="recipe_name"/> </h1>
    <h3> By <xsl:value-of select="recipe_by"/> </h3>
    <img>
        <xsl:attribute name="src">
            <xsl:value-of select="recipe_image"/> 
        </xsl:attribute>
    </img>
    <p class="Serves"><xsl:value-of select="serves"/><br/><br/> </p>
    <ul class="Ingredients">
    <xsl:for-each select="ingredients/ingredient">
        <li> <xsl:value-of select="text()"/> </li>
    </xsl:for-each><br/>
    </ul>
    <ul class="Procedure">
    <xsl:for-each select="procedure/step">
        <li> <xsl:value-of select="text()"/> </li>
    </xsl:for-each><br/>
    </ul>
    <p class="Hints"> <xsl:value-of select="hints"/> </p>   
</body>
</html>
</xsl:template>
</xsl:stylesheet>