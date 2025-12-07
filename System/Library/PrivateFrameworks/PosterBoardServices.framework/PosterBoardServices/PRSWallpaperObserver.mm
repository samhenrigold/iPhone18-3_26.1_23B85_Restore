@interface PRSWallpaperObserver
- (PRSWallpaperObserver)init;
- (PRSWallpaperObserver)initWithExplanation:(id)explanation;
- (void)_lock_invalidate;
- (void)activateWithConfiguration:(id)configuration;
- (void)dealloc;
- (void)invalidate;
- (void)notifyInitialUpdatesComplete;
- (void)notifyRoleActivePosterUpdates:(id)updates;
- (void)notifyRolePosterCollectionUpdates:(id)updates;
- (void)notifySnapshotUpdates:(id)updates;
- (void)notifyWallpaperUpdates:(id)updates;
@end

@implementation PRSWallpaperObserver

- (PRSWallpaperObserver)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@ is not allowed on %@", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = @"PRSWallpaperObserver.m";
    v21 = 1024;
    v22 = 201;
    v23 = 2114;
    v24 = v8;
    _os_log_error_impl(&dword_1C26FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (PRSWallpaperObserver)initWithExplanation:(id)explanation
{
  explanationCopy = explanation;
  if (!explanationCopy)
  {
    [PRSWallpaperObserver initWithExplanation:a2];
  }

  v6 = explanationCopy;
  v17.receiver = self;
  v17.super_class = PRSWallpaperObserver;
  v7 = [(PRSWallpaperObserver *)&v17 init];
  if (v7)
  {
    v8 = [v6 copy];
    explanation = v7->_explanation;
    v7->_explanation = v8;

    v7->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    conn_configurationByIdentity = v7->_conn_configurationByIdentity;
    v7->_conn_configurationByIdentity = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    conn_roleToActivePosterConfiguration = v7->_conn_roleToActivePosterConfiguration;
    v7->_conn_roleToActivePosterConfiguration = dictionary2;

    v14 = objc_opt_new();
    conn_posterUUIDToSuggestions = v7->_conn_posterUUIDToSuggestions;
    v7->_conn_posterUUIDToSuggestions = v14;
  }

  return v7;
}

- (void)dealloc
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@:%@:%p> must be invalidated before dealloc", v6, *(self + 8), self];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_8(&dword_1C26FF000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_lock_invalidate
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_lock_invalidated)
  {
    self->_lock_invalidated = 1;
    [(BSServiceConnectionClient *)self->_lock_connection invalidate];
    lock_pathHandler = self->_lock_pathHandler;
    self->_lock_pathHandler = 0;

    lock_snapshotHandler = self->_lock_snapshotHandler;
    self->_lock_snapshotHandler = 0;

    [(RBSAssertion *)self->_lock_initialUpdateAssertion invalidate];
    lock_initialUpdateAssertion = self->_lock_initialUpdateAssertion;
    self->_lock_initialUpdateAssertion = 0;
  }
}

