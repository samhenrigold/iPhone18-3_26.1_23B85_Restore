@interface SUScriptReportAProblemViewController
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (NSNumber)adamID;
- (SUScriptReportAProblemViewController)initWithAdamID:(id)d clientInterface:(id)interface;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)setAdamID:(id)d;
@end

@implementation SUScriptReportAProblemViewController

- (SUScriptReportAProblemViewController)initWithAdamID:(id)d clientInterface:(id)interface
{
  v28 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = SUScriptReportAProblemViewController;
  v6 = [(SUScriptObject *)&v25 init];
  v7 = v6;
  if (v6)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17 = MEMORY[0x1E69E9820];
    dCopy = d;
    interfaceCopy = interface;
    v20 = v6;
    WebThreadRunOnMainThread();
    if ((v22[3] & 1) == 0)
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      LODWORD(v9) = [mEMORY[0x1E69D4938] shouldLog];
      shouldLogToDisk = [mEMORY[0x1E69D4938] shouldLogToDisk];
      oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
      v12 = oSLogObject;
      if (shouldLogToDisk)
      {
        LODWORD(v9) = v9 | 2;
      }

      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v9;
      }

      else
      {
        v9 &= 2u;
      }

      if (v9)
      {
        _className = [(SUScriptReportAProblemViewController *)v7 _className];
        v26 = 138412290;
        v27 = _className;
        v14 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1C21AF000, v12, 0, "%@: Not supported in this client", &v26, 12, v17, 3221225472, __71__SUScriptReportAProblemViewController_initWithAdamID_clientInterface___block_invoke, &unk_1E8165CC8, dCopy, interfaceCopy, v20, &v21);
        if (v14)
        {
          v15 = v14;
          [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
          free(v15);
          SSFileLog();
        }
      }

      v7 = 0;
    }

    _Block_object_dispose(&v21, 8);
  }

  return v7;
}

void __71__SUScriptReportAProblemViewController_initWithAdamID_clientInterface___block_invoke(uint64_t a1)
{
  v2 = -[SUReportConcernViewController initWithItemIdentifier:]([SUReportConcernViewController alloc], "initWithItemIdentifier:", [*(a1 + 32) itemIdentifierValue]);
  [(SUViewController *)v2 setClientInterface:*(a1 + 40)];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 48) setNativeViewController:v2];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (id)newNativeViewController
{
  v3 = [[SUReportConcernViewController alloc] initWithItemIdentifier:0];
  [(SUViewController *)v3 setClientInterface:[(SUScriptObject *)self clientInterface]];
  return v3;
}

- (NSNumber)adamID
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__37;
  v8 = __Block_byref_object_dispose__37;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __46__SUScriptReportAProblemViewController_adamID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [objc_alloc(MEMORY[0x1E696AD98]) initWithItemIdentifier:{objc_msgSend(v2, "itemIdentifier")}];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (void)setAdamID:(id)d
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"adamID"];

  [v3 throwException:v4];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_49 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptReportAProblemViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptReportAProblemViewController;
  scriptAttributeKeys = [(SUScriptViewController *)&v4 scriptAttributeKeys];
  [scriptAttributeKeys addObjectsFromArray:{objc_msgSend(__KeyMapping_49, "allKeys")}];
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_49 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"adamID", 0}];
  }
}

@end