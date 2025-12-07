@interface LBFAggregator
- (BOOL)dumpFetchedEvents;
- (BOOL)fetchBucket:(int64_t)bucket;
- (BOOL)fetchBuckets:(id)buckets;
- (BOOL)fetchEvents;
- (BOOL)setUpBuckets;
- (BOOL)upload:(BOOL)upload uploadRawEvents:(BOOL)events skipNullIdentifiers:(BOOL)identifiers;
- (LBFAggregator)init;
- (double)getRandomCoinFlip;
- (id)dateToStringInUTCAndLocal:(id)local;
- (id)dumpAggregate;
- (id)ensureDeploymentEventsHolderInBucket:(id)bucket bucketIndex:(unint64_t)index;
- (id)ensureExperimentEventsHolderInBucket:(id)bucket bucketIndex:(unint64_t)index;
- (id)fetchedEventsInDictionaries;
- (id)getAggregatedStatesUpdateTimestamp:(BOOL)timestamp skipNullIdentifiers:(BOOL)identifiers;
- (id)getBucketEndDate;
- (id)getBucketsNotAggregated;
- (id)getTransitionProcessingEventArray:(id)array mlRuntimeInCurrentBucket:(BOOL)bucket mlRuntimeInPreviousBucket:(BOOL)previousBucket;
- (id)getTrialIdentifierFromBMEvent:(id)event;
- (id)initForMLHost;
- (void)dumpTimestamps;
- (void)enumerateAggregation:(id)aggregation;
@end

@implementation LBFAggregator

- (LBFAggregator)init
{
  v16.receiver = self;
  v16.super_class = LBFAggregator;
  v2 = [(LBFAggregator *)&v16 init];
  v4 = v2;
  if (v2)
  {
    LBFLoggingUtilsInit(v2, v3);
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    stateDict = v4->_stateDict;
    v4->_stateDict = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB98]);
    usePrivateUpload = v4->_usePrivateUpload;
    v4->_usePrivateUpload = v7;

    objc_msgSend_fetchEvents(v4, v9, v11, v10);
    v12 = objc_alloc_init(LBFTrialStatusDetector);
    trialStatusDetector = v4->_trialStatusDetector;
    v4->_trialStatusDetector = v12;

    v4->_strictDictChecks = 0;
    lastAggregationDateKey = v4->_lastAggregationDateKey;
    v4->_lastAggregationDateKey = @"lastAggregationDate";

    v4->_setMLHostMarkerInStateID = 0;
  }

  return v4;
}

- (id)initForMLHost
{
  v4 = objc_msgSend_init(self, a2, v3, v2);
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 40);
    *(v4 + 40) = @"lastAggregationDate_MLHost";

    v5[9] = 1;
  }

  return v5;
}

- (id)getBucketEndDate
{
  v4 = objc_msgSend_now(MEMORY[0x277CBEAA8], a2, v3, v2);
  objc_msgSend_timeIntervalSince1970(v4, v5, v7, v6);
  v9.n128_f64[0] = (86400 * (v8 / 86400.0));
  v12 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v10, v9, v11);

  return v12;
}

- (BOOL)setUpBuckets
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  buckets = self->_buckets;
  self->_buckets = v3;

  v8 = objc_msgSend_getBucketEndDate(self, v5, v7, v6);
  v13 = objc_msgSend_copy(v8, v9, v11, v10);
  for (i = 0; i != 30; ++i)
  {
    v16 = v13;
    v14.n128_u64[0] = 0xC0F5180000000000;
    v13 = objc_msgSend_dateWithTimeInterval_sinceDate_(MEMORY[0x277CBEAA8], v12, v14, v13);
    v17 = self->_buckets;
    v18 = [LBFBucket alloc];
    v21 = objc_msgSend_initWithInterval_endTimestamp_index_(v18, v19, v20, v13, v16, i);
    objc_msgSend_addObject_(v17, v22, v23, v21);
  }

  return 1;
}

- (id)getBucketsNotAggregated
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v6 = objc_msgSend_initWithSuiteName_(v3, v4, v5, @"LighthouseBitacoraFramework");
  v9 = objc_msgSend_objectForKey_(v6, v7, v8, self->_lastAggregationDateKey);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (objc_msgSend_count(self->_buckets, v11, v13, v12))
  {
    v17 = 0;
    do
    {
      v18 = objc_msgSend_objectAtIndex_(self->_buckets, v14, v16, v17);
      v22 = objc_msgSend_startTime(v18, v19, v21, v20);

      if ((objc_msgSend_compare_(v9, v23, v24, v22) + 1) <= 1)
      {
        v27 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v25, v26, v17);
        objc_msgSend_addObject_(v10, v28, v29, v27);
      }

      ++v17;
    }

    while (objc_msgSend_count(self->_buckets, v30, v32, v31) > v17);
  }

  v33 = objc_msgSend_copy(v10, v14, v16, v15);

  return v33;
}

- (BOOL)fetchBuckets:(id)buckets
{
  v22 = *MEMORY[0x277D85DE8];
  bucketsCopy = buckets;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(bucketsCopy, v5, 0, &v17, v21, 16);
  if (v6)
  {
    v10 = v6;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(bucketsCopy);
        }

        v13 = objc_msgSend_intValue(*(*(&v17 + 1) + 8 * v12), v7, v9, v8);
        objc_msgSend_fetchBucket_(self, v14, v15, v13);
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(bucketsCopy, v7, v9, &v17, v21, 16);
    }

    while (v10);
  }

  return 1;
}

- (id)ensureExperimentEventsHolderInBucket:(id)bucket bucketIndex:(unint64_t)index
{
  bucketCopy = bucket;
  v9 = objc_msgSend_objectAtIndex_(self->_buckets, v7, v8, index);
  v13 = objc_msgSend_eventTree(v9, v10, v12, v11);

  v16 = objc_msgSend_objectForKey_(v13, v14, v15, bucketCopy);
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v20 = objc_msgSend_objectForKey_(self->_stateDict, v17, v18, bucketCopy);
    if (!v20)
    {
      stateDict = self->_stateDict;
      v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
      objc_msgSend_setObject_forKey_(stateDict, v23, v24, v22, bucketCopy);
    }

    v25 = [LBFExperimentEventsHolder alloc];
    v28 = objc_msgSend_initWithExperimentOrTaskId_(v25, v26, v27, bucketCopy);
    objc_msgSend_setValue_forKey_(v13, v29, v30, v28, bucketCopy);
    v19 = v28;
  }

  return v19;
}

