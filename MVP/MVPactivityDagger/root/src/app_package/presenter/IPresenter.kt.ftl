package ${packageName}.presenter

import ro.roweb.mvp.android.presenter.IPresenter


<#assign activity>
    ${activityClass?split("Activity")[0]}
</#assign>


interface I${activity}Presenter : IPresenter {

}