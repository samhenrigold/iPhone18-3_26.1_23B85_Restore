@interface WFCloudKitSyncSession
+ (BOOL)ignoresUserDeletedZoneErrors;
+ (BOOL)isSyncEnabled;
+ (BOOL)isWalrusEnabled;
+ (BOOL)isWalrusForcedEnabled;
+ (BOOL)voiceShortcutMigrationDidRun;
+ (BOOL)voiceShortcutMigrationDidSync;
+ (BOOL)zoneWasPurged;
+ (int64_t)defaultShortcutsVersion;
+ (int64_t)lastSyncedFlagsHash;
+ (int64_t)syncedFlagsHash;
+ (void)fetchCloudKitSyncFlagsIfNecessaryWithCompletionHandler:(id)handler;
+ (void)initialize;
+ (void)resolveWalrusStatus;
+ (void)setDefaultShortcutsVersion:(int64_t)version;
+ (void)setIgnoresUserDeletedZoneErrors:(BOOL)errors;
+ (void)setLastSyncedFlagsHash:(int64_t)hash;
+ (void)setSyncEnabled:(BOOL)enabled;
+ (void)setVoiceShortcutMigrationDidRun:(BOOL)run;
+ (void)setVoiceShortcutMigrationDidSync:(BOOL)sync;
+ (void)setWalrusEnabled:(BOOL)enabled;
+ (void)setWalrusForcedEnabled:(BOOL)enabled;
+ (void)setZoneWasPurged:(BOOL)purged;
@end

@implementation WFCloudKitSyncSession

+ (BOOL)isWalrusEnabled
{
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v3 = [systemShortcutsUserDefaults BOOLForKey:@"WFWalrusEnabled"];

  return v3;
}

+ (BOOL)isSyncEnabled
{
  workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
  v3 = [workflowUserDefaults BOOLForKey:@"WFCloudKitSyncEnabled"];

  return v3;
}

void __35__WFCloudKitSyncSession_initialize__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] workflowUserDefaults];
  v2 = @"WFCloudKitSyncEnabled";
  v3[0] = MEMORY[0x1E695E118];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  [v0 registerDefaults:v1];
}

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, &__block_literal_global_917);
  }
}

+ (BOOL)zoneWasPurged
{
  workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
  v3 = [workflowUserDefaults BOOLForKey:@"WFCloudKitSyncZoneWasPurged"];

  return v3;
}

+ (void)fetchCloudKitSyncFlagsIfNecessaryWithCompletionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  needsDefaultShortcutUpdate = [self needsDefaultShortcutUpdate];
  voiceShortcutMigrationDidSync = [self voiceShortcutMigrationDidSync];
  v8 = voiceShortcutMigrationDidSync;
  if ((needsDefaultShortcutUpdate & 1) != 0 || !voiceShortcutMigrationDidSync)
  {
    v9 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v24 = "+[WFCloudKitSyncSession fetchCloudKitSyncFlagsIfNecessaryWithCompletionHandler:]";
      v25 = 1026;
      v26 = needsDefaultShortcutUpdate;
      v27 = 1026;
      v28 = v8;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Fetching sync flags record from CloudKit, needsDefaultShortcutUpdate = %{public}d, voiceShortcutMigrationDidSync = %{public}d", buf, 0x18u);
    }

    if (!handlerCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitSyncSession.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
    }

    v10 = WFShortcutsCloudKitContainer();
    v11 = objc_alloc(MEMORY[0x1E695BA90]);
    v12 = [v11 initWithZoneName:@"Shortcuts" ownerName:*MEMORY[0x1E695B728]];
    v13 = [WFCloudKitItemRequest alloc];
    privateCloudDatabase = [v10 privateCloudDatabase];
    v15 = [(WFCloudKitItemRequest *)v13 initWithContainer:v10 database:privateCloudDatabase];

    v16 = [WFCloudKitSyncFlags recordIDWithZoneID:v12];
    v17 = objc_opt_class();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __80__WFCloudKitSyncSession_fetchCloudKitSyncFlagsIfNecessaryWithCompletionHandler___block_invoke;
    v20[3] = &unk_1E83734F8;
    v21 = handlerCopy;
    selfCopy = self;
    v18 = [(WFCloudKitItemRequest *)v15 fetchItemWithID:v16 itemType:v17 groupName:@"InitialSetup" properties:0 completionHandler:v20];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __80__WFCloudKitSyncSession_fetchCloudKitSyncFlagsIfNecessaryWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "+[WFCloudKitSyncSession fetchCloudKitSyncFlagsIfNecessaryWithCompletionHandler:]_block_invoke";
    v10 = 2050;
    v11 = [v5 defaultShortcutsVersion];
    v12 = 1026;
    v13 = [v5 migratedVoiceShortcuts];
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Finished fetching sync flags record from CloudKit, item.defaultShortcutsVersion = %{public}ld, item.migratedVoiceShortcuts = %{public}d, error = %{public}@", &v8, 0x26u);
  }

  if (v5)
  {
    if ([v5 defaultShortcutsVersion])
    {
      [*(a1 + 40) setDefaultShortcutsVersion:{objc_msgSend(v5, "defaultShortcutsVersion")}];
    }

    if ([v5 migratedVoiceShortcuts])
    {
      [*(a1 + 40) setVoiceShortcutMigrationDidSync:1];
      [*(a1 + 40) setVoiceShortcutMigrationDidRun:1];
    }
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)setWalrusForcedEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11 = *MEMORY[0x1E69E9840];
  if ([self isWalrusForcedEnabled] != enabled)
  {
    systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
    [systemShortcutsUserDefaults setBool:enabledCopy forKey:@"WFWalrusForcedEnabled"];

    v6 = getWFWalrusLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "+[WFCloudKitSyncSession setWalrusForcedEnabled:]";
      v9 = 1024;
      v10 = enabledCopy;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Walrus status has been FORCED to %d", &v7, 0x12u);
    }

    [self resolveWalrusStatus];
  }
}

