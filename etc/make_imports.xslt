<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="2.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xpath-default-namespace="http://checklists.nist.gov/xccdf/1.1">

<xsl:output method="text"/>

<xsl:template match="/">---
  <xsl:apply-templates select="//Rule" />

</xsl:template>

<xsl:template match="Rule">
- name: "Import Rule <xsl:value-of select='version'/>"
  ansible.builtin.import_tasks: "<xsl:value-of select='version'/>.yml"
  when: <xsl:value-of select="translate(lower-case(version),'-', '_')"/>
  <xsl:text>&#10;</xsl:text>
</xsl:template>

</xsl:stylesheet>
