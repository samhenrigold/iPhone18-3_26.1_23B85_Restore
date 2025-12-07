@interface ENAdvertisementDatabaseQuerySession
- (BOOL)enumerateAdvertisementsMatchingKeys:(id)keys attenuationThreshold:(unsigned __int8)threshold timestampTolerance:(double)tolerance error:(id *)error handler:(id)handler;
- (ENAdvertisementDatabaseQuerySession)initWithDatabase:(id)database attenuationThreshold:(unsigned __int8)threshold advertisementCount:(unsigned int)count queue:(id)queue;
- (id)beaconCountMetricsWithStartDate:(id)date endDate:(id)endDate windowDuration:(double)duration error:(id *)error;
- (void)dealloc;
@end

@implementation ENAdvertisementDatabaseQuerySession

- (ENAdvertisementDatabaseQuerySession)initWithDatabase:(id)database attenuationThreshold:(unsigned __int8)threshold advertisementCount:(unsigned int)count queue:(id)queue
{
  thresholdCopy = threshold;
  databaseCopy = database;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = ENAdvertisementDatabaseQuerySession;
  v13 = [(ENAdvertisementDatabaseQuerySession *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_attenuationThreshold = thresholdCopy;
    objc_storeStrong(&v13->_database, database);
    objc_storeStrong(&v14->_queue, queue);
    v14->_storedAdvertisementCount = count;
    v14->_tekCount = 0;
    database = v14->_database;
    v16 = [(ENAdvertisementDatabase *)database queryFilterWithBufferSize:1638400 hashCount:3 attenuationThreshold:thresholdCopy];
    [(ENAdvertisementDatabase *)database setInlineQueryFilter:v16];
  }

  return v14;
}

- (void)dealloc
{
  v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v3 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENAdvertisementDatabaseQuerySession <= 50 && (gLogCategory_ENAdvertisementDatabaseQuerySession != -1 || _LogCategory_Initialize()))
  {
    [(ENAdvertisementDatabaseQuerySession *)self dealloc];
  }

  [(ENAdvertisementDatabaseQuerySession *)self invalidate];
  v5.receiver = self;
  v5.super_class = ENAdvertisementDatabaseQuerySession;
  [(ENAdvertisementDatabaseQuerySession *)&v5 dealloc];
}

