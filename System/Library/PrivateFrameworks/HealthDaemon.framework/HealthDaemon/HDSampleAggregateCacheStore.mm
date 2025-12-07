@interface HDSampleAggregateCacheStore
- (BOOL)_indexInRangeOfQueryStartIndex:(void *)index endIndex:(uint64_t)endIndex bucketIndex:;
- (BOOL)deleteCachesForIndexes:(id)indexes generationNumber:(int64_t)number error:(id *)error;
- (BOOL)enumerateForInterval:(id)interval cachedClass:(Class)class anchorAfterDatabaseScan:(int64_t *)scan error:(id *)error cacheHandler:(id)handler;
- (BOOL)enumerateForInterval:(id)interval cachedClass:(Class)class anchorAfterDatabaseScan:(int64_t *)scan nowDate:(id)date calendar:(id)calendar error:(id *)error cacheHandler:(id)handler;
- (BOOL)saveCaches:(id)caches generationNumber:(int64_t)number error:(id *)error;
- (HDSampleAggregateCacheStore)initWithProfile:(id)profile queryDescriptor:(id)descriptor cachingIdentifier:(id)identifier sourceEntity:(id)entity anchorDate:(id)date intervalComponents:(id)components timeIntervalToBucketIndex:(id)index;
- (id)persistentAnchorDateWithError:(id *)error;
- (int64_t)cachesExistWithError:(id *)error;
@end

@implementation HDSampleAggregateCacheStore

- (HDSampleAggregateCacheStore)initWithProfile:(id)profile queryDescriptor:(id)descriptor cachingIdentifier:(id)identifier sourceEntity:(id)entity anchorDate:(id)date intervalComponents:(id)components timeIntervalToBucketIndex:(id)index
{
  profileCopy = profile;
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  entityCopy = entity;
  dateCopy = date;
  componentsCopy = components;
  indexCopy = index;
  v37.receiver = self;
  v37.super_class = HDSampleAggregateCacheStore;
  v22 = [(HDSampleAggregateCacheStore *)&v37 init];
  v23 = v22;
  if (v22)
  {
    objc_storeWeak(&v22->_profile, profileCopy);
    v24 = objc_msgSend_copy(descriptorCopy);
    queryDescriptor = v23->_queryDescriptor;
    v23->_queryDescriptor = v24;

    v26 = objc_msgSend_copy(identifierCopy);
    cachingIdentifier = v23->_cachingIdentifier;
    v23->_cachingIdentifier = v26;

    v28 = objc_msgSend_copy(entityCopy);
    sourceEntity = v23->_sourceEntity;
    v23->_sourceEntity = v28;

    v30 = objc_msgSend_copy(indexCopy);
    timeIntervalToBucketIndex = v23->_timeIntervalToBucketIndex;
    v23->_timeIntervalToBucketIndex = v30;

    v32 = objc_msgSend_copy(dateCopy);
    anchorDate = v23->_anchorDate;
    v23->_anchorDate = v32;

    v34 = objc_msgSend_copy(componentsCopy);
    intervalComponents = v23->_intervalComponents;
    v23->_intervalComponents = v34;
  }

  return v23;
}

- (int64_t)cachesExistWithError:(id *)error
{
  cachingIdentifier = self->_cachingIdentifier;
  sourceEntity = self->_sourceEntity;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [HDSampleAggregateCacheEntity cachesExistForQueryIdentifier:cachingIdentifier sourceEntity:sourceEntity profile:WeakRetained error:error];

  return v7;
}

