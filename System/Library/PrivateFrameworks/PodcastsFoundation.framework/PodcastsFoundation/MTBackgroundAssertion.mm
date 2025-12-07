@interface MTBackgroundAssertion
- (MTBackgroundAssertion)initWithName:(id)name flags:(unsigned int)flags reason:(unsigned int)reason;
- (id)description;
- (void)_cancelInvalidationTimer;
- (void)_createScheduledTimerWithInterval:(double)interval;
- (void)_invalidate;
- (void)_invalidationTimerFired;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateAfterDelay:(double)delay;
@end

@implementation MTBackgroundAssertion

- (MTBackgroundAssertion)initWithName:(id)name flags:(unsigned int)flags reason:(unsigned int)reason
{
  v5 = *&reason;
  v6 = *&flags;
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v26.receiver = self;
  v26.super_class = MTBackgroundAssertion;
  v9 = [(MTBackgroundAssertion *)&v26 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E698D038]) initWithPID:getpid() flags:v6 reason:v5 name:nameCopy];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __51__MTBackgroundAssertion_initWithName_flags_reason___block_invoke;
    v24[3] = &unk_1E8568E28;
    v11 = nameCopy;
    v25 = v11;
    [v10 setInvalidationHandler:v24];
    [v10 acquire];
    valid = [v10 valid];
    v13 = _MTLogCategoryBackgroundFetching();
    v14 = v13;
    if (valid)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v11;
        v15 = "Acquired assertion for %@";
        v16 = v14;
        v17 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
        _os_log_impl(&dword_1D8CEC000, v16, v17, v15, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v11;
      v15 = "Fail to acquire assertion for %@";
      v16 = v14;
      v17 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

    assertion = v9->_assertion;
    v9->_assertion = v10;
    v19 = v10;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.podcasts.MTBackgroundAssertion", v20);
    serialQueue = v9->_serialQueue;
    v9->_serialQueue = v21;
  }

  return v9;
}

void __51__MTBackgroundAssertion_initWithName_flags_reason___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_DEFAULT, "Assertion with name %@ was invalidated.", &v4, 0xCu);
  }
}

- (void)dealloc
{
  [(MTBackgroundAssertion *)self _invalidate];
  v3.receiver = self;
  v3.super_class = MTBackgroundAssertion;
  [(MTBackgroundAssertion *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p assertion: %@>", v5, self, self->_assertion];

  return v6;
}

- (void)invalidate
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MTBackgroundAssertion_invalidate__block_invoke;
  block[3] = &unk_1E8568E28;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)invalidateAfterDelay:(double)delay
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MTBackgroundAssertion_invalidateAfterDelay___block_invoke;
  v4[3] = &unk_1E856B590;
  v4[4] = self;
  *&v4[5] = delay;
  dispatch_async(serialQueue, v4);
}

uint64_t __46__MTBackgroundAssertion_invalidateAfterDelay___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelInvalidationTimer];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _createScheduledTimerWithInterval:v3];
}

- (void)_invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating %@", &v4, 0xCu);
  }

  [(MTBackgroundAssertion *)self _cancelInvalidationTimer];
  [(BKSProcessAssertion *)self->_assertion invalidate];
}

- (void)_invalidationTimerFired
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "Assertion %@ just timed out, force invalidating.", &v4, 0xCu);
  }

  [(MTBackgroundAssertion *)self invalidate];
}

- (void)_cancelInvalidationTimer
{
  [(NSTimer *)self->_invalidationTimer invalidate];
  invalidationTimer = self->_invalidationTimer;
  self->_invalidationTimer = 0;
}

- (void)_createScheduledTimerWithInterval:(double)interval
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEFAULT, "Assertion %@ timer set %f", &v9, 0x16u);
  }

  v6 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__invalidationTimerFired selector:0 userInfo:0 repeats:interval];
  invalidationTimer = self->_invalidationTimer;
  self->_invalidationTimer = v6;

  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [mainRunLoop addTimer:self->_invalidationTimer forMode:*MEMORY[0x1E695D918]];
}

@end