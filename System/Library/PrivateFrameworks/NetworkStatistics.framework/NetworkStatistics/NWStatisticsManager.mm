@interface NWStatisticsManager
- (BOOL)addAllForProvider:(int)provider filter:(unint64_t)filter events:(unint64_t)events pid:(int)pid uuid:(unsigned __int8 *)(a7;
- (BOOL)addAllRoute:(unint64_t)route;
- (BOOL)addAllTCP:(unint64_t)p events:(unint64_t)events pid:(int)pid uuid:(unsigned __int8 *)(a6;
- (BOOL)addAllUDP:(unint64_t)p events:(unint64_t)events pid:(int)pid uuid:(unsigned __int8 *)(a6;
- (BOOL)addSource:(id)source request:(nstat_msg_add_src *)request length:(unint64_t)length;
- (BOOL)handleCompletion:(unint64_t)completion message:(nstat_msg_hdr *)message length:(unsigned int)length;
- (BOOL)handleCompletionMessage:(nstat_msg_hdr *)message length:(unsigned int)length;
- (BOOL)performQuery:(unsigned int)query sourceRef:(unint64_t)ref completion:(id)completion;
- (BOOL)queryAll:(id)all;
- (BOOL)sendMessage:(nstat_msg_hdr *)message length:(int64_t)length;
- (NSSet)sources;
- (NWStatisticsManager)init;
- (NWStatisticsManager)initWithQueue:(id)queue;
- (NWStatisticsManagerDelegate)delegate;
- (unint64_t)_nextReferenceForTarget:(unint64_t)target command:(unsigned int)command;
- (unsigned)commandFromReference:(unint64_t)reference;
- (void)dealloc;
- (void)dispatchDidAddSource:(id)source;
- (void)dispatchDidReceiveCounts:(id)counts fromUpdate:(BOOL)update;
- (void)dispatchDidReceiveDescription:(id)description;
- (void)dispatchDidReceiveType:(unsigned int)type source:(id)source;
- (void)handleMessage:(nstat_msg_hdr *)message length:(int64_t)length;
- (void)handleReadEvent;
- (void)handleSystemInformationCounts:(nstat_sysinfo_counts *)counts;
- (void)invalidate;
- (void)performAllCompletions:(id)completions;
- (void)queryAllCounts:(id)counts;
- (void)queryAllDescriptions:(id)descriptions;
- (void)querySource:(id)source completion:(id)completion;
- (void)removeSource:(id)source;
- (void)removeSourceInternal:(unint64_t)internal isFromClient:(BOOL)client;
- (void)reportInternalCounts;
- (void)sendRemoveSourceInternal:(unint64_t)internal;
- (void)sendRequestMessage:(int)message sourceRef:(unint64_t)ref;
- (void)setDelegate:(id)delegate;
- (void)setInterfaceTraceFd:(int)fd;
- (void)setMgrflags:(unsigned int)mgrflags;
- (void)setQueuePriority:(int64_t)priority;
- (void)startQueuedQuery;
- (void)subscribeToSystemInformation;
- (void)trace:(char *)trace;
- (void)traceMemoryBuf:(char *)buf length:(int64_t)length tag:(char *)tag;
@end

@implementation NWStatisticsManager

- (void)handleReadEvent
{
  v3 = objc_autoreleasePoolPush();
  v4 = recv([(NWStatisticsManager *)self sockfd], [(NWStatisticsManager *)self readBuffer], 0x1000uLL, 0);
  if (v4 >= 1)
  {
    for (i = v4; i > 0; i = recv([(NWStatisticsManager *)self sockfd], [(NWStatisticsManager *)self readBuffer], 0x1000uLL, 0))
    {
      readBuffer = [(NWStatisticsManager *)self readBuffer];
      if (i >= 0x10)
      {
        v7 = readBuffer;
        do
        {
          v8 = *(v7 + 6);
          if (v8 < 0x10 || i < v8)
          {
            break;
          }

          if ((self->_interfaceTraceFd & 0x80000000) == 0 && self->_iftracebuf)
          {
            [(NWStatisticsManager *)self traceMemoryBuf:v7 length:*(v7 + 6) tag:"Input"];
          }

          if (!*v7 || ![(NWStatisticsManager *)self handleCompletionMessage:v7 length:v8])
          {
            [(NWStatisticsManager *)self handleMessage:v7 length:v8];
          }

          v7 += v8;
          i -= v8;
        }

        while (i > 0xF);
      }
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (NWStatisticsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startQueuedQuery
{
  v21 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_queuedQueryAlls allKeys];
  v4 = [allKeys sortedArrayUsingSelector:sel_compare_];

  mgrflags = [(NWStatisticsManager *)self mgrflags];
  if ((mgrflags & 0x10) != 0)
  {
    v6 = NStatGetLog(mgrflags);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [v4 description];
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2080;
      *&buf[14] = [v7 UTF8String];
      _os_log_impl(&dword_25BA3A000, v6, OS_LOG_TYPE_DEBUG, "Manager %p: found keys %s", buf, 0x16u);
    }
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    v8 = [v4 description];
    NStatMgrTraceF(self, "%s Manager %p: found keys %s", "-[NWStatisticsManager startQueuedQuery]", self, [v8 UTF8String]);
  }

  if (v4 && [v4 count])
  {
    v9 = [v4 objectAtIndexedSubscript:0];
    v10 = [(NSMutableDictionary *)self->_queuedQueryAlls objectForKeyedSubscript:v9];
    v11 = MEMORY[0x25F875560]();

    if (v11)
    {
      [(NSMutableDictionary *)self->_queuedQueryAlls removeObjectForKey:v9];
      currentQueries = self->_currentQueries;
      v13 = MEMORY[0x25F875560](v11);
      [(NSMutableDictionary *)currentQueries setObject:v13 forKey:v9];

      unsignedLongLongValue = [v9 unsignedLongLongValue];
      self->_currentQueryAllReference = unsignedLongLongValue;
      *&buf[8] = 0;
      *&buf[8] = [(NWStatisticsManager *)self commandFromReference:unsignedLongLongValue];
      *buf = unsignedLongLongValue;
      *&buf[16] = -1;
      *&buf[14] = 2;
      if (![(NWStatisticsManager *)self sendMessage:buf length:24])
      {
        v15 = NStatGetLog([(NWStatisticsManager *)self handleCompletion:unsignedLongLongValue message:0 length:0]);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *v16 = 134218240;
          selfCopy = self;
          v18 = 2048;
          v19 = unsignedLongLongValue;
          _os_log_impl(&dword_25BA3A000, v15, OS_LOG_TYPE_ERROR, "Manager %p: Failure to send message with reference %llu", v16, 0x16u);
        }

        if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
        {
          NStatMgrTraceF(self, "%s Manager %p: Failure to send message with reference %llu", "[NWStatisticsManager startQueuedQuery]", self, unsignedLongLongValue);
        }
      }
    }
  }
}

- (void)traceMemoryBuf:(char *)buf length:(int64_t)length tag:(char *)tag
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((selfCopy->_interfaceTraceFd & 0x80000000) == 0 && selfCopy->_iftracebuf)
  {
    v16.tv_sec = 0;
    *&v16.tv_usec = 0;
    gettimeofday(&v16, 0);
    __snprintf_chk(selfCopy->_iftracebuf, 0x1100uLL, 0, 0xFFFFFFFFFFFFFFFFLL, "%ld.%06d %s len %zu\n", v16.tv_sec, v16.tv_usec, tag, length);
    v9 = strlen(selfCopy->_iftracebuf);
    v10 = v9 + 1 + length;
    if (v10 >> 8 > 0x10)
    {
      v12 = NStatGetLog(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [NWStatisticsManager traceMemoryBuf:tag length:length tag:v12];
      }

      goto LABEL_9;
    }

    memcpy(&selfCopy->_iftracebuf[v9 + 1], buf, length);
    v11 = write(selfCopy->_interfaceTraceFd, selfCopy->_iftracebuf, v10);
    if (v11 < 0)
    {
      v12 = NStatGetLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = *__error();
        v14 = __error();
        v15 = strerror(*v14);
        *buf = 136315650;
        tagCopy = tag;
        v19 = 1024;
        v20 = v13;
        v21 = 2080;
        v22 = v15;
        _os_log_debug_impl(&dword_25BA3A000, v12, OS_LOG_TYPE_DEBUG, "save %s failed: %d - %s", buf, 0x1Cu);
      }

LABEL_9:
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)trace:(char *)trace
{
  if (trace && (self->_interfaceTraceFd & 0x80000000) == 0)
  {
    v5 = strlen(trace) + 1;

    [(NWStatisticsManager *)self traceMemoryBuf:trace length:v5 tag:"Trace"];
  }
}

- (BOOL)sendMessage:(nstat_msg_hdr *)message length:(int64_t)length
{
  readSource = [(NWStatisticsManager *)self readSource];

  if (readSource)
  {
    message->length = length;
    message->flags |= 1u;
    if ((self->_interfaceTraceFd & 0x80000000) == 0 && self->_iftracebuf)
    {
      [(NWStatisticsManager *)self traceMemoryBuf:message length:length tag:"Output"];
    }

    if (send([(NWStatisticsManager *)self sockfd], message, length, 0) == length)
    {
      return 1;
    }

    if (message->context)
    {
      [(NWStatisticsManager *)self handleCompletion:message->context message:0 length:0];
    }
  }

  return 0;
}

- (void)handleSystemInformationCounts:(nstat_sysinfo_counts *)counts
{
  delegate = [(NWStatisticsManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ((counts->var0 - 8) / 0x28) >= 1)
  {
    v6 = ((counts->var0 - 8) / 0x28) & 0x7FFFFFFF;
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v6];
    p_var3 = &counts->var2[0].var3;
    while (1)
    {
      v9 = *(p_var3 - 8);
      if (!v9)
      {
        goto LABEL_15;
      }

      v10 = *(p_var3 - 7);
      if (v10)
      {
        break;
      }

      if ((v10 & 2) != 0)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(p_var3 - 3)];
LABEL_12:
        v11 = v12;
        if (v12)
        {
          goto LABEL_13;
        }

        goto LABEL_15;
      }

      if ((v10 & 4) != 0)
      {
        v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:p_var3 - 6 length:*p_var3];
        if (v11)
        {
LABEL_13:
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
          [v7 setObject:v11 forKeyedSubscript:v13];
        }
      }

LABEL_15:
      p_var3 += 10;
      if (!--v6)
      {
        if ([v7 count])
        {
          clientQueue = [(NWStatisticsManager *)self clientQueue];
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __53__NWStatisticsManager_handleSystemInformationCounts___block_invoke;
          v16[3] = &unk_27996DB70;
          v16[4] = self;
          v17 = v7;
          v15 = v7;
          dispatch_async(clientQueue, v16);
        }

        else
        {
        }

        goto LABEL_19;
      }
    }

    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:*(p_var3 - 3)];
    goto LABEL_12;
  }

LABEL_19:
}

