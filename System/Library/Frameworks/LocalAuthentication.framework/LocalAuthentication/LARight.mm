@interface LARight
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (LARight)init;
- (LARight)initWithAccessKey:(id)key;
- (LARight)initWithIdentifier:(id)identifier accessKey:(id)key;
- (LARight)initWithRequirement:(LAAuthenticationRequirement *)requirement;
- (void)_authorizeWithOptions:(void *)options completionHandler:;
- (void)authorizeWithLocalizedReason:(NSString *)localizedReason completion:(void *)handler;
- (void)authorizeWithOptions:(id)options completion:(id)completion;
- (void)checkCanAuthorizeWithCompletion:(void *)handler;
- (void)dealloc;
- (void)deauthorizeWithCompletion:(void *)handler;
- (void)setContext:(id)context;
- (void)setState:(int64_t)state;
@end

@implementation LARight

- (LARight)init
{
  v3 = +[LAAuthenticationRequirement defaultRequirement];
  v4 = [(LARight *)self initWithRequirement:v3];

  return v4;
}

- (LARight)initWithRequirement:(LAAuthenticationRequirement *)requirement
{
  v4 = [(LAAuthenticationRequirement *)requirement key];
  v5 = [(LARight *)self initWithAccessKey:v4];

  return v5;
}

- (LARight)initWithAccessKey:(id)key
{
  v4 = MEMORY[0x1E696AFB0];
  keyCopy = key;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [(LARight *)self initWithIdentifier:uUIDString accessKey:keyCopy];

  return v8;
}

- (LARight)initWithIdentifier:(id)identifier accessKey:(id)key
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = LARight;
  v9 = [(LARight *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_accessKey, key);
    v11 = [[LARightContextHandler alloc] initWithDelegate:v10];
    contextHandler = v10->_contextHandler;
    v10->_contextHandler = v11;

    v10->_state = 0;
    v13 = [MEMORY[0x1E69AD238] createDefaultSerialQueueWithIdentifier:@"LARight"];
    workQueue = v10->_workQueue;
    v10->_workQueue = v13;

    mEMORY[0x1E696EE90] = [MEMORY[0x1E696EE90] sharedInstance];
    v10->_instanceID = [mEMORY[0x1E696EE90] nextInstanceIDInDomain:@"LARight"];

    v17 = LA_LOG(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v10;
      _os_log_impl(&dword_1A784E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ initialized", buf, 0xCu);
    }
  }

  return v10;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = LA_LOG(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1A784E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocated", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = LARight;
  [(LARight *)&v4 dealloc];
}

- (void)authorizeWithLocalizedReason:(NSString *)localizedReason completion:(void *)handler
{
  v6 = localizedReason;
  v7 = handler;
  v8 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.authorizeWithLocalizedReason", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__LARight_authorizeWithLocalizedReason_completion___block_invoke;
  v12[3] = &unk_1E77CB310;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v7;
  v10 = v8;
  v11 = v6;
  os_activity_apply(v10, v12);
}

void __51__LARight_authorizeWithLocalizedReason_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v15 = v3;
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ authorizeWithLocalizedReason '%{public}@' started", buf, 0x16u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = &unk_1F1A6FBC0;
  v13 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__LARight_authorizeWithLocalizedReason_completion___block_invoke_75;
  v8[3] = &unk_1E77CB2E8;
  v9 = *(a1 + 48);
  objc_copyWeak(&v11, buf);
  v10 = *(a1 + 56);
  [v5 authorizeWithOptions:v7 completion:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __51__LARight_authorizeWithLocalizedReason_completion___block_invoke_75(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__LARight_authorizeWithLocalizedReason_completion___block_invoke_2;
  block[3] = &unk_1E77CB2C0;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v9, (a1 + 48));
  v8 = *(a1 + 40);
  os_activity_apply(v4, block);

  objc_destroyWeak(&v9);
}

uint64_t __51__LARight_authorizeWithLocalizedReason_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG(a1);
  if (*(a1 + 32))
  {
    v3 = LALogTypeForInternalError();
  }

  else
  {
    v3 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(v2, v3))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", *(a1 + 32)];
    }

    else
    {
      v6 = @"successfully";
    }

    *buf = 138543618;
    v9 = WeakRetained;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1A784E000, v2, v3, "%{public}@ authorizeWithLocalizedReason finished %{public}@", buf, 0x16u);
    if (v5)
    {
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)checkCanAuthorizeWithCompletion:(void *)handler
{
  v4 = handler;
  v5 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.checkCanAuthorizeWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__LARight_checkCanAuthorizeWithCompletion___block_invoke;
  v7[3] = &unk_1E77CB338;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  os_activity_apply(v5, v7);
}

