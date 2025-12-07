@interface CHPersistentStoreDescription
+ (id)persistentStoreDescriptionWithURL:(id)l;
@end

@implementation CHPersistentStoreDescription

+ (id)persistentStoreDescriptionWithURL:(id)l
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS___CHPersistentStoreDescription;
  v3 = objc_msgSendSuper2(&v19, sel_persistentStoreDescriptionWithURL_, l);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v20[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v3 setOption:v5 forKey:*MEMORY[0x1E695D3D8]];

  [v3 setValue:@"1" forPragmaNamed:@"secure_delete"];
  v6 = +[CHProcessHandle processHandle];
  hasAppProtectionReadEntitlement = [v6 hasAppProtectionReadEntitlement];
  if ((hasAppProtectionReadEntitlement & 1) == 0)
  {
    v9 = ch_security_log(hasAppProtectionReadEntitlement, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [CHPersistentStoreDescription persistentStoreDescriptionWithURL:v9];
    }
  }

  if ([v6 hasDataStoreReadWriteEntitlement])
  {
    v10 = *MEMORY[0x1E695D458];
    v11 = MEMORY[0x1E695E110];
  }

  else
  {
    hasDataStoreReadOnlyEntitlement = [v6 hasDataStoreReadOnlyEntitlement];
    v10 = *MEMORY[0x1E695D458];
    if (!hasDataStoreReadOnlyEntitlement)
    {
      goto LABEL_10;
    }

    v11 = MEMORY[0x1E695E118];
  }

  [v3 setOption:v11 forKey:v10];
LABEL_10:
  options = [v3 options];
  v14 = [options objectForKeyedSubscript:v10];

  if (!v14)
  {
    v17 = ch_security_log(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [CHPersistentStoreDescription persistentStoreDescriptionWithURL:v17];
    }
  }

  return v3;
}

+ (void)persistentStoreDescriptionWithURL:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = @"com.apple.appprotectiond.read.access";
  _os_log_fault_impl(&dword_1C3E90000, log, OS_LOG_TYPE_FAULT, "Call History access now requires App Protection Entitlement %@", &v1, 0xCu);
}

+ (void)persistentStoreDescriptionWithURL:(os_log_t)log .cold.2(os_log_t log)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 138412546;
  v2 = @"com.apple.private.CallHistory.read";
  v3 = 2112;
  v4 = @"com.apple.private.CallHistory.read-write";
  _os_log_fault_impl(&dword_1C3E90000, log, OS_LOG_TYPE_FAULT, "Call History access requires BOOLean entitlement %@ or %@. This will be a hard error in the future.", &v1, 0x16u);
}

@end