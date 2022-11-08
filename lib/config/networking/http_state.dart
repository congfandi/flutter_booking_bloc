abstract class HttpState{
  void onStartRequest(String url, String method);

  void onEndRequest(String url, String method);

  void onErrorRequest(String url, String method);

  void onSuccessRequest(String url, String method);
}

enum HttpStateStatus { initial, idle, loading, error, success }