- (void)activateWithConfiguration:(id)configuration
{
  v96[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  NSClassFromString(&cfstr_Prswallpaperob_0.isa);
  if (!configurationCopy)
  {
    [PRSWallpaperObserver activateWithConfiguration:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSWallpaperObserver activateWithConfiguration:a2];
  }

  if (([configurationCopy isValid] & 1) == 0)
  {
    [(PRSWallpaperObserver *)self activateWithConfiguration:a2];
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_clientInvalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    v54 = MEMORY[0x1E696AEC0];
    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    v57 = [v54 stringWithFormat:@"<%@:%@:%p> cannot be activated after invalidation", v56, self->_explanation, self];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [PRSWallpaperObserver activateWithConfiguration:];
    }

    v58 = v57;
    [v57 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1C2719DC4);
  }

  if (self->_lock_clientActivated)
  {
    [(PRSWallpaperObserver *)self _lock_invalidate];
    os_unfair_lock_unlock(&self->_lock);
    v59 = MEMORY[0x1E696AEC0];
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    v62 = [v59 stringWithFormat:@"<%@:%@:%p> cannot be activated twice", v61, self->_explanation, self];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [PRSWallpaperObserver activateWithConfiguration:];
    }

    v63 = v62;
    [v62 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1C2719E58);
  }

  locationStateObserver = [configurationCopy locationStateObserver];

  snapshotObserver = [configurationCopy snapshotObserver];
  v75 = snapshotObserver != 0;

  activePosterRoleObserver = [configurationCopy activePosterRoleObserver];

  postersCollectionRoleObserver = [configurationCopy postersCollectionRoleObserver];

  if (locationStateObserver)
  {
    locationStateObserver2 = [configurationCopy locationStateObserver];
    self->_observed = [locationStateObserver2 locations];

    v12 = PRSWallpaperObserverLocationsDescription(self->_observed);
    active_observedDescription = self->_active_observedDescription;
    self->_active_observedDescription = v12;

    locationStateObserver3 = [configurationCopy locationStateObserver];
    handler = [locationStateObserver3 handler];
    lock_pathHandler = self->_lock_pathHandler;
    self->_lock_pathHandler = handler;

    if ((self->_observed & 0xF) == 0 || !self->_lock_pathHandler)
    {
      [(PRSWallpaperObserver *)self _lock_invalidate];
      os_unfair_lock_unlock(&self->_lock);
      v50 = MEMORY[0x1E696AEC0];
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      v53 = [v50 stringWithFormat:@"<%@:%@:%p> activated location state observer without observing anything", v52, self->_explanation, self];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [PRSWallpaperObserver activateWithConfiguration:];
      }

LABEL_47:
      v72 = v53;
      [v53 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1C2719D38);
    }
  }

  if (snapshotObserver)
  {
    snapshotObserver2 = [configurationCopy snapshotObserver];
    handler2 = [snapshotObserver2 handler];
    lock_snapshotHandler = self->_lock_snapshotHandler;
    self->_lock_snapshotHandler = handler2;

    if (!self->_lock_snapshotHandler)
    {
      [(PRSWallpaperObserver *)self _lock_invalidate];
      os_unfair_lock_unlock(&self->_lock);
      v64 = MEMORY[0x1E696AEC0];
      v65 = objc_opt_class();
      v66 = NSStringFromClass(v65);
      v67 = [v64 stringWithFormat:@"<%@:%@:%p> activated snapshot observer without observing anything", v66, self->_explanation, self];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [PRSWallpaperObserver activateWithConfiguration:];
      }

      v68 = v67;
      [v67 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1C2719EF0);
    }
  }

  if (activePosterRoleObserver)
  {
    activePosterRoleObserver2 = [configurationCopy activePosterRoleObserver];
    lock_roleActivePosterObserver = self->_lock_roleActivePosterObserver;
    self->_lock_roleActivePosterObserver = activePosterRoleObserver2;

    roles = [(PRSPosterRoleActivePosterObserver *)self->_lock_roleActivePosterObserver roles];
    v23 = [roles copy];
    conn_activePosterRoles = self->_conn_activePosterRoles;
    self->_conn_activePosterRoles = v23;
  }

  if (postersCollectionRoleObserver)
  {
    postersCollectionRoleObserver2 = [configurationCopy postersCollectionRoleObserver];
    lock_rolePosterCollectionObserver = self->_lock_rolePosterCollectionObserver;
    self->_lock_rolePosterCollectionObserver = postersCollectionRoleObserver2;

    role = [(PRSPosterRoleCollectionObserver *)self->_lock_rolePosterCollectionObserver role];
    conn_knownPostersCollectionRole = self->_conn_knownPostersCollectionRole;
    self->_conn_knownPostersCollectionRole = role;

    goto LABEL_18;
  }

  if (!snapshotObserver && !locationStateObserver && !activePosterRoleObserver)
  {
    [(PRSWallpaperObserver *)self _lock_invalidate];
    os_unfair_lock_unlock(&self->_lock);
    v69 = MEMORY[0x1E696AEC0];
    v70 = objc_opt_class();
    v71 = NSStringFromClass(v70);
    v53 = [v69 stringWithFormat:@"<%@:%@:%p> activated without observing anything", v71, self->_explanation, self];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [PRSWallpaperObserver activateWithConfiguration:];
    }

    goto LABEL_47;
  }

