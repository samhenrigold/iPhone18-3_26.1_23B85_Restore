@interface RERelevanceEngineConfiguration
+ (id)_defaultModelFileURL;
+ (id)defaultConfiguration;
+ (id)defaultUpNextConfiguration;
+ (id)sampleUpNextConfiguration;
- (BOOL)allowsDiagnosticExtension;
- (BOOL)allowsRemoteTraining;
- (BOOL)allowsUpdatingModelFile;
- (BOOL)createDefaultRelevanceProviders;
- (BOOL)disableAutomaticContentManagement;
- (BOOL)elementsHiddenByDefault;
- (BOOL)ignoreDeviceLockState;
- (BOOL)ignoresInstalledApplications;
- (BOOL)isEqual:(id)equal;
- (BOOL)wantsBackup;
- (BOOL)wantsImmutableContent;
- (NSArray)interactionDescriptors;
- (NSArray)sectionDescriptors;
- (NSDictionary)featureToConditionMap;
- (NSDictionary)rankingTierFilteringRules;
- (NSString)preferenceDomain;
- (NSURL)baseModelFileURL;
- (NSURL)modelFileURL;
- (NSURL)rankingPropertiesFileURL;
- (OS_dispatch_queue)engineQueue;
- (OS_dispatch_queue)observerQueue;
- (REDataSourceLoader)dataSourceLoader;
- (REFeatureSet)primaryFeatures;
- (RELocationManager)locationManager;
- (REPredictorManager)predictorManager;
- (RERelevanceEngineConfiguration)initWithDictionary:(id)dictionary;
- (RERelevanceEngineMetricsRecorder)metricsRecorder;
- (RERelevanceProviderManagerLoader)relevanceProviderManagerLoader;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueForKey:(id)key ofClass:(Class)class defaultValue:(id)value;
- (unint64_t)modelStorageBehavior;
- (unint64_t)modelVersion;
- (unint64_t)trainingBehavior;
- (void)setValue:(id)value forKey:(id)key ofClass:(Class)class;
@end

@implementation RERelevanceEngineConfiguration

+ (id)defaultConfiguration
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(REInteractionDescriptor);
  [(REInteractionDescriptor *)v2 setName:@"tap"];
  v3 = NSStringFromSelector(sel_sectionDescriptors);
  v12[0] = v3;
  v4 = MEMORY[0x277CBEB18];
  v5 = [RESectionDescriptor defaultSectionDescriptorForIdentifier:@"defaultSectionIdentifier"];
  v6 = [v4 arrayWithObject:v5];
  v13[0] = v6;
  v7 = NSStringFromSelector(sel_interactionDescriptors);
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEB18] arrayWithObject:v2];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [[RERelevanceEngineConfiguration alloc] initWithDictionary:v9];

  return v10;
}

+ (id)_defaultModelFileURL
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/RelevanceEngine/Model/model.mdl"];

  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];

  return v4;
}

- (RERelevanceEngineConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = RERelevanceEngineConfiguration;
  v5 = [(RERelevanceEngineConfiguration *)&v20 init];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    values = v5->_values;
    v5->_values = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    v9 = v5->_values;
    v10 = NSStringFromSelector(sel_sectionDescriptors);
    [(NSMutableDictionary *)v9 setObject:array forKeyedSubscript:v10];

    array2 = [MEMORY[0x277CBEB18] array];
    v12 = v5->_values;
    v13 = NSStringFromSelector(sel_interactionDescriptors);
    [(NSMutableDictionary *)v12 setObject:array2 forKeyedSubscript:v13];

    _defaultModelFileURL = [objc_opt_class() _defaultModelFileURL];
    v15 = v5->_values;
    v16 = NSStringFromSelector(sel_baseModelFileURL);
    [(NSMutableDictionary *)v15 setObject:_defaultModelFileURL forKeyedSubscript:v16];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__RERelevanceEngineConfiguration_initWithDictionary___block_invoke;
    v18[3] = &unk_2785F9940;
    v19 = v5;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v18];
  }

  return v5;
}

void __53__RERelevanceEngineConfiguration_initWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277CBEB18];
LABEL_5:
    v7 = [[v6 alloc] initWithArray:v10 copyItems:1];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277CBEA60];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x277CBEB38];
LABEL_13:
    v7 = [[v9 alloc] initWithDictionary:v10 copyItems:1];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x277CBEAC0];
    goto LABEL_13;
  }

  if ([v10 conformsToProtocol:&unk_283BBE6F8])
  {
    v7 = [v10 copy];
  }

  else
  {
    v7 = v10;
  }

LABEL_6:
  v8 = v7;

  [*(*(a1 + 32) + 8) setObject:v8 forKeyedSubscript:v5];
}

- (id)valueForKey:(id)key ofClass:(Class)class defaultValue:(id)value
{
  valueCopy = value;
  v9 = [(NSMutableDictionary *)self->_values objectForKeyedSubscript:key];
  if (class && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
  }

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = valueCopy;
  }

  v11 = v10;

  return v10;
}

