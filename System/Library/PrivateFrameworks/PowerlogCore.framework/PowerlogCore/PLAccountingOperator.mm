@interface PLAccountingOperator
+ (id)entryAggregateDefinitionEnergy;
+ (id)entryAggregateDefinitionQualificationEnergy;
+ (id)entryAggregateDefinitions;
+ (id)entryEventBackwardDefinitionDistributionEvents;
+ (id)entryEventBackwardDefinitionPowerEvents;
+ (id)entryEventBackwardDefinitionQualificationEvents;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionDistributionEvents;
+ (id)entryEventForwardDefinitionPowerEvents;
+ (id)entryEventForwardDefinitionQualificationEvents;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionDistributionEvents;
+ (id)entryEventIntervalDefinitionEnergyEstimateEvents;
+ (id)entryEventIntervalDefinitionPowerEvents;
+ (id)entryEventIntervalDefinitionQualificationEvents;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventNoneDefinitionDistributionRules;
+ (id)entryEventNoneDefinitionNodes;
+ (id)entryEventNoneDefinitionQualificationRules;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionDistributionEvents;
+ (id)entryEventPointDefinitionQualificationEvents;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLAccountingOperator)init;
- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date;
- (void)initOperatorDependancies;
- (void)startAccounting;
@end

@implementation PLAccountingOperator

+ (void)load
{
  if (!+[PLUtilities isPowerexceptionsd](PLUtilities, "isPowerexceptionsd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v3.receiver = self;
    v3.super_class = &OBJC_METACLASS___PLAccountingOperator;
    objc_msgSendSuper2(&v3, sel_load);
  }
}

+ (id)entryEventNoneDefinitions
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"Nodes";
  entryEventNoneDefinitionNodes = [objc_opt_class() entryEventNoneDefinitionNodes];
  v8[0] = entryEventNoneDefinitionNodes;
  v7[1] = @"DistributionRules";
  entryEventNoneDefinitionDistributionRules = [objc_opt_class() entryEventNoneDefinitionDistributionRules];
  v8[1] = entryEventNoneDefinitionDistributionRules;
  v7[2] = @"QualificationRules";
  entryEventNoneDefinitionQualificationRules = [objc_opt_class() entryEventNoneDefinitionQualificationRules];
  v8[2] = entryEventNoneDefinitionQualificationRules;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

+ (id)entryEventNoneDefinitionNodes
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = @"Configs";
  v12[0] = @"SchemaVersion";
  v12[1] = @"TrimConditionsTemplate";
  v13[0] = &unk_1F540A450;
  v13[1] = &unk_1F5406168;
  v12[2] = @"AppIdentifierKeys";
  v13[2] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v15[0] = v2;
  v14[1] = @"Keys";
  v10[0] = @"Name";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [v3 commonTypeDict_StringFormat_withBundleID];
  v10[1] = @"IsPermanent";
  v11[0] = commonTypeDict_StringFormat_withBundleID;
  v5 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v5 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventNoneDefinitionDistributionRules
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16[0] = @"Configs";
  v14[0] = @"SchemaVersion";
  v14[1] = @"TrimConditionsTemplate";
  v15[0] = &unk_1F540A460;
  v15[1] = &unk_1F5406168;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v2;
  v16[1] = @"Keys";
  v12[0] = @"NodeID";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v3 commonTypeDict_IntegerFormat];
  v13[0] = commonTypeDict_IntegerFormat;
  v12[1] = @"RootNodeID";
  v5 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v5 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat2;
  v12[2] = @"DistributionID";
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v7 commonTypeDict_IntegerFormat];
  v13[2] = commonTypeDict_IntegerFormat3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v17[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

+ (id)entryEventNoneDefinitionQualificationRules
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = @"Configs";
  v12[0] = @"SchemaVersion";
  v12[1] = @"TrimConditionsTemplate";
  v13[0] = &unk_1F540A460;
  v13[1] = &unk_1F5406168;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v2;
  v14[1] = @"Keys";
  v10[0] = @"RootNodeID";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v3 commonTypeDict_IntegerFormat];
  v10[1] = @"QualificationID";
  v11[0] = commonTypeDict_IntegerFormat;
  v5 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v5 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventForwardDefinitions
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"PowerEvents";
  entryEventForwardDefinitionPowerEvents = [objc_opt_class() entryEventForwardDefinitionPowerEvents];
  v8[0] = entryEventForwardDefinitionPowerEvents;
  v7[1] = @"DistributionEvents";
  entryEventForwardDefinitionDistributionEvents = [objc_opt_class() entryEventForwardDefinitionDistributionEvents];
  v8[1] = entryEventForwardDefinitionDistributionEvents;
  v7[2] = @"QualificationEvents";
  entryEventForwardDefinitionQualificationEvents = [objc_opt_class() entryEventForwardDefinitionQualificationEvents];
  v8[2] = entryEventForwardDefinitionQualificationEvents;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

