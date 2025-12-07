@interface VCRemoteDataCollectionDumpProducer
- (BOOL)writeVCRCMLDumpToCSVPath:(id)path;
- (VCRemoteDataCollectionDumpProducer)initWithDataStore:(id)store;
- (id)newHeaderString;
- (void)coreAnalyticsCallback:(id)callback fileHandle:(id)handle;
- (void)createDumpAndSubmitToCoreAnalytics;
- (void)dealloc;
- (void)newHeaderString;
- (void)removeDatabaseFile;
- (void)runPostProcessing:(id)processing;
- (void)submitToCoreAnalytics:(id)analytics;
@end

@implementation VCRemoteDataCollectionDumpProducer

- (VCRemoteDataCollectionDumpProducer)initWithDataStore:(id)store
{
  v10.receiver = self;
  v10.super_class = VCRemoteDataCollectionDumpProducer;
  v4 = [(VCRemoteDataCollectionDumpProducer *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_dataStore = store;
    storeCopy = store;
    v7 = [VCWeakObjectHolder weakObjectHolderWithObject:v5];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__VCRemoteDataCollectionDumpProducer_initWithDataStore___block_invoke;
    v9[3] = &unk_278BD4868;
    v9[4] = v7;
    [(VCPersistentDataStore *)v5->_dataStore registerDataProducerWithType:0 producerCallback:v9];
  }

  else
  {
    [VCRemoteDataCollectionDumpProducer initWithDataStore:];
  }

  return v5;
}

uint64_t __56__VCRemoteDataCollectionDumpProducer_initWithDataStore___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) strong];

  return [v3 runPostProcessing:a2];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCRemoteDataCollectionDumpProducer;
  [(VCRemoteDataCollectionDumpProducer *)&v3 dealloc];
}

- (void)runPostProcessing:(id)processing
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [processing copy];
  self->_databasePath = v4;
  v5 = sqlite3_open([(NSString *)v4 UTF8String], &self->_database);
  if (!v5 || (v6 = v5, v5 == 101))
  {
    [(VCRemoteDataCollectionDumpProducer *)self createDumpAndSubmitToCoreAnalytics];
    goto LABEL_4;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR(7u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sqlite3_errmsg(self->_database);
        v17 = 136316162;
        v18 = v8;
        v19 = 2080;
        v20 = "[VCRemoteDataCollectionDumpProducer runPostProcessing:]";
        v21 = 1024;
        v22 = 71;
        v23 = 1024;
        *v24 = v6;
        *&v24[4] = 2080;
        *&v24[6] = v10;
        v11 = " [%s] %s:%d SQLite Error: could not open database with return code=%d error=%s";
        v12 = v9;
        v13 = 44;
LABEL_15:
        _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR(7u);
      v15 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = sqlite3_errmsg(self->_database);
        v17 = 136316674;
        v18 = v14;
        v19 = 2080;
        v20 = "[VCRemoteDataCollectionDumpProducer runPostProcessing:]";
        v21 = 1024;
        v22 = 71;
        v23 = 2112;
        *v24 = v7;
        *&v24[8] = 2048;
        *&v24[10] = self;
        v25 = 1024;
        v26 = v6;
        v27 = 2080;
        v28 = v16;
        v11 = " [%s] %s:%d %@(%p) SQLite Error: could not open database with return code=%d error=%s";
        v12 = v15;
        v13 = 64;
        goto LABEL_15;
      }
    }
  }

LABEL_4:
  sqlite3_close(self->_database);
  self->_database = 0;
  [(VCRemoteDataCollectionDumpProducer *)self removeDatabaseFile];
}

- (void)createDumpAndSubmitToCoreAnalytics
{
  OUTLINED_FUNCTION_16_1();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_19())
    {
      return;
    }

    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_6_0();
    v6 = 48;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_19_1())
  {
    OUTLINED_FUNCTION_18_1();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_10_0();
      v6 = 68;
      goto LABEL_11;
    }
  }
}