LABEL_18:
  self->_lock_clientActivated = 1;
  if (!self->_lock_invalidated)
  {
    v77 = PRSWallpaperObserverInterface(v10);
    v29 = MEMORY[0x1E698F498];
    identifier = [v77 identifier];
    v76 = [v29 endpointForMachName:@"com.apple.posterboardservices.services" service:identifier instance:0];

    if (v76)
    {
      objc_initWeak(&location, self);
      v32 = objc_opt_class();
      v74 = NSStringFromClass(v32);
      v73 = self->_explanation;
      v33 = self->_active_observedDescription;
      v34 = MEMORY[0x1E698F490];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke;
      v89[3] = &unk_1E818D210;
      v89[4] = self;
      v91 = v75;
      v92 = activePosterRoleObserver != 0;
      v93 = postersCollectionRoleObserver != 0;
      v94 = locationStateObserver != 0;
      v35 = configurationCopy;
      v90 = v35;
      v36 = [v34 connectionWithEndpoint:v76 clientContextBuilder:v89];
      lock_connection = self->_lock_connection;
      self->_lock_connection = v36;

      v38 = self->_lock_connection;
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_2;
      v78[3] = &unk_1E818D2B0;
      v79 = v35;
      v80 = v77;
      selfCopy = self;
      objc_copyWeak(&v85, &location);
      v86 = locationStateObserver != 0;
      v87 = activePosterRoleObserver != 0;
      v88 = postersCollectionRoleObserver != 0;
      v39 = v74;
      v82 = v39;
      v40 = v73;
      v83 = v40;
      v41 = v33;
      v84 = v41;
      [(BSServiceConnectionClient *)v38 configureConnection:v78];
      if (locationStateObserver || activePosterRoleObserver || postersCollectionRoleObserver)
      {
        v42 = objc_alloc(MEMORY[0x1E69C7548]);
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"initializing PRSWallpaperObserver-%@", self->_explanation];
        remoteAssertionTarget = [(BSServiceConnectionClient *)self->_lock_connection remoteAssertionTarget];
        v45 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
        v96[0] = v45;
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:1];
        v47 = [v42 initWithExplanation:v43 target:remoteAssertionTarget attributes:v46];
        lock_initialUpdateAssertion = self->_lock_initialUpdateAssertion;
        self->_lock_initialUpdateAssertion = v47;

        [(RBSAssertion *)self->_lock_initialUpdateAssertion acquireWithInvalidationHandler:0];
      }

      [(BSServiceConnectionClient *)self->_lock_connection activate];

      objc_destroyWeak(&v85);
      objc_destroyWeak(&location);
    }

    else
    {
      v49 = PRSLogObserver(v31);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [(PRSWallpaperObserver *)self activateWithConfiguration:v49];
      }

      [(PRSWallpaperObserver *)self _lock_invalidate];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 encodeObject:*(*(a1 + 32) + 8) forKey:@"explanation"];
  [v6 encodeUInt64:*(*(a1 + 32) + 56) forKey:@"observedLocations"];
  [v6 encodeBool:*(a1 + 48) forKey:@"snapshotObservation"];
  [v6 encodeBool:*(a1 + 49) forKey:@"roleObservation"];
  if (*(a1 + 49) == 1)
  {
    v3 = [*(*(a1 + 32) + 40) roles];
    [v6 encodeCollection:v3 forKey:@"observedRoles"];

    [v6 encodeBool:objc_msgSend(*(*(a1 + 32) + 40) forKey:{"needsSandboxExtensions"), @"observedRolesNeedSandboxExtensions"}];
  }

  [v6 encodeBool:*(a1 + 50) forKey:@"collectionObserving"];
  if (*(a1 + 50) == 1)
  {
    v4 = [*(*(a1 + 32) + 48) role];
    [v6 encodeObject:v4 forKey:@"collectionObservingRole"];

    [v6 encodeBool:objc_msgSend(*(*(a1 + 32) + 48) forKey:{"needsSandboxExtensions"), @"collectionObservingNeedsSandboxExtensions"}];
  }

  if (*(a1 + 51) == 1)
  {
    v5 = [*(a1 + 40) locationStateObserver];
    [v6 encodeBool:objc_msgSend(v5 forKey:{"needsSandboxExtensions"), @"needsSandboxExtensions"}];
  }
}

void __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSDefaultServiceQuality();
  [v3 setServiceQuality:v4];

  [v3 setTargetQueue:*(*(a1 + 32) + 8)];
  [v3 setInterface:*(a1 + 40)];
  [v3 setInterfaceTarget:*(a1 + 48)];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_3;
  v15[3] = &unk_1E818D238;
  objc_copyWeak(&v19, (a1 + 80));
  v20 = *(a1 + 88);
  v21 = *(a1 + 89);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  [v3 setActivationHandler:v15];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_174;
  v10[3] = &unk_1E818D260;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  objc_copyWeak(&v14, (a1 + 80));
  v13 = *(a1 + 72);
  [v3 setInterruptionHandler:v10];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_175;
  v5[3] = &unk_1E818D288;
  objc_copyWeak(&v9, (a1 + 80));
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  [v3 setInvalidationHandler:v5];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&v19);
}