+ (id)entryEventForwardDefinitionPowerEvents
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18[0] = @"Configs";
  v16[0] = @"SchemaVersion";
  v16[1] = @"SQLPrepareStatementCaching";
  v17[0] = &unk_1F540A470;
  v17[1] = MEMORY[0x1E695E118];
  v16[2] = @"SubEntryKey";
  v17[2] = @"RootNodeID";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[0] = v2;
  v18[1] = @"Keys";
  v14[0] = @"RootNodeID";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v3 commonTypeDict_IntegerFormat];
  v15[0] = commonTypeDict_IntegerFormat;
  v14[1] = @"Power";
  v5 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v5 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat2;
  v14[2] = @"StartOffset";
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v7 commonTypeDict_IntegerFormat];
  v15[2] = commonTypeDict_IntegerFormat3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v9;
  v18[2] = @"IndexKeys";
  v13 = @"RootNodeID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v19[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

  return v11;
}

+ (id)entryEventForwardDefinitionDistributionEvents
{
  v27[4] = *MEMORY[0x1E69E9840];
  v26[0] = @"Configs";
  v24[0] = @"SchemaVersion";
  v24[1] = @"DynamicDefinition";
  v25[0] = &unk_1F540A470;
  v25[1] = MEMORY[0x1E695E118];
  v24[2] = @"SQLPrepareStatementCaching";
  v24[3] = @"SubEntryKey";
  v25[2] = MEMORY[0x1E695E118];
  v25[3] = @"DistributionID";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v27[0] = v16;
  v26[1] = @"Keys";
  v22[0] = @"DistributionID";
  v15 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v15 commonTypeDict_IntegerFormat];
  v22[1] = @"StartOffset";
  v23[0] = commonTypeDict_IntegerFormat;
  v13 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v13 commonTypeDict_IntegerFormat];
  v23[1] = commonTypeDict_IntegerFormat2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v27[1] = v3;
  v26[2] = @"DynamicKeys";
  v20[0] = @"key";
  v18 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v4 commonTypeDict_IntegerFormat];
  v19 = commonTypeDict_IntegerFormat3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v20[1] = @"value";
  v21[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat4 = [v7 commonTypeDict_IntegerFormat];
  v21[1] = commonTypeDict_IntegerFormat4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v27[2] = v9;
  v26[3] = @"IndexKeys";
  v17[0] = @"DistributionID";
  v17[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v27[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];

  return v11;
}

+ (id)entryEventForwardDefinitionQualificationEvents
{
  v27[4] = *MEMORY[0x1E69E9840];
  v26[0] = @"Configs";
  v24[0] = @"SchemaVersion";
  v24[1] = @"DynamicDefinition";
  v25[0] = &unk_1F540A470;
  v25[1] = MEMORY[0x1E695E118];
  v24[2] = @"SQLPrepareStatementCaching";
  v24[3] = @"SubEntryKey";
  v25[2] = MEMORY[0x1E695E118];
  v25[3] = @"QualificationID";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v27[0] = v16;
  v26[1] = @"Keys";
  v22[0] = @"QualificationID";
  v15 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v15 commonTypeDict_IntegerFormat];
  v22[1] = @"StartOffset";
  v23[0] = commonTypeDict_IntegerFormat;
  v13 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v13 commonTypeDict_IntegerFormat];
  v23[1] = commonTypeDict_IntegerFormat2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v27[1] = v3;
  v26[2] = @"DynamicKeys";
  v20[0] = @"key";
  v18 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v4 commonTypeDict_IntegerFormat];
  v19 = commonTypeDict_IntegerFormat3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v20[1] = @"value";
  v21[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat4 = [v7 commonTypeDict_IntegerFormat];
  v21[1] = commonTypeDict_IntegerFormat4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v27[2] = v9;
  v26[3] = @"IndexKeys";
  v17[0] = @"QualificationID";
  v17[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v27[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];

  return v11;
}

+ (id)entryEventBackwardDefinitions
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"PowerEvents";
  entryEventBackwardDefinitionPowerEvents = [objc_opt_class() entryEventBackwardDefinitionPowerEvents];
  v8[0] = entryEventBackwardDefinitionPowerEvents;
  v7[1] = @"DistributionEvents";
  entryEventBackwardDefinitionDistributionEvents = [objc_opt_class() entryEventBackwardDefinitionDistributionEvents];
  v8[1] = entryEventBackwardDefinitionDistributionEvents;
  v7[2] = @"QualificationEvents";
  entryEventBackwardDefinitionQualificationEvents = [objc_opt_class() entryEventBackwardDefinitionQualificationEvents];
  v8[2] = entryEventBackwardDefinitionQualificationEvents;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

+ (id)entryEventBackwardDefinitionPowerEvents
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18[0] = @"Configs";
  v16[0] = @"SchemaVersion";
  v16[1] = @"SQLPrepareStatementCaching";
  v17[0] = &unk_1F540A470;
  v17[1] = MEMORY[0x1E695E118];
  v16[2] = @"SubEntryKey";
  v17[2] = @"RootNodeID";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[0] = v2;
  v18[1] = @"Keys";
  v14[0] = @"RootNodeID";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v3 commonTypeDict_IntegerFormat];
  v15[0] = commonTypeDict_IntegerFormat;
  v14[1] = @"Power";
  v5 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v5 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat2;
  v14[2] = @"EndOffset";
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v7 commonTypeDict_IntegerFormat];
  v15[2] = commonTypeDict_IntegerFormat3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v9;
  v18[2] = @"IndexKeys";
  v13 = @"RootNodeID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v19[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

  return v11;
}

