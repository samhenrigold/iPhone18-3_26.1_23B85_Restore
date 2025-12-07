@interface NWStatsManager
+ (id)getKernelMetrics:(id)metrics;
+ (void)dumpKernelMetrics:(id)metrics;
- (BOOL)setRcvBufsize:(int)bufsize;
- (NWStatsManager)initWithQueue:(id)queue;
- (NWStatsManagerDelegate)delegate;
- (id)getState;
- (id)identifierForUUID:(id)d derivation:(int *)derivation;
- (id)stateDictionary;
- (int)_refreshSyncUsingBlock:(id)block;
- (int)_refreshUsingBlock:(id)block completionBlock:(id)completionBlock;
- (int)_setThresholds:(id)thresholds;
- (int)configure:(id)configure;
- (int)initialConfigure:(id)configure;
- (int)reconfigure:(id)reconfigure;
- (int)statsRefreshCurrentUsage;
- (void)_adaptAfterDrop;
- (void)_addAllForProvider:(int)provider filter:(unint64_t)filter events:(unint64_t)events;
- (void)_drainReadBuffer;
- (void)_handleCompletion:(unint64_t)completion;
- (void)_handleCounts:(nstat_msg_src_counts *)counts;
- (void)_handleMessage:(nstat_msg_hdr *)message length:(int64_t)length;
- (void)_handleReads:(int64_t)reads;
- (void)_handleRemoveForSource:(id)source;
- (void)_noteInterfaceSrcRef:(unint64_t)ref forInterface:(unsigned int)interface threshold:(unint64_t)threshold;
- (void)_removeSourceInternal:(unint64_t)internal;
- (void)_restartPoll:(id)poll;
- (void)_sendDetailsRequestMessage:(unint64_t)message;
- (void)_sendMessage:(nstat_msg_hdr *)message length:(int64_t)length;
- (void)_sendPoll;
- (void)_sendRemoveSource:(unint64_t)source;
- (void)_sendUpdateRequestMessage:(unint64_t)message;
- (void)_setInterfaceTraceFd:(int)fd;
- (void)_setThreshold:(unint64_t)threshold onInterface:(unsigned int)interface;
- (void)_startPoll:(id)poll;
- (void)_startQueuedPoll;
- (void)_trace:(char *)_trace;
- (void)_traceMemoryBuf:(char *)buf length:(int64_t)length tag:(char *)tag;
- (void)dealloc;
- (void)dumpState;
- (void)ignoreSource:(unint64_t)source;
- (void)invalidate;
@end

@implementation NWStatsManager

- (NWStatsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_sendPoll
{
  v2[0] = self->_currentPollReference;
  v2[1] = 0x20000000003F1;
  v2[2] = -1;
  [(NWStatsManager *)self _sendMessage:v2 length:24];
}

- (int)statsRefreshCurrentUsage
{
  queuedPolls = [(NWStatsManager *)self queuedPolls];
  v4 = [queuedPolls count];

  if (v4 == 1)
  {
    return 1;
  }

  if (v4)
  {
    if (v4 < 4)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    activePoll = [(NWStatsManager *)self activePoll];
    v6 = activePoll != 0;
  }

  return v6;
}

- (void)_traceMemoryBuf:(char *)buf length:(int64_t)length tag:(char *)tag
{
  if (self->_interfaceTraceFd >= 1)
  {
    v14 = v5;
    v15 = v6;
    if (self->_iftracebuf)
    {
      v13.tv_sec = 0;
      *&v13.tv_usec = 0;
      gettimeofday(&v13, 0);
      snprintf(self->_iftracebuf, 0x1100uLL, "%ld.%06d %s len %zu\n", v13.tv_sec, v13.tv_usec, tag, length);
      v11 = strlen(self->_iftracebuf) + 1;
      v12 = v11 + length;
      if ((v11 + length) >> 8 <= 0x10)
      {
        memcpy(&self->_iftracebuf[v11], buf, length);
        write(self->_interfaceTraceFd, self->_iftracebuf, v12);
      }
    }
  }
}

- (void)_trace:(char *)_trace
{
  if (_trace && self->_interfaceTraceFd >= 1)
  {
    v5 = strlen(_trace) + 1;

    [(NWStatsManager *)self _traceMemoryBuf:_trace length:v5 tag:"Trace"];
  }
}

- (void)_sendMessage:(nstat_msg_hdr *)message length:(int64_t)length
{
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  readSource = [(NWStatsManager *)self readSource];

  if (readSource)
  {
    message->length = length;
    message->flags |= 1u;
    if (self->_interfaceTraceFd >= 1 && self->_iftracebuf)
    {
      [(NWStatsManager *)self _traceMemoryBuf:message length:length tag:"Output"];
    }

    if (send([(NWStatsManager *)self sockfd], message, length, 0) != length && message->context)
    {

      [(NWStatsManager *)self _handleCompletion:?];
    }
  }
}

- (void)_sendUpdateRequestMessage:(unint64_t)message
{
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if (![(NWStatsManager *)self isInvalidated])
  {
    v6 = xmmword_25BA77950;
    DWORD2(v6) = 1007;
    messageCopy = message;
    [(NWStatsManager *)self _sendMessage:&v6 length:24];
  }
}

- (void)_sendDetailsRequestMessage:(unint64_t)message
{
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if (![(NWStatsManager *)self isInvalidated])
  {
    v6 = xmmword_25BA77950;
    DWORD2(v6) = 1009;
    messageCopy = message;
    [(NWStatsManager *)self _sendMessage:&v6 length:24];
  }
}

- (void)_sendRemoveSource:(unint64_t)source
{
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6[0] = 0;
  v6[1] = 1003;
  v6[2] = source;
  [(NWStatsManager *)self _sendMessage:v6 length:24];
}

- (void)_startPoll:(id)poll
{
  pollCopy = poll;
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  [(NWStatsManager *)self activePoll];
  if (objc_claimAutoreleasedReturnValue())
  {
    [NWStatsManager _startPoll:];
  }

  [(NWStatsManager *)self setActivePoll:pollCopy];
  nextPollReference = self->_nextPollReference;
  self->_currentPollReference = nextPollReference;
  self->_nextPollReference = nextPollReference + 1;
  [pollCopy setNtstatContext:?];
  [(NWStatsManager *)self _sendPoll];
}

- (void)_restartPoll:(id)poll
{
  pollCopy = poll;
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  activePoll = [(NWStatsManager *)self activePoll];
  if (activePoll != pollCopy)
  {
    [NWStatsManager _restartPoll:];
  }

  [(NWStatsManager *)self _sendPoll];
}

- (void)_handleRemoveForSource:(id)source
{
  sourceCopy = source;
  delegate = [(NWStatsManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [sourceCopy createSnapshot:2 firstOccurrence:0];
    [delegate statsManager:self didReceiveNWSnapshot:v5];
  }
}

- (void)_adaptAfterDrop
{
  v21 = *MEMORY[0x277D85DE8];
  timeIntervalSinceReferenceDate = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = v4;
  if (v4 - self->_currentRcvBufTimestamp > 5.0)
  {
    currentRcvBufSize = self->_currentRcvBufSize;
    if (currentRcvBufSize < 0x80000)
    {
      v12 = [(NWStatsManager *)self setRcvBufsize:(currentRcvBufSize + 0x10000)];
      if (v12)
      {
        ++self->_numAdaptiveRcvBufIncrements;
        v7 = NStatGetLog(v12);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v13 = self->_currentRcvBufSize;
          numAdaptiveRcvBufIncrements = self->_numAdaptiveRcvBufIncrements;
          v17 = 67109376;
          v18 = v13;
          v19 = 1024;
          v20 = numAdaptiveRcvBufIncrements;
          v9 = "_adaptAfterDrop: updated buffer size to %d, adaptation count %d";
          v10 = v7;
          v11 = OS_LOG_TYPE_DEFAULT;
          v15 = 14;
LABEL_11:
          _os_log_impl(&dword_25BA3A000, v10, v11, v9, &v17, v15);
        }
      }

      else
      {
        v7 = NStatGetLog(v12);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v16 = self->_currentRcvBufSize;
          v17 = 67109120;
          v18 = v16;
          v9 = "_adaptAfterDrop: unable to update buffer size from %d";
          v10 = v7;
          v11 = OS_LOG_TYPE_ERROR;
          goto LABEL_10;
        }
      }
    }

    else
    {
      v7 = NStatGetLog(timeIntervalSinceReferenceDate);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_currentRcvBufSize;
        v17 = 67109120;
        v18 = v8;
        v9 = "_adaptAfterDrop: skip buffer size update as already at maximum %d";
        v10 = v7;
        v11 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
        v15 = 8;
        goto LABEL_11;
      }
    }

    self->_currentRcvBufTimestamp = v5;
  }
}

