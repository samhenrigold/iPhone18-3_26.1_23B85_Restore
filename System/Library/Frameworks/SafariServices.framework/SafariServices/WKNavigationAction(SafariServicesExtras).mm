@interface WKNavigationAction(SafariServicesExtras)
- (uint64_t)_sf_allowsExternalRedirectWithoutPrompting;
- (uint64_t)_sf_shouldAskAboutInsecureFormSubmission;
- (uint64_t)_sf_shouldPerformDownload;
- (void)_sf_setAllowsExternalRedirectWithoutPrompting:()SafariServicesExtras;
@end

@implementation WKNavigationAction(SafariServicesExtras)

- (uint64_t)_sf_shouldAskAboutInsecureFormSubmission
{
  if ([self navigationType] != 1)
  {
    return 0;
  }

  if ([self _isRedirect])
  {
    request = [self request];
    hTTPMethod = [request HTTPMethod];
    v4 = [hTTPMethod isEqualToString:@"GET"];

    if (v4)
    {
      return 0;
    }
  }

  request2 = [self request];
  v6 = [request2 URL];
  v7 = [v6 safari_hasScheme:@"http"];

  if (!v7)
  {
    return 0;
  }

  sourceFrame = [self sourceFrame];
  request3 = [sourceFrame request];
  v10 = [request3 URL];
  v11 = [v10 safari_hasScheme:@"https"];

  return v11;
}

- (uint64_t)_sf_shouldPerformDownload
{
  v19 = *MEMORY[0x1E69E9840];
  if ([self _shouldPerformDownload])
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    targetFrame = [self targetFrame];
    request = [self request];
    v5 = [request URL];

    if (targetFrame && ([targetFrame isMainFrame] & 1) == 0 && (objc_msgSend(self, "sourceFrame"), v6 = objc_claimAutoreleasedReturnValue(), v6, targetFrame == v6))
    {
      v12 = WBS_LOG_CHANNEL_PREFIXDownloads(v7, v8);
      v15 = 1;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v17 = 138739971;
        v18 = v5;
        v14 = "Downloading download-attributed same-frame subframe link to %{sensitive}@";
        goto LABEL_15;
      }
    }

    else
    {
      v9 = [safari_browserDefaults BOOLForKey:*MEMORY[0x1E69B1EA8]];
      v10 = v9;
      v12 = WBS_LOG_CHANNEL_PREFIXDownloads(v9, v11);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (!v10)
      {
        if (v13)
        {
          v17 = 138739971;
          v18 = v5;
          _os_log_impl(&dword_1D4644000, v12, OS_LOG_TYPE_INFO, "Allowing provisional navigation with download attribute to %{sensitive}@", &v17, 0xCu);
        }

        v15 = 0;
        goto LABEL_16;
      }

      if (v13)
      {
        v17 = 138739971;
        v18 = v5;
        v14 = "Using download attribute for main frame navigation to %{sensitive}@";
        v15 = 1;
LABEL_15:
        _os_log_impl(&dword_1D4644000, v12, OS_LOG_TYPE_INFO, v14, &v17, 0xCu);
        goto LABEL_16;
      }

      v15 = 1;
    }

LABEL_16:

    return v15;
  }

  return 0;
}

- (uint64_t)_sf_allowsExternalRedirectWithoutPrompting
{
  v1 = objc_getAssociatedObject(self, allowsExternalRedirectWithoutPromptingKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)_sf_setAllowsExternalRedirectWithoutPrompting:()SafariServicesExtras
{
  v2 = allowsExternalRedirectWithoutPromptingKey;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, v2, v3, 1);
}

@end