package ${packageName}.model

<#assign fragment>${fragmentClass?split("Fragment")[0]}</#assign>

class ${fragment}Model(private val apiInterface : ApiInterface) : I${fragment}Model {

}