- (void)submitToCoreAnalytics:(id)analytics
{
  v20 = *MEMORY[0x277D85DE8];
  v8[5] = analytics;
  v9 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__VCRemoteDataCollectionDumpProducer_submitToCoreAnalytics___block_invoke;
  v8[3] = &unk_278BD53E0;
  v8[4] = self;
  if ([MEMORY[0x277D36B68] createForSubmission:@"240" metadata:0 options:0 error:&v9 writing:v8])
  {
    v4 = v9 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [VCRemoteDataCollectionDumpProducer submitToCoreAnalytics:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR(3u);
        v7 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v11 = v6;
          v12 = 2080;
          v13 = "[VCRemoteDataCollectionDumpProducer submitToCoreAnalytics:]";
          v14 = 1024;
          v15 = 101;
          v16 = 2112;
          v17 = v5;
          v18 = 2048;
          selfCopy = self;
          _os_log_error_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Submission to Core Analytics failed", buf, 0x30u);
        }
      }
    }
  }
}

- (void)coreAnalyticsCallback:(id)callback fileHandle:(id)handle
{
  v36 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v7 = fopen([callback UTF8String], "r");
  if (v7)
  {
    v8 = v7;
    v9 = fdopen([handle fileDescriptor], "w");
    if (v9)
    {
      v10 = v9;
      if ((VCDiskUtils_FileZipToFile() & 0x80000000) != 0)
      {
        [VCRemoteDataCollectionDumpProducer coreAnalyticsCallback:? fileHandle:?];
      }

      fclose(v8);
      fclose(v10);
    }

    else
    {
      [VCRemoteDataCollectionDumpProducer coreAnalyticsCallback:fileHandle:];
    }
  }

  else
  {
    [VCRemoteDataCollectionDumpProducer coreAnalyticsCallback:fileHandle:];
  }

  [objc_msgSend(MEMORY[0x277CCAA08] "defaultManager")];
  if (v21)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule("") < 3)
      {
        return;
      }

      v12 = VRTraceErrorLogLevelToCSTR(3u);
      v13 = gVRTraceOSLog;
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      localizedDescription = [v21 localizedDescription];
      *buf = 136316162;
      v23 = v12;
      v24 = 2080;
      v25 = "[VCRemoteDataCollectionDumpProducer coreAnalyticsCallback:fileHandle:]";
      v26 = 1024;
      v27 = 127;
      v28 = 2112;
      callbackCopy = callback;
      v30 = 2112;
      selfCopy = localizedDescription;
      v15 = " [%s] %s:%d Failed to delete file on csvPath=%@, error=%@";
      v16 = v13;
      v17 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") < 3)
      {
        return;
      }

      v18 = VRTraceErrorLogLevelToCSTR(3u);
      v19 = gVRTraceOSLog;
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      localizedDescription2 = [v21 localizedDescription];
      *buf = 136316674;
      v23 = v18;
      v24 = 2080;
      v25 = "[VCRemoteDataCollectionDumpProducer coreAnalyticsCallback:fileHandle:]";
      v26 = 1024;
      v27 = 127;
      v28 = 2112;
      callbackCopy = v11;
      v30 = 2048;
      selfCopy = self;
      v32 = 2112;
      callbackCopy2 = callback;
      v34 = 2112;
      v35 = localizedDescription2;
      v15 = " [%s] %s:%d %@(%p) Failed to delete file on csvPath=%@, error=%@";
      v16 = v19;
      v17 = 68;
    }

    _os_log_error_impl(&dword_23D4DF000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
  }
}

