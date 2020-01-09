package ${packageName}.view;

public interface I${activityClass?split("Activity")[0]}Delegate : <#if hasAuth>AuthViewDelegate<#else>ProgressViewDelegate</#if> {

}