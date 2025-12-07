@interface _CDContextualLocationRegistrationMonitor
- (_CDContextualLocationRegistrationMonitor)init;
- (id)regionInfosForRegistration:(id)registration;
- (void)addRegistration:(id)registration;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region;
- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region;
- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error;
- (void)removeRegistration:(id)registration;
@end

@implementation _CDContextualLocationRegistrationMonitor

- (_CDContextualLocationRegistrationMonitor)init
{
  v15.receiver = self;
  v15.super_class = _CDContextualLocationRegistrationMonitor;
  v2 = [(_CDContextualLocationRegistrationMonitor *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ContextStore.location-monitor-queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    registrations = v2->_registrations;
    v2->_registrations = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    managers = v2->_managers;
    v2->_managers = v8;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    effectiveBundleIDs = v2->_effectiveBundleIDs;
    v2->_effectiveBundleIDs = weakToStrongObjectsMapTable;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    effectiveBundleIDRegionInfos = v2->_effectiveBundleIDRegionInfos;
    v2->_effectiveBundleIDRegionInfos = v12;
  }

  return v2;
}

- (void)addRegistration:(id)registration
{
  registrationCopy = registration;
  queue = [(_CDContextualLocationRegistrationMonitor *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60___CDContextualLocationRegistrationMonitor_addRegistration___block_invoke;
  v7[3] = &unk_1E7886250;
  v8 = registrationCopy;
  selfCopy = self;
  v6 = registrationCopy;
  dispatch_sync(queue, v7);
}

- (void)removeRegistration:(id)registration
{
  registrationCopy = registration;
  queue = [(_CDContextualLocationRegistrationMonitor *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___CDContextualLocationRegistrationMonitor_removeRegistration___block_invoke;
  v7[3] = &unk_1E7886250;
  v7[4] = self;
  v8 = registrationCopy;
  v6 = registrationCopy;
  dispatch_sync(queue, v7);
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  v4 = *&status;
  v16 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  queue = [(_CDContextualLocationRegistrationMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  effectiveBundleIDs = [(_CDContextualLocationRegistrationMonitor *)self effectiveBundleIDs];
  v9 = [effectiveBundleIDs objectForKey:managerCopy];

  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_INFO))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_INFO, "Authorization for %@ changed to %@", &v12, 0x16u);
  }
}

- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region
{
  regionCopy = region;
  managerCopy = manager;
  queue = [(_CDContextualLocationRegistrationMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  effectiveBundleIDs = [(_CDContextualLocationRegistrationMonitor *)self effectiveBundleIDs];
  v10 = [effectiveBundleIDs objectForKey:managerCopy];

  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEBUG))
  {
    [(_CDContextualLocationRegistrationMonitor *)regionCopy locationManager:v10 didStartMonitoringForRegion:contextChannel];
  }
}

- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  errorCopy = error;
  managerCopy = manager;
  queue = [(_CDContextualLocationRegistrationMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  effectiveBundleIDs = [(_CDContextualLocationRegistrationMonitor *)self effectiveBundleIDs];
  v13 = [effectiveBundleIDs objectForKey:managerCopy];

  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
  {
    identifier = [regionCopy identifier];
    v16 = 138412802;
    v17 = identifier;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_error_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_ERROR, "Failed monitoring region %@ for %@: %@", &v16, 0x20u);
  }
}

- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region
{
  v107 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  regionCopy = region;
  queue = [(_CDContextualLocationRegistrationMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  date = [MEMORY[0x1E695DF00] date];
  identifier = [regionCopy identifier];
  if (identifier)
  {
    v75 = identifier;
    v76 = date;
    v74 = regionCopy;
    v77 = managerCopy;
    v13 = _os_activity_create(&dword_1A9611000, "CoreDuet: ContextStore Region State Change", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *state = 0;
    *&state[8] = 0;
    os_activity_scope_enter(v13, state);
    os_activity_scope_leave(state);

    selfCopy = self;
    v82 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    registrations = [(_CDContextualLocationRegistrationMonitor *)self registrations];
    v15 = [registrations countByEnumeratingWithState:&v91 objects:v106 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v92;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v92 != v17)
          {
            objc_enumerationMutation(registrations);
          }

          v19 = *(*(&v91 + 1) + 8 * i);
          v20 = [(_CDContextualLocationRegistrationMonitor *)selfCopy regionInfosForRegistration:v19];
          if ([v20 count])
          {
            identifier2 = [v19 identifier];
            [v82 setObject:v20 forKeyedSubscript:identifier2];
          }

          else
          {
            identifier2 = objc_alloc_init(MEMORY[0x1E695DEC8]);
            identifier3 = [v19 identifier];
            [v82 setObject:identifier2 forKeyedSubscript:identifier3];
          }
        }

        v16 = [registrations countByEnumeratingWithState:&v91 objects:v106 count:16];
      }

      while (v16);
    }

    v80 = [v82 copy];
    effectiveBundleIDs = [(_CDContextualLocationRegistrationMonitor *)selfCopy effectiveBundleIDs];
    v24 = [effectiveBundleIDs objectForKey:v77];

    contextChannel = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_INFO))
    {
      identifier4 = [v74 identifier];
      v27 = [MEMORY[0x1E696AD98] numberWithInteger:state];
      *state = 138412802;
      *&state[4] = identifier4;
      *&state[12] = 2112;
      *&state[14] = v27;
      v98 = 2112;
      v99 = v24;
      _os_log_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_INFO, "Region state for region %@ changed to %@ on behalf of %@", state, 0x20u);
    }

    effectiveBundleIDRegionInfos = [(_CDContextualLocationRegistrationMonitor *)selfCopy effectiveBundleIDRegionInfos];
    v29 = [effectiveBundleIDRegionInfos objectForKeyedSubscript:v24];
    v30 = [v29 mutableCopy];

    if (!v30)
    {
      v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    }

    v31 = +[_CDContextQueries regionIdentifierKey];
    v104[0] = v31;
    v105[0] = v75;
    v32 = +[_CDContextQueries regionStateKey];
    v104[1] = v32;
    v33 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    v105[1] = v33;
    v34 = +[_CDContextQueries changeDateKey];
    v104[2] = v34;
    v105[2] = v76;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:3];

    v71 = v35;
    [v30 setObject:v35 forKeyedSubscript:v75];
    v36 = [v30 copy];
    effectiveBundleIDRegionInfos2 = [(_CDContextualLocationRegistrationMonitor *)selfCopy effectiveBundleIDRegionInfos];
    v70 = v36;
    [effectiveBundleIDRegionInfos2 setObject:v36 forKeyedSubscript:v24];

    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    registrations2 = [(_CDContextualLocationRegistrationMonitor *)selfCopy registrations];
    v40 = [registrations2 countByEnumeratingWithState:&v87 objects:v103 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v88;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v88 != v42)
          {
            objc_enumerationMutation(registrations2);
          }

          v44 = *(*(&v87 + 1) + 8 * j);
          v45 = [(_CDContextualLocationRegistrationMonitor *)selfCopy regionInfosForRegistration:v44];
          if ([v45 count])
          {
            identifier5 = [v44 identifier];
            [v38 setObject:v45 forKeyedSubscript:identifier5];
          }
        }

        v41 = [registrations2 countByEnumeratingWithState:&v87 objects:v103 count:16];
      }

      while (v41);
    }

    v72 = v30;
    v73 = v24;

    v69 = v38;
    v47 = [v38 copy];
    v79 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v48 = v47;
    v49 = [v48 countByEnumeratingWithState:&v83 objects:v102 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v84;
      v52 = MEMORY[0x1E695E0F0];
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v84 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v54 = *(*(&v83 + 1) + 8 * k);
          v55 = objc_alloc(MEMORY[0x1E695DFD8]);
          v56 = [v80 objectForKeyedSubscript:v54];
          v57 = v56;
          if (v56)
          {
            v58 = v56;
          }

          else
          {
            v58 = v52;
          }

          v59 = [v55 initWithArray:v58];

          v60 = objc_alloc(MEMORY[0x1E695DFD8]);
          v61 = [v48 objectForKeyedSubscript:v54];
          v62 = v61;
          if (v61)
          {
            v63 = v61;
          }

          else
          {
            v63 = v52;
          }

          v64 = [v60 initWithArray:v63];

          if (([v59 isEqualToSet:v64] & 1) == 0)
          {
            contextChannel2 = [MEMORY[0x1E6997908] contextChannel];
            if (os_log_type_enabled(contextChannel2, OS_LOG_TYPE_DEBUG))
            {
              v78 = +[_CDContextQueries keyPathForCircularLocationRegions];
              *state = 138413058;
              *&state[4] = v54;
              *&state[12] = 2112;
              *&state[14] = v78;
              v98 = 2112;
              v99 = v59;
              v100 = 2112;
              v101 = v64;
              _os_log_debug_impl(&dword_1A9611000, contextChannel2, OS_LOG_TYPE_DEBUG, "Registration %@ had %@ values change from %@ to %@", state, 0x2Au);
            }

            [v79 addObject:v54];
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v83 objects:v102 count:16];
      }

      while (v50);
    }

    date = v76;
    if ([v79 count])
    {
      v66 = [v80 dictionaryWithValuesForKeys:v79];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v95[0] = @"previousRegistrationRegionInfos";
      v95[1] = @"regionStateChangeDate";
      v96[0] = v66;
      v96[1] = v76;
      v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:2];
      [defaultCenter postNotificationName:@"_CDCircularRegionsForRegistrationDidChangeNotification" object:selfCopy userInfo:v68];
    }

    managerCopy = v77;
    regionCopy = v74;
    identifier = v75;
  }
}

- (id)regionInfosForRegistration:(id)registration
{
  v27 = *MEMORY[0x1E69E9840];
  registrationCopy = registration;
  effectiveBundleIDRegionInfos = [(_CDContextualLocationRegistrationMonitor *)self effectiveBundleIDRegionInfos];
  v6 = [effectiveBundleIDRegionInfos copy];

  locationManagerEffectiveBundleID = [registrationCopy locationManagerEffectiveBundleID];
  v8 = [v6 objectForKeyedSubscript:locationManagerEffectiveBundleID];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  predicate = [registrationCopy predicate];
  circularLocationRegions = [predicate circularLocationRegions];
  v12 = NSStringFromSelector(sel_identifier);
  v13 = [circularLocationRegions valueForKey:v12];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [v8 objectForKeyedSubscript:{*(*(&v22 + 1) + 8 * i), v22}];
        if (v19)
        {
          [v9 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = [v9 copy];

  return v20;
}

- (void)locationManager:(NSObject *)a3 didStartMonitoringForRegion:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 identifier];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_1A9611000, a3, OS_LOG_TYPE_DEBUG, "Start monitoring for region %@ on behalf of %@", &v6, 0x16u);
}

@end