- (BOOL)writeVCRCMLDumpToCSVPath:(id)path
{
  v36 = *MEMORY[0x277D85DE8];
  p_database = &self->_database;
  if (sqlite3_exec(self->_database, "CREATE TABLE VCRCMLoutput (state INT, timestamp DOUBLE, arrivalTime DOUBLE, targetBitrate INT, bitrate INT, basebandFlush INT, rateControlTime FLOAT(24,4), owrd FLOAT(24,4), nowrd FLOAT(24,4), nowrda FLOAT(24,4), roundTripTime FLOAT(24,4), roundTripTimeAverage FLOAT(24,4), roundTripTimeMinEnvelope FLOAT(24,4), audioPacketLossRate FLOAT(24,4), audioPacketLossRateShort FLOAT(24,4), videoPacketLossRate FLOAT(24,4), ecnCERatio FLOAT(24,4), bandwidthEstimate INT, nwConnectionTimestamp BIGINT, frequencyBand INT, intermittentState INT, estimatedIntermittentPeriod INT, singleOutagePeriod INT, btCoex INT, radioCoex INT, qualityScoreDelayRx INT, qualityScoreDelayTx INT, qualityScoreLossRx INT, qualityScoreLossTx INT, qualityScoreChannel INT, offChannelTimeRatio FLOAT, wlanDutyCycle INT, observedTxBitrateBE INT, observedTxBitrateBK INT, observedTxBitrateVI INT, observedTxBitrateVO INT, observedTxBitrateLLW0 INT, observedTxBitrateLLW1 INT, radioTechnology INT, flushableQueueDepth INT, unflushableQueueDepth INT, averageBitrate INT, averageBitrateShort INT, averageBitrateLong INT, txBitrate INT, averageQueueDepth DOUBLE, expectedQueuingDelay DOUBLE, bdcd DOUBLE, normalizedBDCD DOUBLE, normalizedDelay DOUBLE, bytesInFlight INT, bytesInFlightRollingAverage INT, mode INT, localRAT INT, remoteRAT INT, minTargetBitrate INT, maxTargetBitrate INT, algorithmVersion INT, trainingValue FLOAT(24, 4), trainingAction INT, trainingActionLogProbability FLOAT(24, 4)); ", 0, 0, 0))
  {
    [(VCRemoteDataCollectionDumpProducer *)p_database writeVCRCMLDumpToCSVPath:v25];
LABEL_13:
    v7 = *v25;
LABEL_14:

    return 0;
  }

  if (sqlite3_exec( *p_database,  "INSERT INTO VCRCMLoutput (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, rateControlTime, owrd, nowrd, nowrda, roundTripTime, roundTripTimeAverage, roundTripTimeMinEnvelope, audioPacketLossRate, audioPacketLossRateShort, videoPacketLossRate, ecnCERatio, bandwidthEstimate, trainingValue, trainingAction, trainingActionLogProbability) SELECT state, ROUND(timestamp,3), ROUND(arrivalTime,3), targetBitrate, bitrate, basebandFlush, ROUND(rateControlTime,3), ROUND(owrd, 3), ROUND(nowrd,3), ROUND(nowrda,3), ROUND(roundTripTime,3), ROUND(roundTripTimeAverage,3), ROUND(roundTripTimeMinEnvelope,3), ROUND(audioPacketLossRate,3), ROUND(audioPacketLossRateShort,3), ROUND(videoPacketLossRate,3), ROUND(ecnCERatio,3), bandwidthEstimate, ROUND(trainingValue,3), trainingAction, ROUND(trainingActionLogProbability,3) FROM Feedback; INSERT INTO VCRCMLoutput (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, nwConnectionTimestamp, frequencyBand, intermittentState, estimatedIntermittentPeriod, singleOutagePeriod, btCoex, radioCoex, qualityScoreDelayRx, qualityScoreDelayTx, qualityScoreLossRx, qualityScoreLossTx, qualityScoreChannel, offChannelTimeRatio, wlanDutyCycle, observedTxBitrateBE, observedTxBitrateBK, observedTxBitrateVI, observedTxBitrateVO, observedTxBitrateLLW0, observedTxBitrateLLW1) SELECT state, ROUND(timestamp,3), ROUND(arrivalTime,3), targetBitrate, bitrate, basebandFlush, nwConnectionTimestamp, frequencyBand, intermittentState, estimatedIntermittentPeriod, singleOutagePeriod, btCoex, radioCoex, qualityScoreDelayRx, qualityScoreDelayTx, qualityScoreLossRx, qualityScoreLossTx, qualityScoreChannel, ROUND(offChannelTimeRatio,2), wlanDutyCycle, observedTxBitrateBE, observedTxBitrateBK, observedTxBitrateVI, observedTxBitrateVO, observedTxBitrateLLW0, observedTxBitrateLLW1 FROM Network; INSERT INTO VCRCMLoutput (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, radioTechnology, flushableQueueDepth, unflushableQueueDepth, averageBitrate, averageBitrateShort, averageBitrateLong, txBitrate, averageQueueDepth, expectedQueuingDelay, bdcd, normalizedBDCD, normalizedDelay) SELECT state, ROUND(timestamp,3), ROUND(arrivalTime,3), targetBitrate, bitrate, basebandFlush, radioTechnology, flushableQueueDepth, unflushableQueueDepth, averageBitrate, averageBitrateShort, averageBitrateLong, txBitrate, ROUND(averageQueueDepth,2), ROUND(expectedQueuingDelay,3), ROUND(bdcd,3), ROUND(normalizedBDCD,3), ROUND(normalizedDelay,3) FROM Baseband; INSERT INTO VCRCMLoutput (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, bytesInFlight, bytesInFlightRollingAverage) SELECT state, ROUND(timestamp,3), ROUND(arrivalTime,3), targetBitrate, bitrate, basebandFlush, bytesInFlight, bytesInFlightRollingAverage FROM LocalRCEvents; INSERT INTO VCRCMLoutput (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, mode, localRAT, remoteRAT, minTargetBitrate, maxTargetBitrate, algorithmVersion) SELECT state, ROUND(timestamp,3), ROUND(arrivalTime,3), targetBitrate, bitrate, basebandFlush, mode, localRAT, remoteRAT, minTargetBitrate, maxTargetBitrate, algorithmVersion FROM RateControllerConfiguration; ",
         0,
         0,
         0))
  {
    [(VCRemoteDataCollectionDumpProducer *)p_database writeVCRCMLDumpToCSVPath:v25];
    goto LABEL_13;
  }

  newHeaderString = [(VCRemoteDataCollectionDumpProducer *)self newHeaderString];
  if (!newHeaderString)
  {
    [VCRemoteDataCollectionDumpProducer writeVCRCMLDumpToCSVPath:];
    goto LABEL_13;
  }

  v7 = newHeaderString;
  v8 = fopen([path UTF8String], "w");
  if (!v8)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [VCRemoteDataCollectionDumpProducer writeVCRCMLDumpToCSVPath:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v17 = VRTraceErrorLogLevelToCSTR(3u);
        v18 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          *v25 = 136316418;
          *&v25[4] = v17;
          v26 = 2080;
          v27 = "[VCRemoteDataCollectionDumpProducer writeVCRCMLDumpToCSVPath:]";
          v28 = 1024;
          v29 = 145;
          v30 = 2112;
          v31 = v12;
          v32 = 2048;
          selfCopy3 = self;
          v34 = 2112;
          pathCopy = path;
          _os_log_error_impl(&dword_23D4DF000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to open fileName=%@", v25, 0x3Au);
        }
      }
    }

    goto LABEL_14;
  }

  v9 = v8;
  fputs([v7 UTF8String], v8);
  fputc(35, v9);
  if (sqlite3_exec(*p_database, "SELECT c.name FROM pragma_table_info('VCRCMLoutput') c;", _VCRemoteDataCollectionDumpProducer_WriteToCSVCallbackColumns, v9, 0))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [(VCRemoteDataCollectionDumpProducer *)v15 writeVCRCMLDumpToCSVPath:?];
        }
      }

      goto LABEL_44;
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_44;
    }

    v19 = VRTraceErrorLogLevelToCSTR(3u);
    v20 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    v21 = sqlite3_errmsg(self->_database);
    *v25 = 136316418;
    *&v25[4] = v19;
    v26 = 2080;
    v27 = "[VCRemoteDataCollectionDumpProducer writeVCRCMLDumpToCSVPath:]";
    v28 = 1024;
    v29 = 151;
    v30 = 2112;
    v31 = v13;
    v32 = 2048;
    selfCopy3 = self;
    v34 = 2080;
    pathCopy = v21;
    v22 = " [%s] %s:%d %@(%p) SQLite Error: Failed to execute header printing with errorMessage=%s";
    goto LABEL_46;
  }

  fputc(10, v9);
  if (sqlite3_exec(*p_database, "SELECT * FROM VCRCMLoutput ORDER BY timestamp;", _VCRemoteDataCollectionDumpProducer_WriteToCSVCallback, v9, 0))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [(VCRemoteDataCollectionDumpProducer *)v16 writeVCRCMLDumpToCSVPath:?];
        }
      }

      goto LABEL_44;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("") < 3 || (v23 = VRTraceErrorLogLevelToCSTR(3u), v20 = gVRTraceOSLog, !os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR)))
    {
LABEL_44:
      v10 = 0;
      goto LABEL_8;
    }

    v24 = sqlite3_errmsg(self->_database);
    *v25 = 136316418;
    *&v25[4] = v23;
    v26 = 2080;
    v27 = "[VCRemoteDataCollectionDumpProducer writeVCRCMLDumpToCSVPath:]";
    v28 = 1024;
    v29 = 156;
    v30 = 2112;
    v31 = v14;
    v32 = 2048;
    selfCopy3 = self;
    v34 = 2080;
    pathCopy = v24;
    v22 = " [%s] %s:%d %@(%p) SQLite Error: Failed to execute combination query with errorMessage=%s";
