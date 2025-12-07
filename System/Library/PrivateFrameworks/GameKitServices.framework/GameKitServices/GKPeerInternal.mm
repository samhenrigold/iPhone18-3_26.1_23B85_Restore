@interface GKPeerInternal
+ (void)freeLookupList:(_DNSServiceRef_t *)list andAddrList:(id *)addrList andInterfaceList:(unsigned int *)interfaceList count:(int)count;
- (BOOL)containsLookupService:(_DNSServiceRef_t *)service;
- (BOOL)tryDetruncateDisplayName:(id)name;
- (GKPeerInternal)initWithPID:(unsigned int)d displayName:(id)name serviceName:(id)serviceName;
- (int)usableAddrs;
- (void)addLookup:(_DNSServiceRef_t *)lookup;
- (void)cleanupForGKTable:(id)table;
- (void)clearResolving;
- (void)copyLookupList:(_DNSServiceRef_t *)list count:(int *)count;
- (void)dealloc;
- (void)removeAndReturnLookupList:(_DNSServiceRef_t *)list andAddrList:(id *)addrList andInterfaceList:(unsigned int *)interfaceList count:(int *)count;
- (void)setAddr:(const sockaddr_in *)addr interface:(unsigned int)interface forLookupService:(_DNSServiceRef_t *)service;
- (void)setServiceCount:(int)count;
- (void)stopResolving;
- (void)stopTXTRecordMonitoring;
@end

@implementation GKPeerInternal

- (GKPeerInternal)initWithPID:(unsigned int)d displayName:(id)name serviceName:(id)serviceName
{
  v10.receiver = self;
  v10.super_class = GKPeerInternal;
  v8 = [(GKPeerInternal *)&v10 init];
  if (v8)
  {
    v8->_serviceName = serviceName;
    v8->_displayName = name;
    v8->_pid = d;
    v8->_isBusy = 0;
    v8->_resolveService = 0;
    v8->_serviceCount = 1;
  }

  return v8;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      pid = self->_pid;
      *buf = 136316162;
      v8 = v3;
      v9 = 2080;
      v10 = "[GKPeerInternal dealloc]";
      v11 = 1024;
      v12 = 4530;
      v13 = 2048;
      selfCopy = self;
      v15 = 1024;
      v16 = pid;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d * GKPeer[%p] %d dealloc", buf, 0x2Cu);
    }
  }

  [(GKPeerInternal *)self stopResolving];

  [GKPeerInternal freeLookupList:self->_lookupServiceList andAddrList:self->_addrList andInterfaceList:self->_interfaceList count:self->_lookupServiceCount];
  v6.receiver = self;
  v6.super_class = GKPeerInternal;
  [(GKPeerInternal *)&v6 dealloc];
}

- (void)setServiceCount:(int)count
{
  v23 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      pid = self->_pid;
      serviceCount = self->_serviceCount;
      v9 = 136316674;
      v10 = v5;
      v11 = 2080;
      v12 = "[GKPeerInternal setServiceCount:]";
      v13 = 1024;
      v14 = 4540;
      v15 = 2048;
      selfCopy = self;
      v17 = 1024;
      v18 = pid;
      v19 = 1024;
      v20 = serviceCount;
      v21 = 1024;
      countCopy = count;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKPeer[%p] %d service count old=%d new=%d", &v9, 0x38u);
    }
  }

  self->_serviceCount = count;
}