- (id)persistentAnchorDateWithError:(id *)error
{
  persistentAnchorDate = self->_persistentAnchorDate;
  if (persistentAnchorDate)
  {
    v4 = persistentAnchorDate;
  }

  else
  {
    cachingIdentifier = self->_cachingIdentifier;
    sourceEntity = self->_sourceEntity;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v19 = 0;
    v10 = [HDCachedQueryMetadataEntity cachedQueryMetadataForQueryIdentifier:cachingIdentifier sourceEntity:sourceEntity profile:WeakRetained error:&v19];
    v11 = v19;

    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 == 0;
    }

    if (v12)
    {
      if (v10)
      {
        anchorDate = [v10 anchorDate];
      }

      else
      {
        anchorDate = self->_anchorDate;
      }

      v17 = self->_persistentAnchorDate;
      self->_persistentAnchorDate = anchorDate;

      v4 = self->_persistentAnchorDate;
    }

    else
    {
      v14 = v11;
      v15 = v14;
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError();
      }

      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)saveCaches:(id)caches generationNumber:(int64_t)number error:(id *)error
{
  cachesCopy = caches;
  v20 = 0;
  v9 = [(HDSampleAggregateCacheStore *)self persistentAnchorDateWithError:&v20];
  v10 = v20;
  v11 = v10;
  if (v9)
  {
    cachingIdentifier = self->_cachingIdentifier;
    sourceEntity = self->_sourceEntity;
    intervalComponents = self->_intervalComponents;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v16 = [HDSampleAggregateCacheEntity insertCachedData:cachesCopy forQueryIdentifier:cachingIdentifier sourceEntity:sourceEntity generationNumber:number persistentAnchorDate:v9 intervalComponents:intervalComponents profile:WeakRetained error:error];
  }

  else
  {
    v18 = v10;
    WeakRetained = v18;
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        v16 = 0;
        *error = WeakRetained;
      }

      else
      {
        _HKLogDroppedError();
        v16 = 0;
      }
    }

    else
    {
      v16 = 1;
    }
  }

  return v16;
}

- (BOOL)deleteCachesForIndexes:(id)indexes generationNumber:(int64_t)number error:(id *)error
{
  indexesCopy = indexes;
  v20 = 0;
  v9 = [(HDSampleAggregateCacheStore *)self persistentAnchorDateWithError:&v20];
  v10 = v20;
  v11 = v10;
  if (!v9)
  {
    v17 = v10;
    WeakRetained = v17;
    if (v17)
    {
      if (error)
      {
        v18 = v17;
        v16 = 0;
        *error = WeakRetained;
        goto LABEL_8;
      }

      _HKLogDroppedError();
    }

    v16 = 0;
    goto LABEL_8;
  }

  cachingIdentifier = self->_cachingIdentifier;
  sourceEntity = self->_sourceEntity;
  intervalComponents = self->_intervalComponents;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [HDSampleAggregateCacheEntity deleteCacheForBucketIndexes:indexesCopy forQueryIdentifier:cachingIdentifier sourceEntity:sourceEntity generationNumber:number persistentAnchorDate:v9 intervalComponents:intervalComponents profile:WeakRetained error:error];
LABEL_8:

  return v16;
}

- (BOOL)enumerateForInterval:(id)interval cachedClass:(Class)class anchorAfterDatabaseScan:(int64_t *)scan error:(id *)error cacheHandler:(id)handler
{
  intervalCopy = interval;
  handlerCopy = handler;
  v14 = [MEMORY[0x277CBEAA8] now];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  LOBYTE(error) = [(HDSampleAggregateCacheStore *)self enumerateForInterval:intervalCopy cachedClass:class anchorAfterDatabaseScan:scan nowDate:v14 calendar:currentCalendar error:error cacheHandler:handlerCopy];

  return error;
}

- (BOOL)enumerateForInterval:(id)interval cachedClass:(Class)class anchorAfterDatabaseScan:(int64_t *)scan nowDate:(id)date calendar:(id)calendar error:(id *)error cacheHandler:(id)handler
{
  intervalCopy = interval;
  dateCopy = date;
  calendarCopy = calendar;
  handlerCopy = handler;
  if (!intervalCopy)
  {
    v28 = calendarCopy;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSampleAggregateCacheStore.mm" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"interval != nil"}];

    calendarCopy = v28;
  }

  scanCopy = scan;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __124__HDSampleAggregateCacheStore_enumerateForInterval_cachedClass_anchorAfterDatabaseScan_nowDate_calendar_error_cacheHandler___block_invoke;
  v31[3] = &unk_278616698;
  v31[4] = self;
  v21 = intervalCopy;
  v32 = v21;
  classCopy = class;
  v22 = dateCopy;
  v33 = v22;
  v23 = calendarCopy;
  v34 = v23;
  v24 = handlerCopy;
  v35 = v24;
  v37 = scanCopy;
  v25 = [(HDHealthEntity *)HDSampleAggregateCacheEntity performReadTransactionWithHealthDatabase:database error:error block:v31];

  return v25;
}

