@interface WKNavigationResponse(SafariServicesExtras)
- (id)_sf_explicitSuggestedFilename;
- (id)_sf_suggestedFilename;
- (uint64_t)_sf_allowReloadingInMainFrame;
- (uint64_t)_sf_responsePolicy:()SafariServicesExtras uti:;
@end

@implementation WKNavigationResponse(SafariServicesExtras)

- (id)_sf_suggestedFilename
{
  _sf_explicitSuggestedFilename = [self _sf_explicitSuggestedFilename];
  v3 = _sf_explicitSuggestedFilename;
  if (_sf_explicitSuggestedFilename)
  {
    safari_filenameByFixingIllegalCharacters = _sf_explicitSuggestedFilename;
  }

  else
  {
    response = [self response];
    suggestedFilename = [response suggestedFilename];
    safari_filenameByFixingIllegalCharacters = [suggestedFilename safari_filenameByFixingIllegalCharacters];
  }

  return safari_filenameByFixingIllegalCharacters;
}

- (id)_sf_explicitSuggestedFilename
{
  response = [self response];
  if ([response _sf_hasAttachmentWithFilename])
  {
    suggestedFilename = [response suggestedFilename];
LABEL_4:
    safari_filenameByFixingIllegalCharacters = [suggestedFilename safari_filenameByFixingIllegalCharacters];
    goto LABEL_5;
  }

  suggestedFilename = [self _downloadAttribute];
  if ([suggestedFilename length])
  {
    goto LABEL_4;
  }

  safari_filenameByFixingIllegalCharacters = 0;
LABEL_5:

  return safari_filenameByFixingIllegalCharacters;
}

- (uint64_t)_sf_allowReloadingInMainFrame
{
  response = [self response];
  v3 = [response URL];
  safari_isDataURL = [v3 safari_isDataURL];

  if (!safari_isDataURL)
  {
    _request = [self _request];
    hTTPMethod = [_request HTTPMethod];
    v11 = [hTTPMethod safari_isCaseInsensitiveEqualToString:@"GET"];

    if (v11)
    {
      response2 = [self response];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        allHeaderFields = [response2 allHeaderFields];
        v16 = [allHeaderFields safari_stringForKey:@"Accept-Ranges"];
        v17 = [v16 safari_isCaseInsensitiveEqualToString:@"bytes"];

        if (v17)
        {
          v20 = WBS_LOG_CHANNEL_PREFIXDownloads(v18, v19);
          v8 = 1;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *v26 = 0;
          }

          goto LABEL_16;
        }
      }

      else
      {
      }

      v21 = WBS_LOG_CHANNEL_PREFIXDownloads(v18, v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v25 = 0;
        v22 = "Assuming reload-in-main-frame is not supported";
        v23 = &v25;
        goto LABEL_14;
      }
    }

    else
    {
      v21 = WBS_LOG_CHANNEL_PREFIXDownloads(v12, v13);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v27 = 0;
        v22 = "Not allowing reload-in-main-frame because the request was not a GET request";
        v23 = &v27;
LABEL_14:
        _os_log_impl(&dword_1D4644000, v21, OS_LOG_TYPE_INFO, v22, v23, 2u);
      }
    }

    v8 = 0;
LABEL_16:

    return v8;
  }

  v7 = WBS_LOG_CHANNEL_PREFIXDownloads(v5, v6);
  v8 = 1;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_INFO, "Allowing reload-in-main-frame for a data: URL", buf, 2u);
  }

  return v8;
}

- (uint64_t)_sf_responsePolicy:()SafariServicesExtras uti:
{
  *a3 = 0;
  response = [self response];
  mIMEType = [response MIMEType];
  v9 = typeIdentifierForDownloadFromResponse(response);
  *a4 = v9;
  v10 = _SFDownloadingFileTypeFromUTIAndMIMEType(v9, mIMEType);
  *a3 = v10;
  v11 = *a4;
  v12 = mIMEType;
  v13 = v12;
  v14 = 0;
  if ((v10 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    if ([v12 isEqualToString:@"application/pdf"] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"text/pdf"))
    {
      v14 = 1;
    }

    else
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v15 = getQLPreviewGetSupportedMIMETypesSymbolLoc_ptr;
      v31 = getQLPreviewGetSupportedMIMETypesSymbolLoc_ptr;
      if (!getQLPreviewGetSupportedMIMETypesSymbolLoc_ptr)
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __getQLPreviewGetSupportedMIMETypesSymbolLoc_block_invoke;
        v27[3] = &unk_1E848F710;
        v27[4] = &v28;
        __getQLPreviewGetSupportedMIMETypesSymbolLoc_block_invoke(v27);
        v15 = v29[3];
      }

      _Block_object_dispose(&v28, 8);
      if (!v15)
      {
        [SFDefaultBrowserListView productDetailsUserDidInteractWithApp:interactionType:];
        v26 = v25;
        _Block_object_dispose(&v28, 8);
        _Unwind_Resume(v26);
      }

      v16 = v15();
      v17 = [v16 containsObject:v13];

      if (v17)
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }
    }
  }

  isForMainFrame = [self isForMainFrame];
  if ([response sf_shouldDownloadDueToContentDisposition:isForMainFrame])
  {
    v19 = 1;
  }

  else
  {
    _downloadAttribute = [self _downloadAttribute];
    v19 = _downloadAttribute != 0;
  }

  if (v14 == 1)
  {
    v21 = v19 & (isForMainFrame ^ 1);
    goto LABEL_37;
  }

  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v23 = [safari_browserDefaults BOOLForKey:*MEMORY[0x1E69B1EB8]];

  if (!v14)
  {
    goto LABEL_36;
  }

  if (v14 != 2)
  {
    if (!(v19 | (([self canShowMIMEType] & 1) == 0)))
    {
      v21 = 0;
      goto LABEL_37;
    }

    if ([self canShowMIMEType] && (objc_msgSend(response, "_sf_allowedToOverrideContentDispositionAttachment") & v23) == 1)
    {
      if (isForMainFrame)
      {
        goto LABEL_28;
      }

      if ([self _sf_allowReloadingInMainFrame])
      {
        v21 = 4;
        goto LABEL_37;
      }
    }

LABEL_36:
    v21 = 1;
    goto LABEL_37;
  }

  if ((v23 & 1) == 0)
  {
    v21 = v19;
    goto LABEL_37;
  }

  if (isForMainFrame & 1 | !v19)
  {
    if ((isForMainFrame & 1) == 0)
    {
      if (_os_feature_enabled_impl())
      {
        v21 = 3;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_37;
    }

LABEL_28:
    v21 = 3;
    goto LABEL_37;
  }

  if ([self _sf_allowReloadingInMainFrame])
  {
    v21 = 4;
  }

  else
  {
    v21 = 1;
  }

LABEL_37:

  return v21;
}

@end