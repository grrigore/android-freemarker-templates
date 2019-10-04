package ${packageName}.base

interface IBaseViewDelegate {
    fun showLoading()
    fun hideLoading()
    fun showNoNetworkConnection()
    fun onError(message : String)
}