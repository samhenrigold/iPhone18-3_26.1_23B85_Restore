@interface PLStorageOperator
+ (id)entryEventForwardDefinitionActivityStates;
+ (id)entryEventForwardDefinitionConfiguration;
+ (id)entryEventForwardDefinitionSchemaChange;
+ (id)entryEventForwardDefinitionSubmissionTag;
+ (id)entryEventForwardDefinitionTaskingMode;
+ (id)entryEventForwardDefinitionTimeOffset;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionCacheSize;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventNoneDefinitionActivity;
+ (id)entryEventNoneDefinitionAdditionalTablesTurnedOn;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionArchive;
+ (id)entryEventPointDefinitionCacheFlush;
+ (id)entryEventPointDefinitionOTA;
+ (id)entryEventPointDefinitionPLLog;
+ (id)entryEventPointDefinitionTimeCorrection;
+ (id)entryEventPointDefinitions;
+ (id)eventIntervalCacheSizeWithPayload:(id)payload withEntryDate:(id)date;
+ (id)eventPointCacheFlushWithPayload:(id)payload;
- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date;
- (void)logEventForwardConfiguration:(id)configuration;
- (void)logEventForwardSchemaChange:(id)change;
- (void)logEventForwardTaskingMode:(id)mode;
- (void)logEventForwardTimeOffset:(id)offset;
- (void)logEventNoneAdditionalTablesTurnedOn:(id)on;
- (void)logEventPointArchive:(id)archive;
- (void)logEventPointCacheFlush:(id)flush;
- (void)logEventPointOTA:(id)a;
- (void)logEventPointPLLog:(id)log;
- (void)logEventPointTimeCorrection:(id)correction;
@end

@implementation PLStorageOperator

+ (id)entryEventIntervalDefinitions
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([self isDebugEnabledForKey:@"LogCacheSize"])
  {
    v6 = @"CacheSize";
    entryEventIntervalDefinitionCacheSize = [self entryEventIntervalDefinitionCacheSize];
    v7[0] = entryEventIntervalDefinitionCacheSize;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

+ (id)entryEventIntervalDefinitionCacheSize
{
  v25[2] = *MEMORY[0x1E69E9840];
  v24[0] = @"Configs";
  v22[0] = @"SchemaVersion";
  v22[1] = @"OnDemandQuery";
  v23[0] = &unk_1F540A3C0;
  v23[1] = MEMORY[0x1E695E110];
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v19;
  v24[1] = @"Keys";
  v20[0] = @"timestampEnd";
  v18 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_DateFormat = [v18 commonTypeDict_DateFormat];
  v21[0] = commonTypeDict_DateFormat;
  v20[1] = @"EntryKey";
  v16 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat = [v16 commonTypeDict_StringFormat];
  v21[1] = commonTypeDict_StringFormat;
  v20[2] = @"InsertCount";
  v14 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v14 commonTypeDict_IntegerFormat];
  v21[2] = commonTypeDict_IntegerFormat;
  v20[3] = @"UpdateCount";
  v2 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v2 commonTypeDict_IntegerFormat];
  v21[3] = commonTypeDict_IntegerFormat2;
  v20[4] = @"State";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v4 commonTypeDict_IntegerFormat];
  v21[4] = commonTypeDict_IntegerFormat3;
  v20[5] = @"WarningCount";
  v6 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat4 = [v6 commonTypeDict_IntegerFormat];
  v21[5] = commonTypeDict_IntegerFormat4;
  v20[6] = @"SafetyDropCount";
  v8 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat5 = [v8 commonTypeDict_IntegerFormat];
  v21[6] = commonTypeDict_IntegerFormat5;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:7];
  v25[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

  return v11;
}

+ (id)entryEventPointDefinitions
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"OTA";
  entryEventPointDefinitionOTA = [self entryEventPointDefinitionOTA];
  v11[0] = entryEventPointDefinitionOTA;
  v10[1] = @"TimeCorrection";
  entryEventPointDefinitionTimeCorrection = [self entryEventPointDefinitionTimeCorrection];
  v11[1] = entryEventPointDefinitionTimeCorrection;
  v10[2] = @"Archive";
  entryEventPointDefinitionArchive = [self entryEventPointDefinitionArchive];
  v11[2] = entryEventPointDefinitionArchive;
  v10[3] = @"PLLog";
  entryEventPointDefinitionPLLog = [self entryEventPointDefinitionPLLog];
  v11[3] = entryEventPointDefinitionPLLog;
  v10[4] = @"CacheFlush";
  entryEventPointDefinitionCacheFlush = [self entryEventPointDefinitionCacheFlush];
  v11[4] = entryEventPointDefinitionCacheFlush;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

