@interface _CDMemoryUsageIntervalTracker
+ (id)sharedInstance;
- (_CDMemoryUsageIntervalTracker)init;
- (void)beginInterval:(uint64_t)interval;
- (void)endInterval:(uint64_t)interval;
@end

@implementation _CDMemoryUsageIntervalTracker

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken != -1)
  {
    +[_CDMemoryUsageIntervalTracker sharedInstance];
  }

  v0 = sharedInstance_instance;

  return v0;
}

- (_CDMemoryUsageIntervalTracker)init
{
  v9.receiver = self;
  v9.super_class = _CDMemoryUsageIntervalTracker;
  v2 = [(_CDMemoryUsageIntervalTracker *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    if (active_memory_limit_onceToken != -1)
    {
      [_CDMemoryUsageIntervalTracker init];
    }

    v4 = active_memory_limit_limit;
    v3->_activeMemoryLimit = active_memory_limit_limit;
    if (!v4)
    {
      v7 = 0;
      goto LABEL_8;
    }

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    activeIntervals = v3->_activeIntervals;
    v3->_activeIntervals = weakObjectsHashTable;

    v3->_intervalTimeout = 60000000000;
  }

  v7 = v3;
LABEL_8:

  return v7;
}

- (void)beginInterval:(uint64_t)interval
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (interval)
  {
    context = objc_autoreleasePoolPush();
    os_unfair_lock_lock((interval + 8));
    v4 = (*(interval + 16) + 1) % 0x7FFFFFFFFFFFFFFEuLL;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    intervalCopy = interval;
    *(interval + 16) = v4;
    if (v3)
    {
      v3[10] = v4;
    }

    v36 = 0;
    get_memory_usage(v3 + 1, &v36, v3 + 2, 1);
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    allObjects = [*(interval + 32) allObjects];
    v6 = [allObjects countByEnumeratingWithState:&v32 objects:v49 count:16];
    v7 = 0x1E7366000uLL;
    v29 = v3;
    if (v6)
    {
      v8 = *v33;
      do
      {
        v9 = 0;
        do
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(allObjects);
          }

          v10 = *(*(&v32 + 1) + 8 * v9);
          if (v10)
          {
            v11 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW_APPROX) - v10[7];
            if (v11 > *(intervalCopy + 40))
            {
              instrumentationChannel = [*(v7 + 648) instrumentationChannel];
              if (os_log_type_enabled(instrumentationChannel, OS_LOG_TYPE_ERROR))
              {
                v15 = v10[10];
                name = [v10 name];
                client = [v10 client];
                *buf = 134218754;
                v38 = v15;
                v39 = 2112;
                v40 = name;
                v41 = 2112;
                v42 = client;
                v43 = 2048;
                v44 = v11 / 0x3B9ACA00;
                _os_log_error_impl(&dword_191750000, instrumentationChannel, OS_LOG_TYPE_ERROR, "[error] id=%lu name=%@ client=%@ tracking stopped due to age %llus", buf, 0x2Au);

                v3 = v29;
                v7 = 0x1E7366000;
              }

              v10[6] = 2;
              [*(intervalCopy + 32) removeObject:v10];
              goto LABEL_21;
            }

            v13 = v36;
            v14 = v10[10];
            if (v10[11] > v36)
            {
              v13 = v10[11];
            }

            v10[11] = v13;
          }

          else
          {
            v14 = 0;
          }

          [indexSet addIndex:v14];
          if (v3)
          {
            *(v3 + 64) = 1;
          }

LABEL_21:
          ++v9;
        }

        while (v6 != v9);
        v18 = [allObjects countByEnumeratingWithState:&v32 objects:v49 count:16];
        v6 = v18;
      }

      while (v18);
    }

    [*(intervalCopy + 32) addObject:v3];
    instrumentationChannel2 = [*(v7 + 648) instrumentationChannel];
    if (os_log_type_enabled(instrumentationChannel2, OS_LOG_TYPE_DEBUG))
    {
      v20 = v3;
      if (v3)
      {
        v3 = v3[10];
      }

      name2 = [v20 name];
      client2 = [v29 client];
      if (v29)
      {
        v23 = v29[1] * 0.0009765625 * 0.0009765625;
        v24 = *(v29 + 64);
      }

      else
      {
        v24 = 0;
        v23 = 0.0;
      }

      _cd_commaSeparatedIndexes = [indexSet _cd_commaSeparatedIndexes];
      v26 = _cd_commaSeparatedIndexes;
      v27 = "";
      *buf = 134219266;
      v38 = v3;
      v39 = 2112;
      if (v24)
      {
        v27 = "*, concurrent: ";
      }

      v40 = name2;
      v41 = 2112;
      v42 = client2;
      v43 = 2048;
      v44 = *&v23;
      v45 = 2082;
      v46 = v27;
      v47 = 2114;
      v48 = _cd_commaSeparatedIndexes;
      _os_log_debug_impl(&dword_191750000, instrumentationChannel2, OS_LOG_TYPE_DEBUG, "[begin] id=%ld name=%@ client=%@ (start: %.1fMB%{public}s%{public}@)", buf, 0x3Eu);

      v3 = v29;
    }

    os_unfair_lock_unlock((intervalCopy + 8));
    objc_autoreleasePoolPop(context);
  }
}