- (id)ensureDeploymentEventsHolderInBucket:(id)bucket bucketIndex:(unint64_t)index
{
  bucketCopy = bucket;
  v10 = objc_msgSend_experimentIdentifiers(bucketCopy, v7, v9, v8);

  if (!v10)
  {
    goto LABEL_5;
  }

  v14 = objc_msgSend_experimentIdentifiers(bucketCopy, v11, v13, v12);
  v18 = objc_msgSend_trialExperimentID(v14, v15, v17, v16);
  if (!v18)
  {
    v36 = @"null_experiment";
    v43 = @"null_deployment";
    goto LABEL_7;
  }

  v22 = v18;
  v23 = objc_msgSend_experimentIdentifiers(bucketCopy, v19, v21, v20);
  v27 = objc_msgSend_trialExperimentID(v23, v24, v26, v25);
  v31 = objc_msgSend_null(MEMORY[0x277CBEB68], v28, v30, v29);

  if (v27 == v31)
  {
LABEL_5:
    v36 = @"null_experiment";
    v43 = @"null_deployment";
    goto LABEL_8;
  }

  v32 = objc_msgSend_experimentIdentifiers(bucketCopy, v11, v13, v12);
  v36 = objc_msgSend_trialExperimentID(v32, v33, v35, v34);

  v14 = objc_msgSend_experimentIdentifiers(bucketCopy, v37, v39, v38);
  v43 = objc_msgSend_trialDeploymentID(v14, v40, v42, v41);
LABEL_7:

LABEL_8:
  v44 = objc_msgSend_bmltIdentifiers(bucketCopy, v11, v13, v12);

  if (!v44)
  {
    goto LABEL_13;
  }

  v48 = objc_msgSend_bmltIdentifiers(bucketCopy, v45, v47, v46);
  v52 = objc_msgSend_trialTaskID(v48, v49, v51, v50);
  if (v52)
  {
    v56 = v52;
    v57 = objc_msgSend_bmltIdentifiers(bucketCopy, v53, v55, v54);
    v61 = objc_msgSend_trialTaskID(v57, v58, v60, v59);
    v65 = objc_msgSend_null(MEMORY[0x277CBEB68], v62, v64, v63);

    if (v61 == v65)
    {
      goto LABEL_13;
    }

    v67 = objc_msgSend_bmltIdentifiers(bucketCopy, v45, v47, v66);
    v71 = objc_msgSend_trialTaskID(v67, v68, v70, v69);

    v48 = objc_msgSend_bmltIdentifiers(bucketCopy, v72, v74, v73);
    v78 = objc_msgSend_trialDeploymentID(v48, v75, v77, v76);

    v43 = v78;
    v36 = v71;
  }

LABEL_13:
  v79 = objc_msgSend_ensureExperimentEventsHolderInBucket_bucketIndex_(self, v45, v47, v36, index);
  v82 = objc_msgSend_objectForKey_(self->_stateDict, v80, v81, v36);
  v85 = objc_msgSend_objectForKey_(v82, v83, v84, v43);

  if (!v85)
  {
    v88 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setObject_forKey_(v82, v89, v90, v88, v43);

    objc_msgSend_setObject_forKey_(self->_stateDict, v91, v92, v82, v36);
  }

  v93 = objc_msgSend_ensureDeploymentEventsHolder_(v79, v86, v87, v43);

  return v93;
}

- (BOOL)fetchBucket:(int64_t)bucket
{
  v221 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_objectAtIndex_(self->_buckets, a2, v3, bucket);
  v9 = objc_msgSend_objectAtIndex_(self->_buckets, v7, v8, 0);
  v13 = objc_msgSend_endTime(v9, v10, v12, v11);

  v17 = objc_msgSend_startTime(v6, v14, v16, v15);
  v188 = v6;
  v21 = objc_msgSend_endTime(v6, v18, v20, v19);
  v22.n128_u64[0] = 0xC142750000000000;
  v187 = v13;
  v24 = objc_msgSend_dateWithTimeInterval_sinceDate_(MEMORY[0x277CBEAA8], v23, v22, v13);
  v25 = objc_alloc_init(MEMORY[0x277CCA968]);
  v28 = objc_msgSend_timeZoneWithAbbreviation_(MEMORY[0x277CBEBB0], v26, v27, @"UTC");
  objc_msgSend_setTimeZone_(v25, v29, v30, v28);

  v189 = v25;
  objc_msgSend_setDateFormat_(v25, v31, v32, @"YYYY-MM-dd HH:mm:ss");
  v33 = LBFLogContextAggregator;
  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
  {
    v37 = v33;
    v40 = objc_msgSend_stringFromDate_(v25, v38, v39, v17);
    v43 = objc_msgSend_stringFromDate_(v189, v41, v42, v21);
    v46 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v44, v45, bucket);
    v49 = objc_msgSend_stringFromDate_(v189, v47, v48, v24);
    *buf = 138413058;
    v214 = v40;
    v215 = 2112;
    v216 = v43;
    v217 = 2112;
    v218 = v46;
    v219 = 2112;
    v220 = v49;
    _os_log_impl(&dword_255ED5000, v37, OS_LOG_TYPE_INFO, "Finding objects between %@ and %@ for Bucket #%@. Trial Start: %@", buf, 0x2Au);
  }

  v50 = objc_msgSend_sharedInstance(LBFEventManager, v34, v36, v35);
  v54 = objc_msgSend_ensureBiomeManagerMLRuntimed(v50, v51, v53, v52);
  v57 = objc_msgSend_readData_endDate_(v54, v55, v56, v17, v21);

  v61 = objc_msgSend_sharedInstance(LBFEventManager, v58, v60, v59);
  v65 = objc_msgSend_ensureBiomeManagerLighthouse(v61, v62, v64, v63);
  v186 = v17;
  v68 = objc_msgSend_readData_endDate_(v65, v66, v67, v17, v21);

  v72 = objc_msgSend_sharedInstance(LBFEventManager, v69, v71, v70);
  v76 = objc_msgSend_ensureBiomeManagerTrial(v72, v73, v75, v74);
  v182 = objc_msgSend_readData_endDate_(v76, v77, v78, v24, v21);

  v82 = objc_msgSend_sharedInstance(LBFEventManager, v79, v81, v80);
  v86 = objc_msgSend_ensureBiomeManagerDprivacyd(v82, v83, v85, v84);
  v184 = v24;
  v185 = v21;
  v183 = objc_msgSend_readData_endDate_(v86, v87, v88, v24, v21);

  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  obj = v57;
  v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v89, v90, &v205, v212, 16);
  if (v91)
  {
    v92 = v91;
    v93 = *v206;
    do
    {
      for (i = 0; i != v92; ++i)
      {
        if (*v206 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v95 = *(*(&v205 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v99 = objc_msgSend_trialIdentifiers(v95, v96, v98, v97, v182, v183);
          v102 = objc_msgSend_ensureDeploymentEventsHolderInBucket_bucketIndex_(self, v100, v101, v99, bucket);

          objc_msgSend_appendMlruntimedEvent_(v102, v103, v104, v95);
        }
      }

      v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v96, v98, &v205, v212, 16);
    }

    while (v92);
  }

  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v191 = v68;
  v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v191, v105, v106, &v201, v211, 16);
  if (v107)
  {
    v108 = v107;
    v109 = *v202;
    do
    {
      for (j = 0; j != v108; ++j)
      {
        if (*v202 != v109)
        {
          objc_enumerationMutation(v191);
        }

        v111 = *(*(&v201 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v115 = objc_msgSend_trialIdentifiers(v111, v112, v114, v113);
          v118 = objc_msgSend_ensureDeploymentEventsHolderInBucket_bucketIndex_(self, v116, v117, v115, bucket);

          v119 = LBFLogContextAggregator;
          if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
          {
            v122 = v119;
            v126 = objc_msgSend_description(v111, v123, v125, v124);
            *buf = 138412290;
            v214 = v126;
            _os_log_impl(&dword_255ED5000, v122, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }

          objc_msgSend_appendLighthousePluginEvent_(v118, v120, v121, v111, v182);
          if (objc_msgSend_usePrivateUpload(v111, v127, v129, v128))
          {
            v133 = objc_msgSend_trialIdentifiers(v111, v130, v132, v131);
            v137 = objc_msgSend_experimentIdentifiers(v133, v134, v136, v135);
            v141 = objc_msgSend_trialExperimentID(v137, v138, v140, v139);

            v142 = LBFLogContextAggregator;
            if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v214 = v141;
              _os_log_impl(&dword_255ED5000, v142, OS_LOG_TYPE_INFO, "Adding %@ to usePrivateUpload.", buf, 0xCu);
            }

            v145 = objc_msgSend_setByAddingObject_(self->_usePrivateUpload, v143, v144, v141);
            usePrivateUpload = self->_usePrivateUpload;
            self->_usePrivateUpload = v145;
          }
        }
      }

      v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v191, v112, v114, &v201, v211, 16);
    }

    while (v108);
  }

  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v147 = v182;
  v150 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v148, v149, &v197, v210, 16);
  if (v150)
  {
    v151 = v150;
    v152 = *v198;
    do
    {
      for (k = 0; k != v151; ++k)
      {
        if (*v198 != v152)
        {
          objc_enumerationMutation(v147);
        }

        v154 = *(*(&v197 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v158 = objc_msgSend_trialIdentifiers(v154, v155, v157, v156);
          v161 = objc_msgSend_ensureDeploymentEventsHolderInBucket_bucketIndex_(self, v159, v160, v158, bucket);

          objc_msgSend_appendTrialEvent_(v161, v162, v163, v154);
        }
      }

      v151 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v155, v157, &v197, v210, 16);
    }

    while (v151);
  }

  v190 = v147;

  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v164 = v183;
  v167 = objc_msgSend_countByEnumeratingWithState_objects_count_(v164, v165, v166, &v193, v209, 16);
  if (v167)
  {
    v168 = v167;
    v169 = *v194;
    do
    {
      for (m = 0; m != v168; ++m)
      {
        if (*v194 != v169)
        {
          objc_enumerationMutation(v164);
        }

        v171 = *(*(&v193 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v175 = objc_msgSend_trialIdentifiers(v171, v172, v174, v173);
          v178 = objc_msgSend_ensureDeploymentEventsHolderInBucket_bucketIndex_(self, v176, v177, v175, bucket);

          objc_msgSend_appendDprivacydEvent_(v178, v179, v180, v171);
        }
      }

      v168 = objc_msgSend_countByEnumeratingWithState_objects_count_(v164, v172, v174, &v193, v209, 16);
    }

    while (v168);
  }

  return 1;
}