+ (id)entryEventPointDefinitionCacheFlush
{
  v25[3] = *MEMORY[0x1E69E9840];
  if (+[PLPlatform isiOS](PLPlatform, "isiOS") && +[PLPlatform internalBuild])
  {
    v24[0] = @"Configs";
    v22[0] = @"SchemaVersion";
    v22[1] = @"OnDemandQuery";
    v23[0] = &unk_1F540A3D0;
    v23[1] = MEMORY[0x1E695E110];
    v22[2] = @"DynamicDefinition";
    v23[2] = MEMORY[0x1E695E118];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v25[0] = v15;
    v24[1] = @"Keys";
    v20[0] = @"Reason";
    v14 = +[PLEntryDefinition sharedInstance];
    commonTypeDict_StringFormat = [v14 commonTypeDict_StringFormat];
    v20[1] = @"Size";
    v21[0] = commonTypeDict_StringFormat;
    v2 = +[PLEntryDefinition sharedInstance];
    commonTypeDict_IntegerFormat = [v2 commonTypeDict_IntegerFormat];
    v21[1] = commonTypeDict_IntegerFormat;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v25[1] = v4;
    v24[2] = @"DynamicKeys";
    v18[0] = @"key";
    v16 = @"TableName";
    v5 = +[PLEntryDefinition sharedInstance];
    commonTypeDict_StringFormat2 = [v5 commonTypeDict_StringFormat];
    v17 = commonTypeDict_StringFormat2;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v18[1] = @"value";
    v19[0] = v7;
    v8 = +[PLEntryDefinition sharedInstance];
    commonTypeDict_IntegerFormat2 = [v8 commonTypeDict_IntegerFormat];
    v19[1] = commonTypeDict_IntegerFormat2;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v25[2] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  return v11;
}

+ (id)entryEventPointDefinitionOTA
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16[0] = @"Configs";
  v14[0] = @"SchemaVersion";
  v14[1] = @"OnDemandQuery";
  v15[0] = &unk_1F540A3E0;
  v15[1] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v2;
  v16[1] = @"Keys";
  v12[0] = @"Type";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat = [v3 commonTypeDict_StringFormat];
  v13[0] = commonTypeDict_StringFormat;
  v12[1] = @"Name";
  v5 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat2 = [v5 commonTypeDict_StringFormat];
  v13[1] = commonTypeDict_StringFormat2;
  v12[2] = @"Success";
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_BoolFormat = [v7 commonTypeDict_BoolFormat];
  v13[2] = commonTypeDict_BoolFormat;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v17[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

+ (id)entryEventPointDefinitionTimeCorrection
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18[0] = @"Configs";
  v16[0] = @"SchemaVersion";
  v16[1] = @"OnDemandQuery";
  v17[0] = &unk_1F540A3C0;
  v17[1] = MEMORY[0x1E695E110];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v13;
  v18[1] = @"Keys";
  v14[0] = @"TimeReferenceType";
  v2 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v2 commonTypeDict_IntegerFormat];
  v15[0] = commonTypeDict_IntegerFormat;
  v14[1] = @"TimeInReference";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_DateFormat = [v4 commonTypeDict_DateFormat];
  v15[1] = commonTypeDict_DateFormat;
  v14[2] = @"ProjectedTimeInMonotonic";
  v6 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_DateFormat2 = [v6 commonTypeDict_DateFormat];
  v15[2] = commonTypeDict_DateFormat2;
  v14[3] = @"CallStack";
  v8 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat = [v8 commonTypeDict_StringFormat];
  v15[3] = commonTypeDict_StringFormat;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v19[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v11;
}

+ (id)entryEventPointDefinitionArchive
{
  v33[2] = *MEMORY[0x1E69E9840];
  v32[0] = @"Configs";
  v30[0] = @"SchemaVersion";
  v30[1] = @"OnDemandQuery";
  v31[0] = &unk_1F540A3F0;
  v31[1] = MEMORY[0x1E695E110];
  v30[2] = @"TrimConditionsTemplate";
  v30[3] = @"TrimConditionsTemplateArg";
  v31[2] = &unk_1F5406108;
  v31[3] = &unk_1F540A400;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];
  v33[0] = v27;
  v32[1] = @"Keys";
  v28[0] = @"StartDate";
  v26 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_DateFormat = [v26 commonTypeDict_DateFormat];
  v29[0] = commonTypeDict_DateFormat;
  v28[1] = @"EndDate";
  v24 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_DateFormat2 = [v24 commonTypeDict_DateFormat];
  v29[1] = commonTypeDict_DateFormat2;
  v28[2] = @"SystemTimeOffset";
  v22 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_RealFormat = [v22 commonTypeDict_RealFormat];
  v29[2] = commonTypeDict_RealFormat;
  v28[3] = @"SystemTimeOffsetModified";
  v20 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_BoolFormat = [v20 commonTypeDict_BoolFormat];
  v29[3] = commonTypeDict_BoolFormat;
  v28[4] = @"UUID";
  v18 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat = [v18 commonTypeDict_StringFormat];
  v29[4] = commonTypeDict_StringFormat;
  v28[5] = @"FullMode";
  v16 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_BoolFormat2 = [v16 commonTypeDict_BoolFormat];
  v29[5] = commonTypeDict_BoolFormat2;
  v28[6] = @"Stage";
  v14 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v14 commonTypeDict_IntegerFormat];
  v29[6] = commonTypeDict_IntegerFormat;
  v28[7] = @"NumAttempts";
  v2 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v2 commonTypeDict_IntegerFormat];
  v29[7] = commonTypeDict_IntegerFormat2;
  v28[8] = @"SyncedOffDate";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_DateFormat3 = [v4 commonTypeDict_DateFormat];
  v29[8] = commonTypeDict_DateFormat3;
  v28[9] = @"RemovedDate";
  v6 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_DateFormat4 = [v6 commonTypeDict_DateFormat];
  v29[9] = commonTypeDict_DateFormat4;
  v28[10] = @"MainDBSizeAtStart";
  v8 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v8 commonTypeDict_IntegerFormat];
  v29[10] = commonTypeDict_IntegerFormat3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:11];
  v33[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

  return v11;
}

