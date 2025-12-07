@interface _LSURLOverride
+ (id)booksStoreAuthorizationURL:(State *)l;
+ (id)fmfURL:(State *)l;
+ (id)fmipURL:(State *)l;
+ (id)iCloudEmailPrefsURL:(State *)l;
+ (id)iCloudFamilyURL:(State *)l;
+ (id)iCloudSchoolworkURL:(State *)l;
+ (id)iTunesStoreURL:(State *)l;
+ (id)keynoteLiveURL:(State *)l;
+ (id)keynoteLiveURL_noFragment:(State *)fragment;
+ (void)addOverrideBlock:(id)block;
+ (void)removeAllOverrideBlocks;
+ (void)resetPlatformFlag;
+ (void)setUseMacOverrides:(BOOL)overrides;
- (_LSURLOverride)initWithOriginalURL:(id)l checkingForAvailableApplications:(BOOL)applications;
@end

@implementation _LSURLOverride

- (_LSURLOverride)initWithOriginalURL:(id)l checkingForAvailableApplications:(BOOL)applications
{
  applicationsCopy = applications;
  v74 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v53.receiver = self;
  v53.super_class = _LSURLOverride;
  v8 = [(_LSURLOverride *)&v53 init];
  if (!v8)
  {
    goto LABEL_55;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:1];
  if (v9)
  {
    LaunchServices::URLOverrides::State::State(&v48, v9, applicationsCopy);
    v10 = _os_feature_enabled_impl();
    if (v10)
    {
      v12 = LaunchServices::URLOverrides::getLog(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [_LSURLOverride initWithOriginalURL:checkingForAvailableApplications:];
      }

LABEL_6:

      v13 = 0;
      goto LABEL_40;
    }

    if (LaunchServices::URLOverrides::overrideBlocks)
    {
      v10 = [__LSDefaultsGetSharedInstance(v10 v11)];
      if (v10)
      {
        v46 = applicationsCopy;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v16 = LaunchServices::URLOverrides::overrideBlocks;
        v17 = [v16 countByEnumeratingWithState:&v54 objects:buf count:16];
        if (!v17)
        {
          goto LABEL_20;
        }

        v18 = *v55;
LABEL_14:
        v19 = 0;
        while (1)
        {
          if (*v55 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v54 + 1) + 8 * v19);
          v21 = (*(v20 + 16))(v20, v48, v49, v50, v52);
          v13 = v21;
          if (v21)
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v16 countByEnumeratingWithState:&v54 objects:buf count:16];
            if (!v17)
            {
LABEL_20:

              applicationsCopy = v46;
              goto LABEL_21;
            }

            goto LABEL_14;
          }
        }

        v32 = LaunchServices::URLOverrides::getLog(v21);
        applicationsCopy = v46;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v44 = MEMORY[0x1865D71B0](v20);
          v45 = [v48 URL];
          *v65 = 138478339;
          *&v65[4] = v44;
          *&v65[12] = 2113;
          *&v65[14] = v45;
          *&v65[22] = 2113;
          v66 = v13;
          _os_log_debug_impl(&dword_18162D000, v32, OS_LOG_TYPE_DEBUG, "Block %{private}@ overrode URL %{private}@ to %{private}@", v65, 0x20u);
        }

LABEL_40:
        v34 = LaunchServices::URLOverrides::getLog(v33);
        v35 = v34;
        if (v13)
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138478083;
            v71 = v13;
            v72 = 2113;
            v73 = lCopy;
            _os_log_impl(&dword_18162D000, v35, OS_LOG_TYPE_DEFAULT, "URL %{private}@ overrides URL %{private}@", buf, 0x16u);
          }

          objc_storeStrong(&v8->_originalURL, l);
          v36 = [v13 copy];
          overrideURL = v8->_overrideURL;
          v8->_overrideURL = v36;

          if (!applicationsCopy)
          {
            goto LABEL_54;
          }

          v38 = +[LSApplicationWorkspace defaultWorkspace];
          v47 = 0;
          v39 = [v38 isApplicationAvailableToOpenURL:v13 error:&v47];
          v40 = v47;

          if (v39)
          {
LABEL_53:

LABEL_54:
LABEL_55:
            v8 = v8;
            v15 = v8;
            goto LABEL_56;
          }

          if (!v40)
          {
LABEL_52:
            v8 = 0;
            goto LABEL_53;
          }

          v35 = LaunchServices::URLOverrides::getLog(v41);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            [_LSURLOverride initWithOriginalURL:checkingForAvailableApplications:];
          }
        }

        else
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            [_LSURLOverride initWithOriginalURL:checkingForAvailableApplications:];
          }

          v40 = v8;
        }

        goto LABEL_52;
      }
    }

