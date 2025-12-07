@interface HDCloudSyncStateSampleWindowUpdater
+ (BOOL)_fetchPersistedDeletedSamples:(uint64_t)samples withSampleUUIDs:(void *)ds profile:(void *)profile transaction:(void *)transaction timeWindow:(void *)window error:(uint64_t)error;
+ (BOOL)_generateSyncCodableContributors:(void *)contributors fromCollectionByProvenance:(void *)provenance profile:(void *)profile transaction:(uint64_t)transaction error:;
+ (BOOL)_generateSyncCodableDevices:(void *)devices fromCollectionByProvenance:(void *)provenance profile:(void *)profile transaction:(uint64_t)transaction error:;
+ (BOOL)updateDataWithStateStorage:(id)storage configuration:(id)configuration profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (HDCodableSyncState)_codableSyncStateFromExistingSyncState:(void *)state forDomain:(void *)domain key:;
+ (id)_healthObjectUUIDsFromMergedStateSyncCollection:(void *)collection configuration:;
+ (uint64_t)_decodeCloudData:(objc_class *)data ofClass:(void *)class forKey:(void *)key dataVersion:(HDCodableSyncState *)version currentSyncVersion:(NSObject *)syncVersion configuration:(uint64_t *)configuration codableSyncState:codableCollection:error:;
@end

@implementation HDCloudSyncStateSampleWindowUpdater

