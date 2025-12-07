@interface LSAltIconManager
+ (id)sharedInstance;
- (BOOL)_setAlternateIconName:(id)name forIdentifier:(id)identifier withIconsDictionary:(id)dictionary error:(id *)error;
- (BOOL)isValidAlternateIcon:(id)icon forIconsDict:(id)dict;
- (LSAltIconManager)init;
- (id)_getPreferredIconNameForIdentifier:(id)identifier;
- (id)alternateIconNameForIdentifier:(id)identifier error:(id *)error;
- (void)changeIconWithAlertForApplicationIdentity:(id)identity withIconsDictionary:(id)dictionary toAlternateIconName:(id)name completion:(id)completion;
- (void)clearAlternateNameForBundleIdentifier:(id)identifier validationDictionary:(id)dictionary;
- (void)setAlternateIconName:(id)name forIdentifier:(id)identifier iconsDictionary:(id)dictionary reply:(id)reply;
@end

@implementation LSAltIconManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[LSAltIconManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __34__LSAltIconManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LSAltIconManager);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

- (LSAltIconManager)init
{
  v6.receiver = self;
  v6.super_class = LSAltIconManager;
  v2 = [(LSAltIconManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(LSIconAlertManager);
    alertManager = v2->_alertManager;
    v2->_alertManager = v3;
  }

  return v2;
}

- (void)clearAlternateNameForBundleIdentifier:(id)identifier validationDictionary:(id)dictionary
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v8 = [(LSAltIconManager *)self _getPreferredIconNameForIdentifier:identifierCopy];
    if (v8)
    {
      v9 = ![(LSAltIconManager *)self isValidAlternateIcon:v8 forIconsDict:dictionaryCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  if (_LSIconsLog_onceToken != -1)
  {
    [LSAltIconManager clearAlternateNameForBundleIdentifier:validationDictionary:];
  }

  v10 = _LSIconsLog_log;
  if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"won't";
    if (v9)
    {
      v11 = @"will";
    }

    v12 = 138412546;
    v13 = v11;
    v14 = 2112;
    v15 = identifierCopy;
    _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "clearAlternateNameForBundleIdentifier: %@ clear for %@", &v12, 0x16u);
  }

  if (v9)
  {
    [(LSAltIconManager *)self _setPreferredIconName:0 forIdentifier:identifierCopy];
  }
}

- (id)alternateIconNameForIdentifier:(id)identifier error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [(LSAltIconManager *)self _getPreferredIconNameForIdentifier:identifier];
  if (v5)
  {
    v6 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = *MEMORY[0x1E696A578];
  v11[0] = @"no AlternateName found for app";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 109, v9, "[LSAltIconManager alternateIconNameForIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAltIconManager.m", 96);

  if (error)
  {
LABEL_3:
    v7 = v6;
    *error = v6;
  }

LABEL_4:

  return v5;
}

- (void)setAlternateIconName:(id)name forIdentifier:(id)identifier iconsDictionary:(id)dictionary reply:(id)reply
{
  v41[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  replyCopy = reply;
  _LSAssertRunningInServer("[LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:]", v14);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    iconsDictionary = dictionaryCopy;
    v16 = 0;
  }

  else
  {
    v40 = *MEMORY[0x1E696A578];
    v41[0] = @"CFBundleIcons dictionary is missing or incorrect type";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v16 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", -105, v17, "[LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAltIconManager.m", 115);

    replyCopy[2](replyCopy, 0, v16);
    iconsDictionary = 0;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v18 = _LSServer_DatabaseExecutionContext();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __77__LSAltIconManager_setAlternateIconName_forIdentifier_iconsDictionary_reply___block_invoke;
  v26[3] = &unk_1E6A18DA0;
  v28 = &v29;
  v19 = identifierCopy;
  v27 = v19;
  [(LSDBExecutionContext *)v18 syncRead:v26];

  if (nameCopy && !iconsDictionary)
  {
    if ([nameCopy isEqualToString:@"CFBundlePrimaryIcon"])
    {
      iconsDictionary = 0;
    }

    else
    {
      if (_LSIconsLog_onceToken != -1)
      {
        [LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:];
      }

      v20 = _LSIconsLog_log;
      if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v37 = nameCopy;
        v38 = 2112;
        v39 = v19;
        _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEFAULT, "Setting alternate icon name %@ for app %@", buf, 0x16u);
      }

      iconsDictionary = [v30[5] iconsDictionary];
    }
  }

  v25 = v16;
  v21 = [(LSAltIconManager *)self _setAlternateIconName:nameCopy forIdentifier:v19 withIconsDictionary:iconsDictionary error:&v25];
  v22 = v25;

  if (v21)
  {
    v23 = +[_LSInstallProgressService sharedInstance];
    v35 = v30[5];
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    [v23 sendNotification:13 forAppProxies:v24 Plugins:0 completion:0];
  }

  replyCopy[2](replyCopy, v21, v22);

  _Block_object_dispose(&v29, 8);
}