LABEL_21:
    if ((v49 & 1) == 0 && (v50 & 1) == 0 && (v51 & 1) == 0)
    {
      v12 = LaunchServices::URLOverrides::getLog(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v43 = [v48 URL];
        [(_LSURLOverride *)v43 initWithOriginalURL:v65 checkingForAvailableApplications:v12];
      }

      goto LABEL_6;
    }

    v22 = objc_opt_class();
    v23 = v22;
    *v65 = sel_fmfURL_;
    *&v65[8] = sel_fmipURL_;
    *&v65[16] = sel_iTunesStoreURL_;
    v66 = sel_iCloudEmailPrefsURL_;
    v67 = sel_keynoteLiveURL_;
    v68 = sel_iCloudFamilyURL_;
    v69 = sel_iCloudSchoolworkURL_;
    v64 = sel_booksStoreAuthorizationURL_;
    if (v49)
    {
      v24 = applicationsCopy;
LABEL_27:
      v25 = v65;
      v26 = 7;
      goto LABEL_28;
    }

    v24 = applicationsCopy;
    if (v50)
    {
      goto LABEL_27;
    }

    if (v51)
    {
      v25 = &v64;
    }

    else
    {
      v25 = 0;
    }

    if (v51)
    {
      v26 = 1;
LABEL_28:
      while (1)
      {
        v27 = *v25;
        v22 = [v23 *v25];
        v13 = v22;
        if (v22)
        {
          break;
        }

        ++v25;
        if (!--v26)
        {
          goto LABEL_30;
        }
      }

      v28 = LaunchServices::URLOverrides::getLog(v22);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v30 = NSStringFromSelector(v27);
        applicationsCopy = v24;
        v31 = [v48 URL];
        *v58 = 138478339;
        v59 = v30;
        v60 = 2113;
        v61 = v31;
        v62 = 2113;
        v63 = v13;
        _os_log_debug_impl(&dword_18162D000, v28, OS_LOG_TYPE_DEBUG, "Selector %{private}@ overrode URL %{private}@ to %{private}@", v58, 0x20u);

        goto LABEL_36;
      }
    }

    else
    {
LABEL_30:
      v28 = LaunchServices::URLOverrides::getLog(v22);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = [v48 URL];
        applicationsCopy = v24;
        [(_LSURLOverride *)v29 initWithOriginalURL:v58 checkingForAvailableApplications:v28];
        v13 = 0;
LABEL_36:

        goto LABEL_40;
      }

      v13 = 0;
    }

    applicationsCopy = v24;
    goto LABEL_36;
  }

  v14 = LaunchServices::URLOverrides::getLog(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v71 = lCopy;
    _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "URL %{private}@ could not be decomposed into its components. Cannot override.", buf, 0xCu);
  }

  v15 = 0;
LABEL_56:

  return v15;
}

+ (void)addOverrideBlock:(id)block
{
  blockCopy = block;
  v11 = blockCopy;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_LSURLOverride(Tests) addOverrideBlock:]"];
    [currentHandler handleFailureInFunction:v10 file:@"LSURLOverride.mm" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  if ([__LSDefaultsGetSharedInstance(blockCopy v4)])
  {
    v5 = LaunchServices::URLOverrides::overrideBlocks;
    if (!LaunchServices::URLOverrides::overrideBlocks)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = LaunchServices::URLOverrides::overrideBlocks;
      LaunchServices::URLOverrides::overrideBlocks = v6;

      v5 = LaunchServices::URLOverrides::overrideBlocks;
    }

    v8 = MEMORY[0x1865D71B0](v11);
    [v5 addObject:v8];
  }
}

