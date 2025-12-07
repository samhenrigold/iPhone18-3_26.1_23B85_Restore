@interface MDMPowerAssertion
+ (id)_currentAssertions;
+ (id)_dateFormatter;
+ (id)assertionDescriptions;
- (MDMPowerAssertion)initWithReason:(id)reason;
- (id)description;
- (void)dealloc;
@end

@implementation MDMPowerAssertion

- (MDMPowerAssertion)initWithReason:(id)reason
{
  v22 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v19.receiver = self;
  v19.super_class = MDMPowerAssertion;
  begin = [(DMCPowerAssertion *)&v19 initWithReason:reasonCopy];
  v6 = begin;
  if (begin)
  {
    v7 = objc_opt_new();
    v8 = *(v6 + 32);
    *(v6 + 32) = v7;

    v9 = +[DMCMultiUserModeUtilities isSharediPad];
    if (v9)
    {
      v11 = [MEMORY[0x1E69DF090] taskWithName:@"MDMBlockingTask" reason:reasonCopy];
      v12 = *(v6 + 40);
      *(v6 + 40) = v11;

      begin = [*(v6 + 40) begin];
    }

    else
    {
      v13 = DMCLogObjects(v9, v10)[2];
      begin = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (begin)
      {
        *buf = 138543362;
        v21 = reasonCopy;
        _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_DEFAULT, "Starting MDM power assertion with reason: %{public}@", buf, 0xCu);
      }
    }
  }

  v14 = _assertionQueue(begin);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MDMPowerAssertion_initWithReason___block_invoke;
  block[3] = &unk_1E7ADC760;
  v15 = v6;
  v18 = v15;
  dispatch_sync(v14, block);

  return v15;
}

void __36__MDMPowerAssertion_initWithReason___block_invoke(uint64_t a1)
{
  v2 = +[MDMPowerAssertion _currentAssertions];
  [v2 addPointer:*(a1 + 32)];
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[DMCMultiUserModeUtilities isSharediPad];
  if (v3)
  {
    v5 = [(UMUserSwitchBlockingTask *)self->_blockingTask end];
  }

  else
  {
    v6 = DMCLogObjects(v3, v4)[2];
    v5 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v7 = v6;
      reason = [(DMCProcessAssertion *)self reason];
      *buf = 138543362;
      v13 = reason;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_DEFAULT, "Ending MDM power assertion with reason: %{public}@", buf, 0xCu);
    }
  }

  v9 = _assertionQueue(v5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MDMPowerAssertion_dealloc__block_invoke;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_sync(v9, block);

  v10.receiver = self;
  v10.super_class = MDMPowerAssertion;
  [(DMCPowerAssertion *)&v10 dealloc];
}

void __28__MDMPowerAssertion_dealloc__block_invoke(uint64_t a1)
{
  v7 = +[MDMPowerAssertion _currentAssertions];
  v2 = [v7 count];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    while (1)
    {
      v5 = [v7 pointerAtIndex:v4];
      v6 = v5;
      if (v5 == *(a1 + 32))
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_7;
      }
    }

    [v7 removePointerAtIndex:v4];
  }

LABEL_7:
}

+ (id)assertionDescriptions
{
  v3 = objc_opt_new();
  v4 = _assertionQueue(v3);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __42__MDMPowerAssertion_assertionDescriptions__block_invoke;
  v11 = &unk_1E7ADCF00;
  v12 = v3;
  selfCopy = self;
  v5 = v3;
  dispatch_sync(v4, &v8);

  v6 = [v5 copy];

  return v6;
}

void __42__MDMPowerAssertion_assertionDescriptions__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 40) _currentAssertions];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (v7)
        {
          v8 = *(a1 + 32);
          v9 = [v7 description];
          [v8 addObject:v9];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (id)description
{
  v3 = objc_opt_class();
  _dateFormatter = [v3 _dateFormatter];
  creationDate = [(MDMPowerAssertion *)self creationDate];
  v6 = [_dateFormatter stringFromDate:creationDate];

  v7 = MEMORY[0x1E696AEC0];
  reason = [(DMCProcessAssertion *)self reason];
  v9 = [v7 stringWithFormat:@"<%@: %p {\n\tReason  : %@\n\tCreated : %@\n}>", v3, self, reason, v6];

  return v9;
}

+ (id)_currentAssertions
{
  if (_currentAssertions_onceToken != -1)
  {
    +[MDMPowerAssertion _currentAssertions];
  }

  v3 = _currentAssertions_currentAssertions;

  return v3;
}

uint64_t __39__MDMPowerAssertion__currentAssertions__block_invoke()
{
  _currentAssertions_currentAssertions = [MEMORY[0x1E696AE08] weakObjectsPointerArray];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_dateFormatter
{
  if (_dateFormatter_onceToken != -1)
  {
    +[MDMPowerAssertion _dateFormatter];
  }

  v3 = _dateFormatter_dateFormatter;

  return v3;
}

uint64_t __35__MDMPowerAssertion__dateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _dateFormatter_dateFormatter;
  _dateFormatter_dateFormatter = v0;

  v2 = [MEMORY[0x1E695DF58] currentLocale];
  [_dateFormatter_dateFormatter setLocale:v2];

  v3 = _dateFormatter_dateFormatter;

  return [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSZZZ"];
}

@end