void __43__LARight_checkCanAuthorizeWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ checkCanAuthorizeWithCompletion started", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v4 = *(a1 + 32);
  v9 = &unk_1F1A6FBD8;
  v10 = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__LARight_checkCanAuthorizeWithCompletion___block_invoke_87;
  v6[3] = &unk_1E77CB0A8;
  objc_copyWeak(&v8, buf);
  v7 = *(a1 + 40);
  [(LARight *)v4 _authorizeWithOptions:v5 completionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __43__LARight_checkCanAuthorizeWithCompletion___block_invoke_87(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v7 = LA_LOG(0);
    goto LABEL_6;
  }

  v4 = [MEMORY[0x1E696EE88] error:v3 hasCode:-1004];
  v5 = v4;
  v6 = LA_LOG(v4);
  v7 = v6;
  if (v5)
  {
LABEL_6:
    v10 = LALogTypeForInternalError();
    if (!os_log_type_enabled(v7, v10))
    {
      goto LABEL_12;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", v3];
    v9 = 1;
    goto LABEL_8;
  }

  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = 0;
  v10 = OS_LOG_TYPE_DEFAULT;
  v11 = @"successfully";
LABEL_8:
  *buf = 138543618;
  v13 = WeakRetained;
  v14 = 2114;
  v15 = v11;
  _os_log_impl(&dword_1A784E000, v7, v10, "%{public}@ checkCanAuthorizeWithCompletion finished %{public}@", buf, 0x16u);
  if (v9)
  {
  }

  else
  {
  }

LABEL_12:

  (*(*(a1 + 32) + 16))();
}

- (void)deauthorizeWithCompletion:(void *)handler
{
  v4 = handler;
  v5 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.deauthorizeWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__LARight_deauthorizeWithCompletion___block_invoke;
  v7[3] = &unk_1E77CB338;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  os_activity_apply(v5, v7);
}

uint64_t __37__LARight_deauthorizeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(LAContext);
  [*(a1 + 32) setContext:v2];

  if (*(*(a1 + 32) + 48) != 3)
  {
    __37__LARight_deauthorizeWithCompletion___block_invoke_cold_1();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)authorizeWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.authorizeWithOptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__LARight_authorizeWithOptions_completion___block_invoke;
  v12[3] = &unk_1E77CB360;
  v12[4] = self;
  v13 = optionsCopy;
  v14 = v8;
  v15 = completionCopy;
  v9 = v8;
  v10 = completionCopy;
  v11 = optionsCopy;
  os_activity_apply(v9, v12);
}

void __43__LARight_authorizeWithOptions_completion___block_invoke(id *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138543618;
    v23 = v3;
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ authorizeWithOptions %{public}@ started", buf, 0x16u);
  }

  v5 = [a1[5] objectForKeyedSubscript:&unk_1F1A6FBC0];
  if (v5 && ([a1[5] objectForKeyedSubscript:&unk_1F1A6FBC0], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, v5, (isKindOfClass & 1) != 0))
  {
    v8 = [a1[5] objectForKeyedSubscript:&unk_1F1A6FBC0];
    v9 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v10 = [v8 stringByTrimmingCharactersInSet:v9];
    v11 = [v10 length] == 0;

    if (v11)
    {
      v12 = a1[7];
      v13 = [LAAuthorizationError genericErrorWithMessage:@"Missing required 'LAOptionAuthenticationReason' option"];
      v12[2](v12, v13);
    }

    else
    {
      objc_initWeak(buf, a1[4]);
      [a1[4] setState:1];
      v16 = a1[4];
      v17 = a1[5];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __43__LARight_authorizeWithOptions_completion___block_invoke_96;
      v18[3] = &unk_1E77CB2E8;
      v19 = a1[6];
      objc_copyWeak(&v21, buf);
      v20 = a1[7];
      [(LARight *)v16 _authorizeWithOptions:v17 completionHandler:v18];

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v14 = a1[7];
    v15 = [LAAuthorizationError genericErrorWithMessage:@"Missing required 'LAOptionAuthenticationReason' option"];
    v14[2](v14, v15);
  }
}

void __43__LARight_authorizeWithOptions_completion___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__LARight_authorizeWithOptions_completion___block_invoke_2;
  block[3] = &unk_1E77CB2C0;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v9, (a1 + 48));
  v8 = *(a1 + 40);
  os_activity_apply(v4, block);

  objc_destroyWeak(&v9);
}

void __43__LARight_authorizeWithOptions_completion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG(a1);
  if (*(a1 + 32))
  {
    v3 = LALogTypeForInternalError();
  }

  else
  {
    v3 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(v2, v3))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", *(a1 + 32)];
    }

    else
    {
      v6 = @"successfully";
    }

    *buf = 138543618;
    v11 = WeakRetained;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1A784E000, v2, v3, "%{public}@ authorizeWithOptions finished %{public}@", buf, 0x16u);
    if (v5)
    {
    }
  }

  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = v7;
  if (v7)
  {
    if (*(a1 + 32))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    [v7 setState:v9];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    v6 = NSStringFromSelector(sel_state);
    [(LARight *)self willChangeValueForKey:v6];

    self->_state = state;
    v7 = NSStringFromSelector(sel_state);
    [(LARight *)self didChangeValueForKey:v7];
  }
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  v5 = NSStringFromSelector(sel_state);
  v6 = [keyCopy isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___LARight;
    v7 = objc_msgSendSuper2(&v9, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v7;
}

- (void)setContext:(id)context
{
  [(LARightContextHandler *)self->_contextHandler setContext:context];

  [(LARight *)self setState:3];
}

void __51__LARight__authorizeWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v5 = [WeakRetained context];
    [v4 armInContext:v5 options:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v6 = LA_LOG(0);
    v7 = LALogTypeForInternalError();
    if (os_log_type_enabled(v6, v7))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A784E000, v6, v7, "Operation interrupted", v10, 2u);
    }

    v8 = *(a1 + 40);
    v9 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v8 + 16))(v8, v9);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    accessKey = [v5 accessKey];
    accessKey2 = [(LARight *)self accessKey];
    v8 = [accessKey isEqual:accessKey2];

    if (v8)
    {
      context = [v5 context];
      context2 = [(LARight *)self context];
      v11 = [context isEqual:context2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_authorizeWithOptions:(void *)options completionHandler:
{
  v5 = a2;
  optionsCopy = options;
  if (self)
  {
    objc_initWeak(&location, self);
    v7 = self[4];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__LARight__authorizeWithOptions_completionHandler___block_invoke;
    v8[3] = &unk_1E77CB388;
    objc_copyWeak(&v11, &location);
    v10 = optionsCopy;
    v9 = v5;
    dispatch_async(v7, v8);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

@end