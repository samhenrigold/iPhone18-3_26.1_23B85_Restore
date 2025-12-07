@interface AVCBasebandCongestionDetector
- (AVCBasebandCongestionDetector)init;
- (BOOL)processBasebandNotification:(id *)notification arrivalTime:(double)time error:(id *)error;
- (BOOL)processBasebandNotification:(id)notification metaData:(id)data error:(id *)error;
- (BOOL)processRateControlMessageArray:(id)array type:(unsigned int)type;
- (void)dealloc;
- (void)dumpNWConnectionBasebandLossMessage:(tagVCStatisticsMessage *)message;
- (void)printFlushAckToBasebandDump:(unsigned __int8)dump transactionID:(unsigned __int16)d packetDropped:(unsigned __int16)dropped sequenceNumberArray:(unsigned __int16 *)array;
- (void)processBasebandAck:(id *)ack;
- (void)processNWConnectionBasebandStatisticsMessage:(tagVCStatisticsMessage *)message;
- (void)setMediaController:(id)controller;
- (void)setRadioAccessTechnology:(unsigned int)technology;
- (void)start;
- (void)stop;
@end

@implementation AVCBasebandCongestionDetector

- (AVCBasebandCongestionDetector)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = AVCBasebandCongestionDetector;
  v2 = [(AVCBasebandCongestionDetector *)&v4 init];
  if (v2)
  {
    v2->_basebandMetrics = objc_alloc_init(VCBasebandMetrics);
  }

  return v2;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVCBasebandCongestionDetector dealloc]";
      v10 = 1024;
      v11 = 357;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Releasing baseband congestion detector:%p", buf, 0x26u);
    }
  }

  v5.receiver = self;
  v5.super_class = AVCBasebandCongestionDetector;
  [(AVCBasebandCongestionDetector *)&v5 dealloc];
}

- (void)start
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (!self->_isStarted)
  {
    self->_isStarted = 1;
    v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    statisticsCollector = self->_statisticsCollector;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__AVCBasebandCongestionDetector_start__block_invoke;
    v5[3] = &unk_1E85F3998;
    v5[4] = v3;
    self->_statisticsHandlerIndex = [(AVCStatisticsCollector *)statisticsCollector registerStatisticsChangeHandlerWithType:12 handler:v5];
  }
}

void __38__AVCBasebandCongestionDetector_start__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E1289F20]([*(a1 + 32) weak]);
  v4 = *(a2 + 176);
  v10[10] = *(a2 + 160);
  v10[11] = v4;
  v11 = *(a2 + 192);
  v5 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v5;
  v6 = *(a2 + 144);
  v10[8] = *(a2 + 128);
  v10[9] = v6;
  v7 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v7;
  v8 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v8;
  v9 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v9;
  [v3 processNWConnectionBasebandStatisticsMessage:v10];
  if (v3)
  {
    CFRelease(v3);
  }
}

- (void)stop
{
  if (self->_isStarted)
  {
    self->_isStarted = 0;
    [(AVCStatisticsCollector *)self->_statisticsCollector unregisterStatisticsChangeHandlerWithType:12 handlerIndex:self->_statisticsHandlerIndex];
  }
}

- (void)setMediaController:(id)controller
{
  controllerCopy = controller;
  self->_mediaController = controllerCopy;
  basebandMetrics = self->_basebandMetrics;

  [(VCBasebandMetrics *)basebandMetrics setMediaController:controllerCopy];
}

- (void)setRadioAccessTechnology:(unsigned int)technology
{
  v3 = *&technology;
  v5 = [(AVCBasebandCongestionDetector *)self isRadioAccessTechnologyOnCellular:self->_radioAccessTechnology];
  v6 = [(AVCBasebandCongestionDetector *)self isRadioAccessTechnologyOnCellular:v3];
  if (!v5 && v6)
  {
    [(VCBasebandMetrics *)self->_basebandMetrics resetBBNoteHistoryList];
  }

  self->_radioAccessTechnology = v3;
}

