@interface MOUserData
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)error;
- (MOUserData)initWithEventManager:(id)manager;
- (MOUserData)initWithLoggingEnabled:(BOOL)enabled;
- (void)_fetchUserDataWithCompletionHandler:(id)handler;
- (void)setValues;
- (void)submitUserDataWithCompletionHandler:(id)handler;
@end

@implementation MOUserData

- (MOUserData)initWithEventManager:(id)manager
{
  managerCopy = manager;
  v6 = [(MOUserData *)self initWithLoggingEnabled:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventManager, manager);
    stateIHA = v7->_stateIHA;
    v7->_stateIHA = &__kCFBooleanFalse;

    age = v7->_age;
    v7->_age = &off_100369F10;

    gender = v7->_gender;
    v7->_gender = &off_100369F10;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.momentsd.MOUserData", v11);
    queue = v7->_queue;
    v7->_queue = v12;
  }

  return v7;
}

- (MOUserData)initWithLoggingEnabled:(BOOL)enabled
{
  v38.receiver = self;
  v38.super_class = MOUserData;
  v3 = [(MOMetric *)&v38 initWithLoggingEnabled:enabled];
  if (v3)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    bOOLeanKeys = [objc_opt_class() BOOLeanKeys];
    v5 = [bOOLeanKeys countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v35;
      do
      {
        v8 = 0;
        do
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(bOOLeanKeys);
          }

          v9 = *(*(&v34 + 1) + 8 * v8);
          metrics = [(MOMetric *)v3 metrics];
          [metrics setObject:&__kCFBooleanFalse forKeyedSubscript:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [bOOLeanKeys countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v6);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    integerKeys = [objc_opt_class() integerKeys];
    v12 = [integerKeys countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        v15 = 0;
        do
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(integerKeys);
          }

          v16 = *(*(&v30 + 1) + 8 * v15);
          metrics2 = [(MOMetric *)v3 metrics];
          [metrics2 setObject:&off_100369F10 forKeyedSubscript:v16];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [integerKeys countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v13);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    bucketedKeys = [objc_opt_class() bucketedKeys];
    v19 = [bucketedKeys countByEnumeratingWithState:&v26 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        v22 = 0;
        do
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(bucketedKeys);
          }

          v23 = *(*(&v26 + 1) + 8 * v22);
          metrics3 = [(MOMetric *)v3 metrics];
          [metrics3 setObject:&off_100369F10 forKeyedSubscript:v23];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [bucketedKeys countByEnumeratingWithState:&v26 objects:v39 count:16];
      }

      while (v20);
    }
  }

  return v3;
}

+ (id)supportedMetricKeys
{
  integerKeys = [objc_opt_class() integerKeys];
  v3 = [NSMutableSet setWithSet:integerKeys];

  bOOLeanKeys = [objc_opt_class() BOOLeanKeys];
  allObjects = [bOOLeanKeys allObjects];
  [v3 addObjectsFromArray:allObjects];

  bucketedKeys = [objc_opt_class() bucketedKeys];
  allObjects2 = [bucketedKeys allObjects];
  [v3 addObjectsFromArray:allObjects2];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)error
{
  [(MOUserData *)self setValues];
  v6.receiver = self;
  v6.super_class = MOUserData;
  return [(MOMetric *)&v6 submitMetricsWithError:error];
}

- (void)submitUserDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOUserData submitUserDataWithCompletionHandler:];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOUserData.m" lineNumber:92 description:{@"Invalid parameter not satisfying: completion (in %s:%d)", "-[MOUserData submitUserDataWithCompletionHandler:]", 92}];
  }

  queue = [(MOUserData *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __50__MOUserData_submitUserDataWithCompletionHandler___block_invoke;
  block[3] = &unk_100337B48;
  block[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  dispatch_async(queue, block);
}

void __50__MOUserData_submitUserDataWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __50__MOUserData_submitUserDataWithCompletionHandler___block_invoke_2;
  v2[3] = &unk_10033A4E8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _fetchUserDataWithCompletionHandler:v2];
}

void __50__MOUserData_submitUserDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setValues];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityUserData);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Submitting age/biologicalSex to CoreAnalytics gated by IHA.", buf, 2u);
  }

  v10.receiver = *(a1 + 32);
  v10.super_class = MOUserData;
  v11 = 0;
  objc_msgSendSuper2(&v10, "submitMetricsWithError:", &v11);
  v9 = v11;
  (*(*(a1 + 40) + 16))();
}

