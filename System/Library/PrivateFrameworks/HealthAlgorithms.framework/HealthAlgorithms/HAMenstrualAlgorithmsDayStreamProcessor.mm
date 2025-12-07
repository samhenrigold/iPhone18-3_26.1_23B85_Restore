@interface HAMenstrualAlgorithmsDayStreamProcessor
- (HAMenstrualAlgorithmsDayStreamProcessor)initWithConfig:(id)config;
- (id)analyzeWithMostRecentMenstrualFlowJulianDayUpdated:(unsigned int)updated error:(id *)error;
- (void)appendDay:(id)day;
- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
- (void)dealloc;
- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
@end

@implementation HAMenstrualAlgorithmsDayStreamProcessor

- (HAMenstrualAlgorithmsDayStreamProcessor)initWithConfig:(id)config
{
  v29 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = ha_get_log(configCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v28 = "[HAMenstrualAlgorithmsDayStreamProcessor initWithConfig:]";
    _os_log_impl(&dword_251282000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v25.receiver = self;
  v25.super_class = HAMenstrualAlgorithmsDayStreamProcessor;
  v6 = [(HAMenstrualAlgorithmsDayStreamProcessor *)&v25 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:100];
    dayInputBuffer = v6->_dayInputBuffer;
    v6->_dayInputBuffer = v7;

    v9 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.HealthAlgorithms.DayStreamProcessorService"];
    connectionToService = v6->_connectionToService;
    v6->_connectionToService = v9;

    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28635B710];
    [(NSXPCConnection *)v6->_connectionToService setRemoteObjectInterface:v11];

    v12 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v26[2] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
    v14 = [v12 setWithArray:v13];

    remoteObjectInterface = [(NSXPCConnection *)v6->_connectionToService remoteObjectInterface];
    [remoteObjectInterface setClasses:v14 forSelector:sel_finishSessionWithMostRecentMenstrualFlowJulianDayUpdated_withReply_ argumentIndex:0 ofReply:1];

    objc_initWeak(buf, v6);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__HAMenstrualAlgorithmsDayStreamProcessor_initWithConfig___block_invoke;
    v23[3] = &unk_2796B3C48;
    objc_copyWeak(&v24, buf);
    [(NSXPCConnection *)v6->_connectionToService setInvalidationHandler:v23];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__HAMenstrualAlgorithmsDayStreamProcessor_initWithConfig___block_invoke_460;
    v21[3] = &unk_2796B3C48;
    objc_copyWeak(&v22, buf);
    [(NSXPCConnection *)v6->_connectionToService setInterruptionHandler:v21];
    [(NSXPCConnection *)v6->_connectionToService resume];
    remoteObjectProxy = [(NSXPCConnection *)v6->_connectionToService remoteObjectProxy];
    remoteObjectProxy = v6->_remoteObjectProxy;
    v6->_remoteObjectProxy = remoteObjectProxy;

    remoteObjectProxy2 = [(HAMenstrualAlgorithmsDayStreamProcessor *)v6 remoteObjectProxy];
    [remoteObjectProxy2 beginSessionWithConfig:configCopy];

    v19 = v6;
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  return v6;
}

void __58__HAMenstrualAlgorithmsDayStreamProcessor_initWithConfig___block_invoke(uint64_t a1)
{
  v2 = ha_get_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251282000, v2, OS_LOG_TYPE_DEFAULT, "DayStreamProcessorService connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnectionToService:0];
}

void __58__HAMenstrualAlgorithmsDayStreamProcessor_initWithConfig___block_invoke_460(uint64_t a1)
{
  v2 = ha_get_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __58__HAMenstrualAlgorithmsDayStreamProcessor_initWithConfig___block_invoke_460_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained connectionToService];
  [v4 invalidate];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ha_get_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v7 = "[HAMenstrualAlgorithmsDayStreamProcessor dealloc]";
    _os_log_impl(&dword_251282000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  connectionToService = [(HAMenstrualAlgorithmsDayStreamProcessor *)self connectionToService];
  [connectionToService invalidate];

  v5.receiver = self;
  v5.super_class = HAMenstrualAlgorithmsDayStreamProcessor;
  [(HAMenstrualAlgorithmsDayStreamProcessor *)&v5 dealloc];
}

- (void)appendDay:(id)day
{
  dayCopy = day;
  dayInputBuffer = [(HAMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
  [dayInputBuffer addObject:dayCopy];

  dayInputBuffer2 = [(HAMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
  v6 = [dayInputBuffer2 count];

  if (v6 == 100)
  {
    remoteObjectProxy = [(HAMenstrualAlgorithmsDayStreamProcessor *)self remoteObjectProxy];
    dayInputBuffer3 = [(HAMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
    [remoteObjectProxy appendDays:dayInputBuffer3];

    dayInputBuffer4 = [(HAMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
    [dayInputBuffer4 removeAllObjects];
  }
}

- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  v4 = *&day;
  phaseCopy = phase;
  remoteObjectProxy = [(HAMenstrualAlgorithmsDayStreamProcessor *)self remoteObjectProxy];
  [remoteObjectProxy beginPhase:phaseCopy onJulianDay:v4];
}

- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  v4 = *&day;
  phaseCopy = phase;
  remoteObjectProxy = [(HAMenstrualAlgorithmsDayStreamProcessor *)self remoteObjectProxy];
  [remoteObjectProxy endPhase:phaseCopy onJulianDay:v4];
}

- (id)analyzeWithMostRecentMenstrualFlowJulianDayUpdated:(unsigned int)updated error:(id *)error
{
  v5 = *&updated;
  v28 = *MEMORY[0x277D85DE8];
  v7 = ha_get_log(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[HAMenstrualAlgorithmsDayStreamProcessor analyzeWithMostRecentMenstrualFlowJulianDayUpdated:error:]";
    _os_log_impl(&dword_251282000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
  }

  dayInputBuffer = [(HAMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
  v9 = [dayInputBuffer count] == 0;

  if (!v9)
  {
    remoteObjectProxy = [(HAMenstrualAlgorithmsDayStreamProcessor *)self remoteObjectProxy];
    dayInputBuffer2 = [(HAMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
    [remoteObjectProxy appendDays:dayInputBuffer2];

    dayInputBuffer3 = [(HAMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
    [dayInputBuffer3 removeAllObjects];
  }

  connectionToService = [(HAMenstrualAlgorithmsDayStreamProcessor *)self connectionToService];
  v14 = [connectionToService synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __100__HAMenstrualAlgorithmsDayStreamProcessor_analyzeWithMostRecentMenstrualFlowJulianDayUpdated_error___block_invoke_464;
  v22[3] = &unk_2796B3C90;
  v22[4] = &buf;
  v15 = [v14 finishSessionWithMostRecentMenstrualFlowJulianDayUpdated:v5 withReply:v22];
  if (!*(*(&buf + 1) + 40))
  {
    v16 = ha_get_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [HAMenstrualAlgorithmsDayStreamProcessor analyzeWithMostRecentMenstrualFlowJulianDayUpdated:error:];
    }

    if (error)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      bundleIdentifier = [v18 bundleIdentifier];
      *error = [v17 errorWithDomain:bundleIdentifier code:-1 userInfo:0];
    }
  }

  v20 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v20;
}

void __100__HAMenstrualAlgorithmsDayStreamProcessor_analyzeWithMostRecentMenstrualFlowJulianDayUpdated_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ha_get_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __100__HAMenstrualAlgorithmsDayStreamProcessor_analyzeWithMostRecentMenstrualFlowJulianDayUpdated_error___block_invoke_cold_1();
  }
}

void __58__HAMenstrualAlgorithmsDayStreamProcessor_initWithConfig___block_invoke_460_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end