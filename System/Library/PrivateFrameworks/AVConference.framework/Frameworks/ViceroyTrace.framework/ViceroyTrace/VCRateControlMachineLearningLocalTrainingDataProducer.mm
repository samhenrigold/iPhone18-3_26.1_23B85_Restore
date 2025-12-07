@interface VCRateControlMachineLearningLocalTrainingDataProducer
- (BOOL)checkCountQuery:(char *)query withDatabase:(sqlite3 *)database minValue:(int)value maxValue:(int)maxValue;
- (VCRateControlMachineLearningLocalTrainingDataProducer)initWithDataStore:(id)store recipeID:(id)d;
- (void)dealloc;
- (void)removeDatabaseFile;
- (void)runTrainingDataPostProcessing:(id)processing;
- (void)setUpTrainingDataForPlugin;
@end

@implementation VCRateControlMachineLearningLocalTrainingDataProducer

- (VCRateControlMachineLearningLocalTrainingDataProducer)initWithDataStore:(id)store recipeID:(id)d
{
  v11.receiver = self;
  v11.super_class = VCRateControlMachineLearningLocalTrainingDataProducer;
  v6 = [(VCRateControlMachineLearningLocalTrainingDataProducer *)&v11 init];
  if (!v6)
  {
    [VCRateControlMachineLearningLocalTrainingDataProducer initWithDataStore:recipeID:];
LABEL_7:

    return 0;
  }

  v6->_recipeID = d;
  v7 = [objc_alloc(MEMORY[0x277CCACA0]) initWithFormat:@"%@/%s", +[VCDiskUtils getCachesDirectoryPath](VCDiskUtils, "getCachesDirectoryPath"), "rc_fl_data"];
  v6->_directoryPath = v7;
  if (![VCDiskUtils createDefaultAttributeDirectoryIfNeeded:v7])
  {
    [VCRateControlMachineLearningLocalTrainingDataProducer initWithDataStore:v6 recipeID:?];
    goto LABEL_7;
  }

  v8 = [VCWeakObjectHolder weakObjectHolderWithObject:v6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__VCRateControlMachineLearningLocalTrainingDataProducer_initWithDataStore_recipeID___block_invoke;
  v10[3] = &unk_278BD4868;
  v10[4] = v8;
  [store registerDataProducerWithType:1 producerCallback:v10];
  return v6;
}

uint64_t __84__VCRateControlMachineLearningLocalTrainingDataProducer_initWithDataStore_recipeID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) strong];

  return [v3 runTrainingDataPostProcessing:a2];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCRateControlMachineLearningLocalTrainingDataProducer;
  [(VCRateControlMachineLearningLocalTrainingDataProducer *)&v3 dealloc];
}

