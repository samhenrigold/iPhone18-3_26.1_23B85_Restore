@interface HDSleepDaySummaryQueryServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
- (HDSleepDaySummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_newCachingSessionWithProfile:(id)profile cachingIdentifier:(id)identifier sourceEntity:(id)entity queryDescriptor:(id)descriptor cachedClass:(Class)class queryInterval:(id)interval anchorDate:(id)date intervalComponents:(id)self0 timeIntervalToBucketIndex:(id)self1;
- (id)_newGregorianCalendar;
- (id)objectTypes;
- (void)_queue_start;
@end

@implementation HDSleepDaySummaryQueryServer

- (HDSleepDaySummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDSleepDaySummaryQueryServer;
  v12 = [(HDQueryServer *)&v15 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, configuration);
  }

  return v13;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  clientCopy = client;
  entitlements = [clientCopy entitlements];
  v8 = *MEMORY[0x277CCC8B0];
  v9 = [entitlements hasEntitlement:*MEMORY[0x277CCC8B0]];

  if (v9 & 1) != 0 || ([clientCopy entitlements], v10 = objc_claimAutoreleasedReturnValue(), v11 = *MEMORY[0x277CCC8A0], v12 = objc_msgSend(v10, "hasPrivateAccessEntitlementWithIdentifier:", *MEMORY[0x277CCC8A0]), v10, (v12))
  {
    v13 = 1;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:4 format:{@"Missing required entitlement: %@ for core apps or %@ for second-party access.", v8, v11}];
    v13 = 0;
  }

  return v13;
}

- (id)objectTypes
{
  v2 = MEMORY[0x277CBEB98];
  v3 = HKSleepDaySummarySampleTypes();
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (void)_queue_start
{
  v146 = *MEMORY[0x277D85DE8];
  configuration = [(HDQueryServer *)self configuration];
  debugIdentifier = [configuration debugIdentifier];

  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2114;
    *&buf[14] = debugIdentifier;
    v6 = *&buf[4];
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Query Started", buf, 0x16u);
  }

  v118.receiver = self;
  v118.super_class = HDSleepDaySummaryQueryServer;
  [(HDQueryServer *)&v118 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  objectTypes = [(HDSleepDaySummaryQueryServer *)self objectTypes];
  v117 = 0;
  v112 = [authorizationOracle authorizationStatusRecordsForTypes:objectTypes error:&v117];
  v109 = v117;

  if (!v112)
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      v91 = v24;
      v92 = objc_opt_class();
      *buf = 138543874;
      *&buf[4] = v92;
      *&buf[12] = 2114;
      *&buf[14] = debugIdentifier;
      *&buf[22] = 2114;
      v138 = v109;
      v93 = v92;
      _os_log_error_impl(&dword_228986000, v91, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Unable to read authorization status due to error %{public}@", buf, 0x20u);
    }

    queryUUID = [(HDQueryServer *)self queryUUID];
    [remoteObjectProxy client_deliverError:v109 forQuery:queryUUID];
    goto LABEL_56;
  }

  client2 = [(HDQueryServer *)self client];
  authorizationOracle2 = [client2 authorizationOracle];
  clientHasAuthorizationForAllTypes = [authorizationOracle2 clientHasAuthorizationForAllTypes];

  if ((clientHasAuthorizationForAllTypes & 1) == 0)
  {
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    allValues = [v112 allValues];
    v15 = [allValues countByEnumeratingWithState:&v113 objects:v136 count:16];
    if (v15)
    {
      v16 = *v114;
      canRead = 1;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v114 != v16)
          {
            objc_enumerationMutation(allValues);
          }

          if (canRead)
          {
            canRead = [*(*(&v113 + 1) + 8 * i) canRead];
          }

          else
          {
            canRead = 0;
          }
        }

        v15 = [allValues countByEnumeratingWithState:&v113 objects:v136 count:16];
      }

      while (v15);

      if ((canRead & 1) == 0)
      {
        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC320];
        if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          v21 = objc_opt_class();
          *buf = 138543874;
          *&buf[4] = v21;
          *&buf[12] = 2114;
          *&buf[14] = debugIdentifier;
          *&buf[22] = 2114;
          v138 = v112;
          v22 = v21;
          _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Avoiding exposing health data due to missing authorization: %{public}@", buf, 0x20u);
        }

        queryUUID = [(HDQueryServer *)self queryUUID];
        [remoteObjectProxy client_deliverDaySummaries:MEMORY[0x277CBEBF8] clearPending:0 isFinalBatch:1 queryUUID:queryUUID];
