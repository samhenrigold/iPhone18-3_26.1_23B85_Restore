@interface PeriodicFPCK
- (void)saveCheckpointWithReport:(id)report;
- (void)shouldPauseWithCompletion:(id)completion;
@end

@implementation PeriodicFPCK

- (void)shouldPauseWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  _Block_copy(v3);

  sub_1CF702014(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)saveCheckpointWithReport:(id)report
{
  v3 = *&self->saveCheckpoint[13];
  reportCopy = report;

  v3(reportCopy);
}

@end