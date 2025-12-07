@interface _SFDownloadCurrentPageActivity
- (_SFDownloadCurrentPageActivity)initWithWebView:(id)view;
@end

@implementation _SFDownloadCurrentPageActivity

- (_SFDownloadCurrentPageActivity)initWithWebView:(id)view
{
  viewCopy = view;
  v6 = *MEMORY[0x1E69CDB00];
  v18 = 0;
  v7 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v6 error:&v18];
  v8 = v18;
  v10 = v8;
  if (!v7)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXDownloads(v8, v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(_SFDownloadCurrentPageActivity *)v15 initWithWebView:v10];
    }

    goto LABEL_6;
  }

  _plugIn = [v7 _plugIn];
  userElection = [_plugIn userElection];

  if (userElection == 2)
  {
LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  v17.receiver = self;
  v17.super_class = _SFDownloadCurrentPageActivity;
  v13 = [(UIApplicationExtensionActivity *)&v17 initWithApplicationExtension:v7];
  objc_storeStrong(&v13->_webView, view);
  self = v13;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (void)initWithWebView:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Failed to find 'Save to Files' extension: %{public}@", &v5, 0xCu);
}

@end