LABEL_56:

        goto LABEL_57;
      }
    }

    else
    {
    }
  }

  spid = _HKLogSignpostIDGenerate();
  _HKInitializeLogging();
  v25 = *MEMORY[0x277CCC320];
  if (os_signpost_enabled(*MEMORY[0x277CCC320]))
  {
    v26 = v25;
    v27 = v26;
    if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 138543362;
      *&buf[4] = debugIdentifier;
      _os_signpost_emit_with_name_impl(&dword_228986000, v27, OS_SIGNPOST_INTERVAL_BEGIN, spid, "sleep-day-summary-query", "name=%{public}@", buf, 0xCu);
    }
  }

  if (self)
  {
    v130 = 0;
    v131 = &v130;
    v132 = 0x3032000000;
    v133 = __Block_byref_object_copy__23;
    v134 = __Block_byref_object_dispose__23;
    v135 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v126 = 0;
    v127 = &v126;
    v128 = 0x2020000000;
    v129 = 1;
    v122 = 0;
    v123 = &v122;
    v124 = 0x2020000000;
    v125 = 0;
    v121[0] = 0;
    v121[1] = v121;
    v121[2] = 0x2020000000;
    v121[3] = 0;
    limit = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration limit];
    _newGregorianCalendar = [(HDSleepDaySummaryQueryServer *)self _newGregorianCalendar];
    calendarOverrides = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration calendarOverrides];
    v29 = calendarOverrides == 0;

    if (!v29)
    {
      calendarOverrides2 = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration calendarOverrides];
      [_newGregorianCalendar setFirstWeekday:{objc_msgSend(calendarOverrides2, "firstWeekday")}];
    }

    clientProxy2 = [(HDQueryServer *)self clientProxy];
    remoteObjectProxy2 = [clientProxy2 remoteObjectProxy];

    profile = [(HDQueryServer *)self profile];
    sourceManager = [profile sourceManager];
    v120 = 0;
    v108 = [sourceManager localDeviceSourceWithError:&v120];
    v34 = v120;

    if (!v108)
    {
      queryUUID2 = [(HDQueryServer *)self queryUUID];
      [remoteObjectProxy2 client_deliverError:v34 forQuery:queryUUID2];
LABEL_49:

      _Block_object_dispose(v121, 8);
      _Block_object_dispose(&v122, 8);
      _Block_object_dispose(&v126, 8);
      _Block_object_dispose(&v130, 8);

      goto LABEL_50;
    }

    profile2 = [(HDQueryServer *)self profile];
    configuration = self->_configuration;
    v37 = profile2;
    v38 = configuration;
    v39 = v108;
    v40 = _newGregorianCalendar;
    debugIdentifier2 = [(HKSleepDaySummaryQueryConfiguration *)v38 debugIdentifier];
    daemon = [v37 daemon];
    behavior = [daemon behavior];
    supportsCachedSleepDaySummaryQueries = [behavior supportsCachedSleepDaySummaryQueries];

    if (supportsCachedSleepDaySummaryQueries)
    {
      cacheSettings = [(HKSleepDaySummaryQueryConfiguration *)v38 cacheSettings];
      v45 = cacheSettings == 0;

      if (v45)
      {
        _HKInitializeLogging();
        v57 = *MEMORY[0x277CCC320];
        if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
        {
          v94 = v57;
          v95 = objc_opt_class();
          *buf = 138543618;
          *&buf[4] = v95;
          *&buf[12] = 2114;
          *&buf[14] = debugIdentifier2;
          v96 = v95;
          _os_log_debug_impl(&dword_228986000, v94, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Query caching settings not provided; caching disabled", buf, 0x16u);
        }
      }

      else
      {
        cacheSettings2 = [(HKSleepDaySummaryQueryConfiguration *)v38 cacheSettings];
        v47 = [cacheSettings2 mode] == 1;

        if (!v47)
        {
          v81 = MEMORY[0x277CCA970];
          morningIndexRange = [(HKSleepDaySummaryQueryConfiguration *)v38 morningIndexRange];
          v100 = [v81 hk_sleepDayIntervalForMorningIndexRange:morningIndexRange calendar:{v83, v40}];
          v101 = objc_alloc_init(MEMORY[0x277CBEAB8]);
          [v101 setDay:1];
          cacheIdentifier = [(HKSleepDaySummaryQueryConfiguration *)v38 cacheIdentifier];
          _HKInitializeLogging();
          v84 = *MEMORY[0x277CCC320];
          if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
          {
            v85 = v84;
            v86 = objc_opt_class();
            *buf = 138543874;
            *&buf[4] = v86;
            *&buf[12] = 2114;
            *&buf[14] = debugIdentifier2;
            *&buf[22] = 2114;
            v138 = cacheIdentifier;
            v87 = v86;
            _os_log_impl(&dword_228986000, v85, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Creating caching session with ID: %{public}@", buf, 0x20u);
          }

          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __118__HDSleepDaySummaryQueryServer__newCachingSessionWithProfile_configuration_localDeviceSource_gregorianCalendar_error___block_invoke;
          v138 = &unk_2786163E8;
          selfCopy = v40;
          v98 = _Block_copy(buf);
          v97 = [HDSleepDaySummaryEnumerator sleepAnalysisQueryDescriptorForDateInterval:0 options:[(HKSleepDaySummaryQueryConfiguration *)v38 options]];
          v88 = objc_opt_class();
          startDate = [v100 startDate];
          v104 = [(HDSleepDaySummaryQueryServer *)self _newCachingSessionWithProfile:v37 cachingIdentifier:cacheIdentifier sourceEntity:v39 queryDescriptor:v97 cachedClass:v88 queryInterval:v100 anchorDate:startDate intervalComponents:v101 timeIntervalToBucketIndex:v98];

          v90 = [HDSleepDaySummaryEnumerator sleepTypesQueryDescriptorsForDateInterval:0 options:[(HKSleepDaySummaryQueryConfiguration *)v38 options]];
          [v104 setInvalidationQueryDescriptors:v90];

          goto LABEL_43;
        }

        _HKInitializeLogging();
        v48 = *MEMORY[0x277CCC320];
        if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
        {
          v49 = v48;
          v50 = objc_opt_class();
          *buf = 138543618;
          *&buf[4] = v50;
          *&buf[12] = 2114;
          *&buf[14] = debugIdentifier2;
          v51 = v50;
          _os_log_debug_impl(&dword_228986000, v49, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Query caching settings specified user interactive mode; caching disabled", buf, 0x16u);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v53 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
      {
        v54 = v53;
        v55 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v55;
        *&buf[12] = 2114;
        *&buf[14] = debugIdentifier2;
        v56 = v55;
        _os_log_debug_impl(&dword_228986000, v54, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Query caching feature flag not enabled; caching disabled", buf, 0x16u);
      }
    }

    v104 = 0;
LABEL_43:

    v58 = v34;
    v59 = v40;
    v60 = [HDSleepDaySummaryEnumerator alloc];
    profile3 = [(HDQueryServer *)self profile];
    morningIndexRange2 = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration morningIndexRange];
    v64 = v63;
    ascending = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration ascending];
    options = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration options];
    debugIdentifier3 = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration debugIdentifier];
    v68 = [(HDSleepDaySummaryEnumerator *)v60 initWithProfile:profile3 cachingSession:v104 gregorianCalendar:v59 morningIndexRange:morningIndexRange2 ascending:v64 options:ascending debugIdentifier:options, debugIdentifier3];

    v119 = v58;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __58__HDSleepDaySummaryQueryServer__queue_surfaceDaySummaries__block_invoke;
    v138 = &unk_2786163C0;
    selfCopy = self;
    v141 = &v122;
    v142 = &v130;
    v69 = remoteObjectProxy2;
    v140 = v69;
    v143 = &v126;
    v144 = v121;
    v145 = limit;
    v70 = [(HDSleepDaySummaryEnumerator *)v68 enumerateWithError:&v119 handler:buf];
    v71 = v119;

    if ((v123[3] & 1) == 0)
    {
      if (v70)
      {
        v72 = v131[5];
        v73 = *(v127 + 24);
        queryUUID3 = [(HDQueryServer *)self queryUUID];
        [v69 client_deliverDaySummaries:v72 clearPending:v73 isFinalBatch:1 queryUUID:queryUUID3];
      }

      else
      {
        queryUUID3 = [(HDQueryServer *)self queryUUID];
        [v69 client_deliverError:v71 forQuery:queryUUID3];
      }
    }

    v34 = v71;
    queryUUID2 = v104;
    goto LABEL_49;
  }

LABEL_50:
  _HKInitializeLogging();
  v75 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v76 = v75;
    v77 = objc_opt_class();
    *buf = 138543618;
    *&buf[4] = v77;
    *&buf[12] = 2114;
    *&buf[14] = debugIdentifier;
    v78 = v77;
    _os_log_impl(&dword_228986000, v76, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Query complete", buf, 0x16u);
  }

  _HKInitializeLogging();
  v79 = *MEMORY[0x277CCC320];
  if (os_signpost_enabled(*MEMORY[0x277CCC320]))
  {
    v80 = v79;
    queryUUID = v80;
    if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
    {
      *buf = 138543362;
      *&buf[4] = debugIdentifier;
      _os_signpost_emit_with_name_impl(&dword_228986000, queryUUID, OS_SIGNPOST_INTERVAL_END, spid, "sleep-day-summary-query", "name=%{public}@", buf, 0xCu);
    }

    goto LABEL_56;
  }

LABEL_57:
}

