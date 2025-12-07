@interface FAURLConfiguration
- (id)URLForEndpoint:(id)endpoint;
- (void)URLForEndpoint:(id)endpoint withCompletion:(id)completion;
- (void)fetchAAURLConfigurationWithCompletion:(id)completion;
@end

@implementation FAURLConfiguration

- (void)URLForEndpoint:(id)endpoint withCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  completionCopy = completion;
  v8 = _FALogSystem(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = endpointCopy;
    _os_log_impl(&dword_1B70B0000, v8, OS_LOG_TYPE_DEFAULT, "Desired enpoint %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__FAURLConfiguration_URLForEndpoint_withCompletion___block_invoke;
  v11[3] = &unk_1E7CA4770;
  v12 = endpointCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = endpointCopy;
  [(FAURLConfiguration *)self fetchAAURLConfigurationWithCompletion:v11];
}

void __52__FAURLConfiguration_URLForEndpoint_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v6 = [v5 urlForEndpoint:*(a1 + 32)];
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (!(v7 | v8))
  {
    v6 = [MEMORY[0x1E696ABC0] fa_familyErrorWithCode:-1017];
    v7 = v6;
  }

  if (v7)
  {
    v9 = _FALogSystem(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __52__FAURLConfiguration_URLForEndpoint_withCompletion___block_invoke_cold_1(v7, v9);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)URLForEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = objc_alloc(MEMORY[0x1E6985DF8]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__FAURLConfiguration_URLForEndpoint___block_invoke;
  v9[3] = &unk_1E7CA4798;
  v9[4] = self;
  v10 = endpointCopy;
  v6 = endpointCopy;
  v7 = [v5 initWithBlock:v9];

  return v7;
}

- (void)fetchAAURLConfigurationWithCompletion:(id)completion
{
  v3 = MEMORY[0x1E698B968];
  completionCopy = completion;
  sharedServer = [v3 sharedServer];
  [sharedServer configurationWithCompletion:completionCopy];
}

void __52__FAURLConfiguration_URLForEndpoint_withCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_ERROR, "Error getting url configuration %@", &v2, 0xCu);
}

@end