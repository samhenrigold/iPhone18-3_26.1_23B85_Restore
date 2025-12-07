@interface LoadingController
- (LoadingControllerDelegate)delegate;
- (NSString)title;
- (NSString)titleForStatePersisting;
- (NSURL)URL;
- (NSURL)URLForStatePersisting;
- (id)loadRequest:(id)request userDriven:(BOOL)driven shouldOpenExternalURLs:(BOOL)ls eventAttribution:(id)attribution;
- (void)goBack;
- (void)goForward;
- (void)reloadFromOrigin:(BOOL)origin;
- (void)setTitle:(id)title;
- (void)setURL:(id)l;
@end

@implementation LoadingController

- (NSString)title
{
  webView = self->_webView;
  if (webView)
  {
    title = [(WKWebView *)self->_webView title];
  }

  else
  {
    title = self->_title;
  }

  safari_lockRelatedEmojiCharacterSet = [MEMORY[0x277CCA900] safari_lockRelatedEmojiCharacterSet];
  v5 = [title safari_stringByRemovingCharactersInSet:safari_lockRelatedEmojiCharacterSet];

  if (webView)
  {
  }

  return v5;
}

- (NSURL)URL
{
  v3 = [(WKWebView *)self->_webView URL];
  URL = v3;
  if (!v3)
  {
    URL = self->_URL;
  }

  v5 = URL;

  return URL;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_title != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      title = self->_title;
      self->_title = v7;

      v5 = v9;
    }
  }
}

- (void)setURL:(id)l
{
  lCopy = l;
  URL = self->_URL;
  p_URL = &self->_URL;
  if (URL != lCopy)
  {
    v8 = lCopy;
    objc_storeStrong(p_URL, l);
    lCopy = v8;
  }
}

- (NSURL)URLForStatePersisting
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(LoadingController *)self URL];
  URL = v3;
  if (!v3)
  {
    URL = self->_URL;
  }

  v5 = URL;

  if ([(NSURL *)v5 safari_isSafariWebExtensionURL])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = +[Application sharedApplication];
    allWebExtensionsControllers = [v6 allWebExtensionsControllers];

    v8 = [allWebExtensionsControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(allWebExtensionsControllers);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) _persistentStateURLForExtensionURL:v5];
          if (v12)
          {
            v13 = v12;

            goto LABEL_15;
          }
        }

        v9 = [allWebExtensionsControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = v5;
LABEL_15:

  return v13;
}

- (NSString)titleForStatePersisting
{
  title = [(LoadingController *)self title];
  title = title;
  if (!title)
  {
    title = self->_title;
  }

  v5 = title;

  return title;
}

- (id)loadRequest:(id)request userDriven:(BOOL)driven shouldOpenExternalURLs:(BOOL)ls eventAttribution:(id)attribution
{
  lsCopy = ls;
  drivenCopy = driven;
  requestCopy = request;
  attributionCopy = attribution;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = WeakRetained;
  if (!self->_webView)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXPageLoading(WeakRetained, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [LoadingController loadRequest:v14 userDriven:v15 shouldOpenExternalURLs:? eventAttribution:?];
    }
  }

  v16 = [requestCopy safari_requestBySettingIsUserInitiated:1];

  [v14 loadingController:self willLoadRequest:v16 webView:self->_webView userDriven:drivenCopy];
  if (objc_opt_respondsToSelector())
  {
    [(WKWebView *)self->_webView _setUIEventAttribution:attributionCopy];
  }

  v17 = [v16 URL];
  if ([v17 sf_isOfflineReadingListURL])
  {
    webView = self->_webView;
    v19 = MEMORY[0x277CBEBC0];
    readingListArchivesDirectoryPath = [MEMORY[0x277D7B5A8] readingListArchivesDirectoryPath];
    v21 = [v19 fileURLWithPath:readingListArchivesDirectoryPath isDirectory:1];
    v22 = [(WKWebView *)webView loadFileURL:v17 allowingReadAccessToURL:v21];

    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [safari_browserDefaults setBool:1 forKey:*MEMORY[0x277D29268]];
  }

  else
  {
    sf_isTestWebArchiveURL = [v17 sf_isTestWebArchiveURL];
    v25 = self->_webView;
    if (sf_isTestWebArchiveURL)
    {
      v26 = [(WKWebView *)v25 loadFileURL:v17 allowingReadAccessToURL:v17];
    }

    else
    {
      if (lsCopy)
      {
        [(WKWebView *)v25 _loadRequest:v16 shouldOpenExternalURLs:1];
      }

      else
      {
        [(WKWebView *)v25 loadRequest:v16];
      }
      v26 = ;
    }

    v22 = v26;
  }

  return v22;
}

- (void)goBack
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained loadingControllerWillStartUserDrivenLoad:self];

  goBack = [(WKWebView *)self->_webView goBack];
}

- (void)goForward
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained loadingControllerWillStartUserDrivenLoad:self];

  goForward = [(WKWebView *)self->_webView goForward];
}

- (void)reloadFromOrigin:(BOOL)origin
{
  originCopy = origin;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained loadingControllerWillStartUserDrivenLoad:self];

  webView = self->_webView;
  if (originCopy)
  {
    reloadFromOrigin = [(WKWebView *)webView reloadFromOrigin];
  }

  else
  {
    reload = [(WKWebView *)webView reload];
  }
}

- (LoadingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)loadRequest:(uint64_t)a1 userDriven:(NSObject *)a2 shouldOpenExternalURLs:eventAttribution:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_215819000, a2, OS_LOG_TYPE_FAULT, "LoadingController with delegate %p is being asked to load a request but does not have a web view", &v2, 0xCu);
}

@end