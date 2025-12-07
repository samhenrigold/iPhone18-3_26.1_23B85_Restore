@interface SAStackIterator
- (BOOL)hasKernelStack;
- (BOOL)hasSwiftAsyncStack;
- (BOOL)hasUserStack;
- (void)iterateFramesWithBacktraceStyle:(unint64_t)style block:(id)block;
@end

@implementation SAStackIterator

- (void)iterateFramesWithBacktraceStyle:(unint64_t)style block:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  if ((style & 0x1C) != 0)
  {
    v13 = *__error();
    v14 = _sa_logt();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      styleCopy = style;
      _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "SAStackIterator doesn't support backtrace style 0x%llx", buf, 0xCu);
    }

    *__error() = v13;
    _SASetCrashLogMessage(1088, "SAStackIterator doesn't support backtrace style 0x%llx", style);
    _os_crash();
    __break(1u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_stack;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (![v11 isKernel])
        {
          if ((style & 2) != 0)
          {
            continue;
          }

LABEL_13:
          (*(block + 2))(block, v11);
          continue;
        }

        if (style)
        {
          goto LABEL_16;
        }

        isExclave = [v11 isExclave];
        if ((style & 0x20) == 0 || (isExclave & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

LABEL_16:
}

- (BOOL)hasUserStack
{
  if ([(NSArray *)self->_stack count])
  {
    firstObject = [(NSArray *)self->_stack firstObject];
    v4 = [firstObject isKernel] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)hasSwiftAsyncStack
{
  firstObject = [(NSArray *)self->_stack firstObject];
  isSwiftAsync = [firstObject isSwiftAsync];

  return isSwiftAsync;
}

- (BOOL)hasKernelStack
{
  v3 = [(NSArray *)self->_stack count];
  if (v3)
  {
    lastObject = [(NSArray *)self->_stack lastObject];
    isKernel = [lastObject isKernel];

    LOBYTE(v3) = isKernel;
  }

  return v3;
}

@end