- (void)runTrainingDataPostProcessing:(id)processing
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [processing copy];
  self->_databasePath = v4;
  v5 = sqlite3_open([(NSString *)v4 UTF8String], &self->_database);
  if (!v5 || (v6 = v5, v5 == 101))
  {
    if (sqlite3_exec(self->_database, "CREATE TABLE VCRCMLoutput (timestamp DOUBLE, targetBitrate INT, bitrate INT, rateControlTime FLOAT(24,4), owrd FLOAT(24,4), nowrd FLOAT(24,4), roundTripTime FLOAT(24,4), audioPacketLossRate FLOAT(24,4), videoPacketLossRate FLOAT(24,4), bandwidthEstimate INT, averageBitrate INT, expectedQueuingDelay DOUBLE, bytesInFlight INT, mode INT, localRAT INT, remoteRAT INT, maxTargetBitrate INT, trainingValue FLOAT(24, 4), trainingAction INT, trainingActionLogProbability FLOAT(24, 4)); ", 0, 0, 0))
    {
      [VCRateControlMachineLearningLocalTrainingDataProducer runTrainingDataPostProcessing:?];
    }

    else if (sqlite3_exec(self->_database, "INSERT INTO VCRCMLoutput (timestamp, targetBitrate, bitrate, rateControlTime, owrd, nowrd, roundTripTime, audioPacketLossRate, videoPacketLossRate,  bandwidthEstimate, trainingValue, trainingAction, trainingActionLogProbability) SELECT ROUND(timestamp,3), targetBitrate, bitrate, ROUND(rateControlTime,3), ROUND(owrd, 3), ROUND(nowrd,3), ROUND(roundTripTime,3), ROUND(audioPacketLossRate,3), ROUND(videoPacketLossRate,3), bandwidthEstimate, trainingValue, trainingAction, trainingActionLogProbability FROM Feedback; INSERT INTO VCRCMLoutput (timestamp, targetBitrate, bitrate) SELECT ROUND(timestamp,3), targetBitrate, bitrate FROM Network; INSERT INTO VCRCMLoutput (timestamp, targetBitrate, bitrate, averageBitrate, expectedQueuingDelay) SELECT ROUND(timestamp,3), targetBitrate, bitrate, averageBitrate, ROUND(expectedQueuingDelay,3) FROM Baseband; INSERT INTO VCRCMLoutput (timestamp, targetBitrate, bitrate, bytesInFlight) SELECT ROUND(timestamp,3), targetBitrate, bitrate, bytesInFlight FROM LocalRCEvents; INSERT INTO VCRCMLoutput (timestamp, targetBitrate, bitrate, mode, localRAT, remoteRAT, maxTargetBitrate) SELECT ROUND(timestamp,3), targetBitrate, bitrate, mode, localRAT, remoteRAT, maxTargetBitrate FROM RateControllerConfiguration; ", 0, 0, 0))
    {
      [VCRateControlMachineLearningLocalTrainingDataProducer runTrainingDataPostProcessing:?];
    }

    else
    {
      v7 = [(VCRateControlMachineLearningLocalTrainingDataProducer *)self shouldGenerateTrainingDataWithDatabase:self->_database];
      sqlite3_close(self->_database);
      self->_database = 0;
      if (v7)
      {
        [(VCRateControlMachineLearningLocalTrainingDataProducer *)self setUpTrainingDataForPlugin];
      }

      else
      {
        [VCRateControlMachineLearningLocalTrainingDataProducer runTrainingDataPostProcessing:?];
      }
    }

    goto LABEL_7;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR(7u);
      v10 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = sqlite3_errmsg(self->_database);
        *v18 = 136316162;
        *&v18[4] = v9;
        *&v18[12] = 2080;
        *&v18[14] = "[VCRateControlMachineLearningLocalTrainingDataProducer runTrainingDataPostProcessing:]";
        *&v18[22] = 1024;
        *v19 = 75;
        *&v19[4] = 1024;
        *&v19[6] = v6;
        *&v19[10] = 2080;
        *&v19[12] = v11;
        v12 = " [%s] %s:%d SQLite Error: could not open database with return code=%d error=%s";
        v13 = v10;
        v14 = 44;
LABEL_18:
        _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, v12, v18, v14);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCRateControlMachineLearningLocalTrainingDataProducer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR(7u);
      v16 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = sqlite3_errmsg(self->_database);
        *v18 = 136316674;
        *&v18[4] = v15;
        *&v18[12] = 2080;
        *&v18[14] = "[VCRateControlMachineLearningLocalTrainingDataProducer runTrainingDataPostProcessing:]";
        *&v18[22] = 1024;
        *v19 = 75;
        *&v19[4] = 2112;
        *&v19[6] = v8;
        *&v19[14] = 2048;
        *&v19[16] = self;
        LOWORD(v20) = 1024;
        *(&v20 + 2) = v6;
        HIWORD(v20) = 2080;
        v21 = v17;
        v12 = " [%s] %s:%d %@(%p) SQLite Error: could not open database with return code=%d error=%s";
        v13 = v16;
        v14 = 64;
        goto LABEL_18;
      }
    }
  }

LABEL_7:
  [(VCRateControlMachineLearningLocalTrainingDataProducer *)self removeDatabaseFile:*v18];
}

- (void)setUpTrainingDataForPlugin
{
  if (objc_opt_class() == self)
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

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_6_0();
    v7 = 38;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [self performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_8_0();
      goto LABEL_11;
    }
  }
}

