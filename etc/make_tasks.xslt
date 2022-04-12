<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="2.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xpath-default-namespace="http://checklists.nist.gov/xccdf/1.1">

<xsl:output method="text"/>

<xsl:template match="/">
  <xsl:apply-templates select="//Rule" />
</xsl:template>

<xsl:template match="Rule">
  <xsl:result-document href="{version}.yml">---
- name: "<xsl:value-of select="title"/>"
  debug: msg="CONTROL NOT IMPLEMENTED"
  when:
    - <xsl:value-of select="translate(lower-case(version),'-', '_')"/>
  tags:
    - <xsl:value-of select="version"/>
    <xsl:for-each select="ident[@system]">
    - <xsl:value-of select="." />
    </xsl:for-each>
    - severity_<xsl:value-of select="@severity" />
  </xsl:result-document>
</xsl:template>

</xsl:stylesheet>
