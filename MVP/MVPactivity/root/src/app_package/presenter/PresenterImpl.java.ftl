package ${packageName}.presenter;

import android.content.Context;

import ${packageName}.view.delegate.IViewDelegate;
import ${packageName}.model.I${activityClass?split("Activity")[0]}Model;

public class ${activityClass?split("Activity")[0]}Presenter implements I${activityClass?split("Activity")[0]}Presenter {

    private Context mContext;
    private IViewDelegate mViewDelegate;
    private I${activityClass?split("Activity")[0]}Model mModel;

    public ${activityClass?split("Activity")[0]}Presenter(Context context, IViewDelegate viewDelegate, I${activityClass?split("Activity")[0]}Model model) {
        mContext = context;
        mViewDelegate = viewDelegate;
        mModel = model;
    }
}