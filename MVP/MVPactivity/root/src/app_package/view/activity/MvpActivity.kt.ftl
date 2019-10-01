package ${packageName}.view.activity

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import ${packageName}.view.delegate.IViewDelegate
import ${packageName}.R

class ${activityClass} : AppCompatActivity(), IViewDelegate {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})
    }
}
