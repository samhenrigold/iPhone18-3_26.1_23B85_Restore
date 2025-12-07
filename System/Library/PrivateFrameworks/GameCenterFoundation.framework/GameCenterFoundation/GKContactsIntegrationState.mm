@interface GKContactsIntegrationState
+ (id)secureCodedPropertyKeys;
- (id)initCohortStates:(id)states controllerState:(unint64_t)state idsUpdateIntervalState:(id)intervalState settings:(id)settings;
@end

@implementation GKContactsIntegrationState

- (id)initCohortStates:(id)states controllerState:(unint64_t)state idsUpdateIntervalState:(id)intervalState settings:(id)settings
{
  statesCopy = states;
  intervalStateCopy = intervalState;
  settingsCopy = settings;
  v17.receiver = self;
  v17.super_class = GKContactsIntegrationState;
  v14 = [(GKContactsIntegrationState *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_cohortState, states);
    v15->_controllerState = state;
    objc_storeStrong(&v15->_idsUpdateIntervalState, intervalState);
    objc_storeStrong(&v15->_settings, settings);
  }

  return v15;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_80 != -1)
  {
    +[GKContactsIntegrationState secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_79;

  return v3;
}

void __53__GKContactsIntegrationState_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"cohortState";
  v5[0] = objc_opt_class();
  v4[1] = @"controllerState";
  v5[1] = objc_opt_class();
  v4[2] = @"idsUpdateIntervalState";
  v5[2] = objc_opt_class();
  v4[3] = @"settings";
  v5[3] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_79;
  secureCodedPropertyKeys_sSecureCodedKeys_79 = v2;
}

@end