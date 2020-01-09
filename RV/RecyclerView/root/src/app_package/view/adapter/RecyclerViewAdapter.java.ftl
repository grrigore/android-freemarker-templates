package ${packageName}.adapter;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class ${adapterName} extends RecyclerView.Adapter<${viewHolderName}>{

    private Context mContext;
    
    public ${adapterName}(Context context) {
        mContext = context;
    }

    @NonNull
    @Override
    public ${viewHolderName} onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(mContext).inflate(R.layout.${itemLayoutName}, viewGroup, false);
        return new ${viewHolderName}(view, mContext);
    }

    @Override
    public void onBindViewHolder(@NonNull ${viewHolderName} ${viewHolderName?uncap_first}, int i) {
        //TODO not implemented
        ${viewHolderName?uncap_first}.bindData();
    }

    @Override
    public int getItemCount() {
        //TODO not implemented
        return 0;
    }
}