package ${packageName}.adapter

import android.content.Context
import android.view.LayoutInflater
import android.view.ViewGroup
import ro.roweb.mvp.android.base.adapter.<#if isMutable>MutableListRecyclerAdapter<#else>ListRecyclerAdapter</#if>

<#assign layoutBindingName>
    <#list itemLayoutName?split("_") as item>
        <#if item?matches(itemLayoutName?split("_")[0])>
        ${item}<#t>
        <#else>
        ${item?cap_first}<#t>
        </#if>
    </#list>
</#assign>

class ${adapterName}(private val context : Context) : <#if isMutable>MutableListRecyclerAdapter<#else>ListRecyclerAdapter</#if><${itemType}, ${viewHolderName}>() {

    override fun onCreateViewHolder(viewGroup : ViewGroup, i : Int) : ${viewHolderName} {
    <#if hasDataBinding>
        val inflater =
            LayoutInflater.from(context)
        val ${layoutBindingName}Binding = ${layoutBindingName?cap_first}Binding.inflate(inflater, viewGroup, false)

        return ${viewHolderName}(${layoutBindingName})
    <#else>
        val view : View = LayoutInflater.from(context).inflate(R.layout.${itemLayoutName}, viewGroup, false)
        return ${viewHolderName}(view, context)
    </#if>
    }

    override fun onBindViewHolder(${viewHolderName?uncap_first} : ${viewHolderName}, i : Int) {
        ${viewHolderName?uncap_first}.bindData(items[i])
    }
}