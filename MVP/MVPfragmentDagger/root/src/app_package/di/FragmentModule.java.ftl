package ${packageName}.di;

import android.content.Context;

import dagger.Module;
import dagger.Provides;
import ${packageName}.model.${fragmentClass?split("Fragment")[0]}Model;
import ${packageName}.model.I${fragmentClass?split("Fragment")[0]}Model;
import ${packageName}.presenter.${fragmentClass?split("Fragment")[0]}Presenter;
import ${packageName}.presenter.I${fragmentClass?split("Fragment")[0]}Presenter;
import ${packageName}.view.delegate.IViewDelegate;
import ${packageName}.view.fragment.${fragmentClass};

@Module
public class ${fragmentClass?split("Fragment")[0]}Module {
    
    @Provides
    IViewDelegate provideViewDelegate(${fragmentClass} fragment) {
        return fragment;
    }
 
    @Provides
    I${fragmentClass?split("Fragment")[0]}Model provide${fragmentClass?split("Fragment")[0]}Model(ApiInterface apiInterface) {
        return new ${fragmentClass?split("Fragment")[0]}Model(apiInterface);
    }

    @Provides
    I${fragmentClass?split("Fragment")[0]}Presenter provide${fragmentClass?split("Fragment")[0]}Presenter(Context context,
                                        IViewDelegate viewDelegate,
                                        I${fragmentClass?split("Fragment")[0]}Model model) {
        return new ${fragmentClass?split("Fragment")[0]}Presenter(context, viewDelegate, model);
    }
}