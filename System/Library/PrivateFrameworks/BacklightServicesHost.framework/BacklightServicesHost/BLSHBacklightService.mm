@interface BLSHBacklightService
+ (id)serviceWithPlatformProvider:(id)provider osInterfaceProvider:(id)interfaceProvider inactiveBudgetPolicy:(id)policy localAssertionService:(id)service localOnly:(BOOL)only;
- (BLSHBacklightService)initWithPlatformProvider:(id)provider osInterfaceProvider:(id)interfaceProvider inactiveBudgetPolicy:(id)policy localAssertionService:(id)service localOnly:(BOOL)only;
@end

@implementation BLSHBacklightService

+ (id)serviceWithPlatformProvider:(id)provider osInterfaceProvider:(id)interfaceProvider inactiveBudgetPolicy:(id)policy localAssertionService:(id)service localOnly:(BOOL)only
{
  onlyCopy = only;
  serviceCopy = service;
  policyCopy = policy;
  interfaceProviderCopy = interfaceProvider;
  providerCopy = provider;
  v16 = [[self alloc] initWithPlatformProvider:providerCopy osInterfaceProvider:interfaceProviderCopy inactiveBudgetPolicy:policyCopy localAssertionService:serviceCopy localOnly:onlyCopy];

  return v16;
}

- (BLSHBacklightService)initWithPlatformProvider:(id)provider osInterfaceProvider:(id)interfaceProvider inactiveBudgetPolicy:(id)policy localAssertionService:(id)service localOnly:(BOOL)only
{
  v47[12] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  interfaceProviderCopy = interfaceProvider;
  policyCopy = policy;
  serviceCopy = service;
  v45.receiver = self;
  v45.super_class = BLSHBacklightService;
  v16 = [(BLSHBacklightService *)&v45 init];
  if (v16)
  {
    v17 = [[BLSHBacklightTransitionStateMachine alloc] initWithPlatformProvider:providerCopy osInterfaceProvider:interfaceProviderCopy inactiveBudgetPolicy:policyCopy];
    transitionStateMachine = v16->_transitionStateMachine;
    v16->_transitionStateMachine = v17;

    v19 = [[BLSHBacklightStateMachine alloc] initWithPlatformProvider:providerCopy eventPerformer:v16->_transitionStateMachine osInterfaceProvider:interfaceProviderCopy];
    stateMachine = v16->_stateMachine;
    v16->_stateMachine = v19;

    [BLSHBacklightHost registerSharedBacklightHost:v16->_stateMachine];
    [MEMORY[0x277CF0880] setDefaultBacklightProxy:v16->_stateMachine];
    [(BLSHBacklightStateMachine *)v16->_stateMachine registerHandlersForService:serviceCopy];
    [(BLSHBacklightTransitionStateMachine *)v16->_transitionStateMachine registerHandlersForService:serviceCopy];
    if (!only)
    {
      v21 = [BLSHXPCBacklightProxyHostServer serverWithLocalBacklightProxy:v16->_stateMachine];
      backlightXPCServer = v16->_backlightXPCServer;
      v16->_backlightXPCServer = v21;

      if (os_variant_has_internal_diagnostics())
      {
        v23 = [BLSHDiagnosticsServer serverWithFlipbookDiagnosticsProvider:v16->_transitionStateMachine];
        diagnosticsServer = v16->_diagnosticsServer;
        v16->_diagnosticsServer = v23;

        v39 = [BLSHWatchdogTester alloc];
        v47[0] = v16->_transitionStateMachine;
        v46[0] = @"com.apple.BacklightServices.BLSHBacklightTransitionStateMachine.watchdogtest";
        v46[1] = @"com.apple.BacklightServices.BLSHBacklightDisplayStateMachine.watchdogtest";
        displayStateMachine = [v47[0] displayStateMachine];
        v47[1] = displayStateMachine;
        v43 = [@"com.apple.BacklightServices.BLSHBacklightTransitionStateMachine.watchdogtest" stringByAppendingString:0x283379D80];
        v46[2] = v43;
        v47[2] = v16->_transitionStateMachine;
        v42 = [@"com.apple.BacklightServices.BLSHBacklightDisplayStateMachine.watchdogtest" stringByAppendingString:0x283379D80];
        v46[3] = v42;
        displayStateMachine2 = [(BLSHBacklightTransitionStateMachine *)v16->_transitionStateMachine displayStateMachine];
        v47[3] = displayStateMachine2;
        v40 = [@"com.apple.BacklightServices.BLSHBacklightDisplayStateMachine.watchdogtest" stringByAppendingString:0x283379D60];
        v46[4] = v40;
        displayStateMachine3 = [(BLSHBacklightTransitionStateMachine *)v16->_transitionStateMachine displayStateMachine];
        v46[5] = @"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest";
        v47[4] = displayStateMachine3;
        v47[5] = interfaceProviderCopy;
        v37 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379D80];
        v46[6] = v37;
        v47[6] = interfaceProviderCopy;
        v36 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379DA0];
        v46[7] = v36;
        v47[7] = interfaceProviderCopy;
        v35 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379DC0];
        v46[8] = v35;
        v47[8] = interfaceProviderCopy;
        v25 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379D60];
        v46[9] = v25;
        displayStateMachine4 = [(BLSHBacklightTransitionStateMachine *)v16->_transitionStateMachine displayStateMachine];
        v47[9] = displayStateMachine4;
        v27 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379DE0];
        v46[10] = v27;
        v47[10] = interfaceProviderCopy;
        v28 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379E00];
        v46[11] = v28;
        v47[11] = interfaceProviderCopy;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:12];
        v30 = [(BLSHWatchdogTester *)v39 initWithWatchdogProviderDelegate:interfaceProviderCopy testables:v29];
        watchdogTester = v16->_watchdogTester;
        v16->_watchdogTester = v30;

        v32 = [[BLSHCriticalAssertTester alloc] initWithNotificationName:@"com.apple.BacklightServices.criticalasserttest"];
        criticalAssertTester = v16->_criticalAssertTester;
        v16->_criticalAssertTester = v32;
      }
    }
  }

  return v16;
}

@end