void __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = [v3 remoteTarget];
    v6 = v5;
    if (v5)
    {
      if (*(a1 + 64) == 1)
      {
        v58 = v5;
        v60 = v3;
        v7 = 0;
        v8 = WeakRetained + 80;
        v9 = 4;
        v10 = WeakRetained + 80;
        do
        {
          if (*v10)
          {
            if (!v7)
            {
              v7 = [MEMORY[0x1E695DFA8] setWithCapacity:v9];
            }

            [v7 addObject:?];
          }

          ++v10;
          --v9;
        }

        while (v9);
        v56 = a1;
        v64 = WeakRetained;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v11 = v7;
        v12 = [v11 countByEnumeratingWithState:&v70 objects:v85 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v71;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v71 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = *(*(&v70 + 1) + 8 * i);
              v18 = objc_alloc_init(PRSWallpaperObserverPathUpdate);
              [(PRSWallpaperObserverPathUpdate *)v18 setIdentity:v17];
              v19 = 0;
              v20 = 0;
              do
              {
                if ([v17 isEqual:*&v8[8 * v19]])
                {
                  v20 |= PRSWallpaperObserverLocationsFromIndex(v19);
                }

                ++v19;
              }

              while (v19 != 4);
              [(PRSWallpaperObserverPathUpdate *)v18 setLocations:v20];
              if (!v14)
              {
                v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
              }

              [(PRSPosterRoleCollectionObserverUpdate *)v14 addObject:v18];
            }

            v13 = [v11 countByEnumeratingWithState:&v70 objects:v85 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        v6 = v58;
        v3 = v60;
        WeakRetained = v64;
        a1 = v56;
      }

      else
      {
        v14 = 0;
      }

      if (*(a1 + 65) == 1)
      {
        v65 = objc_opt_new();
        v5 = [*(WeakRetained + 19) count];
        if (v5)
        {
          v55 = v14;
          v57 = a1;
          v59 = v6;
          v61 = v3;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          obj = *(WeakRetained + 19);
          v21 = [obj countByEnumeratingWithState:&v66 objects:v84 count:16];
          if (v21)
          {
            v22 = v21;
            v63 = *v67;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v67 != v63)
                {
                  objc_enumerationMutation(obj);
                }

                v24 = *(*(&v66 + 1) + 8 * j);
                v25 = [*(WeakRetained + 17) objectForKeyedSubscript:v24];
                v26 = [v25 _path];
                v27 = [v26 serverIdentity];
                v28 = [v27 posterUUID];

                v29 = [*(WeakRetained + 18) objectForKey:v28];
                __PFServerPosterPathFromPFPosterContents();
                v31 = v30 = WeakRetained;
                v32 = [v29 bs_mapNoNulls:v31];

                WeakRetained = v30;
                v33 = [[PRSRoleActivePosterObserverUpdate alloc] initWithRole:v24 activePath:v26 suggestionDescriptors:v32];
                [(PRSPosterRoleCollectionObserverUpdate *)v65 addObject:v33];
              }

              v22 = [obj countByEnumeratingWithState:&v66 objects:v84 count:16];
            }

            while (v22);
          }

          v6 = v59;
          v3 = v61;
          v14 = v55;
          a1 = v57;
        }
      }

      else
      {
        v65 = 0;
      }

      if (*(a1 + 66) == 1 && (v5 = [*(WeakRetained + 15) count]) != 0 && *(WeakRetained + 16))
      {
        v34 = [PRSPosterRoleCollectionObserverUpdate alloc];
        v35 = *(WeakRetained + 16);
        v36 = [*(WeakRetained + 15) copy];
        v37 = [(PRSPosterRoleCollectionObserverUpdate *)v34 initWithRole:v35 posterCollection:v36];
      }

      else
      {
        v37 = 0;
      }

      v38 = PRSLogObserver(v5);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(a1 + 32);
        v40 = *(a1 + 40);
        v41 = *(a1 + 48);
        *buf = 138544130;
        v75 = v39;
        v76 = 2114;
        v77 = v40;
        v78 = 2048;
        v79 = WeakRetained;
        v80 = 2114;
        v81 = v41;
        _os_log_impl(&dword_1C26FF000, v38, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> received activation reply - sending known data...", buf, 0x2Au);
      }

      if (v14)
      {
        v43 = PRSLogObserver(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(a1 + 32);
          v45 = *(a1 + 40);
          v46 = *(a1 + 48);
          *buf = 138544386;
          v75 = v44;
          v76 = 2114;
          v77 = v45;
          v78 = 2048;
          v79 = WeakRetained;
          v80 = 2114;
          v81 = v46;
          v82 = 2114;
          v83 = v14;
          _os_log_impl(&dword_1C26FF000, v43, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> known identities of %{public}@", buf, 0x34u);
        }
      }

      if (v65)
      {
        v47 = PRSLogObserver(v42);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = *(a1 + 32);
          v49 = *(a1 + 40);
          v50 = *(a1 + 48);
          *buf = 138544386;
          v75 = v48;
          v76 = 2114;
          v77 = v49;
          v78 = 2048;
          v79 = WeakRetained;
          v80 = 2114;
          v81 = v50;
          v82 = 2114;
          v83 = v65;
          _os_log_impl(&dword_1C26FF000, v47, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> known roles of %{public}@", buf, 0x34u);
        }
      }

      if (v37)
      {
        v51 = PRSLogObserver(v42);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = *(a1 + 32);
          v53 = *(a1 + 40);
          v54 = *(a1 + 48);
          *buf = 138544386;
          v75 = v52;
          v76 = 2114;
          v77 = v53;
          v78 = 2048;
          v79 = WeakRetained;
          v80 = 2114;
          v81 = v54;
          v82 = 2114;
          v83 = v37;
          _os_log_impl(&dword_1C26FF000, v51, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> known posters for role of %{public}@", buf, 0x34u);
        }
      }

      [v6 initializeWithKnownIdentities:v14 knownRoles:v65 knownCollection:v37];
    }
  }
}

