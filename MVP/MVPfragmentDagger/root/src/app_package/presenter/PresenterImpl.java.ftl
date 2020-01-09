package ${packageName}.presenter;

<#assign fragment>${fragmentClass?split("Fragment")[0]}</#assign>

import android.content.Context;

import ${packageName}.view.delegate.IViewDelegate;
import ${packageName}.model.I${fragment}Model;

public class ${fragment}Presenter implements I${fragment}Presenter {

    private Context mContext;
    private IViewDelegate mViewDelegate;
    private I${fragment}Model mModel;

    public ${fragment}Presenter(Context context, IViewDelegate viewDelegate, I${fragment}Model model) {
        mContext = context;
        mViewDelegate = viewDelegate;
        mModel = model;
    }
}