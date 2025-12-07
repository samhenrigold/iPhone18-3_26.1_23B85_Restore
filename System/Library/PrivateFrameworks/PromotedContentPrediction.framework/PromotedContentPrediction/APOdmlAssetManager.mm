@interface APOdmlAssetManager
- (APOdmlAssetManager)initWithNamespace:(id)namespace andClient:(id)client;
- (NSCache)modelCache;
- (NSString)experimentID;
- (NSString)odmlNamespace;
- (NSString)treatmentID;
- (id)BOOLeanValueForFactor:(id)factor;
- (id)currentMLModel;
- (id)doubleValueForFactor:(id)factor;
- (id)featureForName:(id)name;
- (id)featuresForName:(id)name;
- (id)longValueForFactor:(id)factor;
- (id)pathForFactor:(id)factor isDirectory:(BOOL)directory;
- (id)saveFeatureFromObject:(id)object withName:(id)name;
- (id)stringValueForFactor:(id)factor;
- (int)deploymentID;
- (void)deleteExpiredFeaturesForName:(id)name lookbackWindow:(id)window;
@end

@implementation APOdmlAssetManager

- (APOdmlAssetManager)initWithNamespace:(id)namespace andClient:(id)client
{
  namespaceCopy = namespace;
  clientCopy = client;
  v21.receiver = self;
  v21.super_class = APOdmlAssetManager;
  v9 = [(APOdmlAssetManager *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_trialNamespace, namespace);
    if (clientCopy)
    {
      objc_storeStrong(&v10->_trialClient, client);
      v11 = [clientCopy experimentIdentifiersWithNamespaceName:namespaceCopy];
      trialIdentifiers = v10->_trialIdentifiers;
      v10->_trialIdentifiers = v11;

      v13 = [APOdmlFeatureStorage alloc];
      experimentId = [(TRIExperimentIdentifiers *)v10->_trialIdentifiers experimentId];
      treatmentId = [(TRIExperimentIdentifiers *)v10->_trialIdentifiers treatmentId];
      v16 = [(APOdmlFeatureStorage *)v13 initWithExperimentID:experimentId treatmentID:treatmentId deploymentID:[(TRIExperimentIdentifiers *)v10->_trialIdentifiers deploymentId] trialNamespace:namespaceCopy];
      featureStorage = v10->_featureStorage;
      v10->_featureStorage = v16;

      v18 = [[APOdmlUnfairLock alloc] initWithOptions:1];
      modelCacheLock = v10->_modelCacheLock;
      v10->_modelCacheLock = v18;
    }
  }

  return v10;
}

- (NSCache)modelCache
{
  modelCache = self->_modelCache;
  if (!modelCache)
  {
    modelCacheLock = [(APOdmlAssetManager *)self modelCacheLock];
    [modelCacheLock lock];

    if (!self->_modelCache)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
      v6 = self->_modelCache;
      self->_modelCache = v5;

      [(NSCache *)self->_modelCache setCountLimit:3];
    }

    modelCacheLock2 = [(APOdmlAssetManager *)self modelCacheLock];
    [modelCacheLock2 unlock];

    modelCache = self->_modelCache;
  }

  return modelCache;
}

- (int)deploymentID
{
  v11 = *MEMORY[0x277D85DE8];
  trialIdentifiers = [(APOdmlAssetManager *)self trialIdentifiers];

  if (trialIdentifiers)
  {
    trialIdentifiers2 = [(APOdmlAssetManager *)self trialIdentifiers];
    deploymentId = [trialIdentifiers2 deploymentId];

    return deploymentId;
  }

  else
  {
    v7 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = objc_opt_class();
      v8 = v10;
      _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial identifiers, cannot find deploymentID.", &v9, 0xCu);
    }

    return -1;
  }
}

- (NSString)experimentID
{
  v11 = *MEMORY[0x277D85DE8];
  trialIdentifiers = [(APOdmlAssetManager *)self trialIdentifiers];

  if (trialIdentifiers)
  {
    trialIdentifiers2 = [(APOdmlAssetManager *)self trialIdentifiers];
    experimentId = [trialIdentifiers2 experimentId];
  }

  else
  {
    v6 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = objc_opt_class();
      v7 = v10;
      _os_log_impl(&dword_260ECB000, v6, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial identifiers, cannot find experimentID.", &v9, 0xCu);
    }

    experimentId = 0;
  }

  return experimentId;
}

