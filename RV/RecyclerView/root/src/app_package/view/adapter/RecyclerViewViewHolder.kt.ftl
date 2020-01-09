package ${packageName}.adapter

import android.content.Context
import android.view.View
import androidx.recyclerview.widget.RecyclerView

<#assign layoutBindingName>
  <#list itemLayoutName?split("_") as item>
      <#if item?matches(itemLayoutName?split("_")[0])>
        ${item}<#t>
      <#else>
        ${item?cap_first}<#t>
      </#if>
  </#list>
</#assign>

<#assign item>
  ${itemType?uncap_first}
</#assign>

class ${viewHolderName}<#if hasDataBinding>(
    private val ${layoutBindingName}Binding : ${layoutBindingName?cap_first}Binding
) : RecyclerView.ViewHolder(wishlistBinding.root)<#else>(itemView : View, context : Context) : RecyclerView.ViewHolder(itemView)</#if> {

    fun bindData(${item} : ${itemType}) {
    <#if hasDataBinding> 
      ${layoutBindingName}Binding.item = ${item}
      ${layoutBindingName}Binding.executePendingBindings()
    <#else>
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    </#if>
    }    
}