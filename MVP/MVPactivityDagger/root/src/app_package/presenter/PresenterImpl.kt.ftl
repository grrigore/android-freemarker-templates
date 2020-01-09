package ${packageName}.presenter

import android.content.Context
import ro.roweb.mvp.android.presenter.<#if hasAuth>AuthCoroutinePresenter<#else>CoroutinePresenter</#if>


<#assign activity>${activityClass?split("Activity")[0]}</#assign>


import ${packageName}.view.I${activity}Delegate
import ${packageName}.model.I${activity}Model

class ${activity}Presenter(
        context: Context,
        override val viewDelegate: I${activity}Delegate,
        private val model: I${activity}Model
) : <#if hasAuth>AuthCoroutinePresenter<#else>CoroutinePresenter</#if>(context), I${activity}Presenter {

}