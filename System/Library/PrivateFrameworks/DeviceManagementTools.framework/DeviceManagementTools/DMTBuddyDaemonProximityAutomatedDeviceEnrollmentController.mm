@interface DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController
- (DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController)initWithBroadcastingProvider:(id)provider enrollmentPrimitives:(id)primitives deviceInformationPrimitives:(id)informationPrimitives enrollmentInformationPrimitives:(id)enrollmentInformationPrimitives reachabilityPrimitives:(id)reachabilityPrimitives wifiActivationPrimitives:(id)activationPrimitives wifiPrimitives:(id)wifiPrimitives profileInstallationPrimitives:(id)self0 destructiveErasePrimitives:(id)self1 powerOffPrimitives:(id)self2 delegate:(id)self3;
- (DMTBuddyDaemonProximityAutomatedDeviceEnrollmentControllerDelegate)delegate;
- (NSString)remoteHostLocaleIdentifier;
- (id)makeFailureCompletionViewModelWithError:(id)error;
- (id)makeStatusViewModelForCurrentEnrollerState;
- (id)makeSuccessfulCompletionViewModel;
- (id)server:(id)server clientSession:(id)session operationForRequest:(id)request error:(id *)error;
- (void)addHandlersToBroadcaster:(id)broadcaster;
- (void)beginBroadcasting;
- (void)beginEraseAndShutdown;
- (void)beginObservingEnroller;
- (void)broadcasterEncounteredError:(id)error;
- (void)broadcasterHasPairedTransport:(id)transport;
- (void)broadcasterUpdatedDisplayedPin:(id)pin;
- (void)dealloc;
- (void)delegateEnrollmentError:(id)error;
- (void)delegateStatusUpdate;
- (void)delegateSuccessfullEnrollment;
- (void)endBroadcasting;
- (void)endObservingEnrollerIfNeeded;
- (void)handleServerFailureWithError:(id)error;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeHandlersFromBroadcaster:(id)broadcaster;
- (void)resetNetworking;
- (void)server:(id)server clientSession:(id)session didInterruptWithError:(id)error;
- (void)server:(id)server clientSessionDidDisconnect:(id)disconnect;
- (void)serverDidInvalidate:(id)invalidate;
@end

@implementation DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _DMTLogGeneral_6(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543362;
    v8 = v5;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_INFO, "%{public}@ dealloc'd", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController;
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)&v6 dealloc];
}

- (DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController)initWithBroadcastingProvider:(id)provider enrollmentPrimitives:(id)primitives deviceInformationPrimitives:(id)informationPrimitives enrollmentInformationPrimitives:(id)enrollmentInformationPrimitives reachabilityPrimitives:(id)reachabilityPrimitives wifiActivationPrimitives:(id)activationPrimitives wifiPrimitives:(id)wifiPrimitives profileInstallationPrimitives:(id)self0 destructiveErasePrimitives:(id)self1 powerOffPrimitives:(id)self2 delegate:(id)self3
{
  providerCopy = provider;
  primitivesCopy = primitives;
  informationPrimitivesCopy = informationPrimitives;
  informationPrimitivesCopy2 = informationPrimitives;
  enrollmentInformationPrimitivesCopy = enrollmentInformationPrimitives;
  reachabilityPrimitivesCopy = reachabilityPrimitives;
  activationPrimitivesCopy = activationPrimitives;
  wifiPrimitivesCopy = wifiPrimitives;
  v23 = primitivesCopy;
  installationPrimitivesCopy = installationPrimitives;
  erasePrimitivesCopy = erasePrimitives;
  v26 = reachabilityPrimitivesCopy;
  offPrimitivesCopy = offPrimitives;
  delegateCopy = delegate;
  v43.receiver = self;
  v43.super_class = DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController;
  v29 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)&v43 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_broadcastingProvider, provider);
    objc_storeWeak(&v30->_delegate, delegateCopy);
    objc_storeStrong(&v30->_deviceInformationPrimitives, informationPrimitivesCopy);
    v31 = [[DMTAutomatedDeviceEnroller alloc] initWithEnrollmentPrimitives:v23 enrollmentInformationPrimitives:enrollmentInformationPrimitivesCopy reachabilityPrimitives:v26 activationPrimitives:activationPrimitivesCopy wifiPrimitives:wifiPrimitivesCopy profileInstallationPrimitives:installationPrimitivesCopy destructiveErasePrimitives:erasePrimitivesCopy nonDestructiveErasePrimitives:0 powerOffPrimitives:offPrimitivesCopy];
    enroller = v30->_enroller;
    v30->_enroller = v31;

    v33 = [[DMTTaskOperationBuilder alloc] initWithDeviceInfoPrimitives:informationPrimitivesCopy2 enrollmentPrerequisiteReceiver:v30->_enroller enrollmentInitiator:v30->_enroller enrollmentStateProvider:v30->_enroller];
    operationBuilder = v30->_operationBuilder;
    v30->_operationBuilder = v33;

    v35 = objc_opt_new();
    taskServer = v30->_taskServer;
    v30->_taskServer = v35;

    [(CATTaskServer *)v30->_taskServer setDelegate:v30];
  }

  return v30;
}

