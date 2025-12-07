@interface SMCloudKitFunction
- (SMCloudKitFunction)initWithEnvironment:(unint64_t)environment version:(id)version queue:(id)queue;
- (void)requestSafetyCacheRecordFromZone:(id)zone withToken:(id)token completion:(id)completion;
@end

@implementation SMCloudKitFunction

- (SMCloudKitFunction)initWithEnvironment:(unint64_t)environment version:(id)version queue:(id)queue
{
  versionCopy = version;
  queueCopy = queue;
  if (queueCopy)
  {
    v19.receiver = self;
    v19.super_class = SMCloudKitFunction;
    v10 = [(SMCloudKitFunction *)&v19 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_queue, queue);
      v12 = @"d";
      if (environment != 1)
      {
        v12 = 0;
      }

      if (!environment)
      {
        v12 = @"p";
      }

      if (!versionCopy)
      {
        versionCopy = @"1.0";
      }

      versionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", @"SafetyMonitorServer", v12, versionCopy];
      v14 = [[_TtC13SafetyMonitor23SMCloudKitFunctionSwift alloc] initWithServiceName:versionCopy];
      swiftCKF = v11->_swiftCKF;
      v11->_swiftCKF = v14;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)requestSafetyCacheRecordFromZone:(id)zone withToken:(id)token completion:(id)completion
{
  zoneCopy = zone;
  tokenCopy = token;
  completionCopy = completion;
  v12 = completionCopy;
  if (!zoneCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    LOWORD(location[0]) = 0;
    v18 = "Invalid parameter not satisfying: zoneName";
LABEL_10:
    _os_log_error_impl(&dword_26455D000, v17, OS_LOG_TYPE_ERROR, v18, location, 2u);
    goto LABEL_7;
  }

  if (!completionCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(location[0]) = 0;
    v18 = "Invalid parameter not satisfying: completion";
    goto LABEL_10;
  }

  objc_initWeak(location, self);
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  swiftCKF = [(SMCloudKitFunction *)self swiftCKF];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__SMCloudKitFunction_requestSafetyCacheRecordFromZone_withToken_completion___block_invoke;
  v19[3] = &unk_279B64DC0;
  objc_copyWeak(v23, location);
  v20 = zoneCopy;
  v16 = v14;
  v21 = v16;
  v23[1] = a2;
  v22 = v12;
  [swiftCKF requestSafetyCacheRecordFromZone:v20 token:tokenCopy completion:v19];

  objc_destroyWeak(v23);
  objc_destroyWeak(location);
LABEL_8:
}

void __76__SMCloudKitFunction_requestSafetyCacheRecordFromZone_withToken_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__SMCloudKitFunction_requestSafetyCacheRecordFromZone_withToken_completion___block_invoke_17;
    block[3] = &unk_279B64D98;
    v19 = v8;
    v20 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 64);
    v21 = v12;
    v24 = v13;
    v23 = *(a1 + 48);
    v22 = v7;
    v25 = a2;
    dispatch_async(v11, block);

    v14 = v19;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = NSStringFromSelector(*(a1 + 64));
      *buf = 138413570;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      v32 = 1024;
      v33 = a2;
      v34 = 2112;
      v35 = v8;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_26455D000, v14, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cloud kit function released before safety cache request completed,responseCode,%d,error,%@,record,%@", buf, 0x3Au);
    }
  }

LABEL_4:
}

