@interface NSURLProtectionSpace(SafariServicesExtras)
- (BOOL)_sf_canAuthenticate;
- (id)_sf_highLevelDomainAndPort;
- (id)_sf_identities;
- (void)_sf_canAuthenticate;
@end

@implementation NSURLProtectionSpace(SafariServicesExtras)

- (id)_sf_highLevelDomainAndPort
{
  host = [self host];
  v3 = MEMORY[0x1E696AEC0];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
  v5 = safari_highLevelDomainFromHost;
  if (safari_highLevelDomainFromHost)
  {
    v6 = safari_highLevelDomainFromHost;
  }

  else
  {
    v6 = host;
  }

  v7 = [v3 stringWithFormat:@"%@:%ld", v6, objc_msgSend(self, "port")];

  return v7;
}

- (id)_sf_identities
{
  v32 = *MEMORY[0x1E69E9840];
  if (self)
  {
    result = 0;
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v2 setValue:*MEMORY[0x1E697B010] forKey:*MEMORY[0x1E697AFF8]];
    [v2 setValue:*MEMORY[0x1E697B268] forKey:*MEMORY[0x1E697B260]];
    [v2 setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697B328]];
    [v2 setValue:@"com.apple.identities" forKey:*MEMORY[0x1E697ABD0]];
    if (SecItemCopyMatching(v2, &result))
    {
      v3 = 0;
    }

    else
    {
      v4 = result;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        distinguishedNames = [self distinguishedNames];
        v7 = WBS_LOG_CHANNEL_PREFIXClientAuthentication(distinguishedNames, v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
          v9 = [v4 count];
          v10 = [distinguishedNames count];
          *buf = 134218240;
          *&buf[4] = v9;
          *&buf[12] = 2048;
          *&buf[14] = v10;
          _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_DEFAULT, "Unfiltered identities count: %lu, distinguished names count: %lu", buf, 0x16u);
        }

        if (distinguishedNames)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v31 = 0;
          Current = CFAbsoluteTimeGetCurrent();
          v18 = MEMORY[0x1E69E9820];
          v19 = 3221225472;
          v20 = __60__NSURLProtectionSpace_SafariServicesExtras___sf_identities__block_invoke;
          v21 = &unk_1E8496438;
          v24 = Current;
          v22 = distinguishedNames;
          v23 = buf;
          v12 = [v4 safari_filterObjectsUsingBlock:&v18];
          v14 = WBS_LOG_CHANNEL_PREFIXClientAuthentication(v12, v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v12 count];
            v16 = *(*&buf[8] + 24);
            *v26 = 134218240;
            v27 = v15;
            v28 = 2048;
            v29 = v16;
            _os_log_impl(&dword_1D4644000, v14, OS_LOG_TYPE_DEFAULT, "Filtered identities count: %lu, expired count: %lu", v26, 0x16u);
          }

          if ([v12 count])
          {
            v3 = v12;
          }

          else
          {
            v3 = 0;
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v3 = v4;
        }
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_sf_canAuthenticate
{
  authenticationMethod = [self authenticationMethod];
  if ([authenticationMethod isEqualToString:*MEMORY[0x1E695AB48]] & 1) != 0 || (objc_msgSend(authenticationMethod, "isEqualToString:", *MEMORY[0x1E695AB58]) & 1) != 0 || (objc_msgSend(authenticationMethod, "isEqualToString:", *MEMORY[0x1E695AB60]) & 1) != 0 || (objc_msgSend(authenticationMethod, "isEqualToString:", *MEMORY[0x1E695AB50]) & 1) != 0 || (objc_msgSend(authenticationMethod, "isEqualToString:", *MEMORY[0x1E695AB68]))
  {
    v3 = 1;
  }

  else if ([authenticationMethod isEqualToString:*MEMORY[0x1E695AB40]])
  {
    _sf_identities = [self _sf_identities];
    v3 = [_sf_identities count] != 0;
  }

  else
  {
    v6 = [authenticationMethod isEqualToString:*MEMORY[0x1E695AB78]];
    if ((v6 & 1) == 0)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXPageLoading(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(NSURLProtectionSpace(SafariServicesExtras) *)authenticationMethod _sf_canAuthenticate];
      }
    }

    v3 = 0;
  }

  return v3;
}

- (void)_sf_canAuthenticate
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Tried to authenticate with unsupported authentication method: %@", &v2, 0xCu);
}

@end