+ (BOOL)isWalrusForcedEnabled
{
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v3 = [systemShortcutsUserDefaults BOOLForKey:@"WFWalrusForcedEnabled"];

  return v3;
}

+ (void)setWalrusEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11 = *MEMORY[0x1E69E9840];
  if ([self isWalrusEnabled] != enabled)
  {
    systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
    [systemShortcutsUserDefaults setBool:enabledCopy forKey:@"WFWalrusGroundTruthEnabled"];

    v6 = getWFWalrusLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "+[WFCloudKitSyncSession setWalrusEnabled:]";
      v9 = 1024;
      v10 = enabledCopy;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Walrus ground truth status has changed to %d", &v7, 0x12u);
    }

    [self resolveWalrusStatus];
  }
}

+ (void)resolveWalrusStatus
{
  v13 = *MEMORY[0x1E69E9840];
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v3 = [systemShortcutsUserDefaults BOOLForKey:@"WFWalrusGroundTruthEnabled"];

  systemShortcutsUserDefaults2 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v5 = [systemShortcutsUserDefaults2 BOOLForKey:@"WFWalrusForcedEnabled"];

  systemShortcutsUserDefaults3 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v7 = (v3 | v5) & 1;
  [systemShortcutsUserDefaults3 setBool:v7 forKey:@"WFWalrusEnabled"];

  v8 = getWFWalrusLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "+[WFCloudKitSyncSession resolveWalrusStatus]";
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Walrus final status has changed to %d", &v9, 0x12u);
  }
}

+ (int64_t)syncedFlagsHash
{
  defaultShortcutsVersion = [self defaultShortcutsVersion];
  voiceShortcutMigrationDidRun = [self voiceShortcutMigrationDidRun];
  v5 = 3735928559;
  if (voiceShortcutMigrationDidRun)
  {
    v5 = 305419896;
  }

  return v5 ^ defaultShortcutsVersion;
}

+ (void)setLastSyncedFlagsHash:(int64_t)hash
{
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  [systemShortcutsUserDefaults setInteger:hash forKey:@"WFLastSyncedFlagsHash"];
}

+ (int64_t)lastSyncedFlagsHash
{
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v3 = [systemShortcutsUserDefaults integerForKey:@"WFLastSyncedFlagsHash"];

  return v3;
}

+ (void)setDefaultShortcutsVersion:(int64_t)version
{
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  [systemShortcutsUserDefaults setInteger:version forKey:@"WFDefaultShortcutsVersion"];
}

+ (int64_t)defaultShortcutsVersion
{
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v3 = [systemShortcutsUserDefaults integerForKey:@"WFDefaultShortcutsVersion"];

  return v3;
}

+ (void)setVoiceShortcutMigrationDidSync:(BOOL)sync
{
  syncCopy = sync;
  workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
  [workflowUserDefaults setBool:syncCopy forKey:@"VCVoiceShortcutMigrationDidSync"];
}

+ (BOOL)voiceShortcutMigrationDidSync
{
  workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
  v3 = [workflowUserDefaults BOOLForKey:@"VCVoiceShortcutMigrationDidSync"];

  return v3;
}

+ (void)setVoiceShortcutMigrationDidRun:(BOOL)run
{
  runCopy = run;
  workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
  [workflowUserDefaults setBool:runCopy forKey:@"VCVoiceShortcutMigrationDidRun"];
}

+ (BOOL)voiceShortcutMigrationDidRun
{
  workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
  v3 = [workflowUserDefaults BOOLForKey:@"VCVoiceShortcutMigrationDidRun"];

  return v3;
}

+ (void)setIgnoresUserDeletedZoneErrors:(BOOL)errors
{
  errorsCopy = errors;
  workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
  [workflowUserDefaults setBool:errorsCopy forKey:@"WFCloudKitSyncIgnoresUserDeletedZoneErrors"];
}

+ (BOOL)ignoresUserDeletedZoneErrors
{
  workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
  v3 = [workflowUserDefaults BOOLForKey:@"WFCloudKitSyncIgnoresUserDeletedZoneErrors"];

  return v3;
}

+ (void)setZoneWasPurged:(BOOL)purged
{
  purgedCopy = purged;
  workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
  [workflowUserDefaults setBool:purgedCopy forKey:@"WFCloudKitSyncZoneWasPurged"];
}

+ (void)setSyncEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
  [workflowUserDefaults setBool:enabledCopy forKey:@"WFCloudKitSyncEnabled"];
}

@end