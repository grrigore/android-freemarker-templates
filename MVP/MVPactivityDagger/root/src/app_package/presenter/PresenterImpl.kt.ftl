package ${packageName}.presenter

import android.content.Context

import ${packageName}.view.delegate.IViewDelegate
import ${packageName}.model.I${activityClass?split("Activity")[0]}Model

class ${activityClass?split("Activity")[0]}Presenter(private val context: Context,
        private val viewDelegate: IViewDelegate,
        private val model: I${activityClass?split("Activity")[0]}Model
) : I${activityClass?split("Activity")[0]}Presenter {

}