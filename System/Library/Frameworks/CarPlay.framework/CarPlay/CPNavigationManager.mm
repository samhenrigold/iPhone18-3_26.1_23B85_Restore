@interface CPNavigationManager
- (BOOL)ownsNavigation;
- (BOOL)supportsRouteSharing;
- (CAFCarManager)carManager;
- (CPElectricVehicleWaypoint)chargePrecondition;
- (CPNavigationManager)initWithIdentifier:(id)identifier delegate:(id)delegate;
- (CPNavigationManagerDelegate)delegate;
- (CRAccNavInfoProviding)routeGuidanceProviding;
- (CRNavigationService)navigationService;
- (NSArray)laneGuidances;
- (NSArray)maneuvers;
- (double)_connectionRetryDelay;
- (id)_createRouteGuidanceObject;
- (id)_updateRouteGuidance:(id)guidance;
- (unsigned)guidanceState;
- (void)_enumerateNavControllersWithBlock:(id)block;
- (void)_handleConnectionReset;
- (void)_resendInfo;
- (void)_resetRouteGuidanceIsRequired:(BOOL)required;
- (void)_sendRouteLine;
- (void)_setupConnection;
- (void)_startNavigationWithRouteInfo:(id)info originalState:(unsigned __int8)state;
- (void)activeNavigationIdentifiersChangedTo:(id)to;
- (void)addLaneGuidances:(id)guidances;
- (void)addManeuvers:(id)maneuvers;
- (void)cancelRerouting;
- (void)dealloc;
- (void)didUpdateActiveComponents:(id)components;
- (void)invalidate;
- (void)modifyRouteGuidance:(id)guidance;
- (void)mutateRouteGuidance:(id)guidance;
- (void)navigationOwnershipChangedTo:(unint64_t)to;
- (void)releaseNavigationOwnership;
- (void)requestNavigationOwnership;
- (void)routeChangedWithReason:(unsigned __int8)reason routeInfo:(id)info;
- (void)sendInfo:(id)info toComponentUID:(id)d;
- (void)setChargePrecondition:(id)precondition;
- (void)setControlsAccNav:(BOOL)nav;
- (void)setLaneGuidances:(id)guidances;
- (void)setLastNavigatingBundleIdentifier:(id)identifier;
- (void)setManeuvers:(id)maneuvers;
- (void)setOwner:(unint64_t)owner;
- (void)setRouteGuidance:(id)guidance;
- (void)setRouteLine:(id)line;
- (void)setSupportsAccNav:(BOOL)nav;
- (void)setSupportsRouteSharing:(BOOL)sharing;
- (void)startNavigationWithRouteInfo:(id)info;
- (void)startRerouting;
- (void)vehicleStateManager:(id)manager didUpdateRouteSharingEnabled:(BOOL)enabled;
- (void)willSendGuidanceStateLoading;
@end

@implementation CPNavigationManager

