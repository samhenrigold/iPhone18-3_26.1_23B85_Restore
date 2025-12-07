@interface LSBundleProxy(HKAppExtensions)
+ (id)hk_appExtensionContainerBundleForConnection:()HKAppExtensions;
@end

@implementation LSBundleProxy(HKAppExtensions)

+ (id)hk_appExtensionContainerBundleForConnection:()HKAppExtensions
{
  v3 = a3;
  v4 = v3;
  v5 = MEMORY[0x1E6963620];
  if (v3)
  {
    objc_msgSend_auditToken(v3);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  v18 = 0;
  v6 = [v5 bundleRecordForAuditToken:v19 error:&v18];
  v7 = v18;
  v9 = v7;
  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v12 = v6;
      containingBundleRecord = [v12 containingBundleRecord];
      v14 = MEMORY[0x1E6963618];
      v15 = [containingBundleRecord URL];
      v16 = [v14 bundleProxyForURL:v15];

      goto LABEL_12;
    }

    _HKInitializeLogging(isKindOfClass, v11);
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      +[LSBundleProxy(HKAppExtensions) hk_appExtensionContainerBundleForConnection:];
    }
  }

  else
  {
    _HKInitializeLogging(v7, v8);
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      +[LSBundleProxy(HKAppExtensions) hk_appExtensionContainerBundleForConnection:];
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

@end