- (BOOL)fetchEvents
{
  objc_msgSend_setUpBuckets(self, a2, v3, v2);
  if (objc_msgSend_count(self->_buckets, v5, v7, v6))
  {
    v10 = 0;
    do
    {
      objc_msgSend_fetchBucket_(self, v8, v9, v10++);
    }

    while (objc_msgSend_count(self->_buckets, v11, v13, v12) > v10);
  }

  return 1;
}

- (id)getTrialIdentifierFromBMEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = objc_msgSend_trialIdentifiers(eventCopy, v4, v6, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getTransitionProcessingEventArray:(id)array mlRuntimeInCurrentBucket:(BOOL)bucket mlRuntimeInPreviousBucket:(BOOL)previousBucket
{
  previousBucketCopy = previousBucket;
  bucketCopy = bucket;
  v136 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v117 = arrayCopy;
  if (bucketCopy && previousBucketCopy)
  {
    v9 = LBFLogContextAggregator;
    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_255ED5000, v9, OS_LOG_TYPE_INFO, "MLRuntime in current, and previous bucket.", buf, 2u);
    }

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v10 = arrayCopy;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, &v127, v135, 16);
    if (v13)
    {
      v14 = v13;
      v15 = *v128;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v128 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v127 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v17;
            if (objc_msgSend_eventType(v20, v21, v23, v22) == 3)
            {
              objc_msgSend_addObject_(v8, v24, v25, v20);
            }
          }

          else
          {
            objc_msgSend_addObject_(v8, v18, v19, v17);
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v26, v27, &v127, v135, 16);
      }

      while (v14);
    }
  }

  else
  {
    v28 = LBFLogContextAggregator;
    v29 = os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO);
    if (!bucketCopy || previousBucketCopy)
    {
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&dword_255ED5000, v28, OS_LOG_TYPE_INFO, "No MLRuntime events in current or previous buckets.", buf, 2u);
      }

      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      obj = arrayCopy;
      v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v64, v65, &v119, v133, 16);
      if (v66)
      {
        v67 = v66;
        v68 = 0;
        v69 = 0;
        v70 = *v120;
        do
        {
          for (j = 0; j != v67; ++j)
          {
            if (*v120 != v70)
            {
              objc_enumerationMutation(obj);
            }

            v72 = *(*(&v119 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v73 = v72;
              if (!((objc_msgSend_eventType(v73, v74, v76, v75) != 1) | v69 & 1))
              {
                v80 = LBFLogContextEventFiltering;
                if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_255ED5000, v80, OS_LOG_TYPE_INFO, "Saw first Allocation before MlRuntime, filtering future Allocated events.", buf, 2u);
                }

                objc_msgSend_addObject_(v8, v81, v82, v73, v117);
                v69 = 1;
              }

              if (!((objc_msgSend_eventType(v73, v77, v79, v78, v117) != 2) | v68 & 1))
              {
                v86 = LBFLogContextEventFiltering;
                if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_255ED5000, v86, OS_LOG_TYPE_INFO, "Saw first Activation before MlRuntime, filtering future Activation events.", buf, 2u);
                }

                objc_msgSend_addObject_(v8, v87, v88, v73);
                v68 = 1;
              }

              if (objc_msgSend_eventType(v73, v83, v85, v84) == 3)
              {
                objc_msgSend_addObject_(v8, v89, v90, v73);
              }
            }

            else
            {
              v93 = LBFLogContextEventFiltering;
              if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_255ED5000, v93, OS_LOG_TYPE_INFO, "Incorrect detection - updating filtering.", buf, 2u);
              }

              v94 = LBFLogContextEventFiltering;
              if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
              {
                v95 = v94;
                v96 = objc_opt_class();
                *buf = 138412290;
                v132 = v96;
                v97 = v96;
                _os_log_impl(&dword_255ED5000, v95, OS_LOG_TYPE_INFO, "Event Type: %@", buf, 0xCu);
              }

              v98 = LBFLogContextEventFiltering;
              if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
              {
                v99 = v98;
                v103 = objc_msgSend_trialIdentifiers(v72, v100, v102, v101);
                *buf = 138412290;
                v132 = v103;
                _os_log_impl(&dword_255ED5000, v99, OS_LOG_TYPE_INFO, "Event Identifiers: %@", buf, 0xCu);
              }

              v104 = LBFLogContextEventFiltering;
              if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
              {
                v107 = v104;
                v111 = objc_msgSend_timestamp(v72, v108, v110, v109);
                *buf = 138412290;
                v132 = v111;
                _os_log_impl(&dword_255ED5000, v107, OS_LOG_TYPE_INFO, "Event Timestamp: %@", buf, 0xCu);
              }

              objc_msgSend_addObject_(v8, v105, v106, v72, v117);
              v68 = 1;
              v69 = 1;
            }
          }

          v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v91, v92, &v119, v133, 16);
        }

        while (v67);
      }
    }

    else
    {
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&dword_255ED5000, v28, OS_LOG_TYPE_INFO, "MLRuntime in current bucket only.", buf, 2u);
      }

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v30 = arrayCopy;
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, v32, &v123, v134, 16);
      if (v33)
      {
        v34 = v33;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = *v124;
        do
        {
          for (k = 0; k != v34; ++k)
          {
            if (*v124 != v38)
            {
              objc_enumerationMutation(v30);
            }

            v40 = *(*(&v123 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v43 = v40;
              if (!((objc_msgSend_eventType(v43, v44, v46, v45) != 1) | (v37 | v35) & 1))
              {
                v50 = LBFLogContextEventFiltering;
                if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_255ED5000, v50, OS_LOG_TYPE_INFO, "Saw first Allocation before MlRuntime, filtering future Allocated events.", buf, 2u);
                }

                objc_msgSend_addObject_(v8, v51, v52, v43, v117);
                v37 = 1;
              }

              if (!((objc_msgSend_eventType(v43, v47, v49, v48, v117) != 2) | (v36 | v35) & 1))
              {
                v56 = LBFLogContextEventFiltering;
                if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_255ED5000, v56, OS_LOG_TYPE_INFO, "Saw first Activation before MlRuntime, filtering future Activation events.", buf, 2u);
                }

                objc_msgSend_addObject_(v8, v57, v58, v43);
                v36 = 1;
              }

              if (objc_msgSend_eventType(v43, v53, v55, v54) == 3)
              {
                objc_msgSend_addObject_(v8, v59, v60, v43);
              }
            }

            else
            {
              objc_msgSend_addObject_(v8, v41, v42, v40);
              if (v35)
              {
                v35 = 1;
              }

              else
              {
                v63 = LBFLogContextEventFiltering;
                v35 = 1;
                if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_255ED5000, v63, OS_LOG_TYPE_INFO, "Saw first MLRuntime, filtering future Trial events.", buf, 2u);
                }
              }
            }
          }

          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v61, v62, &v123, v134, 16);
        }

        while (v34);
      }
    }
  }

  v115 = objc_msgSend_copy(v8, v112, v114, v113);

  return v115;
}