- (NSString)remoteHostLocaleIdentifier
{
  broadcaster = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcaster];
  remoteHostLocaleIdentifier = [broadcaster remoteHostLocaleIdentifier];

  return remoteHostLocaleIdentifier;
}

- (void)beginBroadcasting
{
  v15 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    isActive = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self isActive];
    if (isActive)
    {
      v5 = _DMTLogGeneral_6(isActive);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = NSStringFromSelector(a2);
        v13 = 138543362;
        v14 = v6;
        _os_log_impl(&dword_24891B000, v5, OS_LOG_TYPE_INFO, "Ignoring %{public}@, already active", &v13, 0xCu);
      }
    }

    else
    {
      v7 = _DMTLogGeneral_6([(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self setActive:1]);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(a2);
        v13 = 138543362;
        v14 = v8;
        _os_log_impl(&dword_24891B000, v7, OS_LOG_TYPE_INFO, "%{public}@", &v13, 0xCu);
      }

      broadcastingProvider = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcastingProvider];
      broadcaster = [broadcastingProvider broadcaster];

      [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self addHandlersToBroadcaster:broadcaster];
      [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self setBroadcaster:broadcaster];
      broadcaster2 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcaster];
      [broadcaster2 addObserver:self forKeyPath:@"broadcasting" options:3 context:@"EnrollmentControllerContext"];

      broadcaster3 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcaster];
      [broadcaster3 startBroadcasting];
    }
  }

  else
  {

    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)endBroadcasting
{
  v15 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    isActive = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self isActive];
    if (isActive)
    {
      v5 = _DMTLogGeneral_6([(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self setActive:0]);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = NSStringFromSelector(a2);
        *buf = 138543362;
        v14 = v6;
        _os_log_impl(&dword_24891B000, v5, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
      }

      broadcaster = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcaster];
      [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self removeHandlersFromBroadcaster:broadcaster];

      broadcaster2 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcaster];
      [broadcaster2 removeObserver:self forKeyPath:@"broadcasting" context:@"EnrollmentControllerContext"];

      broadcaster3 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcaster];
      [broadcaster3 invalidate];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController_endBroadcasting__block_invoke;
      block[3] = &unk_278F5DEC8;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      v10 = _DMTLogGeneral_6(isActive);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NSStringFromSelector(a2);
        *buf = 138543362;
        v14 = v11;
        _os_log_impl(&dword_24891B000, v10, OS_LOG_TYPE_INFO, "Ignoring %{public}@, not active", buf, 0xCu);
      }
    }
  }

  else
  {

    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)beginEraseAndShutdown
{
  v10 = *MEMORY[0x277D85DE8];
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  if (isMainThread)
  {
    v5 = _DMTLogGeneral_6(isMainThread);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(a2);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_24891B000, v5, OS_LOG_TYPE_INFO, "%{public}@", &v8, 0xCu);
    }

    enroller = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
    [enroller eraseAndShutDownWithExternalError:0];
  }

  else
  {

    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)addHandlersToBroadcaster:(id)broadcaster
{
  broadcasterCopy = broadcaster;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController_addHandlersToBroadcaster___block_invoke;
  v9[3] = &unk_278F5E740;
  objc_copyWeak(&v10, &location);
  [broadcasterCopy setShowPinHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController_addHandlersToBroadcaster___block_invoke_2;
  v7[3] = &unk_278F5E390;
  objc_copyWeak(&v8, &location);
  [broadcasterCopy setShowErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController_addHandlersToBroadcaster___block_invoke_3;
  v5[3] = &unk_278F5E768;
  objc_copyWeak(&v6, &location);
  [broadcasterCopy setPairedTransportHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __87__DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController_addHandlersToBroadcaster___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained broadcasterUpdatedDisplayedPin:v3];
}

void __87__DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController_addHandlersToBroadcaster___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained broadcasterEncounteredError:v3];
}

