@interface NSURL(ATX)
- (id)schemelessAbsoluteString;
- (uint64_t)atx_isOpenableFaceTimeURL;
- (void)atx_isOpenableFaceTimeURL;
@end

@implementation NSURL(ATX)

- (uint64_t)atx_isOpenableFaceTimeURL
{
  host = [self host];
  v2 = [host isEqualToString:@"facetime.apple.com"];

  if (v2)
  {
    v12 = 0;
    v3 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.facetime" allowPlaceholder:1 error:&v12];
    v4 = v12;
    v5 = v4;
    if (v3)
    {
      applicationState = [v3 applicationState];
      isInstalled = [applicationState isInstalled];
      if (isInstalled)
      {
        isInstalled = [applicationState isRestricted];
        if ((isInstalled & 1) == 0)
        {
          isInstalled = [MEMORY[0x277D42590] isFaceTimeSupported];
          if (isInstalled)
          {
            v8 = 1;
LABEL_14:

            return v8;
          }
        }
      }

      v9 = __atxlog_handle_default(isInstalled);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_226368000, v9, OS_LOG_TYPE_DEFAULT, "isOpenableFaceTimeURL: not allowed", v11, 2u);
      }
    }

    else
    {
      applicationState = __atxlog_handle_default(v4);
      if (os_log_type_enabled(applicationState, OS_LOG_TYPE_ERROR))
      {
        [(NSURL(ATX) *)v5 atx_isOpenableFaceTimeURL];
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  return 0;
}

- (id)schemelessAbsoluteString
{
  resourceSpecifier = [self resourceSpecifier];
  if ([resourceSpecifier hasPrefix:@"//"])
  {
    v2 = [resourceSpecifier substringFromIndex:{objc_msgSend(@"//", "length")}];

    resourceSpecifier = v2;
  }

  return resourceSpecifier;
}

- (void)atx_isOpenableFaceTimeURL
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "isOpenableFaceTimeURL: could not obtain record: %@", &v2, 0xCu);
}

@end