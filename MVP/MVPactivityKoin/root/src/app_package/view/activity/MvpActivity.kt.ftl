package ${packageName}.view.activity

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import ${packageName}.view.delegate.IViewDelegate
import ${packageName}.presenter.${activityClass?split("Activity")[0]}Presenter
import org.koin.android.ext.android.inject
import org.koin.core.parameter.parametersOf

class ${activityClass} : AppCompatActivity(), IViewDelegate {

    private val m${activityClass?split("Activity")[0]}Presenter: ${activityClass?split("Activity")[0]}Presenter by inject { parametersOf(this) }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})
    }
}
