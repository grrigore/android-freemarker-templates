package ${packageName}.presenter

import android.content.Context

import ${packageName}.view.delegate.IViewDelegate
import ${packageName}.model.I${fragmentClass?split("Fragment")[0]}Model

class ${fragmentClass?split("Fragment")[0]}Presenter(private val context: Context,
        private val viewDelegate: IViewDelegate,
        private val model: I${fragmentClass?split("Fragment")[0]}Model
) : I${fragmentClass?split("Fragment")[0]}Presenter {

}
