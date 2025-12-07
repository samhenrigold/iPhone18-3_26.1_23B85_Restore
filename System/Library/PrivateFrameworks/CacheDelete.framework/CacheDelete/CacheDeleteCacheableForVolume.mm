@interface CacheDeleteCacheableForVolume
@end

@implementation CacheDeleteCacheableForVolume

void ___CacheDeleteCacheableForVolume_block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 67109378;
    v17 = 1384;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume() calling remote clientGetState with key:%@", buf, 0x12u);
  }

  v6 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___CacheDeleteCacheableForVolume_block_invoke_396;
  v11[3] = &unk_1E7F02C10;
  v7 = v6;
  v8 = *(a1 + 56);
  v12 = v7;
  v14 = v8;
  v10 = *(a1 + 40);
  v9 = v10;
  v13 = v10;
  v15 = *(a1 + 64);
  [v3 clientGetState:v7 replyBlock:v11];
}

void ___CacheDeleteCacheableForVolume_block_invoke_396(void *a1, void *a2)
{
  v121 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 67109634;
    v106 = 1386;
    v107 = 2112;
    v108 = v5;
    v109 = 2112;
    v110 = v3;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState: %@ : %@", buf, 0x1Cu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(a1[6] + 8) + 24) = [v3 isEqual:MEMORY[0x1E695E118]];
    v6 = MEMORY[0x1E696AD98];
    v7 = [MEMORY[0x1E695DF00] distantFuture];
    [v7 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = CDGetLogHandle("client");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[4];
      if (*(*(a1[6] + 8) + 24))
      {
        v13 = "TRUE";
      }

      else
      {
        v13 = "FALSE";
      }

      *buf = 67109634;
      v106 = 1390;
      v107 = 2112;
      v108 = v12;
      v109 = 2080;
      v110 = v13;
      _os_log_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState: %@ : %s", buf, 0x1Cu);
    }

LABEL_61:

LABEL_62:
    v11 = CDGetLogHandle("client");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v92 = a1[4];
      if (*(*(a1[6] + 8) + 24))
      {
        v93 = "TRUE";
      }

      else
      {
        v93 = "FALSE";
      }

      *buf = 67109634;
      v106 = 1425;
      v107 = 2112;
      v108 = v92;
      v109 = 2080;
      v110 = v93;
      _os_log_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState reply block for: %@, result: %s", buf, 0x1Cu);
    }

    goto LABEL_67;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_62;
  }

  v14 = CDGetLogHandle("client");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = a1[4];
    v16 = objc_opt_class();
    *buf = 67109890;
    v106 = 1392;
    v107 = 2112;
    v108 = v15;
    v109 = 2112;
    v110 = v16;
    v111 = 2112;
    v112 = v3;
    v17 = v16;
    _os_log_impl(&dword_1BA7F1000, v14, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState reply block for: %@, results(%@): %@", buf, 0x26u);
  }

  v11 = [v3 objectForKeyedSubscript:@"CACHE_DELETE_CACHE_ENABLED"];
  v18 = [v3 objectForKeyedSubscript:@"CACHE_DELETE_CACHEABLE_DURATION"];
  v19 = evaluateNumberProperty(v18);
  v20 = *(a1[7] + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  if (v11)
  {
    *(*(a1[6] + 8) + 24) = evaluateBoolProperty(v11);
    v22 = CDGetLogHandle("client");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = a1[4];
      v24 = "FALSE";
      if (*(*(a1[6] + 8) + 24))
      {
        v24 = "TRUE";
      }

      *buf = 67109634;
      v106 = 1404;
      v107 = 2112;
      v108 = v23;
      v109 = 2080;
      v110 = v24;
      _os_log_impl(&dword_1BA7F1000, v22, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState reply block for: %@, result: %s", buf, 0x1Cu);
    }

    if ((*(*(a1[6] + 8) + 24) & 1) == 0)
    {
      v25 = a1[5];
      v26 = v3;
      v27 = v25;
      v28 = [MEMORY[0x1E695DF00] date];
      [v28 timeIntervalSinceReferenceDate];
      v30 = v29;

      v31 = [v27 thresholds];
      v32 = [v31 objectForKeyedSubscript:@"DESIRED_DISK_THRESHOLD"];
      v33 = evaluateNumberProperty(v32);

      v34 = [v26 objectForKeyedSubscript:@"CACHE_DELETE_CACHEABLE_DURATION"];
      v35 = evaluateNumberProperty(v34);

      if (v35)
      {
        v36 = [v26 objectForKeyedSubscript:@"CACHE_DELETE_CACHEABLE_DURATION"];
        v37 = evaluateNumberProperty(v36);
        [v37 doubleValue];
        v39 = v38;
      }

      else
      {
        v36 = CDGetLogHandle("client");
        v39 = 7200.0;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          v106 = 1226;
          v107 = 2112;
          v108 = v26;
          _os_log_error_impl(&dword_1BA7F1000, v36, OS_LOG_TYPE_ERROR, "%d validateCacheableStateForVolume: duration not specified, using default. state: %@", buf, 0x12u);
        }
      }

      v43 = [v26 objectForKeyedSubscript:@"CACHE_DELETE_TIMESTAMP"];
      v44 = evaluateNumberProperty(v43);

      v104 = v33;
      if (v44)
      {
        v45 = [v26 objectForKeyedSubscript:@"CACHE_DELETE_TIMESTAMP"];
        v46 = evaluateNumberProperty(v45);
        [v46 doubleValue];
        v48 = v47;

        v49 = v30 - v48;
        v50 = 0x280000000;
        if (v33)
        {
          v51 = [v33 unsignedLongLongValue];
          if ((2 * v51) < 0x280000000)
          {
            v50 = 2 * v51;
          }
        }

        if (v49 < v39)
        {
          v52 = CDGetLogHandle("client");
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = [v27 mountPoint];
            v98 = [v27 freespace];
            humanReadableNumber([v27 freespace]);
            v54 = v101 = v27;
            v55 = humanReadableNumber(v50);
            v56 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v48];
            *buf = 67110914;
            v106 = 1252;
            v107 = 2112;
            v108 = v53;
            v109 = 2048;
            v110 = v98;
            v111 = 2112;
            v112 = v54;
            v113 = 2112;
            v114 = v55;
            v115 = 2048;
            v116 = v49;
            v117 = 2048;
            v118 = v39;
            v119 = 2112;
            v120 = v56;
            _os_log_impl(&dword_1BA7F1000, v52, OS_LOG_TYPE_DEFAULT, "%d valid cacheable state for %@: freespace is %llu (%@) (%@ required), age is %f seconds (duration is: %f seconds), set at: %@", buf, 0x4Eu);

            v27 = v101;
          }

LABEL_41:
          v57 = 1;
          goto LABEL_42;
        }

        v58 = [v27 freespace];
        v52 = CDGetLogHandle("client");
        v59 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
        if (v58 < v50)
        {
          if (v59)
          {
            v60 = [v27 mountPoint];
            v99 = [v27 freespace];
            v102 = humanReadableNumber([v27 freespace]);
            v61 = humanReadableNumber(v50);
            v62 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v48];
            *buf = 67110914;
            v106 = 1268;
            v107 = 2112;
            v108 = v60;
            v109 = 2048;
            v110 = v99;
            v111 = 2112;
            v112 = v102;
            v113 = 2112;
            v114 = v61;
            v115 = 2048;
            v116 = v49;
            v117 = 2048;
            v118 = v39;
            v119 = 2112;
            v120 = v62;
            v63 = v62;
            _os_log_impl(&dword_1BA7F1000, v52, OS_LOG_TYPE_DEFAULT, "%d valid cacheable state for %@: freespace is %llu (%@) (%@ required), age is %f seconds (duration is: %f seconds), set at: %@", buf, 0x4Eu);
          }

          goto LABEL_41;
        }

        if (v59)
        {
          v94 = [v27 mountPoint];
          v100 = [v27 freespace];
          v103 = humanReadableNumber([v27 freespace]);
          v95 = humanReadableNumber(v50);
          v96 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v48];
          *buf = 67110914;
          v106 = 1277;
          v107 = 2112;
          v108 = v94;
          v109 = 2048;
          v110 = v100;
          v111 = 2112;
          v112 = v103;
          v113 = 2112;
          v114 = v95;
          v115 = 2048;
          v116 = v49;
          v117 = 2048;
          v118 = v39;
          v119 = 2112;
          v120 = v96;
          v97 = v96;
          _os_log_impl(&dword_1BA7F1000, v52, OS_LOG_TYPE_DEFAULT, "%d invalid cacheable state for %@: freespace is %llu (%@) (%@ required), age is %f seconds (duration is: %f seconds), set at: %@", buf, 0x4Eu);
        }
      }

      else
      {
        v52 = CDGetLogHandle("client");
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          v106 = 1233;
          v107 = 2112;
          v108 = v26;
          _os_log_error_impl(&dword_1BA7F1000, v52, OS_LOG_TYPE_ERROR, "%d validateCacheableStateForVolume: Invalid state, no timestamp: %@", buf, 0x12u);
        }
      }

      v57 = 0;