+ (BOOL)updateDataWithStateStorage:(id)storage configuration:(id)configuration profile:(id)profile transaction:(id)transaction error:(id *)error
{
  v211 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  configurationCopy = configuration;
  profileCopy = profile;
  transactionCopy = transaction;
  v204 = 0;
  sampleOriginKey = [configurationCopy sampleOriginKey];
  v16 = [storageCopy data:&v204 forKey:sampleOriginKey error:error];
  v17 = v204;

  if (v16)
  {
    v177 = transactionCopy;
    v203 = 0;
    v18 = [configurationCopy key];
    v19 = [storageCopy data:&v203 forKey:v18 error:error];
    loggingCategory16 = v203;

    if ((v19 & 1) == 0)
    {
      _HKInitializeLogging();
      loggingCategory = [configurationCopy loggingCategory];
      if (os_log_type_enabled(&loggingCategory->super.super, OS_LOG_TYPE_ERROR))
      {
        v42 = [configurationCopy key];
        v43 = *error;
        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v42;
        *&buf[22] = 2114;
        v210 = v43;
        _os_log_error_impl(&dword_228986000, &loggingCategory->super.super, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch cloud data for key: %{public}@, with error: %{public}@", buf, 0x20u);
      }

      v36 = 0;
      goto LABEL_27;
    }

    v21 = objc_opt_class();
    sampleOriginKey2 = [configurationCopy sampleOriginKey];
    v201 = 0;
    v202 = 0;
    v23 = [HDCloudSyncStateSampleWindowUpdater _decodeCloudData:self ofClass:v17 forKey:v21 dataVersion:sampleOriginKey2 currentSyncVersion:configurationCopy configuration:&v202 codableSyncState:&v201 codableCollection:error error:?];
    loggingCategory = v202;
    v25 = v201;

    if (v23 != 2)
    {
      v36 = v23 == 1;
LABEL_26:

LABEL_27:
      transactionCopy = v177;
      goto LABEL_28;
    }

    v26 = objc_opt_class();
    v27 = [configurationCopy key];
    v199 = 0;
    v200 = 0;
    selfCopy = self;
    v28 = [HDCloudSyncStateSampleWindowUpdater _decodeCloudData:self ofClass:loggingCategory16 forKey:v26 dataVersion:v27 currentSyncVersion:configurationCopy configuration:&v200 codableSyncState:&v199 codableCollection:error error:?];
    v173 = v200;
    v174 = v199;

    if (v28 != 2)
    {
      _HKInitializeLogging();
      loggingCategory2 = [configurationCopy loggingCategory];
      if (os_log_type_enabled(loggingCategory2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 1026;
        *&buf[14] = v28;
        _os_log_impl(&dword_228986000, loggingCategory2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Decode finished with error?: %{public}i", buf, 0x12u);
      }

      v36 = v28 == 1;
      goto LABEL_24;
    }

    v178 = configurationCopy;
    v171 = v25;
    v172 = loggingCategory;
    if (v25)
    {
      v29 = v25;
      v30 = profileCopy;
      v31 = objc_opt_self();
      devices = [v29 devices];
      if (![HDDeviceEntity insertCodableDevices:devices syncProvenance:0 profile:v30 error:error])
      {
LABEL_11:

        _HKInitializeLogging();
        configurationCopy = v178;
        loggingCategory3 = [v178 loggingCategory];
        if (os_log_type_enabled(loggingCategory3, OS_LOG_TYPE_ERROR))
        {
          v134 = *error;
          *buf = 138543618;
          *&buf[4] = selfCopy;
          *&buf[12] = 2114;
          *&buf[14] = v134;
          _os_log_error_impl(&dword_228986000, loggingCategory3, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to save sample origins with error: %{public}@", buf, 0x16u);
        }

        v36 = 0;
        v25 = v171;
LABEL_24:
        v38 = v174;
LABEL_25:

        goto LABEL_26;
      }

      v169 = loggingCategory16;
      contributors = [v29 contributors];
      if ([HDSyncSampleOriginUtilities ingestContributorSyncObjects:contributors syncStore:0 profile:v30 error:error]== 1)
      {
        _HKInitializeLogging();
        v34 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v142 = *error;
          *buf = 138543618;
          *&buf[4] = v31;
          *&buf[12] = 2114;
          *&buf[14] = v142;
          _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to ingest contributor sync object with error: %{public}@", buf, 0x16u);
        }

        loggingCategory16 = v169;
        goto LABEL_11;
      }

      configurationCopy = v178;
      loggingCategory16 = v169;
    }

    v167 = storageCopy;
    v168 = v17;
    v170 = loggingCategory16;
    if (v174)
    {
      v197 = 0u;
      v198 = 0u;
      v195 = 0u;
      v196 = 0u;
      deletedSampleCollections = [v174 deletedSampleCollections];
      v45 = [deletedSampleCollections countByEnumeratingWithState:&v195 objects:v208 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = 0;
        v48 = 0;
        v49 = *v196;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v196 != v49)
            {
              objc_enumerationMutation(deletedSampleCollections);
            }

            v51 = *(*(&v195 + 1) + 8 * i);
            if (!+[HDDataSyncUtilities insertDeletedObjectsFromCodableObjectCollection:syncEntityClass:syncStore:profile:error:](HDDataSyncUtilities, "insertDeletedObjectsFromCodableObjectCollection:syncEntityClass:syncStore:profile:error:", v51, +[HDDataSyncUtilities deletedSampleSyncEntityClass], 0, profileCopy, error))
            {
              _HKInitializeLogging();
              loggingCategory4 = [v178 loggingCategory];
              if (os_log_type_enabled(loggingCategory4, OS_LOG_TYPE_ERROR))
              {
                v53 = *error;
                *buf = 138543618;
                *&buf[4] = selfCopy;
                *&buf[12] = 2114;
                *&buf[14] = v53;
                _os_log_error_impl(&dword_228986000, loggingCategory4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to save deleted samples with error: %{public}@", buf, 0x16u);
              }

              v48 = 1;
            }

            v47 += [v51 deletedSamplesCount];
          }

          v46 = [deletedSampleCollections countByEnumeratingWithState:&v195 objects:v208 count:16];
        }

        while (v46);

        configurationCopy = v178;
        v17 = v168;
        loggingCategory16 = v170;
        if (v48)
        {
          _HKInitializeLogging();
          loggingCategory5 = [v178 loggingCategory];
          v25 = v171;
          loggingCategory = v172;
          if (os_log_type_enabled(loggingCategory5, OS_LOG_TYPE_ERROR))
          {
            v145 = *error;
            *buf = 138543618;
            *&buf[4] = selfCopy;
            *&buf[12] = 2114;
            *&buf[14] = v145;
            _os_log_error_impl(&dword_228986000, loggingCategory5, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to insert a deleted sample with error: %{public}@", buf, 0x16u);
          }

          v36 = 0;
          goto LABEL_24;
        }
      }

      else
      {

        v47 = 0;
      }

      _HKInitializeLogging();
      loggingCategory6 = [configurationCopy loggingCategory];
      v56 = selfCopy;
      if (os_log_type_enabled(loggingCategory6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = selfCopy;
        *&buf[12] = 1024;
        *&buf[14] = v47;
        _os_log_impl(&dword_228986000, loggingCategory6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Persist %i deleted samples for state sync", buf, 0x12u);
      }

      v193 = 0u;
      v194 = 0u;
      v191 = 0u;
      v192 = 0u;
      v38 = v174;
      sampleCollections = [v174 sampleCollections];
      v58 = [sampleCollections countByEnumeratingWithState:&v191 objects:v207 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = 0;
        v61 = 0;
        v62 = *v192;
        do
        {
          for (j = 0; j != v59; ++j)
          {
            if (*v192 != v62)
            {
              objc_enumerationMutation(sampleCollections);
            }

            v64 = *(*(&v191 + 1) + 8 * j);
            if (!+[HDDataSyncUtilities insertObjectsFromCodableObjectCollection:syncEntityClass:syncStore:profile:error:](HDDataSyncUtilities, "insertObjectsFromCodableObjectCollection:syncEntityClass:syncStore:profile:error:", v64, [v178 syncEntityClass], 0, profileCopy, error))
            {
              _HKInitializeLogging();
              loggingCategory7 = [v178 loggingCategory];
              if (os_log_type_enabled(loggingCategory7, OS_LOG_TYPE_ERROR))
              {
                v67 = *error;
                *buf = 138543618;
                *&buf[4] = selfCopy;
                *&buf[12] = 2114;
                *&buf[14] = v67;
                _os_log_error_impl(&dword_228986000, loggingCategory7, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to save samples with error: %{public}@", buf, 0x16u);
              }

              v61 = 1;
            }

            v66 = [v64 count];
            v60 += v66 - [v64 deletedSamplesCount];
          }

          v59 = [sampleCollections countByEnumeratingWithState:&v191 objects:v207 count:16];
        }

        while (v59);

        v17 = v168;
        loggingCategory16 = v170;
        v38 = v174;
        v56 = selfCopy;
        if (v61)
        {
          _HKInitializeLogging();
          configurationCopy = v178;
          loggingCategory8 = [v178 loggingCategory];
          v25 = v171;
          loggingCategory = v172;
          if (os_log_type_enabled(loggingCategory8, OS_LOG_TYPE_ERROR))
          {
            v147 = *error;
            *buf = 138543618;
            *&buf[4] = selfCopy;
            *&buf[12] = 2114;
            *&buf[14] = v147;
            _os_log_error_impl(&dword_228986000, loggingCategory8, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to insert a sample with error: %{public}@", buf, 0x16u);
          }

          v36 = 0;
          goto LABEL_25;
        }
      }

      else
      {

        v60 = 0;
      }

      _HKInitializeLogging();
      loggingCategory9 = [v178 loggingCategory];
      if (os_log_type_enabled(loggingCategory9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v56;
        *&buf[12] = 1024;
        *&buf[14] = v60;
        _os_log_impl(&dword_228986000, loggingCategory9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Persist %i sample events for state sync", buf, 0x12u);
      }

      v70 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v187 = 0u;
      v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      sampleCollections2 = [v38 sampleCollections];
      v72 = [sampleCollections2 countByEnumeratingWithState:&v187 objects:v206 count:16];
      configurationCopy = v178;
      if (v72)
      {
        v73 = v72;
        v74 = *v188;
        do
        {
          for (k = 0; k != v73; ++k)
          {
            if (*v188 != v74)
            {
              objc_enumerationMutation(sampleCollections2);
            }

            v76 = [v178 sampleUUIDsFromCodableObjectCollection:*(*(&v187 + 1) + 8 * k)];
            [v70 addObjectsFromArray:v76];
          }

          v73 = [sampleCollections2 countByEnumeratingWithState:&v187 objects:v206 count:16];
        }

        while (v73);
      }

      v186 = 0;
      timeWindow = [v178 timeWindow];
      v78 = [HDCloudSyncStateSampleWindowUpdater _fetchPersistedDeletedSamples:&v186 withSampleUUIDs:v70 profile:profileCopy transaction:timeWindow timeWindow:error error:?];
      v175 = v186;

      if (!v78)
      {
        _HKInitializeLogging();
        loggingCategory10 = [v178 loggingCategory];
        if (os_log_type_enabled(loggingCategory10, OS_LOG_TYPE_ERROR))
        {
          v146 = *error;
          *buf = 138543618;
          *&buf[4] = selfCopy;
          *&buf[12] = 2114;
          *&buf[14] = v146;
          _os_log_error_impl(&dword_228986000, loggingCategory10, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch deleted samples with error: %{public}@", buf, 0x16u);
        }

        v36 = 0;
        v17 = v168;
        v38 = v174;
        goto LABEL_144;
      }
    }

    else
    {
      v175 = 0;
    }

    v79 = configurationCopy;
    v80 = profileCopy;
    objc_opt_self();
    sampleType = [v79 sampleType];
    v82 = HDSampleEntityPredicateForDataType(sampleType);
    v83 = MEMORY[0x277D10B20];
    v84 = HDDataEntityPredicateForType(2);
    v85 = [v83 negatedPredicate:v84];

    timeWindow2 = [v79 timeWindow];
    v87 = HDSampleEntityPredicateForDateInterval(timeWindow2, sampleType);

    v88 = MEMORY[0x277D10B20];
    v162 = v85;
    v164 = v82;
    *buf = v82;
    *&buf[8] = v87;
    *&buf[16] = v85;
    v89 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];
    v90 = [v88 predicateMatchingAllPredicates:v89];

    sampleType2 = [v79 sampleType];
    v166 = v79;

    v92 = [objc_msgSend(sampleType2 "dataObjectClass")];
    v93 = [HDDataSyncUtilities generateCodableObjectCollectionsForEntityClass:v92 predicate:v90 profile:v80 error:error];
    log = v80;

    if (v93 && [v93 count])
    {
      v94 = v93;
      v95 = v93;
    }

    else
    {
      v95 = 0;
    }

    v17 = v168;
    v96 = selfCopy;

    v97 = v95;
    v70 = v97;
    if (!v93)
    {
      _HKInitializeLogging();
      loggingCategory10 = [v79 loggingCategory];
      storageCopy = v167;
      v38 = v174;
      if (os_log_type_enabled(loggingCategory10, OS_LOG_TYPE_ERROR))
      {
        v144 = *error;
        *buf = 138543618;
        *&buf[4] = selfCopy;
        *&buf[12] = 2114;
        *&buf[14] = v144;
        _os_log_error_impl(&dword_228986000, loggingCategory10, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch samples with error: %{public}@", buf, 0x16u);
      }

      v36 = 0;
      configurationCopy = v178;
      goto LABEL_144;
    }

    allValues = [v97 allValues];
    allValues2 = [v175 allValues];
    v182 = 0u;
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    loggingCategory10 = allValues;
    v100 = [loggingCategory10 countByEnumeratingWithState:&v182 objects:v205 count:16];
    if (v100)
    {
      v101 = v100;
      v102 = 0;
      v103 = 0;
      v104 = *v183;
      do
      {
        for (m = 0; m != v101; ++m)
        {
          if (*v183 != v104)
          {
            objc_enumerationMutation(loggingCategory10);
          }

          v106 = *(*(&v182 + 1) + 8 * m);
          deletedSamplesCount = [v106 deletedSamplesCount];
          v103 += [v106 count] - deletedSamplesCount;
          v102 += deletedSamplesCount;
        }

        v101 = [loggingCategory10 countByEnumeratingWithState:&v182 objects:v205 count:16];
      }

      while (v101);
      v96 = selfCopy;
    }

    else
    {
      v102 = 0;
      v103 = 0;
    }

    _HKInitializeLogging();
    loggingCategory11 = [v166 loggingCategory];
    v38 = v174;
    if (os_log_type_enabled(loggingCategory11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = v96;
      *&buf[12] = 1024;
      *&buf[14] = v103;
      *&buf[18] = 1024;
      *&buf[20] = v102;
      _os_log_impl(&dword_228986000, loggingCategory11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetch %i local samples and %i deleted samples for state sync", buf, 0x18u);
    }

    if (loggingCategory10)
    {
      v109 = objc_alloc_init(HDCodableStateSyncCollection);
      v110 = [loggingCategory10 mutableCopy];
      [v109 setSampleCollections:v110];

      if (!allValues2)
      {
LABEL_106:
        v112 = [(HDCloudSyncStateSampleWindowUpdater *)v96 _healthObjectUUIDsFromMergedStateSyncCollection:v174 configuration:v166];
        v113 = v96;
        v114 = v112;
        v163 = v109;
        v158 = [(HDCloudSyncStateSampleWindowUpdater *)v113 _healthObjectUUIDsFromMergedStateSyncCollection:v109 configuration:v166];
        v159 = v114;
        v115 = [v114 isEqualToSet:v158];
        v116 = (v174 | v109) == 0;
        _HKInitializeLogging();
        loggingCategory12 = [v166 loggingCategory];
        v118 = os_log_type_enabled(loggingCategory12, OS_LOG_TYPE_DEFAULT);
        if ((v115 & 1) != 0 || v116)
        {
          v157 = loggingCategory12;
          if (v118)
          {
            *buf = 138543362;
            *&buf[4] = selfCopy;
            _os_log_impl(&dword_228986000, loggingCategory12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Steady state reached for samples.", buf, 0xCu);
          }

          v36 = 1;
          storageCopy = v167;
          v17 = v168;
          configurationCopy = v178;
          v122 = v163;
          v132 = v158;
          goto LABEL_143;
        }

        if (v118)
        {
          *buf = 138543874;
          *&buf[4] = selfCopy;
          *&buf[12] = 1024;
          *&buf[14] = v103;
          *&buf[18] = 1024;
          *&buf[20] = v102;
          _os_log_impl(&dword_228986000, loggingCategory12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %i samples and %i deleted samples in cloud state for state sync", buf, 0x18u);
        }

        domain = [v166 domain];
        v120 = [v166 key];
        v121 = [(HDCloudSyncStateSampleWindowUpdater *)selfCopy _codableSyncStateFromExistingSyncState:v173 forDomain:domain key:v120];

        [v121 setVersionRange:0x100000001];
        v122 = v163;
        [v121 setCodableObject:v163 version:1 profile:log];
        v157 = v121;
        data = [v121 data];
        v124 = [v166 key];
        storageCopy = v167;
        v125 = [v167 setData:data forKey:v124 error:error];

        if ((v125 & 1) == 0)
        {
          _HKInitializeLogging();
          loggingCategory13 = [v166 loggingCategory];
          configurationCopy = v178;
          v17 = v168;
          v156 = loggingCategory13;
          if (os_log_type_enabled(loggingCategory13, OS_LOG_TYPE_ERROR))
          {
            v149 = [v166 key];
            v150 = *error;
            *buf = 138543874;
            *&buf[4] = selfCopy;
            *&buf[12] = 2114;
            *&buf[14] = v149;
            *&buf[22] = 2114;
            v210 = v150;
            _os_log_error_impl(&dword_228986000, loggingCategory13, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set merged data for key: %{public}@, with error: %{public}@", buf, 0x20u);
          }

          v36 = 0;
          v38 = v174;
          v132 = v158;
          v114 = v159;
          goto LABEL_142;
        }

        configurationCopy = v178;
        v17 = v168;
        if (v70)
        {
          v181 = 0;
          v126 = [HDCloudSyncStateSampleWindowUpdater _generateSyncCodableDevices:v70 fromCollectionByProvenance:log profile:v177 transaction:error error:?];
          v156 = v181;
          if (!v126)
          {
            _HKInitializeLogging();
            loga = [v166 loggingCategory];
            v38 = v174;
            v114 = v159;
            if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
            {
              v151 = *error;
              *buf = 138543618;
              *&buf[4] = selfCopy;
              *&buf[12] = 2114;
              *&buf[14] = v151;
              _os_log_error_impl(&dword_228986000, loga, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to generate merged devices with error: %{public}@", buf, 0x16u);
            }

            v36 = 0;
            goto LABEL_133;
          }

          v180 = 0;
          v36 = [HDCloudSyncStateSampleWindowUpdater _generateSyncCodableContributors:v70 fromCollectionByProvenance:log profile:v177 transaction:error error:?];
          v127 = v180;
          v128 = v127;
          if (v36)
          {
            v129 = objc_alloc_init(HDCodableSampleOriginCollection);
            [(HDCodableSampleOriginCollection *)v129 setDevices:v156];
            [(HDCodableSampleOriginCollection *)v129 setContributors:v128];
            v155 = v129;
            v130 = [v171 isEqual:v129];
            if (v171 | v129 && !v130)
            {

              v131 = v129;
              storageCopy = v167;
              goto LABEL_125;
            }

            loga = v128;
            _HKInitializeLogging();
            loggingCategory14 = [v166 loggingCategory];
            if (os_log_type_enabled(loggingCategory14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = selfCopy;
              _os_log_impl(&dword_228986000, loggingCategory14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Steady state reached for sample origin.", buf, 0xCu);
            }

            storageCopy = v167;
            configurationCopy = v178;
            v132 = v158;
            v114 = v159;
            p_super = &v155->super.super;
          }

          else
          {
            loga = v127;
            _HKInitializeLogging();
            p_super = [v166 loggingCategory];
            v114 = v159;
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              v154 = *error;
              *buf = 138543618;
              *&buf[4] = selfCopy;
              *&buf[12] = 2114;
              *&buf[14] = v154;
              _os_log_error_impl(&dword_228986000, p_super, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to generate merged contributors with error: %{public}@", buf, 0x16u);
            }

            v132 = v158;
          }

          v38 = v174;
          goto LABEL_141;
        }

        v131 = 0;
LABEL_125:
        domain2 = [v166 domain];
        sampleOriginKey3 = [v166 sampleOriginKey];
        v137 = [(HDCloudSyncStateSampleWindowUpdater *)selfCopy _codableSyncStateFromExistingSyncState:v172 forDomain:domain2 key:sampleOriginKey3];

        [v137 setVersionRange:0x100000001];
        v36 = 1;
        v156 = &v131->super.super;
        [v137 setCodableObject:v131 version:1 profile:log];
        loga = v137;
        data2 = [v137 data];
        sampleOriginKey4 = [v166 sampleOriginKey];
        v140 = [storageCopy setData:data2 forKey:sampleOriginKey4 error:error];

        if (v140)
        {
          configurationCopy = v178;
          v38 = v174;
          v122 = v163;
          v114 = v159;
        }

        else
        {
          _HKInitializeLogging();
          loggingCategory15 = [v166 loggingCategory];
          v38 = v174;
          v114 = v159;
          if (os_log_type_enabled(loggingCategory15, OS_LOG_TYPE_ERROR))
          {
            sampleOriginKey5 = [v166 sampleOriginKey];
            v153 = *error;
            *buf = 138543874;
            *&buf[4] = selfCopy;
            *&buf[12] = 2114;
            *&buf[14] = sampleOriginKey5;
            *&buf[22] = 2114;
            v210 = v153;
            _os_log_error_impl(&dword_228986000, loggingCategory15, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set merged data for key: %{public}@, with error: %{public}@", buf, 0x20u);

            v38 = v174;
          }

          v36 = 0;
          configurationCopy = v178;
          v122 = v163;
        }

LABEL_133:
        v132 = v158;
LABEL_141:

LABEL_142:
LABEL_143:

LABEL_144:
        loggingCategory16 = v170;
        v25 = v171;
        loggingCategory = v172;
        goto LABEL_25;
      }

      if (v109)
      {
LABEL_105:
        v111 = [allValues2 mutableCopy];
        [v109 setDeletedSampleCollections:v111];

        goto LABEL_106;
      }
    }

    else if (!allValues2)
    {
      v109 = 0;
      goto LABEL_106;
    }

    v109 = objc_alloc_init(HDCodableStateSyncCollection);
    goto LABEL_105;
  }

  _HKInitializeLogging();
  loggingCategory16 = [configurationCopy loggingCategory];
  if (os_log_type_enabled(loggingCategory16, OS_LOG_TYPE_ERROR))
  {
    sampleOriginKey6 = [configurationCopy sampleOriginKey];
    v41 = *error;
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = sampleOriginKey6;
    *&buf[22] = 2114;
    v210 = v41;
    _os_log_error_impl(&dword_228986000, loggingCategory16, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch cloud data for key: %{public}@, with error: %{public}@", buf, 0x20u);
  }

  v36 = 0;
LABEL_28:

  return v36;
}

+ (uint64_t)_decodeCloudData:(objc_class *)data ofClass:(void *)class forKey:(void *)key dataVersion:(HDCodableSyncState *)version currentSyncVersion:(NSObject *)syncVersion configuration:(uint64_t *)configuration codableSyncState:codableCollection:error:
{
  v75 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  classCopy = class;
  v13 = a2;
  v14 = objc_opt_self();
  v15 = v13;
  v16 = classCopy;
  v17 = keyCopy;
  v18 = objc_opt_self();
  if (!v15)
  {
    v30 = 0;
    v31 = 1;
    goto LABEL_26;
  }

  v19 = v18;
  v20 = [[HDCodableSyncState alloc] initWithData:v15];
  v21 = v20;
  if (v20)
  {
    domain = [(HDCodableSyncState *)v20 domain];
    domain2 = [v17 domain];
    v24 = domain2;
    dataCopy = data;
    v64 = v14;
    if (domain == domain2)
    {
    }

    else
    {
      v62 = v19;
      domain3 = [v17 domain];
      if (!domain3)
      {

LABEL_15:
        v38 = MEMORY[0x277CCA9B8];
        v39 = [(HDCodableSyncState *)v21 key];
        domain4 = [v17 domain];
        [v38 hk_assignError:configuration code:129 format:{@"Deserialized domain %@ does not match expected value %@", v39, domain4}];

        v30 = 0;
        v31 = 0;
        data = dataCopy;
        v14 = v64;
        goto LABEL_25;
      }

      v26 = domain3;
      domain5 = [(HDCodableSyncState *)v21 domain];
      domain6 = [v17 domain];
      v29 = [domain5 isEqualToString:domain6];

      v19 = v62;
      if ((v29 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v34 = [(HDCodableSyncState *)v21 key];
    v35 = v34;
    if (v34 == v16)
    {

      data = dataCopy;
    }

    else
    {
      if (!v16)
      {

        data = dataCopy;
LABEL_23:
        v45 = MEMORY[0x277CCA9B8];
        v46 = [(HDCodableSyncState *)v21 key];
        domain7 = [v17 domain];
        [v45 hk_assignError:configuration code:129 format:{@"Deserialized key %@ does not match %@ for domain %@", v46, v16, domain7}];

        v30 = 0;
        v31 = 0;
LABEL_24:
        v14 = v64;
        goto LABEL_25;
      }

      v36 = [(HDCodableSyncState *)v21 key];
      v37 = [v36 isEqualToString:v16];

      data = dataCopy;
      if ((v37 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if ([(HDCodableSyncState *)v21 versionRange]< 2)
    {
      v44 = v21;
      v31 = 1;
      v30 = v21;
    }

    else
    {
      _HKInitializeLogging();
      loggingCategory = [v17 loggingCategory];
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        versionRange = [(HDCodableSyncState *)v21 versionRange];
        domain8 = [v17 domain];
        *buf = 138544386;
        v70 = v19;
        v71 = 1024;
        *v72 = versionRange;
        *&v72[4] = 2048;
        *&v72[6] = 1;
        *&v72[14] = 2114;
        *&v72[16] = domain8;
        v73 = 2114;
        v74 = v16;
        _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Codable state has minimum version %d but current version for OS is %ld for (%{public}@, %{public}@) ", buf, 0x30u);
      }

      v30 = 0;
      v31 = 2;
    }

    goto LABEL_24;
  }

  v32 = MEMORY[0x277CCA9B8];
  domain9 = [v17 domain];
  [v32 hk_assignError:configuration code:129 format:{@"Unable to decode state sync data for domain %@ key %@", domain9, v16}];

  v30 = 0;
  v31 = 0;
LABEL_25:

LABEL_26:
  v48 = v30;
  v49 = v48;
  if (v31 == 2)
  {
    _HKInitializeLogging();
    loggingCategory2 = [v17 loggingCategory];
    if (os_log_type_enabled(loggingCategory2, OS_LOG_TYPE_DEFAULT))
    {
      v53 = NSStringFromClass(data);
      *buf = 138543618;
      v70 = v14;
      v71 = 2114;
      *v72 = v53;
      _os_log_impl(&dword_228986000, loggingCategory2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Decode finished without error but could not decode sync state codable of class: %{public}@.", buf, 0x16u);
    }

    v54 = 1;
  }

  else
  {
    if (!v31)
    {
      _HKInitializeLogging();
      loggingCategory2 = [v17 loggingCategory];
      if (os_log_type_enabled(loggingCategory2, OS_LOG_TYPE_ERROR))
      {
        v51 = NSStringFromClass(data);
        v52 = *configuration;
        *buf = 138543874;
        v70 = v14;
        v71 = 2114;
        *v72 = v51;
        *&v72[8] = 2114;
        *&v72[10] = v52;
        _os_log_error_impl(&dword_228986000, loggingCategory2, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to decode cloud sync state codable of class: %{public}@, with error: %{public}@", buf, 0x20u);
      }

LABEL_38:
      v54 = 0;
      goto LABEL_45;
    }

    if (v48)
    {
      v68 = 0;
      v55 = [(HDCodableSyncState *)v48 decodedObjectOfClass:data version:1 decodedObject:&v68 error:configuration];
      loggingCategory2 = v68;
      if (!v55)
      {
        _HKInitializeLogging();
        loggingCategory3 = [v17 loggingCategory];
        if (os_log_type_enabled(loggingCategory3, OS_LOG_TYPE_ERROR))
        {
          v60 = NSStringFromClass(data);
          v61 = *configuration;
          *buf = 138543874;
          v70 = v14;
          v71 = 2114;
          *v72 = v60;
          *&v72[8] = 2114;
          *&v72[10] = v61;
          _os_log_error_impl(&dword_228986000, loggingCategory3, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to decode codable cloud collection of class: %{public}@, with error: %{public}@", buf, 0x20u);
        }

        goto LABEL_38;
      }
    }

    else
    {
      loggingCategory2 = 0;
    }

    if (version)
    {
      v57 = v49;
      *version = v49;
    }

    if (syncVersion)
    {
      v58 = loggingCategory2;
      *syncVersion = loggingCategory2;
    }

    v54 = 2;
  }

LABEL_45:

  return v54;
}

+ (BOOL)_fetchPersistedDeletedSamples:(uint64_t)samples withSampleUUIDs:(void *)ds profile:(void *)profile transaction:(void *)transaction timeWindow:(void *)window error:(uint64_t)error
{
  v28[4] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  windowCopy = window;
  objc_opt_self();
  if ([profileCopy count])
  {
    v12 = HDDataEntityPredicateForType(2);
    v13 = HDDataEntityPredicateForDataUUIDs(profileCopy);
    endDate = [windowCopy endDate];
    v15 = HDSampleEntityPredicateForStartDate(3, endDate);

    startDate = [windowCopy startDate];
    v17 = HDSampleEntityPredicateForEndDate(6, startDate);

    v26 = v12;
    v28[0] = v12;
    v28[1] = v13;
    v28[2] = v15;
    v28[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    v19 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v18];
    v20 = +[HDDataSyncUtilities generateCodableObjectCollectionsForEntityClass:predicate:profile:error:](HDDataSyncUtilities, "generateCodableObjectCollectionsForEntityClass:predicate:profile:error:", +[HDDataSyncUtilities deletedSampleEntityClass], v19, transactionCopy, error);
    v21 = v20;
    v22 = v20 != 0;
    if (v20)
    {
      v23 = [v20 count];
      if (ds)
      {
        if (v23)
        {
          v24 = v21;
          *ds = v21;
        }
      }
    }
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

+ (id)_healthObjectUUIDsFromMergedStateSyncCollection:(void *)collection configuration:
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  collectionCopy = collection;
  objc_opt_self();
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  sampleCollections = [v4 sampleCollections];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [sampleCollections countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(sampleCollections);
        }

        v12 = [collectionCopy sampleUUIDsFromCodableObjectCollection:*(*(&v14 + 1) + 8 * i)];
        [v6 addObjectsFromArray:v12];
      }

      v9 = [sampleCollections countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (HDCodableSyncState)_codableSyncStateFromExistingSyncState:(void *)state forDomain:(void *)domain key:
{
  v6 = a2;
  stateCopy = state;
  domainCopy = domain;
  objc_opt_self();
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = objc_alloc_init(HDCodableSyncState);
    [(HDCodableSyncState *)v9 setDomain:stateCopy];
    [(HDCodableSyncState *)v9 setKey:domainCopy];
  }

  return v9;
}

+ (BOOL)_generateSyncCodableDevices:(void *)devices fromCollectionByProvenance:(void *)provenance profile:(void *)profile transaction:(uint64_t)transaction error:
{
  v33 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  provenanceCopy = provenance;
  profileCopy = profile;
  objc_opt_self();
  v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(devicesCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = devicesCopy;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    while (2)
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        deviceID = [*(*(&v28 + 1) + 8 * v18) deviceID];
        if (!deviceID)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:transaction code:3 format:@"DataOriginProvenance's deviceID is unexpectedly nil."];
          v22 = 0;
          v24 = v14;
          goto LABEL_14;
        }

        v20 = deviceID;
        [v13 addObject:deviceID];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v21 = [MEMORY[0x277D10B28] containsPredicateWithProperty:*MEMORY[0x277D10A40] values:v13];
  v27 = 0;
  v22 = [HDSyncSampleOriginUtilities generateStateSyncCodableDevices:&v27 predicate:v21 profile:provenanceCopy transaction:profileCopy error:transaction];
  v23 = v27;
  v24 = v23;
  if (a2 && v22)
  {
    v25 = v23;
    *a2 = v24;
  }

LABEL_14:
  return v22;
}

+ (BOOL)_generateSyncCodableContributors:(void *)contributors fromCollectionByProvenance:(void *)provenance profile:(void *)profile transaction:(uint64_t)transaction error:
{
  transactionCopy = transaction;
  v37 = *MEMORY[0x277D85DE8];
  contributorsCopy = contributors;
  provenanceCopy = provenance;
  profileCopy = profile;
  v9 = objc_opt_self();
  v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(contributorsCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = contributorsCopy;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    v15 = MEMORY[0x277CCC328];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        contributorID = [*(*(&v30 + 1) + 8 * i) contributorID];
        if (contributorID)
        {
          [v10 addObject:contributorID];
        }

        else
        {
          _HKInitializeLogging();
          v18 = *v15;
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v35 = v9;
            _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Contributor persistentID is nil", buf, 0xCu);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v13);
  }

  v19 = [MEMORY[0x277D10B28] containsPredicateWithProperty:*MEMORY[0x277D10A40] values:v10];
  v29 = 0;
  v20 = [HDSyncSampleOriginUtilities generateStateSyncCodableContributors:&v29 predicate:v19 profile:provenanceCopy transaction:profileCopy error:transactionCopy];
  v21 = v29;
  v22 = v21;
  if (a2 && v20)
  {
    v23 = v21;
    *a2 = v22;
  }

  return v20;
}

@end