- (id)getAggregatedStatesUpdateTimestamp:(BOOL)timestamp skipNullIdentifiers:(BOOL)identifiers
{
  identifiersCopy = identifiers;
  timestampCopy = timestamp;
  v411 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v393 = 0u;
  v394 = 0u;
  v395 = 0u;
  v396 = 0u;
  obj = self->_stateDict;
  v337 = v5;
  v352 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, v7, &v393, v410, 16);
  selfCopy = self;
  if (v352)
  {
    v350 = *v394;
    do
    {
      for (i = 0; i != v352; ++i)
      {
        if (*v394 != v350)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v393 + 1) + 8 * i);
        v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v355 = v9;
        v13 = objc_msgSend_objectForKey_(selfCopy->_stateDict, v11, v12, v9);
        v17 = objc_msgSend_allKeys(v13, v14, v16, v15);
        v389 = 0u;
        v390 = 0u;
        v391 = 0u;
        v392 = 0u;
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, 0, &v389, v409, 16);
        if (v19)
        {
          v22 = v19;
          v23 = *v390;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v390 != v23)
              {
                objc_enumerationMutation(v17);
              }

              v25 = *(*(&v389 + 1) + 8 * j);
              objc_msgSend_setObject_forKey_(v10, v20, v21, &unk_286801030, v25);
              v28 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, v27, 0);
              objc_msgSend_setObject_forKey_(v13, v29, v30, v28, v25);
            }

            v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, v21, &v389, v409, 16);
          }

          while (v22);
        }

        v5 = v337;
        objc_msgSend_setObject_forKey_(v337, v20, v21, v10, v355);
      }

      v352 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, v32, &v393, v410, 16);
    }

    while (v352);
  }

  v323 = objc_msgSend_getBucketsNotAggregated(selfCopy, v33, v35, v34);
  v36 = LBFLogContextAggregator;
  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
  {
    v37 = v36;
    v41 = objc_msgSend_description(v323, v38, v40, v39);
    *buf = 138412290;
    v403 = v41;
    _os_log_impl(&dword_255ED5000, v37, OS_LOG_TYPE_INFO, "To aggregate: %@", buf, 0xCu);
  }

  v320 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v332 = objc_alloc_init(LBFStateDetector);
  v385 = 0u;
  v386 = 0u;
  v387 = 0u;
  v388 = 0u;
  v44 = objc_msgSend_reverseObjectEnumerator(selfCopy->_buckets, v42, 0, v43);
  v48 = objc_msgSend_allObjects(v44, v45, v47, v46);

  v321 = v48;
  v324 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, v50, &v385, v408, 16);
  if (v324)
  {
    v322 = *v386;
    v53.n128_u64[0] = 138412546;
    do
    {
      v54 = 0;
      do
      {
        if (*v386 != v322)
        {
          objc_enumerationMutation(v321);
        }

        v325 = v54;
        v55 = *(*(&v385 + 1) + 8 * v54);
        v56 = objc_msgSend_flattenEvents(v55, v51, v53, v52);
        v326 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v381 = 0u;
        v382 = 0u;
        v383 = 0u;
        v384 = 0u;
        v329 = v56;
        v328 = objc_msgSend_countByEnumeratingWithState_objects_count_(v329, v57, v58, &v381, v407, 16);
        if (v328)
        {
          v327 = *v382;
          do
          {
            v61 = 0;
            do
            {
              if (*v382 != v327)
              {
                objc_enumerationMutation(v329);
              }

              v330 = v61;
              v62 = *(*(&v381 + 1) + 8 * v61);
              if (!objc_msgSend_isEqualToString_(v62, v59, v60, @"null_experiment"))
              {
                goto LABEL_33;
              }

              v63 = LBFLogContextAggregator;
              v64 = os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO);
              if (!identifiersCopy)
              {
                if (v64)
                {
                  *buf = 0;
                  _os_log_impl(&dword_255ED5000, v63, OS_LOG_TYPE_INFO, "Including null exp in aggregation.", buf, 2u);
                }

LABEL_33:
                v65 = objc_msgSend_objectForKey_(v329, v59, v60, v62);
                v331 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v340 = objc_msgSend_objectForKey_(selfCopy->_stateDict, v66, v67, v62);
                v70 = objc_msgSend_objectForKey_(selfCopy->_stateDict, v68, v69, v62);

                if (!v70)
                {
                  v71 = LBFLogContextAggregator;
                  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v403 = v62;
                    _os_log_impl(&dword_255ED5000, v71, OS_LOG_TYPE_INFO, "%@ not in state dict.", buf, 0xCu);
                  }
                }

                v379 = 0u;
                v380 = 0u;
                v377 = 0u;
                v378 = 0u;
                v72 = v65;
                v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, v74, &v377, v406, 16);
                if (!v344)
                {
LABEL_140:

                  objc_msgSend_setObject_forKey_(selfCopy->_stateDict, v277, v278, v340, v62);
                  v282 = objc_msgSend_copy(v331, v279, v281, v280);
                  objc_msgSend_setObject_forKey_(v326, v283, v284, v282, v62);

                  goto LABEL_141;
                }

                v342 = *v378;
                v347 = v62;
                v339 = v72;
                while (2)
                {
                  v77 = 0;
LABEL_39:
                  if (*v378 != v342)
                  {
                    objc_enumerationMutation(v72);
                  }

                  v78 = *(*(&v377 + 1) + 8 * v77);
                  if (identifiersCopy && objc_msgSend_isEqualToString_(v62, v75, v76, @"null_deployment"))
                  {
                    v79 = LBFLogContextAggregator;
                    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_255ED5000, v79, OS_LOG_TYPE_INFO, "Skipping aggregation for null deployment.", buf, 2u);
                    }

LABEL_135:
                    v77 = v77 + 1;
                    if (v77 == v344)
                    {
                      v276 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v75, v76, &v377, v406, 16);
                      v344 = v276;
                      if (!v276)
                      {
                        goto LABEL_140;
                      }

                      continue;
                    }

                    goto LABEL_39;
                  }

                  break;
                }

                obja = v77;
                v80 = objc_msgSend_objectForKey_(v340, v75, v76, v78);

                if (!v80)
                {
                  v83 = LBFLogContextAggregator;
                  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v403 = v78;
                    v404 = 2112;
                    v405 = v62;
                    _os_log_impl(&dword_255ED5000, v83, OS_LOG_TYPE_INFO, "%@ not in Experiment '%@' State Dict.", buf, 0x16u);
                  }
                }

                v84 = objc_msgSend_objectForKey_(selfCopy->_stateDict, v81, v82, v62);
                objc_msgSend_objectForKey_(v84, v85, v86, v78);
                v87 = v356 = v78;
                v345 = objc_msgSend_intValue(v87, v88, v90, v89);

                v93 = objc_msgSend_objectForKey_(v72, v91, v92, v356);
                v353 = v93;
                if (objc_msgSend_count(v93, v94, v96, v95))
                {
                  v99 = objc_msgSend_objectAtIndex_(v93, v97, v98, 0);
                  v102 = objc_msgSend_getTrialIdentifierFromBMEvent_(selfCopy, v100, v101, v99);

                  v351 = v102;
                  if (!v102 && os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_ERROR))
                  {
                    sub_255F0AAE4(&v375, v376);
                  }

                  v105 = objc_msgSend_objectForKey_(v5, v103, v104, v62);

                  if (v105)
                  {
                    v108 = objc_msgSend_objectForKey_(v5, v106, v107, v62);
                    v111 = objc_msgSend_objectForKey_(v108, v109, v110, v356);

                    if (!v111)
                    {
                      v114 = LBFLogContextAggregator;
                      if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412546;
                        v403 = v356;
                        v404 = 2112;
                        v405 = v62;
                        v115 = v114;
                        v116 = "%@ not in MLRuntime Status '%@' Dict.";
                        v117 = 22;
                        goto LABEL_60;
                      }
                    }
                  }

                  else
                  {
                    v118 = LBFLogContextAggregator;
                    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v403 = v62;
                      v115 = v118;
                      v116 = "%@ not in MLRuntime status dict.";
                      v117 = 12;
LABEL_60:
                      _os_log_impl(&dword_255ED5000, v115, OS_LOG_TYPE_INFO, v116, buf, v117);
                    }
                  }

                  v119 = objc_msgSend_objectForKey_(v5, v112, v113, v62);
                  v122 = objc_msgSend_objectForKey_(v119, v120, v121, v356);
                  isEqual = objc_msgSend_isEqual_(v122, v123, v124, &unk_286801030);

                  if (isEqual)
                  {
                    v373 = 0u;
                    v374 = 0u;
                    v371 = 0u;
                    v372 = 0u;
                    v128 = v93;
                    v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v128, v129, v130, &v371, v401, 16);
                    if (v131)
                    {
                      v132 = v131;
                      v133 = v93;
                      v134 = 0;
                      v135 = *v372;
                      do
                      {
                        for (k = 0; k != v132; ++k)
                        {
                          if (*v372 != v135)
                          {
                            objc_enumerationMutation(v128);
                          }

                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              continue;
                            }
                          }

                          v134 = 1;
                        }

                        v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v128, v137, v138, &v371, v401, 16);
                      }

                      while (v132);

                      v62 = v347;
                      v93 = v133;
                      v5 = v337;
                      if (v134)
                      {
                        v128 = objc_msgSend_objectForKey_(v337, v126, v127, v347);
                        objc_msgSend_setObject_forKey_(v128, v139, v140, &unk_286801048, v356);
                        objc_msgSend_setObject_forKey_(v337, v141, v142, v128, v347);
                        goto LABEL_75;
                      }
                    }

                    else
                    {
                      v62 = v347;
LABEL_75:
                    }
                  }

                  v143 = objc_msgSend_objectForKey_(v5, v126, v127, v62);
                  v146 = objc_msgSend_objectForKey_(v143, v144, v145, v356);
                  v149 = objc_msgSend_isEqual_(v146, v147, v148, &unk_286801048);

                  v152 = objc_msgSend_getTransitionProcessingEventArray_mlRuntimeInCurrentBucket_mlRuntimeInPreviousBucket_(selfCopy, v150, v151, v93, v149, isEqual ^ 1u);
                  v155 = v351;
                  v341 = v152;
                  if (!v351)
                  {
                    v62 = v347;
                    v77 = obja;
                    v72 = v339;
                    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_ERROR))
                    {
                      sub_255F0AB3C(&v359, v360);
                    }

                    goto LABEL_133;
                  }

                  v156 = v152;
                  v338 = v149;
                  v157 = v345;
                  objc_msgSend_IsEmptyTrialIdentifiers_(LBFUtils, v153, v154, v351);
                  if (objc_msgSend_count(v156, v158, v160, v159))
                  {
                    v164 = objc_msgSend_startTime(v55, v161, v163, v162);
                    v167 = objc_msgSend_processEventsStartingFromState_bucketStartTime_events_(v332, v165, v166, v345, v164, v156);

                    v170 = objc_msgSend_objectAtIndex_(v167, v168, v169, 0);
                    v174 = objc_msgSend_intValue(v170, v171, v173, v172);

                    v346 = objc_msgSend_objectAtIndex_(v167, v175, v176, 1);
                    v177 = v347;
                  }

                  else
                  {
                    v178 = [LBFBitacoraStateTransition alloc];
                    v167 = objc_msgSend_startTime(v55, v179, v181, v180);
                    v177 = v347;
                    v183.n128_u64[0] = 0;
                    if (v338)
                    {
                      v184 = objc_msgSend_initWithBitcoraState_previousState_timestamp_timedelta_(v178, v182, v183, 19, v345, v167);
                      v400 = v184;
                      v346 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v185, v186, &v400, 1);

                      v174 = 19;
                    }

                    else
                    {
                      v187 = objc_msgSend_initWithBitcoraState_previousState_timestamp_timedelta_(v178, v182, v183, 18, v345, v167);
                      v399 = v187;
                      v346 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v188, v189, &v399, 1);

                      v174 = 18;
                    }
                  }

                  v192 = objc_msgSend_getTrialStatus_deploymentId_(selfCopy->_trialStatusDetector, v190, v191, v177, v356);
                  setMLHostMarkerInStateID = selfCopy->_setMLHostMarkerInStateID;
                  v194 = [LBFBitacoraStateInfo alloc];
                  v198 = objc_msgSend_startTime(v55, v195, v197, v196);
                  v203 = objc_msgSend_endTime(v55, v199, v201, v200);
                  if (setMLHostMarkerInStateID)
                  {
                    started = objc_msgSend_initWithBitcoraStateMLHost_bucketStartTime_bucketEndTime_observedTrialStatus_bitacoraStateTransitions_bitacoraEvents_(v194, v202, v204, v351, v198, v203, v192, v346, v353);
                  }

                  else
                  {
                    started = objc_msgSend_initWithBitcoraState_bucketStartTime_bucketEndTime_observedTrialStatus_bitacoraStateTransitions_bitacoraEvents_(v194, v202, v204, v351, v198, v203, v192, v346, v353);
                  }

                  v206 = started;

                  v72 = v339;
                  if (v206)
                  {
                    v62 = v347;
                    if (v174 == 2)
                    {
                      v334 = v206;
                      v336 = v192;
                      v363 = 0u;
                      v364 = 0u;
                      v361 = 0u;
                      v362 = 0u;
                      v241 = v353;
                      v244 = objc_msgSend_countByEnumeratingWithState_objects_count_(v241, v242, v243, &v361, v397, 16);
                      if (v244)
                      {
                        v248 = v244;
                        v249 = *v362;
                        v250 = 1;
                        do
                        {
                          for (m = 0; m != v248; ++m)
                          {
                            if (*v362 != v249)
                            {
                              objc_enumerationMutation(v241);
                            }

                            v252 = objc_msgSend_timestamp(*(*(&v361 + 1) + 8 * m), v245, v247, v246);
                            objc_msgSend_timeIntervalSince1970(v252, v253, v255, v254);
                            v257 = v256.n128_f64[0];
                            v260 = objc_msgSend_startTime(v55, v258, v256, v259);
                            objc_msgSend_timeIntervalSince1970(v260, v261, v263, v262);
                            v265 = v257 <= v264;

                            v250 &= v265;
                          }

                          v248 = objc_msgSend_countByEnumeratingWithState_objects_count_(v241, v245, v247, &v361, v397, 16);
                        }

                        while (v248);

                        v206 = v334;
                        if (v250)
                        {
                          v174 = 19;
                          v62 = v347;
                          v72 = v339;
                          v192 = v336;
                          objc_msgSend_setLatestState_(v334, v207, v208, 19);
                        }

                        else
                        {
                          v174 = 2;
                          v62 = v347;
                          v72 = v339;
                          v192 = v336;
                        }
                      }

                      else
                      {

                        v174 = 19;
                        objc_msgSend_setLatestState_(v206, v269, v270, 19);
                      }

                      goto LABEL_131;
                    }

                    if (v174 == 1)
                    {
                      v209 = LBFLogContextAggregator;
                      if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_255ED5000, v209, OS_LOG_TYPE_INFO, "Emitting allocated.", buf, 2u);
                      }

                      v367 = 0u;
                      v368 = 0u;
                      v365 = 0u;
                      v366 = 0u;
                      v210 = v353;
                      v213 = objc_msgSend_countByEnumeratingWithState_objects_count_(v210, v211, v212, &v365, v398, 16);
                      if (v213)
                      {
                        v217 = v213;
                        v333 = v206;
                        v335 = v192;
                        v218 = *v366;
                        v219 = 1;
                        do
                        {
                          for (n = 0; n != v217; ++n)
                          {
                            if (*v366 != v218)
                            {
                              objc_enumerationMutation(v210);
                            }

                            v221 = objc_msgSend_timestamp(*(*(&v365 + 1) + 8 * n), v214, v216, v215);
                            objc_msgSend_timeIntervalSince1970(v221, v222, v224, v223);
                            v226 = v225.n128_f64[0];
                            v229 = objc_msgSend_startTime(v55, v227, v225, v228);
                            objc_msgSend_timeIntervalSince1970(v229, v230, v232, v231);
                            v234 = v226 <= v233;

                            v219 &= v234;
                          }

                          v217 = objc_msgSend_countByEnumeratingWithState_objects_count_(v210, v214, v216, &v365, v398, 16);
                        }

                        while (v217);

                        v62 = v347;
                        v72 = v339;
                        v206 = v333;
                        v192 = v335;
                        if ((v219 & 1) == 0)
                        {
                          v235 = LBFLogContextAggregator;
                          if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_255ED5000, v235, OS_LOG_TYPE_INFO, "Events in question from current bucket.", buf, 2u);
                          }

                          if (v338)
                          {
                            v236 = LBFLogContextAggregator;
                            if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                            {
                              *buf = 0;
                              v239 = v236;
                              v240 = "Allocated in current bucket, but seen MLRuntime - Activated Idle State.";
                              goto LABEL_125;
                            }

                            goto LABEL_126;
                          }

                          v174 = 1;
