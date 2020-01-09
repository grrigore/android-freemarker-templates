package ${packageName}.view

<#assign fragment>
    ${fragmentClass?split("Fragment")[0]}
</#assign>

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import ro.roweb.mvp.android.base.MvpFragment
import ${packageName}.presenter.I${fragment}Presenter

class ${fragmentClass}(override var presenter : I${fragment}Presenter) : MvpFragment(), I${fragment}Delegate {
 
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.${layoutName}, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
    }

    <#if hasAuth>
    override fun onTokenExpired() {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }
    </#if>

    override fun showProgress() {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun hideProgress() {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }
}