void __53__NWStatisticsManager_handleSystemInformationCounts___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isInvalidated] & 1) == 0)
  {
    v3 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      v2 = objc_autoreleasePoolPush();
      [v3 statisticsManager:*(a1 + 32) didReceiveDirectSystemInformation:*(a1 + 40)];
      objc_autoreleasePoolPop(v2);
    }
  }
}

- (void)reportInternalCounts
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = NStatGetLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    numSourceAddsReceived = self->_numSourceAddsReceived;
    numSourcesInserted = self->_numSourcesInserted;
    numSourcesRemoved = self->_numSourcesRemoved;
    v7 = [(NSMutableDictionary *)self->__internalSources count];
    numSourceAddsSkipped = self->_numSourceAddsSkipped;
    numSourcesQueried = self->_numSourcesQueried;
    numUpdatesDispatched = self->_numUpdatesDispatched;
    numUpdatesSkipped = self->_numUpdatesSkipped;
    numUpdatesLazyDispatched = self->_numUpdatesLazyDispatched;
    numUpdatesLazySkipped = self->_numUpdatesLazySkipped;
    *buf = 134220544;
    selfCopy = self;
    v16 = 2048;
    v17 = numSourceAddsReceived;
    v18 = 2048;
    v19 = numSourcesInserted;
    v20 = 2048;
    v21 = numSourcesRemoved;
    v22 = 2048;
    v23 = v7;
    v24 = 2048;
    v25 = numSourceAddsSkipped;
    v26 = 2048;
    v27 = numSourcesQueried;
    v28 = 2048;
    v29 = numUpdatesDispatched;
    v30 = 2048;
    v31 = numUpdatesSkipped;
    v32 = 2048;
    v33 = numUpdatesLazyDispatched;
    v34 = 2048;
    v35 = numUpdatesLazySkipped;
    _os_log_impl(&dword_25BA3A000, v3, OS_LOG_TYPE_DEBUG, "Manager %p: source kernel added msgs %lld insert %lld remove %lld dict %lld skip %lld query %lld, updates dispatched %lld skipped %lld lazy %lld lazy skip %lld", buf, 0x70u);
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    NStatMgrTraceF(self, "%s Manager %p: source kernel added msgs %lld insert %lld remove %lld dict %lld skip %lld query %lld, updates dispatched %lld skipped %lld lazy %lld lazy skip %lld", "[NWStatisticsManager reportInternalCounts]", self, self->_numSourceAddsReceived, self->_numSourcesInserted, self->_numSourcesRemoved, [(NSMutableDictionary *)self->__internalSources count], self->_numSourceAddsSkipped, self->_numSourcesQueried, self->_numUpdatesDispatched, self->_numUpdatesSkipped, self->_numUpdatesLazyDispatched, self->_numUpdatesLazySkipped);
  }
}

- (void)dispatchDidAddSource:(id)source
{
  sourceCopy = source;
  clientQueue = [(NWStatisticsManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__NWStatisticsManager_dispatchDidAddSource___block_invoke;
  v7[3] = &unk_27996DB70;
  v7[4] = self;
  v8 = sourceCopy;
  v6 = sourceCopy;
  dispatch_async(clientQueue, v7);
}

void __44__NWStatisticsManager_dispatchDidAddSource___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = objc_autoreleasePoolPush();
    [v3 statisticsManager:*(a1 + 32) didAddSource:*(a1 + 40)];
    objc_autoreleasePoolPop(v2);
  }
}

- (void)dispatchDidReceiveDescription:(id)description
{
  descriptionCopy = description;
  clientQueue = [(NWStatisticsManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NWStatisticsManager_dispatchDidReceiveDescription___block_invoke;
  block[3] = &unk_27996DB98;
  v8 = descriptionCopy;
  v6 = descriptionCopy;
  dispatch_async(clientQueue, block);
}

void __53__NWStatisticsManager_dispatchDidReceiveDescription___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) removing] & 1) == 0)
  {
    v3 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      v2 = objc_autoreleasePoolPush();
      [v3 sourceDidReceiveDescription:*(a1 + 32)];
      objc_autoreleasePoolPop(v2);
    }
  }
}

- (void)dispatchDidReceiveCounts:(id)counts fromUpdate:(BOOL)update
{
  countsCopy = counts;
  clientQueue = [(NWStatisticsManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NWStatisticsManager_dispatchDidReceiveCounts_fromUpdate___block_invoke;
  block[3] = &unk_27996DB98;
  v9 = countsCopy;
  v7 = countsCopy;
  dispatch_async(clientQueue, block);
}

void __59__NWStatisticsManager_dispatchDidReceiveCounts_fromUpdate___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) removing] & 1) == 0)
  {
    v3 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      v2 = objc_autoreleasePoolPush();
      [v3 sourceDidReceiveCounts:*(a1 + 32)];
      objc_autoreleasePoolPop(v2);
    }
  }
}

- (void)dispatchDidReceiveType:(unsigned int)type source:(id)source
{
  sourceCopy = source;
  v7 = sourceCopy;
  if (type == 10003)
  {
    v11 = sourceCopy;
    sourceCopy = [(NWStatisticsManager *)self dispatchDidReceiveDescription:sourceCopy];
  }

  else
  {
    if (type == 10004)
    {
      selfCopy2 = self;
      v11 = v7;
      v9 = v7;
      v10 = 0;
    }

    else
    {
      if (type != 10006)
      {
        goto LABEL_9;
      }

      v11 = sourceCopy;
      [(NWStatisticsManager *)self dispatchDidReceiveDescription:sourceCopy];
      selfCopy2 = self;
      v9 = v11;
      v10 = 1;
    }

    sourceCopy = [(NWStatisticsManager *)selfCopy2 dispatchDidReceiveCounts:v9 fromUpdate:v10];
  }

  v7 = v11;
LABEL_9:

  MEMORY[0x2821F96F8](sourceCopy, v7);
}