LABEL_131:
                          objc_msgSend_setObject_forKey_(v331, v207, v208, v206, v356);
                          v273 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v271, v272, v174);
                          objc_msgSend_setObject_forKey_(v340, v274, v275, v273, v356);

LABEL_132:
                          v77 = obja;
                          v155 = v351;
                          v5 = v337;
LABEL_133:

LABEL_134:
                          goto LABEL_135;
                        }
                      }

                      else
                      {
                      }

                      v266 = LBFLogContextAggregator;
                      if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_255ED5000, v266, OS_LOG_TYPE_INFO, "All events from previous bucket.", buf, 2u);
                      }

                      v267 = LBFLogContextAggregator;
                      v268 = os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO);
                      if (v338)
                      {
                        if (v268)
                        {
                          *buf = 0;
                          v239 = v267;
                          v240 = "Seen MLRuntime - must be Activated Idle.";
LABEL_125:
                          _os_log_impl(&dword_255ED5000, v239, OS_LOG_TYPE_INFO, v240, buf, 2u);
                        }

LABEL_126:
                        v174 = 19;
                        objc_msgSend_setLatestState_(v206, v237, v238, 19);
                      }

                      else
                      {
                        if (v268)
                        {
                          *buf = 0;
                          _os_log_impl(&dword_255ED5000, v267, OS_LOG_TYPE_INFO, "No MLRuntime - must be Allocated Idle.", buf, 2u);
                        }

                        v174 = 18;
                        objc_msgSend_setLatestState_(v206, v237, v238, 18);
                      }

                      goto LABEL_131;
                    }

                    if (v174 != 3 || v157 != 3)
                    {
                      goto LABEL_131;
                    }
                  }

                  else
                  {
                    v62 = v347;
                    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_ERROR))
                    {
                      sub_255F0AB10(&v369, v370);
                    }
                  }

                  goto LABEL_132;
                }

                v77 = obja;
                if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_ERROR))
                {
                  sub_255F0AB68(&v357, v358);
                }

                goto LABEL_134;
              }

              if (v64)
              {
                *buf = 0;
                _os_log_impl(&dword_255ED5000, v63, OS_LOG_TYPE_INFO, "Skipping aggregation for null experiment.", buf, 2u);
              }

