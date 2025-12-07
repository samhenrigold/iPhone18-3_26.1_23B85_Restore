@interface LBFBiomeManager
- (BOOL)enumerateData:(id)data endDate:(id)date reversed:(BOOL)reversed shouldContinue:(id)continue;
- (BOOL)writeData:(id)data;
- (id)init:(id)init;
- (id)readData:(id)data endDate:(id)date;
@end

@implementation LBFBiomeManager

- (id)init:(id)init
{
  initCopy = init;
  v11.receiver = self;
  v11.super_class = LBFBiomeManager;
  v6 = [(LBFBiomeManager *)&v11 init];
  v8 = v6;
  if (v6)
  {
    LBFLoggingUtilsInit(v6, v7);
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
  block[2] = sub_255EE8EC0;
  block[3] = &unk_279813BA8;
  block[4] = self;
  if (onceTokenBiomeSource != -1)
  {
    dispatch_once(&onceTokenBiomeSource, block);
  }

  v5 = self->_biomeSource;
  objc_sync_enter(v5);
  objc_msgSend_sendEvent_(self->_biomeSource, v6, v7, dataCopy);
  objc_sync_exit(v5);

  return 1;
}

- (id)readData:(id)data endDate:(id)date
{
  v46 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dateCopy = date;
  v8 = LBFLogContextBiomeManager;
  if (os_log_type_enabled(LBFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    objc_msgSend_timeIntervalSince1970(dataCopy, v10, v12, v11);
    v14 = v13.n128_u64[0];
    objc_msgSend_timeIntervalSince1970(dateCopy, v15, v13, v16);
    *buf = 134218240;
    v43 = v14;
    v44 = 2048;
    v45 = v17;
    _os_log_impl(&dword_255ED5000, v9, OS_LOG_TYPE_INFO, "Reading Biome events from %f to %f.", buf, 0x16u);
  }

  v18 = objc_alloc(MEMORY[0x277CF1A50]);
  started = objc_msgSend_initWithStartDate_endDate_maxEvents_lastN_reversed_(v18, v19, v20, dataCopy, dateCopy, -1, -1, 0);
  v24 = objc_msgSend_publisherWithOptions_(self->_biomeStream, v22, v23, started);
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_255EE9174;
  v40[3] = &unk_279813BD0;
  v41 = v25;
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = sub_255EE9230;
  v38 = &unk_279813BF8;
  v39 = v41;
  v26 = v41;
  v29 = objc_msgSend_sinkWithCompletion_receiveInput_(v24, v27, v28, v40, &v35);
  v30 = objc_alloc(MEMORY[0x277CBEA60]);
  v33 = objc_msgSend_initWithArray_(v30, v31, v32, v26, v35, v36, v37, v38);

  return v33;
}

- (BOOL)enumerateData:(id)data endDate:(id)date reversed:(BOOL)reversed shouldContinue:(id)continue
{
  reversedCopy = reversed;
  continueCopy = continue;
  v11 = MEMORY[0x277CF1A50];
  dateCopy = date;
  dataCopy = data;
  v14 = [v11 alloc];
  started = objc_msgSend_initWithStartDate_endDate_maxEvents_lastN_reversed_(v14, v15, v16, dataCopy, dateCopy, -1, -1, reversedCopy);

  v20 = objc_msgSend_publisherWithOptions_(self->_biomeStream, v18, v19, started);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_255EE9418;
  v26[3] = &unk_279813C40;
  v27 = continueCopy;
  v21 = continueCopy;
  v24 = objc_msgSend_sinkWithCompletion_shouldContinue_(v20, v22, v23, &unk_2867FA388, v26);

  return 1;
}

@end