- (void)sendRequestMessage:(int)message sourceRef:(unint64_t)ref
{
  internalQueue = [(NWStatisticsManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (ref == -1)
  {
    [NWStatisticsManager sendRequestMessage:sourceRef:];
  }

  if (![(NWStatisticsManager *)self isInvalidated])
  {
    v8[0] = 0;
    v8[1] = message;
    v8[2] = ref;
    [(NWStatisticsManager *)self sendMessage:v8 length:24];
  }
}

- (void)handleMessage:(nstat_msg_hdr *)message length:(int64_t)length
{
  v53 = *MEMORY[0x277D85DE8];
  type = message->type;
  if (type <= 10001)
  {
    if (type == 1)
    {
      if (length < 0x28)
      {
        v31 = NStatGetLog(self);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [NWStatisticsManager handleMessage:message length:v31];
        }
      }

      else
      {
        mgrflags = [(NWStatisticsManager *)self mgrflags];
        if ((mgrflags & 0x10) != 0)
        {
          v22 = NStatGetLog(mgrflags);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            context = message[1].context;
            v24 = *&message[1].type;
            v25 = message[2].context;
            v26 = msgTypeToString(v25);
            v27 = WORD2(message[2].context);
            context_high = HIWORD(message[2].context);
            if (length < 0x30)
            {
              v29 = 0;
            }

            else
            {
              v29 = *&message[2].type;
            }

            *buf = 134219778;
            selfCopy3 = self;
            v43 = 1024;
            *v44 = context;
            *&v44[4] = 2048;
            *&v44[6] = v24;
            *&v44[14] = 1024;
            *&v44[16] = v25;
            v45 = 2080;
            v46 = v26;
            v47 = 1024;
            v48 = v27;
            v49 = 1024;
            v50 = context_high;
            v51 = 2048;
            v52 = v29;
            _os_log_impl(&dword_25BA3A000, v22, OS_LOG_TYPE_DEBUG, "Manager %p: error: %d hdr {0x%lld, %d (%s) %d, 0x%x} srcref %lld}", buf, 0x42u);
          }
        }

        if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
        {
          msgTypeToString(message[2].context);
          NStatMgrTraceF(self, "%s Manager %p: error: %d hdr {0x%lld, %d (%s) %d, 0x%x} srcref %lld}", "[NWStatisticsManager handleMessage:length:]", self);
        }
      }
    }

    else if (type == 10001)
    {
      if (length >= 0x20)
      {
        mgrflags = self->_mgrflags;
        if ((mgrflags & 0x20) != 0)
        {
          ++self->_numSourceAddsSkipped;
          if ((mgrflags & 0x40) != 0)
          {
            ++self->_numSourcesQueried;
            [(NWStatisticsManager *)self sendRequestMessage:1007 sourceRef:message[1].context];
          }
        }

        else
        {
          v15 = [NWStatisticsSource createSourceForProvider:message[1].type srcRef:message[1].context manager:self];
          if (v15)
          {
            _internalSources = [(NWStatisticsManager *)self _internalSources];
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:message[1].context];
            [_internalSources setObject:v15 forKey:v17];

            ++self->_numSourcesInserted;
            [(NWStatisticsManager *)self dispatchDidAddSource:v15];
          }

          else
          {
            [(NWStatisticsManager *)self sendRemoveSourceInternal:message[1].context];
          }
        }
      }

      v39 = self->_numSourceAddsReceived + 1;
      self->_numSourceAddsReceived = v39;
      if ((self->_mgrflags & 0x10) != 0 && !(v39 % 0x64))
      {

        [(NWStatisticsManager *)self reportInternalCounts];
      }
    }
  }

  else
  {
    if ((type - 10002) < 3)
    {
      goto LABEL_5;
    }

    if (type != 10005)
    {
      if (type != 10006)
      {
        return;
      }

LABEL_5:
      if (length < 0x18)
      {
        return;
      }

      v8 = message[1].context;
      _internalSources2 = [(NWStatisticsManager *)self _internalSources];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
      v40 = [_internalSources2 objectForKey:v10];

      v12 = message->type;
      if (v12 == 10002)
      {
        v13 = v40;
        if (v40)
        {
          removing = [(NWStatisticsManager *)self removeSourceInternal:v8 isFromClient:0];
LABEL_9:
          v13 = v40;
        }
      }

      else
      {
        v13 = v40;
        if (v40)
        {
          removing = [v40 removing];
          v13 = v40;
          if ((removing & 1) == 0)
          {
            removing = [v40 handleMessage:message length:length];
            v13 = v40;
            if (removing)
            {
              if ((self->_mgrflags & 8) != 0 && (message->flags & 4) != 0)
              {
                ++self->_numUpdatesSkipped;
                goto LABEL_71;
              }

              ++self->_numUpdatesDispatched;
              removing = [(NWStatisticsManager *)self dispatchDidReceiveType:message->type source:v40];
              goto LABEL_9;
            }
          }
        }

        else
        {
          if (v12 == 10006)
          {
            v32 = 9;
          }

          else
          {
            if (v12 != 10003)
            {
              goto LABEL_71;
            }

            v32 = 2;
          }

          context_low = LODWORD(message[v32].context);
          if ((context_low - 11) >= 0xFFFFFFF6 && ((self->_providerFilters[context_low] & 0x100000) != 0 || (self->_mgrflags & 0x20) != 0))
          {
            v35 = [NWStatisticsSource createSourceForProvider:"createSourceForProvider:srcRef:manager:" srcRef:? manager:?];
            if (v35)
            {
              _internalSources3 = [(NWStatisticsManager *)self _internalSources];
              v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
              [_internalSources3 setObject:v35 forKey:v37];

              ++self->_numSourcesInserted;
              v38 = [v35 handleMessage:message length:length];
              [(NWStatisticsManager *)self dispatchDidAddSource:v35];
              if (v38)
              {
                if ((self->_mgrflags & 8) != 0 && (message->flags & 4) != 0)
                {
                  ++self->_numUpdatesLazySkipped;
                }

                else
                {
                  ++self->_numUpdatesLazyDispatched;
                  [(NWStatisticsManager *)self dispatchDidReceiveType:message->type source:v35];
                }
              }
            }

            goto LABEL_9;
          }
        }
      }

LABEL_71:

      MEMORY[0x2821F96F8](removing, v13);
      return;
    }

    if (length < 0x1C)
    {
      v30 = NStatGetLog(self);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        selfCopy3 = self;
        v43 = 2048;
        *v44 = length;
        _os_log_impl(&dword_25BA3A000, v30, OS_LOG_TYPE_ERROR, "Manager %p: Received message too short SYSINFO_COUNTS length %zd could not read nstat_sysinfo_len", buf, 0x16u);
      }

      if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
      {
        NStatMgrTraceF(self, "%s Manager %p: Received message too short SYSINFO_COUNTS length %zd could not read nstat_sysinfo_len");
      }
    }

    else
    {
      p_type = &message[1].type;
      if (message[1].type + 24 <= length)
      {
        v33 = &message[1].type;

        [(NWStatisticsManager *)self handleSystemInformationCounts:v33];
      }

      else
      {
        v19 = NStatGetLog(self);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *p_type + 24;
          *buf = 134218496;
          selfCopy3 = self;
          v43 = 2048;
          *v44 = length;
          *&v44[8] = 2048;
          *&v44[10] = v20;
          _os_log_impl(&dword_25BA3A000, v19, OS_LOG_TYPE_ERROR, "Manager %p: Received message too short SYSINFO_COUNTS length %zd < %zd", buf, 0x20u);
        }

        if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
        {
          NStatMgrTraceF(self, "%s Manager %p: Received message too short SYSINFO_COUNTS length %zd < %zd");
        }
      }
    }
  }
}

