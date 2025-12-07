@interface SUScriptExecutionContext
- (BOOL)evaluateData:(id)data MIMEType:(id)type textEncodingName:(id)name baseURL:(id)l;
- (OpaqueJSContext)globalExecutionContext;
- (id)_newLoadOperation;
- (id)_webView;
- (id)parentViewControllerForWebView:(id)view;
- (void)_cancelLoadOperation;
- (void)dealloc;
- (void)evaluateScriptAtURL:(id)l;
- (void)evaluateScriptWithURLBagKey:(id)key;
- (void)operation:(id)operation failedWithError:(id)error;
- (void)operation:(id)operation finishedWithOutput:(id)output;
@end

@implementation SUScriptExecutionContext

- (void)dealloc
{
  [(ISStoreURLOperation *)self->_loadOperation setDelegate:0];

  [(SUWebView *)self->_webView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUScriptExecutionContext;
  [(SUScriptExecutionContext *)&v3 dealloc];
}

- (BOOL)evaluateData:(id)data MIMEType:(id)type textEncodingName:(id)name baseURL:(id)l
{
  if ([type rangeOfString:@"javascript" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [-[SUScriptExecutionContext _webView](self "_webView")];
  }

  else
  {
    if (name)
    {
      v11 = CFStringConvertIANACharSetNameToEncoding(name);
    }

    else
    {
      v11 = 134217984;
    }

    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:data encoding:CFStringConvertEncodingToNSStringEncoding(v11)];
    if (v12)
    {
      v13 = v12;
      [-[SUScriptExecutionContext _webView](self "_webView")];
    }
  }

  return 1;
}

uint64_t __62__SUScriptExecutionContext_callWebScriptMethod_withArguments___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) "_webView")];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 callWebScriptMethod:v3 withArguments:v4];
}

- (void)evaluateScriptAtURL:(id)l
{
  v18 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v14 = 138412546;
    v15 = objc_opt_class();
    v16 = 2112;
    lCopy = l;
    v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Loading script at URL: %@", &v14, 22);
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
      free(v10);
      v13 = v11;
      SSFileLog();
    }
  }

  [(SUScriptExecutionContext *)self _cancelLoadOperation];
  self->_loadOperation = [(SUScriptExecutionContext *)self _newLoadOperation];
  v12 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:l];
  [(ISStoreURLOperation *)self->_loadOperation setRequestProperties:v12];

  [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];
}

- (void)evaluateScriptWithURLBagKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v14 = 138412546;
    v15 = objc_opt_class();
    v16 = 2112;
    keyCopy = key;
    v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Loading script at bag key: %@", &v14, 22);
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
      free(v10);
      v13 = v11;
      SSFileLog();
    }
  }

  [(SUScriptExecutionContext *)self _cancelLoadOperation];
  self->_loadOperation = [(SUScriptExecutionContext *)self _newLoadOperation];
  v12 = objc_alloc_init(MEMORY[0x1E69D4970]);
  [v12 setURLBagKey:key];
  [(ISStoreURLOperation *)self->_loadOperation setRequestProperties:v12];

  [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];
}

- (OpaqueJSContext)globalExecutionContext
{
  v2 = [objc_msgSend(-[SUWebView _browserView](self->_webView "_browserView")];

  return [v2 globalContext];
}

- (void)operation:(id)operation failedWithError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v13 = 138412290;
    v14 = objc_opt_class();
    v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%@: Could not load URL", &v13, 12);
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
      free(v10);
      v12 = v11;
      SSFileLog();
    }
  }

  [(SUScriptExecutionContext *)self _cancelLoadOperation];
}

- (void)operation:(id)operation finishedWithOutput:(id)output
{
  v19 = *MEMORY[0x1E69E9840];
  if ([output length])
  {
    response = [operation response];
    textEncodingName = [response textEncodingName];
    if (!textEncodingName)
    {
      textEncodingName = CFStringConvertEncodingToIANACharSetName(0x8000100u);
    }

    -[SUScriptExecutionContext evaluateData:MIMEType:textEncodingName:baseURL:](self, "evaluateData:MIMEType:textEncodingName:baseURL:", output, [response MIMEType], textEncodingName, objc_msgSend(objc_msgSend(operation, "response"), "URL"));
  }

  else
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v17 = 138412290;
      v18 = objc_opt_class();
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%@: Received empty or invalid script", &v17, 12);
      if (v13)
      {
        v14 = v13;
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
        free(v14);
        v16 = v15;
        SSFileLog();
      }
    }
  }

  [(SUScriptExecutionContext *)self _cancelLoadOperation];
}

- (id)parentViewControllerForWebView:(id)view
{
  v3 = +[SUClientDispatch tabBarController];
  presentedViewController = [v3 presentedViewController];
  if (!presentedViewController)
  {
    presentedViewController = [v3 selectedViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentedViewController = [presentedViewController topViewController];
  }

  if (presentedViewController)
  {
    return presentedViewController;
  }

  else
  {
    return v3;
  }
}

- (void)_cancelLoadOperation
{
  [(ISStoreURLOperation *)self->_loadOperation setDelegate:0];
  [(ISStoreURLOperation *)self->_loadOperation cancel];

  self->_loadOperation = 0;
}

- (id)_newLoadOperation
{
  v3 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  [v3 setDelegate:self];
  [v3 setShouldMessageMainThread:1];
  return v3;
}

- (id)_webView
{
  result = self->_webView;
  if (!result)
  {
    v4 = objc_alloc_init(SUWebView);
    self->_webView = v4;
    [(SUWebView *)v4 setDelegate:self];
    return self->_webView;
  }

  return result;
}

@end