- (BOOL)tryDetruncateDisplayName:(id)name
{
  v5 = [name length];
  if (v5 <= [(NSString *)self->_displayName length])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = -[NSString isEqualToString:](self->_displayName, "isEqualToString:", [name substringToIndex:{-[NSString length](self->_displayName, "length")}]);
    if (v6)
    {

      self->_displayName = name;
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (void)addLookup:(_DNSServiceRef_t *)lookup
{
  lookupServiceList = self->_lookupServiceList;
  if (lookupServiceList)
  {
    lookupServiceCount = self->_lookupServiceCount;
    lookupServiceSize = self->_lookupServiceSize;
    p_lookupServiceCount = &self->_lookupServiceCount;
    if (lookupServiceCount != lookupServiceSize)
    {
LABEL_11:
      *p_lookupServiceCount = lookupServiceCount + 1;
      lookupServiceList[lookupServiceCount] = lookup;
      return;
    }

    v9 = malloc_type_realloc(lookupServiceList, 8 * lookupServiceSize + 128, 0x2004093837F09uLL);
    if (v9)
    {
      v10 = self->_lookupServiceSize + 16;
      self->_lookupServiceSize = v10;
      self->_lookupServiceList = v9;
      v11 = malloc_type_calloc(v10, 8uLL, 0x80040B8603338uLL);
      if (v11)
      {
        v12 = v11;
        addrList = self->_addrList;
        memcpy(v11, addrList, 8 * self->_lookupServiceSize - 128);
        self->_addrList = v12;
        free(addrList);
        v14 = malloc_type_calloc(self->_lookupServiceSize, 4uLL, 0x100004052888210uLL);
        if (v14)
        {
          v15 = v14;
          interfaceList = self->_interfaceList;
          memset(interfaceList, 255, 4 * self->_lookupServiceSize);
          memcpy(v15, interfaceList, 4 * self->_lookupServiceSize - 64);
          self->_interfaceList = v15;
          free(interfaceList);
          lookupServiceList = self->_lookupServiceList;
          lookupServiceCount = self->_lookupServiceCount;
          goto LABEL_11;
        }
      }
    }

    [GKPeerInternal freeLookupList:self->_lookupServiceList andAddrList:self->_addrList andInterfaceList:self->_interfaceList count:self->_lookupServiceCount];
    goto LABEL_14;
  }

  v17 = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
  self->_lookupServiceList = v17;
  if (!v17)
  {
    return;
  }

  v18 = malloc_type_calloc(0x10uLL, 8uLL, 0x80040B8603338uLL);
  self->_addrList = v18;
  if (!v18)
  {
    free(self->_lookupServiceList);
LABEL_14:
    self->_lookupServiceList = 0;
    return;
  }

  v19 = malloc_type_calloc(0x10uLL, 4uLL, 0x100004052888210uLL);
  self->_interfaceList = v19;
  if (v19)
  {
    lookupServiceCount = 0;
    *&v20 = -1;
    *(&v20 + 1) = -1;
    *(v19 + 2) = v20;
    *(v19 + 3) = v20;
    *v19 = v20;
    *(v19 + 1) = v20;
    self->_lookupServiceSize = 16;
    lookupServiceList = self->_lookupServiceList;
    p_lookupServiceCount = &self->_lookupServiceCount;
    goto LABEL_11;
  }

  free(self->_lookupServiceList);
  self->_lookupServiceList = 0;
  free(self->_addrList);
  self->_addrList = 0;
}

+ (void)freeLookupList:(_DNSServiceRef_t *)list andAddrList:(id *)addrList andInterfaceList:(unsigned int *)interfaceList count:(int)count
{
  if (list && addrList && count >= 1)
  {
    countCopy = count;
    addrListCopy = addrList;
    do
    {
      v11 = *addrListCopy++;

      --countCopy;
    }

    while (countCopy);
  }

  free(list);
  free(addrList);

  free(interfaceList);
}

- (void)removeAndReturnLookupList:(_DNSServiceRef_t *)list andAddrList:(id *)addrList andInterfaceList:(unsigned int *)interfaceList count:(int *)count
{
  lookupServiceList = self->_lookupServiceList;
  if (lookupServiceList)
  {
    *count = self->_lookupServiceCount;
    *list = lookupServiceList;
    *addrList = self->_addrList;
    *interfaceList = self->_interfaceList;
    self->_addrList = 0;
    self->_interfaceList = 0;
    self->_lookupServiceList = 0;
    *&self->_lookupServiceCount = 0;
  }

  else
  {
    *count = 0;
    *list = 0;
    *addrList = 0;
    *interfaceList = 0;
  }
}

- (BOOL)containsLookupService:(_DNSServiceRef_t *)service
{
  v28 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      pid = self->_pid;
      v8 = "yes";
      lookupServiceCount = self->_lookupServiceCount;
      if (!self->_lookupServiceList)
      {
        v8 = "no";
      }

      v16 = 136316418;
      v17 = v5;
      v18 = 2080;
      v19 = "[GKPeerInternal containsLookupService:]";
      v20 = 1024;
      v21 = 4657;
      v22 = 1024;
      v23 = pid;
      v24 = 2080;
      v25 = v8;
      v26 = 1024;
      v27 = lookupServiceCount;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer %d checking lookup service (%s) containing %d", &v16, 0x32u);
    }
  }

  lookupServiceList = self->_lookupServiceList;
  if (!lookupServiceList)
  {
    return 0;
  }

  v11 = self->_lookupServiceCount;
  if (v11 < 1)
  {
    return 0;
  }

  v12 = v11 - 1;
  do
  {
    v13 = *lookupServiceList++;
    result = v13 == service;
  }

  while (v13 != service && v12-- != 0);
  return result;
}

