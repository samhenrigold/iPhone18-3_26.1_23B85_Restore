@interface GEOReferenceTimeManager
+ (id)sharedManager;
- (BOOL)_didKernBootTimeChange;
- (BOOL)_synchronized;
- (double)_referenceTime;
- (double)bestReferenceTime;
- (id)_initInternal;
- (id)_retrievePersistedBasisRefTimeData;
- (id)bestReferenceDate;
@end

@implementation GEOReferenceTimeManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_117094 != -1)
  {
    dispatch_once(&sharedManager_onceToken_117094, &__block_literal_global_117095);
  }

  v3 = sharedManager_manager;

  return v3;
}

- (BOOL)_synchronized
{
  geo_assert_isolated();
  if (!_GEOConfigHasValue(452, &GeoServicesConfig_RefTimeValid_Metadata))
  {
    return self->_synchronized;
  }

  return GEOConfigGetBOOL(452, &GeoServicesConfig_RefTimeValid_Metadata);
}

- (double)_referenceTime
{
  geo_assert_isolated();
  Double = 0.0;
  if (_GEOConfigHasValue(451, &GeoServicesConfig_RefTimeOffset_Metadata))
  {
    Double = GEOConfigGetDouble(451, &GeoServicesConfig_RefTimeOffset_Metadata);
  }

  [(GEOReferenceTimeData *)self->_refTimeData currentReferenceTime];
  return Double + v4;
}

- (id)bestReferenceDate
{
  v2 = MEMORY[0x1E695DF00];
  [(GEOReferenceTimeManager *)self bestReferenceTime];

  return [v2 dateWithTimeIntervalSinceReferenceDate:?];
}

- (double)bestReferenceTime
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__GEOReferenceTimeManager_bestReferenceTime__block_invoke;
  v4[3] = &unk_1E7063248;
  v4[4] = &v5;
  [(GEOReferenceTimeManager *)self referenceTimeResult:v4];
  Current = v6[3];
  if (Current == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  _Block_object_dispose(&v5, 8);
  return Current;
}

- (BOOL)_didKernBootTimeChange
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__GEOReferenceTimeManager__didKernBootTimeChange__block_invoke;
  v6[3] = &unk_1E705DCF0;
  v6[4] = self;
  v6[5] = &v7;
  [(GEOReferenceTimeManager *)self _kernBootTimeResult:v6];
  if (*(v8 + 24) == 1)
  {
    v2 = GEOGetReferenceTimeManagerLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_18660C000, v2, OS_LOG_TYPE_INFO, "kern boottime mismatch", v5, 2u);
    }

    v3 = *(v8 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v3 & 1;
}

void *__49__GEOReferenceTimeManager__didKernBootTimeChange__block_invoke(void *result, void *a2, int a3, int a4)
{
  v4 = result;
  if (a4 && (result = [*(result[4] + 8) kernBootTime], result == a2))
  {
    result = [*(v4[4] + 8) kernBootTime];
    v8 = v7 != a3;
  }

  else
  {
    v8 = 1;
  }

  *(*(v4[5] + 8) + 24) = v8;
  return result;
}

uint64_t __44__GEOReferenceTimeManager_bestReferenceTime__block_invoke(uint64_t result, int a2, double a3)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
  }

  return result;
}

void __40__GEOReferenceTimeManager_sharedManager__block_invoke()
{
  v0 = [[GEOReferenceTimeManager alloc] _initInternal];
  v1 = sharedManager_manager;
  sharedManager_manager = v0;
}

- (id)_initInternal
{
  v14.receiver = self;
  v14.super_class = GEOReferenceTimeManager;
  v2 = [(GEOReferenceTimeManager *)&v14 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(1);
    syncSem = v2->_syncSem;
    v2->_syncSem = v3;

    v5 = geo_isolater_create();
    iso = v2->_iso;
    v2->_iso = v5;

    v2->_isGEOAPD = +[GEOPlatform isRunningInGeoAPd];
    v2->_attemptNum = 0;
    geoTMGetKernelMonotonicClock();
    v2->_managerStartTime = v7;
    v8 = [(GEOReferenceTimeManager *)v2 _initFromPersistenceAtTime:?];
    v2->_synchronized = v8;
    if (!v2->_isGEOAPD)
    {
      global_queue = geo_get_global_queue();
      _GEOConfigAddDelegateListenerForKey(450, &GeoServicesConfig_BasisRefTimeData_Metadata, global_queue, v2);
      goto LABEL_6;
    }

    if (!v8)
    {
      v9 = geo_get_global_queue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__GEOReferenceTimeManager__initInternal__block_invoke;
      block[3] = &unk_1E7071900;
      v13 = v2;
      dispatch_async(v9, block);

      global_queue = v13;
LABEL_6:
    }
  }

  return v2;
}

- (id)_retrievePersistedBasisRefTimeData
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _getValue(450, &GeoServicesConfig_BasisRefTimeData_Metadata, 1, 0, 0, 0);
  if (v2)
  {
    v7 = 0;
    v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v7];
    v4 = v7;
    if (!v3)
    {
      v5 = GEOGetReferenceTimeManagerLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v4;
        _os_log_impl(&dword_18660C000, v5, OS_LOG_TYPE_ERROR, "unarchival error : %@", buf, 0xCu);
      }

      _setValue(450, &GeoServicesConfig_BasisRefTimeData_Metadata, 0, 0, 0);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end