void __87__DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController_addHandlersToBroadcaster___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained broadcasterHasPairedTransport:v3];
}

- (void)removeHandlersFromBroadcaster:(id)broadcaster
{
  broadcasterCopy = broadcaster;
  [broadcasterCopy setShowPinHandler:0];
  [broadcasterCopy setShowErrorHandler:0];
  [broadcasterCopy setPairedTransportHandler:0];
}

- (void)beginObservingEnroller
{
  v1 = NSStringFromSelector(self);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_24891B000, v2, v3, "Already observing enroller, ignoring %{public}@", v4, v5, v6, v7);
}

- (void)endObservingEnrollerIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  isObservingEnroller = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self isObservingEnroller];
  if (isObservingEnroller)
  {
    enroller = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
    [enroller removeObserver:self forKeyPath:@"enrollmentState" context:@"EnrollmentControllerContext"];

    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self setObservingEnroller:0];
  }

  else
  {
    v6 = _DMTLogGeneral_6(isObservingEnroller);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_24891B000, v6, OS_LOG_TYPE_INFO, "Not observing enroller, ignoring %{public}@", &v8, 0xCu);
    }
  }
}

- (void)broadcasterUpdatedDisplayedPin:(id)pin
{
  pinCopy = pin;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    isActive = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self isActive];
    if (isActive)
    {
      if (pinCopy)
      {
        delegate = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegate];
        [delegate enrollmentController:self needsToDisplayPin:pinCopy];
      }

      else
      {
        delegate = _DMTLogGeneral_6(isActive);
        if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEBUG))
        {
          [DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController broadcasterUpdatedDisplayedPin:?];
        }
      }
    }

    else
    {
      v8 = _DMTLogGeneral_6(isActive);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_24891B000, v8, OS_LOG_TYPE_INFO, "Ignoring updated Pin, no longer active", v9, 2u);
      }
    }
  }

  else
  {
    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)broadcasterEncounteredError:(id)error
{
  errorCopy = error;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    userInfo = [errorCopy userInfo];
    v7 = *MEMORY[0x277CCA7E8];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    userInfo2 = [v8 userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:v7];

    if (v10)
    {
      domain = [v10 domain];
      if ([domain isEqualToString:*MEMORY[0x277CF9518]])
      {
        code = [v10 code];

        if (code == 702)
        {
          delegate = _DMTLogGeneral_6(v11);
          if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEBUG))
          {
            [DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController broadcasterEncounteredError:delegate];
          }

LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    v15 = _DMTLogGeneral_6(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController broadcasterEncounteredError:errorCopy];
    }

    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self endBroadcasting];
    delegate = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegate];
    [delegate enrollmentController:self hasBroadcastError:errorCopy];
    goto LABEL_12;
  }

  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
LABEL_13:
}

- (void)broadcasterHasPairedTransport:(id)transport
{
  transportCopy = transport;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self beginObservingEnroller];
    taskServer = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self taskServer];
    [taskServer connectWithClientTransport:transportCopy];

    delegate = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegate];
    makeStatusViewModelForCurrentEnrollerState = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self makeStatusViewModelForCurrentEnrollerState];
    [delegate enrollmentControllerHasPaired:self withInitialViewModel:makeStatusViewModelForCurrentEnrollerState];
  }

  else
  {
    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)delegateSuccessfullEnrollment
{
  v3 = _DMTLogGeneral_6([(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self setComplete:1]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_INFO, "Successfully enrolled", v6, 2u);
  }

  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self resetNetworking];
  makeSuccessfulCompletionViewModel = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self makeSuccessfulCompletionViewModel];
  delegate = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegate];
  [delegate enrollmentController:self hasCompletedWithViewModel:makeSuccessfulCompletionViewModel];
}

