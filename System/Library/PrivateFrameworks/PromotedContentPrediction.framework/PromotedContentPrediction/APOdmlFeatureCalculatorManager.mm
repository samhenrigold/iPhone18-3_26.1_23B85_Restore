@interface APOdmlFeatureCalculatorManager
- (APOdmlFeatureCalculatorManager)initWithActivity:(id)activity;
- (id)parseErrorInfo:(id)info calculator:(id)calculator;
- (id)taskDeferred;
- (void)calculateAllFeatures:(id)features;
- (void)iterateThroughCalculators:(id)calculators;
- (void)runFeatureCalculator:(id)calculator;
@end

@implementation APOdmlFeatureCalculatorManager

- (APOdmlFeatureCalculatorManager)initWithActivity:(id)activity
{
  activityCopy = activity;
  v26.receiver = self;
  v26.super_class = APOdmlFeatureCalculatorManager;
  v6 = [(APOdmlFeatureCalculatorManager *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpc_activity, activity);
    v8 = [[APOdmlXpcLifecycleHandler alloc] initWithActivity:activityCopy];
    lifeCycleHandler = v7->_lifeCycleHandler;
    v7->_lifeCycleHandler = v8;

    v10 = MEMORY[0x277CBEA60];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
    v12 = [v10 arrayWithObjects:{v11, 0}];
    placementTypes = v7->_placementTypes;
    v7->_placementTypes = v12;

    v14 = MEMORY[0x277CBEA60];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1];
    v17 = [v14 arrayWithObjects:{v15, v16, 0}];
    assetManagerTypes = v7->_assetManagerTypes;
    v7->_assetManagerTypes = v17;

    array = [MEMORY[0x277CBEB18] array];
    calculatorErrors = v7->_calculatorErrors;
    v7->_calculatorErrors = array;

    array2 = [MEMORY[0x277CBEB18] array];
    validFeatureCalculators = v7->_validFeatureCalculators;
    v7->_validFeatureCalculators = array2;

    v23 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v23;

    [(NSOperationQueue *)v7->_operationQueue setMaxConcurrentOperationCount:1];
  }

  return v7;
}

- (void)calculateAllFeatures:(id)features
{
  v39 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(APOdmlFeatureCalculatorManager *)self placementTypes];
  v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v25)
  {
    v24 = *v34;
    do
    {
      v4 = 0;
      do
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v4;
        v5 = *(*(&v33 + 1) + 8 * v4);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        assetManagerTypes = [(APOdmlFeatureCalculatorManager *)self assetManagerTypes];
        v7 = [assetManagerTypes countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v30;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v30 != v9)
              {
                objc_enumerationMutation(assetManagerTypes);
              }

              v11 = *(*(&v29 + 1) + 8 * i);
              unsignedIntegerValue = [v5 unsignedIntegerValue];
              unsignedIntegerValue2 = [v11 unsignedIntegerValue];
              v14 = [APOdmlFeatureCalculator alloc];
              xpc_activity = [(APOdmlFeatureCalculatorManager *)self xpc_activity];
              v16 = [(APOdmlFeatureCalculator *)v14 initWithActivity:xpc_activity placementType:unsignedIntegerValue assetManagerType:unsignedIntegerValue2];

              validFeatureCalculators = [(APOdmlFeatureCalculatorManager *)self validFeatureCalculators];
              [validFeatureCalculators addObject:v16];
            }

            v8 = [assetManagerTypes countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v8);
        }

        v4 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }

  taskDeferred = [(APOdmlFeatureCalculatorManager *)self taskDeferred];
  if (taskDeferred)
  {
    operationQueue = [(APOdmlFeatureCalculatorManager *)self operationQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_260EEBA60;
    v27[3] = &unk_279AC6380;
    v20 = featuresCopy;
    v28 = featuresCopy;
    [operationQueue addOperationWithBlock:v27];
  }

  else
  {
    selfCopy = self;
    v20 = featuresCopy;
    [(APOdmlFeatureCalculatorManager *)selfCopy iterateThroughCalculators:featuresCopy];
  }
}

