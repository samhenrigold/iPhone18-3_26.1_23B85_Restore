@interface BKFontCache
+ (id)sharedInstance;
- (BKFontCache)init;
- (id)_presetsFileNameForLanguage:(id)language;
- (id)_presetsForFileName:(id)name;
- (id)defaultFontNameForLanguage:(id)language;
- (id)fontFromFamilyName:(id)name language:(id)language;
- (id)fontsForLanguage:(id)language completion:(id)completion;
- (id)presetPostscriptsLookupForLanguage:(id)language;
- (id)presetSettingsForFontFamily:(id)family language:(id)language;
- (id)presetsForLanguage:(id)language;
- (void)_didReceiveMemoryWarning:(id)warning;
@end

@implementation BKFontCache

+ (id)sharedInstance
{
  if (qword_22CFC8 != -1)
  {
    sub_136AC0();
  }

  v3 = qword_22CFC0;

  return v3;
}

- (BKFontCache)init
{
  v11.receiver = self;
  v11.super_class = BKFontCache;
  v2 = [(BKFontCache *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(BKFontCache *)v2 setFontsByFileName:v3];

    v4 = objc_opt_new();
    [(BKFontCache *)v2 setFontLookupByFileName:v4];

    v5 = objc_opt_new();
    [(BKFontCache *)v2 setPresetsByFileName:v5];

    v6 = objc_opt_new();
    [(BKFontCache *)v2 setFontFaceLookupByFileName:v6];

    v7 = objc_opt_new();
    [(BKFontCache *)v2 setFileNames:v7];

    v8 = +[NSUserDefaults standardUserDefaults];
    -[BKFontCache setDisableAutoFontDownload:](v2, "setDisableAutoFontDownload:", [v8 BOOLForKey:@"REI.DisableAutoFontDownload"]);

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_didReceiveMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];
  }

  return v2;
}

- (id)fontsForLanguage:(id)language completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  v6 = _AEBookPluginsFontCacheLog(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = languageCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Prewarming AEBookPlugin for language %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([languageCopy length])
  {
    v46 = [(BKFontCache *)selfCopy _presetsFileNameForLanguage:languageCopy];
    fontsByFileName = [(BKFontCache *)selfCopy fontsByFileName];
    v45 = [fontsByFileName objectForKeyedSubscript:v46];

    if (![v45 count])
    {
      v8 = [(BKFontCache *)selfCopy _presetsForFileName:v46];
      v9 = objc_opt_new();
      v49 = objc_opt_new();
      v10 = dispatch_group_create();
      v11 = +[BKReachability sharedReachabilityForInternetConnection];
      v48 = [v11 currentReachabilityStatus] == 1;

      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      v62 = 0u;
      obj = v8;
      v12 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (v12)
      {
        v13 = *v63;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v63 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v62 + 1) + 8 * i);
            dispatch_group_enter(v10);
            v16 = [v15 valueForKey:@"fontFamily"];
            v17 = v16;
            v18 = &stru_1E7188;
            if (v16)
            {
              v18 = v16;
            }

            v19 = v18;

            v20 = [v9 objectForKeyedSubscript:v19];
            v21 = v20 == 0;

            if (v21)
            {
              v22 = [v15 valueForKey:@"system"];
              v23 = [v15 valueForKey:@"isPreinstalled"];
              bOOLValue = [v23 BOOLValue];

              v25 = objc_opt_new();
              if ([(__CFString *)v19 length])
              {
                if ([v22 isEqualToString:@"serif"])
                {
                  v26 = 4;
                }

                else
                {
                  v27 = [v22 isEqualToString:@"default"];
                  v28 = 2;
                  if (!bOOLValue)
                  {
                    v28 = 0;
                  }

                  if (v27)
                  {
                    v26 = 3;
                  }

                  else
                  {
                    v26 = v28;
                  }
                }
              }

              else
              {
                v26 = 1;
              }

              [v25 setKind:v26];
              [v25 setSystemName:v22];
              [v25 setFamilyName:v19];
              v29 = [v15 valueForKey:@"displayName"];
              [v25 setDisplayName:v29];

              v30 = [v15 valueForKey:@"postscriptName"];
              [v25 setPostscriptName:v30];

              v31 = [v15 valueForKey:@"postscriptBoldName"];
              [v25 setPostscriptBoldName:v31];

              [v49 addObject:v25];
              [v9 setObject:v25 forKey:v19];
              v32 = [v15 valueForKey:@"shouldAutoDownload"];
              LOBYTE(v31) = [v32 BOOLValue];

              v56[0] = _NSConcreteStackBlock;
              v56[1] = 3221225472;
              v56[2] = sub_18734;
              v56[3] = &unk_1E2F50;
              v33 = v25;
              v60 = v31;
              v61 = v48;
              v57 = v33;
              v58 = selfCopy;
              v59 = v10;
              [v33 checkStateSynchronously:0 completion:v56];
            }

            else
            {
              dispatch_group_leave(v10);
            }
          }

          v12 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
        }

        while (v12);
      }

      v34 = [v49 copy];
      fontsByFileName2 = [(BKFontCache *)selfCopy fontsByFileName];
      [fontsByFileName2 setObject:v34 forKeyedSubscript:v46];

      v36 = [v9 copy];
      fontLookupByFileName = [(BKFontCache *)selfCopy fontLookupByFileName];
      [fontLookupByFileName setObject:v36 forKeyedSubscript:v46];

      fileNames = [(BKFontCache *)selfCopy fileNames];
      [fileNames addObject:v46];

      v40 = _AEBookPluginsFontCacheLog(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v34 count];
        *buf = 134218242;
        v67 = v41;
        v68 = 2114;
        v69 = languageCopy;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Cached %lu fonts for language: %{public}@", buf, 0x16u);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_18838;
      block[3] = &unk_1E2F78;
      v55 = completionCopy;
      v45 = v34;
      v53 = v45;
      v54 = languageCopy;
      dispatch_group_notify(v10, &_dispatch_main_q, block);
    }
  }

  else
  {
    v42 = _AEBookPluginsFontCacheLog(0);
    v46 = v42;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "Nil language parameter, returning 0 fonts", buf, 2u);
    }

    v45 = &__NSArray0__struct;
  }

  objc_sync_exit(selfCopy);

  return v45;
}

