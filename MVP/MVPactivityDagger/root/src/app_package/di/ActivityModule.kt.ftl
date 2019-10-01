package ${packageName}.di

import android.content.Context

import dagger.Module
import dagger.Provides
import ${packageName}.model.${activityClass?split("Activity")[0]}Model
import ${packageName}.model.I${activityClass?split("Activity")[0]}Model
import ${packageName}.presenter.${activityClass?split("Activity")[0]}Presenter
import ${packageName}.presenter.I${activityClass?split("Activity")[0]}Presenter
import ${packageName}.view.delegate.IViewDelegate
import ${packageName}.view.activity.${activityClass}

@Module
class ${activityClass?split("Activity")[0]}Module {
    
    @Provides
    fun provideViewDelegate(activity : ${activityClass}) :  IViewDelegate {
        return activity
    }
 
    @Provides
    fun provide${activityClass?split("Activity")[0]}Model(apiInterface : ApiInterface) :I${activityClass?split("Activity")[0]}Model {
        return ${activityClass?split("Activity")[0]}Model(apiInterface)
    }

    @Provides
    fun provide${activityClass?split("Activity")[0]}Presenter(context : Context ,
                                        viewDelegate : IViewDelegate,
                                        model : I${activityClass?split("Activity")[0]}Model) : I${activityClass?split("Activity")[0]}Presenter {
        return ${activityClass?split("Activity")[0]}Presenter(context, viewDelegate, model)
    }
}