package ${packageName}.model;

public class ${activityClass?split("Activity")[0]}Model implements I${activityClass?split("Activity")[0]}Model {
    private ApiInterface mApiInterface;

    public ${activityClass?split("Activity")[0]}Model(ApiInterface apiInterface) {
        mApiInterface = apiInterface;
    }
}