uint64_t __124__HDSampleAggregateCacheStore_enumerateForInterval_cachedClass_anchorAfterDatabaseScan_nowDate_calendar_error_cacheHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v234 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v182 = 0;
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v163 = v3;
  v161 = v5;
  v158 = v6;
  v156 = v7;
  if (v4)
  {
    v149 = v8;
    v9 = *(v4 + 16);
    v10 = *(v4 + 24);
    v179 = v4;
    WeakRetained = objc_loadWeakRetained((v4 + 8));
    v188 = 0;
    v12 = v9;
    v13 = WeakRetained;
    v160 = [HDCachedQueryMetadataEntity cachedQueryMetadataForQueryIdentifier:v12 sourceEntity:v10 profile:WeakRetained error:&v188];
    v14 = v188;

    if (v160)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 == 0;
    }

    if (!v15)
    {
      v21 = v14;
      v22 = v21;
      v23 = 0;
      v24 = v21;
      v182 = v21;
      v159 = v21;
LABEL_86:

      goto LABEL_87;
    }

    if (v160)
    {
      v16 = [v160 generationNumber];
      v17 = v4;
      if (v16)
      {
LABEL_11:
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        v20 = objc_loadWeakRetained((v17 + 8));
        v187 = v14;
        v154 = [HDCachedQueryMetadataEntity lastUpdatedDateForQueryIdentifier:v18 sourceEntity:v19 profile:v20 error:&v187];
        v159 = v187;

        if (!v154 && v159)
        {
          v182 = v159;

          v23 = 0;
LABEL_85:

          v24 = v160;
          goto LABEL_86;
        }

        v25 = v160;
        v146 = v154;
        v26 = v158;
        v27 = v161;
        v150 = v25;
        v28 = [v25 anchorDate];
        v29 = v179;
        if (!v28)
        {
          goto LABEL_19;
        }

        v30 = *(v179 + 32);
        v31 = [v25 anchorDate];
        v32 = v30;
        v33 = v31;
        if (([v32 isEqual:v33] & 1) == 0)
        {
          [v32 timeIntervalSinceReferenceDate];
          v39 = v38;
          [v33 timeIntervalSinceReferenceDate];
          v41 = v40;
          [*(v179 + 48) hk_approximateDuration];
          v43 = ((v39 - v41) / v42);
          v44 = v43;
          v45 = v43 - 2;
          while (1)
          {
            v46 = [*(v29 + 48) hk_dateByAddingInterval:v44 toDate:v33];
            v47 = [v46 isEqual:v32];

            v29 = v179;
            if (v47)
            {
              break;
            }

            if (++v45 > v44)
            {

              goto LABEL_24;
            }
          }
        }

        v34 = [v150 intervalComponents];
        v28 = v34;
        v35 = *(v179 + 48);
        if (v34 == v35)
        {
        }

        else
        {
          if (!v35)
          {
LABEL_24:
            v145 = 0;
LABEL_28:
            v143 = 1;
LABEL_29:

            goto LABEL_30;
          }

          v36 = [v150 intervalComponents];
          v37 = [v36 isEqual:*(v179 + 48)];

          if ((v37 & 1) == 0)
          {
LABEL_19:
            v145 = 0;
            v143 = 1;
LABEL_30:

            v48 = [v150 anchorDate];
            v49 = v48;
            if (!v48)
            {
              v49 = *(v179 + 32);
            }

            objc_storeStrong((v179 + 40), v49);

            v186 = 0;
            v183[0] = 0;
            v183[1] = v183;
            v183[2] = 0x4812000000;
            v183[3] = __Block_byref_object_copy__24;
            v183[4] = __Block_byref_object_dispose__24;
            v183[5] = &unk_22929BC4D;
            v185[0] = 0;
            v185[1] = 0;
            v184 = v185;
            v151 = v163;
            v152 = v150;
            v50 = [v151 startDate];
            [v50 timeIntervalSinceReferenceDate];
            v52 = v51;

            v53 = [v151 endDate];
            [v53 timeIntervalSinceReferenceDate];
            v55 = v54;

            [v152 queryStartIndex];
            v57 = v56 = v179;
            if (v57)
            {
              v58 = [v151 startDate];
              v59 = v58 == 0;

              v56 = v179;
              if (!v59)
              {
                v60 = (*(*(v179 + 72) + 16))(v52);
                v61 = [v152 queryStartIndex];
                v62 = [v61 integerValue];

                v56 = v179;
                if (v60 < v62)
                {
                  v222[0] = v60;
                  do
                  {
                    std::__tree<long>::__emplace_unique_key_args<long,long const&>(&v184, v60++, v222);
                    v222[0] = v60;
                  }

                  while (v62 != v60);
                }
              }
            }

            v63 = [v152 queryEndIndex];
            if (v63)
            {
              v64 = [v151 endDate];
              v65 = v64 == 0;

              v56 = v179;
              if (!v65)
              {
                v66 = (*(*(v179 + 72) + 16))(v55);
                v67 = [v152 queryEndIndex];
                v68 = [v67 integerValue];

                v56 = v179;
                if (v66 > v68)
                {
                  v69 = v68 + 1;
                  v222[0] = v68 + 1;
                  do
                  {
                    std::__tree<long>::__emplace_unique_key_args<long,long const&>(&v184, v69, v222);
                    v222[0] = v69 + 1;
                    v15 = v69++ == v66;
                  }

                  while (!v15);
                }
              }
            }

            v70 = *(v56 + 64);
            if (v70)
            {
              [v70 arrayByAddingObject:*(v56 + 56)];
            }

            else
            {
              v220 = *(v56 + 56);
              [MEMORY[0x277CBEA60] arrayWithObjects:&v220 count:1];
            }
            v71 = ;
            v198 = 0;
            v199 = &v198;
            v200 = 0x4812000000;
            v201 = __Block_byref_object_copy__319;
            v202 = __Block_byref_object_dispose__320;
            v203 = &unk_22929BC4D;
            v206 = 0;
            __p = 0;
            v205 = 0;
            v194 = 0u;
            v195 = 0u;
            v196 = 0u;
            v197 = 0u;
            obj = v71;
            v142 = [obj countByEnumeratingWithState:&v194 objects:aBlock count:16];
            if (v142)
            {
              v144 = *v195;
              do
              {
                for (i = 0; i != v142; ++i)
                {
                  if (*v195 != v144)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v72 = *(*(&v194 + 1) + 8 * i);
                  v170 = [v152 maxAnchor];
                  v73 = v72;
                  v176 = v151;
                  v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v209 = 0u;
                  v210 = 0u;
                  v207 = 0u;
                  v208 = 0u;
                  v173 = v74;
                  v75 = [v73 sampleTypes];
                  v166 = v75;
                  v76 = [v75 countByEnumeratingWithState:&v207 objects:v222 count:16];
                  if (v76)
                  {
                    v77 = *v208;
                    do
                    {
                      for (j = 0; j != v76; ++j)
                      {
                        if (*v208 != v77)
                        {
                          objc_enumerationMutation(v166);
                        }

                        v79 = *(*(&v207 + 1) + 8 * j);
                        v80 = objc_loadWeakRetained((v179 + 8));
                        v81 = [HDSampleEntity entityEnumeratorWithType:v79 profile:v80];

                        v82 = [MEMORY[0x277CCABB0] numberWithLongLong:v170];
                        [v81 setAnchor:v82];

                        v83 = HDSampleEntityPredicateForDateInterval(v176, v79);
                        v84 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v83, 0}];
                        v85 = [v73 samplePredicate];
                        LOBYTE(v82) = v85 == 0;

                        if ((v82 & 1) == 0)
                        {
                          v86 = [v73 samplePredicate];
                          [v84 addObject:v86];
                        }

                        v87 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v84];
                        [v81 setPredicate:v87];

                        v221[0] = v83;
                        v88 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"start_date"];
                        v221[1] = v88;
                        v89 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"end_date"];
                        v221[2] = v89;
                        v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v221 count:3];

                        v91 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v90];
                        [v81 setDeletedObjectsPredicate:v91];

                        [v173 addObject:v81];
                      }

                      v75 = v166;
                      v76 = [v166 countByEnumeratingWithState:&v207 objects:v222 count:16];
                    }

                    while (v76);
                  }

                  v92 = objc_msgSend_copy(v173);
                  v190 = 0u;
                  v191 = 0u;
                  v192 = 0u;
                  v193 = 0u;
                  v93 = v92;
                  v94 = [v93 countByEnumeratingWithState:&v190 objects:v211 count:16];
                  if (v94)
                  {
                    v95 = *v191;
                    while (2)
                    {
                      for (k = 0; k != v94; ++k)
                      {
                        if (*v191 != v95)
                        {
                          objc_enumerationMutation(v93);
                        }

                        v97 = *(*(&v190 + 1) + 8 * k);
                        v189[0] = MEMORY[0x277D85DD0];
                        v189[1] = 3221225472;
                        v189[2] = __126__HDSampleAggregateCacheStore__bucketIndexesWithSampleChanges_forInterval_queryMetadata_deletedObjectWithoutDatesAdded_error___block_invoke;
                        v189[3] = &unk_278616738;
                        *&v189[6] = v52;
                        *&v189[7] = v55;
                        v189[5] = &v186;
                        v189[4] = &v198;
                        if (([v97 enumerateSampleTimesIncludingDeletedObjects:1 error:&v182 handler:v189] & 1) == 0)
                        {

                          v23 = 0;
                          goto LABEL_78;
                        }
                      }

                      v94 = [v93 countByEnumeratingWithState:&v190 objects:v211 count:16];
                      if (v94)
                      {
                        continue;
                      }

                      break;
                    }
                  }
                }

                v142 = [obj countByEnumeratingWithState:&v194 objects:aBlock count:16];
              }

              while (v142);
            }

            v98 = v199[6];
            v99 = v199[7];
            while (v98 != v99)
            {
              v100 = objc_autoreleasePoolPush();
              v101 = (*(*(v179 + 72) + 16))(*v98);
              v102 = (*(*(v179 + 72) + 16))(v98[1]);
              v222[0] = v101;
              if (v101 <= v102)
              {
                do
                {
                  std::__tree<long>::__emplace_unique_key_args<long,long const&>(&v184, v101, v222);
                  v222[0] = v101 + 1;
                  v15 = v101++ == v102;
                }

                while (!v15);
              }

              objc_autoreleasePoolPop(v100);
              v98 += 2;
            }

            v23 = 1;