- (void)_handleMessage:(nstat_msg_hdr *)message length:(int64_t)length
{
  v67 = *MEMORY[0x277D85DE8];
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  type = message->type;
  if (type > 10003)
  {
    if ((type - 10008) >= 2)
    {
      if (type == 10004)
      {
        if (length >= 0x90)
        {

          [(NWStatsManager *)self _handleCounts:message];
        }

        return;
      }

      if (type != 10006 || length < 0x98)
      {
        return;
      }

      context = message[9].context;
      if (context == 6)
      {
        if (length >= 0x190)
        {
          v19 = message[1].context;
          context_low = LODWORD(message[10].context);
          v21 = *&message[9].type;

          [(NWStatsManager *)self _noteInterfaceSrcRef:v19 forInterface:context_low threshold:v21];
        }

        return;
      }

      v23 = NStatGetLog(v8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(lengthCopy4) = context;
        v24 = "update message for unknown provider %d\n";
LABEL_79:
        v30 = v23;
        v31 = 8;
LABEL_131:
        _os_log_impl(&dword_25BA3A000, v30, OS_LOG_TYPE_ERROR, v24, buf, v31);
        goto LABEL_132;
      }

      goto LABEL_132;
    }

    if (length < 0x1E8)
    {
      return;
    }

    v22 = message[30].context;
    if ((v22 & 0xFFFFFFFE) == 2)
    {
      if (length <= 0x33F)
      {
        v23 = NStatGetLog(v8);
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_132;
        }

        *buf = 134218240;
        lengthCopy4 = length;
        v65 = 2048;
        v66 = 832;
        v24 = "TCP details message with size %ld below minimum %ld\n";
LABEL_130:
        v30 = v23;
        v31 = 22;
        goto LABEL_131;
      }

      goto LABEL_81;
    }

    if (v22 > 7)
    {
      if (v22 == 8)
      {
        if (length <= 0x33F)
        {
          v23 = NStatGetLog(v8);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_132;
          }

          *buf = 134218240;
          lengthCopy4 = length;
          v65 = 2048;
          v66 = 832;
          v24 = "QUIC details message with size %ld below minimum %ld\n";
          goto LABEL_130;
        }

        goto LABEL_81;
      }

      if (v22 == 9)
      {
        if (length <= 0x2AF)
        {
          v23 = NStatGetLog(v8);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_132;
          }

          *buf = 134218240;
          lengthCopy4 = length;
          v65 = 2048;
          v66 = 688;
          v24 = "Userland connection details message with size %ld below minimum %ld\n";
          goto LABEL_130;
        }

        goto LABEL_81;
      }

      if (v22 != 10)
      {
LABEL_77:
        v23 = NStatGetLog(v8);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(lengthCopy4) = v22;
          v24 = "details message for unknown provider %d\n";
          goto LABEL_79;
        }

LABEL_132:

        return;
      }
    }

    else if ((v22 - 4) >= 2)
    {
      if (v22 == 6)
      {
        return;
      }

      goto LABEL_77;
    }

    if (length <= 0x2FF)
    {
      v23 = NStatGetLog(v8);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_132;
      }

      *buf = 134218240;
      lengthCopy4 = length;
      v65 = 2048;
      v66 = 768;
      v24 = "UDP details message with size %ld below minimum %ld\n";
      goto LABEL_130;
    }

LABEL_81:
    delegate = [(NWStatsManager *)self delegate];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:message[1].context];
    internalSources = [(NWStatsManager *)self internalSources];
    activePoll3 = [internalSources objectForKey:v33];

    flags = message->flags;
    v61 = delegate;
    if ((flags & 4) != 0)
    {
      v37 = 0;
      v36 = 0;
      v39 = 2;
      v38 = 32;
    }

    else if (message->context == 1)
    {
      v36 = 0;
      v37 = 1;
      v38 = 8;
      v39 = 1;
    }

    else
    {
      v37 = 0;
      v36 = *&message[1].type == 0;
      v38 = 24;
      if (*&message[1].type)
      {
        v39 = 4;
      }

      else
      {
        v38 = 16;
        v39 = 3;
      }
    }

    ++*(&self->_providerCounts[v22].numSrcsAdded + v38);
    if (activePoll3)
    {
      if (((v37 | [activePoll3 removing]) & 1) == 0)
      {
        statsMonitor = [(NWStatsManager *)self statsMonitor];
        if ([activePoll3 updateWithDetails:message length:length monitor:statsMonitor])
        {

LABEL_101:
          v45 = [activePoll3 createSnapshot:v39 firstOccurrence:{0, v61}];
          if ((message->flags & 4) == 0)
          {
            goto LABEL_104;
          }

          internalSources2 = [(NWStatsManager *)self internalSources];
          [internalSources2 removeObjectForKey:v33];
LABEL_103:

LABEL_104:
          if (v45)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v48 = v45;
              v49 = v48;
              if (self->_trafficDeltaAdjustmentFactor > 0.0)
              {
                [v48 applyTrafficAdjustmentFactor:?];
              }

              if (self->_checkNESessionManagerVPNs)
              {
                interfaceIndex = [v49 interfaceIndex];
                v51 = +[NWStatsInterfaceRegistry sharedInstance];
                [v51 addInterfaceIndexToRegistry:interfaceIndex];
                if ([v51 isTrackingInterfaceIndex:interfaceIndex])
                {
                  [v49 donateBytesToAccumulator];
                }

                euuid = [v49 euuid];
                v53 = [v51 machOUUIDBelongsToVPNProvider:euuid];

                if (v53)
                {
                  [v49 removeBytesFromAccumulator];
                }
              }
            }

            if (!v36 || (-[NWStatsManager activePoll](self, "activePoll"), (v54 = objc_claimAutoreleasedReturnValue()) == 0) || (v55 = v54, -[NWStatsManager activePoll](self, "activePoll"), v56 = objc_claimAutoreleasedReturnValue(), [v56 deliveryBlock], v57 = objc_claimAutoreleasedReturnValue(), v57, v56, v55, !v57))
            {
              v60 = v61;
              if (objc_opt_respondsToSelector())
              {
                [v61 statsManager:self didReceiveNWSnapshot:v45];
              }

              goto LABEL_124;
            }

            activePoll = [(NWStatsManager *)self activePoll];
            deliveryBlock = [activePoll deliveryBlock];
            (deliveryBlock)[2](deliveryBlock, v45);
          }

LABEL_123:
          v60 = v61;
LABEL_124:

          goto LABEL_125;
        }

        v47 = message->flags;

        if ((v47 & 4) != 0)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      if ((v22 & 0xFFFFFFFE) == 2)
      {
        v41 = off_27996D9C0;
      }

      else
      {
        v42 = v22 - 4;
        if ((v22 - 4) >= 7 || ((0x73u >> v42) & 1) == 0)
        {
          [NWStatsManager _handleMessage:length:];
        }

        v41 = off_27996E0D0[v42];
      }

      v43 = objc_alloc(*v41);
      statsMonitor2 = [(NWStatsManager *)self statsMonitor];
      activePoll3 = [v43 initWithDetails:message length:length monitor:statsMonitor2];

      if (activePoll3)
      {
        v45 = [activePoll3 createSnapshot:v39 firstOccurrence:1];
        if ((flags & 4) != 0)
        {
          goto LABEL_104;
        }

        internalSources2 = [(NWStatsManager *)self internalSources];
        [internalSources2 setObject:activePoll3 forKey:v33];
        goto LABEL_103;
      }

      activePoll3 = 0;
    }

    v45 = 0;
    goto LABEL_123;
  }

  if (!type)
  {
    currentPollReference = self->_currentPollReference;
    if (!currentPollReference || currentPollReference != message->context)
    {
      return;
    }

    if ((message->flags & 2) == 0 || self->_continuationCount > 0x27)
    {

      [(NWStatsManager *)self _handleCompletion:?];
      return;
    }

    activePoll2 = [(NWStatsManager *)self activePoll];
    if (!activePoll2)
    {
      [NWStatsManager _handleMessage:length:];
    }

    activePoll3 = [(NWStatsManager *)self activePoll];
    [(NWStatsManager *)self _restartPoll:?];
LABEL_125:

    return;
  }

  if (type == 10001)
  {
    if (length >= 0x20)
    {
      v27 = message[1].type;
      if (v27 <= 0xA)
      {
        ++self->_providerCounts[v27].numSrcsAdded;
        if (v27 == 6)
        {
          v28 = message[1].context;

          [(NWStatsManager *)self _sendUpdateRequestMessage:v28];
        }

        else if (self->_eagerInstantiate)
        {
          v29 = message[1].context;

          [(NWStatsManager *)self _sendDetailsRequestMessage:v29];
        }
      }
    }
  }

  else if (type == 10002 && length >= 0x18)
  {
    v10 = message[1].context;
    v11 = message->flags;
    internalSources3 = [(NWStatsManager *)self internalSources];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
    v14 = [internalSources3 objectForKey:v13];

    if (v11 == 8)
    {
      v16 = NStatGetLog(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        lengthCopy4 = v10;
        v65 = 2112;
        v66 = v14;
        _os_log_impl(&dword_25BA3A000, v16, OS_LOG_TYPE_ERROR, "NSTAT_MSG_TYPE_SRC_REMOVED received reports drop, source ref %lld source %@", buf, 0x16u);
      }

      [(NWStatsManager *)self _adaptAfterDrop];
    }

    if (v14)
    {
      [(NWStatsManager *)self _removeSourceInternal:v10];
      switch(v11)
      {
        case 0:
          v17 = 544;
          goto LABEL_72;
        case 16:
          v17 = 560;
LABEL_72:
          ++*(&self->super.isa + v17);
          break;
        case 8:
          v17 = 552;
          goto LABEL_72;
      }
    }

    else
    {
      switch(v11)
      {
        case 0:
          v17 = 520;
          goto LABEL_72;
        case 16:
          v17 = 536;
          goto LABEL_72;
        case 8:
          v17 = 528;
          goto LABEL_72;
      }
    }
  }
}

