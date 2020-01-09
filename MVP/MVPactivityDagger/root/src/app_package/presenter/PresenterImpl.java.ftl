package ${packageName}.presenter;

import android.content.Context;

import ${packageName}.view.I${activityClass?split("Activity")[0]}Delegate;
import ${packageName}.model.I${activityClass?split("Activity")[0]}Model;

public class ${activityClass?split("Activity")[0]}Presenter implements I${activityClass?split("Activity")[0]}Presenter {

    private Context mContext;
    private I${activityClass?split("Activity")[0]}Delegate mViewDelegate;
    private I${activityClass?split("Activity")[0]}Model mModel;

    public ${activityClass?split("Activity")[0]}Presenter(Context context, IViewDelegate viewDelegate, I${activityClass?split("Activity")[0]}Model model) {
        mContext = context;
        mViewDelegate = viewDelegate;
        mModel = model;
    }
}