LABEL_78:
            _Block_object_dispose(&v198, 8);
            if (__p)
            {
              v205 = __p;
              operator delete(__p);
            }

            if (v23)
            {
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = __101__HDSampleAggregateCacheStore__enumerateForInterval_cachedClass_nowDate_calendar_error_cacheHandler___block_invoke;
              aBlock[3] = &unk_2786166C0;
              aBlock[4] = v179;
              v103 = v152;
              v216 = v103;
              v217 = v183;
              v218 = v143;
              v219 = v186;
              v174 = _Block_copy(aBlock);
              v211[0] = MEMORY[0x277D85DD0];
              v211[1] = 3221225472;
              v211[2] = __101__HDSampleAggregateCacheStore__enumerateForInterval_cachedClass_nowDate_calendar_error_cacheHandler___block_invoke_2;
              v211[3] = &unk_2786166E8;
              v211[4] = v179;
              v171 = v103;
              v212 = v171;
              v213 = v183;
              v214 = v145;
              v177 = _Block_copy(v211);
              v104 = *(v179 + 72);
              v105 = [v151 startDate];
              [v105 timeIntervalSinceReferenceDate];
              v106 = (*(v104 + 16))(v104, *(v179 + 40));

              v107 = *(v179 + 72);
              v108 = [v151 endDate];
              [v108 timeIntervalSinceReferenceDate];
              v109 = (*(v107 + 16))(v107, *(v179 + 40));

              v198 = 0;
              v199 = &v198;
              v200 = 0x2020000000;
              v201 = v106;
              v111 = *(v179 + 16);
              v110 = *(v179 + 24);
              v112 = objc_loadWeakRetained((v179 + 8));
              v222[0] = MEMORY[0x277D85DD0];
              v222[1] = 3221225472;
              v222[2] = __101__HDSampleAggregateCacheStore__enumerateForInterval_cachedClass_nowDate_calendar_error_cacheHandler___block_invoke_3;
              v222[3] = &unk_278616710;
              v229 = v106;
              v230 = v109;
              v231 = sel__enumerateForInterval_cachedClass_nowDate_calendar_error_cacheHandler_;
              v222[4] = v179;
              v227 = &v198;
              v113 = v156;
              v224 = v113;
              v114 = v177;
              v225 = v114;
              v232 = v149;
              v223 = v171;
              v115 = v174;
              v233 = v145;
              v180 = v115;
              v226 = v115;
              v228 = v183;
              [HDSampleAggregateCacheEntity enumerateCachedDataForQueryIdentifier:v111 sourceEntity:v110 profile:v112 startIndex:v106 endIndex:v109 error:&v182 enumerationHandler:v222];

              if (v199[3] < v109)
              {
                do
                {
                  v116 = objc_autoreleasePoolPush();
                  v117 = (*(v114 + 2))(v114, v199[3]);
                  (*(v113 + 2))(v113, 0, v117, v199[3], 0);
                  objc_autoreleasePoolPop(v116);
                  v118 = v199[3] + 1;
                  v199[3] = v118;
                }

                while (v118 < v109);
              }

              _Block_object_dispose(&v198, 8);
            }

            _Block_object_dispose(v183, 8);
            std::__tree<long>::destroy(v185[0]);
            goto LABEL_85;
          }
        }

        v28 = [v26 hk_dateBySubtractingDays:*MEMORY[0x277CCBC20] - 1 fromDate:v27];
        if ([v146 hk_isBeforeOrEqualToDate:v28])
        {
          goto LABEL_27;
        }

        v175 = [v150 buildVersion];
        v178 = objc_loadWeakRetained((v179 + 8));
        v172 = [v178 daemon];
        v169 = [v172 behavior];
        v133 = [v169 currentOSBuild];
        v134 = v133;
        if (v175 == v133)
        {
        }

        else
        {
          v168 = objc_loadWeakRetained((v179 + 8));
          v135 = [v168 daemon];
          v136 = [v135 behavior];
          v137 = [v136 currentOSBuild];
          if (!v137)
          {

            goto LABEL_27;
          }

          v165 = v135;
          v167 = [v150 buildVersion];
          v138 = objc_loadWeakRetained((v179 + 8));
          v139 = [v138 daemon];
          v140 = [v139 behavior];
          v141 = [v140 currentOSBuild];
          v153 = [v167 isEqualToString:v141];

          if ((v153 & 1) == 0)
          {
LABEL_27:
            v145 = 1;
            goto LABEL_28;
          }
        }

        v143 = 0;
        v145 = 1;
        goto LABEL_29;
      }
    }

    v160 = 0;
    v17 = v4;
    goto LABEL_11;
  }

  v23 = 0;
