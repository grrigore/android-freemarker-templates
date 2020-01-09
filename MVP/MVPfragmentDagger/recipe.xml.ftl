<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <instantiate from="root/res/layout/fragment_blank.xml.ftl"
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

    <#-- Fragment -->
    <instantiate from="root/src/app_package/view/MvpFragment.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/${fragmentClass}.${ktOrJavaExt}" />

    <#-- IViewDelegate -->
    <instantiate from="root/src/app_package/view/IViewDelegate.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/I${fragmentClass?split("Fragment")[0]}Delegate.${ktOrJavaExt}" />

    <#-- IPresenter -->
    <instantiate from="root/src/app_package/presenter/IPresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/I${fragmentClass?split("Fragment")[0]}Presenter.${ktOrJavaExt}" />

    <#-- PresenterImpl -->
    <instantiate from="root/src/app_package/presenter/PresenterImpl.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${fragmentClass?split("Fragment")[0]}Presenter.${ktOrJavaExt}" />

    <#-- IModel -->
    <instantiate from="root/src/app_package/model/IModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/I${fragmentClass?split("Fragment")[0]}Model.${ktOrJavaExt}" />

    <#-- ModelImpl -->
    <instantiate from="root/src/app_package/model/ModelImpl.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/${fragmentClass?split("Fragment")[0]}Model.${ktOrJavaExt}" />

                   
    <#-- FragmentModule -->
    <instantiate from="root/src/app_package/di/FragmentModule.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/${fragmentClass?split("Fragment")[0]}Module.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/view/${fragmentClass}.${ktOrJavaExt}" />
</recipe>