- (void)_drainReadBuffer
{
  v3 = recv([(NWStatsManager *)self sockfd], [(NWStatsManager *)self readBuffer], [(NWStatsManager *)self readBufferSize], 0);
  if (v3 >= 1)
  {
    for (i = v3; i > 0; i = recv([(NWStatsManager *)self sockfd], [(NWStatsManager *)self readBuffer], [(NWStatsManager *)self readBufferSize], 0))
    {
      readBuffer = [(NWStatsManager *)self readBuffer];
      if (i >= 0x10)
      {
        v6 = readBuffer;
        do
        {
          v7 = *(v6 + 6);
          if (v7 < 0x10 || i < v7)
          {
            break;
          }

          if (self->_interfaceTraceFd >= 1)
          {
            if (self->_iftracebuf)
            {
              [(NWStatsManager *)self _traceMemoryBuf:v6 length:*(v6 + 6) tag:"Input"];
            }
          }

          v6 += v7;
          i -= v7;
        }

        while (i > 0xF);
      }
    }
  }
}

- (void)_handleReads:(int64_t)reads
{
  v5 = objc_autoreleasePoolPush();
  v6 = 0;
  if (reads <= 1)
  {
    readsCopy = 1;
  }

  else
  {
    readsCopy = reads;
  }

  do
  {
    v8 = recv([(NWStatsManager *)self sockfd], [(NWStatsManager *)self readBuffer], [(NWStatsManager *)self readBufferSize], 0);
    if (v8 < 1)
    {
      break;
    }

    v9 = v8;
    readBuffer = [(NWStatsManager *)self readBuffer];
    if (v9 >= 0x10)
    {
      v11 = readBuffer;
      do
      {
        v12 = *(v11 + 6);
        if (v12 < 0x10 || v9 < v12)
        {
          break;
        }

        if (self->_interfaceTraceFd >= 1 && self->_iftracebuf)
        {
          [(NWStatsManager *)self _traceMemoryBuf:v11 length:*(v11 + 6) tag:"Input"];
        }

        v9 -= v12;
        [(NWStatsManager *)self _handleMessage:v11 length:v12];
        v11 += v12;
      }

      while (v9 > 0xF);
    }

    ++v6;
  }

  while (v6 != readsCopy);

  objc_autoreleasePoolPop(v5);
}

- (void)_startQueuedPoll
{
  [(NWStatsManager *)self activePoll];
  if (objc_claimAutoreleasedReturnValue())
  {
    [NWStatsManager _startQueuedPoll];
  }

  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  queuedPolls = [(NWStatsManager *)self queuedPolls];
  v8 = [queuedPolls objectAtIndexedSubscript:0];

  v6 = v8;
  if (v8)
  {
    queuedPolls2 = [(NWStatsManager *)self queuedPolls];
    [queuedPolls2 removeObjectAtIndex:0];

    isInvalidated = [(NWStatsManager *)self isInvalidated];
    v6 = v8;
    if ((isInvalidated & 1) == 0)
    {
      isInvalidated = [(NWStatsManager *)self _startPoll:v8];
      v6 = v8;
    }
  }

  MEMORY[0x2821F96F8](isInvalidated, v6);
}

- (void)_handleCompletion:(unint64_t)completion
{
  v16 = *MEMORY[0x277D85DE8];
  if (completion && self->_currentPollReference == completion)
  {
    self->_currentPollReference = 0;
    self->_continuationCount = 0;
    activePoll = [(NWStatsManager *)self activePoll];
    [(NWStatsManager *)self setActivePoll:0];
    if (activePoll)
    {
      if (([activePoll synchronous] & 1) == 0)
      {
        completionBlock = [activePoll completionBlock];

        if (completionBlock)
        {
          completionBlock2 = [activePoll completionBlock];
          completionBlock2[2]();
        }
      }
    }

    queuedPolls = [(NWStatsManager *)self queuedPolls];
    v8 = [queuedPolls count];

    if (v8)
    {
      [(NWStatsManager *)self _startQueuedPoll];
    }
  }

  else
  {
    v9 = NStatGetLog(self);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      currentPollReference = self->_currentPollReference;
      *buf = 134218240;
      v13 = currentPollReference;
      v14 = 2048;
      completionCopy = completion;
      _os_log_impl(&dword_25BA3A000, v9, OS_LOG_TYPE_ERROR, "mismatch, _currentPollReference %lld supplied reference %lld", buf, 0x16u);
    }
  }
}

- (void)_removeSourceInternal:(unint64_t)internal
{
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:internal];
  internalSources = [(NWStatsManager *)self internalSources];
  v5 = [internalSources objectForKey:v7];

  if (v5)
  {
    [v5 setRemoved:1];
    internalSources2 = [(NWStatsManager *)self internalSources];
    [internalSources2 removeObjectForKey:v7];

    [(NWStatsManager *)self _handleRemoveForSource:v5];
  }
}

- (void)_addAllForProvider:(int)provider filter:(unint64_t)filter events:(unint64_t)events
{
  v10 = *MEMORY[0x277D85DE8];
  if (provider > 0xA || ((1 << provider) & 0x73C) == 0)
  {
    [NWStatsManager _addAllForProvider:filter:events:];
  }

  v8 = 0u;
  v5 = 0u;
  v9 = 0;
  DWORD2(v5) = 1002;
  LODWORD(v8) = provider;
  filterCopy = filter;
  eventsCopy = events;
  [(NWStatsManager *)self _sendMessage:&v5 length:56];
}

- (void)_handleCounts:(nstat_msg_src_counts *)counts
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  interfaceSources = [(NWStatsManager *)self interfaceSources];
  v6 = [interfaceSources countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(interfaceSources);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 srcRef] == counts->var1)
        {
          delegate = [(NWStatsManager *)self delegate];
          ifIndex = [v10 ifIndex];
          if (objc_opt_respondsToSelector())
          {
            [delegate statsManager:self thresholdReachedOn:ifIndex];
          }

          return;
        }
      }

      v7 = [interfaceSources countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = NStatGetLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    var1 = counts->var1;
    *buf = 134217984;
    v21 = var1;
    _os_log_impl(&dword_25BA3A000, v12, OS_LOG_TYPE_DEFAULT, "Unexpected counts message on source ref %lld", buf, 0xCu);
  }

  [(NWStatsManager *)self _sendUpdateRequestMessage:counts->var1];
}

