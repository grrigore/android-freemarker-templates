package ${packageName}.di

import android.content.Context

import dagger.Module
import dagger.Provides
import ${packageName}.model.${fragmentClass?split("Fragment")[0]}Model
import ${packageName}.model.I${fragmentClass?split("Fragment")[0]}Model
import ${packageName}.presenter.${fragmentClass?split("Fragment")[0]}Presenter
import ${packageName}.presenter.I${fragmentClass?split("Fragment")[0]}Presenter
import ${packageName}.view.I${fragmentClass?split("Fragment")[0]}Delegate
import ${packageName}.view.${fragmentClass}

@Module
class ${fragmentClass?split("Fragment")[0]}Module {
    
    @Provides
    fun provideViewDelegate(fragment : ${fragmentClass}) :  I${fragmentClass?split("Fragment")[0]}Delegate {
        return fragment
    }
 
    @Provides
    fun provide${fragmentClass?split("Fragment")[0]}Model(apiInterface : ApiInterface) :I${fragmentClass?split("Fragment")[0]}Model {
        return ${fragmentClass?split("Fragment")[0]}Model(apiInterface)
    }

    @Provides
    fun provide${fragmentClass?split("Fragment")[0]}Presenter(context : Context ,
                                        viewDelegate : I${fragmentClass?split("Fragment")[0]}Delegate,
                                        model : I${fragmentClass?split("Fragment")[0]}Model) : I${fragmentClass?split("Fragment")[0]}Presenter {
        return ${fragmentClass?split("Fragment")[0]}Presenter(context, viewDelegate, model)
    }
}