package ${packageName};

import android.content.Context;
import android.view.View;
import android.support.annotation.NonNull;

public class ${adapterName?split("Adapter")[0]}ViewHolder extends RecyclerView.ViewHolder {

    private Context mContext;

    public ${adapterName?split("Adapter")[0]}ViewHolder (@NonNull View itemView, Context context) {
        super(itemView);

        mContext = context;
    }

    public void bindData(Entity entity) {

    }
}