- (void)setValue:(id)value forKey:(id)key ofClass:(Class)class
{
  valueCopy = value;
  keyCopy = key;
  if (class && (objc_opt_isKindOfClass() & 1) == 0)
  {

    valueCopy = 0;
  }

  if (setValue_forKey_ofClass__onceToken != -1)
  {
    [RERelevanceEngineConfiguration setValue:forKey:ofClass:];
  }

  v9 = [setValue_forKey_ofClass__EmptyConfig valueForKey:keyCopy];
  v10 = [v9 isEqual:valueCopy];

  if (v10)
  {

    v11 = 0;
  }

  else
  {
    v11 = valueCopy;
  }

  v13 = v11;
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

uint64_t __58__RERelevanceEngineConfiguration_setValue_forKey_ofClass___block_invoke()
{
  v0 = [[RERelevanceEngineConfiguration alloc] initWithDictionary:0];
  v1 = setValue_forKey_ofClass__EmptyConfig;
  setValue_forKey_ofClass__EmptyConfig = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      values = self->_values;
      v6 = equalCopy->_values;
      v7 = values;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSMutableDictionary *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [REMutableRelevanceEngineConfiguration alloc];
  values = self->_values;

  return [(RERelevanceEngineConfiguration *)v4 initWithDictionary:values];
}

- (OS_dispatch_queue)engineQueue
{
  v3 = NSStringFromSelector(sel_engineQueue);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:0 defaultValue:0];

  return v4;
}

- (OS_dispatch_queue)observerQueue
{
  v3 = NSStringFromSelector(sel_observerQueue);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:0 defaultValue:MEMORY[0x277D85CD0]];

  return v4;
}

- (NSURL)modelFileURL
{
  v3 = NSStringFromSelector(sel_modelFileURL);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:0];

  return v4;
}

- (NSURL)baseModelFileURL
{
  v3 = NSStringFromSelector(sel_baseModelFileURL);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:0];

  return v4;
}

- (unint64_t)modelVersion
{
  v3 = NSStringFromSelector(sel_modelVersion);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:&unk_283BBD4D0];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)allowsUpdatingModelFile
{
  v3 = NSStringFromSelector(sel_allowsUpdatingModelFile);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC38]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (REDataSourceLoader)dataSourceLoader
{
  v3 = NSStringFromSelector(sel_dataSourceLoader);
  v4 = objc_opt_class();
  v5 = +[REDataSourceLoader defaultDataSourceLoader];
  v6 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:v4 defaultValue:v5];

  return v6;
}

- (RERelevanceProviderManagerLoader)relevanceProviderManagerLoader
{
  v3 = NSStringFromSelector(sel_relevanceProviderManagerLoader);
  v4 = objc_opt_class();
  v5 = +[RERelevanceProviderManagerLoader disabledRelevanceProviderManagerLoader];
  v6 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:v4 defaultValue:v5];

  return v6;
}

- (REPredictorManager)predictorManager
{
  v3 = NSStringFromSelector(sel_predictorManager);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:0];

  return v4;
}

- (unint64_t)trainingBehavior
{
  v3 = NSStringFromSelector(sel_trainingBehavior);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:&unk_283BBD4E8];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)modelStorageBehavior
{
  v3 = NSStringFromSelector(sel_modelStorageBehavior);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:&unk_283BBD500];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (NSArray)sectionDescriptors
{
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = NSStringFromSelector(sel_sectionDescriptors);
  v5 = [(RERelevanceEngineConfiguration *)self valueForKey:v4 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEBF8]];
  v6 = [v3 initWithArray:v5 copyItems:1];

  return v6;
}

- (NSArray)interactionDescriptors
{
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = NSStringFromSelector(sel_interactionDescriptors);
  v5 = [(RERelevanceEngineConfiguration *)self valueForKey:v4 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEBF8]];
  v6 = [v3 initWithArray:v5 copyItems:1];

  return v6;
}

- (NSDictionary)rankingTierFilteringRules
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = NSStringFromSelector(sel_rankingTierFilteringRules);
  v5 = [(RERelevanceEngineConfiguration *)self valueForKey:v4 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC10]];
  v6 = [v3 initWithDictionary:v5 copyItems:1];

  return v6;
}

- (RELocationManager)locationManager
{
  v3 = NSStringFromSelector(sel_locationManager);
  v4 = objc_opt_class();
  v5 = +[RELocationManager simulatedLocationManager];
  v6 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:v4 defaultValue:v5];

  return v6;
}

- (REFeatureSet)primaryFeatures
{
  v3 = NSStringFromSelector(sel_primaryFeatures);
  v4 = objc_opt_class();
  v5 = +[REFeatureSet featureSet];
  v6 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:v4 defaultValue:v5];

  return v6;
}

- (BOOL)wantsImmutableContent
{
  v3 = NSStringFromSelector(sel_wantsImmutableContent);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (NSString)preferenceDomain
{
  v3 = NSStringFromSelector(sel_preferenceDomain);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:0];

  return v4;
}

- (BOOL)allowsRemoteTraining
{
  v3 = NSStringFromSelector(sel_allowsRemoteTraining);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)wantsBackup
{
  v3 = NSStringFromSelector(sel_wantsBackup);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)ignoreDeviceLockState
{
  v3 = NSStringFromSelector(sel_ignoreDeviceLockState);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)allowsDiagnosticExtension
{
  v3 = NSStringFromSelector(sel_allowsDiagnosticExtension);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (RERelevanceEngineMetricsRecorder)metricsRecorder
{
  v3 = NSStringFromSelector(sel_metricsRecorder);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:0 defaultValue:0];

  return v4;
}

