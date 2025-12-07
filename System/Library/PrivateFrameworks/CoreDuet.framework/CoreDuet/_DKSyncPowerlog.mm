@interface _DKSyncPowerlog
+ (void)recordWithSyncType:(id)type transportType:(int64_t)transportType startDate:(id)date endDate:(id)endDate isEmpty:(BOOL)empty;
@end

@implementation _DKSyncPowerlog

+ (void)recordWithSyncType:(id)type transportType:(int64_t)transportType startDate:(id)date endDate:(id)endDate isEmpty:(BOOL)empty
{
  v21[4] = *MEMORY[0x1E69E9840];
  if (date && endDate)
  {
    emptyCopy = empty;
    if (transportType == 8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2 * (transportType == 4);
    }

    v20[0] = @"timestamp";
    v20[1] = @"timestampEnd";
    v21[0] = date;
    v21[1] = endDate;
    v20[2] = @"isEmpty";
    v10 = MEMORY[0x1E696AD98];
    endDateCopy = endDate;
    dateCopy = date;
    v13 = [v10 numberWithBool:emptyCopy];
    v21[2] = v13;
    v20[3] = @"transportType";
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    v21[3] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];

    v16 = +[_CDLogging syncChannel];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [_DKSyncPowerlog recordWithSyncType:v15 transportType:v16 startDate:? endDate:? isEmpty:?];
    }

    PLLogRegisteredEvent();
  }

  else
  {
    endDateCopy2 = endDate;
    dateCopy2 = date;
    v15 = +[_CDLogging instrumentationChannel];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_DEFAULT, "Skipping sync powerlog recording - startDate or endDate is nil.", v19, 2u);
    }
  }
}

+ (void)recordWithSyncType:(uint64_t)a1 transportType:(NSObject *)a2 startDate:endDate:isEmpty:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "Logging sync session to powerlog: %@", &v2, 0xCu);
}

@end