- (void)removeDatabaseFile
{
  v32 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA08] defaultManager];
  if ([defaultManager fileExistsAtPath:self->_databasePath])
  {
    v17 = 0;
    if (![defaultManager removeItemAtPath:self->_databasePath error:&v17] || v17 != 0)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule("") < 3)
        {
          return;
        }

        v6 = VRTraceErrorLogLevelToCSTR(3u);
        v7 = gVRTraceOSLog;
        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        databasePath = self->_databasePath;
        localizedDescription = [v17 localizedDescription];
        *buf = 136316162;
        v19 = v6;
        v20 = 2080;
        v21 = "[VCRateControlMachineLearningLocalTrainingDataProducer removeDatabaseFile]";
        v22 = 1024;
        v23 = 167;
        v24 = 2112;
        v25 = databasePath;
        v26 = 2112;
        selfCopy = localizedDescription;
        v10 = " [%s] %s:%d Failed to delete RemoteDataCollectionDumpProducer database with databasePath=%@, error=%@";
        v11 = v7;
        v12 = 48;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v5 = [(VCRateControlMachineLearningLocalTrainingDataProducer *)self performSelector:sel_logPrefix];
        }

        else
        {
          v5 = &stru_284F80940;
        }

        if (VRTraceGetErrorLogLevelForModule("") < 3)
        {
          return;
        }

        v13 = VRTraceErrorLogLevelToCSTR(3u);
        v14 = gVRTraceOSLog;
        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        v15 = self->_databasePath;
        localizedDescription2 = [v17 localizedDescription];
        *buf = 136316674;
        v19 = v13;
        v20 = 2080;
        v21 = "[VCRateControlMachineLearningLocalTrainingDataProducer removeDatabaseFile]";
        v22 = 1024;
        v23 = 167;
        v24 = 2112;
        v25 = v5;
        v26 = 2048;
        selfCopy = self;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = localizedDescription2;
        v10 = " [%s] %s:%d %@(%p) Failed to delete RemoteDataCollectionDumpProducer database with databasePath=%@, error=%@";
        v11 = v14;
        v12 = 68;
      }

      _os_log_error_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    }
  }
}

- (BOOL)checkCountQuery:(char *)query withDatabase:(sqlite3 *)database minValue:(int)value maxValue:(int)maxValue
{
  v35 = *MEMORY[0x277D85DE8];
  ppStmt = 0;
  if (sqlite3_prepare_v2(database, query, -1, &ppStmt, 0) || sqlite3_step(ppStmt) != 100)
  {
    v21 = 0;
    goto LABEL_20;
  }

  v9 = sqlite3_column_int(ppStmt, 0);
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCRateControlMachineLearningLocalTrainingDataProducer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("") < 7)
    {
      goto LABEL_14;
    }

    v17 = VRTraceErrorLogLevelToCSTR(7u);
    v18 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 136316930;
    v25 = v17;
    OUTLINED_FUNCTION_4_0();
    v26 = 2112;
    *v27 = v10;
    *&v27[8] = 2048;
    selfCopy = self;
    v29 = v19;
    v30 = v9;
    v31 = v19;
    valueCopy = value;
    v33 = v19;
    maxValueCopy = maxValue;
    v14 = " [%s] %s:%d %@(%p) Training table has numberOfRows=%d, requiredRange=[%d, %d]";
    v15 = v18;
    v16 = 66;
    goto LABEL_13;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR(7u);
    v12 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v25 = v11;
      OUTLINED_FUNCTION_4_0();
      v26 = v13;
      *v27 = v9;
      *&v27[4] = v13;
      *&v27[6] = value;
      LOWORD(selfCopy) = v13;
      *(&selfCopy + 2) = maxValue;
      v14 = " [%s] %s:%d Training table has numberOfRows=%d, requiredRange=[%d, %d]";
      v15 = v12;
      v16 = 46;
LABEL_13:
      _os_log_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }
  }

LABEL_14:
  v21 = v9 >= value && v9 <= maxValue;
LABEL_20:
  sqlite3_finalize(ppStmt);
  return v21;
}

- (void)initWithDataStore:(void *)a1 recipeID:.cold.1(void *a1)
{
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

    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_6_0();
    v7 = 38;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_8_0();
      goto LABEL_11;
    }
  }
}

- (void)initWithDataStore:recipeID:.cold.2()
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
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
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

- (void)runTrainingDataPostProcessing:(sqlite3 *)a1 .cold.1(sqlite3 **a1)
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      sqlite3_errmsg(*a1);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
    }
  }
}

- (void)runTrainingDataPostProcessing:(sqlite3 *)a1 .cold.2(sqlite3 **a1)
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      sqlite3_errmsg(*a1);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
    }
  }
}

- (void)runTrainingDataPostProcessing:(void *)a1 .cold.3(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR(7u);
      v4 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v3;
        OUTLINED_FUNCTION_0();
        v12 = 84;
        v5 = " [%s] %s:%d Session data is too small or too big to be used for training";
        v6 = v4;
        v7 = 28;
LABEL_11:
        _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, v5, &v10, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR(7u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v8;
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_0();
        v13 = v2;
        v14 = 2048;
        v15 = a1;
        v5 = " [%s] %s:%d %@(%p) Session data is too small or too big to be used for training";
        v6 = v9;
        v7 = 48;
        goto LABEL_11;
      }
    }
  }
}

@end