package ${packageName}.presenter

import android.content.Context
import ro.roweb.mvp.android.presenter.<#if hasAuth>AuthCoroutinePresenter<#else>CoroutinePresenter</#if>

import ${packageName}.view.I${activityClass?split("Activity")[0]}Delegate
import ${packageName}.model.I${activityClass?split("Activity")[0]}Model

class ${activityClass?split("Activity")[0]}Presenter(
        context: Context,
        override val viewDelegate: I${activityClass?split("Activity")[0]}Delegate,
        private val model: I${activityClass?split("Activity")[0]}Model
) : <#if hasAuth>AuthCoroutinePresenter<#else>CoroutinePresenter</#if>(context), I${activityClass?split("Activity")[0]}Presenter {

}