+ (id)entryEventPointDefinitionPLLog
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18[0] = @"Configs";
  v16[0] = @"SchemaVersion";
  v16[1] = @"OnDemandQuery";
  v17[0] = &unk_1F540A410;
  v17[1] = MEMORY[0x1E695E110];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v13;
  v18[1] = @"Keys";
  v14[0] = @"file";
  v2 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat = [v2 commonTypeDict_StringFormat];
  v15[0] = commonTypeDict_StringFormat;
  v14[1] = @"function";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat2 = [v4 commonTypeDict_StringFormat];
  v15[1] = commonTypeDict_StringFormat2;
  v14[2] = @"line";
  v6 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v6 commonTypeDict_IntegerFormat];
  v15[2] = commonTypeDict_IntegerFormat;
  v14[3] = @"message";
  v8 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat3 = [v8 commonTypeDict_StringFormat];
  v15[3] = commonTypeDict_StringFormat3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v19[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v11;
}

+ (id)entryEventForwardDefinitions
{
  v12[6] = *MEMORY[0x1E69E9840];
  v11[0] = @"SchemaChange";
  entryEventForwardDefinitionSchemaChange = [self entryEventForwardDefinitionSchemaChange];
  v12[0] = entryEventForwardDefinitionSchemaChange;
  v11[1] = @"Configuration";
  entryEventForwardDefinitionConfiguration = [self entryEventForwardDefinitionConfiguration];
  v12[1] = entryEventForwardDefinitionConfiguration;
  v11[2] = @"TimeOffset";
  entryEventForwardDefinitionTimeOffset = [self entryEventForwardDefinitionTimeOffset];
  v12[2] = entryEventForwardDefinitionTimeOffset;
  v11[3] = @"ActivityStates";
  entryEventForwardDefinitionActivityStates = [self entryEventForwardDefinitionActivityStates];
  v12[3] = entryEventForwardDefinitionActivityStates;
  v11[4] = @"TaskingMode";
  entryEventForwardDefinitionTaskingMode = [self entryEventForwardDefinitionTaskingMode];
  v12[4] = entryEventForwardDefinitionTaskingMode;
  v11[5] = @"SubmissionTag";
  entryEventForwardDefinitionSubmissionTag = [self entryEventForwardDefinitionSubmissionTag];
  v12[5] = entryEventForwardDefinitionSubmissionTag;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

+ (id)entryEventForwardDefinitionConfiguration
{
  v23[2] = *MEMORY[0x1E69E9840];
  v22[0] = @"Configs";
  v20[0] = @"SchemaVersion";
  v20[1] = @"OnDemandQuery";
  v21[0] = &unk_1F540A420;
  v21[1] = MEMORY[0x1E695E110];
  v20[2] = @"TrimConditionsTemplate";
  v20[3] = @"TrimConditionsTemplateArg";
  v21[2] = &unk_1F5406108;
  v21[3] = &unk_1F540A430;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v23[0] = v17;
  v22[1] = @"Keys";
  v18[0] = @"Mode";
  v16 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat = [v16 commonTypeDict_StringFormat];
  v19[0] = commonTypeDict_StringFormat;
  v18[1] = @"Version";
  v14 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_RealFormat = [v14 commonTypeDict_RealFormat];
  v19[1] = commonTypeDict_RealFormat;
  v18[2] = @"PID";
  v2 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v2 commonTypeDict_IntegerFormat];
  v19[2] = commonTypeDict_IntegerFormat;
  v18[3] = @"ProcessName";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat2 = [v4 commonTypeDict_StringFormat];
  v19[3] = commonTypeDict_StringFormat2;
  v18[4] = @"ExitReason";
  v6 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v6 commonTypeDict_IntegerFormat];
  v19[4] = commonTypeDict_IntegerFormat2;
  v18[5] = @"DefaultsEnabled";
  v8 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat3 = [v8 commonTypeDict_StringFormat];
  v19[5] = commonTypeDict_StringFormat3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];
  v23[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  return v11;
}

