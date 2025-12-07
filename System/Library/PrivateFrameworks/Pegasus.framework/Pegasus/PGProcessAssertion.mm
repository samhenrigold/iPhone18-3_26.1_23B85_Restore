@interface PGProcessAssertion
+ (id)assertionWithDomainAttribute:(id)attribute forProcessWithIdentifier:(int)identifier explanation:(id)explanation;
+ (id)pipVisibleAssertionForProcessWithIdentifier:(int)identifier explanation:(id)explanation legacy:(BOOL)legacy;
+ (id)transientTaskAssertionForProcessWithIdentifier:(int)identifier explanation:(id)explanation;
- (BOOL)_isInvalidated;
- (PGProcessAssertion)initWithExplanation:(id)explanation;
- (id)description;
- (void)_setInvalidated:(BOOL)invalidated;
- (void)acquireWithTarget:(id)target domainAttribute:(id)attribute;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PGProcessAssertion

+ (id)transientTaskAssertionForProcessWithIdentifier:(int)identifier explanation:(id)explanation
{
  v4 = *&identifier;
  explanationCopy = explanation;
  transientTaskDomainAttribute = [self transientTaskDomainAttribute];
  v8 = [self assertionWithDomainAttribute:transientTaskDomainAttribute forProcessWithIdentifier:v4 explanation:explanationCopy];

  return v8;
}

+ (id)pipVisibleAssertionForProcessWithIdentifier:(int)identifier explanation:(id)explanation legacy:(BOOL)legacy
{
  v6 = *&identifier;
  explanationCopy = explanation;
  if (legacy)
  {
    [self pipVisibleLegacyDomainAttribute];
  }

  else
  {
    [self pipVisibleDomainAttribute];
  }
  v9 = ;
  v10 = [self assertionWithDomainAttribute:v9 forProcessWithIdentifier:v6 explanation:explanationCopy];

  return v10;
}

+ (id)assertionWithDomainAttribute:(id)attribute forProcessWithIdentifier:(int)identifier explanation:(id)explanation
{
  v6 = *&identifier;
  v17 = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  explanationCopy = explanation;
  v9 = [[PGProcessAssertion alloc] initWithExplanation:explanationCopy];

  if (v6 < 1)
  {
    v11 = PGLogCommon(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "+[PGProcessAssertion assertionWithDomainAttribute:forProcessWithIdentifier:explanation:]";
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_1BB282000, v11, OS_LOG_TYPE_DEFAULT, "%s Will ignore %{public}@ because there wasn't a valid pid", &v13, 0x16u);
    }
  }

  else
  {
    v11 = [MEMORY[0x1E69C7640] targetWithPid:v6];
    [(PGProcessAssertion *)v9 acquireWithTarget:v11 domainAttribute:attributeCopy];
  }

  return v9;
}