- (CRAccNavInfoProviding)routeGuidanceProviding
{
  routeGuidance = [(CPNavigationManager *)self routeGuidance];
  if ([routeGuidance conformsToProtocol:&unk_284A1B490])
  {
    v3 = routeGuidance;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)ownsNavigation
{
  if ([(CPNavigationManager *)self owner]!= 1)
  {
    return 0;
  }

  lastNavigatingBundleIdentifier = [(CPNavigationManager *)self lastNavigatingBundleIdentifier];
  identifier = [(CPNavigationManager *)self identifier];
  v5 = [lastNavigatingBundleIdentifier isEqualToString:identifier];

  return v5;
}

- (CRNavigationService)navigationService
{
  connection = [(CPNavigationManager *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)_setupConnection
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.carkit.navigation.service" options:4096];
  v4 = CRNavigationClientInterface();
  [v3 setExportedInterface:v4];

  [v3 setExportedObject:self];
  v5 = CRNavigationServiceInterface();
  [v3 setRemoteObjectInterface:v5];

  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__CPNavigationManager__setupConnection__block_invoke;
  v16[3] = &unk_278A106E0;
  objc_copyWeak(&v17, &location);
  [v3 setInterruptionHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__CPNavigationManager__setupConnection__block_invoke_2;
  v14[3] = &unk_278A106E0;
  objc_copyWeak(&v15, &location);
  v6 = CarPlayFrameworkACCNavLogging([v3 setInvalidationHandler:v14]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v3;
    _os_log_impl(&dword_236ED4000, v6, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit navigation service %{public}@.", buf, 0xCu);
  }

  [v3 resume];
  [(CPNavigationManager *)self setConnection:v3];
  navigationService = [(CPNavigationManager *)self navigationService];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__CPNavigationManager__setupConnection__block_invoke_231;
  v12[3] = &unk_278A10708;
  objc_copyWeak(&v13, &location);
  [navigationService fetchNavigationOwnerWithReply:v12];

  navigationService2 = [(CPNavigationManager *)self navigationService];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__CPNavigationManager__setupConnection__block_invoke_233;
  v10[3] = &unk_278A10730;
  objc_copyWeak(&v11, &location);
  [navigationService2 fetchNavigationIdentifiersWithReply:v10];

  navigationService3 = [(CPNavigationManager *)self navigationService];
  [navigationService3 beginObserving];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (CPNavigationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CPNavigationManager)initWithIdentifier:(id)identifier delegate:(id)delegate
{
  v67 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  delegateCopy = delegate;
  v61.receiver = self;
  v61.super_class = CPNavigationManager;
  v8 = [(CPNavigationManager *)&v61 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_30;
  }

  v10 = CarPlayFrameworkACCNavLogging(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v64 = identifierCopy;
    v65 = 2112;
    v66 = delegateCopy;
    _os_log_impl(&dword_236ED4000, v10, OS_LOG_TYPE_DEFAULT, "init! identifier=%{public}@ delegate=%@", buf, 0x16u);
  }

  v11 = [identifierCopy copy];
  identifier = v9->_identifier;
  v9->_identifier = v11;

  objc_storeWeak(&v9->_delegate, delegateCopy);
  v9->_ownershipRequested = 0;
  if (![identifierCopy isEqualToString:@"com.apple.Maps"])
  {
    if ([identifierCopy isEqualToString:@"CPNavTool"])
    {
      bundleName = v9->_bundleName;
      v9->_bundleName = @"CPNavTool";
      goto LABEL_21;
    }

    if (!identifierCopy || ![identifierCopy length])
    {
      goto LABEL_22;
    }

    v58 = 0;
    v16 = [MEMORY[0x277CC1E70] bundleRecordWithApplicationIdentifier:identifierCopy error:&v58];
    bundleName = v58;
    objc_opt_class();
    v17 = v16;
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      if (v17)
      {
        v19 = [v17 localizedNameWithContext:@"Car"];
        v20 = v19;
        if (v19)
        {
          localizedName = v19;
        }

        else
        {
          localizedName = [v17 localizedName];
        }

        v25 = v9->_bundleName;
        v9->_bundleName = localizedName;

        v23 = v17;
        goto LABEL_20;
      }
    }

    else
    {

      if (v17)
      {
        localizedName2 = [v17 localizedName];
        v23 = v9->_bundleName;
        v9->_bundleName = localizedName2;
LABEL_20:

        goto LABEL_21;
      }
    }

    v23 = CarPlayFrameworkACCNavLogging(isKindOfClass);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(NSString *)bundleName description];
      *buf = 138412290;
      v64 = v24;
      _os_log_impl(&dword_236ED4000, v23, OS_LOG_TYPE_DEFAULT, "Unable to retrieve app record: %@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v13 = CPLocalizedStringForKey(@"APPLE_MAPS");
  v14 = v9->_bundleName;
  v9->_bundleName = v13;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke;
  block[3] = &unk_278A105A0;
  v60 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
  bundleName = &v60->super.isa;
LABEL_21:

LABEL_22:
  v26 = objc_opt_new();
  accNavControllersIndexed = v9->_accNavControllersIndexed;
  v9->_accNavControllersIndexed = v26;

  v28 = objc_opt_new();
  maneuversIndexed = v9->_maneuversIndexed;
  v9->_maneuversIndexed = v28;

  v30 = objc_opt_new();
  laneGuidanceIndexed = v9->_laneGuidanceIndexed;
  v9->_laneGuidanceIndexed = v30;

  v32 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v33 = dispatch_queue_create("com.apple.carkit.navigation.xpcConnection", v32);
  connectionQueue = v9->_connectionQueue;
  v9->_connectionQueue = v33;

  connectionQueue = [(CPNavigationManager *)v9 connectionQueue];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_174;
  v56[3] = &unk_278A105A0;
  v36 = v9;
  v57 = v36;
  dispatch_sync(connectionQueue, v56);

  v37 = [[CPVehicleStateManager alloc] initWithDelegate:v36];
  vehicleStateManager = v36->_vehicleStateManager;
  v36->_vehicleStateManager = v37;

  v40 = CarPlayFrameworkACCNavLogging(v39);
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);

  v43 = CarPlayFrameworkACCNavLogging(v42);
  v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
  if (v41)
  {
    if (v44)
    {
      *buf = 0;
      _os_log_impl(&dword_236ED4000, v43, OS_LOG_TYPE_DEFAULT, "[StateCapture] enabled", buf, 2u);
    }

    objc_initWeak(buf, v36);
    v45 = [CYStateCapture alloc];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_180;
    v54[3] = &unk_278A105C8;
    objc_copyWeak(&v55, buf);
    v46 = [(CYStateCapture *)v45 initWithIdentifier:@"Maneuvers" capture:v54];
    v62[0] = v46;
    v47 = [CYStateCapture alloc];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_187;
    v52[3] = &unk_278A105C8;
    objc_copyWeak(&v53, buf);
    v48 = [(CYStateCapture *)v47 initWithIdentifier:@"LaneGuidances" capture:v52];
    v62[1] = v48;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
    stateCaptures = v36->_stateCaptures;
    v36->_stateCaptures = v49;

    objc_destroyWeak(&v53);
    objc_destroyWeak(&v55);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v44)
    {
      *buf = 0;
      _os_log_impl(&dword_236ED4000, v43, OS_LOG_TYPE_DEFAULT, "[StateCapture] disabled", buf, 2u);
    }
  }

LABEL_30:
  return v9;
}

id __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_180(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [WeakRetained maneuvers];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [CPAccNavUpdate dictionaryStringFormat:*(*(&v12 + 1) + 8 * i)];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = CarPlayFrameworkACCNavLogging(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_180_cold_1(v2);
  }

  return v2;
}

id __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_187(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [WeakRetained laneGuidances];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [CPAccNavUpdate dictionaryStringFormat:*(*(&v12 + 1) + 8 * i)];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = CarPlayFrameworkACCNavLogging(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_187_cold_1(v2);
  }

  return v2;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = CarPlayFrameworkACCNavLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v7 = 2080;
    v8 = "[CPNavigationManager dealloc]";
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = CPNavigationManager;
  [(CPNavigationManager *)&v4 dealloc];
}

- (void)setSupportsAccNav:(BOOL)nav
{
  if (nav)
  {
    v4 = 1;
  }

  else
  {
    if ([(CPNavigationManager *)self accNavRole]!= 1)
    {
      return;
    }

    v4 = 0;
  }

  [(CPNavigationManager *)self setAccNavRole:v4];
}

- (void)setControlsAccNav:(BOOL)nav
{
  if (nav)
  {
    v4 = 2;
  }

  else
  {
    if ([(CPNavigationManager *)self accNavRole]!= 2)
    {
      return;
    }

    v4 = 0;
  }

  [(CPNavigationManager *)self setAccNavRole:v4];
}

- (void)setSupportsRouteSharing:(BOOL)sharing
{
  sharingCopy = sharing;
  vehicleStateManager = [(CPNavigationManager *)self vehicleStateManager];
  [vehicleStateManager setSupportsRouteSharing:sharingCopy];
}

- (BOOL)supportsRouteSharing
{
  vehicleStateManager = [(CPNavigationManager *)self vehicleStateManager];
  supportsRouteSharing = [vehicleStateManager supportsRouteSharing];

  return supportsRouteSharing;
}

- (void)_resendInfo
{
  v22 = *MEMORY[0x277D85DE8];
  [(CPNavigationManager *)self _sendRouteLine];
  if ([(CPNavigationManager *)self ownsNavigation]&& (v3 = [(CPNavigationManager *)self controlsAccNav], v3))
  {
    v4 = CarPlayFrameworkACCNavLogging(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "skip resending info: AccNav is controlled by owner", &v14, 2u);
    }
  }

  else
  {
    ownsNavigation = [(CPNavigationManager *)self ownsNavigation];
    if (ownsNavigation && (ownsNavigation = [(CPNavigationManager *)self supportsAccNav], ownsNavigation))
    {
      v6 = CarPlayFrameworkACCNavLogging(ownsNavigation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_236ED4000, v6, OS_LOG_TYPE_DEFAULT, "resending Info", &v14, 2u);
      }

      [(CPNavigationManager *)self _enumerateNavControllersWithBlock:&__block_literal_global_3];
    }

    else
    {
      v7 = CarPlayFrameworkACCNavLogging(ownsNavigation);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if ([(CPNavigationManager *)self ownsNavigation])
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        [(CPNavigationManager *)self accNavRole];
        v9 = NSStringFromCRAccNavRole();
        owner = [(CPNavigationManager *)self owner];
        v11 = @"None";
        if (owner == 1)
        {
          v11 = @"iOS";
        }

        if (owner == 2)
        {
          v11 = @"Car";
        }

        v12 = v11;
        lastNavigatingBundleIdentifier = [(CPNavigationManager *)self lastNavigatingBundleIdentifier];
        v14 = 138413058;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v12;
        v20 = 2112;
        v21 = lastNavigatingBundleIdentifier;
        _os_log_impl(&dword_236ED4000, v7, OS_LOG_TYPE_DEFAULT, "resending Info failed ownsNavigation=%@ accNavRole=%@ owner=%@ lastNavigatingBundleIdentifier=%@", &v14, 0x2Au);
      }
    }
  }
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = CarPlayFrameworkACCNavLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    selfCopy = self;
    v7 = 2080;
    v8 = "[CPNavigationManager invalidate]";
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", &v5, 0x16u);
  }

  connection = [(CPNavigationManager *)self connection];
  [connection invalidate];

  [(CPNavigationManager *)self setConnection:0];
}