void __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_174(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRSLogObserver(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v8 = *(a1 + 48);
    v9 = 138544130;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2048;
    v14 = WeakRetained;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_1C26FF000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> reactivating after interrupt", &v9, 0x2Au);
  }

  [v3 activate];
}

void __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_175(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = PRSLogObserver(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = 138544130;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2048;
    v12 = WeakRetained;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1C26FF000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> remotely invalidated", &v7, 0x2Au);
  }

  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 40);
    [(os_unfair_lock_s *)WeakRetained _lock_invalidate];
    os_unfair_lock_unlock(WeakRetained + 40);
  }
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_clientInvalidated)
  {
    self->_lock_clientInvalidated = 1;
    v4 = PRSLogObserver(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      explanation = self->_explanation;
      v8 = 138543874;
      v9 = v6;
      v10 = 2114;
      v11 = explanation;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C26FF000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p> client invalidated", &v8, 0x20u);
    }

    [(PRSWallpaperObserver *)self _lock_invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyWallpaperUpdates:(id)updates
{
  v100 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = PRSLogObserver(updatesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    explanation = self->_explanation;
    active_observedDescription = self->_active_observedDescription;
    *buf = 138544386;
    v88 = v7;
    v89 = 2114;
    v90 = explanation;
    v91 = 2048;
    selfCopy4 = self;
    v93 = 2114;
    v94 = active_observedDescription;
    v95 = 2114;
    v96 = updatesCopy;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> received updates=%{public}@", buf, 0x34u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_51;
  }

  if (!self->_lock_pathHandler)
  {
    [(PRSWallpaperObserver *)self notifyWallpaperUpdates:a2];
  }

  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x2020000000;
  v78[3] = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v13 = [updatesCopy count];
  if (!v13)
  {
    LOBYTE(v32) = 0;
    LOBYTE(v33) = 1;
    *(v84 + 24) = 1;
    goto LABEL_38;
  }

  v73 = 0u;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  obj = updatesCopy;
  v14 = [obj countByEnumeratingWithState:&v70 objects:v99 count:16];
  if (!v14)
  {
    v32 = 0;
    goto LABEL_33;
  }

  v58 = *v71;
  while (2)
  {
    v57 = v14;
    for (i = 0; i != v57; ++i)
    {
      if (*v71 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v70 + 1) + 8 * i);
      path = [v16 path];
      identity = [path identity];
      if (!identity)
      {
        identity = [v16 identity];
        if (!identity)
        {
          v32 = 0;
          *(v84 + 24) = 1;
          goto LABEL_32;
        }
      }

      conn_configurationByIdentity = self->_conn_configurationByIdentity;
      if (path)
      {
        v20 = [[PRSPosterConfiguration alloc] _initWithPath:path];
        [(NSMutableDictionary *)conn_configurationByIdentity setObject:v20 forKey:identity];

        *(v75 + 24) = 1;
      }

      else
      {
        v21 = [(NSMutableDictionary *)self->_conn_configurationByIdentity objectForKey:identity];
        _path = [v21 _path];
        serverIdentity = [_path serverIdentity];

        identity = serverIdentity;
        if (!serverIdentity)
        {
          path = PRSLogObserver(v24);
          if (os_log_type_enabled(path, OS_LOG_TYPE_FAULT))
          {
            v51 = objc_opt_class();
            v52 = NSStringFromClass(v51);
            v53 = self->_explanation;
            v54 = self->_active_observedDescription;
            identity2 = [v16 identity];
            *buf = 138544642;
            v88 = v52;
            v89 = 2114;
            v90 = v53;
            v91 = 2048;
            selfCopy4 = self;
            v93 = 2114;
            v94 = v54;
            v95 = 2114;
            v96 = identity2;
            v97 = 2114;
            v98 = obj;
            _os_log_fault_impl(&dword_1C26FF000, path, OS_LOG_TYPE_FAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> received update that assumes a previous update for %{public}@ that we don't have : updates=%{public}@", buf, 0x3Eu);
          }

          v32 = 1;
          goto LABEL_32;
        }
      }

      v25 = [v16 locations] & 0xF;
      if (!v25)
      {
        *(v84 + 24) = 1;

LABEL_31:
        v32 = 0;
LABEL_32:

        goto LABEL_33;
      }

      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v61 = __47__PRSWallpaperObserver_notifyWallpaperUpdates___block_invoke;
      v62 = &unk_1E818D2D8;
      v67 = &v83;
      v66 = v78;
      selfCopy3 = self;
      v26 = identity;
      v68 = &v74;
      v69 = &v79;
      v64 = v26;
      v65 = v16;
      v27 = v60;
      v28 = 0;
      buf[0] = 0;
      v29 = vcnt_s8(v25);
      v29.i16[0] = vaddlv_u8(v29);
      v30 = v29.i32[0];
      do
      {
        if (((1 << v28) & v25) != 0)
        {
          v61(v27);
          if (buf[0])
          {
            break;
          }

          --v30;
        }

        if (v28 > 0x3E)
        {
          break;
        }

        ++v28;
      }

      while (v30 > 0);

      v31 = *(v84 + 24);
      if (v31)
      {
        goto LABEL_31;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v70 objects:v99 count:16];
    v32 = 0;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_33:

  v34 = MEMORY[0x1E695DFA8];
  allKeys = [(NSMutableDictionary *)self->_conn_configurationByIdentity allKeys];
  v36 = [v34 setWithArray:allKeys];

  for (j = 0; j != 4; ++j)
  {
    if (self->_conn_identityLocations[j])
    {
      [v36 removeObject:?];
    }
  }

  v38 = self->_conn_configurationByIdentity;
  allObjects = [v36 allObjects];
  [(NSMutableDictionary *)v38 removeObjectsForKeys:allObjects];

  v33 = *(v84 + 24);
  if ((v32 | v33))
  {
LABEL_38:
    if (v32 & 1) == 0 && (v33)
    {
      v40 = PRSLogObserver(v13);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        v49 = self->_explanation;
        v50 = self->_active_observedDescription;
        *buf = 138544386;
        v88 = v48;
        v89 = 2114;
        v90 = v49;
        v91 = 2048;
        selfCopy4 = self;
        v93 = 2114;
        v94 = v50;
        v95 = 2114;
        v96 = updatesCopy;
        _os_log_fault_impl(&dword_1C26FF000, v40, OS_LOG_TYPE_FAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> received incoherent updates : updates=%{public}@", buf, 0x34u);
      }
    }

    [(PRSWallpaperObserver *)self _lock_invalidate];
  }

  if (self->_lock_pathHandler && ((v75[3] & 1) != 0 || v80[3]))
  {
    self->_lock_initialLocationStateUpdateWasSent = 1;
    v10 = MEMORY[0x1C691D2A0]();
    v41 = [PRSWallpaperObserverState alloc];
    v42 = [(NSMutableDictionary *)self->_conn_configurationByIdentity objectForKey:self->_conn_identityLocations[0]];
    v43 = [(NSMutableDictionary *)self->_conn_configurationByIdentity objectForKey:self->_conn_identityLocations[1]];
    v44 = [(NSMutableDictionary *)self->_conn_configurationByIdentity objectForKey:self->_conn_identityLocations[2]];
    v45 = [(NSMutableDictionary *)self->_conn_configurationByIdentity objectForKey:self->_conn_identityLocations[3]];
    v11 = [(PRSWallpaperObserverState *)v41 _initWithSelectedLock:v42 selectedHome:v43 activeLock:v44 activeHome:v45];

    v46 = [PRSWallpaperObserverTransition alloc];
    v12 = [(PRSWallpaperObserverTransition *)v46 _initWithChanged:v80[3]];
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(v78, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    (v10)[2](v10, v11, v12);
  }

LABEL_51:
}

uint64_t __47__PRSWallpaperObserver_notifyWallpaperUpdates___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = result;
  if ((a2 & ~*(*(*(result + 56) + 8) + 24)) != 0)
  {
    v6 = PRSWallpaperObserverLocationsToIndex(a2);
    v7 = *(v4 + 40);
    v8 = *(v4 + 32) + 8 * v6;
    v10 = *(v8 + 80);
    v9 = (v8 + 80);
    if (v10 != v7)
    {
      objc_storeStrong(v9, v7);
      *(*(*(v4 + 72) + 8) + 24) = 1;
      *(*(*(v4 + 80) + 8) + 24) |= a2;
    }

    *(*(*(v4 + 56) + 8) + 24) |= a2;
    result = [*(v4 + 48) changed];
    if ((a2 & ~result) == 0)
    {
      *(*(*(v4 + 80) + 8) + 24) |= a2;
    }
  }

  else
  {
    *(*(*(result + 64) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)notifySnapshotUpdates:(id)updates
{
  v37 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = PRSLogObserver(updatesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    explanation = self->_explanation;
    active_observedDescription = self->_active_observedDescription;
    *buf = 138544386;
    v28 = v7;
    v29 = 2114;
    v30 = explanation;
    v31 = 2048;
    selfCopy = self;
    v33 = 2114;
    v34 = active_observedDescription;
    v35 = 2114;
    v36 = updatesCopy;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> received snapshot updates=%{public}@", buf, 0x34u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v10 = MEMORY[0x1C691D2A0](self->_lock_snapshotHandler);
    os_unfair_lock_unlock(&self->_lock);
    if (v10)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = updatesCopy;
      v11 = updatesCopy;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * v15);
            v17 = [PRSPosterConfiguration alloc];
            path = [v16 path];
            v19 = [(PRSPosterConfiguration *)v17 _initWithPath:path];

            snapshotType = [v16 snapshotType];
            (v10)[2](v10, v19, snapshotType);

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v13);
      }

      updatesCopy = v21;
    }
  }
}

- (void)notifyRoleActivePosterUpdates:(id)updates
{
  v67 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = PRSLogObserver(updatesCopy);
  selfCopy = self;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    explanation = self->_explanation;
    active_observedDescription = self->_active_observedDescription;
    *buf = 138544386;
    v58 = v7;
    v59 = 2114;
    v60 = explanation;
    v61 = 2048;
    selfCopy2 = self;
    v63 = 2114;
    v64 = active_observedDescription;
    v65 = 2114;
    v66 = updatesCopy;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> received role updates=%{public}@", buf, 0x34u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    v10 = 0;
    v11 = 0;
    goto LABEL_38;
  }

  v39 = self->_lock_roleActivePosterObserver;
  v40 = updatesCopy;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = updatesCopy;
  v43 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v43)
  {
    v44 = 0;
    v42 = *v52;
    while (1)
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v52 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v51 + 1) + 8 * i);
        role = [v13 role];
        activePath = [v13 activePath];
        v16 = [(NSMutableDictionary *)self->_conn_roleToActivePosterConfiguration objectForKey:role];
        _path = [v16 _path];

        [activePath serverIdentity];
        v19 = v18 = self;
        posterUUID = [v19 posterUUID];

        serverIdentity = [_path serverIdentity];
        posterUUID2 = [serverIdentity posterUUID];

        suggestionDescriptors = [v13 suggestionDescriptors];
        v24 = [(NSMutableDictionary *)v18->_conn_posterUUIDToSuggestions objectForKey:posterUUID];
        v25 = __PFServerPosterPathFromPFPosterContents();
        v46 = [v24 bs_mapNoNulls:v25];

        if (_path)
        {
          serverIdentity2 = [_path serverIdentity];
          serverIdentity3 = [activePath serverIdentity];
          if ([serverIdentity2 isEqual:serverIdentity3])
          {
            v28 = BSEqualArrays();

            if (v28)
            {
              goto LABEL_24;
            }
          }

          else
          {
          }
        }

        v29 = [suggestionDescriptors bs_mapNoNulls:&__block_literal_global_10];
        v30 = [[PRSPosterConfiguration alloc] _initWithPath:activePath];
        [(NSMutableDictionary *)selfCopy->_conn_roleToActivePosterConfiguration setObject:v30 forKeyedSubscript:role];
        if (posterUUID2)
        {
          [(NSMutableDictionary *)selfCopy->_conn_posterUUIDToSuggestions removeObjectForKey:posterUUID2];
        }

        if (posterUUID)
        {
          v31 = [v29 count];
          conn_posterUUIDToSuggestions = selfCopy->_conn_posterUUIDToSuggestions;
          if (v31)
          {
            [(NSMutableDictionary *)conn_posterUUIDToSuggestions setObject:v29 forKey:posterUUID];
          }

          else
          {
            [(NSMutableDictionary *)conn_posterUUIDToSuggestions removeObjectForKey:posterUUID];
          }
        }

        v33 = [[PRSPosterRoleActivePosterObserverState alloc] initWithRole:role activePoster:v30 suggestions:v29];
        v34 = v44;
        if (!v44)
        {
          v34 = objc_opt_new();
        }

        v44 = v34;
        [v34 addObject:v33];

LABEL_24:
        self = selfCopy;
      }

      v43 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (!v43)
      {
        goto LABEL_28;
      }
    }
  }

  v44 = 0;
