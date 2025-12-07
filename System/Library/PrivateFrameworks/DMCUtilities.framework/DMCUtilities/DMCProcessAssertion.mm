@interface DMCProcessAssertion
- (DMCProcessAssertion)initWithReason:(id)reason;
- (void)_createAssertion;
- (void)_releaseAssertion;
- (void)dealloc;
@end

@implementation DMCProcessAssertion

- (DMCProcessAssertion)initWithReason:(id)reason
{
  reasonCopy = reason;
  v9.receiver = self;
  v9.super_class = DMCProcessAssertion;
  v6 = [(DMCProcessAssertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reason, reason);
    [(DMCProcessAssertion *)v7 _createAssertion];
  }

  return v7;
}

- (void)dealloc
{
  [(DMCProcessAssertion *)self _releaseAssertion];
  v3.receiver = self;
  v3.super_class = DMCProcessAssertion;
  [(DMCProcessAssertion *)&v3 dealloc];
}

- (void)_createAssertion
{
  v3 = _assertionQueue(self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__DMCProcessAssertion__createAssertion__block_invoke;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __39__DMCProcessAssertion__createAssertion__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = DMCLogObjects(a1, a2)[2];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 32) + 16);
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_INFO, "Creating process assertion with reason: %{public}@", &v9, 0xCu);
  }

  v5 = [@"com.apple.ManagedConfiguration." stringByAppendingString:*(*(a1 + 32) + 16)];
  [v5 UTF8String];
  v6 = os_transaction_create();
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = v6;
}

- (void)_releaseAssertion
{
  v3 = _assertionQueue(self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__DMCProcessAssertion__releaseAssertion__block_invoke;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __40__DMCProcessAssertion__releaseAssertion__block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = DMCLogObjects(a1, a2)[2];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 32) + 16);
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_INFO, "Releasing process assertion with reason: %{public}@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = 0;
}

@end