@interface HAMenstrualAlgorithmsHistoricalAnalyzer
- (HAMenstrualAlgorithmsHistoricalAnalyzer)init;
- (id)analyzeWithError:(id *)error;
- (void)appendDay:(id)day;
- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
- (void)dealloc;
- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
@end

@implementation HAMenstrualAlgorithmsHistoricalAnalyzer

- (HAMenstrualAlgorithmsHistoricalAnalyzer)init
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = ha_get_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v29 = "[HAMenstrualAlgorithmsHistoricalAnalyzer init]";
    _os_log_impl(&dword_251282000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v26.receiver = self;
  v26.super_class = HAMenstrualAlgorithmsHistoricalAnalyzer;
  v4 = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)&v26 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:100];
    dayInputBuffer = v4->_dayInputBuffer;
    v4->_dayInputBuffer = v5;

    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.HealthAlgorithms.HistoricalAnalyzerService"];
    connectionToService = v4->_connectionToService;
    v4->_connectionToService = v7;

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28635B770];
    [(NSXPCConnection *)v4->_connectionToService setRemoteObjectInterface:v9];

    v10 = MEMORY[0x277CBEB98];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v12 = [v10 setWithArray:v11];

    remoteObjectInterface = [(NSXPCConnection *)v4->_connectionToService remoteObjectInterface];
    [remoteObjectInterface setClasses:v12 forSelector:sel_finishSessionWithReply_ argumentIndex:0 ofReply:1];

    objc_initWeak(buf, v4);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __47__HAMenstrualAlgorithmsHistoricalAnalyzer_init__block_invoke;
    v24[3] = &unk_2796B3C48;
    objc_copyWeak(&v25, buf);
    [(NSXPCConnection *)v4->_connectionToService setInvalidationHandler:v24];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __47__HAMenstrualAlgorithmsHistoricalAnalyzer_init__block_invoke_563;
    v22 = &unk_2796B3C48;
    objc_copyWeak(&v23, buf);
    [(NSXPCConnection *)v4->_connectionToService setInterruptionHandler:&v19];
    [(NSXPCConnection *)v4->_connectionToService resume:v19];
    remoteObjectProxy = [(NSXPCConnection *)v4->_connectionToService remoteObjectProxy];
    remoteObjectProxy = v4->_remoteObjectProxy;
    v4->_remoteObjectProxy = remoteObjectProxy;

    remoteObjectProxy2 = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)v4 remoteObjectProxy];
    [remoteObjectProxy2 beginSession];

    v17 = v4;
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  return v4;
}

void __47__HAMenstrualAlgorithmsHistoricalAnalyzer_init__block_invoke(uint64_t a1)
{
  v2 = ha_get_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251282000, v2, OS_LOG_TYPE_DEFAULT, "HistoricalAnalyzerService connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnectionToService:0];
}

void __47__HAMenstrualAlgorithmsHistoricalAnalyzer_init__block_invoke_563(uint64_t a1)
{
  v2 = ha_get_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __47__HAMenstrualAlgorithmsHistoricalAnalyzer_init__block_invoke_563_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained connectionToService];
  [v4 invalidate];
}

- (void)dealloc
{
  connectionToService = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self connectionToService];
  [connectionToService invalidate];

  v4.receiver = self;
  v4.super_class = HAMenstrualAlgorithmsHistoricalAnalyzer;
  [(HAMenstrualAlgorithmsHistoricalAnalyzer *)&v4 dealloc];
}

- (void)appendDay:(id)day
{
  dayCopy = day;
  dayInputBuffer = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
  [dayInputBuffer addObject:dayCopy];

  dayInputBuffer2 = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
  v6 = [dayInputBuffer2 count];

  if (v6 == 100)
  {
    remoteObjectProxy = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self remoteObjectProxy];
    dayInputBuffer3 = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
    [remoteObjectProxy appendDays:dayInputBuffer3];

    dayInputBuffer4 = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
    [dayInputBuffer4 removeAllObjects];
  }
}

- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  v4 = *&day;
  phaseCopy = phase;
  remoteObjectProxy = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self remoteObjectProxy];
  [remoteObjectProxy beginPhase:phaseCopy onJulianDay:v4];
}

- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  v4 = *&day;
  phaseCopy = phase;
  remoteObjectProxy = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self remoteObjectProxy];
  [remoteObjectProxy endPhase:phaseCopy onJulianDay:v4];
}

- (id)analyzeWithError:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = ha_get_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[HAMenstrualAlgorithmsHistoricalAnalyzer analyzeWithError:]";
    _os_log_impl(&dword_251282000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
  }

  dayInputBuffer = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
  v7 = [dayInputBuffer count] == 0;

  if (!v7)
  {
    remoteObjectProxy = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self remoteObjectProxy];
    dayInputBuffer2 = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
    [remoteObjectProxy appendDays:dayInputBuffer2];

    dayInputBuffer3 = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
    [dayInputBuffer3 removeAllObjects];
  }

  connectionToService = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self connectionToService];
  v12 = [connectionToService synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_565];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__HAMenstrualAlgorithmsHistoricalAnalyzer_analyzeWithError___block_invoke_566;
  v20[3] = &unk_2796B3CB8;
  v20[4] = &buf;
  v13 = [v12 finishSessionWithReply:v20];
  if (!*(*(&buf + 1) + 40))
  {
    v14 = ha_get_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [HAMenstrualAlgorithmsHistoricalAnalyzer analyzeWithError:];
    }

    if (error)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      bundleIdentifier = [v16 bundleIdentifier];
      *error = [v15 errorWithDomain:bundleIdentifier code:-1 userInfo:0];
    }
  }

  v18 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v18;
}

void __60__HAMenstrualAlgorithmsHistoricalAnalyzer_analyzeWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ha_get_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __100__HAMenstrualAlgorithmsDayStreamProcessor_analyzeWithMostRecentMenstrualFlowJulianDayUpdated_error___block_invoke_cold_1();
  }
}

void __47__HAMenstrualAlgorithmsHistoricalAnalyzer_init__block_invoke_563_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end