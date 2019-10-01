<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <dependency mavenUrl="com.android.support.constraint:constraint-layout:+" />
    <dependency mavenUrl="org.koin:koin-android:+" />
    <dependency mavenUrl="org.koin:koin-android-scope:+" />
    
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
    <instantiate from="root/src/app_package/view/activity/MvpActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/activity/${activityClass}.${ktOrJavaExt}" />

    <#-- IViewDelegate -->
    <instantiate from="root/src/app_package/view/delegate/IViewDelegate.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/delegate/IViewDelegate.${ktOrJavaExt}" />

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

    <open file="${escapeXmlAttribute(srcOut)}/view/activity/${activityClass}.${ktOrJavaExt}" />
</recipe>