- (void)processNWConnectionBasebandStatisticsMessage:(tagVCStatisticsMessage *)message
{
  v34 = *MEMORY[0x1E69E9840];
  if (message->type == 12)
  {
    if (message->var0.nwConnection.interfaceType == 2)
    {
      if (message->var0.nwConnection.packetLossPerFrame)
      {
        ++self->_basebandDropPacketCount;
        [(VCRateControlMediaController *)self->_mediaController updateBasebandDropPacketCountWithPayloadType:message->var0.nwConnection.notificationType sequenceNumber:message->var0.nwConnection.sequenceNumber];
        v5 = *(&message->var0.addRemoveEndPoint + 19);
        v31 = *(&message->var0.addRemoveEndPoint + 17);
        v32 = v5;
        v33 = *(&message->var0.addRemoveEndPoint + 21);
        v6 = *(&message->var0.addRemoveEndPoint + 11);
        v27 = *(&message->var0.addRemoveEndPoint + 9);
        v28 = v6;
        v7 = *(&message->var0.addRemoveEndPoint + 15);
        v29 = *(&message->var0.addRemoveEndPoint + 13);
        v30 = v7;
        v8 = *(&message->var0.addRemoveEndPoint + 3);
        *&buf[32] = *&message->var0.rtcpRR.lastSequenceNumber;
        v24 = v8;
        v9 = *(&message->var0.addRemoveEndPoint + 7);
        v25 = *(&message->var0.addRemoveEndPoint + 5);
        v26 = v9;
        v10 = *&message->isVCRCInternal;
        *buf = *&message->type;
        *&buf[16] = v10;
        [(AVCBasebandCongestionDetector *)self dumpNWConnectionBasebandLossMessage:buf];
      }

      else
      {
        if (message->var0.nwConnection.notificationType != 1 && VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            notificationType = message->var0.nwConnection.notificationType;
            *buf = 136315906;
            *&buf[4] = v11;
            *&buf[12] = 2080;
            *&buf[14] = "[AVCBasebandCongestionDetector processNWConnectionBasebandStatisticsMessage:]";
            *&buf[22] = 1024;
            *&buf[24] = 412;
            *&buf[28] = 1024;
            *&buf[30] = notificationType;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Get non-CRA type nwConnection baseband notification, type=%d!", buf, 0x22u);
          }
        }

        bzero(&v15, 0x17A0uLL);
        v15 = 4;
        arrivalTime = message->arrivalTime;
        timestamp = message->var0.nwConnection.timestamp;
        totalByteCount = message->var0.nwConnection.totalByteCount;
        v22 = timestamp;
        averageQueueDepth = message->var0.baseband.averageQueueDepth;
        frequencyBand = message->var0.nwConnection.var0.wifi.frequencyBand;
        linkID = message->var0.serverStats.linkID;
        v19 = message->var0.nwConnection.notificationType;
        [(AVCBasebandCongestionDetector *)self processBasebandNotification:&v15 arrivalTime:0 error:?];
      }
    }

    else
    {
      [AVCBasebandCongestionDetector processNWConnectionBasebandStatisticsMessage:];
    }
  }

  else
  {
    [AVCBasebandCongestionDetector processNWConnectionBasebandStatisticsMessage:];
  }
}

- (void)dumpNWConnectionBasebandLossMessage:(tagVCStatisticsMessage *)message
{
  logBasebandDump = self->_logBasebandDump;
  if (logBasebandDump)
  {
    VRLogfilePrintWithTimestamp(logBasebandDump, "[Baseband drop packet count=%u, timestamp=0x%llX, seq=0x%X, type=%u]\n", self->_basebandDropPacketCount, message->var0.nwConnection.timestamp, message->var0.nwConnection.sequenceNumber, message->var0.nwConnection.notificationType);
  }
}

