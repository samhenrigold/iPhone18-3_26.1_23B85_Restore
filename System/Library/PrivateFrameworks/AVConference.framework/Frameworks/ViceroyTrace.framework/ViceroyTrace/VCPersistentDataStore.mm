@interface VCPersistentDataStore
- (VCPersistentDataStore)initWithIdentifier:(id)identifier;
- (void)closeDatabase;
- (void)dealloc;
- (void)deregisterDataProducerWithType:(int)type;
- (void)emptyBuffer;
- (void)finalizeInternal;
- (void)registerDataProducerWithType:(int)type producerCallback:(id)callback;
- (void)removeDatabaseFile;
- (void)runDataProducers;
@end

@implementation VCPersistentDataStore

- (VCPersistentDataStore)initWithIdentifier:(id)identifier
{
  kdebug_trace();
  v13.receiver = self;
  v13.super_class = VCPersistentDataStore;
  v5 = [(VCPersistentDataStore *)&v13 init];
  v6 = v5;
  if (!v5)
  {
    [VCPersistentDataStore initWithIdentifier:];
    goto LABEL_21;
  }

  if (!identifier)
  {
    [VCPersistentDataStore initWithIdentifier:v5];
    goto LABEL_21;
  }

  if (!+[VCDiskUtils createDefaultLogDirectoryIfNeeded])
  {
    [VCPersistentDataStore initWithIdentifier:v6];
    goto LABEL_21;
  }

  v6->_directory = +[VCDiskUtils getDefaultLogDumpPath];
  v7 = objc_alloc(MEMORY[0x277CCACA0]);
  v8 = [v7 initWithFormat:@"%@/%@_%@%s", v6->_directory, identifier, objc_msgSend(objc_msgSend(MEMORY[0x277CCAD70], "UUID"), "UUIDString"), ".db"];
  v6->_databasePath = v8;
  if (!v8)
  {
    [VCPersistentDataStore initWithIdentifier:v6];
    goto LABEL_21;
  }

  v9 = dispatch_queue_create("com.apple.VideoConference.DataStore", 0);
  v6->_dataStoreQueue = v9;
  if (!v9)
  {
    [VCPersistentDataStore initWithIdentifier:v6];
    goto LABEL_21;
  }

  v6->_currentBufferIndex = 0;
  v6->_insertStatements[0] = "INSERT INTO Feedback (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, rateControlTime, owrd, nowrd, nowrda, roundTripTime, roundTripTimeAverage, roundTripTimeMinEnvelope, audioPacketLossRate, audioPacketLossRateShort, videoPacketLossRate, ecnCERatio, bandwidthEstimate, trainingValue, trainingAction, trainingActionLogProbability) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
  v6->_insertStatements[1] = "INSERT INTO Baseband (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, radioTechnology, flushableQueueDepth, unflushableQueueDepth, averageBitrate, averageBitrateShort, averageBitrateLong, txBitrate, averageQueueDepth, expectedQueuingDelay, bdcd, normalizedBDCD, normalizedDelay) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
  v6->_insertStatements[2] = "INSERT INTO Network (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, nwConnectionTimestamp, frequencyBand, intermittentState, estimatedIntermittentPeriod, singleOutagePeriod, btCoex, radioCoex, qualityScoreDelayRx, qualityScoreDelayTx, qualityScoreLossRx, qualityScoreLossTx, qualityScoreChannel, offChannelTimeRatio, wlanDutyCycle, observedTxBitrateBE, observedTxBitrateBK, observedTxBitrateVI, observedTxBitrateVO, observedTxBitrateLLW0, observedTxBitrateLLW1) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
  v6->_insertStatements[3] = "INSERT INTO LocalRCEvents (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, bytesInFlight, bytesInFlightRollingAverage) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
  v6->_insertStatements[4] = "INSERT INTO RateControllerConfiguration (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, mode, localRAT, remoteRAT, minTargetBitrate, maxTargetBitrate, algorithmVersion) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
  v6->_insertStatements[5] = "INSERT INTO Metadata (conversationID, participantID, deviceClass) VALUES (?, ?, ?);";
  v10 = sqlite3_open([(NSString *)v6->_databasePath UTF8String], &v6->_database);
  if (v10)
  {
    v11 = v10;
    if (v10 != 101)
    {
      if ([(VCPersistentDataStore *)v6 initWithIdentifier:v10])
      {
        [(VCPersistentDataStore *)v6 initWithIdentifier:v11];
      }

      goto LABEL_19;
    }
  }

  sqlite3_exec(v6->_database, "BEGIN TRANSACTION;", 0, 0, 0);
  if (sqlite3_exec(v6->_database, "CREATE TABLE IF NOT EXISTS Feedback(state INT, timestamp DOUBLE, arrivalTime DOUBLE, targetBitrate INT, bitrate INT, basebandFlush INT, rateControlTime FLOAT(24,4), owrd FLOAT(24,4), nowrd FLOAT(24,4), nowrda FLOAT(24,4), roundTripTime FLOAT(24,4), roundTripTimeAverage FLOAT(24,4), roundTripTimeMinEnvelope FLOAT(24,4), audioPacketLossRate FLOAT(24,4), audioPacketLossRateShort FLOAT(24,4), videoPacketLossRate FLOAT(24,4), ecnCERatio FLOAT(24,4), bandwidthEstimate INT, trainingValue FLOAT(24, 4), trainingAction INT, trainingActionLogProbability FLOAT(24, 4));", 0, 0, 0))
  {
    [VCPersistentDataStore initWithIdentifier:?];
LABEL_19:
    sqlite3_close(v6->_database);
    v6->_database = 0;
    goto LABEL_20;
  }

  if (sqlite3_exec(v6->_database, "CREATE TABLE IF NOT EXISTS Network (state INT, timestamp DOUBLE, arrivalTime DOUBLE, targetBitrate INT, bitrate INT, basebandFlush INT, nwConnectionTimestamp BIGINT, frequencyBand INT, intermittentState INT, estimatedIntermittentPeriod INT, singleOutagePeriod INT, btCoex INT, radioCoex INT, qualityScoreDelayRx INT, qualityScoreDelayTx INT, qualityScoreLossRx INT, qualityScoreLossTx INT, qualityScoreChannel INT, offChannelTimeRatio FLOAT, wlanDutyCycle INT, observedTxBitrateBE INT, observedTxBitrateBK INT, observedTxBitrateVI INT, observedTxBitrateVO INT, observedTxBitrateLLW0 INT, observedTxBitrateLLW1 INT);", 0, 0, 0))
  {
    [VCPersistentDataStore initWithIdentifier:?];
    goto LABEL_19;
  }

  if (sqlite3_exec(v6->_database, "CREATE TABLE IF NOT EXISTS Baseband (state INT, timestamp DOUBLE, arrivalTime DOUBLE, targetBitrate INT, bitrate INT, basebandFlush INT, radioTechnology INT, flushableQueueDepth INT, unflushableQueueDepth INT, averageBitrate INT, averageBitrateShort INT, averageBitrateLong INT, txBitrate INT, averageQueueDepth DOUBLE, expectedQueuingDelay DOUBLE, bdcd DOUBLE, normalizedBDCD DOUBLE, normalizedDelay DOUBLE);", 0, 0, 0))
  {
    [VCPersistentDataStore initWithIdentifier:?];
    goto LABEL_19;
  }

  if (sqlite3_exec(v6->_database, "CREATE TABLE IF NOT EXISTS LocalRCEvents(state INT, timestamp DOUBLE, arrivalTime DOUBLE, targetBitrate INT, bitrate INT, basebandFlush INT, bytesInFlight INT, bytesInFlightRollingAverage INT);", 0, 0, 0))
  {
    [VCPersistentDataStore initWithIdentifier:?];
    goto LABEL_19;
  }

  if (sqlite3_exec(v6->_database, "CREATE TABLE IF NOT EXISTS RateControllerConfiguration(state INT, timestamp DOUBLE, arrivalTime DOUBLE, targetBitrate INT, bitrate INT, basebandFlush INT, mode INT, localRAT INT, remoteRAT INT, minTargetBitrate INT, maxTargetBitrate INT, algorithmVersion INT);", 0, 0, 0))
  {
    [VCPersistentDataStore initWithIdentifier:?];
    goto LABEL_19;
  }

  if (sqlite3_exec(v6->_database, "CREATE TABLE IF NOT EXISTS Metadata(conversationID TEXT, participantID TEXT, deviceClass INT);", 0, 0, 0))
  {
    [VCPersistentDataStore initWithIdentifier:?];
    goto LABEL_19;
  }

  sqlite3_exec(v6->_database, "END TRANSACTION;", 0, 0, 0);
  if (!v6->_database)
  {
LABEL_20:
    [VCPersistentDataStore initWithIdentifier:v6];
LABEL_21:

    return 0;
  }

  kdebug_trace();
  return v6;
}