+ (id)entryEventBackwardDefinitionDistributionEvents
{
  v27[4] = *MEMORY[0x1E69E9840];
  v26[0] = @"Configs";
  v24[0] = @"SchemaVersion";
  v24[1] = @"DynamicDefinition";
  v25[0] = &unk_1F540A470;
  v25[1] = MEMORY[0x1E695E118];
  v24[2] = @"SQLPrepareStatementCaching";
  v24[3] = @"SubEntryKey";
  v25[2] = MEMORY[0x1E695E118];
  v25[3] = @"DistributionID";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v27[0] = v16;
  v26[1] = @"Keys";
  v22[0] = @"DistributionID";
  v15 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v15 commonTypeDict_IntegerFormat];
  v22[1] = @"EndOffset";
  v23[0] = commonTypeDict_IntegerFormat;
  v13 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v13 commonTypeDict_IntegerFormat];
  v23[1] = commonTypeDict_IntegerFormat2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v27[1] = v3;
  v26[2] = @"DynamicKeys";
  v20[0] = @"key";
  v18 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v4 commonTypeDict_IntegerFormat];
  v19 = commonTypeDict_IntegerFormat3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v20[1] = @"value";
  v21[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat4 = [v7 commonTypeDict_IntegerFormat];
  v21[1] = commonTypeDict_IntegerFormat4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v27[2] = v9;
  v26[3] = @"IndexKeys";
  v17[0] = @"DistributionID";
  v17[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v27[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];

  return v11;
}

+ (id)entryEventBackwardDefinitionQualificationEvents
{
  v27[4] = *MEMORY[0x1E69E9840];
  v26[0] = @"Configs";
  v24[0] = @"SchemaVersion";
  v24[1] = @"DynamicDefinition";
  v25[0] = &unk_1F540A470;
  v25[1] = MEMORY[0x1E695E118];
  v24[2] = @"SQLPrepareStatementCaching";
  v24[3] = @"SubEntryKey";
  v25[2] = MEMORY[0x1E695E118];
  v25[3] = @"QualificationID";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v27[0] = v16;
  v26[1] = @"Keys";
  v22[0] = @"QualificationID";
  v15 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v15 commonTypeDict_IntegerFormat];
  v22[1] = @"EndOffset";
  v23[0] = commonTypeDict_IntegerFormat;
  v13 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v13 commonTypeDict_IntegerFormat];
  v23[1] = commonTypeDict_IntegerFormat2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v27[1] = v3;
  v26[2] = @"DynamicKeys";
  v20[0] = @"key";
  v18 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v4 commonTypeDict_IntegerFormat];
  v19 = commonTypeDict_IntegerFormat3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v20[1] = @"value";
  v21[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat4 = [v7 commonTypeDict_IntegerFormat];
  v21[1] = commonTypeDict_IntegerFormat4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v27[2] = v9;
  v26[3] = @"IndexKeys";
  v17[0] = @"QualificationID";
  v17[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v27[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];

  return v11;
}

+ (id)entryEventIntervalDefinitions
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"PowerEvents";
  entryEventIntervalDefinitionPowerEvents = [objc_opt_class() entryEventIntervalDefinitionPowerEvents];
  v9[0] = entryEventIntervalDefinitionPowerEvents;
  v8[1] = @"EnergyEstimateEvents";
  entryEventIntervalDefinitionEnergyEstimateEvents = [objc_opt_class() entryEventIntervalDefinitionEnergyEstimateEvents];
  v9[1] = entryEventIntervalDefinitionEnergyEstimateEvents;
  v8[2] = @"DistributionEvents";
  entryEventIntervalDefinitionDistributionEvents = [objc_opt_class() entryEventIntervalDefinitionDistributionEvents];
  v9[2] = entryEventIntervalDefinitionDistributionEvents;
  v8[3] = @"QualificationEvents";
  entryEventIntervalDefinitionQualificationEvents = [objc_opt_class() entryEventIntervalDefinitionQualificationEvents];
  v9[3] = entryEventIntervalDefinitionQualificationEvents;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

+ (id)entryEventIntervalDefinitionPowerEvents
{
  v21[3] = *MEMORY[0x1E69E9840];
  v20[0] = @"Configs";
  v18[0] = @"SchemaVersion";
  v18[1] = @"SQLPrepareStatementCaching";
  v19[0] = &unk_1F540A470;
  v19[1] = MEMORY[0x1E695E118];
  v18[2] = @"SubEntryKey";
  v19[2] = @"RootNodeID";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v21[0] = v14;
  v20[1] = @"Keys";
  v16[0] = @"RootNodeID";
  v13 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v13 commonTypeDict_IntegerFormat];
  v17[0] = commonTypeDict_IntegerFormat;
  v16[1] = @"Power";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v3 commonTypeDict_IntegerFormat];
  v17[1] = commonTypeDict_IntegerFormat2;
  v16[2] = @"StartOffset";
  v5 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v5 commonTypeDict_IntegerFormat];
  v17[2] = commonTypeDict_IntegerFormat3;
  v16[3] = @"EndOffset";
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat4 = [v7 commonTypeDict_IntegerFormat];
  v17[3] = commonTypeDict_IntegerFormat4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v9;
  v20[2] = @"IndexKeys";
  v15 = @"RootNodeID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v21[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  return v11;
}

