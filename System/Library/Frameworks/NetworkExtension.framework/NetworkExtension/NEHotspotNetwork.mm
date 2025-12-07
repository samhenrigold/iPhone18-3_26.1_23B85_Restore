@interface NEHotspotNetwork
+ (void)fetchCurrentWithCompletionHandler:(void *)completionHandler;
- (NSString)BSSID;
- (NSString)SSID;
- (double)signalStrength;
- (id)description;
- (id)initWithNetwork:(void *)network;
- (void)dealloc;
- (void)setConfidence:(NEHotspotHelperConfidence)confidence;
- (void)setNetwork:(uint64_t)network;
- (void)setPassword:(NSString *)password;
@end

@implementation NEHotspotNetwork

- (void)setPassword:(NSString *)password
{
  if (self)
  {
    self = self->_network;
  }

  MEMORY[0x1EEDF2F70](self, password);
}

- (void)setConfidence:(NEHotspotHelperConfidence)confidence
{
  if (self)
  {
    CNNetworkSetConfidence();
    network = self->_network;
  }

  else
  {
    CNNetworkSetConfidence();
    network = 0;
  }

  MEMORY[0x1EEDF2F60](network, confidence != kNEHotspotHelperConfidenceNone);
}

- (double)signalStrength
{
  if (self)
  {
    self = self->_network;
  }

  MEMORY[0x1EEDF2F48](self, a2);
  return result;
}

- (NSString)BSSID
{
  if (self)
  {
    self = self->_network;
  }

  return MEMORY[0x1EEDF2F38](self, a2);
}

- (NSString)SSID
{
  if (self)
  {
    self = self->_network;
  }

  return MEMORY[0x1EEDF2F40](self, a2);
}

- (id)description
{
  if (self)
  {
    self = self->_network;
  }

  v2 = CFCopyDescription(self);

  return v2;
}

- (void)dealloc
{
  if (self)
  {
    network = self->_network;
    if (network)
    {
      CFRelease(network);
    }

    self->_network = 0;
  }

  v4.receiver = self;
  v4.super_class = NEHotspotNetwork;
  [(NEHotspotNetwork *)&v4 dealloc];
}

+ (void)fetchCurrentWithCompletionHandler:(void *)completionHandler
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = completionHandler;
  if ((NEHelperCopyCurrentNetworkAsync() & 1) == 0)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%@ internal error", buf, 0xCu);
    }

    v4[2](v4, 0);
  }
}

void __54__NEHotspotNetwork_fetchCurrentWithCompletionHandler___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ((a2 & 1) == 0)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      *v28 = 138412290;
      *&v28[4] = v24;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@ failed to communicate to helper server for Wi-Fi information request", v28, 0xCu);
    }
  }

  if (a3)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 40);
      *v28 = 138412546;
      *&v28[4] = v23;
      *&v28[12] = 2048;
      *&v28[14] = a3;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "%@ nehelper sent invalid result code [%lld] for Wi-Fi information request", v28, 0x16u);
    }

    goto LABEL_9;
  }

  if (!v7 || (a2 & 1) == 0)
  {
LABEL_9:
    (*(*(a1 + 32) + 16))();
    goto LABEL_10;
  }

  v10 = _CFXPCCreateCFObjectFromXPCObject();
  TypeID = CFDictionaryGetTypeID();
  if (v10 && CFGetTypeID(v10) == TypeID)
  {
    Value = CFDictionaryGetValue(v10, *MEMORY[0x1E69822D8]);
    v13 = CFDictionaryGetValue(v10, *MEMORY[0x1E69822D0]);
    v14 = CFDictionaryGetValue(v10, @"wifi-security-type");
    if (Value && v13 && (v15 = v14) != 0)
    {
      v16 = CNNetworkCreateWithSSIDAndBSSID();
      v17 = [NEHotspotNetwork alloc];
      v18 = v15;
      if (v17)
      {
        *v28 = v17;
        *&v28[8] = NEHotspotNetwork;
        v19 = objc_msgSendSuper2(v28, sel_init);
        v17 = v19;
        if (v19)
        {
          [(NEHotspotNetwork *)v19 setNetwork:v16];
          v20 = [v18 integerValue];
          if (v20 >= 4)
          {
            v21 = 4;
          }

          else
          {
            v21 = v20;
          }

          [(NEHotspotNetwork *)v17 setSecurityType:v21];
        }
      }

      if (v16)
      {
        CFRelease(v16);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 40);
        *v28 = 138412290;
        *&v28[4] = v27;
        _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, "%@ received nil data for Wi-Fi information request", v28, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }

LABEL_34:
    CFRelease(v10);
    goto LABEL_10;
  }

  v22 = ne_log_obj();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v26 = *(a1 + 40);
    *v28 = 138412290;
    *&v28[4] = v26;
    _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, "%@ received unexpected data for Wi-Fi information request", v28, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  if (v10)
  {
    goto LABEL_34;
  }

LABEL_10:
}

- (void)setNetwork:(uint64_t)network
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(network + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  *(network + 8) = cf;
}

- (id)initWithNetwork:(void *)network
{
  if (!network)
  {
    return 0;
  }

  v6.receiver = network;
  v6.super_class = NEHotspotNetwork;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    [(NEHotspotNetwork *)v3 setNetwork:a2];
  }

  return v4;
}

@end