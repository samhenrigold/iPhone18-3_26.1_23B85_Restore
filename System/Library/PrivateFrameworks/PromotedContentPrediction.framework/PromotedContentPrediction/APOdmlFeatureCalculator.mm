@interface APOdmlFeatureCalculator
- (APOdmlFeatureCalculator)initWithActivity:(id)activity placementType:(unint64_t)type assetManagerType:(unint64_t)managerType;
- (APOdmlFeatureCalculator)initWithPlacementType:(unint64_t)type assetManagerType:(unint64_t)managerType;
- (id)_vectorKeyForType:(unint64_t)type;
- (id)createAndSaveVector:(unint64_t)vector;
- (id)createAndSaveVectorWithBuilder:(id)builder vectorType:(unint64_t)type;
@end

@implementation APOdmlFeatureCalculator

- (APOdmlFeatureCalculator)initWithPlacementType:(unint64_t)type assetManagerType:(unint64_t)managerType
{
  v28 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = APOdmlFeatureCalculator;
  v6 = [(APOdmlFeatureCalculator *)&v23 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEAA8] now];
    creationTime = v6->_creationTime;
    v6->_creationTime = v7;

    v6->_assetManagerType = managerType;
    v6->_placementType = type;
    v9 = +[APOdmlAssetManagerCoordinator sharedAssetManagerCoordinator];
    v10 = [v9 assetManagerForPlacementType:type assetManagerType:managerType];
    assetManager = v6->_assetManager;
    v6->_assetManager = v10;

    v12 = [(APOdmlAssetManager *)v6->_assetManager pathForFactor:@"AppVectors" isDirectory:0];
    assetPath = v6->_assetPath;
    v6->_assetPath = v12;

    v14 = MEMORY[0x277CCACA8];
    v15 = [[APOdmlSettings alloc] initWithPlacementType:type assetManagerType:managerType];
    v16 = [v14 stringWithFormat:@"%d", -[APOdmlSettings odmlVersion](v15, "odmlVersion")];
    version = v6->_version;
    v6->_version = v16;
  }

  v18 = OdmlLogForCategory(3uLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v20 = v19;
    assetPath = [(APOdmlFeatureCalculator *)v6 assetPath];
    *buf = 138412546;
    v25 = v19;
    v26 = 2112;
    v27 = assetPath;
    _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_DEFAULT, "[%@]: Asset Path: %@", buf, 0x16u);
  }

  return v6;
}

- (APOdmlFeatureCalculator)initWithActivity:(id)activity placementType:(unint64_t)type assetManagerType:(unint64_t)managerType
{
  v21 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v9 = [(APOdmlFeatureCalculator *)self initWithPlacementType:type assetManagerType:managerType];
  if (v9)
  {
    v10 = [[APOdmlXpcLifecycleHandler alloc] initWithActivity:activityCopy];
    task = v9->_task;
    v9->_task = v10;
  }

  v12 = OdmlLogForCategory(3uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    assetPath = [(APOdmlFeatureCalculator *)v9 assetPath];
    v17 = 138412546;
    v18 = v13;
    v19 = 2112;
    v20 = assetPath;
    _os_log_impl(&dword_260ECB000, v12, OS_LOG_TYPE_DEFAULT, "[%@]: Asset Path: %@", &v17, 0x16u);
  }

  return v9;
}

- (id)createAndSaveVector:(unint64_t)vector
{
  assetManager = [(APOdmlFeatureCalculator *)self assetManager];
  v6 = [assetManager doubleValueForFactor:@"LookbackWindow"];

  assetManager2 = [(APOdmlFeatureCalculator *)self assetManager];
  v8 = [assetManager2 longValueForFactor:@"MaxQueryElements"];

  assetManager3 = [(APOdmlFeatureCalculator *)self assetManager];
  v10 = [assetManager3 doubleValueForFactor:@"ExponentialDecayConstant"];

  assetManager4 = [(APOdmlFeatureCalculator *)self assetManager];
  v12 = [assetManager4 BOOLeanValueForFactor:@"WeightByDuration"];

  v13 = objc_alloc(objc_opt_class());
  version = [(APOdmlFeatureCalculator *)self version];
  task = [(APOdmlFeatureCalculator *)self task];
  LOBYTE(v19) = [(APOdmlFeatureCalculator *)self assetManagerType]== 1;
  v16 = [v13 initWithVersion:version lookbackPeriod:v6 maxQueryElements:v8 task:task exponentialDecayConstant:v10 weightByDuration:v12 isCounterfactual:v19];

  v17 = [(APOdmlFeatureCalculator *)self createAndSaveVectorWithBuilder:v16 vectorType:vector];

  return v17;
}