+ (void)removeAllOverrideBlocks
{
  if ([__LSDefaultsGetSharedInstance(self a2)])
  {
    v2 = LaunchServices::URLOverrides::overrideBlocks;
    LaunchServices::URLOverrides::overrideBlocks = 0;
  }
}

+ (void)setUseMacOverrides:(BOOL)overrides
{
  overridesCopy = overrides;
  if ([__LSDefaultsGetSharedInstance(self a2)])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:overridesCopy];
    v5 = LaunchServices::URLOverrides::gUseMacOverrides;
    LaunchServices::URLOverrides::gUseMacOverrides = v4;
  }
}

+ (void)resetPlatformFlag
{
  if ([__LSDefaultsGetSharedInstance(self a2)])
  {
    v2 = LaunchServices::URLOverrides::gUseMacOverrides;
    LaunchServices::URLOverrides::gUseMacOverrides = 0;
  }
}

+ (id)fmfURL:(State *)l
{
  host = [l->var0 host];
  lowercaseString = [host lowercaseString];

  if ([lowercaseString isEqualToString:@"fmfmail.icloud.com"])
  {
    path = [l->var0 path];
    query = [l->var0 query];
    v8 = query;
    if (path && query)
    {
      v9 = [path mutableCopy];
      [v9 appendString:@"?"];
      [v9 appendString:v8];
      v10 = [v9 copy];

      path = v10;
    }

    if ([path hasPrefix:@"/"])
    {
      v11 = [l->var0 copy];
      [v11 setScheme:@"fmf1"];
      v12 = [v11 URL];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)fmipURL:(State *)l
{
  host = [l->var0 host];
  lowercaseString = [host lowercaseString];

  if ([lowercaseString isEqualToString:@"fmipmail.icloud.com"])
  {
    v6 = [l->var0 copy];
    [v6 setScheme:@"fmip1"];
    v7 = [v6 URL];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)iTunesStoreURL:(State *)l
{
  v75 = *MEMORY[0x1E69E9840];
  if (l->var6)
  {
    v3 = LaunchServices::URLOverrides::getLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      +[_LSURLOverride(Functions) iTunesStoreURL:];
    }

    v4 = 0;
    goto LABEL_65;
  }

  scheme = [l->var0 scheme];
  host = [l->var0 host];
  lowercaseString = [host lowercaseString];

  v56 = lowercaseString;
  path = [l->var0 path];
  query = [l->var0 query];
  v9 = query;
  v4 = 0;
  if (!scheme || !lowercaseString || !path)
  {
    goto LABEL_64;
  }

  v49 = query;
  if (query)
  {
    v10 = [path mutableCopy];
    [v10 appendString:@"?"];
    [v10 appendString:v9];
    v11 = [v10 copy];

    path = v11;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:@"/var/mobile/Library/Caches/com.apple.itunesstored/url-resolution.plist"];
  if (v12)
  {
    v13 = @"/var/mobile/Library/Caches/com.apple.itunesstored/url-resolution.plist";
  }

  else
  {
    v40 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MobileCoreServices"];
    v13 = [v40 pathForResource:@"iTunesStoreURLPatterns" ofType:@"plist"];

    if (!v13 || (v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v13]) == 0)
    {
      v4 = 0;
      goto LABEL_63;
    }
  }

  v47 = v13;
  [v12 objectForKey:@"p2-url-resolution"];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  obj = v67 = 0u;
  v46 = v12;
  v14 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (!v14)
  {
    v4 = 0;
    goto LABEL_62;
  }

  v45 = *v67;
  *&v15 = 138477827;
  v42 = v15;
  do
  {
    v16 = 0;
    v43 = v14;
    do
    {
      if (*v67 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v52 = *(*(&v66 + 1) + 8 * v16);
      v17 = [v52 objectForKey:{@"scheme-mapping", v42}];
      v48 = v16;
      v54 = [v17 objectForKey:scheme];

      if (l->var1)
      {
        v18 = objc_alloc_init(MEMORY[0x1E696AF20]);
        [v18 setScheme:v54];
        v19 = +[LSApplicationWorkspace defaultWorkspace];
        v20 = [v18 URL];
        v21 = [v19 isApplicationAvailableToOpenURL:v20 error:0];

        if (!v21)
        {
          v38 = LaunchServices::URLOverrides::getLog(v22);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            *buf = v42;
            v73 = v54;
            _os_log_debug_impl(&dword_18162D000, v38, OS_LOG_TYPE_DEBUG, "Skipping iTunes Store scheme %{private}@ because no app is installed to handle it", buf, 0xCu);
          }

          goto LABEL_53;
        }
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v18 = [v52 objectForKey:@"host-patterns"];
      v51 = v18;
      v23 = [v18 countByEnumeratingWithState:&v62 objects:v71 count:16];
      if (v23)
      {
        v24 = 0;
        v50 = *v63;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v63 != v50)
            {
              objc_enumerationMutation(v18);
            }

            v26 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:*(*(&v62 + 1) + 8 * i) options:1 error:0];
            v29 = [v26 rangeOfFirstMatchInString:v56 options:0 range:{0, objc_msgSend(v56, "length")}] != 0x7FFFFFFFFFFFFFFFLL || v27 != 0;
            v24 |= v29;
            if (v24)
            {
              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              v30 = [v52 objectForKey:@"path-patterns"];
              v44 = v24;
              v31 = [v30 countByEnumeratingWithState:&v58 objects:v70 count:16];
              if (v31)
              {
                v32 = *v59;
                while (2)
                {
                  for (j = 0; j != v31; ++j)
                  {
                    if (*v59 != v32)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v34 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:*(*(&v58 + 1) + 8 * j) options:1 error:0];
                    v37 = [v34 rangeOfFirstMatchInString:path options:0 range:{0, objc_msgSend(path, "length")}] == 0x7FFFFFFFFFFFFFFFLL && v35 == 0;

                    if (!v37)
                    {

                      v39 = [l->var0 copy];
                      [v39 setScheme:v54];
                      v4 = [v39 URL];

                      goto LABEL_62;
                    }
                  }

                  v31 = [v30 countByEnumeratingWithState:&v58 objects:v70 count:16];
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }
              }

              v24 = v44;
            }

            v18 = v51;
          }

          v23 = [v51 countByEnumeratingWithState:&v62 objects:v71 count:16];
        }

        while (v23);
      }

