@interface CNObservableContractEnforcement
+ (id)os_log;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
@end

@implementation CNObservableContractEnforcement

- (void)observerDidComplete
{
  v12[1] = *MEMORY[0x1E69E9840];
  p_state = &self->_state;
  if (self->_state)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidComplete];
    }

    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:];
    }

    os_log3 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log3, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:?];
    }

    v11 = CNObserverProtocolExceptionStateKey;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*p_state];
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    CNObserverThrowProtocolExceptionWithReason(@"Completion after termination", v8);
  }

  self->_state = 1;
  v9 = +[CNObservableContractTerminationContext currentContext];
  terminationContext = self->_terminationContext;
  self->_terminationContext = v9;
}

- (void)observerDidReceiveResult:(id)result
{
  v14[2] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (self->_state)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:];
    }

    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:];
    }

    os_log3 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log3, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:?];
    }

    v8 = CNObserverProtocolExceptionNullMarker[0];
    if (resultCopy)
    {
      v8 = resultCopy;
    }

    v14[0] = v8;
    v13[0] = CNObserverProtocolExceptionResultKey[0];
    v13[1] = CNObserverProtocolExceptionStateKey;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_state];
    v14[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    CNObserverThrowProtocolExceptionWithReason(@"Result after termination", v10);
  }

  if (!resultCopy)
  {
    os_log4 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log4, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:];
    }

    os_log5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log5, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:];
    }

    CNObserverThrowProtocolExceptionWithReason(@"Result cannot be nil", 0);
  }
}

- (void)observerDidFailWithError:(id)error
{
  v17[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_state)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidFailWithError:];
    }

    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidFailWithError:];
    }

    os_log3 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log3, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:];
    }

    os_log4 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log4, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:?];
    }

    v9 = CNObserverProtocolExceptionNullMarker[0];
    if (errorCopy)
    {
      v9 = errorCopy;
    }

    v17[0] = v9;
    v16[0] = CNObserverProtocolExceptionErrorKey[0];
    v16[1] = CNObserverProtocolExceptionStateKey;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_state];
    v17[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    CNObserverThrowProtocolExceptionWithReason(@"Failing after termination", v11);
  }

  self->_state = 2;
  v12 = +[CNObservableContractTerminationContext currentContext];
  terminationContext = self->_terminationContext;
  self->_terminationContext = v12;

  if (!errorCopy)
  {
    os_log5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log5, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidFailWithError:];
    }

    os_log6 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log6, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:];
    }

    CNObserverThrowProtocolExceptionWithReason(@"Error cannot be nil", 0);
  }
}

+ (id)os_log
{
  if (os_log_cn_once_token_15 != -1)
  {
    +[CNObservableContractEnforcement os_log];
  }

  v3 = os_log_cn_once_object_15;

  return v3;
}

uint64_t __41__CNObservableContractEnforcement_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.reactive-extensions", "contract-enforcement");
  v1 = os_log_cn_once_object_15;
  os_log_cn_once_object_15 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)observerDidReceiveResult:.cold.2()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)observerDidReceiveResult:(uint64_t)a1 .cold.3(uint64_t a1)
{
  [*(a1 + 16) threadId];
  [*(a1 + 16) threadId];
  v2 = [*(a1 + 16) callStack];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)observerDidFailWithError:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end