- (void)_noteInterfaceSrcRef:(unint64_t)ref forInterface:(unsigned int)interface threshold:(unint64_t)threshold
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(NWStatsManager *)self interfaceSources:ref];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 ifIndex] == interface)
        {
          if ([v13 srcRef])
          {
            srcRef = [v13 srcRef];
            if (srcRef != ref)
            {
              v17 = NStatGetLog(srcRef);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                srcRef2 = [v13 srcRef];
                *buf = 134218496;
                refCopy3 = srcRef2;
                v26 = 2048;
                refCopy = ref;
                v28 = 1024;
                interfaceCopy = interface;
                _os_log_impl(&dword_25BA3A000, v17, OS_LOG_TYPE_DEFAULT, "Replace source ref %lld with %lld for monitoring interface %u", buf, 0x1Cu);
              }

              -[NWStatsManager _sendRemoveSource:](self, "_sendRemoveSource:", [v13 srcRef]);
              [v13 setSrcRef:ref];
            }
          }

          else
          {
            v19 = NStatGetLog([v13 setSrcRef:ref]);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              refCopy3 = ref;
              v26 = 1024;
              LODWORD(refCopy) = interface;
              _os_log_impl(&dword_25BA3A000, v19, OS_LOG_TYPE_DEFAULT, "Adopt source ref %lld to monitor interface %u", buf, 0x12u);
            }
          }

          return;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = NStatGetLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    refCopy3 = ref;
    v26 = 1024;
    LODWORD(refCopy) = interface;
    _os_log_impl(&dword_25BA3A000, v15, OS_LOG_TYPE_DEFAULT, "Discard source ref %lld for interface %u", buf, 0x12u);
  }

  [(NWStatsManager *)self _sendRemoveSource:ref];
}

- (void)_setThreshold:(unint64_t)threshold onInterface:(unsigned int)interface
{
  v4 = *&interface;
  v29 = *MEMORY[0x277D85DE8];
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  interfaceSources = [(NWStatsManager *)self interfaceSources];
  v9 = [interfaceSources countByEnumeratingWithState:&v17 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v18;
LABEL_3:
    v13 = 0;
    v14 = v11;
    while (1)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(interfaceSources);
      }

      v11 = *(*(&v17 + 1) + 8 * v13);

      if ([(NWStatsInterfaceSource *)v11 ifIndex]== v4)
      {
        break;
      }

      ++v13;
      v14 = v11;
      if (v10 == v13)
      {
        v10 = [interfaceSources countByEnumeratingWithState:&v17 objects:v28 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    if (threshold)
    {
      goto LABEL_13;
    }

    if ([(NWStatsInterfaceSource *)v11 srcRef])
    {
      [(NWStatsManager *)self _sendRemoveSource:[(NWStatsInterfaceSource *)v11 srcRef]];
    }

    interfaceSources2 = [(NWStatsManager *)self interfaceSources];
    [interfaceSources2 removeObject:v11];
  }

  else
  {
LABEL_10:

    if (threshold)
    {
      v11 = objc_alloc_init(NWStatsInterfaceSource);
      [(NWStatsInterfaceSource *)v11 setIfIndex:v4];
      [(NWStatsInterfaceSource *)v11 setThreshold:0];
      [(NWStatsInterfaceSource *)v11 setSrcRef:0];
      interfaceSources3 = [(NWStatsManager *)self interfaceSources];
      [interfaceSources3 addObject:v11];

LABEL_13:
      if ([(NWStatsInterfaceSource *)v11 threshold]!= threshold)
      {
        if ([(NWStatsInterfaceSource *)v11 srcRef])
        {
          [(NWStatsManager *)self _sendRemoveSource:[(NWStatsInterfaceSource *)v11 srcRef]];
          [(NWStatsInterfaceSource *)v11 setSrcRef:0];
        }

        v22 = 0u;
        v27 = 0u;
        v26 = 0u;
        v25 = 0u;
        v21 = 0;
        LODWORD(v22) = 1001;
        DWORD2(v22) = 6;
        v24 = v4;
        thresholdCopy = threshold;
        [(NWStatsInterfaceSource *)v11 setThreshold:threshold];
        [(NWStatsManager *)self _sendMessage:&v21 length:40];
      }
    }

    else
    {
      v11 = 0;
    }
  }
}

- (int)_setThresholds:(id)thresholds
{
  v38 = *MEMORY[0x277D85DE8];
  thresholdsCopy = thresholds;
  v5 = thresholdsCopy;
  if (!thresholdsCopy)
  {
    v19 = 0;
    goto LABEL_21;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = thresholdsCopy;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (!v7)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v8 = v7;
  v9 = *v28;
  v26 = v5;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v27 + 1) + 8 * i);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v13 = NStatGetLog(isKindOfClass);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          *buf = 138412546;
          v32 = v11;
          v33 = 2112;
          v34 = v21;
          _os_log_impl(&dword_25BA3A000, v13, OS_LOG_TYPE_ERROR, "Incorrect key format for configuring thresholds, %@ has class %@", buf, 0x16u);
        }

        goto LABEL_19;
      }

      v13 = v11;
      v14 = [v6 objectForKeyedSubscript:v13];
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();
      if ((v15 & 1) == 0)
      {
        v22 = NStatGetLog(v15);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          *buf = 138412802;
          v32 = v14;
          v33 = 2112;
          v34 = v24;
          v35 = 2112;
          v36 = v13;
          _os_log_impl(&dword_25BA3A000, v22, OS_LOG_TYPE_ERROR, "Incorrect threshold format %@ of class %@ for configuring interface %@", buf, 0x20u);
        }

LABEL_19:
        v5 = v26;

        v19 = 22;
        goto LABEL_20;
      }

      v16 = v14;
      unsignedLongLongValue = [v16 unsignedLongLongValue];
      unsignedIntegerValue = [v13 unsignedIntegerValue];

      [(NWStatsManager *)self _setThreshold:unsignedLongLongValue onInterface:unsignedIntegerValue];
    }

    v8 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
    v19 = 0;
    v5 = v26;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_20:

LABEL_21:
  return v19;
}

- (void)_setInterfaceTraceFd:(int)fd
{
  if (!self->_iftracebuf)
  {
    v5 = malloc_type_malloc(0x1100uLL, 0x70F9F761uLL);
    if (!v5)
    {
      __break(1u);
      return;
    }

    self->_iftracebuf = v5;
  }

  interfaceTraceFd = self->_interfaceTraceFd;
  if (interfaceTraceFd >= 1)
  {
    close(interfaceTraceFd);
  }

  self->_interfaceTraceFd = fd;
}

- (void)invalidate
{
  readSource = [(NWStatsManager *)self readSource];

  if (readSource)
  {
    readSource2 = [(NWStatsManager *)self readSource];
    dispatch_source_cancel(readSource2);

    [(NWStatsManager *)self setReadSource:0];
  }

  activePoll = [(NWStatsManager *)self activePoll];

  if (activePoll)
  {
    [(NWStatsManager *)self setActivePoll:0];
  }

  [(NWStatsManager *)self setQueuedPolls:0];
  while (1)
  {
    internalSources = [(NWStatsManager *)self internalSources];
    v7 = [internalSources count];

    if (!v7)
    {
      break;
    }

    internalSources2 = [(NWStatsManager *)self internalSources];
    allKeys = [internalSources2 allKeys];

    v10 = [allKeys objectAtIndexedSubscript:0];
    -[NWStatsManager _removeSourceInternal:](self, "_removeSourceInternal:", [v10 unsignedLongLongValue]);
  }

  [(NWStatsManager *)self setInternalSources:0];
  if (self->_interfaceTraceFd >= 1)
  {
    self->_interfaceTraceFd = 0;
    iftracebuf = self->_iftracebuf;
    if (iftracebuf)
    {
      free(iftracebuf);
      self->_iftracebuf = 0;
    }
  }

  [(NWStatsManager *)self setInvalidated:1];
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
    self->_readBuffer = 0;
  }

  v6.receiver = self;
  v6.super_class = NWStatsManager;
  [(NWStatsManager *)&v6 dealloc];
}