+ (id)entryEventForwardDefinitionSchemaChange
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16[0] = @"Configs";
  v14[0] = @"SchemaVersion";
  v14[1] = @"OnDemandQuery";
  v15[0] = &unk_1F540A440;
  v15[1] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v2;
  v16[1] = @"Keys";
  v12[0] = @"TableName";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat = [v3 commonTypeDict_StringFormat];
  v13[0] = commonTypeDict_StringFormat;
  v12[1] = @"PreviousVersion";
  v5 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_RealFormat = [v5 commonTypeDict_RealFormat];
  v13[1] = commonTypeDict_RealFormat;
  v12[2] = @"CurrentVersion";
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_RealFormat2 = [v7 commonTypeDict_RealFormat];
  v13[2] = commonTypeDict_RealFormat2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v17[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

+ (id)entryEventForwardDefinitionTimeOffset
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16[0] = @"Configs";
  v14[0] = @"SchemaVersion";
  v14[1] = @"OnDemandQuery";
  v15[0] = &unk_1F540A3C0;
  v15[1] = MEMORY[0x1E695E110];
  v14[2] = @"TrimConditionsTemplate";
  v14[3] = @"TrimConditionsTemplateArg";
  v15[2] = &unk_1F5406108;
  v15[3] = &unk_1F540A430;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v17[0] = v2;
  v16[1] = @"Keys";
  v12[0] = @"kernel";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_RealFormat = [v3 commonTypeDict_RealFormat];
  v13[0] = commonTypeDict_RealFormat;
  v12[1] = @"system";
  v5 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_RealFormat2 = [v5 commonTypeDict_RealFormat];
  v13[1] = commonTypeDict_RealFormat2;
  v12[2] = @"baseband";
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_RealFormat3 = [v7 commonTypeDict_RealFormat];
  v13[2] = commonTypeDict_RealFormat3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v17[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

+ (id)entryEventForwardDefinitionActivityStates
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = @"Configs";
  v12[0] = @"SchemaVersion";
  v12[1] = @"OnDemandQuery";
  v13[0] = &unk_1F540A440;
  v13[1] = MEMORY[0x1E695E110];
  v12[2] = @"TrimConditionsTemplate";
  v12[3] = @"TrimConditionsTemplateArg";
  v13[2] = &unk_1F5406108;
  v13[3] = &unk_1F540A430;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v15[0] = v2;
  v14[1] = @"Keys";
  v10[0] = @"ActivityID";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v3 commonTypeDict_IntegerFormat];
  v10[1] = @"State";
  v11[0] = commonTypeDict_IntegerFormat;
  v5 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v5 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventForwardDefinitionTaskingMode
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16[0] = @"Configs";
  v14[0] = @"SchemaVersion";
  v14[1] = @"OnDemandQuery";
  v15[0] = &unk_1F540A410;
  v15[1] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v2;
  v16[1] = @"Keys";
  v12[0] = @"Action";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v3 commonTypeDict_IntegerFormat];
  v13[0] = commonTypeDict_IntegerFormat;
  v12[1] = @"ErrorType";
  v5 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v5 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat2;
  v12[2] = @"TaskingTablesPayload";
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat = [v7 commonTypeDict_StringFormat];
  v13[2] = commonTypeDict_StringFormat;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v17[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

+ (id)entryEventForwardDefinitionSubmissionTag
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = @"Configs";
  v12[0] = @"SchemaVersion";
  v12[1] = @"TrimConditionsTemplate";
  v13[0] = &unk_1F540A410;
  v13[1] = &unk_1F5406120;
  v12[2] = @"TrimConditionsTemplateArg";
  v13[2] = &unk_1F5406138;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v15[0] = v2;
  v14[1] = @"Keys";
  v10[0] = @"UUIDTag";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat = [v3 commonTypeDict_StringFormat];
  v10[1] = @"Reason";
  v11[0] = commonTypeDict_StringFormat;
  v5 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat2 = [v5 commonTypeDict_StringFormat];
  v11[1] = commonTypeDict_StringFormat2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventNoneDefinitions
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"Activity";
  entryEventNoneDefinitionActivity = [self entryEventNoneDefinitionActivity];
  v7[1] = @"AdditionalTablesTurnedOn";
  v8[0] = entryEventNoneDefinitionActivity;
  entryEventNoneDefinitionAdditionalTablesTurnedOn = [self entryEventNoneDefinitionAdditionalTablesTurnedOn];
  v8[1] = entryEventNoneDefinitionAdditionalTablesTurnedOn;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryEventNoneDefinitionActivity
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16[0] = @"Configs";
  v14[0] = @"SchemaVersion";
  v14[1] = @"OnDemandQuery";
  v15[0] = &unk_1F540A3C0;
  v15[1] = MEMORY[0x1E695E110];
  v14[2] = @"TrimConditionsTemplate";
  v15[2] = &unk_1F5406150;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[0] = v2;
  v16[1] = @"Keys";
  v12[0] = @"Identifier";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat = [v3 commonTypeDict_StringFormat];
  v13[0] = commonTypeDict_StringFormat;
  v12[1] = @"Criteria";
  v5 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat2 = [v5 commonTypeDict_StringFormat];
  v13[1] = commonTypeDict_StringFormat2;
  v12[2] = @"MustRunCriterion";
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat3 = [v7 commonTypeDict_StringFormat];
  v13[2] = commonTypeDict_StringFormat3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v17[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

+ (id)entryEventNoneDefinitionAdditionalTablesTurnedOn
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"Configs";
  v10[0] = @"SchemaVersion";
  v10[1] = @"OnDemandQuery";
  v11[0] = &unk_1F540A3C0;
  v11[1] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v13[0] = v2;
  v12[1] = @"Keys";
  v8 = @"TableName";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat = [v3 commonTypeDict_StringFormat];
  v9 = commonTypeDict_StringFormat;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v13[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

+ (id)eventIntervalCacheSizeWithPayload:(id)payload withEntryDate:(id)date
{
  dateCopy = date;
  payloadCopy = payload;
  v7 = [objc_opt_class() entryKeyForType:@"EventInterval" andName:@"CacheSize"];
  v8 = [[PLEntry alloc] initWithEntryKey:v7 withDate:dateCopy];

  [(PLEntry *)v8 setObjectsFromRawData:payloadCopy];

  return v8;
}

+ (id)eventPointCacheFlushWithPayload:(id)payload
{
  v38 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v27 = [objc_opt_class() entryKeyForType:@"EventPoint" andName:@"CacheFlush"];
  v3 = [[PLEntry alloc] initWithEntryKey:v27];
  v4 = [payloadCopy objectForKeyedSubscript:@"Reason"];
  [(PLEntry *)v3 setObject:v4 forKeyedSubscript:@"Reason"];

  v5 = [payloadCopy objectForKeyedSubscript:@"Size"];
  [(PLEntry *)v3 setObject:v5 forKeyedSubscript:@"Size"];

  if (_os_feature_enabled_impl())
  {
    v6 = +[PLStorageCache sharedStorageCache];
    cacheContent = [v6 cacheContent];
    v8 = [cacheContent copy];

    v10 = PLLogCommon(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(PLStorageOperator *)v8 eventPointCacheFlushWithPayload:v10];
    }

    v11 = +[PLStorageCache sharedStorageCache];
    obj = [v11 cacheContent];

    objc_sync_enter(obj);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v13)
    {
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = [v12 objectForKeyedSubscript:v16];
          v18 = [v17 intValue] > 50;

          if (v18)
          {
            v20 = PLLogCommon(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v36 = v16;
              _os_log_debug_impl(&dword_1D8611000, v20, OS_LOG_TYPE_DEBUG, "Flush cache cacheContent tableEntry: %@", buf, 0xCu);
            }

            v33 = @"TableName";
            v34 = v16;
            v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            v22 = [v12 objectForKeyedSubscript:v16];
            [(PLEntry *)v3 setObject:v22 forKeyedSubscript:v21];
          }

          else
          {
            v21 = PLLogCommon(v19);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v36 = v16;
              _os_log_debug_impl(&dword_1D8611000, v21, OS_LOG_TYPE_DEBUG, "Flush cache cacheContent tableEntry's size is less than 50: %@", buf, 0xCu);
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v13);
    }

    v23 = +[PLStorageCache sharedStorageCache];
    cacheContent2 = [v23 cacheContent];
    [cacheContent2 removeAllObjects];

    objc_sync_exit(obj);
  }

  return v3;
}

- (void)logEventPointCacheFlush:(id)flush
{
  flushCopy = flush;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PLStorageOperator_logEventPointCacheFlush___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = flushCopy;
  v6 = flushCopy;
  dispatch_async(workQueue, v7);
}

void __45__PLStorageOperator_logEventPointCacheFlush___block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() eventPointCacheFlushWithPayload:*(a1 + 40)];
  [*(a1 + 32) logEntry:v2];
}

