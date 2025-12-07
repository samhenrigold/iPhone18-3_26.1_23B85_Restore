@interface AAPCommandLaunch
- (id)_siriDismissalOpenApplicationOptions;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper executionInfo:(id)info;
@end

@implementation AAPCommandLaunch

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper executionInfo:(id)info
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v23 = sub_1FFC;
  v24 = &unk_20748;
  selfCopy = self;
  completionCopy = completion;
  v7 = [(AAPCommandLaunch *)self launchId:completion];
  turnId = [info turnId];
  v9 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[AAPCommandLaunch performWithCompletion:serviceHelper:executionInfo:]";
    v29 = 2112;
    infoCopy = info;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: ExecutionInfo: %@", buf, 0x16u);
  }

  if (!v7)
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_F514(self);
    }

    goto LABEL_17;
  }

  if (objc_msgSend_isEqualToString_([(AAPCommandLaunch *)self executionEnvironment]))
  {
    v10 = +[FBSOpenApplicationService dashboardService];
    v11 = [FBSOpenApplicationOptions optionsWithDictionary:&__NSDictionary0__struct];
  }

  else
  {
    v12 = objc_opt_new();
    [v12 setObject:&__kCFBooleanTrue forKey:FBSOpenApplicationOptionKeyUnlockDevice];
    [v12 setObject:&__kCFBooleanTrue forKey:FBSOpenApplicationOptionKeyPromptUnlockDevice];
    [v12 addEntriesFromDictionary:{-[AAPCommandLaunch _siriDismissalOpenApplicationOptions](self, "_siriDismissalOpenApplicationOptions")}];
    v10 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    v11 = +[FBSOpenApplicationOptions optionsWithDictionary:](FBSOpenApplicationOptions, "optionsWithDictionary:", [v12 copy]);
  }

  v13 = AFSiriLogContextPlugin;
  if (!v10)
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_F460(self);
    }

LABEL_17:
    v16 = objc_alloc_init(SACommandFailed);
    v23(v22, [v16 dictionary]);

    return;
  }

  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
  {
    v14 = objc_opt_class();
    *buf = 136315906;
    v28 = "[AAPCommandLaunch performWithCompletion:serviceHelper:executionInfo:]";
    v29 = 2114;
    infoCopy = v14;
    v31 = 2048;
    selfCopy3 = self;
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> processing command for app (%@)", buf, 0x2Au);
  }

  if (turnId)
  {
    v15 = objc_alloc_init(SISchemaUEIUUFRReady);
    [+[AFAnalytics sharedAnalytics](AFAnalytics "sharedAnalytics")];

    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_F358();
    }
  }

  else
  {
    v17 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_F3DC(v17);
    }
  }

  v18 = v10;
  v19 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
  {
    v20 = objc_opt_class();
    *buf = 136315906;
    v28 = "[AAPCommandLaunch performWithCompletion:serviceHelper:executionInfo:]";
    v29 = 2114;
    infoCopy = v20;
    v31 = 2048;
    selfCopy3 = self;
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> launchOptions (%@)", buf, 0x2Au);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_2178;
  v21[3] = &unk_20770;
  v21[4] = self;
  v21[5] = v7;
  v21[6] = v10;
  v21[7] = v22;
  [(FBSOpenApplicationService *)v10 openApplication:v7 withOptions:v11 completion:v21];
}

- (id)_siriDismissalOpenApplicationOptions
{
  v3 = objc_opt_new();
  if (AFIsPersistentSiriAvailable())
  {
    v4 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_F6AC(v4);
    }

    [(AAPCommandLaunch *)self setDoNotDismissSiri:1];
  }

  v5 = [NSNumber numberWithBool:[(AAPCommandLaunch *)self doNotDismissSiri]];
  [v3 setObject:v5 forKey:SBSOpenApplicationOptionKeyDoNotDismissSiri];
  return v3;
}

@end