package ${packageName}.di;

import android.content.Context;

import dagger.Module;
import dagger.Provides;
import ${packageName}.model.${activityClass?split("Activity")[0]}Model;
import ${packageName}.model.I${activityClass?split("Activity")[0]}Model;
import ${packageName}.presenter.${activityClass?split("Activity")[0]}Presenter;
import ${packageName}.presenter.I${activityClass?split("Activity")[0]}Presenter;
import ${packageName}.view.I${activityClass?split("Activity")[0]}Delegate;
import ${packageName}.view.${activityClass};

@Module
public class ${activityClass?split("Activity")[0]}Module {
    
    @Provides
    I${activityClass?split("Activity")[0]}Delegate provideViewDelegate(${activityClass} activity) {
        return activity;
    }
 
    @Provides
    I${activityClass?split("Activity")[0]}Model provide${activityClass?split("Activity")[0]}Model(ApiInterface apiInterface) {
        return new ${activityClass?split("Activity")[0]}Model(apiInterface);
    }

    @Provides
    I${activityClass?split("Activity")[0]}Presenter provide${activityClass?split("Activity")[0]}Presenter(Context context,
                                        I${activityClass?split("Activity")[0]}Delegate viewDelegate,
                                        I${activityClass?split("Activity")[0]}Model model) {
        return new ${activityClass?split("Activity")[0]}Presenter(context, viewDelegate, model);
    }
}