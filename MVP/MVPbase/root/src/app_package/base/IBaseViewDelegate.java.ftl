package ${packageName}.base;

public interface IBaseViewDelegate {
    void showLoading();
    void hideLoading();
    void showNoNetworkConnection();
    void onError(String message);
}