- (BOOL)setRcvBufsize:(int)bufsize
{
  v14 = *MEMORY[0x277D85DE8];
  bufsizeCopy = bufsize;
  if (self->_currentRcvBufSize == bufsize)
  {
    return 1;
  }

  v4 = setsockopt(self->_sockfd, 0xFFFF, 4098, &bufsizeCopy, 4u);
  if (v4 != -1)
  {
    self->_currentRcvBufSize = bufsizeCopy;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_currentRcvBufTimestamp = v5;
    return 1;
  }

  v7 = NStatGetLog(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    currentRcvBufSize = self->_currentRcvBufSize;
    *buf = 67109376;
    v11 = currentRcvBufSize;
    v12 = 1024;
    v13 = bufsizeCopy;
    _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Unable to increment rcv buf size from %d to %d", buf, 0xEu);
  }

  return 0;
}

- (NWStatsManager)initWithQueue:(id)queue
{
  v36 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = NWStatsManager;
  v6 = [(NWStatsManager *)&v25 init];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = socket(32, 2, 2);
  if (v7 == -1)
  {
LABEL_6:
    v6->_sockfd = -1;
    v9 = NStatGetLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25BA3A000, v9, OS_LOG_TYPE_ERROR, "Unable to allocate a kernel control socket", &buf, 2u);
    }

    goto LABEL_9;
  }

  v8 = v7;
  buf = 0;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  *&buf_4[28] = 0u;
  v32 = 0u;
  strcpy(buf_4, "com.apple.network.statistics");
  if (ioctl(v7, 0xC0644E03uLL, &buf) == -1 || (v28 = 0, *&v27[12] = 0, v29 = 0, *v27 = 139296, *&v27[4] = buf, *&v27[8] = 0, connect(v8, v27, 0x20u)))
  {
LABEL_5:
    v7 = close(v8);
    goto LABEL_6;
  }

  v11 = fcntl(v8, 3, 0);
  v12 = fcntl(v8, 4, v11 | 4u);
  if (v12 == -1)
  {
    v23 = NStatGetLog(v12);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_impl(&dword_25BA3A000, v23, OS_LOG_TYPE_ERROR, "Unable to set non-blocking", v26, 2u);
    }

    goto LABEL_5;
  }

  v6->_sockfd = v8;
  if ([(NWStatsManager *)v6 setRcvBufsize:0x20000])
  {
    objc_storeStrong(&v6->_clientQueue, queue);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    internalSources = v6->_internalSources;
    v6->_internalSources = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    queuedPolls = v6->_queuedPolls;
    v6->_queuedPolls = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    interfaceSources = v6->_interfaceSources;
    v6->_interfaceSources = v17;

    v19 = [[NWStatsMonitor alloc] initWithQueue:queueCopy];
    statsMonitor = v6->_statsMonitor;
    v6->_statsMonitor = v19;

    v6->_nextPollReference = 2;
    if (v6->_clientQueue && v6->_internalSources && v6->_statsMonitor)
    {
LABEL_15:
      v10 = v6;
      goto LABEL_16;
    }

    v24 = NStatGetLog(v21);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25BA3A000, v24, OS_LOG_TYPE_ERROR, "Unable to initialize Sources / queue / monitor", &buf, 2u);
    }
  }

  close(v6->_sockfd);
LABEL_9:
  v10 = 0;
LABEL_16:

  return v10;
}

- (int)initialConfigure:(id)configure
{
  v84 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  currentRcvBufSize = self->_currentRcvBufSize;
  self->_consecutiveReadLimit = 20;
  self->_checkNESessionManagerVPNs = 1;
  [(NWStatsManager *)self setReadBufferSize:4096];
  v6 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTargetSelector"];

  if (v6)
  {
    v7 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTargetSelector"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_7;
    }

    v9 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTargetSelector"];
  }

  else
  {
    v9 = [[NWStatsTargetSelector alloc] initWithSelection:configureCopy];
  }

  v10 = v9;
  if (v9)
  {
    filter = [(NWStatsTargetSelector *)v9 filter];
    connFilter = [(NWStatsTargetSelector *)v10 connFilter];
    events = [(NWStatsTargetSelector *)v10 events];
    v14 = 0;
    v15 = filter | 0x8000000000;
    goto LABEL_10;
  }

LABEL_7:
  v16 = NStatGetLog(v9);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_25BA3A000, v16, OS_LOG_TYPE_ERROR, "initialConfigure: unexpected class for kNWStatsParameterTargetSelector", buf, 2u);
  }

  v10 = 0;
  events = 0;
  connFilter = 0;
  v15 = 0x8000000000;
  v14 = 1;
