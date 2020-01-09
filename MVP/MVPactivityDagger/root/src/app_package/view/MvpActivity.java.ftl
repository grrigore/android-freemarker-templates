package ${packageName}.view.activity;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import ro.roweb.mvp.android.base.MvpActivity;
import com.example.testfreemaker.screen.presenter.I${activityClass?split("Activity")[0]}Presenter;
import ${packageName}.view.I${activityClass?split("Activity")[0]}Delegate;

public class ${activityClass} extends MvpActivity<I${activityClass?split("Activity")[0]}Presenter> implements I${activityClass?split("Activity")[0]}Delegate {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

    }
}