- (void)handleServerFailureWithError:(id)error
{
  errorCopy = error;
  isComplete = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self isComplete];
  if ((isComplete & 1) == 0)
  {
    v6 = _DMTLogGeneral_6(isComplete);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController handleServerFailureWithError:];
    }

    enroller = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
    enrollmentState = [enroller enrollmentState];

    v10 = _DMTLogGeneral_6(v9);
    v11 = v10;
    if (enrollmentState >= 5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController handleServerFailureWithError:enrollmentState];
      }

      goto LABEL_12;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController handleServerFailureWithError:enrollmentState];
    }

    if (!errorCopy)
    {
      v11 = DMTErrorWithCodeAndUserInfo(90, 0);
      [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegateEnrollmentError:v11];
LABEL_12:

      goto LABEL_13;
    }

    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegateEnrollmentError:errorCopy];
  }

LABEL_13:
}

- (void)delegateEnrollmentError:(id)error
{
  errorCopy = error;
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self setComplete:1];
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self resetNetworking];
  v6 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self makeFailureCompletionViewModelWithError:errorCopy];

  delegate = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegate];
  [delegate enrollmentController:self hasCompletedWithViewModel:v6];
}

- (void)delegateStatusUpdate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _DMTLogGeneral_6(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCABB0];
    enroller = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
    v6 = [v4 numberWithInteger:{objc_msgSend(enroller, "enrollmentState")}];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_DEFAULT, "Enroller changed status to: %{public}@", &v9, 0xCu);
  }

  makeStatusViewModelForCurrentEnrollerState = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self makeStatusViewModelForCurrentEnrollerState];
  delegate = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegate];
  [delegate enrollmentController:self hasUpdatedWithViewModel:makeStatusViewModelForCurrentEnrollerState];
}

- (void)resetNetworking
{
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self endBroadcasting];
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self endObservingEnrollerIfNeeded];
  taskServer = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self taskServer];
  [taskServer disconnectAllClientSessions];
}

- (id)makeStatusViewModelForCurrentEnrollerState
{
  v15 = [DMTEnrollmentStatusViewModel alloc];
  enroller = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  organizationName = [enroller organizationName];
  enroller2 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  organizationType = [enroller2 organizationType];
  deviceInformationPrimitives = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self deviceInformationPrimitives];
  deviceClass = [deviceInformationPrimitives deviceClass];
  enroller3 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  enrollmentState = [enroller3 enrollmentState];
  enroller4 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  networkName = [enroller4 networkName];
  v13 = [(DMTEnrollmentStatusViewModel *)v15 initWithOrganizationName:organizationName organizationType:organizationType localizedDeviceClass:deviceClass enrollmentState:enrollmentState networkName:networkName];

  return v13;
}

- (id)makeSuccessfulCompletionViewModel
{
  v3 = [DMTEnrollmentCompletionViewModel alloc];
  enroller = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  organizationName = [enroller organizationName];
  enroller2 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  organizationType = [enroller2 organizationType];
  enroller3 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  mdmServerName = [enroller3 mdmServerName];
  deviceInformationPrimitives = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self deviceInformationPrimitives];
  deviceClass = [deviceInformationPrimitives deviceClass];
  v12 = [(DMTEnrollmentCompletionViewModel *)v3 initSuccessfulEnrollmentInOrganizationName:organizationName organizationType:organizationType mdmServerName:mdmServerName localizedDeviceClass:deviceClass];

  return v12;
}

- (id)makeFailureCompletionViewModelWithError:(id)error
{
  errorCopy = error;
  v5 = [DMTEnrollmentCompletionViewModel alloc];
  deviceInformationPrimitives = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self deviceInformationPrimitives];
  deviceClass = [deviceInformationPrimitives deviceClass];
  v8 = [(DMTEnrollmentCompletionViewModel *)v5 initForEnrollmentFailureWithError:errorCopy localizedDeviceClass:deviceClass];

  return v8;
}

- (void)server:(id)server clientSession:(id)session didInterruptWithError:(id)error
{
  errorCopy = error;
  v7 = _DMTLogGeneral_6(errorCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController server:clientSession:didInterruptWithError:];
  }

  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self handleServerFailureWithError:errorCopy];
}