- (void)dealloc
{
  conversationID = self->_dataCollectionMetadata.conversationID;
  if (conversationID)
  {
    CFRelease(conversationID);
  }

  participantID = self->_dataCollectionMetadata.participantID;
  if (participantID)
  {
    CFRelease(participantID);
  }

  dataStoreQueue = self->_dataStoreQueue;
  if (dataStoreQueue)
  {
    dispatch_release(dataStoreQueue);
  }

  v6.receiver = self;
  v6.super_class = VCPersistentDataStore;
  [(VCPersistentDataStore *)&v6 dealloc];
}

- (void)registerDataProducerWithType:(int)type producerCallback:(id)callback
{
  if (!type)
  {
    v5 = 8592;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v5 = 8600;
LABEL_5:
    *(&self->super.isa + v5) = [callback copy];
  }

  ++self->_numberOfRegisteredProducers;
}

- (void)deregisterDataProducerWithType:(int)type
{
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    v3 = 8600;
  }

  else
  {
    v3 = 8592;
  }

  *(&self->super.isa + v3) = 0;
LABEL_6:
  if (self->_numberOfRegisteredProducers)
  {
    --self->_numberOfRegisteredProducers;
  }
}

uint64_t __VCPersistentDataStore_Finalize_block_invoke(uint64_t a1)
{
  kdebug_trace();
  [*(a1 + 32) finalizeInternal];

  return kdebug_trace();
}