- (id)fontFromFamilyName:(id)name language:(id)language
{
  nameCopy = name;
  languageCopy = language;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([languageCopy length])
  {
    v9 = [(BKFontCache *)selfCopy _presetsFileNameForLanguage:languageCopy];
    if ([v9 length])
    {
      fontLookupByFileName = [(BKFontCache *)selfCopy fontLookupByFileName];
      v11 = [fontLookupByFileName objectForKeyedSubscript:v9];

      if (v11)
      {
        v13 = [v11 objectForKeyedSubscript:nameCopy];
LABEL_14:

        goto LABEL_15;
      }

      v14 = _AEBookPluginsFontCacheLog(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = 138543362;
        v17 = v9;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Font lookup for %{public}@ not found, no font found", &v16, 0xCu);
      }
    }

    else
    {
      v11 = _AEBookPluginsFontCacheLog(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = 138543362;
        v17 = languageCopy;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Filename for %{public}@ not found, no font found", &v16, 0xCu);
      }
    }

    v13 = 0;
    goto LABEL_14;
  }

  v9 = _AEBookPluginsFontCacheLog(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v16 = 138543362;
    v17 = nameCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Empty language parameter, no font found for %{public}@", &v16, 0xCu);
  }

  v13 = 0;
LABEL_15:

  objc_sync_exit(selfCopy);

  return v13;
}

