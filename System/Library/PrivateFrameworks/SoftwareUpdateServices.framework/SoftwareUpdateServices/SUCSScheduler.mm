@interface SUCSScheduler
+ (BOOL)_callInProgress;
+ (BOOL)_getBoolForKeyPath:(id)path;
+ (BOOL)_hasNetworkConnection;
+ (id)batteryLevelPredicate:(id)predicate;
+ (id)carplayPredicate:(BOOL)predicate;
+ (id)networkPredicate:(BOOL)predicate;
+ (id)phoneCallPredicate:(BOOL)predicate;
+ (int)_batteryLevel;
+ (int)_getIntForKeyPath:(id)path;
- (SUCSScheduler)init;
- (void)dealloc;
- (void)registerInstallAlertConditionsWithHandler:(id)handler;
- (void)unregisterInstallationAlertAction;
@end

@implementation SUCSScheduler

- (SUCSScheduler)init
{
  v7.receiver = self;
  v7.super_class = SUCSScheduler;
  v2 = [(SUCSScheduler *)&v7 init];
  if (v2)
  {
    userContext = [MEMORY[0x277CFE318] userContext];
    context = v2->_context;
    v2->_context = userContext;

    registration = v2->_registration;
    v2->_registration = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(SUCSScheduler *)self unregisterInstallationAlertAction];
  v3.receiver = self;
  v3.super_class = SUCSScheduler;
  [(SUCSScheduler *)&v3 dealloc];
}

- (void)registerInstallAlertConditionsWithHandler:(id)handler
{
  v23[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = MEMORY[0x277CFE360];
  v6 = [SUCSScheduler batteryLevelPredicate:&unk_287B6F7C0];
  v23[0] = v6;
  v7 = [SUCSScheduler phoneCallPredicate:0];
  v23[1] = v7;
  v8 = [SUCSScheduler networkPredicate:1];
  v23[2] = v8;
  v9 = [SUCSScheduler carplayPredicate:0];
  v23[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v11 = [v5 andPredicateWithSubpredicates:v10];

  userContext = [MEMORY[0x277CFE318] userContext];
  LODWORD(v7) = [userContext evaluatePredicate:v11];

  if (v7)
  {
    SULogInfo(@"Installation alert predicate conditions met", v13, v14, v15, v16, v17, v18, v19, v22);
    handlerCopy[2](handlerCopy, @"com.apple.softwareupdateservicesd.installAlert");
  }

  else
  {
    v20 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.softwareupdateservicesd.installAlert" contextualPredicate:v11 callback:handlerCopy];
    registration = self->_registration;
    self->_registration = v20;

    [(_CDContext *)self->_context registerCallback:self->_registration];
  }
}

- (void)unregisterInstallationAlertAction
{
  if (self->_registration)
  {
    context = self->_context;
    if (context)
    {
      [(_CDContext *)context deregisterCallback:?];
    }

    self->_registration = 0;

    MEMORY[0x2821F9730]();
  }
}

+ (id)networkPredicate:(BOOL)predicate
{
  predicateCopy = predicate;
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CFE338] predicateForCellConnectionAvailability:?];
  v5 = [MEMORY[0x277CFE338] predicateForWiFiConnectionAvailability:predicateCopy];
  v6 = MEMORY[0x277CFE360];
  v10[0] = v4;
  v10[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v6 orPredicateWithSubpredicates:v7];

  return v8;
}

+ (id)phoneCallPredicate:(BOOL)predicate
{
  predicateCopy = predicate;
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CFE360];
  keyPathForCallInProgressStatus = [MEMORY[0x277CFE338] keyPathForCallInProgressStatus];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:predicateCopy];
  v7 = [v4 predicateForKeyPath:keyPathForCallInProgressStatus equalToValue:v6];

  v8 = MEMORY[0x277CFE360];
  keyPathForCallInProgressStatus2 = [MEMORY[0x277CFE338] keyPathForCallInProgressStatus];
  null = [MEMORY[0x277CBEB68] null];
  v11 = [v8 predicateForKeyPath:keyPathForCallInProgressStatus2 equalToValue:null];

  v12 = MEMORY[0x277CFE360];
  v16[0] = v7;
  v16[1] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v14 = [v12 orPredicateWithSubpredicates:v13];

  return v14;
}

+ (id)batteryLevelPredicate:(id)predicate
{
  v3 = MEMORY[0x277CFE360];
  v4 = MEMORY[0x277CFE338];
  predicateCopy = predicate;
  keyPathForBatteryLevel = [v4 keyPathForBatteryLevel];
  keyPathForBatteryLevel2 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v7 = [v3 predicateForKeyPath:keyPathForBatteryLevel withFormat:@"self.%@.value >= %@"];

  if (v7)
  {
    v15 = v7;
  }

  else
  {
    SULogInfo(@"Failed to create battery level _CDContextualPredicate", v8, v9, v10, v11, v12, v13, v14, keyPathForBatteryLevel2);
  }

  return v7;
}

+ (id)carplayPredicate:(BOOL)predicate
{
  predicateCopy = predicate;
  v4 = MEMORY[0x277CFE360];
  keyPathForCarplayConnectedStatus = [MEMORY[0x277CFE338] keyPathForCarplayConnectedStatus];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:predicateCopy];
  v7 = [v4 predicateForKeyPath:keyPathForCarplayConnectedStatus equalToValue:v6];

  if (v7)
  {
    v15 = v7;
  }

  else
  {
    SULogInfo(@"Failed to create carplay _CDContextualPredicate", v8, v9, v10, v11, v12, v13, v14, v17);
  }

  return v7;
}

+ (BOOL)_getBoolForKeyPath:(id)path
{
  v3 = MEMORY[0x277CFE318];
  pathCopy = path;
  userContext = [v3 userContext];
  v6 = [userContext objectForKeyedSubscript:pathCopy];

  LOBYTE(userContext) = [v6 BOOLValue];
  return userContext;
}

+ (int)_getIntForKeyPath:(id)path
{
  v3 = MEMORY[0x277CFE318];
  pathCopy = path;
  userContext = [v3 userContext];
  v6 = [userContext objectForKeyedSubscript:pathCopy];

  LODWORD(userContext) = [v6 intValue];
  return userContext;
}

+ (int)_batteryLevel
{
  keyPathForBatteryLevel = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  LODWORD(self) = [self _getIntForKeyPath:keyPathForBatteryLevel];

  return self;
}

+ (BOOL)_callInProgress
{
  keyPathForCallInProgressStatus = [MEMORY[0x277CFE338] keyPathForCallInProgressStatus];
  LOBYTE(self) = [self _getBoolForKeyPath:keyPathForCallInProgressStatus];

  return self;
}

+ (BOOL)_hasNetworkConnection
{
  keyPathForWiFiConnectionQuality = [MEMORY[0x277CFE338] keyPathForWiFiConnectionQuality];
  v4 = [self _getIntForKeyPath:keyPathForWiFiConnectionQuality];

  keyPathForCellConnectionQuality = [MEMORY[0x277CFE338] keyPathForCellConnectionQuality];
  LODWORD(self) = [self _getIntForKeyPath:keyPathForCellConnectionQuality];

  return (v4 & self & 0x80000000) == 0;
}

@end