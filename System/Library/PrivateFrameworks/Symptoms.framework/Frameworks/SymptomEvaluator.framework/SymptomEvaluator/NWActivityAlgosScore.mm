@interface NWActivityAlgosScore
+ (id)sharedInstance;
+ (void)processNWActivitySuperMetric:(id)metric;
- (NWActivityAlgosScore)init;
- (id)_processNWActivityTransactions:(id)transactions;
- (void)_postSymptomFor:(id)for withScore:(unint64_t)score;
- (void)_processNWActivitySuperMetric:(id)metric;
@end

@implementation NWActivityAlgosScore

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__NWActivityAlgosScore_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_16 != -1)
  {
    dispatch_once(&sharedInstance_pred_16, block);
  }

  v2 = sharedInstance_sharedInstance_16;

  return v2;
}

void __38__NWActivityAlgosScore_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_16;
  sharedInstance_sharedInstance_16 = v1;

  v3 = +[SystemProperties sharedInstance];
  internalBuild = [v3 internalBuild];
}

+ (void)processNWActivitySuperMetric:(id)metric
{
  metricCopy = metric;
  v4 = +[NWActivityAlgosScore sharedInstance];
  [v4 _processNWActivitySuperMetric:metricCopy];
}

- (NWActivityAlgosScore)init
{
  v6.receiver = self;
  v6.super_class = NWActivityAlgosScore;
  v2 = [(NWActivityAlgosScore *)&v6 init];
  if (v2 && objc_opt_class())
  {
    connectionScore = [MEMORY[0x277D2CA30] connectionScore];
    activityScore = v2->_activityScore;
    v2->_activityScore = connectionScore;
  }

  return v2;
}

- (id)_processNWActivityTransactions:(id)transactions
{
  v93 = *MEMORY[0x277D85DE8];
  transactionsCopy = transactions;
  if (transactionsCopy)
  {
    v4 = transactionsCopy;
    taskMetrics = [transactionsCopy taskMetrics];
    v69 = v4;
    if (taskMetrics && (v6 = taskMetrics, [v4 taskMetrics], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8))
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      obj = [v4 taskMetrics];
      v72 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
      if (v72)
      {
        v10 = 0;
        v71 = *v84;
        *&v9 = 138412290;
        v68 = v9;
        v11 = @"totalBytesRead";
LABEL_6:
        v12 = 0;
LABEL_7:
        if (*v84 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v83 + 1) + 8 * v12);
        v14 = [NWActivitySuperMetric limitForFragmentType:3, v68];
        if (v10 <= v14)
        {
          dictionaryReport = [v13 dictionaryReport];
          v16 = dictionaryReport;
          if (!dictionaryReport)
          {
            v26 = algosLogHandle(0);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = v68;
              v88 = *&v13;
              _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "Failed to extract task metric dictionary report for %@", buf, 0xCu);
            }

            goto LABEL_54;
          }

          v74 = v12;
          v75 = v10;
          v17 = [dictionaryReport objectForKeyedSubscript:@"didCompleteWithError"];
          *&v18 = COERCE_DOUBLE([v17 unsignedLongLongValue]);

          v20 = algosLogHandle(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v88 = *&v18;
            _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "totalTaskDuration: %llu", buf, 0xCu);
          }

          v21 = [v16 objectForKeyedSubscript:@"error"];
          *&v22 = COERCE_DOUBLE([v21 longLongValue]);

          v24 = algosLogHandle(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v88 = *&v22;
            _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "Error: %llu", buf, 0xCu);
          }

          v73 = v16;
          v25 = [v16 objectForKeyedSubscript:@"transactionMetrics"];
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v26 = v25;
          v78 = [v26 countByEnumeratingWithState:&v79 objects:v91 count:16];
          if (!v78)
          {
            goto LABEL_53;
          }

          v27 = *v80;
          v28 = v18;
          v76 = v26;
LABEL_17:
          v29 = 0;
          while (1)
          {
            if (*v80 != v27)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v79 + 1) + 8 * v29);
            v31 = [v30 objectForKeyedSubscript:v11];
            unsignedLongLongValue = [v31 unsignedLongLongValue];

            v33 = [v30 objectForKeyedSubscript:@"requestStart"];
            unsignedLongLongValue2 = [v33 unsignedLongLongValue];

            v35 = v28;
            if ([v26 count]< 2)
            {
              goto LABEL_29;
            }

            v36 = v27;
            v37 = v18;
            v38 = v11;
            v39 = [v30 objectForKeyedSubscript:@"responseEnd"];
            unsignedLongLongValue3 = [v39 unsignedLongLongValue];

            if (unsignedLongLongValue2 && unsignedLongLongValue3 > unsignedLongLongValue2)
            {
              break;
            }

            v43 = algosLogHandle(v41);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "Invalid input, skipping this redirect request.", buf, 2u);
            }

            v11 = v38;
            v18 = v37;
            v27 = v36;
            v26 = v76;
LABEL_45:
            if (v78 == ++v29)
            {
              v78 = [v26 countByEnumeratingWithState:&v79 objects:v91 count:16];
              if (v78)
              {
                goto LABEL_17;
              }

LABEL_53:
              v10 = v75 + 1;

              v16 = v73;
              v12 = v74;
LABEL_54:

              if (++v12 == v72)
              {
                v72 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
                if (!v72)
                {
                  goto LABEL_64;
                }

                goto LABEL_6;
              }

              goto LABEL_7;
            }
          }

          v35 = unsignedLongLongValue3 - unsignedLongLongValue2;
          v11 = v38;
          v18 = v37;
          v27 = v36;
          v26 = v76;