LABEL_87:

  v119 = v182;
  v120 = v119;
  if (v119)
  {
    v121 = v23;
  }

  else
  {
    v121 = 1;
  }

  if (v121)
  {
    v122 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v123 = [v122 database];
    v181 = v120;
    v162 = [(HDHealthEntity *)HDSampleEntity maxRowIDForPredicate:0 healthDatabase:v123 error:&v181];
    v164 = v181;

    v124 = v162;
    if (v162)
    {
      v125 = 1;
    }

    else
    {
      v125 = v164 == 0;
    }

    v126 = v125;
    if (v125)
    {
      if (*(a1 + 80))
      {
        **(a1 + 80) = [v162 longLongValue];
      }
    }

    else
    {
      v129 = v164;
      v130 = v129;
      if (a3)
      {
        v131 = v129;
        *a3 = v130;
      }

      else
      {
        _HKLogDroppedError();
      }

      v124 = v162;
    }
  }

  else
  {
    v127 = v119;
    v124 = v127;
    if (a3)
    {
      v128 = v127;
      v126 = 0;
      *a3 = v124;
    }

    else
    {
      _HKLogDroppedError();
      v126 = 0;
    }

    v164 = v124;
  }

  return v126;
}

uint64_t __101__HDSampleAggregateCacheStore__enumerateForInterval_cachedClass_nowDate_calendar_error_cacheHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) queryStartIndex];
  v8 = [*(a1 + 40) queryEndIndex];
  v9 = [(HDSampleAggregateCacheStore *)v6 _indexInRangeOfQueryStartIndex:v7 endIndex:v8 bucketIndex:a2];

  v10 = [*(a1 + 40) generationNumber];
  v11 = *(*(a1 + 48) + 8);
  v14 = *(v11 + 56);
  v12 = v11 + 56;
  v13 = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v12;
  do
  {
    if (*(v13 + 32) >= a2)
    {
      v15 = v13;
    }

    v13 = *(v13 + 8 * (*(v13 + 32) < a2));
  }

  while (v13);
  if (v15 == v12 || *(v15 + 32) > a2)
  {
LABEL_8:
    v15 = v12;
  }

  v16 = v10 >= a3 && v9;
  if (v16 == 1)
  {
    if ((*(a1 + 56) & 1) == 0 && v15 == v12)
    {
      LOBYTE(v16) = *(a1 + 57);
    }
  }

  else
  {
    LOBYTE(v16) = 1;
  }

  return v16 & 1;
}

