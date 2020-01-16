<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns="http://www.tei-c.org/ns/1.0" version="2.0">
    <xsl:output method="text" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        ﻿documentclass[12pt, a4paper]{report}
        ﻿\usepackage[utf8x]{inputenc}
        \usepackage[T1]{fontenc}
        \usepackage{lmodern}
        \usepackage[french]{babel}
        \usepackage{verse}
        \usepackage[]{reledmac}
        \usepackage[left,modulo]{lineno}
        \title{<xsl:value-of select="//head"/>} 
        \author{<xsl:value-of select="//author"/>}
        \linenumbers
        \modulolinenumbers[4]
        
        \begin{document}
        \section*{<xsl:value-of select="//head"/>}
        \beginnumbering
        \pstart
        \begin{verse}
        
        <xsl:apply-templates select="//body"/>
        
        ﻿\end{verse}
        \pend
        \endnumbering
        \begin{flushright}
        <xsl:value-of select="//author"/>
        \end{flushright}
        
        \end{document} 
        
        
    </xsl:template>
    
    <xsl:template match="l">
        
    </xsl:template>
    
    
</xsl:stylesheet>