@interface VSLinkedOnOrAfterChecker
- (BOOL)shouldPerformBehavior:(int64_t)behavior;
- (id)_minimumVersionsForBehavior:(int64_t)behavior;
@end

@implementation VSLinkedOnOrAfterChecker

- (id)_minimumVersionsForBehavior:(int64_t)behavior
{
  v4 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:2];
  v5 = v4;
  if (behavior <= 2)
  {
    v6 = *(&off_278B73D10 + behavior);
    v7 = *(&off_278B73D28 + behavior);
    v8 = *(&off_278B73D40 + behavior);
    [v4 addPointer:v6];
    [v5 addPointer:v7];
    [v5 addPointer:v8];
  }

  return v5;
}

- (BOOL)shouldPerformBehavior:(int64_t)behavior
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(VSLinkedOnOrAfterChecker *)self _minimumVersionsForBehavior:?];
  v5 = [v4 count];
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      [v4 pointerAtIndex:v6];
      v7 = dyld_program_sdk_at_least();
      if (v7)
      {
        break;
      }

      ++v6;
      v5 = [v4 count];
      if (v6 >= v5)
      {
        goto LABEL_5;
      }
    }

    v8 = VSDefaultLogObject(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      behaviorCopy2 = behavior;
      _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Linked against SDK version that performs behavior %lu.", &v11, 0xCu);
    }

    v9 = 1;
  }

  else
  {
LABEL_5:
    v8 = VSDefaultLogObject(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      behaviorCopy2 = behavior;
      _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Linked against SDK that pre-dates behavior %lu.", &v11, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

@end