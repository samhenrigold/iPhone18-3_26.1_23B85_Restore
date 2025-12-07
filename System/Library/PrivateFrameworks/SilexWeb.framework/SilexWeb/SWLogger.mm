@interface SWLogger
- (SWLogger)init;
- (id)constructLogWithMessage:(id)message;
- (void)bindValue:(id)value forKey:(id)key;
- (void)log:(id)log;
- (void)logError:(id)error;
- (void)logSensitive:(id)sensitive;
@end

@implementation SWLogger

- (SWLogger)init
{
  v6.receiver = self;
  v6.super_class = SWLogger;
  v2 = [(SWLogger *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    values = v2->_values;
    v2->_values = dictionary;
  }

  return v2;
}

- (void)bindValue:(id)value forKey:(id)key
{
  if (value && key)
  {
    keyCopy = key;
    valueCopy = value;
    values = [(SWLogger *)self values];
    [values setObject:valueCopy forKey:keyCopy];
  }
}

- (void)log:(id)log
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = SWDefaultLog;
  if (os_log_type_enabled(SWDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(SWLogger *)self constructLogWithMessage:log];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_1D7635000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }
}

- (void)logError:(id)error
{
  v5 = SWDefaultLog;
  if (os_log_type_enabled(SWDefaultLog, OS_LOG_TYPE_ERROR))
  {
    [(SWLogger *)v5 logError:error];
  }
}

- (void)logSensitive:(id)sensitive
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = SWDefaultLog;
  if (os_log_type_enabled(SWDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(SWLogger *)self constructLogWithMessage:sensitive];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1D7635000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }
}

- (id)constructLogWithMessage:(id)message
{
  v20 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  values = [(SWLogger *)self values];
  v6 = [values countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(values);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        values2 = [(SWLogger *)self values];
        v12 = [values2 objectForKey:v10];
        [v4 appendFormat:@"%@=%@", v10, v12];
      }

      v7 = [values countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v4 appendString:@"] "];
  [v4 appendString:messageCopy];

  return v4;
}

- (void)logError:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 constructLogWithMessage:a3];
  v7 = 138543362;
  v8 = v6;
  _os_log_error_impl(&dword_1D7635000, v5, OS_LOG_TYPE_ERROR, "%{public}@", &v7, 0xCu);
}

@end