- (PGProcessAssertion)initWithExplanation:(id)explanation
{
  explanationCopy = explanation;
  v9.receiver = self;
  v9.super_class = PGProcessAssertion;
  v5 = [(PGProcessAssertion *)&v9 init];
  if (v5)
  {
    v6 = [explanationCopy copy];
    explanation = v5->_explanation;
    v5->_explanation = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PGProcessAssertion;
  v4 = [(PGProcessAssertion *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ - %@", v4, self->_explanation];

  return v5;
}

- (void)acquireWithTarget:(id)target domainAttribute:(id)attribute
{
  v29 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  attributeCopy = attribute;
  BSDispatchQueueAssertMain();
  if (self->_assertion)
  {
    [PGProcessAssertion acquireWithTarget:a2 domainAttribute:self];
  }

  if ([(PGProcessAssertion *)self _isInvalidated])
  {
    [PGProcessAssertion acquireWithTarget:a2 domainAttribute:self];
  }

  v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v10 = dispatch_queue_create("com.apple.pegasus.assertions", v9);
  queue = self->_queue;
  self->_queue = v10;

  v13 = PGLogCommon(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v22 = "[PGProcessAssertion acquireWithTarget:domainAttribute:]";
    v23 = 2114;
    selfCopy = self;
    v25 = 2114;
    v26 = targetCopy;
    v27 = 2114;
    v28 = attributeCopy;
    _os_log_impl(&dword_1BB282000, v13, OS_LOG_TYPE_DEFAULT, "%s %{public}@ target: %{public}@ domain: %{public}@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v14 = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__PGProcessAssertion_acquireWithTarget_domainAttribute___block_invoke;
  v17[3] = &unk_1E7F323B8;
  v17[4] = self;
  v18 = targetCopy;
  v19 = attributeCopy;
  v15 = attributeCopy;
  v16 = targetCopy;
  objc_copyWeak(&v20, buf);
  dispatch_async(v14, v17);
  objc_destroyWeak(&v20);

  objc_destroyWeak(buf);
}

void __56__PGProcessAssertion_acquireWithTarget_domainAttribute___block_invoke(uint64_t a1)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) _isInvalidated] & 1) == 0)
  {
    v2 = [MEMORY[0x1E69C7530] attributeWithCompletionPolicy:0];
    v3 = objc_alloc(MEMORY[0x1E69C7548]);
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 16);
    v19[0] = *(a1 + 48);
    v19[1] = v2;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v7 = [v3 initWithExplanation:v5 target:v4 attributes:v6];
    v8 = *(*(a1 + 32) + 24);
    *(*(a1 + 32) + 24) = v7;

    v10 = PGLogCommon(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 136315394;
      v16 = "[PGProcessAssertion acquireWithTarget:domainAttribute:]_block_invoke";
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_1BB282000, v10, OS_LOG_TYPE_DEFAULT, "%s Acquiring %{public}@", buf, 0x16u);
    }

    v12 = *(*(a1 + 32) + 24);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__PGProcessAssertion_acquireWithTarget_domainAttribute___block_invoke_32;
    v13[3] = &unk_1E7F32390;
    objc_copyWeak(&v14, (a1 + 56));
    [v12 acquireWithInvalidationHandler:v13];
    if ([*(a1 + 32) _isInvalidated])
    {
      [*(*(a1 + 32) + 24) invalidate];
    }

    objc_destroyWeak(&v14);
  }
}

void __56__PGProcessAssertion_acquireWithTarget_domainAttribute___block_invoke_32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = PGLogCommon(a1);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v9 = 136315394;
      v10 = "[PGProcessAssertion acquireWithTarget:domainAttribute:]_block_invoke";
      v11 = 2114;
      v12 = WeakRetained;
      v8 = "%s Failed to acquire %{public}@";
LABEL_6:
      _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, v8, &v9, 0x16u);
    }
  }

  else if (v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = 136315394;
    v10 = "[PGProcessAssertion acquireWithTarget:domainAttribute:]_block_invoke";
    v11 = 2114;
    v12 = WeakRetained;
    v8 = "%s %{public}@ invalidated";
    goto LABEL_6;
  }
}

- (BOOL)_isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_invalidated;
}

- (void)_setInvalidated:(BOOL)invalidated
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = invalidated;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"PGProcessAssertion.m" lineNumber:111 description:{@"Released %@ without invalidating first.", a2}];
}

- (void)invalidate
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PGLogCommon([(PGProcessAssertion *)self _setInvalidated:1]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    isValid = [(RBSAssertion *)self->_assertion isValid];
    v5 = 136315650;
    v6 = "[PGProcessAssertion invalidate]";
    v7 = 2114;
    selfCopy = self;
    v9 = 1024;
    v10 = isValid;
    _os_log_impl(&dword_1BB282000, v3, OS_LOG_TYPE_DEFAULT, "%s Invalidating %{public}@. was valid: %{BOOL}u", &v5, 0x1Cu);
  }

  [(RBSAssertion *)self->_assertion invalidate];
}

- (void)acquireWithTarget:(uint64_t)a1 domainAttribute:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PGProcessAssertion.m" lineNumber:72 description:@"Trying to acquire assertion when we already have one"];
}

- (void)acquireWithTarget:(uint64_t)a1 domainAttribute:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PGProcessAssertion.m" lineNumber:73 description:{@"Initially invalidated, which should not be possible"}];
}

@end