LABEL_29:
          v44 = [v30 objectForKeyedSubscript:@"responseStart"];
          unsignedLongLongValue4 = [v44 unsignedLongLongValue];

          if (unsignedLongLongValue2 && unsignedLongLongValue4 > unsignedLongLongValue2)
          {
            v47 = (unsignedLongLongValue4 - unsignedLongLongValue2) / 1000.0;
          }

          else
          {
            v47 = 0.0;
            if (!(v22 | v18))
            {
              v52 = algosLogHandle(v46);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEBUG, "Bad input, double check responseStart and requestStart. Skipping current task.", buf, 2u);
              }

              goto LABEL_53;
            }
          }

          v48 = v35 / 1000.0;
          if (unsignedLongLongValue)
          {
            v49 = v22 != 0;
          }

          else
          {
            v49 = 0;
          }

          if (v22 != 0 && unsignedLongLongValue == 0)
          {
            *&v50 = NAN;
          }

          else
          {
            v50 = v22;
          }

          if (v49 && v18 > 0x50)
          {
            v22 = 1;
          }

          else
          {
            v22 = v50;
          }

          v51 = algosLogHandle(v46);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218240;
            v88 = unsignedLongLongValue / 1000000.0 + 0.02;
            v89 = 2048;
            v90 = v48;
            _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_DEBUG, "Score baseline %f  vs. actual %f secs", buf, 0x16u);
          }

          [(NWSAlgosConnectionScore *)self->_activityScore addConnectionRow:unsignedLongLongValue ttfb:v22 ttlb:v47 basettfb:v48 basettlb:0.0 weight:unsignedLongLongValue / 1000000.0 + 0.02 failed:1.0];
          goto LABEL_45;
        }

        v55 = algosLogHandle(v14);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          taskMetrics2 = [v69 taskMetrics];
          v57 = COERCE_DOUBLE([taskMetrics2 count]);
          *buf = 134217984;
          v88 = v57;
          _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_INFO, "Reached max task fragments for scoring, dropping the rest (count %lu)", buf, 0xCu);
        }
      }

LABEL_64:

      v58 = [(NWSAlgosConnectionScore *)self->_activityScore scoreConnection:0 label:0];
      v53 = [v58 mutableCopy];

      v60 = algosLogHandle(v59);
      v61 = v60;
      if (v53)
      {
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v62 = [v53 objectForKeyedSubscript:@"score"];
          [v62 doubleValue];
          v64 = v63;
          taskMetrics3 = [v69 taskMetrics];
          v66 = [taskMetrics3 count];
          *buf = 134218240;
          v88 = v64;
          v89 = 2048;
          v90 = *&v66;
          _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_INFO, "Calculated an Algos Score: %f for %lu samples", buf, 0x16u);
        }

        [(NWSAlgosConnectionScore *)self->_activityScore clearConnectionRows];
        [v53 removeObjectForKey:@"label"];
        v53 = v53;
        v54 = v53;
      }

      else
      {
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_ERROR, "Failed to retrieve score for task metrics", buf, 2u);
        }

        [(NWSAlgosConnectionScore *)self->_activityScore clearConnectionRows];
        v54 = 0;
      }
    }

    else
    {
      v53 = algosLogHandle(taskMetrics);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v53, OS_LOG_TYPE_DEBUG, "No task metrics found for this supermetric, not calculating an Algos score.", buf, 2u);
      }

      v54 = 0;
    }

    transactionsCopy = v69;
  }

  else
  {
    v54 = 0;
  }

  return v54;
}

- (void)_processNWActivitySuperMetric:(id)metric
{
  v30 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  if (metricCopy)
  {
    if (objc_opt_class())
    {
      activity = [metricCopy activity];
      dictionaryReport = [activity dictionaryReport];
      v7 = [dictionaryReport objectForKeyedSubscript:@"bundleID"];

      activity2 = [metricCopy activity];
      dictionaryReport2 = [activity2 dictionaryReport];
      v10 = [dictionaryReport2 objectForKeyedSubscript:@"activityDomain"];

      activity3 = [metricCopy activity];
      dictionaryReport3 = [activity3 dictionaryReport];
      v13 = [dictionaryReport3 objectForKeyedSubscript:@"activityLabel"];

      activity4 = [metricCopy activity];
      dictionaryReport4 = [activity4 dictionaryReport];
      v16 = [dictionaryReport4 objectForKeyedSubscript:@"activityUUID"];

      v18 = algosLogHandle(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v22 = 138413058;
        v23 = v10;
        v24 = 2112;
        v25 = v13;
        v26 = 2112;
        v27 = v16;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "Processing activity (domain: %@, label: %@, uuid: %@, bundle_id: %@)", &v22, 0x2Au);
      }

      v19 = [(NWActivityAlgosScore *)self _processNWActivityTransactions:metricCopy];
      v20 = v19;
      if (v19)
      {
        v19 = [metricCopy setAlgosScore:v19];
      }

      v21 = algosLogHandle(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = 138412802;
        v23 = v10;
        v24 = 2112;
        v25 = v13;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "Finished processing activity (domain: %@, label: %@, uuid: %@)", &v22, 0x20u);
      }
    }

    else
    {
      v7 = algosLogHandle(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "Algos scoring is not available", &v22, 2u);
      }
    }
  }
}

- (void)_postSymptomFor:(id)for withScore:(unint64_t)score
{
  v11 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v6 = algosLogHandle(forCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412546;
    v8 = forCopy;
    v9 = 2048;
    v10 = AlgosUnpackScore(score);
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Posting symptom for: %@, its Algos: %f", &v7, 0x16u);
  }

  internal_symptom_new(405521);
  internal_symptom_set_qualifier();
  [forCopy length];
  [forCopy UTF8String];
  internal_symptom_set_additional_qualifier();
  internal_symptom_send_immediate();
}

@end