@interface NetworkAnalyticsQueueStatistics
+ (id)schedulerToString:(unsigned int)string;
+ (id)slotToString:(unsigned __int8)string;
- (NetworkAnalyticsQueueStatistics)initWithInterfaceName:(id)name;
- (id)_entryForSlot:(unsigned __int8)slot;
- (id)description;
- (void)_processNewStats:(if_ifclassq_stats *)stats forSlot:(unsigned __int8)slot;
- (void)_updateForSlot:(unsigned __int8)slot;
- (void)cleanupIoctlSocket;
- (void)createIoctlSocket;
- (void)dealloc;
- (void)update;
@end

@implementation NetworkAnalyticsQueueStatistics

- (void)update
{
  v17 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v5 = v4;

  lastUpdateTime = self->_lastUpdateTime;
  if (v5 <= lastUpdateTime)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5 - lastUpdateTime;
  }

  if (v7 < 1.0)
  {
    v8 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v13 = 134218240;
    v14 = v7;
    v15 = 1024;
    v16 = 1;
    v9 = "Not updating queue statistics, elapsed time %f less than minimum %d seconds";
    v10 = v8;
    v11 = 18;
    goto LABEL_17;
  }

  if (!self->_interfaceName)
  {
    v12 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    LOWORD(v13) = 0;
    v9 = "Not updating queue statistics, no interface name";
LABEL_16:
    v10 = v12;
    v11 = 2;
LABEL_17:
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, v9, &v13, v11);
    return;
  }

  if (self->_ioctlSocket < 0)
  {
    v12 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    LOWORD(v13) = 0;
    v9 = "Not updating queue statistics, no socket";
    goto LABEL_16;
  }

  [(NetworkAnalyticsQueueStatistics *)self _updateForSlot:7];
  [(NetworkAnalyticsQueueStatistics *)self _updateForSlot:2];
  [(NetworkAnalyticsQueueStatistics *)self _updateForSlot:1];

  [(NetworkAnalyticsQueueStatistics *)self _updateForSlot:4];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<QueueStatistics %@ slots: %@>", self->_interfaceName, self->_slots];

  return v2;
}

- (NetworkAnalyticsQueueStatistics)initWithInterfaceName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = NetworkAnalyticsQueueStatistics;
  v6 = [(NetworkAnalyticsQueueStatistics *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interfaceName, name);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    slots = v7->_slots;
    v7->_slots = v8;

    v7->_ioctlSocket = -1;
    [(NetworkAnalyticsQueueStatistics *)v7 createIoctlSocket];
  }

  return v7;
}

- (void)dealloc
{
  [(NetworkAnalyticsQueueStatistics *)self cleanupIoctlSocket];
  v3.receiver = self;
  v3.super_class = NetworkAnalyticsQueueStatistics;
  [(NetworkAnalyticsQueueStatistics *)&v3 dealloc];
}

- (void)createIoctlSocket
{
  v8 = *MEMORY[0x277D85DE8];
  [(NetworkAnalyticsQueueStatistics *)self cleanupIoctlSocket];
  v3 = socket(2, 2, 0);
  self->_ioctlSocket = v3;
  if (v3 < 0)
  {
    v4 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = *__error();
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Unable to open a socket queue statistics ioctl to kernel: %{errno}d", v7, 8u);
    }

    self->_ioctlSocket = -1;
  }
}

- (void)cleanupIoctlSocket
{
  ioctlSocket = self->_ioctlSocket;
  if ((ioctlSocket & 0x80000000) == 0)
  {
    close(ioctlSocket);
    self->_ioctlSocket = -1;
  }
}

- (id)_entryForSlot:(unsigned __int8)slot
{
  v19 = *MEMORY[0x277D85DE8];
  slots = self->_slots;
  if (slots)
  {
    slotCopy = slot;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = slots;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if ([v11 slot] == slotCopy)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v12 = v11;

      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_10:
    }

    v12 = objc_alloc_init(NetworkAnalyticsQueueStatisticsSlotEntry);
    [(NetworkAnalyticsQueueStatisticsSlotEntry *)v12 setSlot:slotCopy];
    [(NSMutableArray *)self->_slots addObject:v12];
  }

  else
  {
    v12 = 0;
  }