- (NSString)treatmentID
{
  v11 = *MEMORY[0x277D85DE8];
  trialIdentifiers = [(APOdmlAssetManager *)self trialIdentifiers];

  if (trialIdentifiers)
  {
    trialIdentifiers2 = [(APOdmlAssetManager *)self trialIdentifiers];
    treatmentId = [trialIdentifiers2 treatmentId];
  }

  else
  {
    v6 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = objc_opt_class();
      v7 = v10;
      _os_log_impl(&dword_260ECB000, v6, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial identifiers, cannot find treatmentID.", &v9, 0xCu);
    }

    treatmentId = 0;
  }

  return treatmentId;
}

- (NSString)odmlNamespace
{
  v12 = *MEMORY[0x277D85DE8];
  trialNamespace = [(APOdmlAssetManager *)self trialNamespace];

  if (trialNamespace)
  {
    v4 = MEMORY[0x277CCACA8];
    trialNamespace2 = [(APOdmlAssetManager *)self trialNamespace];
    v6 = [v4 stringWithString:trialNamespace2];
  }

  else
  {
    v7 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v8 = v11;
      _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_ERROR, "[%@] No namespace initialized with AssetManager; namespace not found.", &v10, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)currentMLModel
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = 0x277CBE000uLL;
  date = [MEMORY[0x277CBEAA8] date];
  trialClient = [(APOdmlAssetManager *)self trialClient];

  if (trialClient)
  {
    v6 = [(APOdmlAssetManager *)self pathForFactor:@"PTTRMLModel" isDirectory:1];
    modelCache = [(APOdmlAssetManager *)self modelCache];
    v8 = [modelCache objectForKey:v6];

    if (v8)
    {
      modelCache2 = OdmlLogForCategory(0);
      if (os_log_type_enabled(modelCache2, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = v10;
        v12 = [v6 description];
        *buf = 138412546;
        v38 = v10;
        v39 = 2112;
        v40 = v12;
        _os_log_impl(&dword_260ECB000, modelCache2, OS_LOG_TYPE_DEFAULT, "[%@] Returning cached model for %@.", buf, 0x16u);

        v3 = 0x277CBE000;
      }
    }

    else
    {
      v15 = [(APOdmlAssetManager *)self BOOLeanValueForFactor:@"PredictionUsesCPUOnly"];
      bOOLValue = [v15 BOOLValue];

      v17 = [MEMORY[0x277CBFF20] modelFromCompiledURL:v6 isCPUOnly:bOOLValue];
      if (!v17)
      {
        v33 = OdmlLogForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v38 = objc_opt_class();
          v34 = v38;
          _os_log_impl(&dword_260ECB000, v33, OS_LOG_TYPE_ERROR, "[%@] Could not open model.", buf, 0xCu);
        }

        metadata = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlRerankingErrorDomain" code:2010 userInfo:0];
        [APOdmlAnalyticsReranking sendEvent:metadata additionalDetails:0];
        v8 = 0;
        v22 = @"ERROR: Could not find valid model description.";
        goto LABEL_15;
      }

      v8 = v17;
      modelCache2 = [(APOdmlAssetManager *)self modelCache];
      [modelCache2 setObject:v8 forKey:v6];
    }

    modelDescription = [v8 modelDescription];
    metadata = [modelDescription metadata];

    v20 = [metadata objectForKey:@"MLModelDescriptionKey"];
    v21 = v20;
    if (v20 && ([v20 isEqualToString:&stru_2873677E0] & 1) == 0)
    {
      v23 = MEMORY[0x277CCACA8];
      trialNamespace = [(APOdmlAssetManager *)self trialNamespace];
      v22 = [v23 stringWithFormat:@"MLModel for namespace %@: %@", trialNamespace, v21];
    }

    else
    {
      v22 = @"ERROR: Could not find valid model description.";
    }

LABEL_15:
    v36[0] = @"MLModel";
    v35[0] = @"loggerKey";
    v35[1] = @"uniqueIdentifier";
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v35[2] = @"message";
    v36[1] = uUIDString;
    v36[2] = v22;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];

    v28 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v27 description];
      *buf = 138412290;
      v38 = v29;
      _os_log_impl(&dword_260ECB000, v28, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlRerankingErrorDomain" code:2101 userInfo:0];
    date2 = [*(v3 + 2728) date];
    [APOdmlAnalyticsReranking sendTimedEvent:v30 statusSuccess:1 additionalDetails:0 startDate:date endDate:date2];

    goto LABEL_18;
  }

  v13 = OdmlLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v38 = objc_opt_class();
    v14 = v38;
    _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial client, cannot complete request for MLModel.", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlRerankingErrorDomain" code:2009 userInfo:0];
  [APOdmlAnalyticsReranking sendEvent:v6 additionalDetails:0];
  v8 = 0;