- (BOOL)handleCompletion:(unint64_t)completion message:(nstat_msg_hdr *)message length:(unsigned int)length
{
  v5 = *&length;
  v32 = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v10 = [(NSMutableDictionary *)self->_currentQueries objectForKey:v9];
  mgrflags = [(NWStatisticsManager *)self mgrflags];
  if ((mgrflags & 0x10) != 0)
  {
    v12 = NStatGetLog(mgrflags);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = MEMORY[0x25F875560](v10);
      *buf = 134218496;
      selfCopy3 = self;
      v28 = 2048;
      completionCopy2 = completion;
      v30 = 2048;
      v31 = v13;
      _os_log_impl(&dword_25BA3A000, v12, OS_LOG_TYPE_DEBUG, "Manager %p: Called with reference %lld find completion %p", buf, 0x20u);
    }
  }

  mgrflags2 = [(NWStatisticsManager *)self mgrflags];
  if ((mgrflags2 & 0x80) != 0)
  {
    v15 = MEMORY[0x25F875560](v10);
    NStatMgrTraceF(self, "%s Manager %p: Called with reference %lld find completion %p", "[NWStatisticsManager handleCompletion:message:length:]", self, completion, v15);
  }

  if (v10)
  {
    v16 = (v10)[2](v10, message, v5);
    [(NSMutableDictionary *)self->_currentQueries removeObjectForKey:v9];
    mgrflags3 = [(NWStatisticsManager *)self mgrflags];
    if ((mgrflags3 & 0x10) != 0)
    {
      v18 = NStatGetLog(mgrflags3);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [(NSMutableDictionary *)self->_currentQueries description];
        uTF8String = [v19 UTF8String];
        *buf = 134218242;
        selfCopy3 = self;
        v28 = 2080;
        completionCopy2 = uTF8String;
        _os_log_impl(&dword_25BA3A000, v18, OS_LOG_TYPE_DEBUG, "Manager %p: after remove currentQueries %s", buf, 0x16u);
      }
    }

    if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
    {
      v21 = [(NSMutableDictionary *)self->_currentQueries description];
      NStatMgrTraceF(self, "%s Manager %p: after remove currentQueries %s", "-[NWStatisticsManager handleCompletion:message:length:]", self, [v21 UTF8String]);
LABEL_19:
    }
  }

  else
  {
    v22 = NStatGetLog(mgrflags2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [(NSMutableDictionary *)self->_currentQueries description];
      uTF8String2 = [v23 UTF8String];
      *buf = 134218498;
      selfCopy3 = self;
      v28 = 2048;
      completionCopy2 = completion;
      v30 = 2080;
      v31 = uTF8String2;
      _os_log_impl(&dword_25BA3A000, v22, OS_LOG_TYPE_ERROR, "Manager %p: can't find completion for key %lld, queries are %s", buf, 0x20u);
    }

    if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
    {
      v21 = [(NSMutableDictionary *)self->_currentQueries description];
      NStatMgrTraceF(self, "%s Manager %p: can't find completion for key %lld, queries are %s", "-[NWStatisticsManager handleCompletion:message:length:]", self, completion, [v21 UTF8String]);
      v16 = 0;
      goto LABEL_19;
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)handleCompletionMessage:(nstat_msg_hdr *)message length:(unsigned int)length
{
  v4 = *&length;
  v25 = *MEMORY[0x277D85DE8];
  internalQueue = [(NWStatisticsManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (!message->context)
  {
    return 0;
  }

  mgrflags = [(NWStatisticsManager *)self mgrflags];
  if ((mgrflags & 0x10) != 0)
  {
    v9 = NStatGetLog(mgrflags);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      context = message->context;
      *buf = 134218240;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = context;
      _os_log_impl(&dword_25BA3A000, v9, OS_LOG_TYPE_DEBUG, "Manager %p: completion message with context %lld", buf, 0x16u);
    }
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    NStatMgrTraceF(self, "%s Manager %p: completion message with context %lld", "[NWStatisticsManager handleCompletionMessage:length:]", self, message->context);
  }

  if (self->_currentQueryAllReference != message->context)
  {
    return [(NWStatisticsManager *)self handleCompletion:message->context message:message length:v4];
  }

  if ((message->flags & 2) == 0 || message->type || self->_continuationCount > 0x27)
  {
    self->_continuationCount = 0;
    self->_currentQueryAllReference = 0;
    if ([(NSMutableDictionary *)self->_queuedQueryAlls count])
    {
      mgrflags2 = [(NWStatisticsManager *)self mgrflags];
      if ((mgrflags2 & 0x10) != 0)
      {
        v16 = NStatGetLog(mgrflags2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = [(NSMutableDictionary *)self->_queuedQueryAlls description];
          uTF8String = [v17 UTF8String];
          *buf = 134218242;
          *&buf[4] = self;
          *&buf[12] = 2080;
          *&buf[14] = uTF8String;
          _os_log_impl(&dword_25BA3A000, v16, OS_LOG_TYPE_DEBUG, "Manager %p: found queued queries %s", buf, 0x16u);
        }
      }

      if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
      {
        v19 = [(NSMutableDictionary *)self->_queuedQueryAlls description];
        NStatMgrTraceF(self, "%s Manager %p: found queued queries %s", "-[NWStatisticsManager handleCompletionMessage:length:]", self, [v19 UTF8String]);
      }

      [(NWStatisticsManager *)self startQueuedQuery];
    }

    return [(NWStatisticsManager *)self handleCompletion:message->context message:message length:v4];
  }

  *&buf[8] = 0;
  *&buf[8] = [(NWStatisticsManager *)self commandFromReference:?];
  *buf = message->context;
  *&buf[16] = -1;
  *&buf[14] = 2;
  ++self->_continuationCount;
  mgrflags3 = [(NWStatisticsManager *)self mgrflags];
  if ((mgrflags3 & 0x10) != 0)
  {
    v12 = NStatGetLog(mgrflags3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = message->context;
      *v20 = 134218240;
      selfCopy = self;
      v22 = 2048;
      v23 = v13;
      _os_log_impl(&dword_25BA3A000, v12, OS_LOG_TYPE_DEBUG, "Manager %p: sent continuation for completion message with context %lld", v20, 0x16u);
    }
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    NStatMgrTraceF(self, "%s Manager %p: sent continuation for completion message with context %lld", "[NWStatisticsManager handleCompletionMessage:length:]", self, message->context);
  }

  return [(NWStatisticsManager *)self sendMessage:buf length:24];
}

- (BOOL)addSource:(id)source request:(nstat_msg_add_src *)request length:(unint64_t)length
{
  sourceCopy = source;
  v9 = dispatch_semaphore_create(0);
  if (v9)
  {
    v10 = v9;
    request->var0.context = 0;
    internalQueue = [(NWStatisticsManager *)self internalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__NWStatisticsManager_addSource_request_length___block_invoke;
    block[3] = &unk_27996DBE8;
    block[4] = self;
    v12 = sourceCopy;
    v18 = v12;
    v13 = v10;
    v19 = v13;
    requestCopy = request;
    lengthCopy = length;
    dispatch_sync(internalQueue, block);

    if (request->var0.context)
    {
      v14 = dispatch_time(0, 10000000000);
      dispatch_semaphore_wait(v13, v14);
    }

    v15 = [v12 reference] != 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __48__NWStatisticsManager_addSource_request_length___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) readSource];

  if (v2)
  {
    v3 = [*(a1 + 32) _nextReferenceForTarget:0 command:1001];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__NWStatisticsManager_addSource_request_length___block_invoke_2;
    v12[3] = &unk_27996DBC0;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v13 = v4;
    v14 = v5;
    v15 = *(a1 + 48);
    v6 = MEMORY[0x25F875560](v12);
    v7 = MEMORY[0x25F875560]();
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3];
    v9 = *(*(a1 + 32) + 248);
    v10 = MEMORY[0x25F875560](v7);
    [v9 setObject:v10 forKey:v8];

    v11 = *(a1 + 56);
    *(v11 + 8) = 1001;
    *v11 = v3;
    [*(a1 + 32) sendMessage:? length:?];
  }
}

uint64_t __48__NWStatisticsManager_addSource_request_length___block_invoke_2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 0x20 && *(a2 + 8) == 10001)
  {
    [*(a1 + 32) setReference:*(a2 + 16)];
    v4 = [*(a1 + 40) _internalSources];
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "reference")}];
    [v4 setObject:v5 forKey:v6];
  }

  dispatch_semaphore_signal(*(a1 + 48));
  return 1;
}

- (void)sendRemoveSourceInternal:(unint64_t)internal
{
  v3[0] = 0;
  v3[1] = 1003;
  v3[2] = internal;
  [(NWStatisticsManager *)self sendMessage:v3 length:24];
}

- (void)removeSourceInternal:(unint64_t)internal isFromClient:(BOOL)client
{
  clientCopy = client;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:internal];
  _internalSources = [(NWStatisticsManager *)self _internalSources];
  v8 = [_internalSources objectForKey:v6];

  if (!v8)
  {
    goto LABEL_13;
  }

  if (clientCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 40;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 56;
LABEL_7:
      v10 = *(&self->super.isa + v9);
      -[NWStatisticsManager sendRemoveSourceInternal:](self, "sendRemoveSourceInternal:", [v8 reference]);
      if ((v10 & 0x100000) != 0)
      {
        [v8 setRemoving:1];
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    -[NWStatisticsManager sendRemoveSourceInternal:](self, "sendRemoveSourceInternal:", [v8 reference]);
  }

LABEL_10:
  _internalSources2 = [(NWStatisticsManager *)self _internalSources];
  [_internalSources2 removeObjectForKey:v6];

  ++self->_numSourcesRemoved;
  delegate = [(NWStatisticsManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    clientQueue = [(NWStatisticsManager *)self clientQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__NWStatisticsManager_removeSourceInternal_isFromClient___block_invoke;
    v14[3] = &unk_27996DB70;
    v14[4] = self;
    v15 = v8;
    dispatch_async(clientQueue, v14);
  }

LABEL_13:
}

void __57__NWStatisticsManager_removeSourceInternal_isFromClient___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = objc_autoreleasePoolPush();
    [v3 statisticsManager:*(a1 + 32) didRemoveSource:*(a1 + 40)];
    objc_autoreleasePoolPop(v2);
  }
}