- (BOOL)processBasebandNotification:(id)notification metaData:(id)data error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  bytes = [notification bytes];
  v10 = [notification length];
  [objc_msgSend(data objectForKeyedSubscript:{@"MetaDataMessageArrivalTime", "doubleValue"}];
  v12 = v11;
  self->_notificationArrivalTime = v11;
  bzero(v14, 0x17A0uLL);
  VCBasebandNotificationParser_ParseNotification(bytes, v10, v14, v12);
  return [(AVCBasebandCongestionDetector *)self processBasebandNotification:v14 arrivalTime:error error:self->_notificationArrivalTime];
}

- (BOOL)processBasebandNotification:(id *)notification arrivalTime:(double)time error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  self->_notificationArrivalTime = time;
  var0 = notification->var0;
  if (notification->var0 == 1 || var0 == 4)
  {
    self->_basebandNotificationType = var0;
    v22 = unk_1DBD49810;
    v23 = xmmword_1DBD49820;
    memset(v24, 170, sizeof(v24));
    v19 = unk_1DBD497D0;
    v20 = xmmword_1DBD497E0;
    memset(v21, 170, sizeof(v21));
    v18[0] = xmmword_1DBD49780;
    memset(&v18[1], 170, 64);
    basebandMetrics = self->_basebandMetrics;
    if (basebandMetrics)
    {
      objc_msgSend_getBasebandMetricsWithNotification_(basebandMetrics, a2, notification, error);
    }

    else
    {
      v23 = 0u;
      memset(v24, 0, sizeof(v24));
      v22 = 0u;
      v20 = 0u;
      memset(v21, 0, sizeof(v21));
      v19 = 0u;
      memset(v18, 0, sizeof(v18));
    }

    if (self->_mode - 1 <= 3)
    {
      BYTE2(v18[1]) = 1;
    }

    if (notification->var0 == 4)
    {
      LOBYTE(v18[1]) = 1;
    }

    v10 = *&v18[2];
    v11 = *&v18[4];
    *&self->_basebandTxBitrate = *&v18[2];
    v12 = v18[0];
    self->_basebandQueueDepth = HIDWORD(v18[1]) + DWORD2(v18[1]);
    self->_basebandExpectedQueuingDelay = v11;
    if (v12 == 1)
    {
      if (*(v18 + 1) == 0.0)
      {
        logBasebandDump = self->_logBasebandDump;
        if (logBasebandDump)
        {
          VRLogfilePrintWithTimestamp(logBasebandDump, "[Baseband notification too close to the previous one, discard]\n", *(v18 + 1));
        }
      }

      else
      {
        if ([(VCRateControlMediaController *)self->_mediaController basebandFlushCount]> 0 || !DWORD1(v18[2]))
        {
          [(VCBasebandMetrics *)self->_basebandMetrics resetBDCDList];
          v15 = self->_logBasebandDump;
          if (v15)
          {
            basebandFlushCount = [(VCRateControlMediaController *)self->_mediaController basebandFlushCount];
            VRLogfilePrintWithTimestamp(v15, "Start re-collecting BDCD samples [flushCount %d, BBAvgTxRate %d].\n", basebandFlushCount, DWORD1(v18[2]));
          }
        }

        AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, v18);
      }
    }

    else
    {
      v14 = self->_logBasebandDump;
      if (v14)
      {
        VRLogfilePrintWithTimestamp(v14, "[Bogus baseband notification, discard]\n", v10);
      }
    }
  }

  else if (var0 == 2)
  {
    [(AVCBasebandCongestionDetector *)self processBasebandAck:notification, error];
  }

  return 1;
}

