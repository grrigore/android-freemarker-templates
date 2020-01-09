package ${packageName}.view

import android.os.Bundle
import ro.roweb.mvp.android.base.MvpActivity
import ${packageName}.presenter.I${activityClass?split("Activity")[0]}Presenter

class ${activityClass}(override var presenter : I${activityClass?split("Activity")[0]}Presenter) : MvpActivity(), I${activityClass?split("Activity")[0]}Delegate {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})
    }
    
    <#if hasAuth>
    override fun onTokenExpired() {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun showProgress() {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun hideProgress() {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }
    <#else>
    override fun showProgress() {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun hideProgress() {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }
    </#if>
}

