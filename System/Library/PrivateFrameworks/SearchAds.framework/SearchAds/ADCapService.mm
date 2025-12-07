@interface ADCapService
- (ADCapService)init;
- (id)clickCountByLine;
- (id)impressionCountByLine;
- (void)cleanDownloadData;
- (void)updateCapData:(id)data forType:(int64_t)type completionHandler:(id)handler;
- (void)updateDownloadData:(id)data identifier:(id)identifier forType:(int64_t)type completionHandler:(id)handler;
@end

@implementation ADCapService

- (ADCapService)init
{
  v10.receiver = self;
  v10.super_class = ADCapService;
  v6 = [(ADCapService *)&v10 init];
  if (v6)
  {
    v7 = objc_msgSend_sharedInstance(MEMORY[0x277CE9608], v2, v3, v4, v5);
    capData = v6->_capData;
    v6->_capData = v7;
  }

  return v6;
}

- (void)updateCapData:(id)data forType:(int64_t)type completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[ADCapService updateCapData:forType:completionHandler:]";
    _os_log_impl(&dword_264E42000, v10, OS_LOG_TYPE_DEFAULT, "API call to %s received.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v15 = objc_msgSend_workQueue(MEMORY[0x277CE96B8], v11, v12, v13, v14);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_264E460A0;
  v21[3] = &unk_279B888D0;
  objc_copyWeak(v24, buf);
  v21[4] = self;
  v16 = handlerCopy;
  v23 = v16;
  v17 = dataCopy;
  v22 = v17;
  v24[1] = type;
  objc_msgSend_addOperationWithBlock_(v15, v18, v21, v19, v20);

  objc_destroyWeak(v24);
  objc_destroyWeak(buf);
}

- (void)updateDownloadData:(id)data identifier:(id)identifier forType:(int64_t)type completionHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  handlerCopy = handler;
  v13 = APLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v29 = "[ADCapService updateDownloadData:identifier:forType:completionHandler:]";
    v30 = 2112;
    v31 = identifierCopy;
    v32 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_264E42000, v13, OS_LOG_TYPE_DEFAULT, "%s (identifier: %@ type:%ld)", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v18 = objc_msgSend_workQueue(MEMORY[0x277CE96B8], v14, v15, v16, v17);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_264E46468;
  v24[3] = &unk_279B888F8;
  objc_copyWeak(v27, buf);
  v27[1] = type;
  v19 = handlerCopy;
  v26 = v19;
  v24[4] = self;
  v20 = identifierCopy;
  v25 = v20;
  objc_msgSend_addOperationWithBlock_(v18, v21, v24, v22, v23);

  objc_destroyWeak(v27);
  objc_destroyWeak(buf);
}

- (id)clickCountByLine
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_capData(self, a2, v2, v3, v4);
  v10 = objc_msgSend_clickCountByLine(v5, v6, v7, v8, v9);

  v11 = APLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = @"{}";
    if (v10)
    {
      v12 = v10;
    }

    v14 = 138477827;
    v15 = v12;
    _os_log_impl(&dword_264E42000, v11, OS_LOG_TYPE_DEBUG, "[CappingService] Preparing click cap data for Search Results Page (SRP). Loaded data: %{private}@.", &v14, 0xCu);
  }

  return v10;
}

- (id)impressionCountByLine
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_capData(self, a2, v2, v3, v4);
  v10 = objc_msgSend_impressionCountByLine(v5, v6, v7, v8, v9);

  v11 = APLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = @"{}";
    if (v10)
    {
      v12 = v10;
    }

    v14 = 138477827;
    v15 = v12;
    _os_log_impl(&dword_264E42000, v11, OS_LOG_TYPE_DEBUG, "[CappingService] Preparing impression cap data for Search Results Page (SRP). Loaded data: %{private}@.", &v14, 0xCu);
  }

  return v10;
}

- (void)cleanDownloadData
{
  v9 = objc_msgSend_capData(self, a2, v2, v3, v4);
  objc_msgSend_cleanDownloadArray(v9, v5, v6, v7, v8);
}

@end