void __76__SMCloudKitFunction_requestSafetyCacheRecordFromZone_withToken_completion___block_invoke_17(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16 = NSStringFromSelector(*(a1 + 72));
      v17 = *(a1 + 32);
      *buf = 138413058;
      v51 = v14;
      v52 = 2112;
      v53 = v15;
      v54 = 2112;
      v55 = v16;
      v56 = 2112;
      v57 = v17;
      _os_log_error_impl(&dword_26455D000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,returning error thrown from server: %@", buf, 0x2Au);
    }

    v3 = *(*(a1 + 64) + 16);
LABEL_11:
    v3();
    return;
  }

  if (*(a1 + 56))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 40);
        v6 = *(a1 + 48);
        v7 = NSStringFromSelector(*(a1 + 72));
        *buf = 138412802;
        v51 = v5;
        v52 = 2112;
        v53 = v6;
        v54 = 2112;
        v55 = v7;
        _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,returning Safety Cache record", buf, 0x20u);
      }
    }

    v3 = *(*(a1 + 64) + 16);
    goto LABEL_11;
  }

  v8 = *(a1 + 80);
  if (v8 > 4)
  {
    if (v8 <= 6)
    {
      if (v8 == 5)
      {
        v21 = objc_alloc(MEMORY[0x277CCA9B8]);
        v40 = *MEMORY[0x277CCA450];
        v41 = @"Token missing from Access Data record";
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v11 = v21;
        v12 = 5;
      }

      else
      {
        v13 = objc_alloc(MEMORY[0x277CCA9B8]);
        v38 = *MEMORY[0x277CCA450];
        v39 = @"Release time missing from Access Data record";
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v11 = v13;
        v12 = 6;
      }

      goto LABEL_29;
    }

    if (v8 == 7)
    {
      v23 = objc_alloc(MEMORY[0x277CCA9B8]);
      v36 = *MEMORY[0x277CCA450];
      v37 = @"Zone not found";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v11 = v23;
      v12 = 7;
      goto LABEL_29;
    }

    if (v8 == 8)
    {
      v19 = objc_alloc(MEMORY[0x277CCA9B8]);
      v34 = *MEMORY[0x277CCA450];
      v35 = @"Failed to initialize Record Transport with Safety Cache record";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v11 = v19;
      v12 = 8;
      goto LABEL_29;
    }

LABEL_33:
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized response code %d", *(a1 + 80)];
    v26 = objc_alloc(MEMORY[0x277CCA9B8]);
    v32 = *MEMORY[0x277CCA450];
    v33 = v10;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v24 = [v26 initWithDomain:@"SafetyMonitorServerErrorDomain" code:1 userInfo:v27];

    goto LABEL_30;
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v22 = objc_alloc(MEMORY[0x277CCA9B8]);
      v44 = *MEMORY[0x277CCA450];
      v45 = @"Access Data record query failed";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v11 = v22;
      v12 = 3;
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x277CCA9B8]);
      v42 = *MEMORY[0x277CCA450];
      v43 = @"Safety Cache record query failed";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v11 = v18;
      v12 = 4;
    }

    goto LABEL_29;
  }

  if (v8 == 1)
  {
    v20 = objc_alloc(MEMORY[0x277CCA9B8]);
    v48 = *MEMORY[0x277CCA450];
    v49 = @"Unknown error";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v11 = v20;
    v12 = 1;
    goto LABEL_29;
  }

  if (v8 != 2)
  {
    goto LABEL_33;
  }

  v9 = objc_alloc(MEMORY[0x277CCA9B8]);
  v46 = *MEMORY[0x277CCA450];
  v47 = @"Access denied";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v11 = v9;
  v12 = 2;
LABEL_29:
  v24 = [v11 initWithDomain:@"SafetyMonitorServerErrorDomain" code:v12 userInfo:v10];
LABEL_30:

  v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v28 = *(a1 + 40);
    v29 = *(a1 + 48);
    v30 = NSStringFromSelector(*(a1 + 72));
    v31 = *(a1 + 32);
    *buf = 138413058;
    v51 = v28;
    v52 = 2112;
    v53 = v29;
    v54 = 2112;
    v55 = v30;
    v56 = 2112;
    v57 = v31;
    _os_log_error_impl(&dword_26455D000, v25, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,returning error from server: %@", buf, 0x2Au);
  }

  (*(*(a1 + 64) + 16))();
}

@end