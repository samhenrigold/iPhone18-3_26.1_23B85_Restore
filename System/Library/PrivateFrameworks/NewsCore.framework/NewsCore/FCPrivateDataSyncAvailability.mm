@interface FCPrivateDataSyncAvailability
+ (id)defaultAvailability;
+ (id)notAvailable;
- (BOOL)isPrivateDataSyncingAllowed;
- (FCPrivateDataSyncAvailability)initWithConditions:(id)conditions;
@end

@implementation FCPrivateDataSyncAvailability

+ (id)defaultAvailability
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(objc_opt_class());
  v3 = objc_opt_new();
  v10[0] = v3;
  v4 = objc_opt_new();
  v10[1] = v4;
  v5 = objc_opt_new();
  v10[2] = v5;
  v6 = objc_opt_new();
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v8 = [v2 initWithConditions:v7];

  return v8;
}

- (BOOL)isPrivateDataSyncingAllowed
{
  v12 = *MEMORY[0x1E69E9840];
  conditions = [(FCPrivateDataSyncAvailability *)self conditions];
  v3 = [conditions fc_firstObjectPassingTest:&__block_literal_global_44];

  v4 = FCPrivateDataLog;
  v5 = os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v10 = 138543362;
      v11 = v3;
      v6 = "private data syncing is not allowed because condition failed: %{public}@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v10) = 0;
    v6 = "private data syncing is allowed";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  return v3 == 0;
}

+ (id)notAvailable
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(objc_opt_class());
  v3 = objc_opt_new();
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 initWithConditions:v4];

  return v5;
}

- (FCPrivateDataSyncAvailability)initWithConditions:(id)conditions
{
  conditionsCopy = conditions;
  v9.receiver = self;
  v9.super_class = FCPrivateDataSyncAvailability;
  v5 = [(FCPrivateDataSyncAvailability *)&v9 init];
  if (v5)
  {
    v6 = [conditionsCopy copy];
    conditions = v5->_conditions;
    v5->_conditions = v6;
  }

  return v5;
}

@end