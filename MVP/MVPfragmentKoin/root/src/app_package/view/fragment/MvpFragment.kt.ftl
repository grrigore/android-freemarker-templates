package ${packageName}.view.fragment


import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import ${packageName}.presenter.DashboardPresenter
import ${packageName}.view.delegate.IViewDelegate
import org.koin.android.ext.android.inject
import org.koin.core.parameter.parametersOf


class ${fragmentClass} : Fragment(), IViewDelegate {

     private val m${fragmentClass?split("Fragment")[0]}Presenter: ${fragmentClass?split("Fragment")[0]}Presenter by inject { parametersOf(this) }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.${layoutName}, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
    }
}