- (void)subscribeToSystemInformation
{
  internalQueue = [(NWStatisticsManager *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NWStatisticsManager_subscribeToSystemInformation__block_invoke;
  block[3] = &unk_27996DB98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void *__51__NWStatisticsManager_subscribeToSystemInformation__block_invoke(void *result)
{
  v1 = *(result + 4);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    v2 = xmmword_25BA778E0;
    return [*(result + 4) sendMessage:&v2 length:16];
  }

  return result;
}

- (BOOL)addAllForProvider:(int)provider filter:(unint64_t)filter events:(unint64_t)events pid:(int)pid uuid:(unsigned __int8 *)(a7
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if ((provider - 2) >= 4 && provider != 8)
  {
    __assert_rtn("[NWStatisticsManager addAllForProvider:filter:events:pid:uuid:]", "NWStatisticsManager.m", 869, "(provider == NSTAT_PROVIDER_TCP_KERNEL) || (provider == NSTAT_PROVIDER_TCP_USERLAND) || (provider == NSTAT_PROVIDER_UDP_KERNEL) || (provider == NSTAT_PROVIDER_UDP_USERLAND) || (provider == NSTAT_PROVIDER_QUIC_USERLAND)");
  }

  internalQueue = [(NWStatisticsManager *)self internalQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__NWStatisticsManager_addAllForProvider_filter_events_pid_uuid___block_invoke;
  v16[3] = &unk_27996DC10;
  v16[6] = filter;
  v16[7] = events;
  providerCopy = provider;
  pidCopy = pid;
  v16[8] = a7;
  v16[4] = self;
  v16[5] = &v19;
  dispatch_sync(internalQueue, v16);

  v14 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return v14;
}

void __64__NWStatisticsManager_addAllForProvider_filter_events_pid_uuid___block_invoke(uint64_t a1)
{
  v20[7] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  *v20 = 0u;
  LODWORD(v20[1]) = 1002;
  *&v20[2] = v2;
  memset(&v20[4], 0, 24);
  v3 = *(a1 + 72);
  v20[4] = v3;
  v4 = *(a1 + 64);
  if (v4)
  {
    *&v20[5] = *v4;
  }

  *(*(a1 + 32) + 8 * v3 + 24) = v2;
  v5 = [*(a1 + 32) sendMessage:v20 length:56];
  *(*(*(a1 + 40) + 8) + 24) = v5;
  v6 = NStatGetLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v10 = "success";
    }

    else
    {
      v10 = "failure";
    }

    *buf = 134218754;
    v13 = v9;
    v14 = 1024;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2080;
    v19 = v10;
    _os_log_impl(&dword_25BA3A000, v6, OS_LOG_TYPE_INFO, "Manager %p: add all for provider %d filter 0x%llx returns %s", buf, 0x26u);
  }

  if (([*(a1 + 32) mgrflags] & 0x80) != 0)
  {
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v11 = "success";
    }

    else
    {
      v11 = "failure";
    }

    NStatMgrTraceF(*(a1 + 32), "%s Manager %p: add all for provider %d filter 0x%llx returns %s", "[NWStatisticsManager addAllForProvider:filter:events:pid:uuid:]_block_invoke", *(a1 + 32), *(a1 + 72), *(a1 + 48), v11);
  }
}

- (BOOL)addAllTCP:(unint64_t)p events:(unint64_t)events pid:(int)pid uuid:(unsigned __int8 *)(a6
{
  if ((p & 0x30000000) != 0)
  {
    v8 = p & 0x30000000;
  }

  else
  {
    v8 = 805306368;
  }

  v9 = -805306369;
  if (!pid)
  {
    v9 = -855638017;
  }

  v10 = v9 & p;
  if ((p & 0x3000000) != 0)
  {
    pidCopy = pid;
  }

  else
  {
    pidCopy = 0;
  }

  if (a6)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 & 0xFFFFFFFFC3FFFFFFLL;
  }

  if ((p & 0xC000000) != 0)
  {
    v13 = a6;
  }

  else
  {
    v13 = 0;
  }

  v14 = (v8 & 0x10000000) == 0 || [(NWStatisticsManager *)self addAllForProvider:2 filter:v12 events:events pid:pidCopy uuid:v13];
  if (v8 >> 29 && v14)
  {

    LOBYTE(v14) = [(NWStatisticsManager *)self addAllForProvider:3 filter:v12 events:events pid:pidCopy uuid:v13];
  }

  return v14;
}

- (BOOL)addAllUDP:(unint64_t)p events:(unint64_t)events pid:(int)pid uuid:(unsigned __int8 *)(a6
{
  if ((p & 0x70000000) != 0)
  {
    v8 = p & 0x70000000;
  }

  else
  {
    v8 = 1879048192;
  }

  v9 = -1879048193;
  if (!pid)
  {
    v9 = -1929379841;
  }

  v10 = v9 & p;
  if ((p & 0x3000000) != 0)
  {
    pidCopy = pid;
  }

  else
  {
    pidCopy = 0;
  }

  if (a6)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 & 0xFFFFFFFF83FFFFFFLL;
  }

  if ((p & 0xC000000) != 0)
  {
    v13 = a6;
  }

  else
  {
    v13 = 0;
  }

  if ((v8 & 0x10000000) != 0)
  {
    v14 = [(NWStatisticsManager *)self addAllForProvider:4 filter:v12 events:events pid:pidCopy uuid:v13];
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v14 = 1;
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_21;
    }
  }

  if (v14)
  {
    v14 = [(NWStatisticsManager *)self addAllForProvider:5 filter:v12 events:events pid:pidCopy uuid:v13];
  }

LABEL_21:
  if (v8 >> 30 && v14)
  {

    LOBYTE(v14) = [(NWStatisticsManager *)self addAllForProvider:8 filter:v12 events:events pid:pidCopy uuid:v13];
  }

  return v14;
}

- (BOOL)addAllRoute:(unint64_t)route
{
  selfCopy = self;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  internalQueue = [(NWStatisticsManager *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NWStatisticsManager_addAllRoute___block_invoke;
  block[3] = &unk_27996DC38;
  block[5] = &v8;
  block[6] = route;
  block[4] = selfCopy;
  dispatch_sync(internalQueue, block);

  LOBYTE(selfCopy) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return selfCopy;
}

void __35__NWStatisticsManager_addAllRoute___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v14 = 0;
  DWORD2(v11) = 1002;
  LODWORD(v13) = 1;
  *&v12 = *(a1 + 48);
  v2 = [*(a1 + 32) sendMessage:&v11 length:56];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  v3 = NStatGetLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v5 = "success";
    }

    else
    {
      v5 = "failure";
    }

    *buf = 134218242;
    v8 = v4;
    v9 = 2080;
    v10 = v5;
    _os_log_impl(&dword_25BA3A000, v3, OS_LOG_TYPE_DEBUG, "Manager %p: add all routes returns %s", buf, 0x16u);
  }

  if (([*(a1 + 32) mgrflags] & 0x80) != 0)
  {
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v6 = "success";
    }

    else
    {
      v6 = "failure";
    }

    NStatMgrTraceF(*(a1 + 32), "%s Manager %p: add all routes returns %s", "[NWStatisticsManager addAllRoute:]_block_invoke", *(a1 + 32), v6);
  }
}