void __58__HDSleepDaySummaryQueryServer__queue_surfaceDaySummaries__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = a2;
  if (([*(a1 + 32) _shouldStopProcessingQuery] & 1) != 0 || objc_msgSend(*(a1 + 32), "_shouldSuspendQuery"))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_4:
    *a3 = 1;
    goto LABEL_5;
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count] >= 0x190)
  {
    v5 = *(*(*(a1 + 56) + 8) + 40);
    v6 = *(*(*(a1 + 64) + 8) + 24);
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) queryUUID];
    [v7 client_deliverDaySummaries:v5 clearPending:v6 isFinalBatch:0 queryUUID:v8];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  [*(*(*(a1 + 56) + 8) + 40) addObject:v13];
  ++*(*(*(a1 + 72) + 8) + 24);
  v12 = *(a1 + 80);
  if (v12 && *(*(*(a1 + 72) + 8) + 24) >= v12)
  {
    goto LABEL_4;
  }

LABEL_5:
}

uint64_t __118__HDSleepDaySummaryQueryServer__newCachingSessionWithProfile_configuration_localDeviceSource_gregorianCalendar_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  v3 = [v2 hk_morningIndexWithCalendar:*(a1 + 32)];

  return v3;
}

- (id)_newCachingSessionWithProfile:(id)profile cachingIdentifier:(id)identifier sourceEntity:(id)entity queryDescriptor:(id)descriptor cachedClass:(Class)class queryInterval:(id)interval anchorDate:(id)date intervalComponents:(id)self0 timeIntervalToBucketIndex:(id)self1
{
  indexCopy = index;
  componentsCopy = components;
  intervalCopy = interval;
  descriptorCopy = descriptor;
  entityCopy = entity;
  identifierCopy = identifier;
  profileCopy = profile;
  v24 = [HDSampleAggregateCachingSession alloc];
  startDate = [intervalCopy startDate];
  v26 = [(HDSampleAggregateCachingSession *)v24 initWithProfile:profileCopy cachingIdentifier:identifierCopy sourceEntity:entityCopy queryDescriptor:descriptorCopy cachedClass:class queryInterval:intervalCopy anchorDate:startDate intervalComponents:componentsCopy timeIntervalToBucketIndex:indexCopy];

  return v26;
}

- (id)_newGregorianCalendar
{
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
  [hk_gregorianCalendar setTimeZone:defaultTimeZone];

  return hk_gregorianCalendar;
}

@end