+ (id)entryEventIntervalDefinitionEnergyEstimateEvents
{
  v27[2] = *MEMORY[0x1E69E9840];
  v26[0] = @"Configs";
  v24[0] = @"SchemaVersion";
  v24[1] = @"SQLPrepareStatementCaching";
  v25[0] = &unk_1F540A480;
  v25[1] = MEMORY[0x1E695E118];
  v24[2] = @"SubEntryKey";
  v25[2] = @"NodeID";
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v26[1] = @"Keys";
  v27[0] = v21;
  v22[0] = @"NodeID";
  v20 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v20 commonTypeDict_IntegerFormat];
  v23[0] = commonTypeDict_IntegerFormat;
  v22[1] = @"RootNodeID";
  v18 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v18 commonTypeDict_IntegerFormat];
  v23[1] = commonTypeDict_IntegerFormat2;
  v22[2] = @"ParentEntryID";
  v16 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v16 commonTypeDict_IntegerFormat];
  v23[2] = commonTypeDict_IntegerFormat3;
  v22[3] = @"Energy";
  v14 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat4 = [v14 commonTypeDict_IntegerFormat];
  v23[3] = commonTypeDict_IntegerFormat4;
  v22[4] = @"CorrectionEnergy";
  v2 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat5 = [v2 commonTypeDict_IntegerFormat];
  v23[4] = commonTypeDict_IntegerFormat5;
  v22[5] = @"TerminationRatio";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat6 = [v4 commonTypeDict_IntegerFormat];
  v23[5] = commonTypeDict_IntegerFormat6;
  v22[6] = @"StartOffset";
  v6 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat7 = [v6 commonTypeDict_IntegerFormat];
  v23[6] = commonTypeDict_IntegerFormat7;
  v22[7] = @"EndOffset";
  v8 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat8 = [v8 commonTypeDict_IntegerFormat];
  v23[7] = commonTypeDict_IntegerFormat8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:8];
  v27[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

  return v11;
}

