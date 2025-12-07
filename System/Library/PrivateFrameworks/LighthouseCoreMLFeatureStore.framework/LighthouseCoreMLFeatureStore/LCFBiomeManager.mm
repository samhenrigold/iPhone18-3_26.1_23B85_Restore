@interface LCFBiomeManager
- (BOOL)writeData:(id)data;
- (id)init:(id)init;
- (id)readData:(id)data endDate:(id)date reversed:(BOOL)reversed;
- (id)readDataWithTimestamp:(id)timestamp endDate:(id)date reversed:(BOOL)reversed;
- (id)readTimeStamps:(id)stamps endDate:(id)date reversed:(BOOL)reversed;
@end

@implementation LCFBiomeManager

- (id)init:(id)init
{
  initCopy = init;
  v11.receiver = self;
  v11.super_class = LCFBiomeManager;
  v6 = [(LCFBiomeManager *)&v11 init];
  v8 = v6;
  if (v6)
  {
    LCFLoggingUtilsInit(v6, v7);
    objc_storeStrong(&v8->_biomeStream, init);
    biomeSource = v8->_biomeSource;
    v8->_biomeSource = 0;
  }

  return v8;
}

- (BOOL)writeData:(id)data
{
  dataCopy = data;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__LCFBiomeManager_writeData___block_invoke;
  block[3] = &unk_279815F10;
  block[4] = self;
  if (onceTokenBiomeSource != -1)
  {
    dispatch_once(&onceTokenBiomeSource, block);
  }

  v5 = self->_biomeSource;
  objc_sync_enter(v5);
  [(BMSource *)self->_biomeSource sendEvent:dataCopy];
  objc_sync_exit(v5);

  return 1;
}

void __29__LCFBiomeManager_writeData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v3 = LCFLogContextBiomeManager;
    if (os_log_type_enabled(LCFLogContextBiomeManager, OS_LOG_TYPE_ERROR))
    {
      __29__LCFBiomeManager_writeData___block_invoke_cold_1(v3);
    }

    v2 = *(a1 + 32);
  }

  v4 = [*(v2 + 8) source];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
}

- (id)readData:(id)data endDate:(id)date reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dateCopy = date;
  v10 = LCFLogContextBiomeManager;
  if (os_log_type_enabled(LCFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    [dataCopy timeIntervalSince1970];
    v13 = v12;
    [dateCopy timeIntervalSince1970];
    *buf = 134218240;
    v25 = v13;
    v26 = 2048;
    v27 = v14;
    _os_log_impl(&dword_255F22000, v11, OS_LOG_TYPE_INFO, "Reading Biome events from %f to %f.", buf, 0x16u);
  }

  v15 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:dataCopy endDate:dateCopy maxEvents:-1 lastN:-1 reversed:reversedCopy];
  v16 = [(BMStream *)self->_biomeStream publisherWithOptions:v15];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __45__LCFBiomeManager_readData_endDate_reversed___block_invoke_52;
  v22[3] = &unk_279815F58;
  v23 = v17;
  v18 = v17;
  v19 = [v16 sinkWithCompletion:&__block_literal_global_1 receiveInput:v22];
  v20 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v18];

  return v20;
}

void __45__LCFBiomeManager_readData_endDate_reversed___block_invoke()
{
  v0 = LCFLogContextBiomeManager;
  if (os_log_type_enabled(LCFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_255F22000, v0, OS_LOG_TYPE_INFO, "Completed.", v1, 2u);
  }
}

void __45__LCFBiomeManager_readData_endDate_reversed___block_invoke_52(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 eventBody];
  [v2 addObject:v3];
}

- (id)readTimeStamps:(id)stamps endDate:(id)date reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v28 = *MEMORY[0x277D85DE8];
  stampsCopy = stamps;
  dateCopy = date;
  v10 = LCFLogContextBiomeManager;
  if (os_log_type_enabled(LCFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    [stampsCopy timeIntervalSince1970];
    v13 = v12;
    [dateCopy timeIntervalSince1970];
    *buf = 134218240;
    v25 = v13;
    v26 = 2048;
    v27 = v14;
    _os_log_impl(&dword_255F22000, v11, OS_LOG_TYPE_INFO, "Reading Biome events from %f to %f.", buf, 0x16u);
  }

  v15 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:stampsCopy endDate:dateCopy maxEvents:-1 lastN:-1 reversed:reversedCopy];
  v16 = [(BMStream *)self->_biomeStream publisherWithOptions:v15];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __51__LCFBiomeManager_readTimeStamps_endDate_reversed___block_invoke_57;
  v22[3] = &unk_279815F58;
  v23 = v17;
  v18 = v17;
  v19 = [v16 sinkWithCompletion:&__block_literal_global_56 receiveInput:v22];
  v20 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v18];

  return v20;
}

void __51__LCFBiomeManager_readTimeStamps_endDate_reversed___block_invoke()
{
  v0 = LCFLogContextBiomeManager;
  if (os_log_type_enabled(LCFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_255F22000, v0, OS_LOG_TYPE_INFO, "Completed.", v1, 2u);
  }
}

void __51__LCFBiomeManager_readTimeStamps_endDate_reversed___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  [a2 timestamp];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  [*(a1 + 32) addObject:v4];
}

- (id)readDataWithTimestamp:(id)timestamp endDate:(id)date reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v27 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  dateCopy = date;
  v10 = LCFLogContextBiomeManager;
  if (os_log_type_enabled(LCFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    [timestampCopy timeIntervalSince1970];
    v13 = v12;
    [dateCopy timeIntervalSince1970];
    *buf = 134218240;
    v24 = v13;
    v25 = 2048;
    v26 = v14;
    _os_log_impl(&dword_255F22000, v11, OS_LOG_TYPE_INFO, "Reading Biome events from %f to %f.", buf, 0x16u);
  }

  v15 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:timestampCopy endDate:dateCopy maxEvents:-1 lastN:-1 reversed:reversedCopy];
  v16 = [(BMStream *)self->_biomeStream publisherWithOptions:v15];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__LCFBiomeManager_readDataWithTimestamp_endDate_reversed___block_invoke_61;
  v21[3] = &unk_279815F58;
  v18 = v17;
  v22 = v18;
  v19 = [v16 sinkWithCompletion:&__block_literal_global_60 receiveInput:v21];

  return v18;
}

void __58__LCFBiomeManager_readDataWithTimestamp_endDate_reversed___block_invoke()
{
  v0 = LCFLogContextBiomeManager;
  if (os_log_type_enabled(LCFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_255F22000, v0, OS_LOG_TYPE_INFO, "Completed.", v1, 2u);
  }
}

void __58__LCFBiomeManager_readDataWithTimestamp_endDate_reversed___block_invoke_61(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  [v4 timestamp];
  v5 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v8[0] = v5;
  v6 = [v4 eventBody];

  v8[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [v2 addObject:v7];
}

@end