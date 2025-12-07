@interface TPSOSTransaction
+ (id)transactionWithName:(id)name;
- (TPSOSTransaction)initWithTransactionName:(id)name;
- (void)dealloc;
- (void)endTransaction;
@end

@implementation TPSOSTransaction

+ (id)transactionWithName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] initWithTransactionName:nameCopy];

  return v5;
}

- (TPSOSTransaction)initWithTransactionName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = TPSOSTransaction;
  v5 = [(TPSOSTransaction *)&v12 init];
  if (v5)
  {
    uTF8String = [nameCopy UTF8String];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5->_creationTime = v7;
    v8 = os_transaction_create();
    transaction = v5->_transaction;
    v5->_transaction = v8;

    v10 = +[TPSLogger default];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(TPSOSTransaction *)uTF8String initWithTransactionName:v5, v10];
    }
  }

  return v5;
}

- (void)endTransaction
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  selfCopy = self;
  _os_log_debug_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_DEBUG, "EndTransaction was called but transaction was already nil. (%p)", &v2, 0xCu);
}

- (void)dealloc
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [a2 creationTime];
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_1C00A7000, v5, v6, "Ending transaction %s (%p) - held for %.3fs", v7, v8, v9, v10, v4);
}

- (void)initWithTransactionName:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&dword_1C00A7000, log, OS_LOG_TYPE_DEBUG, "Created transaction: %s (%p)", &v3, 0x16u);
}

@end