+ (id)entryEventIntervalDefinitionDistributionEvents
{
  v29[4] = *MEMORY[0x1E69E9840];
  v28[0] = @"Configs";
  v26[0] = @"SchemaVersion";
  v26[1] = @"DynamicDefinition";
  v27[0] = &unk_1F540A470;
  v27[1] = MEMORY[0x1E695E118];
  v26[2] = @"SQLPrepareStatementCaching";
  v26[3] = @"SubEntryKey";
  v27[2] = MEMORY[0x1E695E118];
  v27[3] = @"DistributionID";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v29[0] = v18;
  v28[1] = @"Keys";
  v24[0] = @"DistributionID";
  v17 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v17 commonTypeDict_IntegerFormat];
  v25[0] = commonTypeDict_IntegerFormat;
  v24[1] = @"StartOffset";
  v15 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v15 commonTypeDict_IntegerFormat];
  v25[1] = commonTypeDict_IntegerFormat2;
  v24[2] = @"EndOffset";
  v13 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v13 commonTypeDict_IntegerFormat];
  v25[2] = commonTypeDict_IntegerFormat3;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v29[1] = v3;
  v28[2] = @"DynamicKeys";
  v22[0] = @"key";
  v20 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat4 = [v4 commonTypeDict_IntegerFormat];
  v21 = commonTypeDict_IntegerFormat4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v22[1] = @"value";
  v23[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat5 = [v7 commonTypeDict_IntegerFormat];
  v23[1] = commonTypeDict_IntegerFormat5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v29[2] = v9;
  v28[3] = @"IndexKeys";
  v19[0] = @"DistributionID";
  v19[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v29[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];

  return v11;
}

+ (id)entryEventIntervalDefinitionQualificationEvents
{
  v29[4] = *MEMORY[0x1E69E9840];
  v28[0] = @"Configs";
  v26[0] = @"SchemaVersion";
  v26[1] = @"DynamicDefinition";
  v27[0] = &unk_1F540A470;
  v27[1] = MEMORY[0x1E695E118];
  v26[2] = @"SQLPrepareStatementCaching";
  v26[3] = @"SubEntryKey";
  v27[2] = MEMORY[0x1E695E118];
  v27[3] = @"QualificationID";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v29[0] = v18;
  v28[1] = @"Keys";
  v24[0] = @"QualificationID";
  v17 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v17 commonTypeDict_IntegerFormat];
  v25[0] = commonTypeDict_IntegerFormat;
  v24[1] = @"StartOffset";
  v15 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v15 commonTypeDict_IntegerFormat];
  v25[1] = commonTypeDict_IntegerFormat2;
  v24[2] = @"EndOffset";
  v13 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v13 commonTypeDict_IntegerFormat];
  v25[2] = commonTypeDict_IntegerFormat3;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v29[1] = v3;
  v28[2] = @"DynamicKeys";
  v22[0] = @"key";
  v20 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat4 = [v4 commonTypeDict_IntegerFormat];
  v21 = commonTypeDict_IntegerFormat4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v22[1] = @"value";
  v23[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat5 = [v7 commonTypeDict_IntegerFormat];
  v23[1] = commonTypeDict_IntegerFormat5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v29[2] = v9;
  v28[3] = @"IndexKeys";
  v19[0] = @"QualificationID";
  v19[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v29[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];

  return v11;
}

+ (id)entryEventPointDefinitions
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"DistributionEvents";
  entryEventPointDefinitionDistributionEvents = [objc_opt_class() entryEventPointDefinitionDistributionEvents];
  v6[1] = @"QualificationEvents";
  v7[0] = entryEventPointDefinitionDistributionEvents;
  entryEventPointDefinitionQualificationEvents = [objc_opt_class() entryEventPointDefinitionQualificationEvents];
  v7[1] = entryEventPointDefinitionQualificationEvents;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)entryEventPointDefinitionDistributionEvents
{
  v27[4] = *MEMORY[0x1E69E9840];
  v26[0] = @"Configs";
  v24[0] = @"SchemaVersion";
  v24[1] = @"DynamicDefinition";
  v25[0] = &unk_1F540A470;
  v25[1] = MEMORY[0x1E695E118];
  v24[2] = @"SQLPrepareStatementCaching";
  v24[3] = @"SubEntryKey";
  v25[2] = MEMORY[0x1E695E118];
  v25[3] = @"DistributionID";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v27[0] = v16;
  v26[1] = @"Keys";
  v22[0] = @"DistributionID";
  v15 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v15 commonTypeDict_IntegerFormat];
  v22[1] = @"StartOffset";
  v23[0] = commonTypeDict_IntegerFormat;
  v13 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v13 commonTypeDict_IntegerFormat];
  v23[1] = commonTypeDict_IntegerFormat2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v27[1] = v3;
  v26[2] = @"DynamicKeys";
  v20[0] = @"key";
  v18 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v4 commonTypeDict_IntegerFormat];
  v19 = commonTypeDict_IntegerFormat3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v20[1] = @"value";
  v21[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat4 = [v7 commonTypeDict_IntegerFormat];
  v21[1] = commonTypeDict_IntegerFormat4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v27[2] = v9;
  v26[3] = @"IndexKeys";
  v17[0] = @"DistributionID";
  v17[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v27[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];

  return v11;
}

+ (id)entryEventPointDefinitionQualificationEvents
{
  v27[4] = *MEMORY[0x1E69E9840];
  v26[0] = @"Configs";
  v24[0] = @"SchemaVersion";
  v24[1] = @"DynamicDefinition";
  v25[0] = &unk_1F540A470;
  v25[1] = MEMORY[0x1E695E118];
  v24[2] = @"SQLPrepareStatementCaching";
  v24[3] = @"SubEntryKey";
  v25[2] = MEMORY[0x1E695E118];
  v25[3] = @"QualificationID";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v27[0] = v16;
  v26[1] = @"Keys";
  v22[0] = @"QualificationID";
  v15 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v15 commonTypeDict_IntegerFormat];
  v22[1] = @"StartOffset";
  v23[0] = commonTypeDict_IntegerFormat;
  v13 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v13 commonTypeDict_IntegerFormat];
  v23[1] = commonTypeDict_IntegerFormat2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v27[1] = v3;
  v26[2] = @"DynamicKeys";
  v20[0] = @"key";
  v18 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v4 commonTypeDict_IntegerFormat];
  v19 = commonTypeDict_IntegerFormat3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v20[1] = @"value";
  v21[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat4 = [v7 commonTypeDict_IntegerFormat];
  v21[1] = commonTypeDict_IntegerFormat4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v27[2] = v9;
  v26[3] = @"IndexKeys";
  v17[0] = @"QualificationID";
  v17[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v27[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];

  return v11;
}

+ (id)entryAggregateDefinitions
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"RootNodeEnergy";
  entryAggregateDefinitionEnergy = [self entryAggregateDefinitionEnergy];
  v7[1] = @"QualificationEnergy";
  v8[0] = entryAggregateDefinitionEnergy;
  entryAggregateDefinitionQualificationEnergy = [self entryAggregateDefinitionQualificationEnergy];
  v8[1] = entryAggregateDefinitionQualificationEnergy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryAggregateDefinitionEnergy
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27[0] = @"Configs";
  v25[0] = @"SchemaVersion";
  v25[1] = @"AggregateWallClockBucket";
  v26[0] = &unk_1F540A470;
  v26[1] = MEMORY[0x1E695E118];
  v25[2] = @"SQLPrepareStatementCaching";
  v25[3] = @"TrimConditionsTemplate";
  v26[2] = MEMORY[0x1E695E118];
  v26[3] = &unk_1F5406168;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v28[0] = v15;
  v27[1] = @"Keys";
  v23[0] = @"NodeID";
  v14 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v14 commonTypeDict_IntegerFormat];
  v24[0] = commonTypeDict_IntegerFormat;
  v23[1] = @"RootNodeID";
  v2 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v2 commonTypeDict_IntegerFormat];
  v24[1] = commonTypeDict_IntegerFormat2;
  v23[2] = @"Energy";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v4 commonTypeDict_IntegerFormat];
  v24[2] = commonTypeDict_IntegerFormat3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v28[1] = v6;
  v27[2] = @"AggregateBuckets";
  v21[0] = &unk_1F540A490;
  v19 = @"AggregateBucketRetainDuration";
  v20 = &unk_1F540A4A0;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v21[1] = &unk_1F540A4B0;
  v22[0] = v7;
  v17 = @"AggregateBucketRetainDuration";
  v18 = &unk_1F540A4C0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v22[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v28[2] = v9;
  v27[3] = @"AggregateKeys";
  v16 = @"Energy";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v28[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];

  return v11;
}