- (void)_fetchUserDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOUserData _fetchUserDataWithCompletionHandler:];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOUserData.m" lineNumber:107 description:{@"Invalid parameter not satisfying: completion (in %s:%d)", "-[MOUserData _fetchUserDataWithCompletionHandler:]", 107}];
  }

  if (self->_eventManager && objc_opt_class() && +[MOPlatformInfo isIHAEnabled])
  {
    queue = [(MOUserData *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke;
    block[3] = &unk_100337B48;
    block[4] = self;
    v12 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityUserData);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "no IHA permission", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStateIHA:&__kCFBooleanTrue];
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityUserData);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Fetching age/biologicalSex for CoreAnalytics, with IHA permission.", buf, 2u);
  }

  *buf = 0;
  v55 = buf;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__20;
  v58 = __Block_byref_object_dispose__20;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__20;
  v52 = __Block_byref_object_dispose__20;
  v53 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [*(a1 + 32) eventManager];
  v5 = [v4 getHealthKitManager];

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_125;
  v44[3] = &unk_10033A510;
  v6 = v3;
  v45 = v6;
  v46 = buf;
  v47 = &v48;
  [v5 fetchUserBiologicalSexWithHandler:v44];
  v7 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/Analytics/MOUserData.m", 128, "[MOUserData _fetchUserDataWithCompletionHandler:]_block_invoke_2"];
  v43 = 0;
  v8 = MOSemaphoreWaitAndFaultIfTimeoutDefaultTimeout_Internal(v6, &v43, v7);
  v9 = v43;
  v10 = v43;
  if (!v8)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v49[5])
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityUserData);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_2();
    }
  }

  if (v10)
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityUserData);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_3();
    }

    objc_storeStrong(v49 + 5, v9);
  }

  v14 = *(v55 + 5);
  if (v14)
  {
    v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 biologicalSex]);
    [*(a1 + 32) setGender:v15];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__20;
  v41 = __Block_byref_object_dispose__20;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__20;
  v35 = __Block_byref_object_dispose__20;
  v36 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_136;
  v27[3] = &unk_10033A538;
  v16 = dispatch_semaphore_create(0);
  v28 = v16;
  v29 = &v37;
  v30 = &v31;
  [v5 fetchUserAgeWithHandler:v27];
  v17 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/Analytics/MOUserData.m", 157, "[MOUserData _fetchUserDataWithCompletionHandler:]_block_invoke_2"];
  v26 = 0;
  v18 = MOSemaphoreWaitAndFaultIfTimeoutDefaultTimeout_Internal(v16, &v26, v17);
  v19 = v26;
  v20 = v26;
  if (!v18)
  {
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  if (v32[5])
  {
    v22 = _mo_log_facility_get_os_log(&MOLogFacilityUserData);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_5();
    }
  }

  if (v20)
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityUserData);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_cold_6();
    }

    objc_storeStrong(v32 + 5, v19);
  }

  v24 = v38[5];
  if (v24)
  {
    v25 = [v24 copy];
    [*(a1 + 32) setAge:v25];
  }

  (*(*(a1 + 40) + 16))();

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(buf, 8);
}

void __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_125(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (!a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __50__MOUserData__fetchUserDataWithCompletionHandler___block_invoke_136(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (!a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)setValues
{
  stateIHA = self->_stateIHA;
  metrics = [(MOMetric *)self metrics];
  [metrics setObject:stateIHA forKeyedSubscript:@"IHA_state"];

  age = self->_age;
  metrics2 = [(MOMetric *)self metrics];
  [metrics2 setObject:age forKeyedSubscript:@"age"];

  metrics3 = [(MOMetric *)self metrics];
  v8 = [metrics3 objectForKeyedSubscript:@"age"];
  v9 = [MOMetric binForNumber:v8 bins:&off_10036DB48];
  metrics4 = [(MOMetric *)self metrics];
  [metrics4 setObject:v9 forKeyedSubscript:@"ageBucketed"];

  gender = self->_gender;
  metrics5 = [(MOMetric *)self metrics];
  [metrics5 setObject:gender forKeyedSubscript:@"gender"];
}

- (void)submitUserDataWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_5();
  v2 = 1024;
  v3 = 92;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", v1, 0x12u);
}

- (void)_fetchUserDataWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_5();
  v2 = 1024;
  v3 = 107;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", v1, 0x12u);
}

@end