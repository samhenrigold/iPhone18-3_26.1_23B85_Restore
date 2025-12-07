@interface MSDSettingsInstallOperation
- (BOOL)_applySettingToDevice;
- (BOOL)_saveDisplaySettings;
- (BOOL)_updateLocale;
- (id)methodSelectors;
@end

@implementation MSDSettingsInstallOperation

- (id)methodSelectors
{
  if (+[MSDOperationContext downloadOnly])
  {
    v2 = +[NSArray array];
  }

  else
  {
    v3 = [NSValue valueWithPointer:"_applySettingToDevice"];
    v2 = [NSArray arrayWithObjects:v3, 0];
  }

  return v2;
}

- (BOOL)_applySettingToDevice
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    context = [(MSDOperation *)self context];
    identifier = [context identifier];
    v15 = 136315394;
    v16 = "[MSDSettingsInstallOperation _applySettingToDevice]";
    v17 = 2114;
    v18 = identifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - identifier %{public}@", &v15, 0x16u);
  }

  context2 = [(MSDOperation *)self context];
  identifier2 = [context2 identifier];
  v8 = [identifier2 isEqual:@"locale"];

  if (v8)
  {
    return [(MSDSettingsInstallOperation *)self _updateLocale];
  }

  context3 = [(MSDOperation *)self context];
  identifier3 = [context3 identifier];
  v12 = [identifier3 isEqualToString:@"display"];

  if (v12)
  {
    return [(MSDSettingsInstallOperation *)self _saveDisplaySettings];
  }

  v14 = sub_100063A54(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1000E8924(self, v14);
  }

  return 0;
}

- (BOOL)_updateLocale
{
  context = [(MSDOperation *)self context];
  dataDict = [context dataDict];
  v5 = [dataDict objectForKey:@"language"];

  context2 = [(MSDOperation *)self context];
  dataDict2 = [context2 dataDict];
  v8 = [dataDict2 objectForKey:@"region"];

  if (v5 && v8)
  {
    v21[0] = @"language";
    v21[1] = @"region";
    v22[0] = v5;
    v22[1] = v8;
    v10 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v11 = sub_100063A54(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[MSDSettingsInstallOperation _updateLocale]";
      v17 = 2114;
      v18 = v5;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s language: %{public}@ region: %{public}@", &v15, 0x20u);
    }

    v12 = +[MSDPreferencesFile sharedInstance];
    v13 = [v12 setObject:v10 forKey:@"locale"];
  }

  else
  {
    v10 = sub_100063A54(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E89E8(v10);
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)_saveDisplaySettings
{
  context = [(MSDOperation *)self context];
  dataDict = [context dataDict];
  v4 = [dataDict objectForKey:@"HDR"];

  if (v4 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v6 = sub_100063A54(isKindOfClass);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[MSDSettingsInstallOperation _saveDisplaySettings]";
      v12 = 1024;
      bOOLValue = [v4 BOOLValue];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - HDR setting:  %{BOOL}d", &v10, 0x12u);
    }

    v7 = +[MSDPreferencesFile sharedInstance];
    [v7 setObject:v4 forKey:@"HDR"];

    v8 = 1;
  }

  else
  {
    sub_1000E8B34(isKindOfClass);
    v8 = 0;
  }

  return v8;
}

@end