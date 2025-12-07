@interface FCInterestToken
+ (FCInterestToken)interestTokenWithCallbackQueue:(id)queue removeInterestBlock:(id)block;
+ (FCInterestToken)interestTokenWithRemoveInterestBlock:(id)block;
- (FCInterestToken)init;
- (FCInterestToken)initWithCallbackQueue:(id)queue removeInterestBlock:(id)block;
- (void)dealloc;
@end

@implementation FCInterestToken

- (void)dealloc
{
  (*(self->_removeInterestBlock + 2))();
  v3.receiver = self;
  v3.super_class = FCInterestToken;
  [(FCInterestToken *)&v3 dealloc];
}

- (FCInterestToken)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCInterestToken init]";
    v10 = 2080;
    v11 = "FCInterestToken.m";
    v12 = 1024;
    v13 = 39;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCInterestToken init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCInterestToken)initWithCallbackQueue:(id)queue removeInterestBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  blockCopy = block;
  if (!blockCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "removeInterestBlock != nil"];
    *buf = 136315906;
    v20 = "[FCInterestToken initWithCallbackQueue:removeInterestBlock:]";
    v21 = 2080;
    v22 = "FCInterestToken.m";
    v23 = 1024;
    v24 = 44;
    v25 = 2114;
    v26 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v18.receiver = self;
  v18.super_class = FCInterestToken;
  v8 = [(FCInterestToken *)&v18 init];
  if (v8)
  {
    if (queueCopy)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __61__FCInterestToken_initWithCallbackQueue_removeInterestBlock___block_invoke;
      aBlock[3] = &unk_1E7C37BC0;
      v16 = queueCopy;
      v17 = blockCopy;
      v9 = _Block_copy(aBlock);
      removeInterestBlock = v8->_removeInterestBlock;
      v8->_removeInterestBlock = v9;

      v11 = v16;
    }

    else
    {
      v12 = _Block_copy(blockCopy);
      v11 = v8->_removeInterestBlock;
      v8->_removeInterestBlock = v12;
    }
  }

  return v8;
}

+ (FCInterestToken)interestTokenWithCallbackQueue:(id)queue removeInterestBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  v7 = [objc_alloc(objc_opt_class()) initWithCallbackQueue:queueCopy removeInterestBlock:blockCopy];

  return v7;
}

+ (FCInterestToken)interestTokenWithRemoveInterestBlock:(id)block
{
  blockCopy = block;
  v4 = [objc_alloc(objc_opt_class()) initWithCallbackQueue:0 removeInterestBlock:blockCopy];

  return v4;
}

@end