LABEL_46:
    _os_log_error_impl(&dword_23D4DF000, v20, OS_LOG_TYPE_ERROR, v22, v25, 0x3Au);
    goto LABEL_44;
  }

  v10 = 1;
LABEL_8:

  fclose(v9);
  return v10;
}

- (id)newHeaderString
{
  v30 = *MEMORY[0x277D85DE8];
  ppStmt = 0xAAAAAAAAAAAAAAAALL;
  sqlite3_prepare_v2(self->_database, "SELECT conversationID, participantID, deviceClass FROM Metadata LIMIT 1;", -1, &ppStmt, 0);
  v3 = sqlite3_step(ppStmt);
  if (v3 == 100)
  {
    v4 = sqlite3_column_text(ppStmt, 0);
    v5 = sqlite3_column_text(ppStmt, 1);
    v6 = sqlite3_column_int(ppStmt, 2);
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"environmentType", @"com.apple.rtcreporting", 0);
    v8 = objc_alloc(MEMORY[0x277CCACA0]);
    if (AppIntegerValue == 5)
    {
      v9 = [v8 initWithFormat:@"%s fileSchemaVersion=%d conversationID=%s participantID=%s deviceClass=%d internalTesting=%d\n", "#", 1, v4, v5, v6, 1];
    }

    else
    {
      v9 = [v8 initWithFormat:@"%s fileSchemaVersion=%d conversationID=%s participantID=%s deviceClass=%d\n", "#", 1, v4, v5, v6, v16];
    }

    v10 = v9;
  }

  else
  {
    v12 = v3;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [VCRemoteDataCollectionDumpProducer newHeaderString];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR(3u);
        v15 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v19 = v14;
          v20 = 2080;
          v21 = "[VCRemoteDataCollectionDumpProducer newHeaderString]";
          v22 = 1024;
          v23 = 175;
          v24 = 2112;
          v25 = v13;
          v26 = 2048;
          selfCopy = self;
          v28 = 1024;
          v29 = v12;
          _os_log_error_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) SQLite Error: could not read metadata status=%d", buf, 0x36u);
        }
      }
    }

    v10 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v10;
}

