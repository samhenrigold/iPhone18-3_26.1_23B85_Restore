@interface NSURLResponse(MobileSafariFrameworkExtras)
- (BOOL)_sf_hasAttachmentWithFilename;
- (uint64_t)_sf_allowedToOverrideContentDispositionAttachment;
- (uint64_t)sf_hasXMLAttachment;
- (uint64_t)sf_shouldDownloadDueToContentDisposition:()MobileSafariFrameworkExtras;
@end

@implementation NSURLResponse(MobileSafariFrameworkExtras)

- (uint64_t)sf_hasXMLAttachment
{
  if (![self safari_hasAttachment])
  {
    return 0;
  }

  mIMEType = [self MIMEType];
  if ([mIMEType safari_isCaseInsensitiveEqualToString:@"application/xml"] & 1) != 0 || (objc_msgSend(mIMEType, "safari_isCaseInsensitiveEqualToString:", @"text/xml"))
  {
    v3 = 1;
  }

  else
  {
    suggestedFilename = [self suggestedFilename];
    safari_lastPathComponentWithoutZipExtension = [suggestedFilename safari_lastPathComponentWithoutZipExtension];

    pathExtension = [safari_lastPathComponentWithoutZipExtension pathExtension];
    v3 = [pathExtension safari_isCaseInsensitiveEqualToString:@"xml"];
  }

  return v3;
}

- (uint64_t)sf_shouldDownloadDueToContentDisposition:()MobileSafariFrameworkExtras
{
  v28 = *MEMORY[0x1E69E9840];
  if (([self sf_hasXMLAttachment] & 1) == 0)
  {
    if (![self safari_hasAttachment])
    {
      return 0;
    }

    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v7 = safari_browserDefaults;
    if ((a3 & 1) != 0 || (v8 = [safari_browserDefaults BOOLForKey:@"DebugEnableDownloadsInSubframes"], !v8))
    {
      v15 = [v7 BOOLForKey:@"DebugContentDispositionHeaderStartsDownloads"];
      v16 = v15;
      v18 = WBS_LOG_CHANNEL_PREFIXDownloads(v15, v17);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (!v16)
      {
        if (v19)
        {
          v20 = v18;
          v21 = [self URL];
          mIMEType = [self MIMEType];
          v24 = 138740227;
          v25 = v21;
          v26 = 2117;
          v27 = mIMEType;
          _os_log_impl(&dword_18B7AC000, v20, OS_LOG_TYPE_INFO, "Ignoring Content-Disposition header for %{sensitive}@, MIME Type: %{sensitive}@", &v24, 0x16u);
        }

        v5 = 0;
        goto LABEL_17;
      }

      if (!v19)
      {
        v5 = 1;
        goto LABEL_17;
      }

      v11 = v18;
      v12 = [self URL];
      mIMEType2 = [self MIMEType];
      v24 = 138740227;
      v25 = v12;
      v26 = 2117;
      v27 = mIMEType2;
      v14 = "Starting download due to Content-Disposition header for %{sensitive}@, MIME Type: %{sensitive}@";
      v5 = 1;
    }

    else
    {
      v10 = WBS_LOG_CHANNEL_PREFIXDownloads(v8, v9);
      v5 = 1;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
LABEL_17:

        return v5;
      }

      v11 = v10;
      v12 = [self URL];
      mIMEType2 = [self MIMEType];
      v24 = 138740227;
      v25 = v12;
      v26 = 2117;
      v27 = mIMEType2;
      v14 = "Starting download due to Content-Disposition header in subframe for %{sensitive}@, MIME Type: %{sensitive}@";
    }

    _os_log_impl(&dword_18B7AC000, v11, OS_LOG_TYPE_INFO, v14, &v24, 0x16u);

    goto LABEL_17;
  }

  return 1;
}

- (uint64_t)_sf_allowedToOverrideContentDispositionAttachment
{
  mIMEType = [self MIMEType];
  if ([mIMEType isEqualToString:@"application/x-webarchive"])
  {
    goto LABEL_2;
  }

  safari_stringByTrimmingWhitespace = [mIMEType safari_stringByTrimmingWhitespace];
  v5 = [safari_stringByTrimmingWhitespace rangeOfString:@"/"];
  if (!v5 || (v6 = v5, v5 == 0x7FFFFFFFFFFFFFFFLL) || v5 == [safari_stringByTrimmingWhitespace length] - 1)
  {
LABEL_6:

    v3 = [self sf_hasXMLAttachment] ^ 1;
    goto LABEL_7;
  }

  v8 = [safari_stringByTrimmingWhitespace substringToIndex:v6];
  v9 = [safari_stringByTrimmingWhitespace substringFromIndex:v6 + 1];

  v10 = [v9 rangeOfString:@";"];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v9 substringToIndex:v10];

    v9 = v11;
  }

  safari_stringByTrimmingWhitespace = v9;
  if ((![v8 safari_isCaseInsensitiveEqualToString:@"text"] || (objc_msgSend(safari_stringByTrimmingWhitespace, "safari_isCaseInsensitiveEqualToString:", @"html") & 1) == 0) && (objc_msgSend(safari_stringByTrimmingWhitespace, "safari_hasCaseInsensitiveSuffix:", @"+xml") & 1) == 0 && (!objc_msgSend(safari_stringByTrimmingWhitespace, "safari_isCaseInsensitiveEqualToString:", @"xml") || (objc_msgSend(v8, "safari_isCaseInsensitiveEqualToString:", @"application") & 1) == 0 && !objc_msgSend(v8, "safari_isCaseInsensitiveEqualToString:", @"text")))
  {

    goto LABEL_6;
  }

LABEL_2:
  v3 = 0;
LABEL_7:

  return v3;
}

- (BOOL)_sf_hasAttachmentWithFilename
{
  v24 = *MEMORY[0x1E69E9840];
  if (![self safari_hasAttachment])
  {
    return 0;
  }

  allHeaderFields = [self allHeaderFields];
  v3 = [allHeaderFields safari_stringForKey:@"Content-Disposition"];

  if (v3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [v3 componentsSeparatedByString:@""];;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [v9 rangeOfString:@"="];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v11 = v10;
            v12 = [v9 substringToIndex:v10];
            safari_stringByTrimmingWhitespace = [v12 safari_stringByTrimmingWhitespace];

            if ([safari_stringByTrimmingWhitespace safari_isCaseInsensitiveEqualToString:@"filename"])
            {
              v15 = [v9 substringFromIndex:v11 + 1];
              safari_stringByTrimmingWhitespace2 = [v15 safari_stringByTrimmingWhitespace];

              LODWORD(v15) = [safari_stringByTrimmingWhitespace2 hasPrefix:@""];
              v17 = [safari_stringByTrimmingWhitespace2 length];
              if (v15)
              {
                v14 = v17 > 2;
              }

              else
              {
                v14 = v17 != 0;
              }

              goto LABEL_21;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      v14 = 0;
    }

    else
    {
      v14 = 0;
    }

LABEL_21:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end