- (void)requestNavigationOwnership
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = CarPlayFrameworkACCNavLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(CPNavigationManager *)self identifier];
    [(CPNavigationManager *)self accNavRole];
    v5 = NSStringFromCRAccNavRole();
    *buf = 138543618;
    v10 = identifier;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "requestNavigationOwnership for %{public}@ accNavRole=%{public}@", buf, 0x16u);
  }

  navigationService = [(CPNavigationManager *)self navigationService];
  identifier2 = [(CPNavigationManager *)self identifier];
  [navigationService addNavigationOwnerWithIdentifier:identifier2 accNavRole:{-[CPNavigationManager accNavRole](self, "accNavRole")}];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CPNavigationManager_requestNavigationOwnership__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)releaseNavigationOwnership
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = CarPlayFrameworkACCNavLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(CPNavigationManager *)self identifier];
    *buf = 138543362;
    v10 = identifier;
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "releaseNavigationOwnership for %{public}@", buf, 0xCu);
  }

  vehicleStateManager = [(CPNavigationManager *)self vehicleStateManager];
  [vehicleStateManager willReleaseNavigationOwnership];

  navigationService = [(CPNavigationManager *)self navigationService];
  identifier2 = [(CPNavigationManager *)self identifier];
  [navigationService removeNavigationOwnerWithIdentifier:identifier2];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CPNavigationManager_releaseNavigationOwnership__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__CPNavigationManager_releaseNavigationOwnership__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOwnershipRequested:0];
  v2 = [*(a1 + 32) accNavControllersIndexed];
  [v2 removeAllObjects];
}

- (void)setOwner:(unint64_t)owner
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_owner != owner)
  {
    v5 = CarPlayFrameworkACCNavLogging(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      owner = self->_owner;
      if (owner == 1)
      {
        v7 = @"iOS";
      }

      else
      {
        v7 = @"None";
      }

      if (owner == 2)
      {
        v8 = @"Car";
      }

      else
      {
        v8 = v7;
      }

      v9 = v8;
      if (owner == 1)
      {
        v10 = @"iOS";
      }

      else
      {
        v10 = @"None";
      }

      if (owner == 2)
      {
        v10 = @"Car";
      }

      v11 = v10;
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Navigation owner changed from %{public}@ to %{public}@", &v13, 0x16u);
    }

    self->_owner = owner;
    delegate = [(CPNavigationManager *)self delegate];
    [delegate navigationOwnershipChangedToOwner:owner];

    [(CPNavigationManager *)self _resendInfo];
  }
}

- (void)setLastNavigatingBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = [(NSString *)self->_lastNavigatingBundleIdentifier isEqualToString:identifierCopy];
  if ((v6 & 1) == 0)
  {
    v7 = CarPlayFrameworkACCNavLogging(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      lastNavigatingBundleIdentifier = self->_lastNavigatingBundleIdentifier;
      v13 = 138543618;
      v14 = lastNavigatingBundleIdentifier;
      v15 = 2114;
      v16 = identifierCopy;
      _os_log_impl(&dword_236ED4000, v7, OS_LOG_TYPE_DEFAULT, "updating lastNavigatingBundleIdentifier from %{public}@ to %{public}@", &v13, 0x16u);
    }

    objc_storeStrong(&self->_lastNavigatingBundleIdentifier, identifier);
    delegate = [(CPNavigationManager *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(CPNavigationManager *)self delegate];
      [delegate2 didUpdateLastNavigatingBundleIdentifier:identifierCopy];
    }

    vehicleStateManager = [(CPNavigationManager *)self vehicleStateManager];
    [vehicleStateManager didUpdateNavigationOwnership];

    [(CPNavigationManager *)self _resendInfo];
  }
}

- (id)_createRouteGuidanceObject
{
  v3 = objc_alloc_init(CPRouteGuidance);
  bundleName = [(CPNavigationManager *)self bundleName];
  v5 = [bundleName length];

  if (v5)
  {
    bundleName2 = [(CPNavigationManager *)self bundleName];
    [(CPRouteGuidance *)v3 setSourceName:bundleName2];
  }

  [(CPRouteGuidance *)v3 setBeingShownInApp:1];
  [(CPRouteGuidance *)v3 setSourceSupportsRouteGuidance:[(CPNavigationManager *)self supportsAccNav]];
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    [(CPRouteGuidance *)v3 setDestinationTimeZoneOffsetMinutes:[(CPNavigationManager *)self destinationTimeZoneOffsetMinutes]];
  }

  return v3;
}

