package ${packageName}.di


<#assign fragment>${fragmentClass?split("Fragment")[0]}</#assign>


import android.content.Context

import dagger.Module
import dagger.Provides
import ${packageName}.model.${fragment}Model
import ${packageName}.model.I${fragment}Model
import ${packageName}.presenter.${fragment}Presenter
import ${packageName}.presenter.I${fragment}Presenter
import ${packageName}.view.I${fragment}Delegate
import ${packageName}.view.${fragmentClass}

@Module
class ${fragment}Module {
    
    @Provides
    fun provideViewDelegate(fragment : ${fragmentClass}) :  I${fragment}Delegate {
        return fragment
    }
 
    @Provides
    fun provide${fragment}Model(apiInterface : ApiInterface) :I${fragment}Model {
        return ${fragment}Model(apiInterface)
    }

    @Provides
    fun provide${fragment}Presenter(context : Context ,
                                        viewDelegate : I${fragment}Delegate,
                                        model : I${fragment}Model) : I${fragment}Presenter {
        return ${fragment}Presenter(context, viewDelegate, model)
    }
}