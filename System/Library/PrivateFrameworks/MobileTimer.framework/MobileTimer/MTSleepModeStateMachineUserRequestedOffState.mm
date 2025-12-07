@interface MTSleepModeStateMachineUserRequestedOffState
- (BOOL)isEqualToState:(id)state;
- (MTSleepModeStateMachineUserRequestedOffState)initWithKeepOffUntilDate:(id)date stateMachine:(id)machine;
- (void)didEnterWithPreviousState:(id)state;
- (void)updateState:(BOOL)state;
@end

@implementation MTSleepModeStateMachineUserRequestedOffState

- (MTSleepModeStateMachineUserRequestedOffState)initWithKeepOffUntilDate:(id)date stateMachine:(id)machine
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = MTSleepModeStateMachineUserRequestedOffState;
  v8 = [(MTStateMachineState *)&v11 initWithStateMachine:machine];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keepOffUntilDate, date);
  }

  return v9;
}

- (BOOL)isEqualToState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (self == stateCopy)
  {
    v8 = 1;
  }

  else if (stateCopy && [(MTSleepModeStateMachineUserRequestedOffState *)stateCopy isMemberOfClass:objc_opt_class()])
  {
    keepOffUntilDate = [(MTSleepModeStateMachineUserRequestedOffState *)self keepOffUntilDate];
    keepOffUntilDate2 = [(MTSleepModeStateMachineUserRequestedOffState *)v5 keepOffUntilDate];
    v8 = [keepOffUntilDate isEqualToDate:keepOffUntilDate2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)didEnterWithPreviousState:(id)state
{
  v19 = *MEMORY[0x1E69E9840];
  if (![(MTSleepModeStateMachineUserRequestedOffState *)self isEqualToState:state])
  {
    stateMachine = [(MTStateMachineState *)self stateMachine];
    stateMachine2 = [(MTStateMachineState *)self stateMachine];
    v6 = [stateMachine stateMachine:stateMachine2 disengageSleepModeUserRequested:1];

    if (v6)
    {
      v7 = MTLogForCategory(7);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543618;
        selfCopy3 = self;
        v17 = 2114;
        v18 = @"sleep mode";
        _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling manual %{public}@ invalidation", &v15, 0x16u);
      }

      stateMachine3 = [(MTStateMachineState *)self stateMachine];
      isUserAsleep = [stateMachine3 isUserAsleep];

      stateMachine4 = MTLogForCategory(7);
      v11 = os_log_type_enabled(stateMachine4, OS_LOG_TYPE_DEFAULT);
      if (isUserAsleep)
      {
        if (v11)
        {
          keepOffUntilDate = [(MTSleepModeStateMachineUserRequestedOffState *)self keepOffUntilDate];
          v15 = 138543618;
          selfCopy3 = self;
          v17 = 2114;
          v18 = keepOffUntilDate;
          _os_log_impl(&dword_1B1F9F000, stateMachine4, OS_LOG_TYPE_DEFAULT, "%{public}@ Keeping off until: %{public}@", &v15, 0x16u);
        }

        stateMachine4 = [(MTStateMachineState *)self stateMachine];
        stateMachine5 = [(MTStateMachineState *)self stateMachine];
        keepOffUntilDate2 = [(MTSleepModeStateMachineUserRequestedOffState *)self keepOffUntilDate];
        [stateMachine4 stateMachine:stateMachine5 keepSleepModeOffUntilDate:keepOffUntilDate2];
      }

      else if (v11)
      {
        v15 = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_1B1F9F000, stateMachine4, OS_LOG_TYPE_DEFAULT, "%{public}@ Not in user sleep window", &v15, 0xCu);
      }
    }
  }
}

- (void)updateState:(BOOL)state
{
  stateCopy = state;
  v16 = *MEMORY[0x1E69E9840];
  [(MTSleepModeStateMachineState *)self updateModeKeepOffUntilDateIfNecessary];
  stateMachine = [(MTStateMachineState *)self stateMachine];
  currentDate = [stateMachine currentDate];

  stateMachine2 = [(MTStateMachineState *)self stateMachine];
  keepOffUntilDate = [stateMachine2 keepOffUntilDate];

  if (keepOffUntilDate && ![currentDate mtIsAfterDate:keepOffUntilDate])
  {
    v10 = MTLogForCategory(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v14 = 2114;
      v15 = keepOffUntilDate;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring updateState until keepOffUntilDate: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v9 = MTLogForCategory(7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v14 = 2114;
      v15 = keepOffUntilDate;
      _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ We are past keepOffUntilDate: %{public}@", buf, 0x16u);
    }

    v11.receiver = self;
    v11.super_class = MTSleepModeStateMachineUserRequestedOffState;
    [(MTSleepModeStateMachineState *)&v11 updateState:stateCopy];
  }
}

@end