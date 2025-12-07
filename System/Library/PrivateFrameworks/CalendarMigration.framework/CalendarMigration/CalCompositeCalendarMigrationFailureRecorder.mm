@interface CalCompositeCalendarMigrationFailureRecorder
- (CalCompositeCalendarMigrationFailureRecorder)initWithFailureRecorders:(id)recorders;
- (void)recordMigrationFailure:(id)failure;
- (void)reportRecordedFailures;
@end

@implementation CalCompositeCalendarMigrationFailureRecorder

- (CalCompositeCalendarMigrationFailureRecorder)initWithFailureRecorders:(id)recorders
{
  recordersCopy = recorders;
  v9.receiver = self;
  v9.super_class = CalCompositeCalendarMigrationFailureRecorder;
  v5 = [(CalCompositeCalendarMigrationFailureRecorder *)&v9 init];
  if (v5)
  {
    v6 = [recordersCopy copy];
    failureRecorders = v5->_failureRecorders;
    v5->_failureRecorders = v6;
  }

  return v5;
}

- (void)recordMigrationFailure:(id)failure
{
  v15 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  failureRecorders = [(CalCompositeCalendarMigrationFailureRecorder *)self failureRecorders];
  v6 = [failureRecorders countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(failureRecorders);
        }

        [*(*(&v10 + 1) + 8 * v9++) recordMigrationFailure:failureCopy];
      }

      while (v7 != v9);
      v7 = [failureRecorders countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)reportRecordedFailures
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  failureRecorders = [(CalCompositeCalendarMigrationFailureRecorder *)self failureRecorders];
  v3 = [failureRecorders countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(failureRecorders);
        }

        [*(*(&v7 + 1) + 8 * v6++) reportRecordedFailures];
      }

      while (v4 != v6);
      v4 = [failureRecorders countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end