package ${packageName}.presenter

import android.content.Context
import ro.roweb.mvp.android.presenter.<#if hasAuth>AuthCoroutinePresenter<#else>CoroutinePresenter</#if>

import ${packageName}.view.I${fragmentClass?split("Fragment")[0]}Delegate
import ${packageName}.model.I${fragmentClass?split("Fragment")[0]}Model

class ${fragmentClass?split("Fragment")[0]}Presenter(
        context: Context,
        override val viewDelegate: I${fragmentClass?split("Fragment")[0]}Delegate,
        private val model: I${fragmentClass?split("Fragment")[0]}Model
) : <#if hasAuth>AuthCoroutinePresenter<#else>CoroutinePresenter</#if>(context), I${fragmentClass?split("Fragment")[0]}Presenter {

}
