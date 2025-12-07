@interface POUISettingsManager
- (POUISettingsManager)init;
- (id)deviceStatus;
- (id)statusForUserName:(id)name;
- (void)init;
- (void)startDeviceAction:(int64_t)action;
- (void)startUserAction:(int64_t)action forUserName:(id)name;
@end

@implementation POUISettingsManager

- (POUISettingsManager)init
{
  v3 = PO_LOG_POUISettingsManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(POUISettingsManager *)self init];
  }

  v8.receiver = self;
  v8.super_class = POUISettingsManager;
  v4 = [(POUISettingsManager *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(POUIServiceConnection);
    serviceConnection = v4->_serviceConnection;
    v4->_serviceConnection = v5;
  }

  return v4;
}

- (id)deviceStatus
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POUISettingsManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[POUISettingsManager deviceStatus]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  serviceConnection = self->_serviceConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__POUISettingsManager_deviceStatus__block_invoke;
  v7[3] = &unk_279A3A1F0;
  v7[4] = buf;
  [(POUIServiceConnection *)serviceConnection deviceStatusWithCompletion:v7];
  v5 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v5;
}

- (id)statusForUserName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = PO_LOG_POUISettingsManager(nameCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[POUISettingsManager statusForUserName:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  serviceConnection = self->_serviceConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__POUISettingsManager_statusForUserName___block_invoke;
  v9[3] = &unk_279A3A218;
  v9[4] = buf;
  [(POUIServiceConnection *)serviceConnection statusForUser:nameCopy completion:v9];
  v7 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v7;
}

- (void)startDeviceAction:(int64_t)action
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = PO_LOG_POUISettingsManager(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[POUISettingsManager startDeviceAction:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v9 = 0;
  serviceConnection = self->_serviceConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__POUISettingsManager_startDeviceAction___block_invoke;
  v7[3] = &unk_279A3A240;
  v7[4] = buf;
  [(POUIServiceConnection *)serviceConnection startDeviceAction:action completion:v7];
  _Block_object_dispose(buf, 8);
}

- (void)startUserAction:(int64_t)action forUserName:(id)name
{
  nameCopy = name;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  serviceConnection = self->_serviceConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__POUISettingsManager_startUserAction_forUserName___block_invoke;
  v8[3] = &unk_279A3A240;
  v8[4] = v9;
  [(POUIServiceConnection *)serviceConnection startAction:action forUserName:nameCopy completion:v8];
  _Block_object_dispose(v9, 8);
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[POUISettingsManager init]";
  v4 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_25E831000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v2, 0x16u);
}

@end