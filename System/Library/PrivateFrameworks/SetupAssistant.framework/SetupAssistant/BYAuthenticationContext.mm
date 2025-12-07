@interface BYAuthenticationContext
+ (void)createContextWithSecret:(id)secret policy:(int64_t)policy options:(id)options completion:(id)completion;
- (BYAuthenticationContext)initWithSecret:(id)secret;
- (void)event:(int64_t)event params:(id)params reply:(id)reply;
@end

@implementation BYAuthenticationContext

- (BYAuthenticationContext)initWithSecret:(id)secret
{
  secretCopy = secret;
  v11.receiver = self;
  v11.super_class = BYAuthenticationContext;
  v6 = [(BYAuthenticationContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_secret, secret);
    v8 = objc_alloc_init(MEMORY[0x1E696EE50]);
    underlyingContext = v7->_underlyingContext;
    v7->_underlyingContext = v8;

    [(LAContext *)v7->_underlyingContext setUiDelegate:v7];
  }

  return v7;
}

+ (void)createContextWithSecret:(id)secret policy:(int64_t)policy options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  secretCopy = secret;
  v12 = [[BYAuthenticationContext alloc] initWithSecret:secretCopy];

  underlyingContext = [(BYAuthenticationContext *)v12 underlyingContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__BYAuthenticationContext_createContextWithSecret_policy_options_completion___block_invoke;
  v16[3] = &unk_1E7D02930;
  v17 = v12;
  v18 = completionCopy;
  v14 = v12;
  v15 = completionCopy;
  [underlyingContext evaluatePolicy:policy options:optionsCopy reply:v16];
}

void __77__BYAuthenticationContext_createContextWithSecret_policy_options_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a3;
  v6 = [v4 underlyingContext];
  (*(v3 + 16))(v3, v6, v5);
}

- (void)event:(int64_t)event params:(id)params reply:(id)reply
{
  v7 = [params objectForKeyedSubscript:&unk_1F30A7610];
  v8 = v7;
  if (event == 2)
  {
    bOOLValue = [v7 BOOLValue];
    if (bOOLValue)
    {
      v10 = _BYLoggingFacility(bOOLValue);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [BYAuthenticationContext event:v10 params:? reply:?];
      }

      secret = [(BYAuthenticationContext *)self secret];
      v12 = [secret dataUsingEncoding:4];

      [(BYAuthenticationContext *)self setSecret:0];
      underlyingContext = [(BYAuthenticationContext *)self underlyingContext];
      [underlyingContext setCredential:v12 forProcessedEvent:2 credentialType:-1 reply:&__block_literal_global_2];
    }
  }
}

void __46__BYAuthenticationContext_event_params_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _BYLoggingFacility(v4);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __46__BYAuthenticationContext_event_params_reply___block_invoke_cold_1(v6);
    }
  }

  else
  {
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (_BYIsInternalInstall(v7, v8))
      {
        v9 = 0;
        v10 = v4;
      }

      else if (v4)
      {
        v11 = MEMORY[0x1E696AEC0];
        a2 = [v4 domain];
        v10 = [v11 stringWithFormat:@"<Error domain: %@, code %ld>", a2, objc_msgSend(v4, "code")];
        v9 = 1;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      *buf = 138543362;
      v13 = v10;
      _os_log_error_impl(&dword_1B862F000, v6, OS_LOG_TYPE_ERROR, "Failed to set credentials for context: %{public}@", buf, 0xCu);
      if (v9)
      {
      }
    }
  }
}

@end