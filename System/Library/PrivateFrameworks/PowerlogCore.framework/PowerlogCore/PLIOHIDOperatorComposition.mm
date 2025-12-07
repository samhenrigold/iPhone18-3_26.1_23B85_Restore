@interface PLIOHIDOperatorComposition
- (PLIOHIDOperatorComposition)initWithOperator:(id)operator forService:(id)service;
- (PLIOHIDOperatorComposition)initWithOperator:(id)operator forService:(id)service withBlock:(id)block;
- (double)doubleForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (void)dealloc;
@end

@implementation PLIOHIDOperatorComposition

- (PLIOHIDOperatorComposition)initWithOperator:(id)operator forService:(id)service
{
  v57[2] = *MEMORY[0x1E69E9840];
  operatorCopy = operator;
  serviceCopy = service;
  v55.receiver = self;
  v55.super_class = PLIOHIDOperatorComposition;
  v9 = [(PLIOHIDOperatorComposition *)&v55 init];
  if (!v9)
  {
LABEL_13:
    v32 = v9;
    goto LABEL_22;
  }

  if (initWithOperator_forService__onceToken != -1)
  {
    [PLIOHIDOperatorComposition initWithOperator:forService:];
  }

  objc_storeStrong(&v9->_operator, operator);
  objc_storeStrong(&v9->_serviceName, service);
  v9->_eventSystemClient = IOHIDEventSystemClientCreate();
  v57[0] = &unk_1F5405A18;
  v56[0] = @"PrimaryUsagePage";
  v56[1] = @"PrimaryUsage";
  v10 = [serviceIDs objectForKeyedSubscript:serviceCopy];
  v57[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];

  IOHIDEventSystemClientSetMatching();
  v12 = IOHIDEventSystemClientCopyServices(v9->_eventSystemClient);
  serviceClients = v9->_serviceClients;
  v9->_serviceClients = v12;

  v14 = [(NSArray *)v9->_serviceClients count];
  v15 = +[PLDefaults debugEnabled];
  if (v14)
  {
    if (v15)
    {
      v16 = objc_opt_class();
      block = MEMORY[0x1E69E9820];
      v50 = 3221225472;
      v51 = __58__PLIOHIDOperatorComposition_initWithOperator_forService___block_invoke_36;
      v52 = &__block_descriptor_40_e5_v8__0lu32l8;
      v53 = v16;
      if (initWithOperator_forService__defaultOnce_34 != -1)
      {
        dispatch_once(&initWithOperator_forService__defaultOnce_34, &block);
      }

      if (initWithOperator_forService__classDebugEnabled_35 == 1)
      {
        v17 = MEMORY[0x1E696AEC0];
        className = [(PLOperator *)v9->_operator className];
        v19 = [(NSArray *)v9->_serviceClients count];
        v20 = [v17 stringWithFormat:@"%@: %luu clients for %@", className, v19, serviceCopy, block, v50, v51, v52, v53];

        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLIOHIDOperatorComposition.m"];
        lastPathComponent = [v21 lastPathComponent];
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLIOHIDOperatorComposition initWithOperator:forService:]"];
        [PLCoreStorage logMessage:v20 fromFile:lastPathComponent fromFunction:v23 fromLineNumber:52];

        v25 = PLLogCommon(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [(PLIOHIDOperatorComposition *)v20 initWithOperator:v25 forService:v26, v27, v28, v29, v30, v31];
        }
      }
    }

    goto LABEL_13;
  }

  if (v15)
  {
    v33 = objc_opt_class();
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __58__PLIOHIDOperatorComposition_initWithOperator_forService___block_invoke_27;
    v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v54[4] = v33;
    if (initWithOperator_forService__defaultOnce != -1)
    {
      dispatch_once(&initWithOperator_forService__defaultOnce, v54);
    }

    if (initWithOperator_forService__classDebugEnabled == 1)
    {
      v34 = MEMORY[0x1E696AEC0];
      className2 = [(PLOperator *)v9->_operator className];
      serviceCopy = [v34 stringWithFormat:@"%@: no clients for %@", className2, serviceCopy];

      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLIOHIDOperatorComposition.m"];
      lastPathComponent2 = [v37 lastPathComponent];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLIOHIDOperatorComposition initWithOperator:forService:]"];
      [PLCoreStorage logMessage:serviceCopy fromFile:lastPathComponent2 fromFunction:v39 fromLineNumber:49];

      v41 = PLLogCommon(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        [(PLIOHIDOperatorComposition *)serviceCopy initWithOperator:v41 forService:v42, v43, v44, v45, v46, v47];
      }
    }
  }

  v32 = 0;
