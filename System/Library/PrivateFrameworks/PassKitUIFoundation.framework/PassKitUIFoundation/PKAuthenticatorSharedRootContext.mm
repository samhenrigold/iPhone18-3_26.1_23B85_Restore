@interface PKAuthenticatorSharedRootContext
+ (id)sharedInstance;
- (PKAuthenticatorSharedRootContext)init;
- (id)externalizedContext;
- (int64_t)_initialUserIntentAvailabilityState;
- (void)_consumeWithCompletion:(id)completion reset:(BOOL)reset;
- (void)dealloc;
@end

@implementation PKAuthenticatorSharedRootContext

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[PKAuthenticatorSharedRootContext sharedInstance];
  }

  v3 = sharedInstance_context;

  return v3;
}

uint64_t __50__PKAuthenticatorSharedRootContext_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKAuthenticatorSharedRootContext);
  v1 = sharedInstance_context;
  sharedInstance_context = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (PKAuthenticatorSharedRootContext)init
{
  v5.receiver = self;
  v5.super_class = PKAuthenticatorSharedRootContext;
  v2 = [(PKAuthenticatorSharedRootContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_userIntentAvailabilityState = [(PKAuthenticatorSharedRootContext *)v2 _initialUserIntentAvailabilityState];
  }

  return v3;
}

- (void)dealloc
{
  [(PKAuthenticatorSharedRootContext *)self resetWithCompletion:0];
  v3.receiver = self;
  v3.super_class = PKAuthenticatorSharedRootContext;
  [(PKAuthenticatorSharedRootContext *)&v3 dealloc];
}

- (int64_t)_initialUserIntentAvailabilityState
{
  if (!PKUserIntentIsAvailable())
  {
    return 2;
  }

  if (!PKPearlIsAvailable())
  {
    return 3;
  }

  if (PKRunningInViewService())
  {
    return 3;
  }

  return 2;
}

- (void)_consumeWithCompletion:(id)completion reset:(BOOL)reset
{
  resetCopy = reset;
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_LAContext;
  LAContext = self->_LAContext;
  self->_LAContext = 0;

  if (resetCopy)
  {
    _initialUserIntentAvailabilityState = [(PKAuthenticatorSharedRootContext *)self _initialUserIntentAvailabilityState];
  }

  else
  {
    _initialUserIntentAvailabilityState = 2;
  }

  self->_userIntentAvailabilityState = _initialUserIntentAvailabilityState;
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v15 = v7;
      _os_log_impl(&dword_25E0A9000, v10, OS_LOG_TYPE_DEFAULT, "PKAuthenticatorSharedRootContext (%{public}p): shared context cleared and attempting reset...", buf, 0xCu);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__PKAuthenticatorSharedRootContext__consumeWithCompletion_reset___block_invoke;
    v11[3] = &unk_2799FFDC8;
    v12 = v7;
    v13 = completionCopy;
    [(LAContext *)v12 resetWithReply:v11];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __65__PKAuthenticatorSharedRootContext__consumeWithCompletion_reset___block_invoke(uint64_t a1, char a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) invalidate];
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 || (a2 & 1) == 0)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v12 = *(a1 + 32);
    v17 = 134349314;
    v18 = v12;
    v19 = 2112;
    v20 = v5;
    v9 = "PKAuthenticatorSharedRootContext (%{public}p): failed to reset former shared context - %@.";
    v10 = v6;
    v11 = 22;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = *(a1 + 32);
    v17 = 134349056;
    v18 = v8;
    v9 = "PKAuthenticatorSharedRootContext (%{public}p): former context reset and invalidated.";
    v10 = v6;
    v11 = 12;
  }

  _os_log_impl(&dword_25E0A9000, v10, OS_LOG_TYPE_DEFAULT, v9, &v17, v11);
LABEL_8:

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v13, v14, v15);
  }
}

- (id)externalizedContext
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  LAContext = self->_LAContext;
  if (!LAContext)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD4790]);
    v5 = self->_LAContext;
    self->_LAContext = v4;

    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_LAContext;
      v11 = 134349056;
      v12 = v7;
      _os_log_impl(&dword_25E0A9000, v6, OS_LOG_TYPE_DEFAULT, "PKAuthenticatorSharedRootContext (%{public}p): creating shared root.", &v11, 0xCu);
    }

    LAContext = self->_LAContext;
  }

  v8 = LAContext;
  os_unfair_lock_unlock(&self->_lock);
  externalizedContext = [(LAContext *)v8 externalizedContext];

  return externalizedContext;
}

@end