LABEL_10:
  v17 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];

  if (v17)
  {
    v18 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];
    intValue = [v18 intValue];

    if (intValue)
    {
      [(NWStatsManager *)self _setInterfaceTraceFd:intValue];
    }
  }

  v20 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterDomainInfo"];

  if (v20)
  {
    v21 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterDomainInfo"];
    bOOLValue = [v21 BOOLValue];
    if (bOOLValue)
    {
      v15 |= 0x20000000000uLL;
      v23 = NStatGetLog(bOOLValue);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v83 = v15;
        _os_log_impl(&dword_25BA3A000, v23, OS_LOG_TYPE_DEFAULT, "initialConfigure set NSTAT_EXTENSION_FILTER_DOMAIN_INFO, filter now 0x%llx", buf, 0xCu);
      }

      currentRcvBufSize += 0x10000;
    }
  }

  v24 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectKnownInbound"];

  if (v24)
  {
    v25 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectKnownInbound"];
    if ([v25 BOOLValue])
    {
      v15 |= 0x4000000uLL;
    }
  }

  v26 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectKnownOutbound"];

  if (v26)
  {
    v27 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectKnownOutbound"];
    if ([v27 BOOLValue])
    {
      v15 |= 0x8000000uLL;
    }
  }

  v28 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectKnownListener"];

  if (v28)
  {
    v29 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectKnownListener"];
    if ([v29 BOOLValue])
    {
      v15 |= 0x2000000uLL;
    }
  }

  v30 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterNECPClientTLV"];

  v77 = currentRcvBufSize;
  if (v30)
  {
    v15 |= 0x40000000000uLL;
    connFilter |= 0x40000000000uLL;
    v32 = NStatGetLog(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v83 = v15;
      _os_log_impl(&dword_25BA3A000, v32, OS_LOG_TYPE_DEFAULT, "initialConfigure set NSTAT_EXTENSION_FILTER_NECP_TLV, filter now 0x%llx", buf, 0xCu);
    }
  }

  v33 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterNECPAncestralClientTLV"];

  if (v33)
  {
    v34 = connFilter | 0x80000000000;
  }

  else
  {
    v34 = connFilter;
  }

  v35 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectConnHasNetAccess"];

  if (v35)
  {
    v36 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectConnHasNetAccess"];
    if ([v36 BOOLValue])
    {
      v34 |= 0x1000000uLL;
    }
  }

  v37 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnRefresh"];

  if (v37)
  {
    v38 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnRefresh"];
    if ([v38 BOOLValue])
    {
      v34 |= 0x20000000uLL;
    }
  }

  v39 = [configureCopy objectForKeyedSubscript:@"kNWStatsTuneMaxConsecutiveReads"];

  if (v39)
  {
    v40 = [configureCopy objectForKeyedSubscript:@"kNWStatsTuneMaxConsecutiveReads"];
    objc_opt_class();
    v41 = objc_opt_isKindOfClass();

    if (v41)
    {
      v42 = [configureCopy objectForKeyedSubscript:@"kNWStatsTuneMaxConsecutiveReads"];
      self->_consecutiveReadLimit = [v42 intValue];
    }
  }

  v43 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnClose"];

  if (v43)
  {
    v44 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnClose"];
    if ([v44 BOOLValue])
    {
      v34 |= 0x10000000uLL;
    }
  }

  v45 = [configureCopy objectForKeyedSubscript:@"kNWStatsOptimizeFrequentRefresh"];

  if (v45)
  {
    v46 = [configureCopy objectForKeyedSubscript:@"kNWStatsOptimizeFrequentRefresh"];
    if ([v46 BOOLValue])
    {
      [(NWStatsManager *)self setReadBufferSize:0x4000];
      v15 |= 0x2000000000uLL;
    }
  }

  v47 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectHasTrafficDelta"];
  if (v47)
  {
    v48 = v47;
    v49 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectHasTrafficDelta"];
    objc_opt_class();
    v50 = objc_opt_isKindOfClass();

    if (v50)
    {
      v51 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectHasTrafficDelta"];
      if ([v51 BOOLValue])
      {
        v15 |= 0x800000uLL;
      }
    }
  }

  v52 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterReportOpen"];

  if (v52)
  {
    v53 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterReportOpen"];
    bOOLValue2 = [v53 BOOLValue];
    self->_eagerInstantiate = bOOLValue2;
    if (bOOLValue2)
    {
      v55 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterExperiment"];

      if (v55)
      {
        v56 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterExperiment"];
        if ([v56 BOOLValue])
        {
          v34 |= 0x200000uLL;
          v15 |= 0x200000uLL;
        }
      }
    }

    if (!self->_eagerInstantiate)
    {
      v34 |= 0x100000uLL;
      v15 |= 0x100000uLL;
    }
  }

  else
  {
    self->_eagerInstantiate = 0;
    v15 |= 0x100000uLL;
    v34 |= 0x100000uLL;
  }

  v57 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTrafficDeltaAdjustmentFactor"];

  if (v57)
  {
    v58 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTrafficDeltaAdjustmentFactor"];
    objc_opt_class();
    v59 = objc_opt_isKindOfClass();

    if (v59)
    {
      v60 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTrafficDeltaAdjustmentFactor"];
      [v60 doubleValue];
      self->_trafficDeltaAdjustmentFactor = v61;
    }
  }

  v62 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterCheckNESessionManagerVPNs"];

  if (v62)
  {
    v63 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterCheckNESessionManagerVPNs"];
    objc_opt_class();
    v64 = objc_opt_isKindOfClass();

    if (v64)
    {
      v65 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterCheckNESessionManagerVPNs"];
      self->_checkNESessionManagerVPNs = [v65 BOOLValue];
    }
  }

  readBufferSize = [(NWStatsManager *)self readBufferSize];
  if (!readBufferSize || (v67 = malloc_type_malloc(readBufferSize, 0x46AA3AE4uLL)) == 0)
  {
    __break(1u);
  }

  self->_readBuffer = v67;
  v68 = dispatch_source_create(MEMORY[0x277D85D28], self->_sockfd, 0, self->_clientQueue);
  readSource = self->_readSource;
  self->_readSource = v68;

  v70 = self->_readSource;
  if (!v70)
  {
    close(self->_sockfd);
    v73 = 55;
    goto LABEL_102;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __35__NWStatsManager_initialConfigure___block_invoke;
  handler[3] = &unk_27996DB98;
  handler[4] = self;
  dispatch_source_set_event_handler(v70, handler);
  sockfd = self->_sockfd;
  v72 = self->_readSource;
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __35__NWStatsManager_initialConfigure___block_invoke_2;
  v79[3] = &__block_descriptor_36_e5_v8__0l;
  v80 = sockfd;
  dispatch_source_set_cancel_handler(v72, v79);
  dispatch_resume(self->_readSource);
  [(NWStatsManager *)self _sendDetailsRequestMessage:-1];
  if (v14)
  {
    [(NWStatsManager *)self _addAllForProvider:2 filter:v15 events:events];
    [(NWStatsManager *)self _drainReadBuffer];
  }

  else
  {
    if ([(NWStatsTargetSelector *)v10 shouldAddProvider:2])
    {
      [(NWStatsManager *)self _addAllForProvider:2 filter:v15 events:events];
      [(NWStatsManager *)self _drainReadBuffer];
    }

    if (![(NWStatsTargetSelector *)v10 shouldAddProvider:4])
    {
LABEL_88:
      if ([(NWStatsTargetSelector *)v10 shouldAddProvider:3])
      {
        [(NWStatsManager *)self _addAllForProvider:3 filter:v15 events:events];
        [(NWStatsManager *)self _drainReadBuffer];
      }

      if (![(NWStatsTargetSelector *)v10 shouldAddProvider:5])
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }
  }

  [(NWStatsManager *)self _addAllForProvider:4 filter:v15 events:events];
  [(NWStatsManager *)self _drainReadBuffer];
  if ((v14 & 1) == 0)
  {
    goto LABEL_88;
  }

  [(NWStatsManager *)self _addAllForProvider:3 filter:v15 events:events];
  [(NWStatsManager *)self _drainReadBuffer];
LABEL_91:
  [(NWStatsManager *)self _addAllForProvider:5 filter:v15 events:events];
  [(NWStatsManager *)self _drainReadBuffer];
  if (v14)
  {
LABEL_93:
    [(NWStatsManager *)self _addAllForProvider:8 filter:v15 events:events];
    [(NWStatsManager *)self _drainReadBuffer];
    goto LABEL_94;
  }

LABEL_92:
  if ([(NWStatsTargetSelector *)v10 shouldAddProvider:8])
  {
    goto LABEL_93;
  }

LABEL_94:
  if ([(NWStatsTargetSelector *)v10 shouldAddProvider:10])
  {
    [(NWStatsManager *)self _addAllForProvider:10 filter:v15 events:events];
    [(NWStatsManager *)self _drainReadBuffer];
    v77 += 0x8000;
  }

  if ([(NWStatsTargetSelector *)v10 shouldAddProvider:9])
  {
    [(NWStatsManager *)self _addAllForProvider:9 filter:v34 | 0x120000000000 events:events];
    [(NWStatsManager *)self _drainReadBuffer];
    v74 = v77 + 0x8000;
  }

  else
  {
    v74 = v77;
  }

  [(NWStatsManager *)self setRcvBufsize:v74];
  [(NWStatsManager *)self setConfigured:1];
  v75 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterThresholds"];
  v73 = [(NWStatsManager *)self _setThresholds:v75];

  if (self->_eagerInstantiate || self->_trafficDeltaAdjustmentFactor > 0.0)
  {
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __35__NWStatsManager_initialConfigure___block_invoke_3;
    v78[3] = &unk_27996DB98;
    v78[4] = self;
    [(NWStatsManager *)self _refreshUsingBlock:0 completionBlock:v78];
  }

LABEL_102:

  return v73;
}

void *__35__NWStatsManager_initialConfigure___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 58) = 1;
  result = [*(a1 + 32) _handleReads:*(*(a1 + 32) + 28)];
  *(*(a1 + 32) + 58) = 0;
  return result;
}

void __35__NWStatsManager_initialConfigure___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 0;
  v1 = NStatGetLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_25BA3A000, v1, OS_LOG_TYPE_DEFAULT, "Initial update for opens completed", v2, 2u);
  }
}

- (int)reconfigure:(id)reconfigure
{
  reconfigureCopy = reconfigure;
  v5 = [reconfigureCopy objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];

  if (v5)
  {
    interfaceTraceFd = self->_interfaceTraceFd;
    v7 = [reconfigureCopy objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];
    intValue = [v7 intValue];

    if (interfaceTraceFd != intValue)
    {
      v9 = [reconfigureCopy objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];
      -[NWStatsManager _setInterfaceTraceFd:](self, "_setInterfaceTraceFd:", [v9 intValue]);
    }
  }

  v10 = [reconfigureCopy objectForKeyedSubscript:@"kNWStatsParameterThresholds"];
  v11 = [(NWStatsManager *)self _setThresholds:v10];

  return v11;
}