- (void)endInterval:(uint64_t)interval
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (interval)
  {
    os_unfair_lock_lock((interval + 8));
    v47 = 0;
    get_memory_usage(v3 + 3, &v47, v3 + 4, 0);
    if (v3)
    {
      v4 = v3[11];
      v5 = v47;
      if (v4 >= v47)
      {
        v47 = v3[11];
        v6 = "*";
        v5 = v4;
      }

      else
      {
        v6 = "";
      }

      v3[12] = v5;
    }

    else if (v47)
    {
      v6 = "";
    }

    else
    {
      v6 = "*";
    }

    [*(interval + 32) removeObject:v3];
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v8 = *(interval + 32);
    v9 = [v8 countByEnumeratingWithState:&v43 objects:v72 count:16];
    if (v9)
    {
      v10 = *v44;
      v11 = "*";
      do
      {
        v12 = 0;
        do
        {
          if (*v44 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v43 + 1) + 8 * v12);
          if (v13)
          {
            v14 = v47;
            v15 = *(v13 + 80);
            if (*(v13 + 88) > v47)
            {
              v14 = *(v13 + 88);
            }

            *(v13 + 88) = v14;
          }

          else
          {
            v15 = 0;
          }

          [indexSet addIndex:v15];
          ++v12;
        }

        while (v9 != v12);
        v16 = [v8 countByEnumeratingWithState:&v43 objects:v72 count:16];
        v9 = v16;
      }

      while (v16);
    }

    else
    {
      v11 = "";
    }

    if (v3)
    {
      v17 = v3[1];
    }

    else
    {
      v17 = 0;
    }

    v18 = *(interval + 24);
    v19 = v18;
    v20 = v18 * 0.9;
    v21 = v20 < v47 && v20 > v17;
    v23 = v17 < v18 && v47 > v18;
    v24 = +[_CDLogging instrumentationChannel];
    v25 = v24;
    if (v21)
    {
      v26 = 16;
    }

    else
    {
      v26 = 2;
    }

    if (v23)
    {
      v27 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v27 = v26;
    }

    if (os_log_type_enabled(v24, v27))
    {
      v41 = v11;
      if (v3)
      {
        v39 = v3[10];
      }

      else
      {
        v39 = 0;
      }

      name = [v3 name];
      client = [v3 client];
      if (v23)
      {
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"error: operation peaked over limit of %.0fMB ", v19 * 0.0009765625 * 0.0009765625];
        v36 = 0;
      }

      else if (v21)
      {
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"warning: operation peaked near limit of %.0fMB ", v19 * 0.0009765625 * 0.0009765625];
        v36 = 1;
      }

      else
      {
        v36 = 0;
        v42 = &stru_1F05B9908;
      }

      if (v3)
      {
        if (*(v3 + 64))
        {
          v29 = "*";
        }

        else
        {
          v29 = "";
        }

        v28.i64[1] = v3[1];
        v28.i64[0] = v3[12];
        v30 = vdupq_n_s64(0x3F50000000000000uLL);
        v37 = vmulq_f64(vmulq_f64(vcvtq_f64_u64(v28), v30), v30);
        v31 = v3[3] * 0.0009765625 * 0.0009765625;
      }

      else
      {
        v37 = 0u;
        v31 = 0.0;
        v29 = "";
      }

      v32 = [indexSet count];
      _cd_commaSeparatedIndexes = [indexSet _cd_commaSeparatedIndexes];
      v34 = _cd_commaSeparatedIndexes;
      *buf = 134220802;
      v35 = ", concurrent: ";
      v49 = v39;
      if (!v32)
      {
        v35 = "";
      }

      v50 = 2112;
      v51 = name;
      v52 = 2112;
      v53 = client;
      v54 = 2114;
      v55 = v42;
      v56 = 2048;
      v57 = v37.f64[1];
      v58 = 2082;
      v59 = v29;
      v60 = 2048;
      v61 = v37.f64[0];
      v62 = 2082;
      v63 = v6;
      v64 = 2048;
      v65 = v31;
      v66 = 2082;
      v67 = v41;
      v68 = 2082;
      v69 = v35;
      v70 = 2114;
      v71 = _cd_commaSeparatedIndexes;
      _os_log_impl(&dword_191750000, v25, v27, "[end]   id=%lu name=%@ client=%@ %{public}@(start: %.1fMB%{public}s, peak: %.1fMB%{public}s, end: %.1fMB%{public}s%{public}s%{public}@)", buf, 0x7Au);

      if (v36)
      {
      }

      if (v23)
      {
      }
    }

    os_unfair_lock_unlock((interval + 8));
  }
}

@end