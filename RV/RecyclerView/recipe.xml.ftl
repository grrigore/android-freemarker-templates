<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>

    <instantiate from="root/res/layout/item_blank.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${itemLayoutName}.xml" />

    <#if isInstantApp || isDynamicFeature>
        <#assign finalResOut="${escapeXmlAttribute(baseFeatureResOut)}">
        <#assign finalDebugResOut="${escapeXmlAttribute(baseFeatureOut)}/src/debug/res">
        <#assign finalReleaseResOut="${escapeXmlAttribute(baseFeatureOut)}/src/release/res">
    <#else>
        <#assign finalResOut="${escapeXmlAttribute(resOut)}">
        <#assign finalDebugResOut="${escapeXmlAttribute(projectOut)}/src/debug/res">
        <#assign finalReleaseResOut="${escapeXmlAttribute(projectOut)}/src/release/res">
    </#if>

    <#-- RecyclerViewAdapter -->
    <instantiate from="root/src/app_package/view/adapter/RecyclerViewAdapter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/adapter/${adapterName}.${ktOrJavaExt}" />

    <#-- RecyclerViewViewHolder -->
    <instantiate from="root/src/app_package/view/adapter/RecyclerViewViewHolder.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/adapter/${adapterName?split('Adapter')[0]}ViewHolder.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/view/adapter/${adapterName}.${ktOrJavaExt}" />
</recipe>
