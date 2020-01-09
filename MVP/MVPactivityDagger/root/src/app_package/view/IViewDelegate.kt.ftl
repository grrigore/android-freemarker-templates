package ${packageName}.view

<#if hasAuth>
import ro.roweb.mvp.android.view.AuthViewDelegate
<#else>
import ro.roweb.mvp.android.view.ProgressViewDelegate
</#if>

interface I${activityClass?split("Activity")[0]}Delegate : <#if hasAuth>AuthViewDelegate<#else>ProgressViewDelegate</#if> {

}