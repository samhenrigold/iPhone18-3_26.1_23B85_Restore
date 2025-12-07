@interface HDSPSleepScheduleStateCoordinatorInitialState
- (void)updateStateForcibly:(BOOL)forcibly;
@end

@implementation HDSPSleepScheduleStateCoordinatorInitialState

- (void)updateStateForcibly:(BOOL)forcibly
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HDSPSleepScheduleStateCoordinatorInitialState_updateStateForcibly___block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  v5 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:5];
  [stateMachine perform:v6 withContext:v5];
}

id __69__HDSPSleepScheduleStateCoordinatorInitialState_updateStateForcibly___block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = HDSPSleepScheduleStateCoordinatorInitialState;
  return objc_msgSendSuper2(&v2, sel_updateStateForcibly_, 1);
}

@end