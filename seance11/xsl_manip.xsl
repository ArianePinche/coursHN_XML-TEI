<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="TEI">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="teiHeader">
        <xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="body">
        <xsl:element name="text">
            <xsl:copy>
                <xsl:apply-templates/>
            </xsl:copy>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="head">
        <xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="lg">
        <xsl:element name="p">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="l">
        <xsl:value-of select="."/>
    </xsl:template>
</xsl:stylesheet>