LABEL_141:
              v61 = v330 + 1;
            }

            while (v330 + 1 != v328);
            v328 = objc_msgSend_countByEnumeratingWithState_objects_count_(v329, v59, v60, &v381, v407, 16);
          }

          while (v328);
        }

        v285 = MEMORY[0x277CCABB0];
        v289 = objc_msgSend_bucketIndex(v55, v286, v288, v287);
        v292 = objc_msgSend_numberWithUnsignedInteger_(v285, v290, v291, v289);
        v295 = objc_msgSend_containsObject_(v323, v293, v294, v292);

        if (v295)
        {
          v299 = objc_msgSend_copy(v326, v296, v298, v297);
          objc_msgSend_addObject_(v320, v300, v301, v299);
        }

        v54 = v325 + 1;
      }

      while (v325 + 1 != v324);
      v324 = objc_msgSend_countByEnumeratingWithState_objects_count_(v321, v51, v53, &v385, v408, 16);
    }

    while (v324);
  }

  v302 = objc_alloc(MEMORY[0x277CBEBD0]);
  v307 = objc_msgSend_initWithSuiteName_(v302, v303, v304, @"LighthouseBitacoraFramework");
  if (timestampCopy)
  {
    v309 = objc_msgSend_objectAtIndex_(selfCopy->_buckets, v305, v308, 0);
    v313 = objc_msgSend_endTime(v309, v310, v312, v311);

    v314 = LBFLogContextAggregator;
    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v403 = v313;
      _os_log_impl(&dword_255ED5000, v314, OS_LOG_TYPE_INFO, "Setting aggregation timestamp to: %@", buf, 0xCu);
    }

    objc_msgSend_setObject_forKey_(v307, v315, v316, v313, selfCopy->_lastAggregationDateKey);
  }

  v317 = objc_msgSend_copy(v320, v305, v308, v306);

  return v317;
}

