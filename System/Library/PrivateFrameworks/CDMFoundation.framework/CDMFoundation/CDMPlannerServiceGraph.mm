@interface CDMPlannerServiceGraph
+ (id)responseFeatureStoreStreamId;
@end

@implementation CDMPlannerServiceGraph

+ (id)responseFeatureStoreStreamId
{
  v8 = *MEMORY[0x1E69E9840];
  if (+[CDMPlatformUtils isInternalInstall])
  {
    v2 = @"CdmPlannerResponse";
    v3 = @"CdmPlannerResponse";
  }

  else
  {
    v4 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315138;
      v7 = "+[CDMPlannerServiceGraph responseFeatureStoreStreamId]";
      _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Device not on internal build. Not inserting CdmPlannerResponse to FeatureStore.", &v6, 0xCu);
    }

    v2 = 0;
  }

  return v2;
}

@end