- (void)setAddr:(const sockaddr_in *)addr interface:(unsigned int)interface forLookupService:(_DNSServiceRef_t *)service
{
  v66 = *MEMORY[0x277D85DE8];
  if (!self->_lookupServiceList)
  {
    return;
  }

  lookupServiceCount = self->_lookupServiceCount;
  if (lookupServiceCount < 1)
  {
    return;
  }

  v7 = 0;
  while (self->_lookupServiceList[v7] != service)
  {
LABEL_26:
    if (++v7 >= lookupServiceCount)
    {
      return;
    }
  }

  v65 = *addr;
  v65.sin_port = bswap32(LOWORD(self->_servicePort)) >> 16;
  if (lookupServiceCount < 1)
  {
LABEL_23:
    v20 = self->_addrList[v7];
    if (v20)
    {
    }

    self->_addrList[v7] = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v65 length:16];
    self->_interfaceList[v7] = interface;
    lookupServiceCount = self->_lookupServiceCount;
    goto LABEL_26;
  }

  v8 = 0;
  while (1)
  {
    v9 = self->_addrList[v8];
    if (!v9)
    {
      v11 = 0;
      v14 = 0;
      v12 = bswap32(v65.sin_addr.s_addr);
LABEL_12:
      v13 = 1;
      goto LABEL_13;
    }

    bytes = [v9 bytes];
    v11 = bytes;
    v12 = bswap32(v65.sin_addr.s_addr);
    if (!bytes)
    {
      v14 = 0;
      goto LABEL_12;
    }

    v13 = 0;
    v14 = bswap32(*(bytes + 4));
LABEL_13:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v13)
        {
          v17 = 0;
        }

        else
        {
          v17 = bswap32(*(v11 + 2)) >> 16;
        }

        pid = self->_pid;
        v19 = self->_lookupServiceList[v7];
        *buf = 136318978;
        v34 = v15;
        v35 = 2080;
        v36 = "[GKPeerInternal setAddr:interface:forLookupService:]";
        v37 = 1024;
        v38 = 4684;
        v39 = 1024;
        v40 = pid;
        v41 = 1024;
        v42 = HIBYTE(v12);
        v43 = 1024;
        v44 = BYTE2(v12);
        v45 = 1024;
        v46 = BYTE1(v12);
        v47 = 1024;
        v48 = v12;
        v49 = 1024;
        v50 = bswap32(v65.sin_port) >> 16;
        v51 = 1024;
        serviceCopy = service;
        v53 = 1024;
        v54 = HIBYTE(v14);
        v55 = 1024;
        v56 = BYTE2(v14);
        v57 = 1024;
        v58 = BYTE1(v14);
        v59 = 1024;
        v60 = v14;
        v61 = 1024;
        v62 = v17;
        v63 = 1024;
        v64 = v19;
        _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer %d setAddr %u.%u.%u.%u:%u for service %08X compared to %u.%u.%u.%u:%u of service %08X", buf, 0x6Au);
      }
    }

    if ((v13 & 1) == 0 && *(v11 + 2) == v65.sin_port && *(v11 + 4) == v65.sin_addr.s_addr)
    {
      break;
    }

    if (++v8 >= self->_lookupServiceCount)
    {
      goto LABEL_23;
    }
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v7 == v8)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v34 = v22;
        v35 = 2080;
        v36 = "[GKPeerInternal setAddr:interface:forLookupService:]";
        v37 = 1024;
        v38 = 4690;
        v24 = " [%s] %s:%d  - already set to same IP";
        v25 = v23;
        v26 = 28;
        goto LABEL_35;
      }
    }
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v29 = self->_lookupServiceList[v8];
      *buf = 136315906;
      v34 = v27;
      v35 = 2080;
      v36 = "[GKPeerInternal setAddr:interface:forLookupService:]";
      v37 = 1024;
      v38 = 4692;
      v39 = 1024;
      v40 = v29;
      v24 = " [%s] %s:%d  - was set in a previous GetAddrInfo service: %08X (double resolve?)";
      v25 = v28;
      v26 = 34;
