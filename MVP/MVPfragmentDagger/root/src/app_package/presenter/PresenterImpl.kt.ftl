package ${packageName}.presenter

<#assign fragment>
    ${fragmentClass?split("Fragment")[0]}
</#assign>

import android.content.Context
import ro.roweb.mvp.android.presenter.<#if hasAuth>AuthCoroutinePresenter<#else>CoroutinePresenter</#if>

import ${packageName}.view.I${fragment}Delegate
import ${packageName}.model.I${fragment}Model

class ${fragment}Presenter(
        context: Context,
        override val viewDelegate: I${fragment}Delegate,
        private val model: I${fragment}Model
) : <#if hasAuth>AuthCoroutinePresenter<#else>CoroutinePresenter</#if>(context), I${fragment}Presenter {

}