- (BOOL)ignoresInstalledApplications
{
  v3 = NSStringFromSelector(sel_ignoresInstalledApplications);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)createDefaultRelevanceProviders
{
  v3 = NSStringFromSelector(sel_createDefaultRelevanceProviders);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC38]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)disableAutomaticContentManagement
{
  if (disableAutomaticContentManagement_onceToken != -1)
  {
    [RERelevanceEngineConfiguration disableAutomaticContentManagement];
  }

  if (disableAutomaticContentManagement_isHealthProcess)
  {
    return 1;
  }

  v4 = NSStringFromSelector(sel_disableAutomaticContentManagement);
  v5 = [(RERelevanceEngineConfiguration *)self valueForKey:v4 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

void __67__RERelevanceEngineConfiguration_disableAutomaticContentManagement__block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  disableAutomaticContentManagement_isHealthProcess = [v0 isEqual:@"com.apple.healthappd"];
}

- (NSURL)rankingPropertiesFileURL
{
  v3 = NSStringFromSelector(sel_rankingPropertiesFileURL);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:0];

  return v4;
}

- (NSDictionary)featureToConditionMap
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = NSStringFromSelector(sel_featureToConditionMap);
  v5 = [(RERelevanceEngineConfiguration *)self valueForKey:v4 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC10]];
  v6 = [v3 initWithDictionary:v5 copyItems:1];

  return v6;
}

