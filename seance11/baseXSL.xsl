<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" 
    exclude-result-prefixes="xs tei"
    version="2.0">
        
        <xsl:output method="html" indent="yes" encoding="UTF-8"/>
        <xsl:strip-space elements="*"/> <!-- pour éviter les espaces non voulus -->
    
        <xsl:template match="/">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <title>Mon rêve familier</title>
                </head>
                <body>
                   <xsl:apply-templates select="body"/>
                </body>
            </html>
        </xsl:template>
   
    </xsl:stylesheet>