- (void)logEventPointOTA:(id)a
{
  aCopy = a;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__PLStorageOperator_logEventPointOTA___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = aCopy;
  v6 = aCopy;
  dispatch_async(workQueue, v7);
}

void __38__PLStorageOperator_logEventPointOTA___block_invoke(uint64_t a1)
{
  v3 = [objc_opt_class() entryKeyForType:@"EventPoint" andName:@"OTA"];
  v2 = [[PLEntry alloc] initWithEntryKey:v3 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v2];
}

- (void)logEventPointTimeCorrection:(id)correction
{
  correctionCopy = correction;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PLStorageOperator_logEventPointTimeCorrection___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = correctionCopy;
  v6 = correctionCopy;
  dispatch_async(workQueue, v7);
}

void __49__PLStorageOperator_logEventPointTimeCorrection___block_invoke(uint64_t a1)
{
  v3 = [objc_opt_class() entryKeyForType:@"EventPoint" andName:@"TimeCorrection"];
  v2 = [[PLEntry alloc] initWithEntryKey:v3 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v2];
}

- (void)logEventPointArchive:(id)archive
{
  archiveCopy = archive;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__PLStorageOperator_logEventPointArchive___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = archiveCopy;
  v6 = archiveCopy;
  dispatch_async(workQueue, v7);
}