- (void)removeDatabaseFile
{
  v30 = *MEMORY[0x277D85DE8];
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
    v19 = "[VCRemoteDataCollectionDumpProducer removeDatabaseFile]";
    v20 = 1024;
    v21 = 197;
    v22 = 2112;
    v23 = databasePath;
    v24 = 2112;
    selfCopy = localizedDescription;
    v8 = " [%s] %s:%d Failed to delete RemoteDataCollectionDumpProducer database with databasePath=%@, error=%@";
    v9 = v5;
    v10 = 48;
LABEL_13:
    _os_log_error_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
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
      v19 = "[VCRemoteDataCollectionDumpProducer removeDatabaseFile]";
      v20 = 1024;
      v21 = 197;
      v22 = 2112;
      v23 = v3;
      v24 = 2048;
      selfCopy = self;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = localizedDescription2;
      v8 = " [%s] %s:%d %@(%p) Failed to delete RemoteDataCollectionDumpProducer database with databasePath=%@, error=%@";
      v9 = v12;
      v10 = 68;
      goto LABEL_13;
    }
  }
}

- (void)initWithDataStore:.cold.1()
{
  if (!objc_opt_class())
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
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
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_6_0();
      v5 = 48;
      goto LABEL_11;
    }
  }
}

- (void)submitToCoreAnalytics:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  v2 = 101;
  _os_log_error_impl(&dword_23D4DF000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Submission to Core Analytics failed", v1, 0x1Cu);
}

