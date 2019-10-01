package ${packageName}.presenter;

import android.content.Context;

import ${packageName}.view.delegate.IViewDelegate;
import ${packageName}.model.I${fragmentClass?split("Fragment")[0]}Model;

public class ${fragmentClass?split("Fragment")[0]}Presenter implements I${fragmentClass?split("Fragment")[0]}Presenter {

    private Context mContext;
    private IViewDelegate mViewDelegate;
    private I${fragmentClass?split("Fragment")[0]}Model mModel;

    public ${fragmentClass?split("Fragment")[0]}Presenter(Context context, IViewDelegate viewDelegate, I${fragmentClass?split("Fragment")[0]}Model model) {
        mContext = context;
        mViewDelegate = viewDelegate;
        mModel = model;
    }
}