- (BOOL)enumerateAdvertisementsMatchingKeys:(id)keys attenuationThreshold:(unsigned __int8)threshold timestampTolerance:(double)tolerance error:(id *)error handler:(id)handler
{
  v71 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  handlerCopy = handler;
  self->_tekCount += [keysCopy count];
  v12 = objc_alloc_init(MEMORY[0x277CBEB30]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v13 = keysCopy;
  v14 = [v13 countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v14)
  {
    v15 = *v61;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v61 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v60 + 1) + 8 * i);
        keyData = [v17 keyData];
        [v12 setObject:v17 forKey:keyData];
      }

      v14 = [v13 countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v14);
  }

  allValues = [v12 allValues];

  v42 = objc_autoreleasePoolPush();
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy_;
  v58 = __Block_byref_object_dispose_;
  v59 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__ENAdvertisementDatabaseQuerySession_enumerateAdvertisementsMatchingKeys_attenuationThreshold_timestampTolerance_error_handler___block_invoke;
  block[3] = &unk_278FD0FE0;
  v51 = &v54;
  block[4] = self;
  v44 = allValues;
  v50 = v44;
  thresholdCopy = threshold;
  toleranceCopy = tolerance;
  dispatch_sync(queue, block);
  v21 = v55[5];
  v43 = v21;
  if (v21)
  {
    v22 = v21;
    bytes = [v43 bytes];
    v23 = 0;
    v24 = [v55[5] length] / 0x28uLL;
    while (v23 < v24)
    {
      contexta = objc_autoreleasePoolPush();
      v25 = bytes + 40 * v23;
      v27 = *(v25 + 28);
      v26 = (v25 + 28);
      if (v27 == -1)
      {
        v32 = v23 + 1;
      }

      else
      {
        v28 = objc_alloc_init(MEMORY[0x277CBEB10]);
        v29 = 0;
        v30 = *v26;
        v31 = (bytes + 32 + 40 * v23);
        v32 = v23;
        do
        {
          v69[0] = *(v31 - 2);
          *(v69 + 12) = *(v31 - 20);
          v33 = *(v31 - 1);
          if (v33 == -1)
          {
            ++v29;
          }

          else
          {
            if (v33 != v30)
            {
              goto LABEL_19;
            }

            v34 = *v31;
            v35 = [ENAdvertisement alloc];
            *v66 = v69[0];
            *&v66[12] = *(v69 + 12);
            v67 = v30;
            v68 = v34;
            v36 = [(ENAdvertisement *)v35 initWithStructRepresentation:v66];
            [v28 addObject:v36];
          }

          v31 += 5;
          ++v32;
        }

        while (v24 != v32);
        v32 = v24;
LABEL_19:
        v37 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed = [v37 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed && gLogCategory_ENAdvertisementDatabaseQuerySession <= 10 && (gLogCategory_ENAdvertisementDatabaseQuerySession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&gLogCategory_ENAdvertisementDatabaseQuerySession, "[ENAdvertisementDatabaseQuerySession enumerateAdvertisementsMatchingKeys:attenuationThreshold:timestampTolerance:error:handler:]", 10, "Converting matching advertisement batch to ExposureInfo tekStartIndex:%d count:%d invalidAdvertisementCount:%d", v23, v32 - v23, v29);
        }

        v39 = [v44 objectAtIndexedSubscript:v30];
        handlerCopy[2](handlerCopy, v39, v28);
      }

      objc_autoreleasePoolPop(contexta);
      v23 = v32;
    }

    _Block_object_dispose(&v54, 8);
    objc_autoreleasePoolPop(v42);
  }

  else
  {

    _Block_object_dispose(&v54, 8);
    objc_autoreleasePoolPop(v42);
    v64 = *MEMORY[0x277CCA458];
    v65 = @"Error encountered querying database";
    v40 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    if (error)
    {
      *error = [MEMORY[0x277CCA9B0] errorWithDomain:*MEMORY[0x277CC5BD0] code:16 userInfo:v40];
    }
  }

  return v43 != 0;
}

void __129__ENAdvertisementDatabaseQuerySession_enumerateAdvertisementsMatchingKeys_attenuationThreshold_timestampTolerance_error_handler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) advertisementsBufferMatchingDailyKeys:*(a1 + 40) attenuationThreshold:*(a1 + 64) timestampTolerance:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)beaconCountMetricsWithStartDate:(id)date endDate:(id)endDate windowDuration:(double)duration error:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  if (self->_database)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = 0;
    v12 = objc_autoreleasePoolPush();
    queue = self->_queue;
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __100__ENAdvertisementDatabaseQuerySession_beaconCountMetricsWithStartDate_endDate_windowDuration_error___block_invoke;
    v22 = &unk_278FD1008;
    v26 = &v28;
    selfCopy = self;
    v24 = dateCopy;
    v25 = endDateCopy;
    durationCopy = duration;
    dispatch_sync(queue, &v19);

    objc_autoreleasePoolPop(v12);
    v14 = v29[5];
    if (error && !v14)
    {
      v34 = *MEMORY[0x277CCA458];
      v35 = @"Nil beacon count metrics";
      v15 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:&v35 forKeys:&v34 count:{1, v19, v20, v21, v22, selfCopy}];
      *error = [MEMORY[0x277CCA9B0] errorWithDomain:*MEMORY[0x277CC5BD0] code:11 userInfo:v15];

      v14 = v29[5];
    }

    v16 = v14;
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v36 = *MEMORY[0x277CCA458];
    v37[0] = @"Nil advertisement database";
    v17 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    if (error)
    {
      *error = [MEMORY[0x277CCA9B0] errorWithDomain:*MEMORY[0x277CC5BD0] code:11 userInfo:v17];
    }

    v16 = 0;
  }

  return v16;
}

void __100__ENAdvertisementDatabaseQuerySession_beaconCountMetricsWithStartDate_endDate_windowDuration_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) beaconCountMetricsWithStartDate:*(a1 + 40) endDate:*(a1 + 48) windowDuration:*(a1 + 64)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end