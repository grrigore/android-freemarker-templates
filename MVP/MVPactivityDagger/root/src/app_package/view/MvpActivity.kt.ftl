package ${packageName}.view

<#assign activity>${activityClass?split("Activity")[0]}</#assign>

import android.os.Bundle
import ro.roweb.mvp.android.base.MvpActivity
import ${packageName}.presenter.I${activity}Presenter

class ${activityClass}(override var presenter : I${activity}Presenter) : MvpActivity(), I${activity}Delegate {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})
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