- (void)finalizeInternal
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)emptyBuffer
{
  dispatch_assert_queue_V2(self->_dataStoreQueue);
  if (self->_currentBufferIndex >= 1)
  {

    _VCPersistentDataStore_WriteBuffer(self);
  }
}

- (void)closeDatabase
{
  dispatch_assert_queue_V2(self->_dataStoreQueue);
  for (i = 0; i != 7; ++i)
  {
    v4 = self->_statementArray[i];
    if (v4)
    {
      sqlite3_finalize(v4);
    }
  }

  sqlite3_close(self->_database);
  self->_database = 0;
}

- (void)removeDatabaseFile
{
  v30 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dataStoreQueue);
  v15 = 0;
  [objc_msgSend(MEMORY[0x277CCAA08] "defaultManager")];
  if (!v15)
  {
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return;
    }

    v4 = VRTraceErrorLogLevelToCSTR(3u);
    v5 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    databasePath = self->_databasePath;
    localizedDescription = [v15 localizedDescription];
    *buf = 136316162;
    v17 = v4;
    v18 = 2080;
    v19 = "[VCPersistentDataStore removeDatabaseFile]";
    v20 = 1024;
    v21 = 198;
    v22 = 2112;
    v23 = databasePath;
    v24 = 2112;
    selfCopy = localizedDescription;
    v8 = " [%s] %s:%d Failed to delete database with databasePath=%@, error=%@";
    v9 = v5;
    v10 = 48;
