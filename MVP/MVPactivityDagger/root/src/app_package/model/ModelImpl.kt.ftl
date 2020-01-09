package ${packageName}.model

<#assign activity>
    ${activityClass?split("Activity")[0]}
</#assign>

class ${activity}Model(private val apiInterface : ApiInterface) : I${activity}Model {

}