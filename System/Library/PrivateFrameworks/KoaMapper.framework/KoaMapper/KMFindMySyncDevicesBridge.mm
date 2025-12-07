@interface KMFindMySyncDevicesBridge
- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block;
- (KMFindMySyncDevicesBridge)init;
- (KMFindMySyncDevicesBridge)initWithDevicesProvider:(id)provider;
@end

@implementation KMFindMySyncDevicesBridge

- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[KMFindMySyncDevicesBridge enumerateItemsWithError:usingBlock:]";
    _os_log_impl(&dword_2559DF000, v6, OS_LOG_TYPE_INFO, "%s #FindMySyncDevices starting device sync and vocab donation", buf, 0xCu);
  }

  devicesProvider = self->_devicesProvider;
  v27 = 0;
  v8 = [(KMFindMySyncDevicesProvider *)devicesProvider getSyncDevices:&v27];
  v9 = v27;
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          LODWORD(v18) = blockCopy[2](blockCopy, v18);
          objc_autoreleasePoolPop(v19);
          if (!v18)
          {

            goto LABEL_21;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v20 = KMLogContextCore;
    v21 = 1;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[KMFindMySyncDevicesBridge enumerateItemsWithError:usingBlock:]";
      _os_log_impl(&dword_2559DF000, v20, OS_LOG_TYPE_INFO, "%s #FindMySyncDevices donation successful", buf, 0xCu);
    }
  }

  else
  {
    v12 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[KMFindMySyncDevicesBridge enumerateItemsWithError:usingBlock:]";
      v31 = 2112;
      v32 = v10;
      _os_log_error_impl(&dword_2559DF000, v12, OS_LOG_TYPE_ERROR, "%s Failed to fetch FindMy devices with error: %@.", buf, 0x16u);
    }

    KVSetError();
LABEL_21:
    v21 = 0;
  }

  return v21;
}

- (KMFindMySyncDevicesBridge)initWithDevicesProvider:(id)provider
{
  v14 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = KMFindMySyncDevicesBridge;
  v6 = [(KMFindMySyncDevicesBridge *)&v11 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_devicesProvider, provider), !v7->_devicesProvider))
  {
    v9 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[KMFindMySyncDevicesBridge initWithDevicesProvider:]";
      _os_log_error_impl(&dword_2559DF000, v9, OS_LOG_TYPE_ERROR, "%s nil devicesProvider.", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (KMFindMySyncDevicesBridge)init
{
  v3 = objc_alloc_init(_TtC9KoaMapper27KMFindMySyncDevicesProvider);
  v4 = [(KMFindMySyncDevicesBridge *)self initWithDevicesProvider:v3];

  return v4;
}

@end