- (BOOL)elementsHiddenByDefault
{
  v3 = NSStringFromSelector(sel_elementsHiddenByDefault);
  v4 = [(RERelevanceEngineConfiguration *)self valueForKey:v3 ofClass:objc_opt_class() defaultValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (id)defaultUpNextConfiguration
{
  if (defaultUpNextConfiguration_onceToken != -1)
  {
    +[RERelevanceEngineConfiguration(REUpNextConfiguration) defaultUpNextConfiguration];
  }

  v3 = defaultUpNextConfiguration_defaultConfiguration;

  return v3;
}

void __83__RERelevanceEngineConfiguration_REUpNextConfiguration__defaultUpNextConfiguration__block_invoke()
{
  v378[1] = *MEMORY[0x277D85DE8];
  v0 = NSHomeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"Library/RelevanceEngine/Model"];

  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:0];

  v237 = v1;
  v229 = [v1 stringByAppendingPathComponent:@"model.mdl"];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [RESectionDescriptor defaultUpNextSectionDescriptorForIdentifier:@"allDaySectionIdentifier"];
  [v3 addObject:v4];

  v5 = [RESectionDescriptor defaultUpNextSectionDescriptorForIdentifier:@"defaultSectionIdentifier"];
  [v3 addObject:v5];

  v6 = [RESectionDescriptor defaultUpNextSectionDescriptorForIdentifier:@"tomorrowSectionIdentifier"];
  [v3 addObject:v6];

  v7 = [RESectionDescriptor defaultUpNextSectionDescriptorForIdentifier:@"upcomingSectionIdentifier"];
  v231 = v3;
  [v3 addObject:v7];

  v8 = [MEMORY[0x277CBEB18] array];
  v9 = objc_alloc_init(REInteractionDescriptor);
  [(REInteractionDescriptor *)v9 setName:@"tap"];
  LODWORD(v10) = 4.0;
  [(REInteractionDescriptor *)v9 setWeight:v10];
  v236 = v9;
  [v8 addObject:v9];
  v11 = objc_alloc_init(REInteractionDescriptor);
  [(REInteractionDescriptor *)v11 setName:@"app-action"];
  LODWORD(v12) = 1.5;
  [(REInteractionDescriptor *)v11 setWeight:v12];
  [(REInteractionDescriptor *)v11 setEnableExploreExploit:0];
  v13 = +[REFeature dataSourceFeature];
  [(REInteractionDescriptor *)v11 setIdentificationFeature:v13];

  v235 = v11;
  [v8 addObject:v11];
  v14 = objc_alloc_init(REInteractionDescriptor);
  [(REInteractionDescriptor *)v14 setName:@"action"];
  LODWORD(v15) = 1.0;
  [(REInteractionDescriptor *)v14 setWeight:v15];
  [(REInteractionDescriptor *)v14 setEnableExploreExploit:0];
  v16 = +[REFeature dataSourceFeature];
  [(REInteractionDescriptor *)v14 setIdentificationFeature:v16];

  v232 = v8;
  v234 = v14;
  [v8 addObject:v14];
  v17 = +[REFeatureTransformer hashTransform];
  v18 = +[REFeature dataSourceFeature];
  v378[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v378 count:1];
  v20 = [REFeature transformedFeatureWithTransformer:v17 features:v19];

  v21 = [REFeatureTransformer maskTransformWithWidth:9];
  v377 = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v377 count:1];
  v304 = [REFeature transformedFeatureWithTransformer:v21 features:v22];

  v23 = [REFeatureTransformer maskTransformWithWidth:9];
  v24 = +[REFeature itemIdentifierFeature];
  v376 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v376 count:1];
  v26 = [REFeature transformedFeatureWithTransformer:v23 features:v25];

  v375[0] = v304;
  v375[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v375 count:2];
  v303 = [REFeature crossedFeatureWithFeatures:v27];

  v28 = [REFeatureValue featureValueWithDouble:0.0];
  v29 = [REFeatureValue featureValueWithDouble:1.0];
  v30 = [REFeatureTransformer bucketTransformerWithCount:10 minValue:v28 maxValue:v29];

  v31 = [REFeatureValue featureValueWithDouble:0.0];
  v32 = [REFeatureValue featureValueWithDouble:1.0];
  v33 = [REFeatureTransformer bucketTransformerWithCount:25 minValue:v31 maxValue:v32];

  v34 = +[REFeature dateFeature];
  v374 = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v374 count:1];
  v233 = v33;
  v301 = [REFeature transformedFeatureWithTransformer:v33 features:v35];

  v36 = +[REFeature locationFeature];
  v373 = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v373 count:1];
  v300 = [REFeature transformedFeatureWithTransformer:v30 features:v37];

  v38 = +[REFeature geofenceFeature];
  v372 = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v372 count:1];
  v299 = [REFeature transformedFeatureWithTransformer:v30 features:v39];

  v40 = +[REFeature priorityFeature];
  v371 = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v371 count:1];
  v302 = v30;
  v298 = [REFeature transformedFeatureWithTransformer:v30 features:v41];

  v42 = +[REFeatureTransformer hashTransform];
  v43 = +[REFeature locationOfInterestFeature];
  v370 = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v370 count:1];
  v45 = [REFeature transformedFeatureWithTransformer:v42 features:v44];

  v46 = [REFeatureTransformer maskTransformWithWidth:9];
  v230 = v45;
  v369 = v45;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v369 count:1];
  v297 = [REFeature transformedFeatureWithTransformer:v46 features:v47];

  v48 = [REFeatureTransformer maskTransformWithWidth:5];
  v49 = +[REFeature knownLocationOfInterestFeature];
  v368 = v49;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v368 count:1];
  v296 = [REFeature transformedFeatureWithTransformer:v48 features:v50];

  v51 = +[REFeature appUsageFeature];
  v367 = v51;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v367 count:1];
  v295 = [REFeature transformedFeatureWithTransformer:v30 features:v52];

  v53 = [REFeatureValue featureValueWithDouble:0.0];
  v54 = [REFeatureValue featureValueWithDouble:1.0];
  v55 = [REFeatureTransformer bucketTransformerWithCount:24 minValue:v53 maxValue:v54];
  v56 = +[REFeature currentTimeFeature];
  v366 = v56;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v366 count:1];
  v294 = [REFeature transformedFeatureWithTransformer:v55 features:v57];

  v58 = [REFeatureValue featureValueWithDouble:0.0];
  v59 = [REFeatureValue featureValueWithDouble:1.0];
  v60 = [REFeatureTransformer bucketTransformerWithCount:8 minValue:v58 maxValue:v59];
  v61 = +[REFeature currentTimeFeature];
  v365 = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v365 count:1];
  v293 = [REFeature transformedFeatureWithTransformer:v60 features:v62];

  v63 = [REFeatureValue featureValueWithDouble:0.0];
  v64 = [REFeatureValue featureValueWithDouble:1.0];
  v65 = [REFeatureTransformer bucketTransformerWithCount:2 minValue:v63 maxValue:v64];
  v66 = +[REFeature currentTimeFeature];
  v364 = v66;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v364 count:1];
  v292 = [REFeature transformedFeatureWithTransformer:v65 features:v67];

  v68 = [REFeatureTransformer maskTransformWithWidth:3];
  v69 = +[REFeature dayOfWeekFeature];
  v363 = v69;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v363 count:1];
  v291 = [REFeature transformedFeatureWithTransformer:v68 features:v70];

  v71 = [REFeatureTransformer maskTransformWithWidth:1];
  v72 = +[REFeature isWeekendFeature];
  v362 = v72;
  v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v362 count:1];
  v290 = [REFeature transformedFeatureWithTransformer:v71 features:v73];

  v361[0] = v304;
  v361[1] = v301;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v361 count:2];
  v289 = [REFeature crossedFeatureWithFeatures:v74];

  v360[0] = v304;
  v360[1] = v300;
  v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v360 count:2];
  v288 = [REFeature crossedFeatureWithFeatures:v75];

  v359[0] = v304;
  v359[1] = v299;
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v359 count:2];
  v287 = [REFeature crossedFeatureWithFeatures:v76];

  v358[0] = v304;
  v358[1] = v298;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v358 count:2];
  v286 = [REFeature crossedFeatureWithFeatures:v77];

  v357[0] = v303;
  v357[1] = v301;
  v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v357 count:2];
  v285 = [REFeature crossedFeatureWithFeatures:v78];

  v356[0] = v303;
  v356[1] = v300;
  v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v356 count:2];
  v284 = [REFeature crossedFeatureWithFeatures:v79];

  v355[0] = v303;
  v355[1] = v299;
  v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v355 count:2];
  v283 = [REFeature crossedFeatureWithFeatures:v80];

  v354[0] = v303;
  v354[1] = v298;
  v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v354 count:2];
  v282 = [REFeature crossedFeatureWithFeatures:v81];

  v353[0] = v304;
  v353[1] = v295;
  v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v353 count:2];
  v281 = [REFeature crossedFeatureWithFeatures:v82];

  v352[0] = v304;
  v352[1] = v294;
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v352 count:2];
  v280 = [REFeature crossedFeatureWithFeatures:v83];

  v351[0] = v304;
  v351[1] = v293;
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v351 count:2];
  v279 = [REFeature crossedFeatureWithFeatures:v84];

  v350[0] = v304;
  v350[1] = v292;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v350 count:2];
  v278 = [REFeature crossedFeatureWithFeatures:v85];

  v349[0] = v304;
  v349[1] = v291;
  v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v349 count:2];
  v277 = [REFeature crossedFeatureWithFeatures:v86];

  v348[0] = v304;
  v348[1] = v290;
  v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v348 count:2];
  v276 = [REFeature crossedFeatureWithFeatures:v87];

  v347[0] = v303;
  v347[1] = v294;
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v347 count:2];
  v275 = [REFeature crossedFeatureWithFeatures:v88];

  v346[0] = v303;
  v346[1] = v293;
  v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v346 count:2];
  v274 = [REFeature crossedFeatureWithFeatures:v89];

  v345[0] = v303;
  v345[1] = v292;
  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v345 count:2];
  v273 = [REFeature crossedFeatureWithFeatures:v90];

  v344[0] = v303;
  v344[1] = v291;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v344 count:2];
  v272 = [REFeature crossedFeatureWithFeatures:v91];

  v343[0] = v303;
  v343[1] = v290;
  v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v343 count:2];
  v271 = [REFeature crossedFeatureWithFeatures:v92];

  v342[0] = v304;
  v342[1] = v297;
  v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v342 count:2];
  v270 = [REFeature crossedFeatureWithFeatures:v93];

  v341[0] = v304;
  v341[1] = v296;
  v94 = [MEMORY[0x277CBEA60] arrayWithObjects:v341 count:2];
  v269 = [REFeature crossedFeatureWithFeatures:v94];

  v340[0] = v303;
  v340[1] = v297;
  v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v340 count:2];
  v268 = [REFeature crossedFeatureWithFeatures:v95];

  v339[0] = v303;
  v339[1] = v296;
  v96 = [MEMORY[0x277CBEA60] arrayWithObjects:v339 count:2];
  v267 = [REFeature crossedFeatureWithFeatures:v96];

  v97 = +[REFeature recentSiriActionFeature];
  v338 = v97;
  v98 = [MEMORY[0x277CBEA60] arrayWithObjects:&v338 count:1];
  v266 = [REFeature transformedFeatureWithTransformer:v302 features:v98];

  v99 = [REFeatureValue featureValueWithDouble:0.5];
  v100 = [REFeatureTransformer binaryTransformerWithThreshold:v99];
  v101 = +[REFeature siriActionDailyAveragePerformedCountFeature];
  v337 = v101;
  v102 = [MEMORY[0x277CBEA60] arrayWithObjects:&v337 count:1];
  v265 = [REFeature transformedFeatureWithTransformer:v100 features:v102];

  v103 = [REFeatureTransformer customCategoricalTransformerWithName:@"multipleBy7" block:&__block_literal_global_43_1];
  v104 = +[REFeature siriActionDailyAveragePerformedCountFeature];
  v336 = v104;
  v105 = [MEMORY[0x277CBEA60] arrayWithObjects:&v336 count:1];
  v106 = [REFeature transformedFeatureWithTransformer:v103 features:v105];

  v107 = [REFeatureTransformer maskTransformWithWidth:5];
  v335 = v106;
  v108 = [MEMORY[0x277CBEA60] arrayWithObjects:&v335 count:1];
  v264 = [REFeature transformedFeatureWithTransformer:v107 features:v108];

  v334[0] = v264;
  v334[1] = v304;
  v109 = [MEMORY[0x277CBEA60] arrayWithObjects:v334 count:2];
  v263 = [REFeature crossedFeatureWithFeatures:v109];

  v110 = [REFeatureTransformer bucketTransformerWithBitWidth:3];
  v111 = +[REFeature siriActionPerformedCountFeature];
  v333 = v111;
  v112 = [MEMORY[0x277CBEA60] arrayWithObjects:&v333 count:1];
  v262 = [REFeature transformedFeatureWithTransformer:v110 features:v112];

  v332[0] = v262;
  v332[1] = v304;
  v113 = [MEMORY[0x277CBEA60] arrayWithObjects:v332 count:2];
  v261 = [REFeature crossedFeatureWithFeatures:v113];

  v114 = [REFeatureTransformer customCategoricalTransformerWithName:@"moreThanDailyAverage" featureCount:2 transformation:&__block_literal_global_49];
  v115 = +[REFeature siriActionPerformedCountFeature];
  v331[0] = v115;
  v116 = +[REFeature siriActionDailyAveragePerformedCountFeature];
  v331[1] = v116;
  v117 = [MEMORY[0x277CBEA60] arrayWithObjects:v331 count:2];
  v118 = [REFeature transformedFeatureWithTransformer:v114 features:v117];

  v119 = [REFeatureTransformer maskTransformWithWidth:1];
  v260 = [v118 featureByUsingTransformer:v119];

  v330[0] = v260;
  v330[1] = v304;
  v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v330 count:2];
  v259 = [REFeature crossedFeatureWithFeatures:v120];

  v258 = +[REFeature currentlyPlayingFromAppFeature];
  v329[0] = v258;
  v329[1] = v304;
  v121 = [MEMORY[0x277CBEA60] arrayWithObjects:v329 count:2];
  v257 = [REFeature crossedFeatureWithFeatures:v121];

  v256 = +[REFeature activeWorkoutFeature];
  v328[0] = v256;
  v328[1] = v304;
  v122 = [MEMORY[0x277CBEA60] arrayWithObjects:v328 count:2];
  v255 = [REFeature crossedFeatureWithFeatures:v122];

  v123 = [REFeatureValue featureValueWithDouble:0.0];
  v124 = [REFeatureValue featureValueWithDouble:3.0];
  v125 = [REFeatureTransformer bucketTransformerWithCount:18 minValue:v123 maxValue:v124];

  v126 = +[REFeature activeEnergyCompletionFeature];
  v254 = [v126 featureByUsingTransformer:v125];

  v127 = +[REFeature exerciseTimeCompletionFeature];
  v253 = [v127 featureByUsingTransformer:v125];

  v128 = +[REFeature standHourCompletionFeature];
  v228 = v125;
  v252 = [v128 featureByUsingTransformer:v125];

  v327[0] = v254;
  v327[1] = v304;
  v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v327 count:2];
  v251 = [REFeature crossedFeatureWithFeatures:v129];

  v130 = [REFeatureTransformer customCategoricalTransformerWithName:@"ringClosed" featureCount:1 transformation:&__block_literal_global_54];
  v131 = +[REFeature activeEnergyCompletionFeature];
  v132 = [v131 featureByUsingTransformer:v130];
  v133 = [REFeatureTransformer maskTransformWithWidth:1];
  v250 = [v132 featureByUsingTransformer:v133];

  v134 = +[REFeature exerciseTimeCompletionFeature];
  v135 = [v134 featureByUsingTransformer:v130];
  v136 = [REFeatureTransformer maskTransformWithWidth:1];
  v249 = [v135 featureByUsingTransformer:v136];

  v137 = +[REFeature standHourCompletionFeature];
  v227 = v130;
  v138 = [v137 featureByUsingTransformer:v130];
  v139 = [REFeatureTransformer maskTransformWithWidth:1];
  v248 = [v138 featureByUsingTransformer:v139];

  v326[0] = v250;
  v326[1] = v304;
  v140 = [MEMORY[0x277CBEA60] arrayWithObjects:v326 count:2];
  v247 = [REFeature crossedFeatureWithFeatures:v140];

  v141 = [REFeatureTransformer customCategoricalTransformerWithName:@"allRingsClosed" featureCount:3 transformation:&__block_literal_global_59_0];
  v142 = +[REFeature activeEnergyCompletionFeature];
  v325[0] = v142;
  v143 = +[REFeature exerciseTimeCompletionFeature];
  v325[1] = v143;
  v144 = +[REFeature standHourCompletionFeature];
  v325[2] = v144;
  v145 = [MEMORY[0x277CBEA60] arrayWithObjects:v325 count:3];
  v146 = [REFeature transformedFeatureWithTransformer:v141 features:v145];

  v147 = [REFeatureTransformer maskTransformWithWidth:1];
  v246 = [v146 featureByUsingTransformer:v147];

  v324[0] = v246;
  v324[1] = v304;
  v148 = [MEMORY[0x277CBEA60] arrayWithObjects:v324 count:2];
  v245 = [REFeature crossedFeatureWithFeatures:v148];

  v149 = [REFeatureTransformer customCategoricalTransformerWithName:@"multipleBy7" block:&__block_literal_global_61];
  v150 = +[REFeature dailyAverageWorkoutCountFeature];
  v323 = v150;
  v151 = [MEMORY[0x277CBEA60] arrayWithObjects:&v323 count:1];
  v152 = [REFeature transformedFeatureWithTransformer:v149 features:v151];

  v153 = [REFeatureTransformer maskTransformWithWidth:3];
  v322 = v152;
  v154 = [MEMORY[0x277CBEA60] arrayWithObjects:&v322 count:1];
  v244 = [REFeature transformedFeatureWithTransformer:v153 features:v154];

  v321[0] = v244;
  v321[1] = v304;
  v155 = [MEMORY[0x277CBEA60] arrayWithObjects:v321 count:2];
  v243 = [REFeature crossedFeatureWithFeatures:v155];

  v156 = [REFeatureTransformer bucketTransformerWithBitWidth:3];
  v157 = +[REFeature performedWorkoutCountFeature];
  v320 = v157;
  v158 = [MEMORY[0x277CBEA60] arrayWithObjects:&v320 count:1];
  v159 = [REFeature transformedFeatureWithTransformer:v156 features:v158];

  v319[0] = v159;
  v319[1] = v304;
  v160 = [MEMORY[0x277CBEA60] arrayWithObjects:v319 count:2];
  v242 = [REFeature crossedFeatureWithFeatures:v160];

  v161 = [REFeatureValue featureValueWithDouble:0.0];
  v162 = [REFeatureValue featureValueWithDouble:1.0];
  v163 = [REFeatureTransformer bucketTransformerWithCount:15 minValue:v161 maxValue:v162];

  v164 = +[REFeature sentimentAnalysisFeature];
  v318 = v164;
  v165 = [MEMORY[0x277CBEA60] arrayWithObjects:&v318 count:1];
  v166 = [REFeature transformedFeatureWithTransformer:v163 features:v165];

  v167 = +[REFeature negativeSentimentAnalysisFeature];
  v317 = v167;
  v168 = [MEMORY[0x277CBEA60] arrayWithObjects:&v317 count:1];
  v169 = [REFeature transformedFeatureWithTransformer:v163 features:v168];

  v170 = +[REFeature sentimentAnalysisCertaintyFeature];
  v316 = v170;
  v171 = [MEMORY[0x277CBEA60] arrayWithObjects:&v316 count:1];
  v225 = v163;
  v172 = [REFeature transformedFeatureWithTransformer:v163 features:v171];

  v173 = +[REFeature coreBehaviorTimePredictionFeature];
  v241 = [v173 featureByUsingTransformer:v302];

  v174 = +[REFeature coreBehaviorTimeCoarsePredictionFeature];
  v240 = [v174 featureByUsingTransformer:v302];

  v175 = +[REFeature coreBehaviorDayPredictionFeature];
  v239 = [v175 featureByUsingTransformer:v302];

  v176 = +[REFeature coreBehaviorDayCoarsePredictionFeature];
  v238 = [v176 featureByUsingTransformer:v302];

  v177 = +[REFeature coreBehaviorLocationPredictionFeature];
  v178 = [v177 featureByUsingTransformer:v302];

  v179 = +[REFeature coreBehaviorLocationCoarsePredictionFeature];
  v180 = [v179 featureByUsingTransformer:v302];

  v216 = [REFeatureSet alloc];
  v315[0] = v304;
  v315[1] = v303;
  v315[2] = v301;
  v315[3] = v300;
  v315[4] = v299;
  v315[5] = v298;
  v315[6] = v297;
  v315[7] = v296;
  v315[8] = v289;
  v315[9] = v288;
  v315[10] = v287;
  v315[11] = v286;
  v315[12] = v285;
  v315[13] = v284;
  v315[14] = v283;
  v315[15] = v282;
  v219 = +[REFeature interactionFeature];
  v315[16] = v219;
  v218 = +[REFeature noContentFeature];
  v315[17] = v218;
  v217 = +[REFeature conditionalFeature];
  v315[18] = v217;
  v315[19] = v294;
  v315[20] = v293;
  v315[21] = v292;
  v315[22] = v291;
  v315[23] = v290;
  v315[24] = v280;
  v315[25] = v279;
  v315[26] = v278;
  v315[27] = v277;
  v315[28] = v276;
  v315[29] = v275;
  v315[30] = v274;
  v315[31] = v273;
  v315[32] = v272;
  v315[33] = v271;
  v315[34] = v270;
  v315[35] = v269;
  v315[36] = v268;
  v315[37] = v267;
  v315[38] = v295;
  v315[39] = v281;
  v215 = +[REFeature siriDomainFeature];
  v315[40] = v215;
  v214 = +[REFeature dailyRoutineFeature];
  v315[41] = v214;
  v213 = +[REFeature isInDailyRoutineFeature];
  v315[42] = v213;
  v212 = +[REFeature sessionFeature];
  v315[43] = v212;
  v315[44] = v266;
  v315[45] = v265;
  v315[46] = v264;
  v315[47] = v262;
  v315[48] = v260;
  v315[49] = v263;
  v315[50] = v261;
  v315[51] = v259;
  v223 = v169;
  v224 = v166;
  v315[52] = v166;
  v315[53] = v169;
  v222 = v172;
  v315[54] = v172;
  v211 = +[REFeature isSiriActionFeature];
  v315[55] = v211;
  v210 = +[REFeature isDeveloperDonationFeature];
  v315[56] = v210;
  v209 = +[REFeature nowPlayingStateFeature];
  v315[57] = v209;
  v315[58] = v258;
  v315[59] = v257;
  v315[60] = v256;
  v315[61] = v255;
  v208 = +[REFeature workoutStateFeature];
  v315[62] = v208;
  v315[63] = v244;
  v315[64] = v243;
  v226 = v159;
  v315[65] = v159;
  v315[66] = v242;
  v181 = +[REFeature deviceMotionFeature];
  v315[67] = v181;
  v182 = +[REFeature motionFeature];
  v315[68] = v182;
  v183 = +[REFeature isConnectedToCarFeature];
  v315[69] = v183;
  v184 = +[REFeature isConnectedToBluetoothSpeakerFeature];
  v315[70] = v184;
  v315[71] = v254;
  v315[72] = v253;
  v315[73] = v252;
  v315[74] = v251;
  v315[75] = v250;
  v315[76] = v249;
  v315[77] = v248;
  v315[78] = v247;
  v315[79] = v246;
  v315[80] = v245;
  v315[81] = v241;
  v315[82] = v240;
  v315[83] = v239;
  v315[84] = v238;
  v220 = v180;
  v221 = v178;
  v315[85] = v178;
  v315[86] = v180;
  v185 = +[REFeature coreBehaviorShortcutTypeFeature];
  v315[87] = v185;
  v186 = +[REFeature coreBehaviorEventIdentifierHashFeature];
  v315[88] = v186;
  v187 = +[REFeature coreBehaviorAppIdentifierHashFeature];
  v315[89] = v187;
  v188 = [MEMORY[0x277CBEA60] arrayWithObjects:v315 count:90];
  v189 = [(REFeatureSet *)v216 initWithFeatures:v188];

  v190 = objc_opt_new();
  v191 = [MEMORY[0x277CBEBC0] URLWithString:v229];
  [v190 setModelFileURL:v191];

  [v190 setPrimaryFeatures:v189];
  [v190 setModelVersion:9];
  [v190 setAllowsDiagnosticExtension:1];
  v192 = REBundle([v190 setAllowsRemoteTraining:1]);
  v193 = [v192 pathForResource:@"upnext_model" ofType:@"mdl"];

  if (v193)
  {
    v194 = [MEMORY[0x277CBEBC0] fileURLWithPath:v193];
    [v190 setBaseModelFileURL:v194];
  }

  [v190 setWantsBackup:1];
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v195 = v231;
  v196 = [v195 countByEnumeratingWithState:&v309 objects:v314 count:16];
  if (v196)
  {
    v197 = v196;
    v198 = *v310;
    do
    {
      for (i = 0; i != v197; ++i)
      {
        if (*v310 != v198)
        {
          objc_enumerationMutation(v195);
        }

        [v190 addSectionWithDescriptor:*(*(&v309 + 1) + 8 * i)];
      }

      v197 = [v195 countByEnumeratingWithState:&v309 objects:v314 count:16];
    }

    while (v197);
  }

  v307 = 0u;
  v308 = 0u;
  v305 = 0u;
  v306 = 0u;
  v200 = v232;
  v201 = [v200 countByEnumeratingWithState:&v305 objects:v313 count:16];
  if (v201)
  {
    v202 = v201;
    v203 = *v306;
    do
    {
      for (j = 0; j != v202; ++j)
      {
        if (*v306 != v203)
        {
          objc_enumerationMutation(v200);
        }

        [v190 addInteractionWithDescriptor:*(*(&v305 + 1) + 8 * j)];
      }

      v202 = [v200 countByEnumeratingWithState:&v305 objects:v313 count:16];
    }

    while (v202);
  }

  v205 = objc_opt_new();
  [v190 setMetricsRecorder:v205];

  v206 = [v190 copy];
  v207 = defaultUpNextConfiguration_defaultConfiguration;
  defaultUpNextConfiguration_defaultConfiguration = v206;
}