- (BOOL)processRateControlMessageArray:(id)array type:(unsigned int)type
{
  v16 = *MEMORY[0x1E69E9840];
  if (type != 7)
  {
    return 0;
  }

  bzero(&v9, 0x17A0uLL);
  v9 = 1;
  [objc_msgSend(array objectAtIndexedSubscript:{5), "doubleValue"}];
  v7 = v6;
  v10 = v6;
  v15 = [objc_msgSend(array objectAtIndexedSubscript:{0), "unsignedLongLongValue"}];
  v14 = [objc_msgSend(array objectAtIndexedSubscript:{2), "unsignedLongLongValue"}];
  v11 = [objc_msgSend(array objectAtIndexedSubscript:{1), "unsignedIntValue"}];
  v12 = [objc_msgSend(array objectAtIndexedSubscript:{3), "unsignedIntValue"}];
  v13 = [objc_msgSend(array objectAtIndexedSubscript:{4), "unsignedIntValue"}];
  return [(AVCBasebandCongestionDetector *)self processBasebandNotification:&v9 arrivalTime:0 error:v7];
}

- (void)processBasebandAck:(id *)ack
{
  [(VCRateControlMediaController *)self->_mediaController decreaseFlushCount:1];
  v5 = bswap32(ack->var3.var0.var0) >> 16;
  if (ack->var3.var1.var1)
  {
    if (ack->var3.var1.var1 == 0xFFFF)
    {
      logBasebandDump = self->_logBasebandDump;
      if (logBasebandDump)
      {
        VRLogfilePrintWithTimestamp(logBasebandDump, "TID[%04X] Baseband Drop ACK reported failure\n");
      }
    }

    else
    {
      var2 = ack->var3.var0.var2;
      if (ack->var3.var0.var2)
      {
        v9 = 0;
        v10 = &ack->var3.var2 + 10;
        do
        {
          v11 = *(v10 - 1);
          if (v11 <= 0x1F3)
          {
            v12 = *(v10 - 4);
            [(VCRateControlMediaController *)self->_mediaController didMediaGetFlushedWithPayloadType:v12 transactionID:v5 packetDropped:*(v10 - 1) sequenceNumberArray:v10];
            [(AVCBasebandCongestionDetector *)self printFlushAckToBasebandDump:v12 transactionID:v5 packetDropped:v11 sequenceNumberArray:v10];
            var2 = ack->var3.var0.var2;
          }

          ++v9;
          v10 += 1004;
        }

        while (v9 < var2);
      }
    }
  }

  else
  {
    v7 = self->_logBasebandDump;
    if (v7)
    {
      VRLogfilePrintWithTimestamp(v7, "TID[%04X] Baseband Drop ACK no packet dropped\n");
    }
  }
}

- (void)printFlushAckToBasebandDump:(unsigned __int8)dump transactionID:(unsigned __int16)d packetDropped:(unsigned __int16)dropped sequenceNumberArray:(unsigned __int16 *)array
{
  logBasebandDump = self->_logBasebandDump;
  if (logBasebandDump)
  {
    droppedCopy = dropped;
    dCopy = d;
    dumpCopy = dump;
    if (dropped)
    {
      droppedCopy2 = dropped;
      v13 = &stru_1F570E008;
      do
      {
        v14 = *array++;
        v13 = [(__CFString *)v13 stringByAppendingFormat:@"%04X ", v14];
        --droppedCopy2;
      }

      while (droppedCopy2);
      logBasebandDump = self->_logBasebandDump;
      if (!v13)
      {
        v15 = "<nil>";
LABEL_9:
        VRLogfilePrintWithTimestamp(logBasebandDump, "TID[%04X] Baseband Drop ACK for PT %u: %2u packets dropped [%s]\n", dCopy, dumpCopy, droppedCopy, v15);
        return;
      }
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    v15 = [-[__CFString description](v13 "description")];
    goto LABEL_9;
  }
}

- (void)processNWConnectionBasebandStatisticsMessage:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v0, v1, "AVCRC [%s] %s:%d Unexpected statistics type=%d", v2, v3, v4, v5);
    }
  }
}

- (void)processNWConnectionBasebandStatisticsMessage:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v0, v1, "AVCRC [%s] %s:%d Unexpected nwConnection interface type=%d", v2, v3, v4, v5);
    }
  }
}

@end