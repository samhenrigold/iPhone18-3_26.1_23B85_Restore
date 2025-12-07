@interface TCPProgressProbe
+ (id)probeForInterface:(id)interface;
+ (id)progressPrettyPrintUtility:(nstat_progress_indicators *)utility;
+ (void)initialize;
- (BOOL)interfaceMappingIsCurrent;
- (BOOL)manage:(unsigned int)manage outValue:(unsigned int *)value;
- (id)_initForInterface:(id)interface;
- (id)description;
- (void)dealloc;
- (void)fetchMetricsForFlowsAged:(double)aged metrics:(nstat_progress_indicators *)metrics includeQUICFlows:(BOOL)flows resultBlock:(id)block;
@end

@implementation TCPProgressProbe

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"TCPProgressProbe (%s, index %llu, include local flows %d)", self->interfaceName, self->_interfaceIndex, self->_localFlowTracking];

  return v2;
}

- (void)dealloc
{
  interfaceName = self->interfaceName;
  if (interfaceName)
  {
    free(interfaceName);
    self->interfaceName = 0;
  }

  v4.receiver = self;
  v4.super_class = TCPProgressProbe;
  [(TCPProgressProbe *)&v4 dealloc];
}

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = registry;
  registry = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

+ (id)probeForInterface:(id)interface
{
  v37 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  if ([interfaceCopy length])
  {
    obj = registry;
    objc_sync_enter(obj);
    array = [MEMORY[0x277CBEB18] array];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = registry;
    v5 = [v4 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v5)
    {
      v6 = *v28;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v28 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          v9 = [registry objectForKeyedSubscript:{v8, obj}];
          v10 = v9;
          if (v9 && ([v9 interfaceMappingIsCurrent] & 1) == 0)
          {
            v11 = rnfLogHandle;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              interfaceIndex = [v10 interfaceIndex];
              *buf = 138412546;
              v33 = v8;
              v34 = 2048;
              v35 = interfaceIndex;
              _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "TCPPP: Remove obsolete mapping for ifname %@ to interface %llu", buf, 0x16u);
            }

            [array addObject:v8];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v5);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = array;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v14)
    {
      v15 = *v24;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [registry removeObjectForKey:{*(*(&v23 + 1) + 8 * j), obj}];
        }

        v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v14);
    }

    v17 = [registry objectForKeyedSubscript:interfaceCopy];
    if (!v17)
    {
      v17 = [[TCPProgressProbe alloc] _initForInterface:interfaceCopy];
      if (v17)
      {
        [registry setObject:v17 forKeyedSubscript:interfaceCopy];
      }

      else
      {
        v19 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v33 = interfaceCopy;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "TCPPP: Failure to allocate probe for ifName: %@", buf, 0xCu);
        }

        v17 = 0;
      }
    }

    objc_sync_exit(obj);
  }

  else
  {
    v18 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "TCPPP: Nil ifName", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

+ (id)progressPrettyPrintUtility:(nstat_progress_indicators *)utility
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"allflows=%d/C=%d/R=%d/W=%d/flows=%d/unacked=%d/rxbytes=%lld/txbytes=%lld/rxooo=%lld/rxdup=%lld/retx=%lld", utility->var0, utility->var1, utility->var2, utility->var3, utility->var4, utility->var5, utility->var6, utility->var7, utility->var8, utility->var9, utility->var10];

  return v3;
}