void __42__PLStorageOperator_logEventPointArchive___block_invoke(uint64_t a1)
{
  v3 = [objc_opt_class() entryKeyForType:@"EventPoint" andName:@"Archive"];
  v2 = [[PLEntry alloc] initWithEntryKey:v3 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v2];
}

- (void)logEventPointPLLog:(id)log
{
  logCopy = log;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__PLStorageOperator_logEventPointPLLog___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = logCopy;
  v6 = logCopy;
  dispatch_async(workQueue, v7);
}

void __40__PLStorageOperator_logEventPointPLLog___block_invoke(uint64_t a1)
{
  v3 = [objc_opt_class() entryKeyForType:@"EventPoint" andName:@"PLLog"];
  v2 = [[PLEntry alloc] initWithEntryKey:v3 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v2];
}

- (void)logEventForwardConfiguration:(id)configuration
{
  configurationCopy = configuration;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PLStorageOperator_logEventForwardConfiguration___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(workQueue, v7);
}

void __50__PLStorageOperator_logEventForwardConfiguration___block_invoke(uint64_t a1)
{
  v3 = [objc_opt_class() entryKeyForType:@"EventForward" andName:@"Configuration"];
  v2 = [[PLEntry alloc] initWithEntryKey:v3 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v2];
}

- (void)logEventForwardSchemaChange:(id)change
{
  changeCopy = change;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PLStorageOperator_logEventForwardSchemaChange___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(workQueue, v7);
}

