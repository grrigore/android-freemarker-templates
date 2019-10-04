package ${packageName};

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class ${adapterName} extends RecyclerView.Adapter<${adapterName?split("Adapter")[0]}ViewHolder>{

    private Context mContext;
    
    public ${adapterName}(Context context) {
        mContext = context;
    }

    @NonNull
    @Override
    public ${adapterName?split("Adapter")[0]}ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(mContext).inflate(R.layout.${itemLayoutName}, viewGroup, false);
        return new ${adapterName?split("Adapter")[0]}ViewHolder(view, mContext);
    }

    @Override
    public void onBindViewHolder(@NonNull ${adapterName?split("Adapter")[0]}ViewHolder ${adapterName?split("Adapter")[0]}ViewHolder, int i) {
        ${adapterName?split("Adapter")[0]}ViewHolder.bindData(entity);
    }

    @Override
    public int getItemCount() {

    }

}