LABEL_13:
    _os_log_error_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [(VCPersistentDataStore *)self performSelector:sel_logPrefix];
  }

  else
  {
    v3 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR(3u);
    v12 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v13 = self->_databasePath;
      localizedDescription2 = [v15 localizedDescription];
      *buf = 136316674;
      v17 = v11;
      v18 = 2080;
      v19 = "[VCPersistentDataStore removeDatabaseFile]";
      v20 = 1024;
      v21 = 198;
      v22 = 2112;
      v23 = v3;
      v24 = 2048;
      selfCopy = self;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = localizedDescription2;
      v8 = " [%s] %s:%d %@(%p) Failed to delete database with databasePath=%@, error=%@";
      v9 = v12;
      v10 = 68;
      goto LABEL_13;
    }
  }
}

- (void)runDataProducers
{
  v18 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      VRTraceErrorLogLevelToCSTR(7u);
      v5 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_0();
        v13 = 205;
        v6 = " [%s] %s:%d No registered producers";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR(7u);
      v10 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316162;
        v12 = v9;
        OUTLINED_FUNCTION_0();
        v13 = 205;
        v14 = 2112;
        v15 = v4;
        v16 = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) No registered producers";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  *a2 = 0;
}

void __VCPersistentDataStore_DumpMessage_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(a1 + 64);
  dispatch_assert_queue_V2(*(v2 + 8));
  v6 = *(v2 + 8472);
  if (!v6)
  {
    sqlite3_prepare_v2(*(v2 + 8424), *(v2 + 8528), -1, (v2 + 8472), 0);
    v6 = *(v2 + 8472);
  }

  if (sqlite3_bind_text(v6, 1, [v4 UTF8String], -1, 0))
  {
    __VCPersistentDataStore_DumpMessage_block_invoke_cold_1(v4);
  }

  else if (sqlite3_bind_text(*(v2 + 8472), 2, [v3 UTF8String], -1, 0))
  {
    __VCPersistentDataStore_DumpMessage_block_invoke_cold_2(v3);
  }

  else if (sqlite3_bind_int(*(v2 + 8472), 3, v5))
  {
    __VCPersistentDataStore_DumpMessage_block_invoke_cold_3();
  }

  else
  {
    v7 = sqlite3_step(*(v2 + 8472));
    if (v7 && (v8 = v7, v7 != 101))
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR(7u);
        v11 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315906;
          v15 = v10;
          v16 = 2080;
          v17 = "_VCPersistentDataStore_SaveMetadata";
          v18 = 1024;
          v19 = 318;
          v20 = 1024;
          v21 = v8;
          _os_log_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SQLite Error: could not execute statement with return code=%d", &v14, 0x22u);
        }
      }
    }

    else
    {
      v9 = sqlite3_reset(*(v2 + 8472));
      sqlite3_clear_bindings(*(v2 + 8472));
      if (!v9)
      {
        goto LABEL_14;
      }

      __VCPersistentDataStore_DumpMessage_block_invoke_cold_4();
    }
  }

  sqlite3_close(*(v2 + 8424));
  *(v2 + 8424) = 0;
LABEL_14:
  v12 = *(a1 + 48);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    CFRelease(v13);
  }
}

void __VCPersistentDataStore_DumpMessage_block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  v3 = v2 + 8 * *(a1 + 40);
  if (!*(v3 + 8432))
  {
    sqlite3_prepare_v2(*(v2 + 8424), *(v3 + 8488), -1, (v3 + 8432), 0);
    v2 = *(a1 + 32);
  }

  v14 = v1[8];
  v15 = v1[9];
  v16 = *(v1 + 20);
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  dispatch_assert_queue_V2(*(v2 + 8));
  v5 = v2 + 168 * *(v2 + 8416);
  *(v5 + 144) = v14;
  *(v5 + 160) = v15;
  *(v5 + 176) = v16;
  *(v5 + 80) = v10;
  *(v5 + 96) = v11;
  *(v5 + 112) = v12;
  *(v5 + 128) = v13;
  *(v5 + 16) = v6;
  *(v5 + 32) = v7;
  *(v5 + 48) = v8;
  *(v5 + 64) = v9;
  LODWORD(v5) = *(v2 + 8416) + 1;
  *(v2 + 8416) = v5;
  if (v5 == 50)
  {

    _VCPersistentDataStore_WriteBuffer(v2);
  }
}