- (BOOL)dumpFetchedEvents
{
  v57 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_buckets, a2, v3, v2))
  {
    v7 = 0;
    v6.n128_u64[0] = 138412546;
    v47 = v6;
    do
    {
      v8 = objc_msgSend_objectAtIndex_(self->_buckets, v5, v6, v7, *&v47);
      v12 = objc_msgSend_eventTree(v8, v9, v11, v10);
      v16 = objc_msgSend_count(v12, v13, v15, v14);

      if (v16)
      {
        v17 = LBFLogContextEventsHolder;
        if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
        {
          v20 = v17;
          v24 = objc_msgSend_startTime(v8, v21, v23, v22);
          v28 = objc_msgSend_endTime(v8, v25, v27, v26);
          *buf = v47.n128_u32[0];
          v54 = v24;
          v55 = 2112;
          v56 = v28;
          _os_log_impl(&dword_255ED5000, v20, OS_LOG_TYPE_INFO, "Bucket from %@ to %@", buf, 0x16u);
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v29 = objc_msgSend_eventTree(v8, v18, 0, v19);
        v33 = objc_msgSend_allValues(v29, v30, v32, v31);

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, v35, &v48, v52, 16);
        if (v36)
        {
          v40 = v36;
          v41 = *v49;
          do
          {
            v42 = 0;
            do
            {
              if (*v49 != v41)
              {
                objc_enumerationMutation(v33);
              }

              objc_msgSend_dumpFetchedEvents(*(*(&v48 + 1) + 8 * v42++), v37, v39, v38);
            }

            while (v40 != v42);
            v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v37, v39, &v48, v52, 16);
          }

          while (v40);
        }
      }

      ++v7;
    }

    while (objc_msgSend_count(self->_buckets, v43, v45, v44) > v7);
  }

  return 1;
}

- (id)fetchedEventsInDictionaries
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (objc_msgSend_count(self->_buckets, v4, v6, v5))
  {
    v9 = 0;
    v8.n128_u64[0] = 138412546;
    v52 = v8;
    do
    {
      v10 = objc_msgSend_objectAtIndex_(self->_buckets, v7, v8, v9, *&v52);
      v14 = objc_msgSend_eventTree(v10, v11, v13, v12);
      v18 = objc_msgSend_count(v14, v15, v17, v16);

      if (v18)
      {
        v19 = LBFLogContextEventsHolder;
        if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
        {
          v22 = v19;
          v26 = objc_msgSend_startTime(v10, v23, v25, v24);
          v30 = objc_msgSend_endTime(v10, v27, v29, v28);
          *buf = v52.n128_u32[0];
          v59 = v26;
          v60 = 2112;
          v61 = v30;
          _os_log_impl(&dword_255ED5000, v22, OS_LOG_TYPE_INFO, "Bucket from %@ to %@", buf, 0x16u);
        }

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v31 = objc_msgSend_eventTree(v10, v20, 0, v21);
        v35 = objc_msgSend_allValues(v31, v32, v34, v33);

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, v37, &v53, v57, 16);
        if (v38)
        {
          v42 = v38;
          v43 = *v54;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v54 != v43)
              {
                objc_enumerationMutation(v35);
              }

              v45 = objc_msgSend_fetchedEventsInDictionaries(*(*(&v53 + 1) + 8 * i), v39, v41, v40);
              objc_msgSend_addObjectsFromArray_(v3, v46, v47, v45);
            }

            v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v39, v41, &v53, v57, 16);
          }

          while (v42);
        }
      }

      ++v9;
    }

    while (objc_msgSend_count(self->_buckets, v48, v50, v49) > v9);
  }

  return v3;
}

- (double)getRandomCoinFlip
{
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], a2, v3, v2);
  srand48(v4);

  return drand48();
}

- (BOOL)upload:(BOOL)upload uploadRawEvents:(BOOL)events skipNullIdentifiers:(BOOL)identifiers
{
  eventsCopy = events;
  uploadCopy = upload;
  v82 = *MEMORY[0x277D85DE8];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = objc_msgSend_getAggregatedStatesUpdateTimestamp_skipNullIdentifiers_(self, a2, 0, upload, identifiers);
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, v8, &v73, v81, 16);
  if (v58)
  {
    v57 = *v74;
    do
    {
      v11 = 0;
      do
      {
        if (*v74 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v59 = v11;
        v12 = *(*(&v73 + 1) + 8 * v11);
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v60 = objc_msgSend_allValues(v12, v9, 0, v10);
        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v13, v14, &v69, v80, 16);
        if (v62)
        {
          v61 = *v70;
          do
          {
            v17 = 0;
            do
            {
              if (*v70 != v61)
              {
                objc_enumerationMutation(v60);
              }

              v63 = v17;
              v18 = *(*(&v69 + 1) + 8 * v17);
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              v19 = objc_msgSend_allValues(v18, v15, 0, v16);
              v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, v21, &v65, v79, 16);
              if (v22)
              {
                v26 = v22;
                v27 = *v66;
                do
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (*v66 != v27)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v29 = *(*(&v65 + 1) + 8 * i);
                    v30 = objc_msgSend_trialIdentifiers(v29, v23, v25, v24);
                    v34 = objc_msgSend_experimentIdentifiers(v30, v31, v33, v32);
                    v38 = objc_msgSend_trialExperimentID(v34, v35, v37, v36);

                    if (!objc_msgSend_containsObject_(self->_usePrivateUpload, v39, v40, v38))
                    {
                      goto LABEL_19;
                    }

                    if (objc_msgSend_isInternal(self, v41, v43, v42))
                    {
                      objc_msgSend_uploadToDedisco(v29, v44, v46, v45);
LABEL_19:
                      if (uploadCopy)
                      {
                        objc_msgSend_uploadToCoreAnalytics(v29, v41, v43, v42);
                      }

                      if (eventsCopy)
                      {
                        objc_msgSend_uploadRawEventsToCoreAnalytics(v29, v41, v43, v42);
                      }

                      goto LABEL_27;
                    }

                    objc_msgSend_getRandomCoinFlip(self, v44, v46, v45);
                    v48 = v47;
                    printf("DeDisco Upload Coin Flip: %f \n", v47);
                    v49 = LBFLogContextAggregator;
                    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                    {
                      *buf = 134217984;
                      v78 = v48;
                      _os_log_impl(&dword_255ED5000, v49, OS_LOG_TYPE_INFO, "DeDisco Upload Coin Flip: %f \n", buf, 0xCu);
                    }

                    if (v48 <= 0.1)
                    {
                      objc_msgSend_uploadToDedisco(v29, v50, v52, v51);
                    }

LABEL_27:
                  }

                  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v23, v25, &v65, v79, 16);
                }

                while (v26);
              }

              v17 = v63 + 1;
            }

            while (v63 + 1 != v62);
            v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v15, v53, &v69, v80, 16);
          }

          while (v62);
        }

        v11 = v59 + 1;
      }

      while (v59 + 1 != v58);
      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, v54, &v73, v81, 16);
    }

    while (v58);
  }

  return 1;
}

