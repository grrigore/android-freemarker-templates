package ${packageName}.di;

import android.content.Context;

import dagger.Module;
import dagger.Provides;
import ${packageName}.model.${activityClass?split("Activity")[0]}Model;
import ${packageName}.model.I${activityClass?split("Activity")[0]}Model;
import ${packageName}.presenter.${activityClass?split("Activity")[0]}Presenter;
import ${packageName}.presenter.I${activityClass?split("Activity")[0]}Presenter;
import ${packageName}.view.delegate.IViewDelegate;
import ${packageName}.view.activity.${activityClass};

@Module
public class ${activityClass?split("Activity")[0]}Module {
    
    @Provides
    IViewDelegate provideViewDelegate(${activityClass} activity) {
        return activity;
    }
 
    @Provides
    I${activityClass?split("Activity")[0]}Model provide${activityClass?split("Activity")[0]}Model(ApiInterface apiInterface) {
        return new ${activityClass?split("Activity")[0]}Model(apiInterface);
    }

    @Provides
    I${activityClass?split("Activity")[0]}Presenter provide${activityClass?split("Activity")[0]}Presenter(Context context,
                                        IViewDelegate viewDelegate,
                                        I${activityClass?split("Activity")[0]}Model model) {
        return new ${activityClass?split("Activity")[0]}Presenter(context, viewDelegate, model);
    }
}