LABEL_18:

  return v8;
}

- (id)pathForFactor:(id)factor isDirectory:(BOOL)directory
{
  directoryCopy = directory;
  v38 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  trialClient = [(APOdmlAssetManager *)self trialClient];

  if (trialClient)
  {
    trialClient2 = [(APOdmlAssetManager *)self trialClient];
    trialNamespace = [(APOdmlAssetManager *)self trialNamespace];
    v10 = [trialClient2 levelForFactor:factorCopy withNamespaceName:trialNamespace];

    if (v10)
    {
      if (directoryCopy)
      {
        [v10 directoryValue];
      }

      else
      {
        [v10 fileValue];
      }
      v11 = ;
      v14 = v11;
      if (v11)
      {
        if (!-[NSObject hasPath](v11, "hasPath") || (v18 = MEMORY[0x277CBEBC0], -[NSObject path](v14, "path"), v19 = objc_claimAutoreleasedReturnValue(), [v18 fileURLWithPath:v19], v13 = objc_claimAutoreleasedReturnValue(), v19, !v13))
        {
          v20 = OdmlLogForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v30 = 138412290;
            v31 = objc_opt_class();
            v21 = v31;
            _os_log_impl(&dword_260ECB000, v20, OS_LOG_TYPE_ERROR, "[%@] Asset URL not found.", &v30, 0xCu);
          }

          v13 = 0;
        }

        v22 = OdmlLogForCategory(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          v24 = v23;
          trialNamespace2 = [(APOdmlAssetManager *)self trialNamespace];
          v30 = 138413058;
          v31 = v23;
          v32 = 2112;
          v33 = factorCopy;
          v34 = 2112;
          v35 = trialNamespace2;
          v36 = 2112;
          v37 = v13;
          _os_log_impl(&dword_260ECB000, v22, OS_LOG_TYPE_DEFAULT, "[%@] Path for factor %@ in namespace %@: %@", &v30, 0x2Au);
        }
      }

      else
      {
        v22 = OdmlLogForCategory(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          v27 = v26;
          trialNamespace3 = [(APOdmlAssetManager *)self trialNamespace];
          v30 = 138412802;
          v31 = v26;
          v32 = 2112;
          v33 = factorCopy;
          v34 = 2112;
          v35 = trialNamespace3;
          _os_log_impl(&dword_260ECB000, v22, OS_LOG_TYPE_ERROR, "[%@] File not found for level %@ in namespace %@", &v30, 0x20u);
        }

        v13 = 0;
      }
    }

    else
    {
      v14 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = v15;
        trialNamespace4 = [(APOdmlAssetManager *)self trialNamespace];
        v30 = 138412802;
        v31 = v15;
        v32 = 2112;
        v33 = factorCopy;
        v34 = 2112;
        v35 = trialNamespace4;
        _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_ERROR, "[%@] Level not found for factor %@ in namespace %@", &v30, 0x20u);
      }

      v13 = 0;
    }
  }

  else
  {
    v10 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v30 = 138412546;
      v31 = objc_opt_class();
      v32 = 2112;
      v33 = factorCopy;
      v12 = v31;
      _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial client, cannot complete request for %@", &v30, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)doubleValueForFactor:(id)factor
{
  v28 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  trialClient = [(APOdmlAssetManager *)self trialClient];

  if (trialClient)
  {
    trialClient2 = [(APOdmlAssetManager *)self trialClient];
    trialNamespace = [(APOdmlAssetManager *)self trialNamespace];
    v8 = [trialClient2 levelForFactor:factorCopy withNamespaceName:trialNamespace];

    if (v8)
    {
      v9 = MEMORY[0x277CCABB0];
      [v8 doubleValue];
      v10 = [v9 numberWithDouble:?];
      v11 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = v12;
        trialNamespace2 = [(APOdmlAssetManager *)self trialNamespace];
        v20 = 138413058;
        v21 = v12;
        v22 = 2112;
        v23 = factorCopy;
        v24 = 2112;
        v25 = trialNamespace2;
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Double value for factor %@ in namespace %@: %@", &v20, 0x2Au);
      }
    }

    else
    {
      v11 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = v16;
        trialNamespace3 = [(APOdmlAssetManager *)self trialNamespace];
        v20 = 138412802;
        v21 = v16;
        v22 = 2112;
        v23 = factorCopy;
        v24 = 2112;
        v25 = trialNamespace3;
        _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "[%@] Level not found for factor %@ in namespace %@", &v20, 0x20u);
      }

      v10 = 0;
    }
  }

  else
  {
    v8 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412546;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = factorCopy;
      v15 = v21;
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial client, cannot complete request for %@", &v20, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)longValueForFactor:(id)factor
{
  v27 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  trialClient = [(APOdmlAssetManager *)self trialClient];

  if (trialClient)
  {
    trialClient2 = [(APOdmlAssetManager *)self trialClient];
    trialNamespace = [(APOdmlAssetManager *)self trialNamespace];
    v8 = [trialClient2 levelForFactor:factorCopy withNamespaceName:trialNamespace];

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithLong:{-[NSObject longValue](v8, "longValue")}];
      v10 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = v11;
        trialNamespace2 = [(APOdmlAssetManager *)self trialNamespace];
        v19 = 138413058;
        v20 = v11;
        v21 = 2112;
        v22 = factorCopy;
        v23 = 2112;
        v24 = trialNamespace2;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_DEFAULT, "[%@] Long value for factor %@ in namespace %@: %@", &v19, 0x2Au);
      }
    }

    else
    {
      v10 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = v15;
        trialNamespace3 = [(APOdmlAssetManager *)self trialNamespace];
        v19 = 138412802;
        v20 = v15;
        v21 = 2112;
        v22 = factorCopy;
        v23 = 2112;
        v24 = trialNamespace3;
        _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_ERROR, "[%@] Level not found for factor %@ in namespace %@", &v19, 0x20u);
      }

      v9 = 0;
    }
  }

  else
  {
    v8 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412546;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = factorCopy;
      v14 = v20;
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial client, cannot complete request for %@", &v19, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)BOOLeanValueForFactor:(id)factor
{
  v27 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  trialClient = [(APOdmlAssetManager *)self trialClient];

  if (trialClient)
  {
    trialClient2 = [(APOdmlAssetManager *)self trialClient];
    trialNamespace = [(APOdmlAssetManager *)self trialNamespace];
    v8 = [trialClient2 levelForFactor:factorCopy withNamespaceName:trialNamespace];

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[NSObject BOOLeanValue](v8, "BOOLeanValue")}];
      v10 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = v11;
        trialNamespace2 = [(APOdmlAssetManager *)self trialNamespace];
        v19 = 138413058;
        v20 = v11;
        v21 = 2112;
        v22 = factorCopy;
        v23 = 2112;
        v24 = trialNamespace2;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_DEFAULT, "[%@] Boolean value for factor %@ in namespace %@: %@", &v19, 0x2Au);
      }
    }

    else
    {
      v10 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = v15;
        trialNamespace3 = [(APOdmlAssetManager *)self trialNamespace];
        v19 = 138412802;
        v20 = v15;
        v21 = 2112;
        v22 = factorCopy;
        v23 = 2112;
        v24 = trialNamespace3;
        _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_ERROR, "[%@] Level not found for factor %@ in namespace %@", &v19, 0x20u);
      }

      v9 = 0;
    }
  }

  else
  {
    v8 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412546;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = factorCopy;
      v14 = v20;
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial client, cannot complete request for %@", &v19, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)stringValueForFactor:(id)factor
{
  v28 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  trialClient = [(APOdmlAssetManager *)self trialClient];

  if (!trialClient)
  {
    v8 = OdmlLogForCategory(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      stringValue2 = 0;
      goto LABEL_12;
    }

    v20 = 138412546;
    v21 = objc_opt_class();
    v22 = 2112;
    v23 = factorCopy;
    v10 = v21;
    _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial client, cannot complete request for %@", &v20, 0x16u);
LABEL_10:

    goto LABEL_11;
  }

  trialClient2 = [(APOdmlAssetManager *)self trialClient];
  trialNamespace = [(APOdmlAssetManager *)self trialNamespace];
  v8 = [trialClient2 levelForFactor:factorCopy withNamespaceName:trialNamespace];

  v9 = OdmlLogForCategory(0);
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = v16;
      trialNamespace2 = [(APOdmlAssetManager *)self trialNamespace];
      v20 = 138412802;
      v21 = v16;
      v22 = 2112;
      v23 = factorCopy;
      v24 = 2112;
      v25 = trialNamespace2;
      _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_ERROR, "[%@] Level not found for factor %@ in namespace %@", &v20, 0x20u);
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    trialNamespace3 = [(APOdmlAssetManager *)self trialNamespace];
    stringValue = [v8 stringValue];
    v20 = 138413058;
    v21 = v11;
    v22 = 2112;
    v23 = factorCopy;
    v24 = 2112;
    v25 = trialNamespace3;
    v26 = 2112;
    v27 = stringValue;
    _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_DEFAULT, "[%@] String value for factor %@ in namespace %@: %@", &v20, 0x2Au);
  }

  stringValue2 = [v8 stringValue];
