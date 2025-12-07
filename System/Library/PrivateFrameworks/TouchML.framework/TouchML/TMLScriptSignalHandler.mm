@interface TMLScriptSignalHandler
- (TMLScriptSignalHandler)initWithFunctionName:(id)name returnType:(unint64_t)type target:(id)target context:(id)context;
- (id)callWithArguments:(id)arguments;
@end

@implementation TMLScriptSignalHandler

- (TMLScriptSignalHandler)initWithFunctionName:(id)name returnType:(unint64_t)type target:(id)target context:(id)context
{
  nameCopy = name;
  targetCopy = target;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = TMLScriptSignalHandler;
  v13 = [(TMLScriptSignalHandler *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_returnType = type;
    v15 = [nameCopy copy];
    functionName = v14->_functionName;
    v14->_functionName = v15;

    objc_storeWeak(&v14->_target, targetCopy);
    objc_storeWeak(&v14->_context, contextCopy);
  }

  return v14;
}

- (id)callWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  if ((atomic_fetch_or(&self->_flags, 0x40u) & 0x40) != 0)
  {
    v8 = MEMORY[0x277CBEAD8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nested signal triggered '%@'", self->_functionName];
    v9 = [v8 exceptionWithName:@"TMLRuntimeException" reason:v6 userInfo:0];
    [TMLExceptionHandler raiseException:v9];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v6 = [WeakRetained callFunction:self->_functionName arguments:argumentsCopy returnType:self->_returnType];

    atomic_fetch_and_explicit(&self->_flags, 0xBFu, memory_order_relaxed);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v6 = 0;
    }

    if (self->_returnType != 1)
    {
      v7 = [[TMLValue alloc] initWithValue:v6 valueType:self->_returnType];
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

@end