- (id)defaultFontNameForLanguage:(id)language
{
  languageCopy = language;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = languageCopy;
  if (![languageCopy length])
  {
    v21 = 0;
    goto LABEL_28;
  }

  [(BKFontCache *)selfCopy prewarmFontsForLanguage:languageCopy completion:0];
  v24 = [(BKFontCache *)selfCopy _presetsFileNameForLanguage:languageCopy];
  [(BKFontCache *)selfCopy _presetsForFileName:?];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *v28;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 valueForKey:{@"default", v23}];
        integerValue = [v11 integerValue];

        if (integerValue > v6)
        {
          v13 = [v10 valueForKey:@"fontFamily"];
          v14 = v13;
          v15 = &stru_1E7188;
          if (v13)
          {
            v15 = v13;
          }

          v16 = v15;

          fontLookupByFileName = [(BKFontCache *)selfCopy fontLookupByFileName];
          v18 = [fontLookupByFileName objectForKeyedSubscript:v24];

          v19 = [v18 objectForKeyedSubscript:v16];
          if (([v19 isInstalled] & 1) == 0)
          {
            [v19 checkStateSynchronously:1];
          }

          if (([v19 isInstalled] & 1) != 0 || objc_msgSend(v19, "state") == 1)
          {
            v20 = v10;

            v6 = integerValue;
            v7 = v20;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);

    if (v7)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  if ([obj count] < 2 || (objc_msgSend(obj, "objectAtIndex:", 1), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([obj count])
    {
      v7 = [obj objectAtIndex:0];
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_27:
  v21 = [v7 valueForKey:@"fontFamily"];

LABEL_28:
  objc_sync_exit(selfCopy);

  return v21;
}

- (id)presetsForLanguage:(id)language
{
  languageCopy = language;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(BKFontCache *)selfCopy _presetsFileNameForLanguage:languageCopy];
  v7 = [(BKFontCache *)selfCopy _presetsForFileName:v6];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)presetSettingsForFontFamily:(id)family language:(id)language
{
  familyCopy = family;
  languageCopy = language;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_19184;
  v24 = sub_19194;
  v25 = 0;
  if ([languageCopy length])
  {
    v9 = [(BKFontCache *)selfCopy _presetsFileNameForLanguage:languageCopy];
    v10 = [(BKFontCache *)selfCopy _presetsForFileName:v9];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1919C;
    v17[3] = &unk_1E2FA0;
    v11 = familyCopy;
    v18 = v11;
    v19 = &v20;
    v12 = [v10 enumerateObjectsUsingBlock:v17];
    if (!v21[5])
    {
      v13 = _AEBookPluginsFontCacheLog(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_136AD4(v11, languageCopy, v13);
      }

      v14 = v21[5];
      v21[5] = &off_1F1708;
    }
  }

  v15 = v21[5];
  _Block_object_dispose(&v20, 8);

  objc_sync_exit(selfCopy);

  return v15;
}

- (id)presetPostscriptsLookupForLanguage:(id)language
{
  languageCopy = language;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BKFontCache *)selfCopy prewarmFontsForLanguage:languageCopy completion:0];
  v6 = [(BKFontCache *)selfCopy _presetsFileNameForLanguage:languageCopy];
  fontFaceLookupByFileName = [(BKFontCache *)selfCopy fontFaceLookupByFileName];
  v8 = [fontFaceLookupByFileName objectForKeyedSubscript:v6];

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)_didReceiveMemoryWarning:(id)warning
{
  warningCopy = warning;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fileNames = [(BKFontCache *)selfCopy fileNames];
  array = [fileNames array];
  v8 = [array copy];

  v9 = [v8 count];
  if (v9 < 2)
  {
    v14 = _AEBookPluginsFontCacheLog(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      fileNames2 = [(BKFontCache *)selfCopy fileNames];
      *buf = 138543362;
      v23 = fileNames2;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Received memory warning - files did not exceed minimum. Remaining files cached: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_195C4;
    v19 = &unk_1E2FC8;
    v10 = v8;
    v20 = v10;
    v21 = selfCopy;
    v11 = _AEBookPluginsFontCacheLog([v10 enumerateObjectsUsingBlock:&v16]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 count:v16];
      fileNames3 = [(BKFontCache *)selfCopy fileNames];
      *buf = 134218242;
      v23 = v12 - 1;
      v24 = 2114;
      v25 = fileNames3;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Received memory warning - cleared %lu files. Remaining files cached: %{public}@", buf, 0x16u);
    }

    v14 = v20;
  }

  objc_sync_exit(selfCopy);
}

- (id)_presetsForFileName:(id)name
{
  nameCopy = name;
  presetsByFileName = [(BKFontCache *)self presetsByFileName];
  v6 = [presetsByFileName objectForKeyedSubscript:nameCopy];

  if ([v6 count])
  {
    v7 = v6;
  }

  else
  {
    v8 = AEBundle(0);
    v9 = [v8 pathForResource:nameCopy ofType:@"plist"];

    v10 = [[NSDictionary alloc] initWithContentsOfFile:v9];
    v11 = [v10 valueForKey:@"fonts"];
    v12 = [v11 mutableCopy];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_199A4;
    v27[3] = &unk_1E2FF0;
    v13 = objc_opt_new();
    v28 = v13;
    v14 = objc_retainBlock(v27);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_19A88;
    v24[3] = &unk_1E3018;
    v15 = v12;
    v25 = v15;
    v26 = v14;
    v16 = v14;
    [v11 enumerateObjectsUsingBlock:v24];
    v7 = [v15 copy];

    presetsByFileName2 = [(BKFontCache *)self presetsByFileName];
    [presetsByFileName2 setObject:v7 forKeyedSubscript:nameCopy];

    v18 = [v13 copy];
    fontFaceLookupByFileName = [(BKFontCache *)self fontFaceLookupByFileName];
    [fontFaceLookupByFileName setObject:v18 forKeyedSubscript:nameCopy];

    v21 = _AEBookPluginsFontCacheLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v7 count];
      *buf = 134218242;
      v30 = v22;
      v31 = 2114;
      v32 = nameCopy;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Cached %lu presets from file: %{public}@", buf, 0x16u);
    }
  }

  return v7;
}

- (id)_presetsFileNameForLanguage:(id)language
{
  v3 = [BKStyleManager suffixForLanguage:language];
  if ([v3 length])
  {
    v4 = [NSString stringWithFormat:@"-%@", v3];
  }

  else
  {
    v4 = &stru_1E7188;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1E7188;
  }

  v6 = [NSString stringWithFormat:@"%@%@", @"FontPresets", v5];

  return v6;
}

@end