LABEL_28:

  os_unfair_lock_unlock(&self->_lock);
  v10 = v39;
  if (v39)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v11 = v44;
    v35 = [v11 countByEnumeratingWithState:&v47 objects:v55 count:16];
    updatesCopy = v40;
    if (v35)
    {
      v36 = v35;
      v37 = *v48;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v48 != v37)
          {
            objc_enumerationMutation(v11);
          }

          [(PRSPosterRoleActivePosterObserver *)v10 issueUpdatedState:*(*(&v47 + 1) + 8 * j), v39];
        }

        v36 = [v11 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v36);
    }
  }

  else
  {
    updatesCopy = v40;
    v11 = v44;
  }

LABEL_38:
}

id __54__PRSWallpaperObserver_notifyRoleActivePosterUpdates___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRSPosterDescriptor alloc] _initWithPath:v2];

  return v3;
}

- (void)notifyRolePosterCollectionUpdates:(id)updates
{
  v65 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = PRSLogObserver(updatesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    explanation = self->_explanation;
    active_observedDescription = self->_active_observedDescription;
    *buf = 138544386;
    v56 = v7;
    v57 = 2114;
    v58 = explanation;
    v59 = 2048;
    selfCopy = self;
    v61 = 2114;
    v62 = active_observedDescription;
    v63 = 2114;
    v64 = updatesCopy;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> received role updates=%{public}@", buf, 0x34u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    v10 = 0;
    v11 = 0;
    goto LABEL_37;
  }

  v10 = self->_lock_rolePosterCollectionObserver;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v38 = updatesCopy;
  v12 = updatesCopy;
  v44 = [v12 countByEnumeratingWithState:&v49 objects:v54 count:16];
  v11 = 0;
  if (v44)
  {
    v13 = *v50;
    selfCopy2 = self;
    v42 = v10;
    v39 = *v50;
    v40 = v12;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        role = [v15 role];
        role2 = [(PRSPosterRoleCollectionObserver *)v10 role];
        v18 = [role isEqual:role2];

        if (v18)
        {
          posterCollection = [v15 posterCollection];
          v20 = self->_conn_knownPostersCollection;
          v21 = [posterCollection count];
          if (v21 != [(NSArray *)v20 count])
          {
            goto LABEL_20;
          }

          if ([posterCollection count])
          {
            v43 = v11;
            v22 = 0;
            do
            {
              v23 = [(NSArray *)v20 objectAtIndexedSubscript:v22];
              v24 = [posterCollection objectAtIndexedSubscript:v22];
              serverIdentity = [v23 serverIdentity];
              serverIdentity2 = [v24 serverIdentity];
              v27 = BSEqualObjects();

              if ((v27 & 1) == 0)
              {
                break;
              }

              ++v22;
            }

            while (v22 < [posterCollection count]);
            v28 = v27 ^ 1;
            self = selfCopy2;
            v10 = v42;
            v11 = v43;
            v13 = v39;
            v12 = v40;
            if (!posterCollection)
            {
LABEL_20:
              v29 = [posterCollection copy];
              conn_knownPostersCollection = self->_conn_knownPostersCollection;
              self->_conn_knownPostersCollection = v29;

              v31 = [[PRSPosterRoleCollectionObserverUpdate alloc] initWithRole:role posterCollection:posterCollection];
              if (!v11)
              {
                v11 = objc_opt_new();
              }

              [v11 addObject:v31];

              goto LABEL_23;
            }
          }

          else
          {
            v28 = 0;
            if (!posterCollection)
            {
              goto LABEL_20;
            }
          }

          if (v28)
          {
            goto LABEL_20;
          }

LABEL_23:
        }
      }

      v44 = [v12 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v44);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    updatesCopy = v38;
    if ([v11 count])
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v32 = v11;
      v33 = [v32 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v46;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v46 != v35)
            {
              objc_enumerationMutation(v32);
            }

            posterCollection2 = [*(*(&v45 + 1) + 8 * j) posterCollection];
            [(PRSPosterRoleCollectionObserver *)v10 issueUpdatedState:posterCollection2];
          }

          v34 = [v32 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v34);
      }

      v11 = v32;
    }
  }

  else
  {
    updatesCopy = v38;
  }