- (int)configure:(id)configure
{
  v23 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  isInvalidated = [(NWStatsManager *)self isInvalidated];
  if (isInvalidated)
  {
    v6 = NStatGetLog(isInvalidated);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20[0]) = 0;
      _os_log_impl(&dword_25BA3A000, v6, OS_LOG_TYPE_ERROR, "configure skipped as manager was invalidated", v20, 2u);
    }

    v7 = 6;
  }

  else
  {
    Default = CFAllocatorGetDefault();
    v9 = SecTaskCreateFromSelf(Default);
    if (v9)
    {
      v10 = v9;
      v11 = SecTaskCopyValueForEntitlement(v9, @"com.apple.private.network.statistics", 0);
      bOOLValue = [v11 BOOLValue];
      v13 = SecTaskCopyValueForEntitlement(v10, @"com.apple.private.coreservices.canmapbundleidtouuid", 0);

      bOOLValue2 = [v13 BOOLValue];
      CFRelease(v10);

      if (bOOLValue && bOOLValue2)
      {
        statsMonitor = [(NWStatsManager *)self statsMonitor];
        [statsMonitor configure:configureCopy];

        if ([(NWStatsManager *)self configured])
        {
          v7 = [(NWStatsManager *)self reconfigure:configureCopy];
        }

        else
        {
          v7 = [(NWStatsManager *)self initialConfigure:configureCopy];
          [(NWStatsManager *)self setConfigured:1];
        }

        goto LABEL_16;
      }
    }

    else
    {
      v17 = NStatGetLog(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(&dword_25BA3A000, v17, OS_LOG_TYPE_ERROR, "NWStatsManager configure: unable to get task ref for entitlement check", v20, 2u);
      }

      bOOLValue = 0;
      bOOLValue2 = 0;
    }

    v18 = NStatGetLog(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v20[0] = 67109376;
      v20[1] = bOOLValue;
      v21 = 1024;
      v22 = bOOLValue2;
      _os_log_impl(&dword_25BA3A000, v18, OS_LOG_TYPE_FAULT, "NWStatsManager configure: entitlements not held, netstats %d, mapping %d", v20, 0xEu);
    }

    [(NWStatsManager *)self invalidate];
    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (int)_refreshUsingBlock:(id)block completionBlock:(id)completionBlock
{
  v23 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  completionBlockCopy = completionBlock;
  queuedPolls = [(NWStatsManager *)self queuedPolls];
  v9 = [queuedPolls count];

  if (v9 < 4)
  {
    configured = [(NWStatsManager *)self configured];
    if (configured)
    {
      isInvalidated = [(NWStatsManager *)self isInvalidated];
      if (isInvalidated)
      {
        v15 = NStatGetLog(isInvalidated);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v22[0]) = 0;
          _os_log_impl(&dword_25BA3A000, v15, OS_LOG_TYPE_ERROR, "_refreshUsingBlock skipped as manager was invalidated", v22, 2u);
        }

        v12 = 6;
      }

      else
      {
        v17 = objc_alloc_init(NWStatsPollHandler);
        v18 = v17;
        if (v17)
        {
          [(NWStatsPollHandler *)v17 setDeliveryBlock:blockCopy];
          [(NWStatsPollHandler *)v18 setCompletionBlock:completionBlockCopy];
          [(NWStatsPollHandler *)v18 setManager:self];
          [(NWStatsPollHandler *)v18 setSynchronous:0];
          activePoll = [(NWStatsManager *)self activePoll];

          if (activePoll)
          {
            queuedPolls2 = [(NWStatsManager *)self queuedPolls];
            [queuedPolls2 addObject:v18];
          }

          else
          {
            [(NWStatsManager *)self _startPoll:v18];
          }

          v12 = 0;
        }

        else
        {
          v12 = 12;
        }
      }
    }

    else
    {
      v16 = NStatGetLog(configured);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22[0]) = 0;
        _os_log_impl(&dword_25BA3A000, v16, OS_LOG_TYPE_ERROR, "_refreshUsingBlock skipped as manager not yet configured", v22, 2u);
      }

      v12 = 19;
    }
  }

  else
  {
    v11 = NStatGetLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22[0] = 67109120;
      v22[1] = v9;
      _os_log_impl(&dword_25BA3A000, v11, OS_LOG_TYPE_ERROR, "_refreshUsingBlock skipped as current outstanding is %d", v22, 8u);
    }

    v12 = 35;
  }

  return v12;
}

- (int)_refreshSyncUsingBlock:(id)block
{
  blockCopy = block;
  configured = [(NWStatsManager *)self configured];
  if (configured)
  {
    isInvalidated = [(NWStatsManager *)self isInvalidated];
    if (isInvalidated)
    {
      v7 = NStatGetLog(isInvalidated);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "_refreshSyncUsingBlock skipped as manager was invalidated", buf, 2u);
      }

      v8 = 6;
    }

    else if (self->_handlingSocketReads)
    {
      v11 = NStatGetLog(isInvalidated);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_25BA3A000, v11, OS_LOG_TYPE_ERROR, "_refreshSyncUsingBlock abort to prevent deadlock", v17, 2u);
      }

      v8 = 11;
    }

    else
    {
      v12 = objc_alloc_init(NWStatsPollHandler);
      v13 = v12;
      if (v12)
      {
        [(NWStatsPollHandler *)v12 setDeliveryBlock:blockCopy];
        [(NWStatsPollHandler *)v13 setCompletionBlock:0];
        [(NWStatsPollHandler *)v13 setManager:self];
        [(NWStatsPollHandler *)v13 setSynchronous:1];
        activePoll = [(NWStatsManager *)self activePoll];

        if (activePoll)
        {
          queuedPolls = [(NWStatsManager *)self queuedPolls];
          [queuedPolls addObject:v13];
        }

        else
        {
          [(NWStatsManager *)self _startPoll:v13];
        }

        self->_handlingSocketReads = 1;
        while (1)
        {
          activePoll2 = [(NWStatsManager *)self activePoll];

          if (!activePoll2)
          {
            break;
          }

          [(NWStatsManager *)self _handleReads:1];
        }

        v8 = 0;
        self->_handlingSocketReads = 0;
      }

      else
      {
        v8 = 12;
      }
    }
  }

  else
  {
    v9 = NStatGetLog(configured);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_impl(&dword_25BA3A000, v9, OS_LOG_TYPE_ERROR, "_refreshSyncUsingBlock skipped as manager not yet configured", v19, 2u);
    }

    v8 = 19;
  }

  return v8;
}

- (void)ignoreSource:(unint64_t)source
{
  internalSources = [(NWStatsManager *)self internalSources];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:source];
  v8 = [internalSources objectForKey:v6];

  v7 = v8;
  if (v8)
  {
    [v8 setRemoving:1];
    [(NWStatsManager *)self _sendRemoveSource:source];
    v7 = v8;
  }
}

- (id)identifierForUUID:(id)d derivation:(int *)derivation
{
  dCopy = d;
  statsMonitor = [(NWStatsManager *)self statsMonitor];

  if (statsMonitor)
  {
    statsMonitor2 = [(NWStatsManager *)self statsMonitor];
    v9 = [statsMonitor2 identifierForUUID:dCopy derivation:derivation];
  }

  else
  {
    v9 = @"unavailable";
  }

  return v9;
}

- (id)stateDictionary
{
  statsMonitor = [(NWStatsManager *)self statsMonitor];
  stateDictionary = [statsMonitor stateDictionary];

  return stateDictionary;
}

