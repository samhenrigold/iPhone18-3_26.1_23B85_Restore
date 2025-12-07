@interface HDSPChargingReminderStateMachine
- (BOOL)isCharging;
- (BOOL)sleepFeaturesEnabled;
- (HDSPChargingReminderStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NSDate)currentDate;
- (id)allStates;
- (id)monitoringWindowAfterDate:(id)date;
- (unint64_t)sleepScheduleState;
- (void)batteryLevelChanged:(float)changed;
@end

@implementation HDSPChargingReminderStateMachine

- (HDSPChargingReminderStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider
{
  v34[4] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CBEB98];
  dateProviderCopy = dateProvider;
  providerCopy = provider;
  delegateCopy = delegate;
  persistenceCopy = persistence;
  identifierCopy = identifier;
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v34[2] = objc_opt_class();
  v34[3] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  v19 = [v12 setWithArray:v18];

  v33.receiver = self;
  v33.super_class = HDSPChargingReminderStateMachine;
  v20 = [(HKSPPersistentStateMachine *)&v33 initWithIdentifier:identifierCopy allowedStates:v19 persistence:persistenceCopy delegate:delegateCopy infoProvider:providerCopy currentDateProvider:dateProviderCopy];

  if (v20)
  {
    v21 = [(HKSPPersistentStateMachineState *)[HDSPChargingReminderMonitoringState alloc] initWithStateMachine:v20];
    monitoringState = v20->_monitoringState;
    v20->_monitoringState = v21;

    v23 = [(HKSPPersistentStateMachineState *)[HDSPChargingReminderWaitingState alloc] initWithStateMachine:v20];
    waitingState = v20->_waitingState;
    v20->_waitingState = v23;

    v25 = [(HKSPPersistentStateMachineState *)[HDSPChargingReminderDisabledState alloc] initWithStateMachine:v20];
    disabledState = v20->_disabledState;
    v20->_disabledState = v25;

    v27 = [(HKSPPersistentStateMachineState *)[HDSPChargingReminderNotifiedState alloc] initWithStateMachine:v20];
    notifiedState = v20->_notifiedState;
    v20->_notifiedState = v27;

    persistedState = [(HKSPPersistentStateMachine *)v20 persistedState];
    v30 = persistedState;
    if (!persistedState)
    {
      v30 = v20->_disabledState;
    }

    [(HKSPStateMachine *)v20 setInitialState:v30];

    v31 = v20;
  }

  return v20;
}

- (id)allStates
{
  v6[4] = *MEMORY[0x277D85DE8];
  waitingState = self->_waitingState;
  v6[0] = self->_monitoringState;
  v6[1] = waitingState;
  notifiedState = self->_notifiedState;
  v6[2] = self->_disabledState;
  v6[3] = notifiedState;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];

  return v4;
}

- (void)batteryLevelChanged:(float)changed
{
  currentState = [(HKSPStateMachine *)self currentState];
  *&v4 = changed;
  [currentState batteryLevelChanged:v4];
}

- (NSDate)currentDate
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  currentDate = [infoProvider currentDate];

  return currentDate;
}

- (BOOL)sleepFeaturesEnabled
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  sleepFeaturesEnabled = [infoProvider sleepFeaturesEnabled];

  return sleepFeaturesEnabled;
}

- (id)monitoringWindowAfterDate:(id)date
{
  dateCopy = date;
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  v6 = [infoProvider monitoringWindowAfterDate:dateCopy];

  return v6;
}

- (HKSPSleepScheduleModel)sleepScheduleModel
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  sleepScheduleModel = [infoProvider sleepScheduleModel];

  return sleepScheduleModel;
}

- (unint64_t)sleepScheduleState
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  sleepScheduleState = [infoProvider sleepScheduleState];

  return sleepScheduleState;
}

- (BOOL)isCharging
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  isCharging = [infoProvider isCharging];

  return isCharging;
}

@end