@interface ACNotifyReader
- (ACNotifyReader)initWithKey:(id)key updateQueue:(id)queue updateBlock:(id)block;
- (unint64_t)currentValue;
- (void)currentValue;
- (void)dealloc;
@end

@implementation ACNotifyReader

- (unint64_t)currentValue
{
  v18 = *MEMORY[0x1E69E9840];
  notifierToken = self->_notifierToken;
  if (notifierToken != -1)
  {
    check = 0;
    v4 = notify_check(notifierToken, &check);
    if (v4)
    {
      v5 = v4;
      v6 = _ACLogSystem(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(ACNotifyReader *)self key];
        *buf = 138412546;
        v15 = v7;
        v16 = 1024;
        v17 = v5;
        _os_log_impl(&dword_1AC3CD000, v6, OS_LOG_TYPE_DEFAULT, "Failed to check for %@ change: notify_check failed: %u", buf, 0x12u);
      }
    }

    else if (check != 1)
    {
      return self->_cachedValue;
    }

    state = notify_get_state(self->_notifierToken, &self->_cachedValue);
    if (state)
    {
      v11 = state;
      v12 = _ACLogSystem(state);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(ACNotifyReader *)self currentValue];
      }

      self->_cachedValue = 0;
    }

    return self->_cachedValue;
  }

  v8 = _ACLogSystem(notifierToken);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(ACNotifyReader *)self currentValue];
  }

  return 0;
}

- (void)dealloc
{
  notifierToken = self->_notifierToken;
  if (notifierToken != -1)
  {
    notify_cancel(notifierToken);
  }

  dispatchToken = self->_dispatchToken;
  if (dispatchToken != -1)
  {
    notify_cancel(dispatchToken);
  }

  v5.receiver = self;
  v5.super_class = ACNotifyReader;
  [(ACNotifyReader *)&v5 dealloc];
}

- (ACNotifyReader)initWithKey:(id)key updateQueue:(id)queue updateBlock:(id)block
{
  keyCopy = key;
  queueCopy = queue;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = ACNotifyReader;
  v11 = [(ACNotifyReader *)&v19 init];
  v12 = v11;
  if (v11)
  {
    [(ACNotifyReader *)v11 setCachedValue:0];
    v12->_notifierToken = -1;
    [(ACNotifyReader *)v12 setKey:keyCopy];
    v13 = notify_register_check([keyCopy UTF8String], &v12->_notifierToken);
    if (v13)
    {
      v14 = _ACLogSystem(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ACNotifyReader initWithKey:updateQueue:updateBlock:];
      }
    }

    v12->_dispatchToken = -1;
    if (queueCopy && blockCopy)
    {
      uTF8String = [keyCopy UTF8String];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __54__ACNotifyReader_initWithKey_updateQueue_updateBlock___block_invoke;
      handler[3] = &unk_1E79771A8;
      v18 = blockCopy;
      notify_register_dispatch(uTF8String, &v12->_dispatchToken, queueCopy, handler);
    }
  }

  return v12;
}

- (void)initWithKey:updateQueue:updateBlock:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  v3 = v0;
  _os_log_error_impl(&dword_1AC3CD000, v1, OS_LOG_TYPE_ERROR, "Failed to register for %@ notifications: notify_register_check failed: %u", v2, 0x12u);
}

- (void)currentValue
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [self key];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_ERROR, "Failed to get %@ number: libnotify registration failed", &v4, 0xCu);
}

@end