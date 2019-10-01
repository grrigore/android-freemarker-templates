package ${packageName}.view.activity;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import ${packageName}.view.delegate.IViewDelegate;
import ${packageName}.R;

public class ${activityClass} extens AppCompatActivity() implements IViewDelegate {
        @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

    }
}