- (void)removeSource:(id)source
{
  reference = [source reference];
  internalQueue = [(NWStatisticsManager *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__NWStatisticsManager_removeSource___block_invoke;
  v6[3] = &unk_27996DC60;
  v6[4] = self;
  v6[5] = reference;
  dispatch_async(internalQueue, v6);
}

- (unint64_t)_nextReferenceForTarget:(unint64_t)target command:(unsigned int)command
{
  v4 = self->_querySequenceNumber + 1;
  self->_querySequenceNumber = v4;
  v5 = 4 * v4;
  v6 = v5 | 2;
  v7 = v5 | 1;
  v8 = v5 | 3;
  if (command != 1007)
  {
    v8 = v5;
  }

  if (command != 1005)
  {
    v7 = v8;
  }

  if (command != 1004)
  {
    v6 = v7;
  }

  if (target == -1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (unsigned)commandFromReference:(unint64_t)reference
{
  if ((reference & 3) == 2)
  {
    v3 = 1004;
  }

  else
  {
    v3 = 1007;
  }

  if ((reference & 3) == 1)
  {
    return 1005;
  }

  else
  {
    return v3;
  }
}

- (BOOL)performQuery:(unsigned int)query sourceRef:(unint64_t)ref completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  mgrflags = [(NWStatisticsManager *)self mgrflags];
  if ((mgrflags & 0x10) != 0)
  {
    v10 = NStatGetLog(mgrflags);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = "NSTAT_MSG_TYPE_GET_SRC_DESC";
      v12 = "UNKNOWN -???";
      if (query == 1007)
      {
        v12 = "NSTAT_MSG_TYPE_GET_UPDATE";
      }

      if (query != 1005)
      {
        v11 = v12;
      }

      if (query == 1004)
      {
        v13 = "NSTAT_MSG_TYPE_QUERY_SRC";
      }

      else
      {
        v13 = v11;
      }

      v14 = MEMORY[0x25F875560](completionCopy);
      *buf = 134218754;
      selfCopy = self;
      v37 = 2080;
      v38 = v13;
      v39 = 2048;
      refCopy = ref;
      v41 = 2048;
      v42 = v14;
      _os_log_impl(&dword_25BA3A000, v10, OS_LOG_TYPE_DEBUG, "Manager %p: Entry command %s  source ref %llu completion %p", buf, 0x2Au);
    }
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    v15 = "NSTAT_MSG_TYPE_GET_SRC_DESC";
    v16 = "UNKNOWN -???";
    if (query == 1007)
    {
      v16 = "NSTAT_MSG_TYPE_GET_UPDATE";
    }

    if (query != 1005)
    {
      v15 = v16;
    }

    if (query == 1004)
    {
      v17 = "NSTAT_MSG_TYPE_QUERY_SRC";
    }

    else
    {
      v17 = v15;
    }

    v18 = MEMORY[0x25F875560](completionCopy);
    NStatMgrTraceF(self, "%s Manager %p: Entry command %s  source ref %llu completion %p", "[NWStatisticsManager performQuery:sourceRef:completion:]", self, v17, ref, v18);
  }

  internalQueue = [(NWStatisticsManager *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  if (ref == -1 || completionCopy)
  {
    internalQueue2 = [(NWStatisticsManager *)self internalQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57__NWStatisticsManager_performQuery_sourceRef_completion___block_invoke_2;
    v24[3] = &unk_27996DD00;
    v24[4] = self;
    refCopy2 = ref;
    queryCopy = query;
    v25 = completionCopy;
    v26 = &v31;
    dispatch_sync(internalQueue2, v24);
  }

  else
  {
    internalQueue3 = [(NWStatisticsManager *)self internalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__NWStatisticsManager_performQuery_sourceRef_completion___block_invoke;
    block[3] = &unk_27996DC88;
    queryCopy2 = query;
    block[4] = self;
    block[5] = ref;
    dispatch_async(internalQueue3, block);

    *(v32 + 24) = 1;
  }

  v22 = *(v32 + 24);
  _Block_object_dispose(&v31, 8);

  return v22 & 1;
}

void __57__NWStatisticsManager_performQuery_sourceRef_completion___block_invoke_2(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _nextReferenceForTarget:*(a1 + 56) command:*(a1 + 64)];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v2];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __57__NWStatisticsManager_performQuery_sourceRef_completion___block_invoke_3;
  v50[3] = &unk_27996DCD8;
  v4 = *(a1 + 40);
  v50[4] = *(a1 + 32);
  v52 = v2;
  v51 = v4;
  v5 = MEMORY[0x25F875560](v50);
  v6 = MEMORY[0x25F875560]();
  v7 = [*(a1 + 32) mgrflags];
  if ((v7 & 0x10) != 0)
  {
    v8 = NStatGetLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v10 = MEMORY[0x25F875560](v5);
      v11 = *(a1 + 56);
      *buf = 134218752;
      v54 = v9;
      v55 = 2048;
      *v56 = v10;
      *&v56[8] = 2048;
      *&v56[10] = v2;
      *&v56[18] = 2048;
      *&v56[20] = v11;
      _os_log_impl(&dword_25BA3A000, v8, OS_LOG_TYPE_DEBUG, "Manager %p: Outer completion block %p for ref %lld  src %llu", buf, 0x2Au);
    }
  }

  if (([*(a1 + 32) mgrflags] & 0x80) != 0)
  {
    v12 = *(a1 + 32);
    v13 = MEMORY[0x25F875560](v5);
    NStatMgrTraceF(v12, "%s Manager %p: Outer completion block %p for ref %lld  src %llu", "[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke", v12, v13, v2, *(a1 + 56));
  }

  if (*(a1 + 56) != -1)
  {
    goto LABEL_8;
  }

  v30 = [*(a1 + 32) currentQueryAllReference];
  v31 = *(a1 + 32);
  if (!v30)
  {
    [v31 setCurrentQueryAllReference:v2];
    v45 = *(*(a1 + 32) + 248);
    v46 = MEMORY[0x25F875560](v6);
    [v45 setObject:v46 forKey:v3];

LABEL_8:
    v14 = [*(a1 + 32) mgrflags];
    if ((v14 & 0x10) != 0)
    {
      v15 = NStatGetLog(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1 + 32);
        v17 = [v16 currentQueryAllReference];
        v18 = *(a1 + 32);
        v20 = *(v18 + 248);
        v19 = *(v18 + 256);
        *buf = 134218754;
        v54 = v16;
        v55 = 2048;
        *v56 = v17;
        *&v56[8] = 2112;
        *&v56[10] = v20;
        *&v56[18] = 2112;
        *&v56[20] = v19;
        _os_log_impl(&dword_25BA3A000, v15, OS_LOG_TYPE_DEBUG, "Manager %p: currentQueryAllReference %llu current %@, pending %@", buf, 0x2Au);
      }
    }

    if (([*(a1 + 32) mgrflags] & 0x80) != 0)
    {
      NStatMgrTraceF(*(a1 + 32), "%s Manager %p: currentQueryAllReference %llu current %@, pending %@", "-[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke", *(a1 + 32), [*(a1 + 32) currentQueryAllReference], *(*(a1 + 32) + 248), *(*(a1 + 32) + 256));
    }

    v21 = [*(a1 + 32) mgrflags];
    if ((v21 & 0x10) != 0)
    {
      v22 = NStatGetLog(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(a1 + 32);
        v24 = *(a1 + 64);
        v25 = *(a1 + 56);
        *buf = 134219008;
        v54 = v23;
        v55 = 1024;
        *v56 = v24;
        *&v56[4] = 2048;
        *&v56[6] = v2;
        *&v56[14] = 2048;
        *&v56[16] = v25;
        *&v56[24] = 1024;
        *&v56[26] = 0;
        _os_log_impl(&dword_25BA3A000, v22, OS_LOG_TYPE_DEBUG, "Manager %p: about to prepare message %x context %lld srcef %llu, prev pended %d", buf, 0x2Cu);
      }
    }

    if (([*(a1 + 32) mgrflags] & 0x80) != 0)
    {
      NStatMgrTraceF(*(a1 + 32), "%s Manager %p: about to prepare message %x context %lld srcef %llu, prev pended %d", "[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke", *(a1 + 32), *(a1 + 64), v2, *(a1 + 56), 0);
    }

    v26 = *(a1 + 64);
    v47 = v2;
    v48 = v26;
    v49 = *(a1 + 56);
    if (v49 == -1)
    {
      HIWORD(v48) = 2;
      v27 = [*(a1 + 32) mgrflags];
      if ((v27 & 0x10) != 0)
      {
        v28 = NStatGetLog(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(a1 + 32);
          *buf = 134218752;
          v54 = v29;
          v55 = 1024;
          *v56 = v26;
          *&v56[4] = 2048;
          *&v56[6] = v2;
          *&v56[14] = 2048;
          *&v56[16] = -1;
          _os_log_impl(&dword_25BA3A000, v28, OS_LOG_TYPE_DEBUG, "Manager %p: about to send message %x context %lld srcef %llu", buf, 0x26u);
        }
      }

      if (([*(a1 + 32) mgrflags] & 0x80) != 0)
      {
        NStatMgrTraceF(*(a1 + 32), "%s Manager %p: about to send message %x context %lld srcef %llu", "[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke", *(a1 + 32), v26, v2, -1);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) sendMessage:&v47 length:24];
    goto LABEL_36;
  }

  v32 = v31[32];
  v33 = MEMORY[0x25F875560](v6);
  [v32 setObject:v33 forKey:v3];

  v34 = [*(a1 + 32) mgrflags];
  if ((v34 & 0x10) != 0)
  {
    v35 = NStatGetLog(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = *(a1 + 32);
      v37 = *(a1 + 64);
      v38 = *(a1 + 56);
      v39 = [v36[32] description];
      v40 = [v39 UTF8String];
      *buf = 134219010;
      v54 = v36;
      v55 = 1024;
      *v56 = v37;
      *&v56[4] = 2048;
      *&v56[6] = v2;
      *&v56[14] = 2048;
      *&v56[16] = v38;
      *&v56[24] = 2080;
      *&v56[26] = v40;
      _os_log_impl(&dword_25BA3A000, v35, OS_LOG_TYPE_DEBUG, "Manager %p: set pended for message %x context %lld srcef %llu dictionary %s", buf, 0x30u);
    }
  }

  if (([*(a1 + 32) mgrflags] & 0x80) != 0)
  {
    v41 = *(a1 + 32);
    v42 = *(a1 + 56);
    v43 = *(a1 + 64);
    v44 = [v41[32] description];
    NStatMgrTraceF(v41, "%s Manager %p: set pended for message %x context %lld srcef %llu dictionary %s", "-[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke", v41, v43, v2, v42, [v44 UTF8String]);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_36:
}

uint64_t __57__NWStatisticsManager_performQuery_sourceRef_completion___block_invoke_3(uint64_t a1, _DWORD *a2, int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) mgrflags];
  if ((v6 & 0x10) != 0)
  {
    v7 = NStatGetLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 32);
      v10 = MEMORY[0x25F875560](*(a1 + 40));
      *buf = 134219008;
      v28 = v9;
      v29 = 2048;
      v30 = v8;
      v31 = 2048;
      v32 = a2;
      v33 = 1024;
      v34 = a3;
      v35 = 2048;
      v36 = v10;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_DEBUG, "Manager %p: Outer completion block called, for ref %lld, msg %p len %d completion %p", buf, 0x30u);
    }
  }

  if (([*(a1 + 32) mgrflags] & 0x80) != 0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = MEMORY[0x25F875560](*(a1 + 40));
    NStatMgrTraceF(v12, "%s Manager %p: Outer completion block called, for ref %lld, msg %p len %d completion %p", "[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke", v12, v11, a2, a3, v13);
  }

  v14 = [*(a1 + 32) clientQueue];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_23;
  }

  if (a2 && a2[2] > 1u)
  {
    v21 = NStatGetLog(v14);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      v23 = a2[2];
      *buf = 134218240;
      v28 = v22;
      v29 = 1024;
      LODWORD(v30) = v23;
      _os_log_impl(&dword_25BA3A000, v21, OS_LOG_TYPE_ERROR, "Manager %p: Outer completion block called, type mismatch %d", buf, 0x12u);
    }

    if (([*(a1 + 32) mgrflags] & 0x80) != 0)
    {
      NStatMgrTraceF(*(a1 + 32), "%s Manager %p: Outer completion block called, type mismatch %d", "[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke", *(a1 + 32), a2[2]);
    }

