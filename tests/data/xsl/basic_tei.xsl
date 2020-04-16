<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0"
    xmlns:t="http://www.tei-c.org/ns/1.0">
    
    <xsl:output method="text"/>
    
    <xsl:template match="/">
        <xsl:apply-templates />
    </xsl:template>
    
    <xsl:template match="t:TEI">
        <xsl:apply-templates select="t:text/t:body/t:p"/>    
    </xsl:template>
    
    <xsl:template match="t:p">
        <xsl:apply-templates />
    </xsl:template>
    
    <xsl:template match="text()">
        <xsl:value-of select="normalize-space(.)"/>
    </xsl:template>
    
    <!-- suppress tei elements not addressed above -->
    <xsl:template match="t:*"/>
    
    
</xsl:stylesheet>