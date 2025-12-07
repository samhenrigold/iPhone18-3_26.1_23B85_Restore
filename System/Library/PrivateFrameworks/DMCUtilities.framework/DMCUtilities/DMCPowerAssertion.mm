@interface DMCPowerAssertion
- (DMCPowerAssertion)initWithReason:(id)reason;
- (void)dealloc;
- (void)park;
- (void)unpark;
@end

@implementation DMCPowerAssertion

- (DMCPowerAssertion)initWithReason:(id)reason
{
  v7.receiver = self;
  v7.super_class = DMCPowerAssertion;
  v3 = [(DMCProcessAssertion *)&v7 initWithReason:reason];
  v4 = v3;
  if (v3)
  {
    v3->_parked = 0;
    v5 = _assertionQueue(v3);
    dispatch_sync(v5, &__block_literal_global_16);
  }

  return v4;
}

- (void)dealloc
{
  v3 = _assertionQueue(self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__DMCPowerAssertion_dealloc__block_invoke;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = DMCPowerAssertion;
  [(DMCProcessAssertion *)&v4 dealloc];
}

void __28__DMCPowerAssertion_dealloc__block_invoke(uint64_t result, uint64_t a2)
{
  if ((*(*(result + 32) + 24) & 1) == 0)
  {
    _releasePowerAssertion(result, a2);
  }
}

- (void)park
{
  v3 = _assertionQueue(self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__DMCPowerAssertion_park__block_invoke;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __25__DMCPowerAssertion_park__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (*(v4 + 24) == 1)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Trying to park a power assertion that's already parked." userInfo:{0, v2, v3}];
    objc_exception_throw(v5);
  }

  *(v4 + 24) = 1;

  _releasePowerAssertion(a1, a2);
}

- (void)unpark
{
  v3 = _assertionQueue(self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__DMCPowerAssertion_unpark__block_invoke;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __27__DMCPowerAssertion_unpark__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if ((*(v4 + 24) & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Trying to unpark a power assertion that's not parked." userInfo:{0, v2, v3}];
    objc_exception_throw(v5);
  }

  *(v4 + 24) = 0;

  _retainPowerAssertion(a1, a2);
}

@end