- (void)server:(id)server clientSessionDidDisconnect:(id)disconnect
{
  v10 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  v6 = _DMTLogGeneral_6(disconnectCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = disconnectCopy;
    _os_log_impl(&dword_24891B000, v6, OS_LOG_TYPE_INFO, "Client Session did disconnect: %{public}@", &v8, 0xCu);
  }

  v7 = DMTErrorWithCodeAndUserInfo(91, 0);
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self handleServerFailureWithError:v7];
}

- (void)serverDidInvalidate:(id)invalidate
{
  v4 = _DMTLogGeneral_6(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_24891B000, v4, OS_LOG_TYPE_INFO, "Task Server invalidated", v6, 2u);
  }

  v5 = DMTErrorWithCodeAndUserInfo(90, 0);
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self handleServerFailureWithError:v5];
}

- (id)server:(id)server clientSession:(id)session operationForRequest:(id)request error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  operationBuilder = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self operationBuilder];
  LODWORD(error) = [operationBuilder validateRequest:requestCopy error:error];

  if (error)
  {
    v11 = _DMTLogGeneral_6(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v17 = 138543362;
      v18 = v13;
      _os_log_impl(&dword_24891B000, v11, OS_LOG_TYPE_INFO, "Creating operation for request: %{public}@", &v17, 0xCu);
    }

    operationBuilder2 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self operationBuilder];
    v15 = [operationBuilder2 taskOperationForRequest:requestCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v35 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context != @"EnrollmentControllerContext")
  {
    v28.receiver = self;
    v28.super_class = DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController;
    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)&v28 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_24;
  }

  broadcaster = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcaster];
  if (broadcaster == objectCopy)
  {
    v14 = [pathCopy isEqualToString:@"broadcasting"];

    if (!v14)
    {
      goto LABEL_16;
    }

    broadcaster = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v16 = [broadcaster isEqualToNumber:v15];
    if ((v16 & 1) == 0)
    {
      v17 = _DMTLogGeneral_6(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        if ([broadcaster BOOLValue])
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        bOOLValue = [v15 BOOLValue];
        *buf = 138543874;
        v22 = @"NO";
        if (bOOLValue)
        {
          v22 = @"YES";
        }

        v30 = v19;
        v31 = 2114;
        v32 = v20;
        v33 = 2114;
        v34 = v22;
        _os_log_impl(&dword_24891B000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: isBroadcasting changed from %{public}@ to %{public}@", buf, 0x20u);
      }
    }
  }

LABEL_16:
  enroller = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  if (enroller != objectCopy)
  {
LABEL_17:

    goto LABEL_24;
  }

  v24 = [pathCopy isEqualToString:@"enrollmentState"];

  if (!v24)
  {
    goto LABEL_24;
  }

  enroller2 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  enrollmentState = [enroller2 enrollmentState];

  if (enrollmentState == 14)
  {
    enroller = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
    enrollmentError = [enroller enrollmentError];
    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegateEnrollmentError:enrollmentError];

    goto LABEL_17;
  }

  if (enrollmentState == 10)
  {
    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegateSuccessfullEnrollment];
  }

  else
  {
    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegateStatusUpdate];
  }

LABEL_24:
}

- (DMTBuddyDaemonProximityAutomatedDeviceEnrollmentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)broadcasterUpdatedDisplayedPin:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v3, v4, "%{public}@ was asked to dismiss the Pin, since we can't tell this apart from successful pairings, we'll ignore it", v5, v6, v7, v8);
}

- (void)broadcasterEncounteredError:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 verboseDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_24891B000, v2, v3, "Broadcaster has encountered error, forwarding to delegate: %{public}@", v4, v5, v6, v7);
}

- (void)handleServerFailureWithError:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_24891B000, v0, OS_LOG_TYPE_ERROR, "Handling server failure: %{public}@", v1, 0xCu);
}

- (void)handleServerFailureWithError:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_24891B000, v2, v3, "Tearing down due to enrollment state: %{public}@", v4, v5, v6, v7);
}

- (void)handleServerFailureWithError:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v2, v3, "Current enrollment state is: %{public}@, ignoring failure, we're already independent", v4, v5, v6, v7);
}

- (void)server:clientSession:didInterruptWithError:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_24891B000, v0, OS_LOG_TYPE_ERROR, "Client Session interrupted: %{public}@", v1, 0xCu);
}

@end