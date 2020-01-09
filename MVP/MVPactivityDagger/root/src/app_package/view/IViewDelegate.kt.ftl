package ${packageName}.view

<#if hasAuth>
import ro.roweb.mvp.android.view.AuthViewDelegate
<#else>
import ro.roweb.mvp.android.view.ProgressViewDelegate
</#if>


<#assign activity>${activityClass?split("Activity")[0]}</#assign>


interface I${activity}Delegate : <#if hasAuth>AuthViewDelegate<#else>ProgressViewDelegate</#if> {

}