LABEL_12:

  return stringValue2;
}

- (id)saveFeatureFromObject:(id)object withName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  nameCopy = name;
  featureStorage = [(APOdmlAssetManager *)self featureStorage];

  if (featureStorage)
  {
    featureStorage2 = [(APOdmlAssetManager *)self featureStorage];
    v10 = [featureStorage2 saveFeatureFromObject:objectCopy withName:nameCopy];
  }

  else
  {
    v11 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = objc_opt_class();
      v16 = 2112;
      v17 = nameCopy;
      v12 = v15;
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "[%@] Nil value for FeatureStorage, cannot save feature %@", &v14, 0x16u);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureStorageErrorDomain" code:5016 userInfo:0];
  }

  return v10;
}

- (id)featureForName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  featureStorage = [(APOdmlAssetManager *)self featureStorage];

  if (featureStorage)
  {
    featureStorage2 = [(APOdmlAssetManager *)self featureStorage];
    v7 = [featureStorage2 featureForName:nameCopy];
  }

  else
  {
    v8 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 2112;
      v14 = nameCopy;
      v9 = v12;
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@] Nil value for FeatureStorage, cannot retrieve feature %@", &v11, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)featuresForName:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  featureStorage = [(APOdmlAssetManager *)self featureStorage];

  if (featureStorage)
  {
    featureStorage2 = [(APOdmlAssetManager *)self featureStorage];
    v7 = [(APOdmlAssetManager *)self doubleValueForFactor:@"LookbackWindow"];
    v8 = [featureStorage2 vectorsForName:nameCopy lookbackWindow:v7];
  }

  else
  {
    v9 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = nameCopy;
      v10 = v13;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_ERROR, "[%@] Nil value for FeatureStorage, cannot retrieve feature %@", &v12, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)deleteExpiredFeaturesForName:(id)name lookbackWindow:(id)window
{
  nameCopy = name;
  windowCopy = window;
  featureStorage = [(APOdmlAssetManager *)self featureStorage];

  if (featureStorage)
  {
    featureStorage2 = [(APOdmlAssetManager *)self featureStorage];
    [featureStorage2 deleteExpiredFeaturesForName:nameCopy lookbackWindow:windowCopy];
  }
}

@end