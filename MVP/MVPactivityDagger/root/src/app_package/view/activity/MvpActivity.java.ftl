package ${packageName}.view.activity;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import ${packageName}.view.delegate.IViewDelegate;

public class ${activityClass} extends AppCompatActivity implements IViewDelegate {
    //TODO change Dagger version from build.gradle
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

    }
}
