@interface _SBSHardwareButtonEventConsumerInfo
+ (id)infoWithConsumer:(id)consumer;
- (NSString)description;
- (SBSHardwareButtonService)service;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SBSHardwareButtonEventConsumerInfo

- (void)dealloc
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"_SBSHardwareButtonEventConsumerInfo.m" lineNumber:22 description:{@"must invalidate consumer token %p when finished", a2}];
}

+ (id)infoWithConsumer:(id)consumer
{
  v17 = *MEMORY[0x1E69E9840];
  consumerCopy = consumer;
  v5 = objc_alloc_init(self);
  if (objc_opt_respondsToSelector())
  {
    v6 = 64;
  }

  else
  {
    v6 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 |= 2uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 |= 4uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 |= 8uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 |= 0x10uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 |= 0x20uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 |= 0x10000uLL;
  }

  v7 = objc_opt_respondsToSelector();
  if (v7)
  {
    v8 = v6 | 0x180;
  }

  else
  {
    v8 = v6;
  }

  v9 = SBLogCommon(v7);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2048;
      v16 = v8;
      v11 = v14;
      _os_log_impl(&dword_19169D000, v10, OS_LOG_TYPE_INFO, "%{public}@ buttonEventMask is %lx", &v13, 0x16u);
    }

    [v5 setConsumer:consumerCopy];
    [v5 setEventMask:v8];
    [v5 setValid:1];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_SBSHardwareButtonEventConsumerInfo *)consumerCopy infoWithConsumer:v10];
    }
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendUInt64:self->_eventMask withName:@"eventMask"];
  v5 = NSStringFromSBSHardwareButtonEventPriority(self->_eventPriority);
  [v3 appendString:v5 withName:@"eventPriority"];

  v6 = [v3 appendObject:self->_consumer withName:@"consumer" skipIfNil:0];
  build = [v3 build];

  return build;
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained consumerInfoWillInvalidate:self];

  self->_valid = 0;
}

- (SBSHardwareButtonService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

+ (void)infoWithConsumer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_19169D000, a2, OS_LOG_TYPE_ERROR, "no valid SBSHardwareButtonEventConsuming protocol methods implemented on %{public}@", &v4, 0xCu);
}

@end