void __49__PLStorageOperator_logEventForwardSchemaChange___block_invoke(uint64_t a1)
{
  v3 = [objc_opt_class() entryKeyForType:@"EventForward" andName:@"SchemaChange"];
  v2 = [[PLEntry alloc] initWithEntryKey:v3 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v2];
}

- (void)logEventForwardTimeOffset:(id)offset
{
  offsetCopy = offset;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PLStorageOperator_logEventForwardTimeOffset___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = offsetCopy;
  v6 = offsetCopy;
  dispatch_async(workQueue, v7);
}

void __47__PLStorageOperator_logEventForwardTimeOffset___block_invoke(uint64_t a1)
{
  v12 = [objc_opt_class() entryKeyForType:@"EventForward" andName:@"TimeOffset"];
  v2 = [[PLEntry alloc] initWithEntryKey:v12 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v2];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [(PLEntry *)v2 entryDate];
  [v3 logForSubsystem:@"PPTStorageOperator" category:@"TimeOffset" data:v4 date:v5];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [(PLEntry *)v2 entryDate];
  [v6 logForSubsystem:@"XcodeMetrics" category:@"TimeOffset" data:v7 date:v8];

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = [(PLEntry *)v2 entryDate];
  [v10 logForSubsystem:@"BackgroundProcessing" category:@"TimeOffset" data:v9 date:v11];
}

- (void)logEventForwardTaskingMode:(id)mode
{
  modeCopy = mode;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PLStorageOperator_logEventForwardTaskingMode___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = modeCopy;
  v6 = modeCopy;
  dispatch_async(workQueue, v7);
}

void __48__PLStorageOperator_logEventForwardTaskingMode___block_invoke(uint64_t a1)
{
  v3 = [objc_opt_class() entryKeyForType:@"EventForward" andName:@"TaskingMode"];
  v2 = [[PLEntry alloc] initWithEntryKey:v3 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v2];
}

- (void)logEventNoneAdditionalTablesTurnedOn:(id)on
{
  onCopy = on;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PLStorageOperator_logEventNoneAdditionalTablesTurnedOn___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = onCopy;
  v6 = onCopy;
  dispatch_async(workQueue, v7);
}

void __58__PLStorageOperator_logEventNoneAdditionalTablesTurnedOn___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() entryKeyForType:@"EventNone" andName:@"AdditionalTablesTurnedOn"];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v13 = a1;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [[PLEntry alloc] initWithEntryKey:v2];
        [(PLEntry *)v10 setObject:v9 forKeyedSubscript:@"TableName"];
        [v3 addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  v11 = *(v13 + 32);
  v18 = v2;
  v19 = v3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v11 logEntries:v12 withGroupID:v2];
}

- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date
{
  keyCopy = key;
  v5 = [(PLOperator *)PLStorageOperator entryKeyForType:@"EventNone" andName:@"Activity"];
  v6 = [(PLOperator *)PLStorageOperator entryKeyForType:@"EventForward" andName:@"ActivityStates"];
  v7 = [keyCopy isEqualToString:v5];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ID NOT IN (SELECT %@ FROM %@)", @"ActivityID", v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)eventPointCacheFlushWithPayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "Flush cache cacheContent:%@", &v2, 0xCu);
}

@end