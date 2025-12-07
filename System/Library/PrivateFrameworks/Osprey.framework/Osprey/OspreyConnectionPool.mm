@interface OspreyConnectionPool
- (OspreyConnectionPool)init;
- (id)connectionForConfiguration:(id)configuration;
@end

@implementation OspreyConnectionPool

- (OspreyConnectionPool)init
{
  v9.receiver = self;
  v9.super_class = OspreyConnectionPool;
  v2 = [(OspreyConnectionPool *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("OspreyConnectionPool", v3);
    poolQueue = v2->_poolQueue;
    v2->_poolQueue = v4;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    connectionMap = v2->_connectionMap;
    v2->_connectionMap = strongToWeakObjectsMapTable;
  }

  return v2;
}

- (id)connectionForConfiguration:(id)configuration
{
  v30 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  OspreyLoggingInit(configurationCopy, v5);
  v6 = OspreyLogContextChannel;
  if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v29 = "[OspreyConnectionPool connectionForConfiguration:]";
    _os_log_impl(&dword_25DDE6000, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v7 = [[OspreyRPCPromise alloc] initWithFulfillmentQueue:self->_poolQueue];
  urlSessionConfiguration = [configurationCopy urlSessionConfiguration];

  if (!urlSessionConfiguration)
  {
    OspreyLoggingInit(v9, v10);
    v11 = OspreyLogContextChannel;
    if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_DEBUG))
    {
      [OspreyConnectionPool connectionForConfiguration:v11];
    }

    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [configurationCopy setUrlSessionConfiguration:defaultSessionConfiguration];
  }

  urlSessionConfiguration2 = [configurationCopy urlSessionConfiguration];
  tLSMinimumSupportedProtocolVersion = [urlSessionConfiguration2 TLSMinimumSupportedProtocolVersion];

  if (tLSMinimumSupportedProtocolVersion <= 0x302)
  {
    urlSessionConfiguration3 = [configurationCopy urlSessionConfiguration];
    [urlSessionConfiguration3 setTLSMinimumSupportedProtocolVersion:771];
  }

  OspreyLoggingInit(v15, v16);
  v18 = OspreyLogContextChannel;
  if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_DEBUG))
  {
    [(OspreyConnectionPool *)v18 connectionForConfiguration:configurationCopy];
  }

  poolQueue = self->_poolQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__OspreyConnectionPool_connectionForConfiguration___block_invoke;
  block[3] = &unk_2799F1D08;
  block[4] = self;
  v26 = configurationCopy;
  v20 = v7;
  v27 = v20;
  v21 = configurationCopy;
  dispatch_async(poolQueue, block);
  v22 = v27;
  v23 = v20;

  return v20;
}

void __51__OspreyConnectionPool_connectionForConfiguration___block_invoke(id *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 2) objectForKey:a1[5]];
  v4 = v2;
  if (v2)
  {
    OspreyLoggingInit(v2, v3);
    v5 = OspreyLogContextChannel;
    if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[OspreyConnectionPool connectionForConfiguration:]_block_invoke";
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_25DDE6000, v5, OS_LOG_TYPE_INFO, "%s Reused channel %@ from pool", buf, 0x16u);
    }
  }

  else
  {
    v6 = [OspreyChannel alloc];
    v7 = [a1[5] connectionUrl];
    v8 = [a1[5] urlSessionConfiguration];
    v4 = [(OspreyChannel *)v6 initWithURL:v7 configuration:v8];

    OspreyLoggingInit(v9, v10);
    v11 = OspreyLogContextChannel;
    if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[OspreyConnectionPool connectionForConfiguration:]_block_invoke";
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_25DDE6000, v11, OS_LOG_TYPE_INFO, "%s Created channel %@", buf, 0x16u);
    }

    objc_initWeak(buf, a1[4]);
    v12 = [OspreyConnectionHandle alloc];
    v13 = a1[5];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __51__OspreyConnectionPool_connectionForConfiguration___block_invoke_7;
    v18 = &unk_2799F2420;
    objc_copyWeak(&v20, buf);
    v19 = a1[5];
    v14 = [(OspreyConnectionHandle *)v12 initWithConnectionKey:v13 willRelease:&v15];
    [(OspreyChannel *)v4 ocp_setAssociatedHandle:v14, v15, v16, v17, v18];
    [*(a1[4] + 2) setObject:v4 forKey:a1[5]];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  [a1[6] fulfill:v4];
}

void __51__OspreyConnectionPool_connectionForConfiguration___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  OspreyLoggingInit(a1, a2);
  v3 = OspreyLogContextChannel;
  if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[OspreyConnectionPool connectionForConfiguration:]_block_invoke";
    _os_log_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_INFO, "%s OspreyChannel deallocated, removing handle from pool", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained[1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__OspreyConnectionPool_connectionForConfiguration___block_invoke_8;
  v7[3] = &unk_2799F1F20;
  v8 = WeakRetained;
  v9 = *(a1 + 32);
  v6 = WeakRetained;
  dispatch_async(v5, v7);
}

void __51__OspreyConnectionPool_connectionForConfiguration___block_invoke_8(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  OspreyLoggingInit(v2, v3);
  v4 = OspreyLogContextChannel;
  if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(a1 + 32) + 16);
    v6 = v4;
    v7 = 136315394;
    v8 = "[OspreyConnectionPool connectionForConfiguration:]_block_invoke";
    v9 = 2048;
    v10 = [v5 count];
    _os_log_impl(&dword_25DDE6000, v6, OS_LOG_TYPE_INFO, "%s Handle removed from pool, current size: %lu", &v7, 0x16u);
  }
}

- (void)connectionForConfiguration:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyConnectionPool connectionForConfiguration:]";
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s No NSURLSessionConfiguration specified, using defaultSessionConfiguration", &v1, 0xCu);
}

- (void)connectionForConfiguration:(void *)a1 .cold.2(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 urlSessionConfiguration];
  v5 = 136315394;
  v6 = "[OspreyConnectionPool connectionForConfiguration:]";
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_DEBUG, "%s Using NSURLSessionConfiguration: %@", &v5, 0x16u);
}

@end