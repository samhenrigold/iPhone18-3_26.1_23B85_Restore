@interface PSTaskInput
+ (PSTaskInput)inputWithKey:(id)key;
+ (PSTaskInput)inputWithKey:(id)key type:(int64_t)type;
+ (PSTaskInput)inputWithKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity;
+ (PSTaskInput)inputWitheKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity;
- (PSTaskInput)initWithKey:(char *)key type:(int64_t)type capacity:(unint64_t)capacity;
- (PSTaskInput)initWithResourceKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity;
- (PSTaskInput)initWithResourceKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity forwardingCount:(unint64_t)count;
- (PSTaskInput)initWithResourceKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity sourceInput:(id)input forwardingCount:(unint64_t)count;
- (id)getInputResourceForGraph:(id)graph;
@end

@implementation PSTaskInput

+ (PSTaskInput)inputWithKey:(id)key
{
  keyCopy = key;
  v4 = [[PSTaskInput alloc] initWithResourceKey:keyCopy type:0 capacity:1];

  return v4;
}

+ (PSTaskInput)inputWithKey:(id)key type:(int64_t)type
{
  keyCopy = key;
  v6 = [[PSTaskInput alloc] initWithResourceKey:keyCopy type:type capacity:1];

  return v6;
}

+ (PSTaskInput)inputWithKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity
{
  keyCopy = key;
  v8 = [[PSTaskInput alloc] initWithResourceKey:keyCopy type:type capacity:capacity];

  return v8;
}

+ (PSTaskInput)inputWitheKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity
{
  keyCopy = key;
  v8 = [[PSTaskInput alloc] initWithResourceKey:keyCopy type:type capacity:capacity];

  return v8;
}

- (PSTaskInput)initWithKey:(char *)key type:(int64_t)type capacity:(unint64_t)capacity
{
  if (type == 3)
  {
    v11 = [PSTaskInput initWithKey:? type:? capacity:?];
    return [(PSTaskInput *)v11 initWithResourceKey:v12 type:v13 capacity:v14, v15];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", key];
    v9 = [(PSTaskInput *)self initWithResourceKey:v8 type:type capacity:capacity sourceInput:0 forwardingCount:0];

    return v9;
  }
}

- (PSTaskInput)initWithResourceKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity
{
  keyCopy = key;
  if (type == 3)
  {
    v12 = [PSTaskInput initWithResourceKey:? type:? capacity:?];
    return [(PSTaskInput *)v12 initSyncedInputWithResourceKey:v13 withSourceInput:v14, v15];
  }

  else
  {
    v9 = keyCopy;
    v10 = [(PSTaskInput *)self initWithResourceKey:keyCopy type:type capacity:capacity sourceInput:0 forwardingCount:0];

    return v10;
  }
}

- (PSTaskInput)initWithResourceKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity sourceInput:(id)input forwardingCount:(unint64_t)count
{
  keyCopy = key;
  inputCopy = input;
  v18.receiver = self;
  v18.super_class = PSTaskInput;
  v15 = [(PSTaskInput *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_resourceKey, key);
    objc_storeStrong(&v16->_resolvedResourceKey, key);
    v16->_key = [keyCopy UTF8String];
    v16->_type = type;
    v16->_capacity = capacity;
    v16->_forwardingCount = count;
    objc_storeStrong(&v16->_sourceInputResourceKey, input);
    v16->_sourceInputKey = [inputCopy UTF8String];
    v16->_bufferExpiryOffset = -1;
  }

  return v16;
}

- (id)getInputResourceForGraph:(id)graph
{
  graphCopy = graph;
  v5 = [(NSString *)self->_resourceKey isEqualToString:@"timer"];
  if (graphCopy && v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"timer%03d", objc_msgSend(graphCopy, "frequency")];
  }

  else
  {
    v6 = self->_resourceKey;
  }

  v7 = v6;

  return v7;
}

- (PSTaskInput)initWithResourceKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity forwardingCount:(unint64_t)count
{
  keyCopy = key;
  if (type == 3)
  {
    v14 = [PSTaskInput(Roya) initWithResourceKey:? type:? capacity:? forwardingCount:?];
    return [(PSTaskOutput *)v14 outputWithKey:v15, v16];
  }

  else
  {
    v11 = keyCopy;
    v12 = [(PSTaskInput *)self initWithResourceKey:keyCopy type:type capacity:capacity sourceInput:0 forwardingCount:count];

    return v12;
  }
}

- (uint64_t)initWithKey:(char *)a1 type:capacity:.cold.1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "PSInputTypeSynced cannot be set directly. Please use -initSyncedInputWithResourceKey: instead.");
  v2 = __PSGraphLogSharedInstance(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v21 = 136315394;
    *&v21[4] = "[PSTaskInput initWithKey:type:capacity:]";
    *&v21[12] = 1024;
    *&v21[14] = 42;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v3, v4, "%s:%d PSInputTypeSynced cannot be set directly. Please use -initSyncedInputWithResourceKey: instead.", v5, v6, v7, v8, *v21, *&v21[8], *&v21[16]);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = v9;
    v11 = __PSGraphLogSharedInstance(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v20 = 136315394;
      *&v20[4] = "[PSTaskInput initWithKey:type:capacity:]";
      *&v20[12] = 1024;
      *&v20[14] = v10;
      OUTLINED_FUNCTION_2_0(&dword_25EC85000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, *v20, *&v20[8], *&v20[16]);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSTaskInput initWithResourceKey:v18 type:? capacity:?];
}

- (uint64_t)initWithResourceKey:(char *)a1 type:capacity:.cold.1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "PSInputTypeSynced cannot be set directly. Please use -initSyncedInputWithResourceKey: instead.");
  v2 = __PSGraphLogSharedInstance(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v21 = 136315394;
    *&v21[4] = "[PSTaskInput initWithResourceKey:type:capacity:]";
    *&v21[12] = 1024;
    *&v21[14] = 56;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v3, v4, "%s:%d PSInputTypeSynced cannot be set directly. Please use -initSyncedInputWithResourceKey: instead.", v5, v6, v7, v8, *v21, *&v21[8], *&v21[16]);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = v9;
    v11 = __PSGraphLogSharedInstance(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v20 = 136315394;
      *&v20[4] = "[PSTaskInput initWithResourceKey:type:capacity:]";
      *&v20[12] = 1024;
      *&v20[14] = v10;
      OUTLINED_FUNCTION_2_0(&dword_25EC85000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, *v20, *&v20[8], *&v20[16]);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSTaskInput(Roya) initWithResourceKey:v18 type:? capacity:? forwardingCount:?];
}

@end