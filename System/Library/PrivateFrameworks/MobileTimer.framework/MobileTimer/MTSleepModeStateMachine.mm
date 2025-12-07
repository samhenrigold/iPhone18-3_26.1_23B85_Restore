@interface MTSleepModeStateMachine
- (BOOL)isSleepModeEnabled:(BOOL *)enabled;
- (BOOL)isUserAsleep;
- (BOOL)stateMachine:(id)machine disengageSleepModeUserRequested:(BOOL)requested;
- (BOOL)stateMachine:(id)machine engageSleepModeUntilDate:(id)date userEngaged:(BOOL)engaged;
- (MTSleepModeStateMachine)initWithDelegate:(id)delegate infoProvider:(id)provider;
- (id)currentDate;
- (id)keepOffUntilDate;
- (id)onStateWithSleepModeEndDate:(id)date;
- (id)sleepAlarm;
- (id)userRequestedOffStateWithKeepOffUntilDate:(id)date;
- (void)sleepModeEnabled:(BOOL)enabled userRequested:(BOOL)requested date:(id)date;
- (void)stateMachine:(id)machine keepSleepModeOffUntilDate:(id)date;
- (void)stateMachine:(id)machine scheduleUpdateForSecondsFromNow:(double)now;
- (void)stateMachineClearKeepSleepModeOff:(id)off;
- (void)updateState:(BOOL)state;
- (void)userWokeUp;
@end

@implementation MTSleepModeStateMachine

- (MTSleepModeStateMachine)initWithDelegate:(id)delegate infoProvider:(id)provider
{
  v12.receiver = self;
  v12.super_class = MTSleepModeStateMachine;
  v4 = [(MTStateMachine *)&v12 initWithDelegate:delegate infoProvider:provider];
  if (v4)
  {
    v5 = [(MTStateMachineState *)[MTSleepModeStateMachineInitialState alloc] initWithStateMachine:v4];
    initialState = v4->_initialState;
    v4->_initialState = v5;

    v7 = [(MTStateMachineState *)[MTSleepModeStateMachineOffState alloc] initWithStateMachine:v4];
    offState = v4->_offState;
    v4->_offState = v7;

    v9 = [(MTStateMachineState *)[MTSleepModeStateMachineWaitingState alloc] initWithStateMachine:v4];
    waitingState = v4->_waitingState;
    v4->_waitingState = v9;

    [(MTStateMachine *)v4 enterState:v4->_initialState];
  }

  return v4;
}

- (id)onStateWithSleepModeEndDate:(id)date
{
  dateCopy = date;
  v5 = [[MTSleepModeStateMachineOnState alloc] initWithSleepModeEndDate:dateCopy stateMachine:self];

  return v5;
}

- (id)userRequestedOffStateWithKeepOffUntilDate:(id)date
{
  dateCopy = date;
  v5 = [[MTSleepModeStateMachineUserRequestedOffState alloc] initWithKeepOffUntilDate:dateCopy stateMachine:self];

  return v5;
}

- (void)updateState:(BOOL)state
{
  stateCopy = state;
  currentState = [(MTStateMachine *)self currentState];
  [currentState updateState:stateCopy];
}

- (void)sleepModeEnabled:(BOOL)enabled userRequested:(BOOL)requested date:(id)date
{
  requestedCopy = requested;
  enabledCopy = enabled;
  dateCopy = date;
  currentState = [(MTStateMachine *)self currentState];
  [currentState sleepModeEnabled:enabledCopy userRequested:requestedCopy date:dateCopy];
}

- (void)userWokeUp
{
  currentState = [(MTStateMachine *)self currentState];
  [currentState userWokeUp];
}

- (id)sleepAlarm
{
  infoProvider = [(MTStateMachine *)self infoProvider];
  sleepAlarm = [infoProvider sleepAlarm];

  return sleepAlarm;
}

- (id)currentDate
{
  infoProvider = [(MTStateMachine *)self infoProvider];
  currentDate = [infoProvider currentDate];

  return currentDate;
}

- (BOOL)isSleepModeEnabled:(BOOL *)enabled
{
  infoProvider = [(MTStateMachine *)self infoProvider];
  LOBYTE(enabled) = [infoProvider isSleepModeEnabled:enabled];

  return enabled;
}

- (id)keepOffUntilDate
{
  infoProvider = [(MTStateMachine *)self infoProvider];
  keepOffUntilDate = [infoProvider keepOffUntilDate];

  return keepOffUntilDate;
}

- (BOOL)isUserAsleep
{
  infoProvider = [(MTStateMachine *)self infoProvider];
  isUserAsleep = [infoProvider isUserAsleep];

  return isUserAsleep;
}

- (BOOL)stateMachine:(id)machine engageSleepModeUntilDate:(id)date userEngaged:(BOOL)engaged
{
  engagedCopy = engaged;
  dateCopy = date;
  machineCopy = machine;
  delegate = [(MTStateMachine *)self delegate];
  LOBYTE(engagedCopy) = [delegate stateMachine:machineCopy engageSleepModeUntilDate:dateCopy userEngaged:engagedCopy];

  return engagedCopy;
}

- (BOOL)stateMachine:(id)machine disengageSleepModeUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  machineCopy = machine;
  delegate = [(MTStateMachine *)self delegate];
  LOBYTE(requestedCopy) = [delegate stateMachine:machineCopy disengageSleepModeUserRequested:requestedCopy];

  return requestedCopy;
}

- (void)stateMachine:(id)machine keepSleepModeOffUntilDate:(id)date
{
  dateCopy = date;
  machineCopy = machine;
  delegate = [(MTStateMachine *)self delegate];
  [delegate stateMachine:machineCopy keepSleepModeOffUntilDate:dateCopy];
}

- (void)stateMachineClearKeepSleepModeOff:(id)off
{
  offCopy = off;
  delegate = [(MTStateMachine *)self delegate];
  [delegate stateMachineClearKeepSleepModeOff:offCopy];
}

- (void)stateMachine:(id)machine scheduleUpdateForSecondsFromNow:(double)now
{
  machineCopy = machine;
  delegate = [(MTStateMachine *)self delegate];
  [delegate stateMachine:machineCopy scheduleUpdateForSecondsFromNow:now];
}

@end