LABEL_23:
    v20 = 0;
    goto LABEL_24;
  }

  v16 = [*(a1 + 32) mgrflags];
  if ((v16 & 0x10) != 0)
  {
    v17 = NStatGetLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 32);
      *buf = 134218240;
      v28 = v18;
      v29 = 2048;
      v30 = a2;
      _os_log_impl(&dword_25BA3A000, v17, OS_LOG_TYPE_DEBUG, "Manager %p: Outer completion block ready to dispatch async to inner block, msg %p", buf, 0x16u);
    }
  }

  if (([*(a1 + 32) mgrflags] & 0x80) != 0)
  {
    NStatMgrTraceF(*(a1 + 32), "%s Manager %p: Outer completion block ready to dispatch async to inner block, msg %p", "[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke", *(a1 + 32), a2);
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__NWStatisticsManager_performQuery_sourceRef_completion___block_invoke_2_47;
    block[3] = &unk_27996DCB0;
    block[4] = *(a1 + 32);
    v26 = v19;
    dispatch_async(v15, block);
  }

  v20 = 1;
LABEL_24:

  return v20;
}

uint64_t __57__NWStatisticsManager_performQuery_sourceRef_completion___block_invoke_2_47(uint64_t a1)
{
  result = [*(a1 + 32) isInvalidated];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)queryAllCounts:(id)counts
{
  v13 = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  mgrflags = [(NWStatisticsManager *)self mgrflags];
  if ((mgrflags & 0x10) != 0)
  {
    v6 = NStatGetLog(mgrflags);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = MEMORY[0x25F875560](countsCopy);
      *buf = 134218240;
      selfCopy = self;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&dword_25BA3A000, v6, OS_LOG_TYPE_DEBUG, "Manager %p: Query all counts, completion %p", buf, 0x16u);
    }
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    v8 = MEMORY[0x25F875560](countsCopy);
    NStatMgrTraceF(self, "%s Manager %p: Query all counts, completion %p", "[NWStatisticsManager queryAllCounts:]", self, v8);
  }

  if ([(NWStatisticsManager *)self isInvalidated])
  {
    if (countsCopy)
    {
      countsCopy[2](countsCopy);
    }
  }

  else
  {
    [(NWStatisticsManager *)self performQuery:1004 sourceRef:-1 completion:countsCopy];
  }
}

- (void)queryAllDescriptions:(id)descriptions
{
  v13 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  mgrflags = [(NWStatisticsManager *)self mgrflags];
  if ((mgrflags & 0x10) != 0)
  {
    v6 = NStatGetLog(mgrflags);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = MEMORY[0x25F875560](descriptionsCopy);
      *buf = 134218240;
      selfCopy = self;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&dword_25BA3A000, v6, OS_LOG_TYPE_DEBUG, "Manager %p: Query all descriptions, completion %p", buf, 0x16u);
    }
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    v8 = MEMORY[0x25F875560](descriptionsCopy);
    NStatMgrTraceF(self, "%s Manager %p: Query all descriptions, completion %p", "[NWStatisticsManager queryAllDescriptions:]", self, v8);
  }

  if ([(NWStatisticsManager *)self isInvalidated])
  {
    if (descriptionsCopy)
    {
      descriptionsCopy[2](descriptionsCopy);
    }
  }

  else
  {
    [(NWStatisticsManager *)self performQuery:1005 sourceRef:-1 completion:descriptionsCopy];
  }
}

- (BOOL)queryAll:(id)all
{
  v15 = *MEMORY[0x277D85DE8];
  allCopy = all;
  mgrflags = [(NWStatisticsManager *)self mgrflags];
  if ((mgrflags & 0x10) != 0)
  {
    v6 = NStatGetLog(mgrflags);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = MEMORY[0x25F875560](allCopy);
      *buf = 134218240;
      selfCopy = self;
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&dword_25BA3A000, v6, OS_LOG_TYPE_DEBUG, "Manager %p: Query all update, completion %p", buf, 0x16u);
    }
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    v8 = MEMORY[0x25F875560](allCopy);
    NStatMgrTraceF(self, "%s Manager %p: Query all update, completion %p", "[NWStatisticsManager queryAll:]", self, v8);
  }

  if ([(NWStatisticsManager *)self isInvalidated])
  {
    if (allCopy)
    {
      allCopy[2](allCopy);
    }

    v9 = 0;
  }

  else
  {
    v9 = [(NWStatisticsManager *)self performQuery:1007 sourceRef:-1 completion:allCopy];
  }

  return v9;
}

- (void)querySource:(id)source completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  completionCopy = completion;
  mgrflags = [(NWStatisticsManager *)self mgrflags];
  if ((mgrflags & 0x10) != 0)
  {
    v9 = NStatGetLog(mgrflags);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      reference = [sourceCopy reference];
      v11 = MEMORY[0x25F875560](completionCopy);
      *buf = 134218752;
      selfCopy = self;
      v16 = 2048;
      v17 = sourceCopy;
      v18 = 2048;
      v19 = reference;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&dword_25BA3A000, v9, OS_LOG_TYPE_DEBUG, "Manager %p: Query Source for %p, %llu  completion %p", buf, 0x2Au);
    }
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    reference2 = [sourceCopy reference];
    v13 = MEMORY[0x25F875560](completionCopy);
    NStatMgrTraceF(self, "%s Manager %p: Query Source for %p, %llu  completion %p", "[NWStatisticsManager querySource:completion:]", self, sourceCopy, reference2, v13);
  }

  if ([(NWStatisticsManager *)self isInvalidated])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    -[NWStatisticsManager performQuery:sourceRef:completion:](self, "performQuery:sourceRef:completion:", 1007, [sourceCopy reference], completionCopy);
  }
}

- (void)setQueuePriority:(int64_t)priority
{
  v3 = NStatGetLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [NWStatisticsManager setQueuePriority:];
  }
}

- (void)setMgrflags:(unsigned int)mgrflags
{
  internalQueue = [(NWStatisticsManager *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__NWStatisticsManager_setMgrflags___block_invoke;
  v6[3] = &unk_27996DD28;
  mgrflagsCopy = mgrflags;
  v6[4] = self;
  dispatch_async(internalQueue, v6);
}

uint64_t __35__NWStatisticsManager_setMgrflags___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 204))
  {
    *(v2 + 204) = defaultMgrFlags | v1;
  }

  return result;
}

- (void)setInterfaceTraceFd:(int)fd
{
  internalQueue = [(NWStatisticsManager *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__NWStatisticsManager_setInterfaceTraceFd___block_invoke;
  v6[3] = &unk_27996DD28;
  v6[4] = self;
  fdCopy = fd;
  dispatch_async(internalQueue, v6);
}

void __43__NWStatisticsManager_setInterfaceTraceFd___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(a1 + 32);
  if (!*(v2 + 112))
  {
    *(*(a1 + 32) + 112) = malloc_type_malloc(0x1000uLL, 0x72F32AE1uLL);
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 208);
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
    v2 = *(a1 + 32);
  }

  *(v2 + 208) = *(a1 + 40);
  objc_sync_exit(obj);
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  internalQueue = [(NWStatisticsManager *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__NWStatisticsManager_setDelegate___block_invoke;
  v7[3] = &unk_27996DB70;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(internalQueue, v7);
}

uint64_t __35__NWStatisticsManager_setDelegate___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 224), *(a1 + 40));
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 subscribeToSystemInformation];
  }

  return result;
}

- (NSSet)sources
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  internalQueue = [(NWStatisticsManager *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__NWStatisticsManager_sources__block_invoke;
  v6[3] = &unk_27996DD50;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __30__NWStatisticsManager_sources__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v7 = [*(a1 + 32) _internalSources];
  v3 = [v7 allValues];
  v4 = [v2 setWithArray:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)performAllCompletions:(id)completions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__NWStatisticsManager_performAllCompletions___block_invoke;
  v4[3] = &unk_27996DDA0;
  v4[4] = self;
  completionsCopy = completions;
  [completionsCopy enumerateKeysAndObjectsUsingBlock:v4];
  [completionsCopy removeAllObjects];
}

void __45__NWStatisticsManager_performAllCompletions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x25F875560](a3, a2);
  v5 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NWStatisticsManager_performAllCompletions___block_invoke_2;
  block[3] = &unk_27996DD78;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)invalidate
{
  internalQueue = [(NWStatisticsManager *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__NWStatisticsManager_invalidate__block_invoke;
  block[3] = &unk_27996DB98;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

uint64_t __33__NWStatisticsManager_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) readSource];

  if (v2)
  {
    v3 = [*(a1 + 32) readSource];
    dispatch_source_cancel(v3);

    [*(a1 + 32) setReadSource:0];
  }

  v4 = [*(a1 + 32) currentQueries];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 currentQueries];
    [v5 performAllCompletions:v6];
  }

  [*(a1 + 32) setCurrentQueries:0];
  v7 = [*(a1 + 32) queuedQueryAlls];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v8 queuedQueryAlls];
    [v8 performAllCompletions:v9];
  }

  [*(a1 + 32) setQueuedQueryAlls:0];
  while (1)
  {
    v10 = [*(a1 + 32) _internalSources];
    v11 = [v10 count];

    if (!v11)
    {
      break;
    }

    v12 = [*(a1 + 32) _internalSources];
    v13 = [v12 allKeys];

    v14 = [v13 objectAtIndexedSubscript:0];
    [*(a1 + 32) removeSourceInternal:objc_msgSend(v14 isFromClient:{"unsignedLongLongValue"), 0}];
  }

  [*(a1 + 32) set_internalSources:0];
  v15 = *(a1 + 32);
  if ((v15[52] & 0x80000000) == 0)
  {
    v16 = v15;
    objc_sync_enter(v16);
    *(*(a1 + 32) + 208) = -1;
    v17 = *(*(a1 + 32) + 112);
    if (v17)
    {
      free(v17);
      *(*(a1 + 32) + 112) = 0;
    }

    objc_sync_exit(v16);

    v15 = *(a1 + 32);
  }

  return [v15 setInvalidated:1];
}