+ (id)entryAggregateDefinitionQualificationEnergy
{
  v30[4] = *MEMORY[0x1E69E9840];
  v29[0] = @"Configs";
  v27[0] = @"SchemaVersion";
  v27[1] = @"AggregateWallClockBucket";
  v28[0] = &unk_1F540A470;
  v28[1] = MEMORY[0x1E695E118];
  v27[2] = @"SQLPrepareStatementCaching";
  v27[3] = @"TrimConditionsTemplate";
  v28[2] = MEMORY[0x1E695E118];
  v28[3] = &unk_1F5406168;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v30[0] = v17;
  v29[1] = @"Keys";
  v25[0] = @"NodeID";
  v16 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v16 commonTypeDict_IntegerFormat];
  v26[0] = commonTypeDict_IntegerFormat;
  v25[1] = @"RootNodeID";
  v14 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v14 commonTypeDict_IntegerFormat];
  v26[1] = commonTypeDict_IntegerFormat2;
  v25[2] = @"QualificationID";
  v2 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v2 commonTypeDict_IntegerFormat];
  v26[2] = commonTypeDict_IntegerFormat3;
  v25[3] = @"Energy";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat4 = [v4 commonTypeDict_IntegerFormat];
  v26[3] = commonTypeDict_IntegerFormat4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v30[1] = v6;
  v29[2] = @"AggregateBuckets";
  v23[0] = &unk_1F540A490;
  v21 = @"AggregateBucketRetainDuration";
  v22 = &unk_1F540A4A0;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v23[1] = &unk_1F540A4B0;
  v24[0] = v7;
  v19 = @"AggregateBucketRetainDuration";
  v20 = &unk_1F540A4C0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v24[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v30[2] = v9;
  v29[3] = @"AggregateKeys";
  v18 = @"Energy";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v30[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];

  return v11;
}

