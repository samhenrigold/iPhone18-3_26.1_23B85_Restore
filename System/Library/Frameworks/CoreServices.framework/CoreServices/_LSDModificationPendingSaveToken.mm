@interface _LSDModificationPendingSaveToken
- (_LSDModificationPendingSaveToken)initWithUUID:(id)d;
- (id).cxx_construct;
- (void)saveDidHappen:(BOOL)happen error:(id)error;
- (void)waitForResult:(id)result;
@end

@implementation _LSDModificationPendingSaveToken

- (_LSDModificationPendingSaveToken)initWithUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = _LSDModificationPendingSaveToken;
  v6 = [(_LSDModificationPendingSaveToken *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    waiters = v6->_waiters;
    v6->_waiters = v7;

    objc_storeStrong(&v6->_uuid, d);
  }

  return v6;
}

- (void)waitForResult:(id)result
{
  v15 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  os_unfair_lock_lock(&self->_mutex);
  if (self->_saveError.__engaged_)
  {
    v6 = _LSInstallLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      uuid = self->_uuid;
      v13 = 138412290;
      v14 = uuid;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "save for operation %@ is already complete", &v13, 0xCu);
    }

    resultCopy[2](resultCopy, self->_saveError.var0.__val_ == 0);
  }

  else
  {
    v8 = _LSInstallLog(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = self->_uuid;
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_INFO, "waiting for save for operation %@", &v13, 0xCu);
    }

    waiters = self->_waiters;
    v11 = [resultCopy copy];
    v12 = MEMORY[0x1865D71B0]();
    [(NSMutableArray *)waiters addObject:v12];
  }

  os_unfair_lock_unlock(&self->_mutex);
}

- (void)saveDidHappen:(BOOL)happen error:(id)error
{
  happenCopy = happen;
  v33 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  os_unfair_lock_lock(&self->_mutex);
  if (self->_saveError.__engaged_)
  {
    v7 = _LSInstallLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [_LSDModificationPendingSaveToken saveDidHappen:v7 error:?];
    }
  }

  else
  {
    v8 = std::optional<NSError * {__strong}>::operator=[abi:nn200100]<NSError * {__strong}&,void>(&self->_saveError, &errorCopy);
    v9 = _LSInstallLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = errorCopy;
      uuid = self->_uuid;
      v12 = [(NSMutableArray *)self->_waiters count];
      *buf = 67109890;
      v26 = happenCopy;
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = uuid;
      v31 = 2048;
      v32 = v12;
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "Save happened (%d %@) for operation %@, save token calling %zu handler(s)", buf, 0x26u);
    }

    v13 = objc_autoreleasePoolPush();
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = self->_waiters;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v15)
    {
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v14);
          }

          (*(*(*(&v19 + 1) + 8 * v17) + 16))(*(*(&v19 + 1) + 8 * v17), errorCopy == 0);
          ++v17;
        }

        while (v15 != v17);
        v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v15);
    }

    waiters = self->_waiters;
    self->_waiters = 0;

    objc_autoreleasePoolPop(v13);
  }

  os_unfair_lock_unlock(&self->_mutex);
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 32) = 0;
  *(self + 10) = 0;
  return self;
}

- (void)saveDidHappen:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_18162D000, a2, OS_LOG_TYPE_FAULT, "Got multiple save callbacks for pending save token (op %@)! That's a bug!", &v3, 0xCu);
}

@end