- (id)taskDeferred
{
  v19 = *MEMORY[0x277D85DE8];
  lifeCycleHandler = [(APOdmlFeatureCalculatorManager *)self lifeCycleHandler];
  taskIsDeferred = [lifeCycleHandler taskIsDeferred];

  if (taskIsDeferred)
  {
    v5 = OdmlLogForCategory(3uLL);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureCalculatorErrorDomain" code:1003 userInfo:0];
      goto LABEL_12;
    }

    v17 = 138477827;
    v18 = objc_opt_class();
    v6 = v18;
    v7 = "[%{private}@] Device Knowledge task previously deferred. Bailing out...";
    goto LABEL_4;
  }

  lifeCycleHandler2 = [(APOdmlFeatureCalculatorManager *)self lifeCycleHandler];
  shouldDefer = [lifeCycleHandler2 shouldDefer];

  if (shouldDefer)
  {
    lifeCycleHandler3 = [(APOdmlFeatureCalculatorManager *)self lifeCycleHandler];
    deferTask = [lifeCycleHandler3 deferTask];

    v15 = OdmlLogForCategory(3uLL);
    v5 = v15;
    if (!deferTask)
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v17 = 138477827;
      v18 = objc_opt_class();
      v6 = v18;
      v7 = "[%{private}@] ERROR: failed to defer task while iterating through calculators.";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      goto LABEL_5;
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v17 = 138477827;
    v18 = objc_opt_class();
    v6 = v18;
    v7 = "[%{private}@] Device Knowledge task has been deferred. Bailing out...";
LABEL_4:
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
LABEL_5:
    _os_log_impl(&dword_260ECB000, v8, v9, v7, &v17, 0xCu);

    goto LABEL_6;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (void)iterateThroughCalculators:(id)calculators
{
  v18 = *MEMORY[0x277D85DE8];
  calculatorsCopy = calculators;
  validFeatureCalculators = [(APOdmlFeatureCalculatorManager *)self validFeatureCalculators];
  v6 = [validFeatureCalculators count];

  if (!v6)
  {
    v7 = OdmlLogForCategory(3uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v17 = objc_opt_class();
      v8 = v17;
      _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_ERROR, "[%{private}@] No valid feature calculators found.", buf, 0xCu);
    }

    operationQueue = [(APOdmlFeatureCalculatorManager *)self operationQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_260EEBE58;
    v14[3] = &unk_279AC6380;
    v15 = calculatorsCopy;
    [operationQueue addOperationWithBlock:v14];
  }

  validFeatureCalculators2 = [(APOdmlFeatureCalculatorManager *)self validFeatureCalculators];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_260EEBE70;
  v12[3] = &unk_279AC63F8;
  v12[4] = self;
  v13 = calculatorsCopy;
  v11 = calculatorsCopy;
  [validFeatureCalculators2 enumerateObjectsUsingBlock:v12];
}

- (void)runFeatureCalculator:(id)calculator
{
  v48 = *MEMORY[0x277D85DE8];
  calculatorCopy = calculator;
  v5 = 0;
  *&v6 = 138478595;
  v34 = v6;
  v7 = 0x277CCA000uLL;
  do
  {
    taskDeferred = [(APOdmlFeatureCalculatorManager *)self taskDeferred];
    v9 = taskDeferred;
    if (taskDeferred)
    {
      userInfo = [taskDeferred userInfo];
      v11 = [userInfo mutableCopy];
      v12 = [(APOdmlFeatureCalculatorManager *)self parseErrorInfo:v11 calculator:calculatorCopy];

      calculatorErrors = [(APOdmlFeatureCalculatorManager *)self calculatorErrors];
      v14 = *(v7 + 2488);
      domain = [v9 domain];
      v16 = [v14 errorWithDomain:domain code:objc_msgSend(v9 userInfo:{"code"), v12}];
      [calculatorErrors addObject:v16];
    }

    else
    {
      v12 = [calculatorCopy createAndSaveVector:v5];
      v17 = OdmlLogForCategory(3uLL);
      v18 = v17;
      if (v12)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          v35 = v19;
          placementType = [calculatorCopy placementType];
          assetManagerType = [calculatorCopy assetManagerType];
          v22 = [v12 debugDescription];
          *buf = 138478851;
          v39 = v19;
          v40 = 2048;
          v41 = placementType;
          v7 = 0x277CCA000uLL;
          v42 = 2048;
          v43 = assetManagerType;
          v44 = 2048;
          v45 = v5;
          v46 = 2112;
          v47 = v22;
          _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_ERROR, "[%{private}@] ERROR: failed to calculate features for placement type: %lu, asset manager type: %lu and vector type: %lu due to %@", buf, 0x34u);
        }

        userInfo2 = [v12 userInfo];
        v24 = [userInfo2 mutableCopy];
        calculatorErrors = [(APOdmlFeatureCalculatorManager *)self parseErrorInfo:v24 calculator:calculatorCopy];

        calculatorErrors2 = [(APOdmlFeatureCalculatorManager *)self calculatorErrors];
        v26 = *(v7 + 2488);
        domain2 = [v12 domain];
        v28 = [v26 errorWithDomain:domain2 code:objc_msgSend(v12 userInfo:{"code"), calculatorErrors}];
        [calculatorErrors2 addObject:v28];

        v7 = 0x277CCA000;
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v29 = objc_opt_class();
          v30 = v29;
          placementType2 = [calculatorCopy placementType];
          assetManagerType2 = [calculatorCopy assetManagerType];
          *buf = v34;
          v39 = v29;
          v40 = 2048;
          v41 = placementType2;
          v7 = 0x277CCA000;
          v42 = 2048;
          v43 = assetManagerType2;
          v44 = 2048;
          v45 = v5;
          _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_DEFAULT, "[%{private}@] Successfully calculated features for placement type: %lu, asset manager type: %lu and vector type: %lu", buf, 0x2Au);
        }

        operationQueue = [(APOdmlFeatureCalculatorManager *)self operationQueue];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = sub_260EEC5DC;
        v36[3] = &unk_279AC6188;
        v37 = calculatorCopy;
        [operationQueue addOperationWithBlock:v36];

        calculatorErrors = v37;
      }
    }

    ++v5;
  }

  while (v5 != 3);
}

- (id)parseErrorInfo:(id)info calculator:(id)calculator
{
  v22[2] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (infoCopy)
  {
    v6 = infoCopy;
    v7 = MEMORY[0x277CCABB0];
    calculatorCopy = calculator;
    v9 = [v7 numberWithUnsignedLong:{objc_msgSend(calculatorCopy, "placementType")}];
    [v6 setObject:v9 forKey:@"placementType"];

    v10 = MEMORY[0x277CCABB0];
    assetManagerType = [calculatorCopy assetManagerType];

    v12 = [v10 numberWithUnsignedLong:assetManagerType];
    [v6 setObject:v12 forKey:@"assetManagerType"];
  }

  else
  {
    v13 = MEMORY[0x277CBEB38];
    calculatorCopy2 = calculator;
    v15 = [v13 alloc];
    v21[0] = @"placementType";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(calculatorCopy2, "placementType")}];
    v22[0] = v12;
    v21[1] = @"assetManagerType";
    v16 = MEMORY[0x277CCABB0];
    assetManagerType2 = [calculatorCopy2 assetManagerType];

    v18 = [v16 numberWithUnsignedLong:assetManagerType2];
    v22[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v6 = [v15 initWithDictionary:v19];
  }

  return v6;
}

@end