LABEL_35:
      _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    }
  }
}

- (void)copyLookupList:(_DNSServiceRef_t *)list count:(int *)count
{
  lookupServiceList = self->_lookupServiceList;
  if (lookupServiceList)
  {
    v8 = malloc_type_malloc(8 * self->_lookupServiceCount, 0x2004093837F09uLL);
    *list = v8;
    memcpy(v8, self->_lookupServiceList, 8 * self->_lookupServiceCount);
    LODWORD(lookupServiceList) = self->_lookupServiceCount;
  }

  else
  {
    *list = 0;
  }

  *count = lookupServiceList;
}

- (int)usableAddrs
{
  if (!self->_lookupServiceList)
  {
    return 0;
  }

  lookupServiceCount = self->_lookupServiceCount;
  if (lookupServiceCount < 1)
  {
    return 0;
  }

  result = 0;
  addrList = self->_addrList;
  do
  {
    if (*addrList++)
    {
      ++result;
    }

    --lookupServiceCount;
  }

  while (lookupServiceCount);
  return result;
}

- (void)stopResolving
{
  v34 = *MEMORY[0x277D85DE8];
  [(GKSessionInternal *)self->_session lock];
  if (![(GKSessionInternal *)self->_session isShuttingDown])
  {
    lookupServiceList = self->_lookupServiceList;
    if (lookupServiceList)
    {
      if (self->_lookupServiceCount < 1)
      {
        LODWORD(v8) = 0;
      }

      else
      {
        v8 = 0;
        v9 = MEMORY[0x277CE5818];
        *&v3 = 136316418;
        v30 = v3;
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v10 = VRTraceErrorLogLevelToCSTR();
            v11 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
            {
              pid = self->_pid;
              v13 = self->_lookupServiceList[v8];
              *buf = v30;
              *&buf[4] = v10;
              *&buf[12] = 2080;
              *&buf[14] = "[GKPeerInternal stopResolving]";
              *&buf[22] = 1024;
              LODWORD(v32) = 4744;
              WORD2(v32) = 2048;
              *(&v32 + 6) = self;
              HIWORD(v32) = 1024;
              LODWORD(v33) = pid;
              WORD2(v33) = 1024;
              *(&v33 + 6) = v13;
              _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKPeer[%p] %d dealloc lookupService: %08X", buf, 0x32u);
            }
          }

          v14 = self->_lookupServiceList[v8];
          if (v14)
          {
            DNSServiceRefDeallocate(v14);
          }

          ++v8;
        }

        while (v8 < self->_lookupServiceCount);
        lookupServiceList = self->_lookupServiceList;
      }

      free(lookupServiceList);
      p_resolveService = &self->_resolveService;
      resolveService = self->_resolveService;
      self->_lookupServiceList = 0;
      self->_lookupServiceCount = 0;
      if (resolveService)
      {
        goto LABEL_20;
      }

      if (v8)
      {
LABEL_24:
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_32;
        }

        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        v23 = self->_pid;
        *buf = 136316418;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = "[GKPeerInternal stopResolving]";
        *&buf[22] = 1024;
        LODWORD(v32) = 4761;
        WORD2(v32) = 2048;
        *(&v32 + 6) = self;
        HIWORD(v32) = 1024;
        LODWORD(v33) = v23;
        WORD2(v33) = 1024;
        *(&v33 + 6) = v8;
        v24 = " [%s] %s:%d * GKPeer[%p] %d Stopped resolving: %d";
        v25 = v22;
        v26 = 50;
        goto LABEL_31;
      }
    }

    else
    {
      p_resolveService = &self->_resolveService;
      if (self->_resolveService)
      {
        LODWORD(v8) = 0;
LABEL_20:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v19 = self->_pid;
            v20 = self->_resolveService;
            *buf = 136316418;
            *&buf[4] = v17;
            *&buf[12] = 2080;
            *&buf[14] = "[GKPeerInternal stopResolving]";
            *&buf[22] = 1024;
            LODWORD(v32) = 4755;
            WORD2(v32) = 2048;
            *(&v32 + 6) = self;
            HIWORD(v32) = 1024;
            LODWORD(v33) = v19;
            WORD2(v33) = 1024;
            *(&v33 + 6) = v20;
            _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKPeer[%p] %d dealloc resolveService: %08X", buf, 0x32u);
          }
        }

        DNSServiceRefDeallocate(*p_resolveService);
        *p_resolveService = 0;
        LODWORD(v8) = v8 + 1;
        goto LABEL_24;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_32;
    }

    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v29 = self->_pid;
    *buf = 136316162;
    *&buf[4] = v27;
    *&buf[12] = 2080;
    *&buf[14] = "[GKPeerInternal stopResolving]";
    *&buf[22] = 1024;
    LODWORD(v32) = 4763;
    WORD2(v32) = 2048;
    *(&v32 + 6) = self;
    HIWORD(v32) = 1024;
    LODWORD(v33) = v29;
    v24 = " [%s] %s:%d * GKPeer[%p] %d Nothing to stop resolving";
    v25 = v28;
    v26 = 44;
