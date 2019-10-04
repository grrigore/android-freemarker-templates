<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

    <#if isInstantApp || isDynamicFeature>
        <#assign finalResOut="${escapeXmlAttribute(baseFeatureResOut)}">
        <#assign finalDebugResOut="${escapeXmlAttribute(baseFeatureOut)}/src/debug/res">
        <#assign finalReleaseResOut="${escapeXmlAttribute(baseFeatureOut)}/src/release/res">
    <#else>
        <#assign finalResOut="${escapeXmlAttribute(resOut)}">
        <#assign finalDebugResOut="${escapeXmlAttribute(projectOut)}/src/debug/res">
        <#assign finalReleaseResOut="${escapeXmlAttribute(projectOut)}/src/release/res">
    </#if>

    <#-- IBasePresenter -->
    <instantiate from="root/src/app_package/base/IBasePresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base/IBasePresenter.${ktOrJavaExt}" />

    <#-- IBaseViewDelegate -->
    <instantiate from="root/src/app_package/base/IBaseViewDelegate.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base/IBaseViewDelegate.${ktOrJavaExt}" />
                   
</recipe>
