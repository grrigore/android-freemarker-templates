package ${packageName}

import android.content.Context
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

class ${adapterName}(private val Context mContext) : RecyclerView.Adapter<${adapterName?split("Adapter")[0]}ViewHolder> {

    override fun onCreateViewHolder(viewGroup : ViewGroup, i : Int) : ${adapterName?split("Adapter")[0]}ViewHolder {
        View view = LayoutInflater.from(mContext).inflate(R.layout.${itemLayoutName}, viewGroup, false);
        return new ${adapterName?split("Adapter")[0]}ViewHolder(view, mContext);
    }

    override fun onBindViewHolder(${adapterName?split("Adapter")[0]}ViewHolder : ${adapterName?split("Adapter")[0]}ViewHolder, int i) =  ${adapterName?split("Adapter")[0]}ViewHolder.bindData(entity)

    
    override fun getItemCount() : Int = 

}