- (PLAccountingOperator)init
{
  v3.receiver = self;
  v3.super_class = PLAccountingOperator;
  return [(PLOperator *)&v3 init];
}

- (void)initOperatorDependancies
{
  if (!+[PLUtilities isPowerlogHelperd])
  {

    +[PLUtilities isPerfPowerMetricd];
  }
}

- (void)startAccounting
{
  [PLEntryKey setupEntryObjectsForOperatorClass:objc_opt_class()];
  v3 = +[PowerlogCore sharedCore];
  storage = [v3 storage];
  [storage setupStorageForOperatorClass:objc_opt_class()];
}

- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date
{
  keyCopy = key;
  v5 = [(PLOperator *)PLAccountingOperator entryKeyForType:@"EventNone" andName:@"Nodes"];
  v6 = [keyCopy isEqualToString:v5];

  monotonicDate = [(PLOperator *)PLAccountingOperator entryKeyForType:@"Aggregate" andName:@"RootNodeEnergy"];
  if (v6)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"(ID > %i) AND (%@ = 0) AND (ID NOT IN (SELECT %@ FROM '%@'))", 10000, @"IsPermanent", @"NodeID", monotonicDate];
    v8 = LABEL_3:;
LABEL_7:

    goto LABEL_8;
  }

  v9 = [keyCopy isEqualToString:monotonicDate];

  if (v9 || (+[PLOperator entryKeyForType:andName:](PLAccountingOperator, "entryKeyForType:andName:", @"Aggregate", @"QualificationEnergy"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [keyCopy isEqualToString:v10], v10, v11))
  {
    v12 = MEMORY[0x1E696AEC0];
    monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
    v13 = [monotonicDate dateByAddingTimeInterval:-1209600.0];
    [v13 timeIntervalSince1970];
    v15 = v14;
    monotonicDate2 = [MEMORY[0x1E695DF00] monotonicDate];
    v17 = [monotonicDate2 dateByAddingTimeInterval:-1209600.0];
    [v17 timeIntervalSince1970];
    v19 = v18;
    monotonicDate3 = [MEMORY[0x1E695DF00] monotonicDate];
    v21 = [monotonicDate3 dateByAddingTimeInterval:-2592000.0];
    [v21 timeIntervalSince1970];
    v8 = [v12 stringWithFormat:@"(timeInterval = %f AND timestamp < %f) OR (timeInterval = %f AND Energy < %f AND timestamp < %f) OR (timeInterval = %f AND timestamp < %f)", 0x40AC200000000000, v15, 0x40F5180000000000, 0x40F86A0000000000, v19, 0x40F5180000000000, v22];

    goto LABEL_7;
  }

  v24 = [(PLOperator *)PLAccountingOperator entryKeyForType:@"EventNone" andName:@"DistributionRules"];
  v25 = [keyCopy isEqualToString:v24];

  if (v25 || (+[PLOperator entryKeyForType:andName:](PLAccountingOperator, "entryKeyForType:andName:", @"EventNone", @"QualificationRules"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [keyCopy isEqualToString:v26], v26, v27))
  {
    v28 = MEMORY[0x1E696AEC0];
    monotonicDate = [MEMORY[0x1E695DF00] distantPast];
    [monotonicDate timeIntervalSince1970];
    [v28 stringWithFormat:@"timestamp<%f", v29, v30, v31, v32];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end