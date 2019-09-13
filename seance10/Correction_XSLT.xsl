<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs" xpath-default-namespace="http://www.tei-c.org/ns/1.0" version="2.0">
    <xsl:output method="text" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        ﻿\documentclass[12pt, a4paper]{report}
        ﻿\usepackage[utf8x]{inputenc}
        \usepackage[T1]{fontenc}
        \usepackage{lmodern}
        \usepackage[french]{babel}
        \usepackage{verse}
        \usepackage[]{reledmac}
        \usepackage[left,modulo]{lineno}
        \linenumbers
        \modulolinenumbers[4]
        
        \begin{document}
        \section*{<xsl:value-of select="//head"/>}
        \beginnumbering
        \pstart
        \begin{verse}
        <xsl:apply-templates select="//body"/>
        \end{verse}
        \pend
        \endnumbering
        \begin{flushright}
        <xsl:value-of select="//author"/>
        \end{flushright}
        \end{document} 
        
    </xsl:template>
    
    <xsl:template  match="head"/>
    
   <xsl:template match="lg">
       <xsl:apply-templates/>
   </xsl:template>
    <xsl:template match="l"><xsl:value-of select="."/>
        <xsl:choose>
            <xsl:when test="position() = last()"><xsl:text>
</xsl:text></xsl:when>
            <xsl:otherwise><xsl:text>\\
</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>