- (void)coreAnalyticsCallback:(void *)a1 fileHandle:.cold.1(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    v10[6] = 116;
    OUTLINED_FUNCTION_5_0();
    v8 = 28;
LABEL_12:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    v9 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      v11 = v2;
      v12 = 2048;
      v13 = a1;
      v3 = &dword_23D4DF000;
      v6 = " [%s] %s:%d %@(%p) Failed to zip OSALog File";
      v7 = v10;
      v4 = v9;
      v5 = OS_LOG_TYPE_ERROR;
      v8 = 48;
      goto LABEL_12;
    }
  }
}

- (uint64_t)coreAnalyticsCallback:fileHandle:.cold.2()
{
  OUTLINED_FUNCTION_16_1();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return fclose(v0);
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_19())
    {
      return fclose(v0);
    }

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6_0();
    v7 = 28;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return fclose(v0);
  }

  if (OUTLINED_FUNCTION_19_1())
  {
    OUTLINED_FUNCTION_18_1();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_10_0();
      v7 = 48;
      goto LABEL_11;
    }
  }

  return fclose(v0);
}

- (void)coreAnalyticsCallback:fileHandle:.cold.3()
{
  OUTLINED_FUNCTION_16_1();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_19())
    {
      return;
    }

    [v0 UTF8String];
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_6_0();
    v7 = 38;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (OUTLINED_FUNCTION_19_1())
  {
    OUTLINED_FUNCTION_18_1();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      [v0 UTF8String];
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_10_0();
      v7 = 58;
      goto LABEL_11;
    }
  }
}

- (void)writeVCRCMLDumpToCSVPath:(sqlite3 *)a1 .cold.1(sqlite3 **a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      sqlite3_errmsg(*a1);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
    }
  }

  *a2 = 0;
}

- (void)writeVCRCMLDumpToCSVPath:(sqlite3 *)a1 .cold.2(sqlite3 **a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      sqlite3_errmsg(*a1);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
    }
  }

  *a2 = 0;
}

- (void)writeVCRCMLDumpToCSVPath:(uint64_t)a1 .cold.3(uint64_t a1, sqlite3 **a2)
{
  sqlite3_errmsg(*a2);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)writeVCRCMLDumpToCSVPath:(uint64_t)a1 .cold.4(uint64_t a1, sqlite3 **a2)
{
  sqlite3_errmsg(*a2);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)writeVCRCMLDumpToCSVPath:.cold.5()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  v4 = v0;
  v5 = "[VCRemoteDataCollectionDumpProducer writeVCRCMLDumpToCSVPath:]";
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_0();
  v6 = v1;
  _os_log_error_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to open fileName=%@", v3, 0x26u);
}

- (void)writeVCRCMLDumpToCSVPath:.cold.6()
{
  OUTLINED_FUNCTION_16_1();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_19())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6_0();
    v7 = 28;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_19_1())
  {
    OUTLINED_FUNCTION_18_1();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_10_0();
      v7 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
}

- (void)newHeaderString
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  v4 = v0;
  v5 = "[VCRemoteDataCollectionDumpProducer newHeaderString]";
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_14_1();
  v6 = v1;
  _os_log_error_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d SQLite Error: could not read metadata status=%d", v3, 0x22u);
}

@end