- (void)_resetRouteGuidanceIsRequired:(BOOL)required
{
  requiredCopy = required;
  v18 = *MEMORY[0x277D85DE8];
  v5 = CarPlayFrameworkACCNavLogging(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (requiredCopy)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    routeGuidance = [(CPNavigationManager *)self routeGuidance];
    v8 = NSStringFromCPGuidanceState([routeGuidance guidanceState]);
    v14 = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Resetting RouteGuidance. required=%{public}@ guidanceState=%{public}@", &v14, 0x16u);
  }

  routeGuidance2 = [(CPNavigationManager *)self routeGuidance];
  guidanceState = [routeGuidance2 guidanceState];

  if (guidanceState || requiredCopy)
  {
    _createRouteGuidanceObject = [(CPNavigationManager *)self _createRouteGuidanceObject];
    [(CPNavigationManager *)self setRouteGuidance:_createRouteGuidanceObject];

    maneuversIndexed = [(CPNavigationManager *)self maneuversIndexed];
    [maneuversIndexed removeAllObjects];

    laneGuidanceIndexed = [(CPNavigationManager *)self laneGuidanceIndexed];
    [laneGuidanceIndexed removeAllObjects];

    [(CPNavigationManager *)self _enumerateNavControllersWithBlock:&__block_literal_global_202];
  }
}

- (void)_enumerateNavControllersWithBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accNavControllersIndexed = [(CPNavigationManager *)self accNavControllersIndexed];
  allValues = [accNavControllersIndexed allValues];

  v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (unsigned)guidanceState
{
  routeGuidance = [(CPNavigationManager *)self routeGuidance];
  guidanceState = [routeGuidance guidanceState];

  return guidanceState;
}

- (void)mutateRouteGuidance:(id)guidance
{
  guidanceCopy = guidance;
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    v4 = [(CPNavigationManager *)self _updateRouteGuidance:guidanceCopy];
    routeGuidance = self->_routeGuidance;
    self->_routeGuidance = v4;
  }
}

- (void)modifyRouteGuidance:(id)guidance
{
  guidanceCopy = guidance;
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    v4 = [(CPNavigationManager *)self _updateRouteGuidance:guidanceCopy];
    [(CPNavigationManager *)self setRouteGuidance:v4];
  }
}

- (id)_updateRouteGuidance:(id)guidance
{
  guidanceCopy = guidance;
  routeGuidance = [(CPNavigationManager *)self routeGuidance];
  _createRouteGuidanceObject = [routeGuidance copy];

  if (!_createRouteGuidanceObject)
  {
    _createRouteGuidanceObject = [(CPNavigationManager *)self _createRouteGuidanceObject];
  }

  guidanceCopy[2](guidanceCopy, _createRouteGuidanceObject);

  return _createRouteGuidanceObject;
}

- (void)startNavigationWithRouteInfo:(id)info
{
  infoCopy = info;
  supportsAccNav = [(CPNavigationManager *)self supportsAccNav];
  if (supportsAccNav)
  {
    v6 = CarPlayFrameworkACCNavLogging(supportsAccNav);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_236ED4000, v6, OS_LOG_TYPE_DEFAULT, "startNavigationWithRouteInfo", v11, 2u);
    }

    routeGuidance = [infoCopy routeGuidance];
    guidanceState = [routeGuidance guidanceState];

    if (guidanceState != 1 && guidanceState != 6)
    {
      v10 = CarPlayFrameworkACCNavLogging(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(CPNavigationManager *)guidanceState startNavigationWithRouteInfo:v10];
      }

      guidanceState = 1;
    }

    [(CPNavigationManager *)self _startNavigationWithRouteInfo:infoCopy originalState:guidanceState];
  }
}

- (void)_startNavigationWithRouteInfo:(id)info originalState:(unsigned __int8)state
{
  stateCopy = state;
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = CarPlayFrameworkACCNavLogging(infoCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromCPGuidanceState(stateCopy);
    *buf = 138543362;
    v21 = v8;
    _os_log_impl(&dword_236ED4000, v7, OS_LOG_TYPE_DEFAULT, "_startNavigationWithRouteInfo:originalState: %{public}@", buf, 0xCu);
  }

  v9 = CarPlayFrameworkACCNavLogging([(CPNavigationManager *)self resetRouteGuidance]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_236ED4000, v9, OS_LOG_TYPE_DEFAULT, "startNavigation: route reset", buf, 2u);
  }

  routeGuidance = [infoCopy routeGuidance];
  [routeGuidance setGuidanceState:3];
  maneuvers = [infoCopy maneuvers];
  [routeGuidance setTotalManeuverCount:{objc_msgSend(maneuvers, "count")}];

  laneGuidances = [infoCopy laneGuidances];
  [routeGuidance setTotalLaneGuidanceCount:{objc_msgSend(laneGuidances, "count")}];

  v13 = CarPlayFrameworkACCNavLogging([(CPNavigationManager *)self setRouteGuidance:routeGuidance]);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_236ED4000, v13, OS_LOG_TYPE_DEFAULT, "startNavigation: set route guidance with loading state and counts", buf, 2u);
  }

  maneuvers2 = [infoCopy maneuvers];
  [(CPNavigationManager *)self setManeuvers:maneuvers2];

  laneGuidances2 = [infoCopy laneGuidances];
  [(CPNavigationManager *)self setLaneGuidances:laneGuidances2];

  routeLine = [infoCopy routeLine];
  [(CPNavigationManager *)self setRouteLine:routeLine];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__CPNavigationManager__startNavigationWithRouteInfo_originalState___block_invoke;
  v18[3] = &__block_descriptor_33_e25_v16__0__CPRouteGuidance_8l;
  v19 = stateCopy;
  v17 = CarPlayFrameworkACCNavLogging([(CPNavigationManager *)self modifyRouteGuidance:v18]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_236ED4000, v17, OS_LOG_TYPE_DEFAULT, "startNavigation: set route guidance with original route guidance", buf, 2u);
  }
}

- (void)startRerouting
{
  v14 = *MEMORY[0x277D85DE8];
  supportsAccNav = [(CPNavigationManager *)self supportsAccNav];
  if (supportsAccNav)
  {
    v4 = CarPlayFrameworkACCNavLogging(supportsAccNav);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      routeGuidance = [(CPNavigationManager *)self routeGuidance];
      v6 = NSStringFromCPGuidanceState([routeGuidance guidanceState]);
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "startRerouting: current state: %{public}@", &v12, 0xCu);
    }

    routeGuidance2 = [(CPNavigationManager *)self routeGuidance];
    if (routeGuidance2)
    {
      v8 = routeGuidance2;
      routeGuidance3 = [(CPNavigationManager *)self routeGuidance];
      guidanceState = [routeGuidance3 guidanceState];

      if (guidanceState)
      {
        v11 = CarPlayFrameworkACCNavLogging([(CPNavigationManager *)self modifyRouteGuidance:&__block_literal_global_206]);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_236ED4000, v11, OS_LOG_TYPE_DEFAULT, "startRerouting: set rerouting routeguidance", &v12, 2u);
        }
      }
    }
  }
}

