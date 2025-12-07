@interface LACDomainStateProviderBiometry
+ (id)sharedInstance;
- (LACDomainStateProviderBiometry)initWithBiometryHelper:(id)helper;
- (void)domainStateForRequest:(id)request completion:(id)completion;
@end

@implementation LACDomainStateProviderBiometry

- (LACDomainStateProviderBiometry)initWithBiometryHelper:(id)helper
{
  helperCopy = helper;
  v9.receiver = self;
  v9.super_class = LACDomainStateProviderBiometry;
  v6 = [(LACDomainStateProviderBiometry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_helper, helper);
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_12 != -1)
  {
    +[LACDomainStateProviderBiometry sharedInstance];
  }

  v3 = sharedInstance_sharedInstace;

  return v3;
}

void __48__LACDomainStateProviderBiometry_sharedInstance__block_invoke()
{
  v0 = [LACDomainStateProviderBiometry alloc];
  v3 = +[LACBiometryHelper sharedInstance];
  v1 = [(LACDomainStateProviderBiometry *)v0 initWithBiometryHelper:v3];
  v2 = sharedInstance_sharedInstace;
  sharedInstance_sharedInstace = v1;
}

- (void)domainStateForRequest:(id)request completion:(id)completion
{
  v28[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  helper = self->_helper;
  requestCopy = request;
  biometryType = [(LACBiometryHelper *)helper biometryType];
  v10 = self->_helper;
  userID = [requestCopy userID];

  v22 = 0;
  v12 = [(LACBiometryHelper *)v10 biometryDatabaseHashForUser:userID error:&v22];
  v13 = v22;

  if (v13)
  {
    v15 = LACLogBiometry(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [LACDomainStateProviderBiometry domainStateForRequest:v13 completion:v15];
    }
  }

  v27 = @"kLACDomainStateResultKeyAvailableBiometryTypes";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:biometryType];
  v25 = v16;
  v26 = MEMORY[0x1E695E118];
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v28[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v19 = [v18 mutableCopy];

  if (v12)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:biometryType];
    v23 = v20;
    v24 = v12;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v19 setObject:v21 forKeyedSubscript:@"kLACDomainStateResultKeyBiometryStateHashes"];
  }

  completionCopy[2](completionCopy, v19, 0);
}

- (void)domainStateForRequest:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "biometryDatabaseHashForUser returned error: %@", &v2, 0xCu);
}

@end