LABEL_31:
    _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    goto LABEL_32;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_pid;
      *buf = 136316162;
      *&buf[4] = v4;
      *&buf[12] = 2080;
      *&buf[14] = "[GKPeerInternal stopResolving]";
      *&buf[22] = 1024;
      LODWORD(v32) = 4734;
      WORD2(v32) = 2048;
      *(&v32 + 6) = self;
      HIWORD(v32) = 1024;
      LODWORD(v33) = v6;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKPeer[%p] %d avoiding overrelease", buf, 0x2Cu);
    }
  }

  [(GKPeerInternal *)self clearResolving];
LABEL_32:
  [(GKSessionInternal *)self->_session unlock:v30];
}

- (void)clearResolving
{
  lookupServiceList = self->_lookupServiceList;
  if (lookupServiceList)
  {
    free(lookupServiceList);
    self->_lookupServiceList = 0;
    self->_lookupServiceCount = 0;
  }

  if (self->_resolveService)
  {
    self->_resolveService = 0;
  }
}

- (void)stopTXTRecordMonitoring
{
  v19 = *MEMORY[0x277D85DE8];
  [(GKSessionInternal *)self->_session lock];
  if (![(GKSessionInternal *)self->_session isShuttingDown])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        pid = self->_pid;
        txtRecordService = self->_txtRecordService;
        v7 = 136316418;
        v8 = v3;
        v9 = 2080;
        v10 = "[GKPeerInternal stopTXTRecordMonitoring]";
        v11 = 1024;
        v12 = 4783;
        v13 = 2048;
        selfCopy = self;
        v15 = 1024;
        v16 = pid;
        v17 = 1024;
        v18 = txtRecordService;
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKPeer[%p] %d => calling DNSServiceRefDeallocate(_txtRecordService) (%08X)", &v7, 0x32u);
      }
    }

    DNSServiceRefDeallocate(self->_txtRecordService);
    self->_txtRecordService = 0;
  }

  [(GKSessionInternal *)self->_session unlock];
}

- (void)cleanupForGKTable:(id)table
{
  v23 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      pid = self->_pid;
      v11 = 136316418;
      v12 = v5;
      v13 = 2080;
      v14 = "[GKPeerInternal cleanupForGKTable:]";
      v15 = 1024;
      v16 = 4791;
      v17 = 2048;
      selfCopy = self;
      v19 = 1024;
      v20 = pid;
      v21 = 2048;
      tableCopy = table;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKPeer[%p] %d cleanup for table[%p]", &v11, 0x36u);
    }
  }

  [(GKPeerInternal *)self stopResolving];
  [(GKSessionInternal *)self->_session lock];
  if (![(GKSessionInternal *)self->_session isShuttingDown])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        txtRecordService = self->_txtRecordService;
        v11 = 136315906;
        v12 = v8;
        v13 = 2080;
        v14 = "[GKPeerInternal cleanupForGKTable:]";
        v15 = 1024;
        v16 = 4795;
        v17 = 1024;
        LODWORD(selfCopy) = txtRecordService;
        _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_txtRecordService) (%08X)", &v11, 0x22u);
      }
    }

    DNSServiceRefDeallocate(self->_txtRecordService);
    self->_txtRecordService = 0;
  }

  [(GKSessionInternal *)self->_session unlock];
}

@end