- (BOOL)_indexInRangeOfQueryStartIndex:(void *)index endIndex:(uint64_t)endIndex bucketIndex:
{
  v7 = a2;
  indexCopy = index;
  v9 = indexCopy;
  if (self)
  {
    self = 0;
    if (v7)
    {
      if (indexCopy)
      {
        integerValue = [v7 integerValue];
        integerValue2 = [v9 integerValue];
        self = integerValue <= endIndex && integerValue2 >= endIndex;
      }
    }
  }

  return self;
}

uint64_t __101__HDSampleAggregateCacheStore__enumerateForInterval_cachedClass_nowDate_calendar_error_cacheHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) queryStartIndex];
  v6 = [*(a1 + 40) queryEndIndex];
  v7 = [(HDSampleAggregateCacheStore *)v4 _indexInRangeOfQueryStartIndex:v5 endIndex:v6 bucketIndex:a2];

  v8 = *(*(a1 + 48) + 8);
  v11 = *(v8 + 56);
  v9 = v8 + 56;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v9;
  do
  {
    if (*(v10 + 32) >= a2)
    {
      v12 = v10;
    }

    v10 = *(v10 + 8 * (*(v10 + 32) < a2));
  }

  while (v10);
  if (v12 == v9 || *(v12 + 32) > a2)
  {
LABEL_8:
    v12 = v9;
  }

  return (v12 != v9) | ((*(a1 + 56) & v7 & 1) == 0);
}