- (id)_initForInterface:(id)interface
{
  interfaceCopy = interface;
  v12.receiver = self;
  v12.super_class = TCPProgressProbe;
  v5 = [(TCPProgressProbe *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.symptoms.tcpprogress.queue", v6);
    lqueue = v5->lqueue;
    v5->lqueue = v7;

    uTF8String = [interfaceCopy UTF8String];
    if (!uTF8String)
    {
      [WiFiTriggerHandler getHandlerByName:?];
    }

    v10 = strdup(uTF8String);
    if (!v10)
    {
      [WiFiTriggerHandler getHandlerByName:?];
    }

    v5->interfaceName = v10;
    v5->_interfaceIndex = if_nametoindex(v10);
  }

  return v5;
}

- (BOOL)manage:(unsigned int)manage outValue:(unsigned int *)value
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  lqueue = self->lqueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__TCPProgressProbe_manage_outValue___block_invoke;
  v7[3] = &unk_27898F2D8;
  manageCopy = manage;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = value;
  dispatch_sync(lqueue, v7);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __36__TCPProgressProbe_manage_outValue___block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v69 = 0u;
  v70 = 0u;
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 != *(v3 + 24))
  {
    v9 = socket(2, 2, 0);
    if (v9 < 0)
    {
      v29 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v30 = *(a1 + 32);
      *buf = 134217984;
      v64 = v30;
      v26 = "TCPPP: %p Unable to open a socket for ioctl to kernel";
      v27 = v29;
      v28 = 12;
    }

    else
    {
      v10 = v9;
      v11 = *(a1 + 32);
      v12 = v11[2];
      if (v12 && *v12)
      {
        v69 = 0u;
        v70 = 0u;
        v13 = v11[2];
        if (!v13)
        {
          __36__TCPProgressProbe_manage_outValue___block_invoke_cold_1(buf);
        }

        v14 = 0;
        while (1)
        {
          v15 = *(v13 + v14);
          *(&v69 + v14) = v15;
          if (!v15)
          {
            break;
          }

          if (++v14 == 15)
          {
            HIBYTE(v69) = 0;
            break;
          }
        }

        v16 = *(a1 + 56);
        if (v16 != 2)
        {
          if (v16 == 1)
          {
            if (v11[4])
            {
              goto LABEL_60;
            }

            LODWORD(v70) = 1;
            if (ioctl(v10, 0xC02069ABuLL, &v69))
            {
              v34 = rnfLogHandle;
              if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
              {
                v35 = *(a1 + 32);
                v36 = *(v35 + 16);
                v20 = v34;
                v37 = *__error();
                *buf = 134218498;
                v64 = v35;
                v65 = 2080;
                v66 = v36;
                v67 = 1024;
                LODWORD(v68) = v37;
                v22 = "TCPPP: %p ioctl failure to notify kernel of change to ModePremium on interface %s, errno %d";
                goto LABEL_41;
              }

LABEL_60:
              close(v10);
              return;
            }

            ++*(*(a1 + 32) + 32);
            v48 = rnfLogHandle;
            if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_58;
            }

            v55 = *(a1 + 32);
            v56 = *(v55 + 16);
            v57 = *(v55 + 32);
            *buf = 134218498;
            v64 = v55;
            v65 = 2080;
            v66 = v56;
            v67 = 2048;
            v68 = v57;
            v52 = "TCPPP: %p ioctl sets ModePremium for interface %s, incremented reference count to %lu";
          }

          else
          {
            if (v16)
            {
              v42 = rnfLogHandle;
              if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_60;
              }

              v43 = *(a1 + 32);
              v44 = *(a1 + 56);
              *buf = 134218240;
              v64 = v43;
              v65 = 1024;
              LODWORD(v66) = v44;
              v45 = "TCPPP: %p kernel probing state: invalid command: %d";
              v46 = v42;
              v47 = 18;
              goto LABEL_44;
            }

            if (v11[4] == 1)
            {
              if ([v11 interfaceMappingIsCurrent])
              {
                LODWORD(v70) = 0;
                if (ioctl(v10, 0xC02069ABuLL, &v69))
                {
                  v17 = rnfLogHandle;
                  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    v18 = *(a1 + 32);
                    v19 = *(v18 + 16);
                    v20 = v17;
                    v21 = *__error();
                    *buf = 134218498;
                    v64 = v18;
                    v65 = 2080;
                    v66 = v19;
                    v67 = 1024;
                    LODWORD(v68) = v21;
                    v22 = "TCPPP: %p ioctl failure to notify kernel of change to ModeDefault on interface %s, errno %d";
LABEL_41:
                    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, v22, buf, 0x1Cu);

                    goto LABEL_60;
                  }

                  goto LABEL_60;
                }

                --*(*(a1 + 32) + 32);
                v48 = rnfLogHandle;
                if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_58;
                }

                v60 = *(a1 + 32);
                v61 = *(v60 + 16);
                v62 = *(v60 + 32);
                *buf = 134218498;
                v64 = v60;
                v65 = 2080;
                v66 = v61;
                v67 = 2048;
                v68 = v62;
                v52 = "TCPPP: %p ioctl sets ModeDefault for interface %s, decremented reference count to %lu";
                goto LABEL_57;
              }

              v54 = rnfLogHandle;
              if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_60;
              }

              *buf = 0;
              v45 = "TCPPP: interface name is no longer current, no-op";
              v46 = v54;
              v47 = 2;