- (void)routeChangedWithReason:(unsigned __int8)reason routeInfo:(id)info
{
  v13 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  supportsAccNav = [(CPNavigationManager *)self supportsAccNav];
  if (supportsAccNav)
  {
    v8 = CarPlayFrameworkACCNavLogging(supportsAccNav);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromCPRerouteReason(reason);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_236ED4000, v8, OS_LOG_TYPE_DEFAULT, "routeChangedWithReason: %{public}@", &v11, 0xCu);
    }

    routeGuidance = [infoCopy routeGuidance];
    -[CPNavigationManager _startNavigationWithRouteInfo:originalState:](self, "_startNavigationWithRouteInfo:originalState:", infoCopy, [routeGuidance guidanceState]);
  }
}

- (void)cancelRerouting
{
  v13 = *MEMORY[0x277D85DE8];
  supportsAccNav = [(CPNavigationManager *)self supportsAccNav];
  if (supportsAccNav)
  {
    v4 = CarPlayFrameworkACCNavLogging(supportsAccNav);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      routeGuidance = [(CPNavigationManager *)self routeGuidance];
      v6 = NSStringFromCPGuidanceState([routeGuidance guidanceState]);
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "cancelRerouting guidanceState: %{public}@", &v11, 0xCu);
    }

    routeGuidance2 = [(CPNavigationManager *)self routeGuidance];
    guidanceState = [routeGuidance2 guidanceState];

    if (guidanceState == 5)
    {
      v10 = CarPlayFrameworkACCNavLogging(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_236ED4000, v10, OS_LOG_TYPE_DEFAULT, "cancelRerouting: state was rerouting, setting to active", &v11, 2u);
      }

      [(CPNavigationManager *)self modifyRouteGuidance:&__block_literal_global_208];
    }
  }
}

void __38__CPNavigationManager_cancelRerouting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarPlayFrameworkACCNavLogging(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "cancelRerouting: setting guidance state to active", v4, 2u);
  }

  [v2 setGuidanceState:1];
}

- (void)setRouteGuidance:(id)guidance
{
  guidanceCopy = guidance;
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    routeGuidance = self->_routeGuidance;
    if (routeGuidance)
    {
      if ([(CPRouteGuidance *)routeGuidance isEqual:guidanceCopy])
      {
        goto LABEL_9;
      }

      routeGuidance = self->_routeGuidance;
    }

    guidanceState = [(CPRouteGuidance *)routeGuidance guidanceState];
    guidanceState2 = [guidanceCopy guidanceState];
    objc_storeStrong(&self->_routeGuidance, guidance);
    v10 = CarPlayFrameworkACCNavLogging(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CPNavigationManager setRouteGuidance:guidanceCopy];
    }

    [(CPNavigationManager *)self _enumerateNavControllersWithBlock:&__block_literal_global_210];
    if (guidanceState != guidanceState2)
    {
      vehicleStateManager = [(CPNavigationManager *)self vehicleStateManager];
      [vehicleStateManager sendGuidanceState:{-[CPRouteGuidance guidanceState](self->_routeGuidance, "guidanceState")}];
    }
  }

LABEL_9:
}

- (CPElectricVehicleWaypoint)chargePrecondition
{
  routeGuidance = [(CPNavigationManager *)self routeGuidance];
  electricVehicleDestination = [routeGuidance electricVehicleDestination];

  return electricVehicleDestination;
}

- (void)setChargePrecondition:(id)precondition
{
  preconditionCopy = precondition;
  supportsAccNav = [(CPNavigationManager *)self supportsAccNav];
  if (supportsAccNav)
  {
    v6 = CarPlayFrameworkACCNavLogging(supportsAccNav);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CPNavigationManager setChargePrecondition:];
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__CPNavigationManager_setChargePrecondition___block_invoke;
    v7[3] = &unk_278A10650;
    v8 = preconditionCopy;
    [(CPNavigationManager *)self modifyRouteGuidance:v7];
  }
}

- (NSArray)maneuvers
{
  maneuversIndexed = [(CPNavigationManager *)self maneuversIndexed];
  allValues = [maneuversIndexed allValues];
  v4 = [allValues sortedArrayUsingComparator:&__block_literal_global_213];

  return v4;
}

uint64_t __32__CPNavigationManager_maneuvers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedShort:{objc_msgSend(a2, "index")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 index];

  v9 = [v7 numberWithUnsignedShort:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)setManeuvers:(id)maneuvers
{
  v33 = *MEMORY[0x277D85DE8];
  maneuversCopy = maneuvers;
  supportsAccNav = [(CPNavigationManager *)self supportsAccNav];
  if (supportsAccNav)
  {
    v6 = CarPlayFrameworkACCNavLogging(supportsAccNav);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CPNavigationManager setManeuvers:maneuversCopy];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = maneuversCopy;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        v11 = 0;
        do
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = CarPlayFrameworkACCNavLogging(v8);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [CPNavigationManager setManeuvers:];
          }

          ++v11;
        }

        while (v9 != v11);
        v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
        v9 = v8;
      }

      while (v8);
    }

    maneuversIndexed = [(CPNavigationManager *)self maneuversIndexed];
    [maneuversIndexed removeAllObjects];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          maneuversIndexed2 = [(CPNavigationManager *)self maneuversIndexed];
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v19, "index")}];
          [maneuversIndexed2 setObject:v19 forKeyedSubscript:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v16);
    }

    [(CPNavigationManager *)self _enumerateNavControllersWithBlock:&__block_literal_global_216];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __36__CPNavigationManager_setManeuvers___block_invoke_2;
    v22[3] = &unk_278A10650;
    v22[4] = self;
    [(CPNavigationManager *)self modifyRouteGuidance:v22];
  }
}

void __36__CPNavigationManager_setManeuvers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 maneuversIndexed];
  [v3 setTotalManeuverCount:{objc_msgSend(v4, "count")}];
}