BOOL __83__RERelevanceEngineConfiguration_REUpNextConfiguration__defaultUpNextConfiguration__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  [v3 doubleValue];
  v5 = v4;
  v6 = [v2 objectAtIndexedSubscript:1];

  [v6 doubleValue];
  v8 = v5 > v7;

  return v8;
}

BOOL __83__RERelevanceEngineConfiguration_REUpNextConfiguration__defaultUpNextConfiguration__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndexedSubscript:0];
  [v2 doubleValue];
  v4 = v3 >= 1.0;

  return v4;
}

BOOL __83__RERelevanceEngineConfiguration_REUpNextConfiguration__defaultUpNextConfiguration__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  [v3 doubleValue];
  v4 = 0;
  if (v5 >= 1.0)
  {
    v6 = [v2 objectAtIndexedSubscript:1];
    [v6 doubleValue];
    if (v7 >= 1.0)
    {
      v8 = [v2 objectAtIndexedSubscript:2];
      [v8 doubleValue];
      v4 = v9 >= 1.0;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)sampleUpNextConfiguration
{
  v39[2] = *MEMORY[0x277D85DE8];
  v2 = +[RERelevanceEngineConfiguration defaultUpNextConfiguration];
  v3 = [v2 mutableCopy];

  sectionDescriptors = [v3 sectionDescriptors];
  v5 = [sectionDescriptors count];

  v6 = 0x277CBE000uLL;
  v36 = v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      sectionDescriptors2 = [v3 sectionDescriptors];
      v9 = [sectionDescriptors2 objectAtIndexedSubscript:v7];

      v11 = RESampleFeature(v10);
      v12 = [RECondition conditionHasValueForFeature:v11];

      v13 = [RERankingRule alloc];
      v14 = RESampleFeature(v13);
      v15 = RESampleFeature(v14);
      v16 = [REComparisonCondition conditionForLeftFeature:v14 relation:-2 rightFeature:v15];
      v17 = [(RERankingRule *)v13 initWithLeftCondition:v12 rightCondition:v12 comparisonCondition:v16 order:1];

      v18 = [REFilteringRule alloc];
      v19 = +[RECondition trueCondition];
      v20 = [(REFilteringRule *)v18 initWithCondition:v19 type:1];

      v21 = MEMORY[0x277CBEB98];
      v39[0] = v17;
      v39[1] = v20;
      v22 = [*(v6 + 2656) arrayWithObjects:v39 count:2];
      v23 = [v21 setWithArray:v22];
      [v9 setRules:v23];

      historicSectionDescriptor = [v9 historicSectionDescriptor];
      if (historicSectionDescriptor)
      {
        v25 = MEMORY[0x277CBEB98];
        v38[0] = v17;
        v38[1] = v20;
        [*(v6 + 2656) arrayWithObjects:v38 count:2];
        v27 = v26 = v6;
        v28 = [v25 setWithArray:v27];
        [historicSectionDescriptor setRules:v28];

        v6 = v26;
        [v9 setHistoricSectionDescriptor:historicSectionDescriptor];
      }

      [v3 removeSectionAtIndex:v7];
      [v3 insertSectionWithDescriptor:v9 atIndex:v7];

      ++v7;
    }

    while (v36 != v7);
  }

  [v3 setAllowsRemoteTraining:{0, v36}];
  [v3 setWantsImmutableContent:1];
  [v3 setAllowsUpdatingModelFile:0];
  [v3 setIgnoreDeviceLockState:1];
  [v3 setTrainingBehavior:0];
  v29 = [REFeatureSet alloc];
  v30 = RESampleFeature(v29);
  v37[0] = v30;
  v31 = +[REFeature noContentFeature];
  v37[1] = v31;
  v32 = [*(v6 + 2656) arrayWithObjects:v37 count:2];
  v33 = [(REFeatureSet *)v29 initWithFeatures:v32];
  [v3 setPrimaryFeatures:v33];

  v34 = [v3 copy];

  return v34;
}

@end