void __77__LSAltIconManager_setAlternateIconName_forIdentifier_iconsDictionary_reply___block_invoke(uint64_t a1)
{
  v2 = [LSApplicationProxy applicationProxyForIdentifier:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_getPreferredIconNameForIdentifier:(id)identifier
{
  v3 = CFPreferencesCopyValue(identifier, @"com.apple.lsd.iconNames", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFStringGetTypeID())
    {
      CFRelease(v4);
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)isValidAlternateIcon:(id)icon forIconsDict:(id)dict
{
  iconCopy = icon;
  v6 = [dict objectForKey:@"CFBundleAlternateIcons"];
  if (_NSIsNSArray() && ([v6 containsObject:iconCopy] & 1) != 0)
  {
    v7 = 1;
  }

  else if (_NSIsNSDictionary())
  {
    v8 = [v6 objectForKey:iconCopy];
    v7 = v8 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_setAlternateIconName:(id)name forIdentifier:(id)identifier withIconsDictionary:(id)dictionary error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  if (!nameCopy || ([nameCopy isEqualToString:@"CFBundlePrimaryIcon"] & 1) != 0)
  {
    v13 = 0;
LABEL_4:
    [(LSAltIconManager *)self _setPreferredIconName:v13 forIdentifier:identifierCopy];
    v14 = 1;
    goto LABEL_13;
  }

  if (dictionaryCopy)
  {
    if ([(LSAltIconManager *)self isValidAlternateIcon:nameCopy forIconsDict:dictionaryCopy])
    {
      v13 = nameCopy;
      goto LABEL_4;
    }

    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"iconName not found in CFBundleAlternateIcons entry";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v16 = v15;
    v17 = 195;
  }

  else
  {
    v25 = *MEMORY[0x1E696A578];
    v26 = @"CFBundleIcons dictionary is missing or incorrect type";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v16 = v15;
    v17 = 199;
  }

  v13 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", -105, v16, "[LSAltIconManager _setAlternateIconName:forIdentifier:withIconsDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAltIconManager.m", v17);

  v18 = *MEMORY[0x1E696A250];
  v23 = *MEMORY[0x1E696AA08];
  v24 = v13;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v20 = _LSMakeNSErrorImpl(v18, 4, v19, "[LSAltIconManager _setAlternateIconName:forIdentifier:withIconsDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAltIconManager.m", 207);

  if (error)
  {
    v21 = v20;
    *error = v20;
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (void)changeIconWithAlertForApplicationIdentity:(id)identity withIconsDictionary:(id)dictionary toAlternateIconName:(id)name completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  dictionaryCopy = dictionary;
  nameCopy = name;
  completionCopy = completion;
  if (_LSIconsLog_onceToken != -1)
  {
    [LSAltIconManager clearAlternateNameForBundleIdentifier:validationDictionary:];
  }

  v14 = _LSIconsLog_log;
  if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v39 = identityCopy;
    v40 = 2112;
    v41 = nameCopy;
    _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "#ChangeIconWithAlert begin for %@ to %@", buf, 0x16u);
  }

  bundleIdentifier = [identityCopy bundleIdentifier];
  v16 = [(LSAltIconManager *)self _getPreferredIconNameForIdentifier:bundleIdentifier];

  if (v16 == nameCopy || ([v16 isEqual:nameCopy] & 1) != 0)
  {
    if (_LSIconsLog_onceToken != -1)
    {
      [LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:];
    }

    v17 = _LSIconsLog_log;
    if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = v16;
      v40 = 2112;
      v41 = nameCopy;
      _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEFAULT, "#ChangeIconWithAlert existing icon name %@ equal to new name %@, doing nothing successfully", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    alertManager = self->_alertManager;
    v36 = 0;
    v19 = [(LSIconAlertManager *)alertManager iconChangeAlertTokenForIdentity:identityCopy error:&v36];
    v20 = v36;
    if (v19)
    {
      bundleIdentifier2 = [identityCopy bundleIdentifier];
      v35 = v20;
      v31 = dictionaryCopy;
      v22 = [(LSAltIconManager *)self _setAlternateIconName:nameCopy forIdentifier:bundleIdentifier2 withIconsDictionary:dictionaryCopy error:&v35];
      v23 = v35;

      if (v22)
      {
        if (_LSIconsLog_onceToken != -1)
        {
          [LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:];
        }

        v24 = _LSIconsLog_log;
        if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = identityCopy;
          _os_log_impl(&dword_18162D000, v24, OS_LOG_TYPE_DEFAULT, "#ChangeIconWithAlert send notification for %@", buf, 0xCu);
        }

        v25 = +[_LSInstallProgressService sharedInstance];
        bundleIdentifier3 = [identityCopy bundleIdentifier];
        v37 = bundleIdentifier3;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        [v25 sendNotification:13 forApps:v27 withPlugins:0 completion:0];

        if (_LSIconsLog_onceToken != -1)
        {
          [LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:];
        }

        dictionaryCopy = v31;
        v28 = _LSIconsLog_log;
        if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = identityCopy;
          _os_log_impl(&dword_18162D000, v28, OS_LOG_TYPE_DEFAULT, "#ChangeIconWithAlert present for %@", buf, 0xCu);
        }

        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __113__LSAltIconManager_changeIconWithAlertForApplicationIdentity_withIconsDictionary_toAlternateIconName_completion___block_invoke;
        v32[3] = &unk_1E6A18DC8;
        v33 = identityCopy;
        v34 = completionCopy;
        [v19 presentWithCompletion:v32];
      }

      else
      {
        if (_LSIconsLog_onceToken != -1)
        {
          [LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:];
        }

        dictionaryCopy = v31;
        v30 = _LSIconsLog_log;
        if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v39 = identityCopy;
          v40 = 2112;
          v41 = v23;
          _os_log_impl(&dword_18162D000, v30, OS_LOG_TYPE_DEFAULT, "#ChangeIconWithAlert couldn't set alternate icon name for %@: %@", buf, 0x16u);
        }

        (completionCopy)[2](completionCopy, 0, v23);
      }
    }

    else
    {
      if (_LSIconsLog_onceToken != -1)
      {
        [LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:];
      }

      v29 = _LSIconsLog_log;
      if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v39 = identityCopy;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&dword_18162D000, v29, OS_LOG_TYPE_DEFAULT, "#ChangeIconWithAlert couldn't make icon alert token for %@: %@", buf, 0x16u);
      }

      (completionCopy)[2](completionCopy, 0, v20);
      v23 = v20;
    }
  }
}

void __113__LSAltIconManager_changeIconWithAlertForApplicationIdentity_withIconsDictionary_toAlternateIconName_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (_LSIconsLog_onceToken != -1)
  {
    [LSAltIconManager clearAlternateNameForBundleIdentifier:validationDictionary:];
  }

  v6 = _LSIconsLog_log;
  if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "#ChangeIconWithAlert done for %@: %d %@", &v8, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
}

@end