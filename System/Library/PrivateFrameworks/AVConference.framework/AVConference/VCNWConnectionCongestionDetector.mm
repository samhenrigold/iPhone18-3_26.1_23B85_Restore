@interface VCNWConnectionCongestionDetector
- (BOOL)processNWConnectionNotification:(tagVCNWConnectionNotification *)notification;
- (BOOL)processNWConnectionPacketEvent:(packet_id *)event eventType:(int)type;
- (void)dealloc;
- (void)sendCongestionEventWithTimestamp:(unsigned int)timestamp;
@end

@implementation VCNWConnectionCongestionDetector

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCNWConnectionCongestionDetector;
  [(VCNWConnectionCongestionDetector *)&v3 dealloc];
}

- (BOOL)processNWConnectionNotification:(tagVCNWConnectionNotification *)notification
{
  v32 = *MEMORY[0x1E69E9840];
  if (!notification)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCNWConnectionCongestionDetector processNWConnectionNotification:v6];
      }
    }

    return 0;
  }

  if (notification->version >= 3u)
  {
    logNWDump = self->_logNWDump;
    if (logNWDump)
    {
      VRLogfilePrint(logNWDump, "NWConnection notification has a bad version: %d\n");
    }

    return 0;
  }

  timestamp = notification->var1.advisory.timestamp;
  v8 = self->_previousStatistics.var0.nwConnection.timestamp;
  if (timestamp == v8 || (timestamp - v8) >> 32 != 0)
  {
    v10 = self->_logNWDump;
    if (v10)
    {
      VRLogfilePrint(v10, "NWConnection notifications have identical timestamps or out of order [current timestamp:%llu, previous timestamp:%llu]\n");
    }

    return 0;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  *&v27[16] = 0u;
  v28 = 0u;
  v26 = 0u;
  *v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  memset(v23, 0, sizeof(v23));
  *&v21 = 11;
  v22 = 0u;
  *(&v21 + 1) = micro(self, a2);
  v11 = 1;
  BYTE2(v22) = 1;
  WORD4(v22) = *&notification->var1.advisory.version;
  *&v23[0] = timestamp;
  *(v23 + 8) = *(&notification->var1.thermalUpdate + 1);
  *(&v23[1] + 1) = *(&notification->var1.thermalUpdate + 5);
  LODWORD(v24) = notification->var1.advisory.average_delay;
  maxAveragePacketDelayMs = v24;
  *(&v24 + 1) = notification->var1.advisory.average_throughput;
  LODWORD(v25) = notification->var1.advisory.rate_trend_suggestion;
  v14 = *(&notification->var1.thermalUpdate + 65);
  *&v27[24] = *(&notification->var1.thermalUpdate + 81);
  *&v27[8] = v14;
  self->_averageThroughputBps = DWORD2(v24);
  self->_averagePacketDelayMs = maxAveragePacketDelayMs;
  if (self->_maxAveragePacketDelayMs > maxAveragePacketDelayMs)
  {
    maxAveragePacketDelayMs = self->_maxAveragePacketDelayMs;
  }

  self->_maxAveragePacketDelayMs = maxAveragePacketDelayMs;
  AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, &v21);
  v15 = v30;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 17) = v29;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 19) = v15;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 21) = v31;
  v16 = *v27;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 9) = v26;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 11) = v16;
  v17 = v28;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 13) = *&v27[16];
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 15) = v17;
  v18 = v23[1];
  *&self->_previousStatistics.var0.rtcpRR.lastSequenceNumber = v23[0];
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 3) = v18;
  v19 = v25;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 5) = v24;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 7) = v19;
  v20 = v22;
  *&self->_previousStatistics.type = v21;
  *&self->_previousStatistics.isVCRCInternal = v20;
  return v11;
}

- (BOOL)processNWConnectionPacketEvent:(packet_id *)event eventType:(int)type
{
  if (!event)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      LODWORD(logNWDump) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!logNWDump)
      {
        return logNWDump;
      }

      [VCNWConnectionCongestionDetector processNWConnectionPacketEvent:v9 eventType:?];
    }

LABEL_12:
    LOBYTE(logNWDump) = 0;
    return logNWDump;
  }

  if (event->var0 != 1)
  {
    logNWDump = self->_logNWDump;
    if (!logNWDump)
    {
      return logNWDump;
    }

    VRLogfilePrint(logNWDump, "NWConnection packet event has a bad version: %d, type: %d\n", event->var0, type);
    goto LABEL_12;
  }

  lastTimestampWithPacketDrop = self->_lastTimestampWithPacketDrop;
  ++self->_packetDropCount;
  if (lastTimestampWithPacketDrop == event->var3)
  {
    v8 = self->_packetDropCountPerFrame + 1;
    self->_packetDropCountPerFrame = v8;
    if (!self->_didSendCongestionEvent && v8 >= 0xB)
    {
      self->_didSendCongestionEvent = 1;
      [(VCNWConnectionCongestionDetector *)self sendCongestionEventWithTimestamp:?];
    }
  }

  else
  {
    self->_packetDropCountPerFrame = 1;
    self->_lastTimestampWithPacketDrop = event->var3;
    self->_didSendCongestionEvent = 0;
  }

  v11 = self->_logNWDump;
  if (v11)
  {
    VRLogfilePrint(v11, "NWConnection packet NACK event [type:%d, timestamp:%u, identifier:%u, seq:%u, dropCountPerFrame:%d, dropCount:%d, congestionEvent:%d]\n", type, event->var3, event->var4, event->var2, self->_packetDropCountPerFrame, self->_packetDropCount, self->_didSendCongestionEvent);
  }

  LOBYTE(logNWDump) = 1;
  return logNWDump;
}

- (void)sendCongestionEventWithTimestamp:(unsigned int)timestamp
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6[0] = 11;
  v7 = 0u;
  v6[1] = micro(self, a2);
  BYTE2(v7) = 1;
  *&v8 = timestamp;
  packetDropCountPerFrame = self->_packetDropCountPerFrame;
  LODWORD(v11) = 0x80000000;
  DWORD1(v11) = packetDropCountPerFrame;
  AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, v6);
}

- (void)processNWConnectionNotification:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 50;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d NWConnection notification is nil", &v2, 0x1Cu);
}

- (void)processNWConnectionPacketEvent:(uint64_t)a1 eventType:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 97;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d NWConnection packet event is nil", &v2, 0x1Cu);
}

@end