package ${packageName}.view.adapter

import android.content.Context
import androidx.recyclerview.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

class ${adapterName}(private val context : Context) : RecyclerView.Adapter<${viewHolderName}>() {

    override fun onCreateViewHolder(viewGroup : ViewGroup, i : Int) : ${viewHolderName} {
        val view : View = LayoutInflater.from(context).inflate(R.layout.${itemLayoutName}, viewGroup, false)
        return ${viewHolderName}(view, context)
    }

    override fun onBindViewHolder(${viewHolderName?uncap_first} : ${viewHolderName}, i : Int) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
        ${viewHolderName?uncap_first}.bindData()
    }

    override fun getItemCount() : Int {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }
}