uint64_t __101__HDSampleAggregateCacheStore__enumerateForInterval_cachedClass_nowDate_calendar_error_cacheHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*(a1 + 88) > a3 || *(a1 + 96) < a3)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 104) object:*(a1 + 32) file:@"HDSampleAggregateCacheStore.mm" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"bucketIndex >= requestedStartIndex && bucketIndex <= requestedEndIndex"}];
  }

  while (*(*(*(a1 + 72) + 8) + 24) < a3)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 48);
    v9 = (*(*(a1 + 56) + 16))();
    (*(v8 + 16))(v8, 0, v9, *(*(*(a1 + 72) + 8) + 24), 0);
    objc_autoreleasePoolPop(v7);
    ++*(*(*(a1 + 72) + 8) + 24);
  }

  v10 = *(a1 + 112);
  v27 = 0;
  v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v10 fromData:v5 error:&v27];
  v12 = v27;
  if (v11)
  {
    v13 = (*(*(a1 + 64) + 16))();
    v14 = *(a1 + 48);
    if (v13)
    {
      if (*(a1 + 120))
      {
        v15 = v11;
      }

      else
      {
        v15 = 0;
      }

      (*(v14 + 16))(v14, v15, 1, a3, 0);
      v16 = *(*(a1 + 80) + 8);
      v17 = v16[7];
      if (v17)
      {
        v18 = v16 + 7;
        v19 = v16[7];
        do
        {
          if (v19[4] >= a3)
          {
            v18 = v19;
          }

          v19 = v19[v19[4] < a3];
        }

        while (v19);
        if (v18 != v16 + 7 && v18[4] <= a3)
        {
          v20 = v18[1];
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            v24 = v18;
            do
            {
              v21 = v24[2];
              v25 = *v21 == v24;
              v24 = v21;
            }

            while (!v25);
          }

          if (v16[6] == v18)
          {
            v16[6] = v21;
          }

          --v16[8];
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v17, v18);
          operator delete(v18);
        }
      }
    }

    else
    {
      (*(v14 + 16))(v14, v11, 0, a3, 0);
    }
  }

  else
  {
    _HKInitializeLogging();
    v22 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 40);
      *buf = 138412290;
      v29 = v26;
      _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "Failure to decode cache for query %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  ++*(*(*(a1 + 72) + 8) + 24);

  return 1;
}

BOOL __126__HDSampleAggregateCacheStore__bucketIndexesWithSampleChanges_forInterval_queryMetadata_deletedObjectWithoutDatesAdded_error___block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = a3 != 2.22507386e-308 && a2 != 2.22507386e-308;
  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (*(a1 + 56) <= a3)
    {
      a3 = *(a1 + 56);
    }

    if (v4 <= a3)
    {
      if (v4 >= a3)
      {
        a3 = v4;
      }

      HKIntervalMask<double>::_insertInterval((*(*(a1 + 32) + 8) + 48), v4, a3);
    }
  }

  else
  {
    **(a1 + 40) = 1;
  }

  return v3;
}

@end