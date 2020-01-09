<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="root/res/layout/activity_blank.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <#if isInstantApp || isDynamicFeature>
        <#assign finalResOut="${escapeXmlAttribute(baseFeatureResOut)}">
        <#assign finalDebugResOut="${escapeXmlAttribute(baseFeatureOut)}/src/debug/res">
        <#assign finalReleaseResOut="${escapeXmlAttribute(baseFeatureOut)}/src/release/res">
    <#else>
        <#assign finalResOut="${escapeXmlAttribute(resOut)}">
        <#assign finalDebugResOut="${escapeXmlAttribute(projectOut)}/src/debug/res">
        <#assign finalReleaseResOut="${escapeXmlAttribute(projectOut)}/src/release/res">
    </#if>

    <#-- Activity -->
    <instantiate from="root/src/app_package/view/MvpActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/${activityClass}.${ktOrJavaExt}" />

    <#-- IViewDelegate -->
    <instantiate from="root/src/app_package/view/IViewDelegate.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/I${activityClass?split("Activity")[0]}Delegate.${ktOrJavaExt}" />

    <#-- IPresenter -->
    <instantiate from="root/src/app_package/presenter/IPresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/I${activityClass?split("Activity")[0]}Presenter.${ktOrJavaExt}" />

    <#-- PresenterImpl -->
    <instantiate from="root/src/app_package/presenter/PresenterImpl.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${activityClass?split("Activity")[0]}Presenter.${ktOrJavaExt}" />

    <#-- IModel -->
    <instantiate from="root/src/app_package/model/IModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/I${activityClass?split("Activity")[0]}Model.${ktOrJavaExt}" />

    <#-- ModelImpl -->
    <instantiate from="root/src/app_package/model/ModelImpl.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/${activityClass?split("Activity")[0]}Model.${ktOrJavaExt}" />

    <#-- ActivityModule -->
    <instantiate from="root/src/app_package/di/ActivityModule.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/${activityClass?split("Activity")[0]}Module.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/view/activity/${activityClass}.${ktOrJavaExt}" />
</recipe>