- (id)getState
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  internalSources = [(NWStatsManager *)self internalSources];
  v6 = [v4 initWithFormat:@"NWStatsManager %p: Current num sources %d current buf size %d after %d adaptations", self, objc_msgSend(internalSources, "count"), self->_currentRcvBufSize, self->_numAdaptiveRcvBufIncrements];
  [v3 addObject:v6];

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NWStatsManager %p: Source removes %lld after filter %lld after drop %lld", self, self->_combinedCounts.numRemoveSources, self->_combinedCounts.numRemoveSourcesAfterFilter, self->_combinedCounts.numRemoveSourcesAfterDrop];
  [v3 addObject:v7];

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NWStatsManager %p: No-source removes %lld after filter %lld after drop %lld", self, self->_combinedCounts.numRemoves, self->_combinedCounts.numRemovesAfterFilter, self->_combinedCounts.numRemovesAfterDrop];
  [v3 addObject:v8];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  queuedPolls = [(NWStatsManager *)self queuedPolls];
  v10 = [queuedPolls countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v10)
  {
    v11 = v10;
    selfCopy = self;
    v13 = 0;
    v14 = *v57;
    do
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v57 != v14)
        {
          objc_enumerationMutation(queuedPolls);
        }

        v13 = *(*(&v56 + 1) + 8 * v15);

        v17 = [v13 description];
        [v3 addObject:v17];

        ++v15;
        v16 = v13;
      }

      while (v11 != v15);
      v11 = [queuedPolls countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v11);

    self = selfCopy;
  }

  v18 = &off_27996E108;
  p_numDetailsOnClose = &self->_providerCounts[1].numDetailsOnClose;
  for (i = 1; i != 11; ++i)
  {
    if (*(p_numDetailsOnClose - 4) || *(p_numDetailsOnClose - 3) || *(p_numDetailsOnClose - 2) || *(p_numDetailsOnClose - 1) || *p_numDetailsOnClose)
    {
      if (i >= 0xB)
      {
        v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown-%d", i];
      }

      else
      {
        v21 = *v18;
      }

      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NWStatsManager %p: %@ src-add %lld details open %lld poll %lld event %lld close %lld", self, v21, *(p_numDetailsOnClose - 4), *(p_numDetailsOnClose - 3), *(p_numDetailsOnClose - 2), *(p_numDetailsOnClose - 1), *p_numDetailsOnClose];
      [v3 addObject:v22];
    }

    ++v18;
    p_numDetailsOnClose += 5;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  selfCopy2 = self;
  obj = [(NWStatsManager *)self interfaceSources];
  v24 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v53;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v53 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NWStatsManager %p: monitoring interface %d with srcref %lld threshold %lld", selfCopy2, objc_msgSend(*(*(&v52 + 1) + 8 * j), "ifIndex"), objc_msgSend(*(*(&v52 + 1) + 8 * j), "srcRef"), objc_msgSend(*(*(&v52 + 1) + 8 * j), "threshold")];
        [v3 addObject:v28];
      }

      v25 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v25);
  }

  v29 = selfCopy2;
  internalSources2 = [(NWStatsManager *)selfCopy2 internalSources];
  allKeys = [internalSources2 allKeys];

  v45 = allKeys;
  [allKeys sortedArrayUsingSelector:sel_compare_];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obja = v51 = 0u;
  v32 = [obja countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v49;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(obja);
        }

        v36 = *(*(&v48 + 1) + 8 * k);
        v37 = objc_alloc(MEMORY[0x277CCACA8]);
        longLongValue = [v36 longLongValue];
        internalSources3 = [(NWStatsManager *)v29 internalSources];
        v40 = [internalSources3 objectForKeyedSubscript:v36];
        v41 = [v37 initWithFormat:@" ref %6lld --> %@", longLongValue, v40];
        [v3 addObject:v41];
      }

      v33 = [obja countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v33);
  }

  if (v29->_checkNESessionManagerVPNs)
  {
    v42 = +[NWStatsInterfaceRegistry sharedInstance];
    getState = [v42 getState];
    [v3 addObject:getState];
  }

  return v3;
}

- (void)dumpState
{
  v16 = *MEMORY[0x277D85DE8];
  getState = [(NWStatsManager *)self getState];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [getState countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(getState);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = NStatGetLog(v3);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v14 = v7;
          _os_log_impl(&dword_25BA3A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [getState countByEnumeratingWithState:&v9 objects:v15 count:16];
      v4 = v3;
    }

    while (v3);
  }
}

+ (id)getKernelMetrics:(id)metrics
{
  metricsCopy = metrics;
  v4 = metricsCopy;
  if (metricsCopy)
  {
    v5 = [metricsCopy objectForKeyedSubscript:@"kNtstatMetricsGlobal"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v5 BOOLValue];
      v6 = bOOLValue ^ 1;
    }

    else
    {
      bOOLValue = 0;
      v6 = 1;
    }

    v7 = [v4 objectForKeyedSubscript:@"kNtstatMetricsSelf"];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue2 = [v7 BOOLValue];
      v6 &= bOOLValue2 ^ 1;
    }

    else
    {
      bOOLValue2 = 0;
    }

    v9 = [v4 objectForKeyedSubscript:@"kNtstatMetricsCurrent"];

    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue3 = [v9 BOOLValue];
      v6 &= bOOLValue3 ^ 1;
    }

    else
    {
      bOOLValue3 = 0;
    }

    v11 = [v4 objectForKeyedSubscript:@"kNtstatMetricsPrevious"];

    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue4 = [v11 BOOLValue];
      v6 &= bOOLValue4 ^ 1;
    }

    else
    {
      bOOLValue4 = 0;
    }

    v13 = [v4 objectForKeyedSubscript:@"kNtstatMetricsGrandTotal"];

    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue5 = [v13 BOOLValue];
      v6 &= bOOLValue5 ^ 1;
    }

    else
    {
      bOOLValue5 = 0;
    }

    v15 = [v4 objectForKeyedSubscript:@"kNtstatMetricsReportZeroCounts"];

    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue6 = [v15 BOOLValue];
    }

    else
    {
      bOOLValue6 = 0;
    }

    v17 = [v4 objectForKeyedSubscript:@"kNtstatMetricsPid"];

    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      intValue = [v17 intValue];
      v6 = 0;
    }

    else
    {
      intValue = 0;
    }

    v18 = [v4 objectForKeyedSubscript:@"kNtstatMetricsSelf"];

    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue7 = [v18 BOOLValue];
      v20 = bOOLValue7 | bOOLValue2;
      v6 &= bOOLValue7 ^ 1;
    }

    else
    {
      v20 = bOOLValue2;
    }

    v21 = [v4 objectForKeyedSubscript:@"kNtstatMetricsProcessName"];

    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = v21;
      v6 = 0;
    }

    else
    {
      v22 = 0;
    }

    v23 = bOOLValue;
  }

  else
  {
    bOOLValue6 = 0;
    bOOLValue5 = 0;
    v20 = 0;
    bOOLValue4 = 0;
    bOOLValue3 = 0;
    v23 = 0;
    v22 = 0;
    intValue = 0;
    v6 = 1;
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = v24;
  if ((v6 & 1) != 0 || v23)
  {
    getGlobalMetrics(v24, bOOLValue6);
  }

  v26 = v6 | bOOLValue3;
  if (bOOLValue5)
  {
    getGrandTotalMetrics(v25, bOOLValue6);
  }

  v27 = v6 | bOOLValue4;
  if (v26)
  {
    getCurrentMetrics(v25, bOOLValue6);
    goto LABEL_53;
  }

  if (v22)
  {
    getProcessMetrics(v25, v22, bOOLValue6);
    goto LABEL_53;
  }

  if (v20)
  {
    v28 = getpid();
  }

  else
  {
    v28 = intValue;
    if (!intValue)
    {
      goto LABEL_53;
    }
  }

  getPidMetrics(v25, v28, bOOLValue6);
LABEL_53:
  if (v27)
  {
    getPreviousMetrics(v25, bOOLValue6);
  }

  return v25;
}

+ (void)dumpKernelMetrics:(id)metrics
{
  v36 = *MEMORY[0x277D85DE8];
  [self getKernelMetrics:metrics];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v21 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v21)
  {
    v20 = *v29;
    do
    {
      v3 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v28 + 1) + 8 * v3);
        v5 = [v4 objectForKeyedSubscript:@"kNtstatMetricIdPretty"];
        v6 = NStatGetLog(v5);
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        v23 = v3;
        if (v5)
        {
          if (v7)
          {
            *buf = 138543362;
            v34 = v5;
            v8 = v6;
            v9 = "Metric: %{public}@";
LABEL_11:
            _os_log_impl(&dword_25BA3A000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
          }
        }

        else if (v7)
        {
          *buf = 138543362;
          v34 = v4;
          v8 = v6;
          v9 = "Unknown metric: %{public}@";
          goto LABEL_11;
        }

        v22 = v5;

        v10 = [v4 objectForKeyedSubscript:@"kNtstatMetricItems"];
        v11 = v10;
        if (v10)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v24 + 1) + 8 * i) objectForKeyedSubscript:@"kNtstatMetricItemPretty"];
                v17 = v16;
                if (v16)
                {
                  v18 = NStatGetLog(v16);
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v34 = v17;
                    _os_log_impl(&dword_25BA3A000, v18, OS_LOG_TYPE_DEFAULT, "Metric:  %{public}@", buf, 0xCu);
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v13);
          }
        }

        v3 = v23 + 1;
      }

      while (v23 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v21);
  }
}

@end