LABEL_22:

  return v32;
}

void __58__PLIOHIDOperatorComposition_initWithOperator_forService___block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"AmbientLightSensor";
  v2[1] = @"AmbientLightSensorLevel";
  v3[0] = &unk_1F54059E8;
  v3[1] = &unk_1F5405A00;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = serviceIDs;
  serviceIDs = v0;
}

BOOL __58__PLIOHIDOperatorComposition_initWithOperator_forService___block_invoke_27(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  initWithOperator_forService__classDebugEnabled = result;
  return result;
}

BOOL __58__PLIOHIDOperatorComposition_initWithOperator_forService___block_invoke_36(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  initWithOperator_forService__classDebugEnabled_35 = result;
  return result;
}

- (PLIOHIDOperatorComposition)initWithOperator:(id)operator forService:(id)service withBlock:(id)block
{
  operatorCopy = operator;
  serviceCopy = service;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = PLIOHIDOperatorComposition;
  v12 = [(PLIOHIDOperatorComposition *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operator, operator);
    objc_storeStrong(&v13->_serviceName, service);
    v14 = MEMORY[0x1DA71B0D0](blockCopy);
    operatorBlock = v13->_operatorBlock;
    v13->_operatorBlock = v14;

    v16 = IOHIDEventSystemClientCreate();
    v13->_eventSystemClient = v16;
    if (v16)
    {
      workQueue = [operatorCopy workQueue];
      IOHIDEventSystemClientScheduleWithDispatchQueue();

      IOHIDEventSystemClientRegisterPropertyChangedCallback();
    }
  }

  return v13;
}

- (double)doubleForKey:(id)key
{
  keyCopy = key;
  serviceName = [(PLIOHIDOperatorComposition *)self serviceName];
  [serviceName caseInsensitiveCompare:@"AmbientLightSensor"];

  serviceClients = [(PLIOHIDOperatorComposition *)self serviceClients];
  v7 = [serviceClients objectAtIndexedSubscript:0];
  v8 = IOHIDServiceClientCopyEvent();

  if (v8)
  {
    v9 = [serviceIDs objectForKeyedSubscript:keyCopy];
    [v9 intValue];
    IOHIDEventGetFloatValue();
    v11 = v10;

    CFRelease(v8);
  }

  else
  {
    v11 = -1.0;
    if (+[PLDefaults debugEnabled])
    {
      v12 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __43__PLIOHIDOperatorComposition_doubleForKey___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v12;
      if (doubleForKey__defaultOnce != -1)
      {
        dispatch_once(&doubleForKey__defaultOnce, block);
      }

      if (doubleForKey__classDebugEnabled == 1)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we have no event"];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLIOHIDOperatorComposition.m"];
        lastPathComponent = [v14 lastPathComponent];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLIOHIDOperatorComposition doubleForKey:]"];
        [PLCoreStorage logMessage:v13 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:88];

        v18 = PLLogCommon(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [(PLIOHIDOperatorComposition *)v13 initWithOperator:v18 forService:v19, v20, v21, v22, v23, v24];
        }
      }
    }
  }

  return v11;
}

BOOL __43__PLIOHIDOperatorComposition_doubleForKey___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  doubleForKey__classDebugEnabled = result;
  return result;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  v5 = IOHIDEventSystemClientCopyProperty([(PLIOHIDOperatorComposition *)self eventSystemClient], keyCopy);

  if (v5)
  {
    v6 = CFGetTypeID(v5);
    if (v6 != CFDictionaryGetTypeID())
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  eventSystemClient = self->_eventSystemClient;
  if (eventSystemClient)
  {
    CFRelease(eventSystemClient);
  }

  v4.receiver = self;
  v4.super_class = PLIOHIDOperatorComposition;
  [(PLIOHIDOperatorComposition *)&v4 dealloc];
}

- (void)initWithOperator:(uint64_t)a3 forService:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1D8611000, a2, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end