- (void)dealloc
{
  readSource = self->_readSource;
  if (readSource)
  {
    dispatch_source_cancel(readSource);
    v4 = self->_readSource;
    self->_readSource = 0;
  }

  readBuffer = self->_readBuffer;
  if (readBuffer)
  {
    free(readBuffer);
  }

  v6.receiver = self;
  v6.super_class = NWStatisticsManager;
  [(NWStatisticsManager *)&v6 dealloc];
}

- (NWStatisticsManager)initWithQueue:(id)queue
{
  v75 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v64.receiver = self;
  v64.super_class = NWStatisticsManager;
  v6 = [(NWStatisticsManager *)&v64 init];
  v7 = v6;
  v8 = 0;
  if (queueCopy && v6)
  {
    v9 = NStatGetLog(v6);
    v10 = socket(32, 2, 2);
    if (v10 == -1)
    {
LABEL_10:
      v7->_sockfd = -1;
      v14 = NStatGetLog(v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [NWStatisticsManager initWithQueue:];
      }

LABEL_13:
      v8 = 0;
      goto LABEL_14;
    }

    v11 = v10;
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    *__str = 0u;
    v67 = 0u;
    __strlcpy_chk();
    if (ioctl(v11, 0xC0644E03uLL, __str) == -1)
    {
LABEL_9:
      v10 = close(v11);
      goto LABEL_10;
    }

    *v73 = 139296;
    *&v73[4] = *__str;
    v74 = 0;
    memset(&v73[8], 0, 20);
    v12 = connect(v11, v73, 0x20u);
    if (v12)
    {
      v13 = NStatGetLog(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NWStatisticsManager initWithQueue:];
      }

LABEL_8:

      goto LABEL_9;
    }

    relative_priority_ptr = 0x20000;
    v16 = setsockopt(v11, 0xFFFF, 4098, &relative_priority_ptr, 4u);
    if (v16 == -1)
    {
      v13 = NStatGetLog(v16);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NWStatisticsManager initWithQueue:];
      }

      goto LABEL_8;
    }

    v17 = fcntl(v11, 3, 0);
    v18 = fcntl(v11, 4, v17 | 4u);
    if (v18 == -1)
    {
      v13 = NStatGetLog(v18);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NWStatisticsManager initWithQueue:];
      }

      goto LABEL_8;
    }

    v7->_sockfd = v11;
    v19 = malloc_type_malloc(0x1000uLL, 0x52ACDC63uLL);
    v7->_readBuffer = v19;
    if (!v19)
    {
      v47 = NStatGetLog(0);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [NWStatisticsManager initWithQueue:];
      }

      close(v7->_sockfd);
      goto LABEL_13;
    }

    objc_storeStrong(&v7->_clientQueue, queue);
    snprintf(__str, 0x3BuLL, "com.apple.network.statistics.manager.%p", v7);
    relative_priority_ptr = 0;
    qos_class = dispatch_queue_get_qos_class(queueCopy, &relative_priority_ptr);
    v21 = dispatch_queue_attr_make_with_qos_class(0, qos_class, relative_priority_ptr);
    v22 = dispatch_queue_create(__str, v21);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    internalSources = v7->__internalSources;
    v7->__internalSources = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    currentQueries = v7->_currentQueries;
    v7->_currentQueries = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    queuedQueryAlls = v7->_queuedQueryAlls;
    v7->_queuedQueryAlls = v28;

    v31 = v7->_internalQueue;
    if (v31 && v7->__internalSources && v7->_currentQueries && v7->_queuedQueryAlls)
    {
      v32 = dispatch_source_create(MEMORY[0x277D85D28], v7->_sockfd, 0, v31);
      readSource = v7->_readSource;
      v7->_readSource = v32;

      if (v7->_readSource)
      {
        v7->_id = atomic_fetch_add_explicit(&mgrSeqno, 1u, memory_order_relaxed) + 1;
        v7->_interfaceTraceFd = -1;
        if (traceFilePrefix)
        {
          v35 = objc_alloc_init(MEMORY[0x277CCA968]);
          v36 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
          [v35 setLocale:v36];

          [v35 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZ"];
          v37 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
          [v35 setTimeZone:v37];

          v38 = MEMORY[0x277CCACA8];
          v39 = traceFilePrefix;
          id = v7->_id;
          date = [MEMORY[0x277CBEAA8] date];
          v42 = [v35 stringFromDate:date];
          v43 = [v38 stringWithFormat:@"%@-%d.%@.trace", v39, id, v42];

          v44 = open([v43 UTF8String], 513, 438);
          if ((v44 & 0x80000000) != 0)
          {
            v48 = NStatGetLog(v44);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              [NWStatisticsManager initWithQueue:];
            }
          }

          else
          {
            v45 = v44;
            v7->_iftracebuf = malloc_type_malloc(0x1000uLL, 0x593934DuLL);
            v7->_interfaceTraceFd = v45;
          }
        }

        v7->_mgrflags = defaultMgrFlags;
        v49 = NStatGetLog(v34);
        v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG);
        if (v50)
        {
          v51 = NStatGetLog(v50);
          *v73 = 134218240;
          *&v73[4] = v7;
          *&v73[12] = 2048;
          *&v73[14] = v51;
          _os_log_impl(&dword_25BA3A000, v49, OS_LOG_TYPE_DEBUG, "Manager %p: Log object is at %p", v73, 0x16u);
        }

        mgrflags = [(NWStatisticsManager *)v7 mgrflags];
        if ((mgrflags & 0x80) != 0)
        {
          v53 = NStatGetLog(mgrflags);
          NStatMgrTraceF(v7, "%s Manager %p: Log object is at %p", "[NWStatisticsManager initWithQueue:]", v7, v53);
        }

        sockfd = v7->_sockfd;
        v55 = v7->_readSource;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __37__NWStatisticsManager_initWithQueue___block_invoke;
        handler[3] = &__block_descriptor_36_e5_v8__0l;
        v63 = sockfd;
        dispatch_source_set_cancel_handler(v55, handler);
        v56 = v7->_readSource;
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __37__NWStatisticsManager_initWithQueue___block_invoke_2;
        v60[3] = &unk_27996DB98;
        v57 = v7;
        v61 = v57;
        dispatch_source_set_event_handler(v56, v60);
        dispatch_resume(v7->_readSource);
        v59 = NStatGetLog(v58);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *v73 = 134218240;
          *&v73[4] = v57;
          *&v73[12] = 2048;
          *&v73[14] = v57;
          _os_log_impl(&dword_25BA3A000, v59, OS_LOG_TYPE_INFO, "Manager %p: Created new NetworkStatistics manager at %p", v73, 0x16u);
        }

        if (([(NWStatisticsManager *)v57 mgrflags]& 0x80) != 0)
        {
          NStatMgrTraceF(v57, "%s Manager %p: Created new NetworkStatistics manager at %p", "[NWStatisticsManager initWithQueue:]", v57, v57);
        }

        v8 = v57;

        goto LABEL_34;
      }
    }

    else
    {
      v46 = NStatGetLog(v30);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [NWStatisticsManager initWithQueue:];
      }
    }

    close(v7->_sockfd);
    v8 = 0;
LABEL_34:
  }

LABEL_14:

  return v8;
}

- (NWStatisticsManager)init
{
  v3 = dispatch_get_global_queue(0, 0);
  v4 = [(NWStatisticsManager *)self initWithQueue:v3];

  return v4;
}

- (void)traceMemoryBuf:(uint64_t)a1 length:(uint64_t)a2 tag:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&dword_25BA3A000, log, OS_LOG_TYPE_DEBUG, "save %s capacity limit for len %ld", &v3, 0x16u);
}

- (void)handleMessage:(uint64_t)a1 length:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_25BA3A000, a2, OS_LOG_TYPE_DEBUG, "error: %d, no quoted message in return", v3, 8u);
}

@end