- (void)addManeuvers:(id)maneuvers
{
  v38 = *MEMORY[0x277D85DE8];
  maneuversCopy = maneuvers;
  supportsAccNav = [(CPNavigationManager *)self supportsAccNav];
  if (!supportsAccNav)
  {
    goto LABEL_29;
  }

  v6 = CarPlayFrameworkACCNavLogging(supportsAccNav);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CPNavigationManager addManeuvers:maneuversCopy];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = maneuversCopy;
  v7 = maneuversCopy;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      v11 = 0;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = CarPlayFrameworkACCNavLogging(v8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [CPNavigationManager addManeuvers:];
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
      v9 = v8;
    }

    while (v8);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v7;
  v13 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_26;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v29;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v29 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v28 + 1) + 8 * i);
      maneuversIndexed = [(CPNavigationManager *)self maneuversIndexed];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v18, "index")}];
      v21 = [maneuversIndexed objectForKeyedSubscript:v20];

      if (v21)
      {
        if ([v21 isEqual:v18])
        {
          goto LABEL_22;
        }

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __36__CPNavigationManager_addManeuvers___block_invoke;
        v27[3] = &unk_278A10698;
        v27[4] = v18;
        [(CPNavigationManager *)self _enumerateNavControllersWithBlock:v27];
      }

      maneuversIndexed2 = [(CPNavigationManager *)self maneuversIndexed];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v18, "index")}];
      [maneuversIndexed2 setObject:v18 forKeyedSubscript:v23];

      v15 = 1;
LABEL_22:
    }

    v14 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  }

  while (v14);
LABEL_26:

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __36__CPNavigationManager_addManeuvers___block_invoke_2;
  v26[3] = &unk_278A10650;
  v26[4] = self;
  [(CPNavigationManager *)self modifyRouteGuidance:v26];
  if (v15)
  {
    [(CPNavigationManager *)self _enumerateNavControllersWithBlock:&__block_literal_global_218];
  }

  maneuversCopy = v24;
LABEL_29:
}

void __36__CPNavigationManager_addManeuvers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 maneuversIndexed];
  [v3 setTotalManeuverCount:{objc_msgSend(v4, "count")}];
}

- (NSArray)laneGuidances
{
  laneGuidanceIndexed = [(CPNavigationManager *)self laneGuidanceIndexed];
  allValues = [laneGuidanceIndexed allValues];
  v4 = [allValues sortedArrayUsingComparator:&__block_literal_global_221];

  return v4;
}

uint64_t __36__CPNavigationManager_laneGuidances__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedShort:{objc_msgSend(a2, "index")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 index];

  v9 = [v7 numberWithUnsignedShort:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)setLaneGuidances:(id)guidances
{
  v33 = *MEMORY[0x277D85DE8];
  guidancesCopy = guidances;
  supportsAccNav = [(CPNavigationManager *)self supportsAccNav];
  if (supportsAccNav)
  {
    v6 = CarPlayFrameworkACCNavLogging(supportsAccNav);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CPNavigationManager setLaneGuidances:guidancesCopy];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = guidancesCopy;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        v11 = 0;
        do
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = CarPlayFrameworkACCNavLogging(v8);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [CPNavigationManager setLaneGuidances:];
          }

          ++v11;
        }

        while (v9 != v11);
        v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
        v9 = v8;
      }

      while (v8);
    }

    laneGuidanceIndexed = [(CPNavigationManager *)self laneGuidanceIndexed];
    [laneGuidanceIndexed removeAllObjects];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          laneGuidanceIndexed2 = [(CPNavigationManager *)self laneGuidanceIndexed];
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v19, "index")}];
          [laneGuidanceIndexed2 setObject:v19 forKeyedSubscript:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v16);
    }

    [(CPNavigationManager *)self _enumerateNavControllersWithBlock:&__block_literal_global_223];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __40__CPNavigationManager_setLaneGuidances___block_invoke_2;
    v22[3] = &unk_278A10650;
    v22[4] = self;
    [(CPNavigationManager *)self modifyRouteGuidance:v22];
  }
}

void __40__CPNavigationManager_setLaneGuidances___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 laneGuidanceIndexed];
  [v3 setTotalLaneGuidanceCount:{objc_msgSend(v4, "count")}];
}

- (void)addLaneGuidances:(id)guidances
{
  v38 = *MEMORY[0x277D85DE8];
  guidancesCopy = guidances;
  supportsAccNav = [(CPNavigationManager *)self supportsAccNav];
  if (!supportsAccNav)
  {
    goto LABEL_29;
  }

  v6 = CarPlayFrameworkACCNavLogging(supportsAccNav);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CPNavigationManager addLaneGuidances:guidancesCopy];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = guidancesCopy;
  v7 = guidancesCopy;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      v11 = 0;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = CarPlayFrameworkACCNavLogging(v8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [CPNavigationManager addLaneGuidances:];
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
      v9 = v8;
    }

    while (v8);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v7;
  v13 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_26;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v29;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v29 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v28 + 1) + 8 * i);
      laneGuidanceIndexed = [(CPNavigationManager *)self laneGuidanceIndexed];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v18, "index")}];
      v21 = [laneGuidanceIndexed objectForKeyedSubscript:v20];

      if (v21)
      {
        if ([v21 isEqual:v18])
        {
          goto LABEL_22;
        }

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __40__CPNavigationManager_addLaneGuidances___block_invoke;
        v27[3] = &unk_278A10698;
        v27[4] = v18;
        [(CPNavigationManager *)self _enumerateNavControllersWithBlock:v27];
      }

      laneGuidanceIndexed2 = [(CPNavigationManager *)self laneGuidanceIndexed];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v18, "index")}];
      [laneGuidanceIndexed2 setObject:v18 forKeyedSubscript:v23];

      v15 = 1;
LABEL_22:
    }

    v14 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  }

  while (v14);
LABEL_26:

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __40__CPNavigationManager_addLaneGuidances___block_invoke_2;
  v26[3] = &unk_278A10650;
  v26[4] = self;
  [(CPNavigationManager *)self modifyRouteGuidance:v26];
  if (v15)
  {
    [(CPNavigationManager *)self _enumerateNavControllersWithBlock:&__block_literal_global_225];
  }

  guidancesCopy = v24;
LABEL_29:
}

void __40__CPNavigationManager_addLaneGuidances___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 laneGuidanceIndexed];
  [v3 setTotalLaneGuidanceCount:{objc_msgSend(v4, "count")}];
}

- (CAFCarManager)carManager
{
  vehicleStateManager = [(CPNavigationManager *)self vehicleStateManager];
  carManager = [vehicleStateManager carManager];

  return carManager;
}

- (void)setRouteLine:(id)line
{
  lineCopy = line;
  v5 = CarPlayFrameworkACCNavLogging(lineCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CPNavigationManager *)lineCopy setRouteLine:v5, v6, v7, v8, v9, v10, v11];
  }

  routeLine = self->_routeLine;
  self->_routeLine = lineCopy;

  [(CPNavigationManager *)self _sendRouteLine];
}