- (void)initWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      return;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5_0();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_63())
  {
    OUTLINED_FUNCTION_64();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_8_4();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithIdentifier:(sqlite3 *)a1 .cold.2(sqlite3 **a1)
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      sqlite3_errmsg(*a1);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
    }
  }
}

- (void)initWithIdentifier:(sqlite3 *)a1 .cold.3(sqlite3 **a1)
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      sqlite3_errmsg(*a1);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
    }
  }
}

- (void)initWithIdentifier:(sqlite3 *)a1 .cold.4(sqlite3 **a1)
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      sqlite3_errmsg(*a1);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
    }
  }
}

- (void)initWithIdentifier:(sqlite3 *)a1 .cold.5(sqlite3 **a1)
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      sqlite3_errmsg(*a1);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
    }
  }
}

- (void)initWithIdentifier:(sqlite3 *)a1 .cold.6(sqlite3 **a1)
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      sqlite3_errmsg(*a1);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
    }
  }
}

- (void)initWithIdentifier:(sqlite3 *)a1 .cold.7(sqlite3 **a1)
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      sqlite3_errmsg(*a1);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
    }
  }
}

- (void)initWithIdentifier:(int)a3 .cold.8(void *a1, sqlite3 **a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    v6 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v6 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("") > 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR(7u);
    v8 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      sqlite3_errmsg(*a2);
      v12 = 136316674;
      v13 = v7;
      v14 = 2080;
      OUTLINED_FUNCTION_12();
      v15 = 331;
      v16 = 2112;
      v17 = v6;
      v18 = 2048;
      v19 = a1;
      v20 = v9;
      v21 = a3;
      v22 = v10;
      v23 = v11;
      _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@(%p) SQLite Error: could not open database with return code=%d error=%s", &v12, 0x40u);
    }
  }
}

- (BOOL)initWithIdentifier:(int)a3 .cold.9(uint64_t a1, sqlite3 **a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() != a1)
  {
    return 1;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    sqlite3_errmsg(*a2);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v11 = 331;
    v12 = v7;
    v13 = a3;
    v14 = v8;
    v15 = v9;
    _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SQLite Error: could not open database with return code=%d error=%s", v10, 0x2Cu);
  }

  return 0;
}

- (void)initWithIdentifier:(uint64_t)a1 .cold.10(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      return;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5_0();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_63())
  {
    OUTLINED_FUNCTION_64();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_8_4();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithIdentifier:(uint64_t)a1 .cold.11(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      return;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5_0();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_63())
  {
    OUTLINED_FUNCTION_64();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_8_4();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithIdentifier:(uint64_t)a1 .cold.12(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      return;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5_0();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_63())
  {
    OUTLINED_FUNCTION_64();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_8_4();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithIdentifier:(uint64_t)a1 .cold.13(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      VRTraceErrorLogLevelToCSTR(7u);
      v1 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_0();
        v7 = 66;
        v2 = " [%s] %s:%d Data store not available when no identifier string is provided";
        v3 = v1;
        v4 = 28;
LABEL_10:
        _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, v2, v6, v4);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_63())
    {
      OUTLINED_FUNCTION_64();
    }

    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      VRTraceErrorLogLevelToCSTR(7u);
      v5 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_4();
        v2 = " [%s] %s:%d %@(%p) Data store not available when no identifier string is provided";
        v3 = v5;
        v4 = 48;
        goto LABEL_10;
      }
    }
  }
}

- (void)initWithIdentifier:.cold.14()
{
  if (!objc_opt_class())
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      return;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5_0();
    v5 = 28;
LABEL_11:
    _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [0 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_6_0();
      v5 = 48;
      goto LABEL_11;
    }
  }
}

void __VCPersistentDataStore_DumpMessage_block_invoke_cold_1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      [a1 UTF8String];
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }
}

void __VCPersistentDataStore_DumpMessage_block_invoke_cold_2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      [a1 UTF8String];
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }
}

void __VCPersistentDataStore_DumpMessage_block_invoke_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

void __VCPersistentDataStore_DumpMessage_block_invoke_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

@end