- (id)createAndSaveVectorWithBuilder:(id)builder vectorType:(unint64_t)type
{
  v80 = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  v7 = [(APOdmlFeatureCalculator *)self _vectorKeyForType:type];
  v8 = [APOdmlAppVectorsFile alloc];
  assetPath = [(APOdmlFeatureCalculator *)self assetPath];
  version = [(APOdmlFeatureCalculator *)self version];
  v11 = [(APOdmlAppVectorsFile *)v8 initForReadingContentsOfURL:assetPath version:version];

  if (v11)
  {
    if ([v11 numberOfVectors])
    {
      v12 = v11;
    }

    else
    {
      v19 = OdmlLogForCategory(3uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v73 = objc_opt_class();
        v20 = *v73;
        _os_log_impl(&dword_260ECB000, v19, OS_LOG_TYPE_DEFAULT, "[%@]: Default AppVectors empty; attempting to fall back to SRP default file.", buf, 0xCu);
      }

      v21 = +[APOdmlAssetManagerCoordinator sharedAssetManagerCoordinator];
      v22 = [v21 assetManagerForPlacementType:0 assetManagerType:{-[APOdmlFeatureCalculator assetManagerType](self, "assetManagerType")}];
      v12 = [v22 pathForFactor:@"AppVectors" isDirectory:0];

      v23 = [APOdmlAppVectorsFile alloc];
      version2 = [(APOdmlFeatureCalculator *)self version];
      v25 = [(APOdmlAppVectorsFile *)v23 initForReadingContentsOfURL:v12 version:version2];

      if (!v25)
      {
        v53 = OdmlLogForCategory(3uLL);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = objc_opt_class();
          v55 = v54;
          creationTime = [(APOdmlFeatureCalculator *)self creationTime];
          *buf = 138412546;
          *v73 = v54;
          *&v73[8] = 2112;
          *&v73[10] = creationTime;
          _os_log_impl(&dword_260ECB000, v53, OS_LOG_TYPE_ERROR, "[%@ %@] ERROR: Could not open default app vectors file.", buf, 0x16u);
        }

        v57 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureCalculatorErrorDomain" code:1001 userInfo:0];
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:@"featureName"];
        [APOdmlAnalyticsFeatureCalculation sendEvent:v57 additionalDetails:v58 isCounterfactual:[(APOdmlFeatureCalculator *)self assetManagerType]== 1];
        v18 = v57;

        goto LABEL_38;
      }

      v12 = v25;
    }

    v70 = builderCopy;
    if (v70)
    {
      typeCopy = type;
      v67 = v7;
      v26 = v12;
      v68 = builderCopy;
      v27 = 0;
      v28 = -1;
      for (i = 1; ; ++i)
      {
        v30 = objc_autoreleasePoolPush();
        task = [(APOdmlFeatureCalculator *)self task];
        if (task)
        {
          v32 = task;
          shouldDefer = [(APOdmlXpcLifecycleHandler *)self->_task shouldDefer];

          if (shouldDefer)
          {
            if ([(APOdmlXpcLifecycleHandler *)self->_task deferTask])
            {
              break;
            }
          }
        }

        nextVector = [v12 nextVector];

        if (!nextVector)
        {
          objc_autoreleasePoolPop(v30);
          v71 = 0;
          v27 = [v70 retrieveVector:&v71];
          v37 = v71;
          v38 = OdmlLogForCategory(3uLL);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = objc_opt_class();
            v40 = MEMORY[0x277CCACA8];
            v69 = v39;
            v41 = [v40 descriptionForAssetManagerType:{-[APOdmlFeatureCalculator assetManagerType](self, "assetManagerType")}];
            v42 = [MEMORY[0x277CCACA8] descriptionForPlacementType:{-[APOdmlFeatureCalculator placementType](self, "placementType")}];
            v43 = [MEMORY[0x277CCACA8] descriptionForVectorBuilderType:typeCopy];
            arrayOfNumbers = [v27 arrayOfNumbers];
            *buf = 138413314;
            *v73 = v39;
            *&v73[8] = 2112;
            *&v73[10] = v41;
            v74 = 2112;
            v75 = v42;
            v76 = 2112;
            v77 = v43;
            v78 = 2112;
            v79 = arrayOfNumbers;
            _os_log_impl(&dword_260ECB000, v38, OS_LOG_TYPE_DEFAULT, "[%@] Final %@ %@ %@: %@", buf, 0x34u);
          }

          v7 = v67;
          v45 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v67 forKey:@"featureName"];
          v46 = [(APOdmlFeatureCalculator *)self assetManagerType]== 1;
          if (v37)
          {
            [APOdmlAnalyticsFeatureCalculation sendEvent:v37 additionalDetails:v45 isCounterfactual:v46];
          }

          else
          {
            [APOdmlAnalyticsFeatureCalculation sendEvent:0 additionalDetails:v45 isCounterfactual:v46];
            assetManager = [(APOdmlFeatureCalculator *)self assetManager];
            v37 = [assetManager saveFeatureFromObject:v27 withName:v67];
          }

          builderCopy = v68;
          v12 = v26;
          v18 = v37;

          goto LABEL_37;
        }

        if (!(v28 + 100 * (i / 0x64)))
        {
          v35 = OdmlLogForCategory(3uLL);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            adamID = [nextVector adamID];
            *buf = 67109376;
            *v73 = i;
            *&v73[4] = 2048;
            *&v73[6] = adamID;
            _os_log_impl(&dword_260ECB000, v35, OS_LOG_TYPE_DEFAULT, "Processing element %d: %llu", buf, 0x12u);
          }
        }

        [v70 addAppVector:nextVector];
        objc_autoreleasePoolPop(v30);
        --v28;
        v27 = nextVector;
      }

      v59 = OdmlLogForCategory(3uLL);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = objc_opt_class();
        v61 = v60;
        creationTime2 = [(APOdmlFeatureCalculator *)self creationTime];
        *buf = 138412546;
        *v73 = v60;
        *&v73[8] = 2112;
        *&v73[10] = creationTime2;
        _os_log_impl(&dword_260ECB000, v59, OS_LOG_TYPE_DEFAULT, "[%@ %@] We are no longer in an acceptable state to continue processing. Deferring task...", buf, 0x16u);
      }

      v63 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureCalculatorErrorDomain" code:1003 userInfo:0];
      v64 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:@"featureName"];
      [APOdmlAnalyticsFeatureCalculation sendEvent:v63 additionalDetails:v64 isCounterfactual:[(APOdmlFeatureCalculator *)self assetManagerType]== 1];
      v18 = v63;

      objc_autoreleasePoolPop(v30);
      builderCopy = v68;
    }

    else
    {
      v47 = OdmlLogForCategory(3uLL);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = objc_opt_class();
        v49 = v48;
        creationTime3 = [(APOdmlFeatureCalculator *)self creationTime];
        *buf = 138412546;
        *v73 = v48;
        *&v73[8] = 2112;
        *&v73[10] = creationTime3;
        _os_log_impl(&dword_260ECB000, v47, OS_LOG_TYPE_ERROR, "[%@ %@] ERROR: Unable to create a vector builder.", buf, 0x16u);
      }

      v51 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureCalculatorErrorDomain" code:1002 userInfo:0];
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:@"featureName"];
      [APOdmlAnalyticsFeatureCalculation sendEvent:v51 additionalDetails:v27 isCounterfactual:[(APOdmlFeatureCalculator *)self assetManagerType]== 1];
      v18 = v51;
    }

LABEL_37:
  }

  else
  {
    v13 = OdmlLogForCategory(3uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      creationTime4 = [(APOdmlFeatureCalculator *)self creationTime];
      *buf = 138412546;
      *v73 = v14;
      *&v73[8] = 2112;
      *&v73[10] = creationTime4;
      _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_ERROR, "[%@ %@] ERROR: Could not open app vectors file.", buf, 0x16u);
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureCalculatorErrorDomain" code:1001 userInfo:0];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:@"featureName"];
    [APOdmlAnalyticsFeatureCalculation sendEvent:v17 additionalDetails:v12 isCounterfactual:[(APOdmlFeatureCalculator *)self assetManagerType]== 1];
    v18 = v17;
  }

LABEL_38:

  return v18;
}

- (id)_vectorKeyForType:(unint64_t)type
{
  v3 = kAPOdmlFeatureTypeInstalledAppVectorKey;
  v4 = kAPOdmlFeatureTypeAppDownloadVectorKey;
  if (type != 1)
  {
    v4 = kAPOdmlFeatureTypeAppUsageVectorKey;
  }

  if (type != 2)
  {
    v3 = v4;
  }

  return *v3;
}

@end