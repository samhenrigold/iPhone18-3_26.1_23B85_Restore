@interface APOdmlFeatureStorage
- (APOdmlFeatureStorage)initWithExperimentID:(id)d treatmentID:(id)iD deploymentID:(int)deploymentID trialNamespace:(id)namespace;
- (id)featureForName:(id)name;
- (id)featureForName:(id)name backgroundContext:(id)context;
- (id)featuresForName:(id)name fetchLimit:(unint64_t)limit backgroundContext:(id)context;
- (id)saveFeatureFromObject:(id)object withName:(id)name;
- (id)vectorsForName:(id)name lookbackWindow:(id)window;
- (void)deleteExpiredFeaturesForName:(id)name lookbackWindow:(id)window;
@end

@implementation APOdmlFeatureStorage

- (APOdmlFeatureStorage)initWithExperimentID:(id)d treatmentID:(id)iD deploymentID:(int)deploymentID trialNamespace:(id)namespace
{
  dCopy = d;
  iDCopy = iD;
  namespaceCopy = namespace;
  v17.receiver = self;
  v17.super_class = APOdmlFeatureStorage;
  v14 = [(APOdmlCoreDataStorage *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_experimentID, d);
    objc_storeStrong(&v15->_treatmentID, iD);
    v15->_deploymentID = deploymentID;
    objc_storeStrong(&v15->_trialNamespace, namespace);
  }

  return v15;
}

- (id)featureForName:(id)name backgroundContext:(id)context
{
  v4 = [(APOdmlFeatureStorage *)self featuresForName:name fetchLimit:1 backgroundContext:context];
  v5 = v4;
  if (v4)
  {
    firstObject = [v4 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)featureForName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  storePrecheck = [(APOdmlCoreDataStorage *)selfCopy storePrecheck];
  if (storePrecheck)
  {
    v7 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2112;
      *&buf[14] = storePrecheck;
      v8 = *&buf[4];
      _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_ERROR, "[%@] Get feature failed; CoreData failed to load with the following error: %@.", buf, 0x16u);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureStorageErrorDomain" code:5004 userInfo:0];
    [APOdmlAnalyticsFeatureStorage sendEvent:v9 additionalDetails:0];

    objc_sync_exit(selfCopy);
    v10 = 0;
  }

  else
  {
    objc_sync_exit(selfCopy);

    persistentContainer = [(APOdmlCoreDataStorage *)selfCopy persistentContainer];
    newBackgroundContext = [persistentContainer newBackgroundContext];

    v13 = [(APOdmlFeatureStorage *)selfCopy featureForName:nameCopy backgroundContext:newBackgroundContext];
    v14 = v13;
    if (v13)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v20 = sub_260ED35D4;
      v21 = sub_260ED35E4;
      v22 = 0;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_260ED35EC;
      v16[3] = &unk_279AC61B0;
      v18 = buf;
      v17 = v13;
      [(APOdmlFeatureStorage *)newBackgroundContext performBlockAndWait:v16];
      v10 = *(*&buf[8] + 40);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v10 = 0;
    }

    selfCopy = newBackgroundContext;
  }

  return v10;
}

- (id)vectorsForName:(id)name lookbackWindow:(id)window
{
  v38 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  windowCopy = window;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  storePrecheck = [(APOdmlCoreDataStorage *)selfCopy storePrecheck];
  if (storePrecheck)
  {
    v8 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2112;
      *&buf[14] = storePrecheck;
      v9 = *&buf[4];
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@] Vector retrieval failed; CoreData failed to load with the following error: %@.", buf, 0x16u);
    }

    objc_sync_exit(selfCopy);
    v10 = 0;
  }

  else
  {
    objc_sync_exit(selfCopy);

    persistentContainer = [(APOdmlCoreDataStorage *)selfCopy persistentContainer];
    newBackgroundContext = [persistentContainer newBackgroundContext];

    v13 = [(APOdmlFeatureStorage *)selfCopy featuresForName:nameCopy fetchLimit:0 backgroundContext:newBackgroundContext];
    array = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v15)
    {
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          if (v18)
          {
            date = [MEMORY[0x277CBEAA8] date];
            createdAt = [v18 createdAt];
            [date timeIntervalSinceDate:createdAt];
            v22 = v21;

            [windowCopy doubleValue];
            if (v22 <= v23)
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v34 = sub_260ED35D4;
              v35 = sub_260ED35E4;
              v36 = 0;
              v28[0] = MEMORY[0x277D85DD0];
              v28[1] = 3221225472;
              v28[2] = sub_260ED39E4;
              v28[3] = &unk_279AC61B0;
              v28[4] = v18;
              v28[5] = buf;
              [(APOdmlFeatureStorage *)newBackgroundContext performBlockAndWait:v28];
              [array addObject:*(*&buf[8] + 40)];
              _Block_object_dispose(buf, 8);
            }
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v15);
    }

    v10 = [array copy];
    selfCopy = newBackgroundContext;
  }

  return v10;
}