LABEL_53:

      v16 = v48 + 1;
    }

    while (v48 + 1 != v43);
    v14 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
    v4 = 0;
  }

  while (v14);
LABEL_62:

  v13 = v47;
LABEL_63:

  v9 = v49;
LABEL_64:

  v3 = scheme;
LABEL_65:

  return v4;
}

+ (id)iCloudEmailPrefsURL:(State *)l
{
  v48 = *MEMORY[0x1E69E9840];
  if (l->var3)
  {
    host = [l->var0 host];
    lowercaseString = [host lowercaseString];

    if ([lowercaseString isEqualToString:@"setup.icloud.com"])
    {
      query = [l->var0 query];
      if (query && (HasCaseInsensitivePrefix = LaunchServices::URLOverrides::State::pathHasCaseInsensitivePrefix(&l->var0, &cfstr_EmailPrefs.isa)))
      {
        var6 = l->var6;
        v8 = LaunchServices::URLOverrides::getLog(HasCaseInsensitivePrefix);
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
        if (var6)
        {
          if (v9)
          {
            +[_LSURLOverride(Functions) iCloudEmailPrefsURL:];
          }

          path = [l->var0 path];
          if ([(__CFString *)path hasPrefix:@"/"])
          {
            v11 = [(__CFString *)path substringWithRange:1, [(__CFString *)path length]- 1];

            path = v11;
          }

          v35 = path;
          if (path && [(__CFString *)path length])
          {
            v12 = objc_alloc_init(MEMORY[0x1E696AF20]);
            [v12 setScheme:@"x-apple.systempreferences"];
            if (LaunchServices::URLOverrides::State::pathHasCaseInsensitivePrefix(&l->var0, &cfstr_EmailPrefsFami.isa))
            {
              v13 = @"com.apple.preferences.FamilySharingPrefPane";
            }

            else
            {
              v13 = @"com.apple.preferences.AppleIDPrefPane";
            }

            [v12 setPath:v13];
            v14 = [(__CFString *)path mutableCopy];
            [v14 appendString:@"?"];
            [v14 appendString:query];
            [v12 setQuery:v14];
            v15 = [v12 URL];

LABEL_43:
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          if (v9)
          {
            +[_LSURLOverride(Functions) iCloudEmailPrefsURL:];
          }

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          queryItems = [l->var0 queryItems];
          v17 = [queryItems countByEnumeratingWithState:&v42 objects:v47 count:16];
          if (v17)
          {
            v18 = *v43;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v43 != v18)
                {
                  objc_enumerationMutation(queryItems);
                }

                name = [*(*(&v42 + 1) + 8 * i) name];
                v21 = [name isEqualToString:@"path"];

                if (v21)
                {

                  v40 = 0u;
                  v41 = 0u;
                  v38 = 0u;
                  v39 = 0u;
                  queryItems2 = [l->var0 queryItems];
                  v24 = [queryItems2 countByEnumeratingWithState:&v38 objects:v46 count:16];
                  if (v24)
                  {
                    v25 = *v39;
                    v35 = &stru_1EEF65710;
                    while (2)
                    {
                      for (j = 0; j != v24; ++j)
                      {
                        if (*v39 != v25)
                        {
                          objc_enumerationMutation(queryItems2);
                        }

                        v27 = *(*(&v38 + 1) + 8 * j);
                        name2 = [v27 name];
                        lowercaseString2 = [name2 lowercaseString];
                        v30 = [lowercaseString2 isEqual:@"path"];

                        if (v30)
                        {
                          v31 = MEMORY[0x1E696AEC0];
                          value = [v27 value];
                          v35 = [v31 stringWithFormat:@"ICLOUD_SERVICE/%@", value];

                          goto LABEL_42;
                        }
                      }

                      v24 = [queryItems2 countByEnumeratingWithState:&v38 objects:v46 count:16];
                      if (v24)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  else
                  {
                    v35 = &stru_1EEF65710;
                  }

LABEL_42:

                  v33 = objc_alloc(MEMORY[0x1E695DFF8]);
                  v12 = [@"settings-navigation://com.apple.Settings.AppleAccount/" stringByAppendingString:v35];
                  v15 = [v33 initWithString:v12];
                  goto LABEL_43;
                }
              }

              v17 = [queryItems countByEnumeratingWithState:&v42 objects:v47 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v22 = objc_alloc(MEMORY[0x1E695DFF8]);
          v36 = [@"settings-navigation://com.apple.Settings.AppleAccount?" stringByAppendingString:query];
          v15 = [v22 initWithString:?];
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)keynoteLiveURL:(State *)l
{
  if (LaunchServices::URLOverrides::State::isNooverride(&l->var0))
  {
    v5 = 0;
  }

  else
  {
    v5 = [self keynoteLiveURL_noFragment:l];
  }

  return v5;
}

+ (id)keynoteLiveURL_noFragment:(State *)fragment
{
  if (fragment->var3 && fragment->var5 && LaunchServices::URLOverrides::State::pathHasCaseInsensitivePrefix(&fragment->var0, &cfstr_KeynoteLive.isa))
  {
    v4 = [fragment->var0 copy];
    [v4 setScheme:@"com.apple.iwork.keynote-live"];
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    v6 = [v4 URL];
    v7 = [v5 isApplicationAvailableToOpenURL:v6 error:0];

    if (v7)
    {
      v8 = [v4 URL];
    }

    else
    {
      host = [fragment->var0 host];
      v11 = [host caseInsensitiveCompare:@"www.icloud.com"];

      if (v11)
      {
        v8 = 0;
      }

      else
      {
        path = [fragment->var0 path];
        lastPathComponent = [path lastPathComponent];

        v14 = objc_alloc_init(MEMORY[0x1E696AF20]);
        [v14 setScheme:@"x-keynote-live"];
        [v14 setHost:lastPathComponent];
        v8 = [v14 URL];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)iCloudFamilyURL:(State *)l
{
  if (l->var6)
  {
    v3 = LaunchServices::URLOverrides::getLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      +[_LSURLOverride(Functions) iCloudFamilyURL:];
    }

    v4 = 0;
  }

  else
  {
    host = [l->var0 host];
    lowercaseString = [host lowercaseString];

    if ([lowercaseString isEqual:@"setup.icloud.com"])
    {
      path = [l->var0 path];
      if ([path isEqual:@"/family/messages"])
      {
        v9 = [l->var0 copy];
        [v9 setScheme:@"family"];
        [v9 setHost:@"messages"];
        [v9 setPath:0];
        v4 = [v9 URL];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)iCloudSchoolworkURL:(State *)l
{
  if (l->var6)
  {
    v3 = LaunchServices::URLOverrides::getLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      +[_LSURLOverride(Functions) iCloudSchoolworkURL:];
    }

    goto LABEL_15;
  }

  if (!l->var5)
  {
    v3 = LaunchServices::URLOverrides::getLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      +[_LSURLOverride(Functions) iCloudSchoolworkURL:];
    }

    goto LABEL_15;
  }

  fragment = [l->var0 fragment];
  pathComponents = [fragment pathComponents];
  v3 = [pathComponents mutableCopy];

  if (!v3 || (v7 = [v3 count], v7 <= 1))
  {
    v8 = LaunchServices::URLOverrides::getLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[_LSURLOverride(Functions) iCloudSchoolworkURL:];
    }

LABEL_14:

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v9 = [v3 objectAtIndexedSubscript:0];
  v10 = [v9 caseInsensitiveCompare:@"schoolwork"];

  if (v10)
  {
    v8 = LaunchServices::URLOverrides::getLog(v11);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[_LSURLOverride(Functions) iCloudSchoolworkURL:];
    }

    goto LABEL_14;
  }

  v14 = [l->var0 copy];
  [v14 setScheme:@"schoolwork"];
  [v14 setHost:@"schoolwork"];
  [v3 replaceObjectAtIndex:0 withObject:&stru_1EEF65710];
  v15 = [v3 componentsJoinedByString:@"/"];
  [v14 setPath:v15];

  [v14 setFragment:0];
  v12 = [v14 URL];

LABEL_16:

  return v12;
}

+ (id)booksStoreAuthorizationURL:(State *)l
{
  if (l->var6)
  {
    if (l->var4)
    {
      host = [l->var0 host];
      v5 = [host isEqual:@"www.audible.com"];

      if (v5)
      {
        v6 = [l->var0 copy];
        [v6 setScheme:@"ibooks"];
        v7 = [v6 URL];

        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = LaunchServices::URLOverrides::getLog(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[_LSURLOverride(Functions) booksStoreAuthorizationURL:];
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)initWithOriginalURL:(os_log_t)log checkingForAvailableApplications:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138477827;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "URL %{private}@ was not an HTTP(S) or ITMS URL. Skipping URL overrides.", buf, 0xCu);
}

- (void)initWithOriginalURL:(os_log_t)log checkingForAvailableApplications:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138477827;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Nothing overrode URL %{private}@", buf, 0xCu);
}

- (void)initWithOriginalURL:checkingForAvailableApplications:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithOriginalURL:checkingForAvailableApplications:.cold.4()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEBUG, "Error determining if app is available to open URL %{private}@: %{public}@", v1, 0x16u);
}

- (void)initWithOriginalURL:checkingForAvailableApplications:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end