LABEL_37:
}

- (void)notifyInitialUpdatesComplete
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_clientInvalidated)
  {
    [(RBSAssertion *)self->_lock_initialUpdateAssertion invalidate];
    lock_initialUpdateAssertion = self->_lock_initialUpdateAssertion;
    self->_lock_initialUpdateAssertion = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)initWithExplanation:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"explanation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithConfiguration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PRSWallpaperObserverConfigurationClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithConfiguration:(uint64_t)a1 .cold.2(uint64_t a1, const char *a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@:%@:%p> cannot be activated with an invalid configuration", v6, *(a1 + 8), a1];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_8(&dword_1C26FF000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v17, v18, v19, v20);
  }

  v16 = v7;
  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithConfiguration:.cold.3()
{
  OUTLINED_FUNCTION_7();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)activateWithConfiguration:(uint64_t)a1 .cold.4(uint64_t a1, NSObject *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 64);
  v8 = 138544130;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  v12 = 2048;
  v13 = a1;
  v14 = 2114;
  v15 = v7;
  _os_log_error_impl(&dword_1C26FF000, a2, OS_LOG_TYPE_ERROR, "<%{public}@:%{public}@:%p observed=(%{public}@)> failed to lookup endpoint", &v8, 0x2Au);
}

- (void)activateWithConfiguration:.cold.5()
{
  OUTLINED_FUNCTION_7();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)activateWithConfiguration:.cold.6()
{
  OUTLINED_FUNCTION_7();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)activateWithConfiguration:.cold.7()
{
  OUTLINED_FUNCTION_7();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)activateWithConfiguration:.cold.8()
{
  OUTLINED_FUNCTION_7();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)activateWithConfiguration:(char *)a1 .cold.9(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)notifyWallpaperUpdates:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@:%@:%p observed=(%@)> it should be impossible for us to have an nil path handler at this point", v6, *(a1 + 8), a1, *(a1 + 64)];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_8(&dword_1C26FF000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v17, v18, v19, v20);
  }

  v16 = v7;
  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end