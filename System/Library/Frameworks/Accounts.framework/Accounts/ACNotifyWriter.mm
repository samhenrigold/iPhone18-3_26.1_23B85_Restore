@interface ACNotifyWriter
- (ACNotifyWriter)initWithKey:(id)key;
- (void)dealloc;
- (void)write:(unint64_t)write;
@end

@implementation ACNotifyWriter

- (ACNotifyWriter)initWithKey:(id)key
{
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = ACNotifyWriter;
  v5 = [(ACNotifyWriter *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(ACNotifyWriter *)v5 setKey:keyCopy];
    v6->notifierToken = -1;
    v7 = [(ACNotifyWriter *)v6 key];
    v8 = notify_register_check([v7 UTF8String], &v6->notifierToken);

    if (v8)
    {
      v10 = _ACLogSystem(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ACNotifyReader initWithKey:updateQueue:updateBlock:];
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  notifierToken = self->notifierToken;
  if (notifierToken != -1)
  {
    notify_cancel(notifierToken);
  }

  v4.receiver = self;
  v4.super_class = ACNotifyWriter;
  [(ACNotifyWriter *)&v4 dealloc];
}

- (void)write:(unint64_t)write
{
  if (self->notifierToken == -1)
  {
    v4 = _ACLogSystem(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ACNotifyWriter *)self write:v4];
    }
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v6 = __24__ACNotifyWriter_write___block_invoke;
    v7 = &unk_1E7977870;
    selfCopy = self;
    writeCopy = write;
    v4 = v5;
    os_unfair_lock_lock(&self->lock);
    v6(v4);
    os_unfair_lock_unlock(&self->lock);
  }
}

void __24__ACNotifyWriter_write___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  check = 0;
  v2 = (a1 + 32);
  v3 = notify_check(*(*(a1 + 32) + 8), &check);
  if (v3)
  {
    v4 = v3;
    v5 = _ACLogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*v2 key];
      *buf = 138412546;
      *v17 = v6;
      *&v17[8] = 1024;
      *&v17[10] = v4;
      _os_log_impl(&dword_1AC3CD000, v5, OS_LOG_TYPE_DEFAULT, "Failed to check for %@ number change: notify_check failed: %u", buf, 0x12u);
    }
  }

  v7 = notify_set_state(*(*(a1 + 32) + 8), *(a1 + 40));
  if (v7)
  {
    v8 = v7;
    v9 = _ACLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = *(*(a1 + 32) + 8);
      *buf = 67109632;
      *v17 = v11;
      *&v17[4] = 2048;
      *&v17[6] = v10;
      v18 = 1024;
      v19 = v8;
      _os_log_error_impl(&dword_1AC3CD000, v9, OS_LOG_TYPE_ERROR, "notify_set_state(%d, %llu) failed: %d", buf, 0x18u);
    }
  }

  else
  {
    v12 = [*v2 key];
    v13 = notify_post([v12 UTF8String]);

    if (!v13)
    {
      return;
    }

    v9 = _ACLogSystem(v14);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __24__ACNotifyWriter_write___block_invoke_cold_1(v2, v13, v9);
    }
  }
}

- (void)write:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 key];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_ERROR, "Failed to get %@ number: libnotify registration failed", &v4, 0xCu);
}

void __24__ACNotifyWriter_write___block_invoke_cold_1(id *a1, int a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [*a1 key];
  OUTLINED_FUNCTION_0_4();
  v7 = a2;
  _os_log_error_impl(&dword_1AC3CD000, a3, OS_LOG_TYPE_ERROR, "notify_post(%{public}@) failed: %d", v6, 0x12u);
}

@end