- (void)_sendRouteLine
{
  [self ownsNavigation];
  routeLine = [self routeLine];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __39__CPNavigationManager__setupConnection__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _connectionRetryDelay];
  v5 = v4;
  v6 = CarPlayFrameworkACCNavLogging(v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [WeakRetained connection];
    *buf = 138543874;
    v14 = WeakRetained;
    v15 = 2114;
    v16 = v7;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&dword_236ED4000, v6, OS_LOG_TYPE_DEFAULT, "connection interrupted %{public}@ %{public}@. Reconnect in %.2f seconds", buf, 0x20u);
  }

  v8 = [WeakRetained connection];
  [v8 invalidate];

  [WeakRetained setConnection:0];
  v9 = dispatch_time(0, (v5 * 1000000000.0));
  v10 = [WeakRetained connectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CPNavigationManager__setupConnection__block_invoke_230;
  block[3] = &unk_278A106E0;
  objc_copyWeak(&v12, (a1 + 32));
  dispatch_after(v9, v10, block);

  objc_destroyWeak(&v12);
}

void __39__CPNavigationManager__setupConnection__block_invoke_230(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setupConnection];
  [WeakRetained _handleConnectionReset];
}

void __39__CPNavigationManager__setupConnection__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CarPlayFrameworkACCNavLogging(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained connection];
    v5 = 138543618;
    v6 = WeakRetained;
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "connection invalidated %{public}@ %{public}@", &v5, 0x16u);
  }

  v4 = [WeakRetained connection];
  [v4 invalidate];

  [WeakRetained setConnection:0];
}

void __39__CPNavigationManager__setupConnection__block_invoke_231(uint64_t a1, uint64_t a2)
{
  v4 = CarPlayFrameworkACCNavLogging(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "inital fetch of owner", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained navigationOwnershipChangedTo:a2];
}

void __39__CPNavigationManager__setupConnection__block_invoke_233(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarPlayFrameworkACCNavLogging(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "inital fetch of navigationIdentifiers", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activeNavigationIdentifiersChangedTo:v3];
}

- (double)_connectionRetryDelay
{
  if (_connectionRetryDelay_onceToken != -1)
  {
    [CPNavigationManager _connectionRetryDelay];
  }

  return *&_connectionRetryDelay_xpcRetryDelay;
}

void __44__CPNavigationManager__connectionRetryDelay__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v0 valueForKey:@"CPXPCRetryDelay"];

  v1 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v1 = v3;
  }

  else
  {
    v2 = 15.0;
  }

  _connectionRetryDelay_xpcRetryDelay = *&v2;
}

- (void)_handleConnectionReset
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CPNavigationManager__handleConnectionReset__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __45__CPNavigationManager__handleConnectionReset__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) ownershipRequested])
  {
    v2 = [*(a1 + 32) navigationService];
    v3 = [*(a1 + 32) identifier];
    [v2 addNavigationOwnerWithIdentifier:v3 accNavRole:{objc_msgSend(*(a1 + 32), "accNavRole")}];

    v4 = [*(a1 + 32) navigationService];
    [v4 beginObserving];
  }
}

- (void)navigationOwnershipChangedTo:(unint64_t)to
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = CarPlayFrameworkACCNavLogging(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"None";
    if (to == 1)
    {
      v6 = @"iOS";
    }

    if (to == 2)
    {
      v6 = @"Car";
    }

    v7 = v6;
    delegate = [(CPNavigationManager *)self delegate];
    *buf = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = delegate;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Dispatching navigationOwnershipChangedTo: %{public}@ delegate=%@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__CPNavigationManager_navigationOwnershipChangedTo___block_invoke;
  v9[3] = &unk_278A10758;
  v9[4] = self;
  v9[5] = to;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __52__CPNavigationManager_navigationOwnershipChangedTo___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = CarPlayFrameworkACCNavLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = @"None";
    if (v3 == 1)
    {
      v4 = @"iOS";
    }

    if (v3 == 2)
    {
      v5 = @"Car";
    }

    else
    {
      v5 = v4;
    }

    v6 = v5;
    v7 = [*(a1 + 32) delegate];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "Updating navigationOwnershipChangedTo: %{public}@ delegate=%@", &v9, 0x16u);
  }

  return [*(a1 + 32) setOwner:*(a1 + 40)];
}

- (void)activeNavigationIdentifiersChangedTo:(id)to
{
  toCopy = to;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__CPNavigationManager_activeNavigationIdentifiersChangedTo___block_invoke;
  v6[3] = &unk_278A10780;
  v7 = toCopy;
  selfCopy = self;
  v5 = toCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __60__CPNavigationManager_activeNavigationIdentifiersChangedTo___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = CarPlayFrameworkACCNavLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "activeNavigationIdentifiers=%{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) lastObject];
  [*(a1 + 40) setLastNavigatingBundleIdentifier:v4];
}

- (void)didUpdateActiveComponents:(id)components
{
  componentsCopy = components;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CPNavigationManager_didUpdateActiveComponents___block_invoke;
  v6[3] = &unk_278A10780;
  v7 = componentsCopy;
  selfCopy = self;
  v5 = componentsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __49__CPNavigationManager_didUpdateActiveComponents___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = CarPlayFrameworkACCNavLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v38 = v3;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "activeComponents=%{public}@", buf, 0xCu);
  }

  v4 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [*(a1 + 40) accNavControllersIndexed];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    v10 = MEMORY[0x277CBEC28];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v4 setObject:v10 forKeyedSubscript:*(*(&v31 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v12 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    v15 = MEMORY[0x277CBEC38];
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v27 + 1) + 8 * j);
        v18 = [v17 uuid];
        [v4 setObject:v15 forKeyedSubscript:v18];

        v19 = [*(a1 + 40) accNavControllersIndexed];
        v20 = [v17 uuid];
        v21 = [v19 objectForKeyedSubscript:v20];

        if (!v21)
        {
          v22 = [objc_alloc(MEMORY[0x277CF8A88]) initWithComponent:v17 delegate:*(a1 + 40)];
          v23 = [*(a1 + 40) accNavControllersIndexed];
          v24 = [v17 uuid];
          [v23 setObject:v22 forKeyedSubscript:v24];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v13);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __49__CPNavigationManager_didUpdateActiveComponents___block_invoke_242;
  v26[3] = &unk_278A107A8;
  v26[4] = *(a1 + 40);
  [v4 enumerateKeysAndObjectsUsingBlock:v26];
}

