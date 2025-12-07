@interface _EXDecoderHack
- (_EXDecoderHack)initWithContextFactory:(id)factory;
- (id)decodeObjectOfClass:(Class)class forKey:(id)key;
@end

@implementation _EXDecoderHack

- (_EXDecoderHack)initWithContextFactory:(id)factory
{
  factoryCopy = factory;
  v9.receiver = self;
  v9.super_class = _EXDecoderHack;
  v5 = [(_EXDecoderHack *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(factoryCopy);
    contextFactory = v5->_contextFactory;
    v5->_contextFactory = v6;
  }

  return v5;
}

- (id)decodeObjectOfClass:(Class)class forKey:(id)key
{
  keyCopy = key;
  v8 = EXGetExtensionContextInternalClass(keyCopy, v7);
  if (v8 != class)
  {
    v12 = _EXDefaultLog(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [_EXDecoderHack decodeObjectOfClass:forKey:];
    }

    goto LABEL_10;
  }

  v9 = [keyCopy isEqualToString:@"self.internalExtensionContext"];
  if ((v9 & 1) == 0)
  {
    v12 = _EXDefaultLog(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [_EXDecoderHack decodeObjectOfClass:forKey:];
    }

LABEL_10:

    __break(1u);
    return result;
  }

  v10 = (*(self->_contextFactory + 2))();

  return v10;
}

- (void)decodeObjectOfClass:forKey:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = "aClass == EXGetExtensionContextInternalClass()";
  v3 = 2080;
  OUTLINED_FUNCTION_0();
  v4 = 38;
  _os_log_fault_impl(&dword_1847D1000, v0, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unexpected class for decoding", v1, 0x1Cu);
}

- (void)decodeObjectOfClass:forKey:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = "[key isEqualToString:@self.internalExtensionContext]";
  v3 = 2080;
  OUTLINED_FUNCTION_0();
  v4 = 39;
  _os_log_fault_impl(&dword_1847D1000, v0, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unexpected key for decoding", v1, 0x1Cu);
}

@end