LABEL_14:

  return v12;
}

- (void)_processNewStats:(if_ifclassq_stats *)stats forSlot:(unsigned __int8)slot
{
  v21 = *MEMORY[0x277D85DE8];
  if (stats)
  {
    var5 = stats->var5;
    if (var5 == 7)
    {
      slotCopy = slot;
      v7 = [(NetworkAnalyticsQueueStatistics *)self _entryForSlot:slot];
      v8 = v7;
      if (v7)
      {
        [v7 setMinimumQueueDelay:stats->var6.var0.var30];
        [v8 setMaximumQueueDelay:stats->var6.var0.var31];
        [v8 setAverageQueueDelay:stats->var6.var0.var32];
        v9 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v19 = 138412290;
          v20 = v8;
          v10 = "Updated entry: %@";
          v11 = v9;
          v12 = OS_LOG_TYPE_DEBUG;
          v13 = 12;
LABEL_12:
          _os_log_impl(&dword_23255B000, v11, v12, v10, &v19, v13);
        }
      }

      else
      {
        v18 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v19 = 67109120;
          LODWORD(v20) = slotCopy;
          v10 = "Failed to get entry for slot %u";
          v11 = v18;
          v12 = OS_LOG_TYPE_ERROR;
          v13 = 8;
          goto LABEL_12;
        }
      }

      return;
    }

    v15 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_FAULT))
    {
      v16 = v15;
      v17 = [NetworkAnalyticsQueueStatistics schedulerToString:var5];
      v19 = 138412290;
      v20 = v17;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_FAULT, "Unknown scheduler, dropping stats for scheduler: %@", &v19, 0xCu);
    }
  }

  else
  {
    v14 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Cannot process NULL stats", &v19, 2u);
    }
  }
}

- (void)_updateForSlot:(unsigned __int8)slot
{
  slotCopy = slot;
  v31 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  bzero(v22, 0x280uLL);
  uTF8String = [(NSString *)self->_interfaceName UTF8String];
  v6 = uTF8String;
  if (uTF8String && *uTF8String)
  {
    LOBYTE(v28) = *uTF8String;
    v7 = 1;
    while (v7 != 15)
    {
      v8 = uTF8String[v7];
      *(&v28 + v7++) = v8;
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    HIBYTE(v28) = 0;
LABEL_15:
    *(&v29 + 1) = v22;
    LODWORD(v30) = 640;
    DWORD1(v29) = slotCopy;
    if (ioctl(self->_ioctlSocket, 0xC0286993uLL, &v28))
    {
      v19 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        v21 = *__error();
        *buf = 67109376;
        *v24 = slotCopy;
        *&v24[4] = 1024;
        *&v24[6] = v21;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Unable to get queue statistics for slot %u, error %{errno}d", buf, 0xEu);
      }
    }

    else
    {
      [(NetworkAnalyticsQueueStatistics *)self _processNewStats:v22 forSlot:slotCopy];
    }
  }

  else
  {
    interfaceName = self->_interfaceName;
    if (interfaceName)
    {
      fastestEncoding = [(NSString *)interfaceName fastestEncoding];
      v11 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_FAULT))
      {
        v12 = self->_interfaceName;
        v13 = MEMORY[0x277CCACA8];
        v14 = v11;
        v15 = [v13 localizedNameOfStringEncoding:fastestEncoding];
        v16 = v15;
        v17 = "<empty>";
        *buf = 138412802;
        *v24 = v12;
        if (!v6)
        {
          v17 = "NULL";
        }

        *&v24[8] = 2112;
        v25 = v15;
        v26 = 2080;
        v27 = v17;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_FAULT, "Non-nil interfaceName %@ with encoding %@ has %s UTF-8 representation", buf, 0x20u);
      }
    }

    else
    {
      v18 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *v24 = slotCopy;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "interfaceName is nil, not updating queue statistics for slot %u", buf, 8u);
      }
    }
  }
}

+ (id)schedulerToString:(unsigned int)string
{
  if (string > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_27898D768[string];
  }
}

+ (id)slotToString:(unsigned __int8)string
{
  if (string > 9u)
  {
    return @"Unknown";
  }

  else
  {
    return off_27898D7A8[string];
  }
}

@end