package ${packageName}.presenter

class ${activityClass?split('Activity')[0]}Presenter(private val mViewDelegate: IViewDelegate,
    private val mModel: I${activityClass?split('Activity')[0]}Model) : I${activityClass?split('Activity')[0]}Presenter {
        
}