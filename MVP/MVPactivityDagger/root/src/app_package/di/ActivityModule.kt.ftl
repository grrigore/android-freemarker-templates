package ${packageName}.di

import android.content.Context

<#assign activity>${activityClass?split("Activity")[0]}</#assign>

import dagger.Module
import dagger.Provides
import ${packageName}.model.${activity}Model
import ${packageName}.model.I${activity}Model
import ${packageName}.presenter.${activity}Presenter
import ${packageName}.presenter.I${activity}Presenter
import ${packageName}.view.I${activity}Delegate
import ${packageName}.view.${activityClass}

@Module
class ${activity}Module {
    
    @Provides
    fun provideViewDelegate(activity : ${activityClass}) : I${activity}Delegate {
        return activity
    }
 
    @Provides
    fun provide${activity}Model(apiInterface : ApiInterface) : I${activity}Model {
        return ${activity}Model(apiInterface)
    }

    @Provides
    fun provide${activity}Presenter(context : Context ,
                                    viewDelegate : I${activity}Delegate,
                                    model : I${activity}Model) : I${activity}Presenter {
        return ${activity}Presenter(context, viewDelegate, model)
    }
}