LABEL_42:

      v64 = CDGetLogHandle("client");
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = " NOT";
        if (v57)
        {
          v65 = "";
        }

        *buf = 67109378;
        v106 = 1280;
        v107 = 2080;
        v108 = v65;
        _os_log_impl(&dword_1BA7F1000, v64, OS_LOG_TYPE_DEFAULT, "%d validateCacheableStateForVolume: cacheable state is%s valid", buf, 0x12u);
      }

      if ((v57 & 1) == 0)
      {
        v66 = CDGetLogHandle("client");
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v67 = a1[4];
          v68 = "FALSE";
          if (*(*(a1[6] + 8) + 24))
          {
            v68 = "TRUE";
          }

          *buf = 67109634;
          v106 = 1414;
          v107 = 2112;
          v108 = v67;
          v109 = 2080;
          v110 = v68;
          _os_log_impl(&dword_1BA7F1000, v66, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState reply block for: %@, result: %s", buf, 0x1Cu);
        }

        *(*(a1[6] + 8) + 24) = 1;
        v69 = a1[5];
        v70 = MEMORY[0x1E696AD98];
        v71 = [MEMORY[0x1E695DF00] distantFuture];
        [v71 timeIntervalSinceReferenceDate];
        v72 = [v70 numberWithDouble:?];
        _CacheDeleteSetCacheableForVolume(v69, v72, 1);

        v73 = MEMORY[0x1E696AD98];
        v74 = [MEMORY[0x1E695DF00] distantFuture];
        [v74 timeIntervalSinceReferenceDate];
        v75 = [v73 numberWithDouble:?];
        v76 = *(a1[7] + 8);
        v77 = *(v76 + 40);
        *(v76 + 40) = v75;

        v78 = CDGetLogHandle("client");
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v79 = a1[4];
          v80 = "FALSE";
          if (*(*(a1[6] + 8) + 24))
          {
            v80 = "TRUE";
          }

          *buf = 67109634;
          v106 = 1418;
          v107 = 2112;
          v108 = v79;
          v109 = 2080;
          v110 = v80;
          _os_log_impl(&dword_1BA7F1000, v78, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState reply block for: %@, result: %s", buf, 0x1Cu);
        }
      }

      v81 = MEMORY[0x1E696AEC0];
      [*(*(a1[7] + 8) + 40) doubleValue];
      v83 = v82;
      v84 = MEMORY[0x1E695DF00];
      [*(*(a1[7] + 8) + 40) doubleValue];
      v85 = [v84 dateWithTimeIntervalSinceNow:?];
      v86 = [v81 stringWithFormat:@"cacheable disabled, will reset in %f seconds at %@", v83, v85];
      v87 = *(a1[8] + 8);
      v88 = *(v87 + 40);
      *(v87 + 40) = v86;

      v89 = CDGetLogHandle("client");
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v90 = a1[4];
        v91 = "FALSE";
        if (*(*(a1[6] + 8) + 24))
        {
          v91 = "TRUE";
        }

        *buf = 67109634;
        v106 = 1423;
        v107 = 2112;
        v108 = v90;
        v109 = 2080;
        v110 = v91;
        _os_log_impl(&dword_1BA7F1000, v89, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState reply block for: %@, result: %s", buf, 0x1Cu);
      }

      goto LABEL_61;
    }
  }

  else
  {
    v40 = CDGetLogHandle("client");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = a1[4];
      if (*(*(a1[6] + 8) + 24))
      {
        v42 = "TRUE";
      }

      else
      {
        v42 = "FALSE";
      }

      *buf = 67109634;
      v106 = 1399;
      v107 = 2112;
      v108 = v41;
      v109 = 2080;
      v110 = v42;
      _os_log_impl(&dword_1BA7F1000, v40, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState reply block for: %@, result: %s", buf, 0x1Cu);
    }

    v11 = 0;
  }

LABEL_67:
}

@end