void __49__CPNavigationManager_didUpdateActiveComponents___block_invoke_242(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if (([a3 BOOLValue] & 1) == 0)
  {
    v5 = [*(a1 + 32) accNavControllersIndexed];
    [v5 removeObjectForKey:v6];
  }
}

- (void)willSendGuidanceStateLoading
{
  routeGuidance = [self routeGuidance];
  v2 = NSStringFromCPGuidanceState([routeGuidance guidanceState]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)sendInfo:(id)info toComponentUID:(id)d
{
  infoCopy = info;
  dCopy = d;
  v8 = dCopy;
  if (infoCopy)
  {
    if ([(CPNavigationManager *)self accNavRole])
    {
      if ([(CPNavigationManager *)self accNavRole]== 2)
      {
        navigationService = CarPlayFrameworkACCNavLogging(2);
        if (os_log_type_enabled(navigationService, OS_LOG_TYPE_DEBUG))
        {
          [CPNavigationManager sendInfo:v8 toComponentUID:self];
        }
      }

      else
      {
        ownsNavigation = [(CPNavigationManager *)self ownsNavigation];
        v11 = ownsNavigation;
        navigationService = CarPlayFrameworkACCNavLogging(ownsNavigation);
        v12 = os_log_type_enabled(navigationService, OS_LOG_TYPE_DEBUG);
        if (v11)
        {
          if (v12)
          {
            [CPNavigationManager sendInfo:toComponentUID:];
          }

          navigationService = [(CPNavigationManager *)self navigationService];
          [navigationService sendInfo:infoCopy toComponentUID:v8];
        }

        else if (v12)
        {
          [(CPNavigationManager *)v8 sendInfo:navigationService toComponentUID:?];
        }
      }
    }

    else
    {
      navigationService = CarPlayFrameworkACCNavLogging(0);
      if (os_log_type_enabled(navigationService, OS_LOG_TYPE_DEBUG))
      {
        [CPNavigationManager sendInfo:v8 toComponentUID:self];
      }
    }
  }

  else
  {
    navigationService = CarPlayFrameworkACCNavLogging(dCopy);
    if (os_log_type_enabled(navigationService, OS_LOG_TYPE_DEBUG))
    {
      [CPNavigationManager sendInfo:toComponentUID:];
    }
  }
}

- (void)vehicleStateManager:(id)manager didUpdateRouteSharingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6 = CarPlayFrameworkACCNavLogging(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CPNavigationManager *)enabledCopy vehicleStateManager:v6 didUpdateRouteSharingEnabled:v7, v8, v9, v10, v11, v12];
  }

  delegate = [(CPNavigationManager *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(CPNavigationManager *)self delegate];
    [delegate2 didUpdateRouteSharingActive:enabledCopy];
  }

  [(CPNavigationManager *)self _sendRouteLine];
}

void __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_180_cold_1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_187_cold_1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)startNavigationWithRouteInfo:(unsigned __int8)a1 .cold.1(unsigned __int8 a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromCPGuidanceState(a1);
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_236ED4000, a2, OS_LOG_TYPE_FAULT, "unexpected state in startNavigation: %{public}@", v4, 0xCu);
}

- (void)setRouteGuidance:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [CPAccNavUpdate description:a1];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setChargePrecondition:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_236ED4000, v0, OS_LOG_TYPE_DEBUG, "Setting ChargePrecondition: %{public}@", v1, 0xCu);
}

- (void)setManeuvers:(void *)a1 .cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)setManeuvers:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v1 = [CPAccNavUpdate description:v0];
  OUTLINED_FUNCTION_6(v1, 5.8381e-34);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5);
}

- (void)addManeuvers:(void *)a1 .cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)addManeuvers:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v1 = [CPAccNavUpdate description:v0];
  OUTLINED_FUNCTION_6(v1, 5.8381e-34);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5);
}

- (void)setLaneGuidances:(void *)a1 .cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)setLaneGuidances:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v1 = [CPAccNavUpdate description:v0];
  OUTLINED_FUNCTION_6(v1, 5.8381e-34);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5);
}

- (void)addLaneGuidances:(void *)a1 .cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)addLaneGuidances:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v1 = [CPAccNavUpdate description:v0];
  OUTLINED_FUNCTION_6(v1, 5.8381e-34);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5);
}

- (void)setRouteLine:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 136315394;
  *&v8[4] = "[CPNavigationManager setRouteLine:]";
  *&v8[12] = 2050;
  *&v8[14] = a1;
  OUTLINED_FUNCTION_5(&dword_236ED4000, a2, a3, "%s: routeLine=%{public}p", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16], *MEMORY[0x277D85DE8]);
}

- (void)sendInfo:(NSObject *)a3 toComponentUID:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [a2 identifier];
  v7 = [a2 owner];
  v8 = @"None";
  if (v7 == 1)
  {
    v8 = @"iOS";
  }

  if (v7 == 2)
  {
    v8 = @"Car";
  }

  v9 = v8;
  v10 = [a2 lastNavigatingBundleIdentifier];
  v13[0] = 136316162;
  OUTLINED_FUNCTION_1_0();
  v14 = a1;
  v15 = v11;
  v16 = v6;
  v17 = v11;
  v18 = v9;
  v19 = v11;
  v20 = v12;
  _os_log_debug_impl(&dword_236ED4000, a3, OS_LOG_TYPE_DEBUG, "%s: componentUID=%{public}@ %{public}@ does not own navigation (owner=%{public}@ lastNavigatingBundleIdentifier=%{public}@)", v13, 0x34u);
}

- (void)sendInfo:toComponentUID:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_1_0();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_debug_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEBUG, "%s: componentUID=%{public}@ info=%{public}@", v4, 0x20u);
}

- (void)sendInfo:(uint64_t)a1 toComponentUID:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)sendInfo:(uint64_t)a1 toComponentUID:(void *)a2 .cold.4(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)sendInfo:toComponentUID:.cold.5()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_236ED4000, v0, v1, "%s: componentUID=%{public}@ nothing to send", v2, v3, v4, v5, v6);
}

- (void)vehicleStateManager:(uint64_t)a3 didUpdateRouteSharingEnabled:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  *v9 = 136315394;
  *&v9[4] = "[CPNavigationManager vehicleStateManager:didUpdateRouteSharingEnabled:]";
  *&v9[12] = 2114;
  *&v9[14] = v8;
  OUTLINED_FUNCTION_5(&dword_236ED4000, a2, a3, "%s: enabled=%{public}@", a5, a6, a7, a8, *v9, *&v9[8], *&v9[16], *MEMORY[0x277D85DE8]);
}

@end