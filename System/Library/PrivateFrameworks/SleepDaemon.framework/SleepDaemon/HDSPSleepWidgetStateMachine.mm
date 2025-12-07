@interface HDSPSleepWidgetStateMachine
- (BOOL)inUnscheduledSleepMode;
- (BOOL)isOnboarded;
- (HDSPSleepWidgetStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NSDate)currentDate;
- (id)allStates;
- (unint64_t)sleepScheduleState;
- (void)significantTimeChangeOccurred;
- (void)sleepModeDidChange:(int64_t)change isUserRequested:(BOOL)requested;
- (void)sleepScheduleModelDidChange:(id)change;
- (void)sleepScheduleStateDidChange:(unint64_t)change;
- (void)sleepWidgetStateDidChange:(int64_t)change previousState:(int64_t)state;
@end

@implementation HDSPSleepWidgetStateMachine

- (HDSPSleepWidgetStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider
{
  v42[8] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CBEB98];
  dateProviderCopy = dateProvider;
  providerCopy = provider;
  delegateCopy = delegate;
  persistenceCopy = persistence;
  identifierCopy = identifier;
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v42[2] = objc_opt_class();
  v42[3] = objc_opt_class();
  v42[4] = objc_opt_class();
  v42[5] = objc_opt_class();
  v42[6] = objc_opt_class();
  v42[7] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:8];
  v19 = [v12 setWithArray:v18];

  v41.receiver = self;
  v41.super_class = HDSPSleepWidgetStateMachine;
  v20 = [(HKSPPersistentStateMachine *)&v41 initWithIdentifier:identifierCopy allowedStates:v19 persistence:persistenceCopy delegate:delegateCopy infoProvider:providerCopy currentDateProvider:dateProviderCopy];

  if (v20)
  {
    v21 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetDisabledState alloc] initWithStateMachine:v20];
    disabledState = v20->_disabledState;
    v20->_disabledState = v21;

    v23 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetWaitingState alloc] initWithStateMachine:v20];
    waitingState = v20->_waitingState;
    v20->_waitingState = v23;

    v25 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetUpcomingState alloc] initWithStateMachine:v20];
    upcomingState = v20->_upcomingState;
    v20->_upcomingState = v25;

    v27 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetWindDownState alloc] initWithStateMachine:v20];
    windDownState = v20->_windDownState;
    v20->_windDownState = v27;

    v29 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetBedtimeState alloc] initWithStateMachine:v20];
    bedtimeState = v20->_bedtimeState;
    v20->_bedtimeState = v29;

    v31 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetBedtimeInProgressState alloc] initWithStateMachine:v20];
    bedtimeInProgressState = v20->_bedtimeInProgressState;
    v20->_bedtimeInProgressState = v31;

    v33 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetGreetingState alloc] initWithStateMachine:v20];
    greetingState = v20->_greetingState;
    v20->_greetingState = v33;

    v35 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetNotOnboardedState alloc] initWithStateMachine:v20];
    notOnboardedState = v20->_notOnboardedState;
    v20->_notOnboardedState = v35;

    persistedState = [(HKSPPersistentStateMachine *)v20 persistedState];
    v38 = persistedState;
    if (!persistedState)
    {
      v38 = v20->_disabledState;
    }

    [(HKSPStateMachine *)v20 setInitialState:v38];

    v39 = v20;
  }

  return v20;
}

- (id)allStates
{
  v8[8] = *MEMORY[0x277D85DE8];
  waitingState = self->_waitingState;
  v8[0] = self->_disabledState;
  v8[1] = waitingState;
  windDownState = self->_windDownState;
  v8[2] = self->_upcomingState;
  v8[3] = windDownState;
  bedtimeInProgressState = self->_bedtimeInProgressState;
  v8[4] = self->_bedtimeState;
  v8[5] = bedtimeInProgressState;
  notOnboardedState = self->_notOnboardedState;
  v8[6] = self->_greetingState;
  v8[7] = notOnboardedState;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:8];

  return v6;
}

- (void)sleepModeDidChange:(int64_t)change isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState sleepModeDidChange:change isUserRequested:requestedCopy];
}

- (void)sleepScheduleStateDidChange:(unint64_t)change
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState sleepScheduleStateDidChange:change];
}

- (void)sleepScheduleModelDidChange:(id)change
{
  changeCopy = change;
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState sleepScheduleModelDidChange:changeCopy];
}

- (void)significantTimeChangeOccurred
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState significantTimeChangeOccurred];
}

- (void)sleepWidgetStateDidChange:(int64_t)change previousState:(int64_t)state
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__HDSPSleepWidgetStateMachine_sleepWidgetStateDidChange_previousState___block_invoke;
  v4[3] = &__block_descriptor_48_e47_v16__0___HDSPSleepWidgetStateMachineDelegate__8l;
  v4[4] = change;
  v4[5] = state;
  [(HKSPStateMachine *)self notifyDelegateWithBlock:v4];
}

- (NSDate)currentDate
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  currentDate = [infoProvider currentDate];

  return currentDate;
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

- (BOOL)inUnscheduledSleepMode
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  inUnscheduledSleepMode = [infoProvider inUnscheduledSleepMode];

  return inUnscheduledSleepMode;
}

- (BOOL)isOnboarded
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  isOnboarded = [infoProvider isOnboarded];

  return isOnboarded;
}

@end