- (id)featuresForName:(id)name fetchLimit:(unint64_t)limit backgroundContext:(id)context
{
  v63[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  storePrecheck = [(APOdmlCoreDataStorage *)selfCopy storePrecheck];
  if (storePrecheck)
  {
    v11 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = storePrecheck;
      v13 = v12;
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "[%@] Get feature failed; CoreData failed to load with the following error: %@.", buf, 0x16u);
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureStorageErrorDomain" code:5004 userInfo:0];
    [APOdmlAnalyticsFeatureStorage sendEvent:v14 additionalDetails:0];
  }

  else
  {
    v14 = 0;
  }

  objc_sync_exit(selfCopy);
  if (storePrecheck)
  {
    v15 = 0;
    goto LABEL_24;
  }

  v16 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Feature"];
  v17 = MEMORY[0x277CCAC30];
  deploymentID = [(APOdmlFeatureStorage *)selfCopy deploymentID];
  experimentID = [(APOdmlFeatureStorage *)selfCopy experimentID];
  treatmentID = [(APOdmlFeatureStorage *)selfCopy treatmentID];
  nameCopy = [v17 predicateWithFormat:@"(deploymentID == %d) AND (experimentID == %@) AND (treatmentID == %@) AND (featureType == %@)", deploymentID, experimentID, treatmentID, nameCopy];

  [v16 setPredicate:nameCopy];
  v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"createdAt" ascending:0];
  v63[0] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
  [v16 setSortDescriptors:v23];

  if (limit)
  {
    [v16 setFetchLimit:limit];
    v24 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      *buf = 138412546;
      *&buf[4] = v25;
      *&buf[12] = 2048;
      *&buf[14] = limit;
      v26 = v25;
      _os_log_impl(&dword_260ECB000, v24, OS_LOG_TYPE_DEFAULT, "[%@] Fetching Features from CoreData with a fetch limit of %lu", buf, 0x16u);
    }
  }

  else
  {
    v24 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      *buf = 138412290;
      *&buf[4] = v27;
      v28 = v27;
      _os_log_impl(&dword_260ECB000, v24, OS_LOG_TYPE_DEFAULT, "[%@] Fetching Features from CoreData with no fetch limit.", buf, 0xCu);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v60 = sub_260ED35D4;
  v61 = sub_260ED35E4;
  v62 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_260ED35D4;
  v53 = sub_260ED35E4;
  v54 = 0;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_260ED4170;
  v44[3] = &unk_279AC61D8;
  v47 = &v49;
  v45 = contextCopy;
  v29 = v16;
  v46 = v29;
  v48 = buf;
  [v45 performBlockAndWait:v44];
  v30 = v50[5];
  if (v30 && [v30 count])
  {
    if (!*(*&buf[8] + 40))
    {
      v40 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = objc_opt_class();
        v42 = [v50[5] count];
        *v55 = 138412546;
        v56 = v41;
        v57 = 2048;
        v58 = v42;
        _os_log_impl(&dword_260ECB000, v40, OS_LOG_TYPE_DEFAULT, "[%@] Fetched %lu Features from CoreData", v55, 0x16u);
      }

      v15 = v50[5];
      v35 = v14;
      goto LABEL_23;
    }

    v31 = OdmlLogForCategory(4uLL);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v33 = *(*&buf[8] + 40);
      *v55 = 138412546;
      v56 = v32;
      v57 = 2112;
      v58 = v33;
      v34 = v32;
      _os_log_impl(&dword_260ECB000, v31, OS_LOG_TYPE_ERROR, "[%@] NSFetchRequest failed with error: %@", v55, 0x16u);
    }

    v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureStorageErrorDomain" code:5006 userInfo:0];

    [APOdmlAnalyticsFeatureStorage sendEvent:v35 additionalDetails:0];
  }

  else
  {
    v36 = OdmlLogForCategory(4uLL);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      *v55 = 138412546;
      v56 = v37;
      v57 = 2112;
      v58 = nameCopy;
      v38 = v37;
      _os_log_impl(&dword_260ECB000, v36, OS_LOG_TYPE_ERROR, "[%@] Failed to retrieve feature %@", v55, 0x16u);
    }

    v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureStorageErrorDomain" code:5005 userInfo:0];

    [APOdmlAnalyticsFeatureStorage sendEvent:v35 additionalDetails:0];
  }

  v15 = 0;
LABEL_23:

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(buf, 8);

  v14 = v35;