LABEL_44:
              _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_ERROR, v45, buf, v47);
              goto LABEL_60;
            }

            --v11[4];
            v48 = rnfLogHandle;
            if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
            {
LABEL_58:
              *(*(a1 + 32) + 24) = *(a1 + 56);
              goto LABEL_59;
            }

            v49 = *(a1 + 32);
            v50 = *(v49 + 16);
            v51 = *(v49 + 32);
            *buf = 134218498;
            v64 = v49;
            v65 = 2080;
            v66 = v50;
            v67 = 2048;
            v68 = v51;
            v52 = "TCPPP: %p requesting ModeDefault for interface %s, decremented reference count to %lu";
          }

LABEL_57:
          _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEFAULT, v52, buf, 0x20u);
          goto LABEL_58;
        }

        if (ioctl(v10, 0xC02069ACuLL, &v69))
        {
          v38 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
          {
            v39 = *(a1 + 32);
            v40 = *(v39 + 16);
            v20 = v38;
            v41 = *__error();
            *buf = 134218498;
            v64 = v39;
            v65 = 2080;
            v66 = v40;
            v67 = 1024;
            LODWORD(v68) = v41;
            v22 = "TCPPP: %p ioctl failure to fetch kernel's state on interface %s, errno %d";
            goto LABEL_41;
          }

          goto LABEL_60;
        }

        v53 = *(a1 + 48);
        if (v53)
        {
          *v53 = v70;
LABEL_59:
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_60;
        }

        v58 = rnfLogHandle;
        if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_60;
        }

        v59 = *(a1 + 32);
        *buf = 134217984;
        v64 = v59;
        v45 = "TCPPP: %p kernel probing state: invalid out arg";
        v46 = v58;
        v47 = 12;
        goto LABEL_44;
      }

      v23 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v24 = *(a1 + 32);
      v25 = "<empty>";
      if (!*(v24 + 16))
      {
        v25 = "NULL";
      }

      *buf = 134218242;
      v64 = v24;
      v65 = 2080;
      v66 = v25;
      v26 = "TCPPP: %p interfaceName is %s";
      v27 = v23;
      v28 = 22;
    }

    _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    return;
  }

  if (v2 != 1)
  {
    if (v2)
    {
      goto LABEL_32;
    }

    v4 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v5 = *(a1 + 32);
    *buf = 134217984;
    v64 = v5;
    v6 = "TCPPP: %p requesting ModeDefault and already in ModeDefault, no-op";
    v7 = v4;
    v8 = 12;
    goto LABEL_31;
  }

  ++*(v3 + 32);
  v31 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 32);
    v33 = *(v32 + 32);
    *buf = 134218240;
    v64 = v32;
    v65 = 2048;
    v66 = v33;
    v6 = "TCPPP: %p requesting ModePremium and already in ModePremium, incremented reference count to %lu";
    v7 = v31;
    v8 = 22;
