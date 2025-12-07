@interface EDMailDropWebViewScriptHandler
- (WKWebView)webView;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation EDMailDropWebViewScriptHandler

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  v14 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v6 = _ef_log_EDMailDropMetadataGenerator(messageCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = messageCopy;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "MailDrop: Received Script message with %@", &v12, 0xCu);
  }

  webView = [(EDMailDropWebViewScriptHandler *)self webView];
  webView2 = [messageCopy webView];
  if (webView2 != webView)
  {
    goto LABEL_6;
  }

  handler = [(EDMailDropWebViewScriptHandler *)self handler];
  v10 = handler == 0;

  if (!v10)
  {
    webView2 = [(EDMailDropWebViewScriptHandler *)self handler];
    body = [messageCopy body];
    (webView2)[2](webView2, body);

LABEL_6:
  }
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

@end