LABEL_24:

  return v15;
}

- (id)saveFeatureFromObject:(id)object withName:(id)name
{
  v38 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  storePrecheck = [(APOdmlCoreDataStorage *)selfCopy storePrecheck];
  if (storePrecheck)
  {
    v10 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2112;
      *&buf[14] = storePrecheck;
      v11 = *&buf[4];
      _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_ERROR, "[%@] Save feature failed; CoreData failed to load with the following error: %@.", buf, 0x16u);
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureStorageErrorDomain" code:5007 userInfo:0];
    [APOdmlAnalyticsFeatureStorage sendEvent:v12 additionalDetails:0];
    v13 = storePrecheck;
  }

  else
  {
    v12 = 0;
  }

  objc_sync_exit(selfCopy);
  if (!storePrecheck)
  {
    persistentContainer = [(APOdmlCoreDataStorage *)selfCopy persistentContainer];
    newBackgroundContext = [persistentContainer newBackgroundContext];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = sub_260ED35D4;
    v36 = sub_260ED35E4;
    v37 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_260ED45A0;
    v24[3] = &unk_279AC6200;
    v16 = newBackgroundContext;
    v25 = v16;
    v26 = selfCopy;
    v27 = nameCopy;
    v28 = objectCopy;
    v29 = buf;
    [v16 performBlockAndWait:v24];
    v17 = *(*&buf[8] + 40);
    if (v17)
    {
      v18 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = *(*&buf[8] + 40);
        *v30 = 138412546;
        v31 = v19;
        v32 = 2112;
        v33 = v20;
        v21 = v19;
        _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_ERROR, "[%@] Failed to save object with error: %@", v30, 0x16u);
      }

      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureStorageErrorDomain" code:5008 userInfo:0];

      [APOdmlAnalyticsFeatureStorage sendEvent:v22 additionalDetails:0];
      v17 = *(*&buf[8] + 40);
      v12 = v22;
    }

    storePrecheck = v17;

    _Block_object_dispose(buf, 8);
  }

  return storePrecheck;
}

- (void)deleteExpiredFeaturesForName:(id)name lookbackWindow:(id)window
{
  v47 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  windowCopy = window;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  storePrecheck = [(APOdmlCoreDataStorage *)selfCopy storePrecheck];
  if (storePrecheck)
  {
    v8 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2112;
      *&buf[14] = storePrecheck;
      v9 = *&buf[4];
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@] Delete feature failed; CoreData failed to load with the following error: %@.", buf, 0x16u);
    }

    v10 = selfCopy;
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    persistentContainer = [(APOdmlCoreDataStorage *)selfCopy persistentContainer];
    newBackgroundContext = [persistentContainer newBackgroundContext];

    [(APOdmlFeatureStorage *)selfCopy featuresForName:nameCopy fetchLimit:0 backgroundContext:newBackgroundContext];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v25 = v35 = 0u;
    v13 = [v25 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v13)
    {
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v25);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          if (v16)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v43 = 0;
            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 3221225472;
            v33[2] = sub_260ED4B94;
            v33[3] = &unk_279AC61B0;
            v33[4] = v16;
            v33[5] = buf;
            [newBackgroundContext performBlockAndWait:v33];
            v17 = *(*&buf[8] + 24);
            [windowCopy doubleValue];
            if (v17 >= v18)
            {
              v30[0] = MEMORY[0x277D85DD0];
              v30[1] = 3221225472;
              v30[2] = sub_260ED4C10;
              v30[3] = &unk_279AC6228;
              v31 = newBackgroundContext;
              v32 = v16;
              [v31 performBlockAndWait:v30];
            }

            _Block_object_dispose(buf, 8);
          }
        }

        v13 = [v25 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v13);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v43 = sub_260ED35D4;
    v44 = sub_260ED35E4;
    v45 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_260ED4C1C;
    v27[3] = &unk_279AC6250;
    v10 = newBackgroundContext;
    v28 = v10;
    v29 = buf;
    [(APOdmlFeatureStorage *)v10 performBlockAndWait:v27];
    if (*(*&buf[8] + 40))
    {
      v19 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = *(*&buf[8] + 40);
        *v38 = 138412546;
        v39 = v20;
        v40 = 2112;
        v41 = v21;
        v22 = v20;
        _os_log_impl(&dword_260ECB000, v19, OS_LOG_TYPE_ERROR, "[%@] Failed to delete expired objects with error: %@", v38, 0x16u);
      }

      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureStorageErrorDomain" code:5009 userInfo:0];
      [APOdmlAnalyticsFeatureStorage sendEvent:v23 additionalDetails:0];
    }

    _Block_object_dispose(buf, 8);
  }
}

@end