LABEL_31:
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
  }

LABEL_32:
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (void)fetchMetricsForFlowsAged:(double)aged metrics:(nstat_progress_indicators *)metrics includeQUICFlows:(BOOL)flows resultBlock:(id)block
{
  flowsCopy = flows;
  v47 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!metrics)
  {
    v19 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    LODWORD(v42[0]) = 134217984;
    *(v42 + 4) = self;
    v20 = "TCPPP: %p invalid argument (metrics is nil)";
    v21 = v42;
    v22 = v19;
    v23 = 12;
LABEL_15:
    _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, v20, v21, v23);
    goto LABEL_16;
  }

  if (aged <= 0.0)
  {
    v24 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    LODWORD(v42[0]) = 134218240;
    *(v42 + 4) = self;
    WORD6(v42[0]) = 2048;
    *(v42 + 14) = aged;
    v20 = "TCPPP: %p invalid argument (age: %f)";
    v21 = v42;
    v22 = v24;
    v23 = 22;
    goto LABEL_15;
  }

  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v43 = 0u;
  memset(v42, 0, sizeof(v42));
  v30 = 96;
  interfaceIndex = self->_interfaceIndex;
  v32 = 0;
  v31[0] = interfaceIndex;
  v12 = machAbsoluteTimeFromNanoseconds((aged * 1000000000.0));
  v13 = 4096;
  if (self->_localFlowTracking)
  {
    v13 = 2048;
  }

  v31[1] = v12;
  v32 = v13;
  v14 = 3;
  if (!flowsCopy)
  {
    v14 = 1;
  }

  v33 = v14;
  if (sysctlbyname("net.stats.progress", v42, &v30, v31, 0x20uLL) < 0)
  {
    v25 = __error();
    v26 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v27 = *v25;
      interfaceName = self->interfaceName;
      v29 = self->_interfaceIndex;
      *buf = 134218754;
      selfCopy = self;
      v36 = 2080;
      v37 = interfaceName;
      v38 = 2048;
      v39 = v29;
      v40 = 1024;
      v41 = v27;
      v20 = "TCPPP: %p query failed on ifname=%s, ifIndex=%llu (errno = %d)";
      v21 = buf;
      v22 = v26;
      v23 = 38;
      goto LABEL_15;
    }

LABEL_16:
    (*(blockCopy + 2))(blockCopy, 0, 0);
    goto LABEL_17;
  }

  v15 = v44;
  v16 = v45;
  *&metrics->var7 = v43;
  *&metrics->var9 = v15;
  v17 = v46;
  *&metrics->var11 = v16;
  *&metrics->var13 = v17;
  v18 = v42[1];
  *&metrics->var0 = v42[0];
  *&metrics->var4 = v18;
  (*(blockCopy + 2))(blockCopy, 1, metrics);
LABEL_17:
}

- (BOOL)interfaceMappingIsCurrent
{
  v16 = *MEMORY[0x277D85DE8];
  interfaceIndex = self->_interfaceIndex;
  v4 = if_nametoindex(self->interfaceName);
  if (interfaceIndex != v4)
  {
    v5 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      interfaceName = self->interfaceName;
      v7 = self->_interfaceIndex;
      v8 = v5;
      v10 = 136315650;
      v11 = interfaceName;
      v12 = 2048;
      v13 = v7;
      v14 = 1024;
      v15 = if_nametoindex(interfaceName);
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "TCPPP: probe for interface %s was on index %llu, should be on %u", &v10, 0x1Cu);
    }
  }

  return interfaceIndex == v4;
}

void __36__TCPProgressProbe_manage_outValue___block_invoke_cold_1(char **a1)
{
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    v8 = 0;
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strict_strlcpy called with NULL src", v4, v5, v6, v7, v8);
  }

  *a1 = 0;
  asprintf(a1, "strict_strlcpy called with NULL src");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

@end