- (id)dumpAggregate
{
  v98 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_getAggregatedStatesUpdateTimestamp_skipNullIdentifiers_(self, a2, v2, 0, 0);
  v4 = LBFLogContextAggregator;
  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    *buf = 134217984;
    v97 = objc_msgSend_count(v3, v6, v8, v7);
    _os_log_impl(&dword_255ED5000, v5, OS_LOG_TYPE_INFO, "%lu Buckets", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v3;
  v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, v11, &v89, v95, 16);
  if (v73)
  {
    v72 = *v90;
    v75 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v90 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v74 = v12;
        v13 = *(*(&v89 + 1) + 8 * v12);
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v78 = v13;
        v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v14, v15, &v85, v94, 16);
        if (v77)
        {
          v76 = *v86;
          do
          {
            v18 = 0;
            do
            {
              if (*v86 != v76)
              {
                objc_enumerationMutation(v78);
              }

              v80 = v18;
              v19 = *(*(&v85 + 1) + 8 * v18);
              v20 = objc_msgSend_objectForKey_(v78, v16, v17, v19);
              v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v24 = objc_msgSend_objectForKey_(v9, v22, v23, v19);

              v79 = v19;
              if (v24)
              {
                v27 = objc_msgSend_objectForKey_(v9, v25, v26, v19);

                v21 = v27;
              }

              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v28 = v20;
              v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, v30, &v81, v93, 16);
              if (v31)
              {
                v34 = v31;
                v35 = *v82;
                do
                {
                  for (i = 0; i != v34; ++i)
                  {
                    if (*v82 != v35)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v37 = *(*(&v81 + 1) + 8 * i);
                    v38 = objc_msgSend_objectForKey_(v28, v32, v33, v37);
                    v39 = LBFLogContextAggregator;
                    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                    {
                      v40 = v39;
                      v44 = objc_msgSend_latestState(v38, v41, v43, v42);
                      *buf = 134217984;
                      v97 = v44;
                      _os_log_impl(&dword_255ED5000, v40, OS_LOG_TYPE_INFO, "State: %lu", buf, 0xCu);
                    }

                    v45 = LBFLogContextAggregator;
                    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                    {
                      v46 = v45;
                      v50 = objc_msgSend_getDictionaryRepresentation(v38, v47, v49, v48);
                      *buf = 138412290;
                      v97 = v50;
                      _os_log_impl(&dword_255ED5000, v46, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
                    }

                    v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    v54 = objc_msgSend_objectForKey_(v21, v52, v53, v37);

                    if (v54)
                    {
                      v58 = objc_msgSend_objectForKey_(v21, v55, v57, v37);
                      objc_msgSend_addObjectsFromArray_(v51, v59, v60, v58);
                    }

                    v61 = objc_msgSend_getDictionaryRepresentation(v38, v55, v57, v56);
                    objc_msgSend_addObject_(v51, v62, v63, v61);

                    objc_msgSend_setObject_forKey_(v21, v64, v65, v51, v37);
                  }

                  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v32, v33, &v81, v93, 16);
                }

                while (v34);
              }

              v9 = v75;
              objc_msgSend_setObject_forKey_(v75, v66, v67, v21, v79);

              v18 = v80 + 1;
            }

            while (v80 + 1 != v77);
            v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v16, v17, &v85, v94, 16);
          }

          while (v77);
        }

        v12 = v74 + 1;
      }

      while (v74 + 1 != v73);
      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v68, v69, &v89, v95, 16);
    }

    while (v73);
  }

  return v9;
}

- (void)enumerateAggregation:(id)aggregation
{
  v80 = *MEMORY[0x277D85DE8];
  aggregationCopy = aggregation;
  v8 = objc_msgSend_getBucketsNotAggregated(self, v5, v7, v6);
  v9 = LBFLogContextAggregator;
  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
  {
    v12 = v9;
    v16 = objc_msgSend_description(v8, v13, v15, v14);
    *buf = 138412290;
    v79 = v16;
    _os_log_impl(&dword_255ED5000, v12, OS_LOG_TYPE_INFO, "To aggregate: %@", buf, 0xCu);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v17 = objc_msgSend_reverseObjectEnumerator(self->_buckets, v10, 0, v11, v8);
  v21 = objc_msgSend_allObjects(v17, v18, v20, v19);

  obj = v21;
  v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, v23, &v71, v77, 16);
  if (v55)
  {
    v54 = *v72;
    do
    {
      v27 = 0;
      do
      {
        if (*v72 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v56 = v27;
        v28 = *(*(&v71 + 1) + 8 * v27);
        v29 = objc_msgSend_flattenEvents(v28, v24, v26, v25);
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v59 = v29;
        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, 0, &v67, v76, 16);
        if (v58)
        {
          v57 = *v68;
          do
          {
            v33 = 0;
            do
            {
              if (*v68 != v57)
              {
                objc_enumerationMutation(v59);
              }

              v60 = v33;
              v34 = objc_msgSend_objectForKey_(v59, v31, v32, *(*(&v67 + 1) + 8 * v33));
              v63 = 0u;
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, 0, &v63, v75, 16);
              if (v36)
              {
                v39 = v36;
                v40 = *v64;
                do
                {
                  for (i = 0; i != v39; ++i)
                  {
                    if (*v64 != v40)
                    {
                      objc_enumerationMutation(v34);
                    }

                    v42 = objc_msgSend_objectForKey_(v34, v37, v38, *(*(&v63 + 1) + 8 * i));
                    if (objc_msgSend_count(v42, v43, v45, v44))
                    {
                      v48 = objc_msgSend_objectAtIndex_(v42, v46, v47, 0);
                      v51 = objc_msgSend_getTrialIdentifierFromBMEvent_(self, v49, v50, v48);

                      if (v51)
                      {
                        aggregationCopy[2](aggregationCopy, v28, v51, v42);
                      }

                      else if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_ERROR))
                      {
                        sub_255F0AB3C(buf, &buf[1]);
                      }
                    }

                    else if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_ERROR))
                    {
                      sub_255F0AB68(&v61, v62);
                    }
                  }

                  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, v38, &v63, v75, 16);
                }

                while (v39);
              }

              v33 = v60 + 1;
            }

            while (v60 + 1 != v58);
            v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v31, v32, &v67, v76, 16);
          }

          while (v58);
        }

        v27 = v56 + 1;
      }

      while (v56 + 1 != v55);
      v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, v26, &v71, v77, 16);
    }

    while (v55);
  }
}

- (id)dateToStringInUTCAndLocal:(id)local
{
  v3 = MEMORY[0x277CCA968];
  localCopy = local;
  v5 = objc_alloc_init(v3);
  objc_msgSend_setDateFormat_(v5, v6, v7, @"yyyy-MM-dd HH:mm:ss zzz");
  v11 = objc_msgSend_localTimeZone(MEMORY[0x277CBEBB0], v8, v10, v9);
  objc_msgSend_setTimeZone_(v5, v12, v13, v11);

  v16 = objc_msgSend_stringFromDate_(v5, v14, v15, localCopy);
  v19 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0], v17, v18, @"UTC");
  objc_msgSend_setTimeZone_(v5, v20, v21, v19);

  v24 = objc_msgSend_stringFromDate_(v5, v22, v23, localCopy);

  v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, v26, @"%@ %@", v24, v16);

  return v27;
}

- (void)dumpTimestamps
{
  v3[0] = MEMORY[0x277D85DD0];
  v2.n128_u64[0] = 3221225472;
  v3[1] = 3221225472;
  v3[2] = sub_255EDF598;
  v3[3] = &unk_2798139A0;
  v3[4] = self;
  objc_msgSend_enumerateAggregation_(self, a2, v2, v3);
}

@end