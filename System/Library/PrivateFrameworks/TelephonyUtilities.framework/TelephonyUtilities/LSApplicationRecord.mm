@interface LSApplicationRecord
+ (id)csd_applicationRecordForApplicationIdentifier:(id)identifier;
+ (id)csd_applicationRecordForBundleIdentifier:(id)identifier;
- (BOOL)csd_hasPTTSelfAddEntitlement;
- (BOOL)csd_hasVoIPNetworkExtensionEntitlement;
@end

@implementation LSApplicationRecord

+ (id)csd_applicationRecordForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = 0;
  v4 = [LSBundleRecord bundleRecordWithApplicationIdentifier:identifierCopy error:&v10];
  isKindOfClass = v10;
  v6 = isKindOfClass;
  if (v4 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v7 = v4;
  }

  else
  {
    if (v6)
    {
      v8 = sub_100004778(isKindOfClass);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100478D14();
      }
    }

    v7 = 0;
  }

  return v7;
}

+ (id)csd_applicationRecordForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v9];
  v5 = v9;
  v6 = v5;
  if (!v4)
  {
    v7 = sub_100004778(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100478D7C();
    }
  }

  return v4;
}

- (BOOL)csd_hasPTTSelfAddEntitlement
{
  entitlements = [(LSApplicationRecord *)self entitlements];
  v3 = [entitlements objectForKey:@"com.apple.developer.push-to-talk" ofClass:objc_opt_class()];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)csd_hasVoIPNetworkExtensionEntitlement
{
  entitlements = [(LSApplicationRecord *)self entitlements];
  v3 = objc_opt_class();
  v4 = [entitlements objectForKey:@"com.apple.developer.networking.networkextension" ofClass:v3 valuesOfClass:objc_opt_class()];

  if (v4)
  {
    v5 = [v4 containsObject:@"app-push-provider"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end