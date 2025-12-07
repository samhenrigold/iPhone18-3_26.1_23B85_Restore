@interface _PASSQLTelemetryContext
- (BOOL)filterLog:(id)log;
- (BOOL)isTargetProcess;
- (_PASSQLTelemetryContext)initWithConnectionAndSettings:(sqlite3 *)settings sqlQuery:(id)query filterPii:(BOOL)pii bloomFilter:(id)filter bloomHashes:(id)hashes targetProcess:(id)process;
- (id)currentProcessName;
- (id)sqlEventLogForTelemetry;
- (id)sqlEventLogRaw;
- (void)applyCallbackWithCompletion:(id)completion;
- (void)createEventLogForQueryOpCode:(int)code argumentOneValue:(id)value argumentTwoValue:(id)twoValue;
- (void)removeCallback;
- (void)sendTelemetry:(id)telemetry;
@end

@implementation _PASSQLTelemetryContext

- (void)removeCallback
{
  if ([(_PASSQLTelemetryContext *)self isTargetProcess])
  {
    dbConnection = self->_dbConnection;

    sqlite3_set_authorizer(dbConnection, 0, 0);
  }
}

- (BOOL)isTargetProcess
{
  if ([(NSString *)self->_targetProcess length])
  {
    v3 = [(NSString *)self->_targetProcess length];
    if (v3)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      v6 = [processName isEqualToString:self->_targetProcess];

      LOBYTE(v3) = v6;
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)filterLog:(id)log
{
  v4 = [(_PASBloomFilter *)self->_bloomFilter computeHashesForString:log reuse:self->_bloomHashes];
  bloomHashes = self->_bloomHashes;
  self->_bloomHashes = v4;

  v6 = [(_PASBloomFilter *)self->_bloomFilter getWithHashes:self->_bloomHashes];
  if (!v6)
  {
    [(_PASBloomFilterForWriting *)self->_bloomFilter setWithHashes:self->_bloomHashes];
  }

  return v6;
}

- (id)sqlEventLogRaw
{
  v2 = [(NSString *)self->_sqlEventsLog copy];

  return v2;
}

- (id)sqlEventLogForTelemetry
{
  v3 = [(NSString *)self->_sqlEventsLog copy];
  sqlEventsLog = self->_sqlEventsLog;
  self->_sqlEventsLog = &stru_1F1B24B60;

  return v3;
}

- (void)createEventLogForQueryOpCode:(int)code argumentOneValue:(id)value argumentTwoValue:(id)twoValue
{
  v6 = *&code;
  valueCopy = value;
  twoValueCopy = twoValue;
  if (self->_filterPii)
  {
    if ([(NSString *)self->_sqlEventsLog length]> 0x14000)
    {
      sqlEventsLog = self->_sqlEventsLog;
      self->_sqlEventsLog = &stru_1F1B24B60;
    }

    eventToStringMap = self->_eventToStringMap;
    v11 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    v12 = [(NSDictionary *)eventToStringMap objectForKeyedSubscript:v11];

    if (v12)
    {
      v13 = self->_eventToStringMap;
      v14 = [MEMORY[0x1E696AD98] numberWithInt:v6];
      v15 = [(NSDictionary *)v13 objectForKeyedSubscript:v14];

      if (valueCopy)
      {
        v16 = valueCopy;
      }

      else
      {
        v16 = &stru_1F1B24B60;
      }

      if (twoValueCopy)
      {
        v17 = twoValueCopy;
      }

      else
      {
        v17 = &stru_1F1B24B60;
      }

      v18 = [(NSString *)self->_sqlEventsLog stringByAppendingFormat:@"%@ %@ %@ ", v15, v16, v17];
      v19 = self->_sqlEventsLog;
      self->_sqlEventsLog = v18;
    }
  }
}

- (void)applyCallbackWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(NSString *)self->_sql length])
  {
    if (![(_PASSQLTelemetryContext *)self isSqlConst])
    {
      if ([(_PASSQLTelemetryContext *)self isTargetProcess])
      {
        dbConnection = self->_dbConnection;
        if (dbConnection)
        {
          self->_shouldSendTelemetry = 1;
          if (completionCopy)
          {
            [(_PASSQLTelemetryContext *)self setAuthorizerStatusBlock:?];
            dbConnection = self->_dbConnection;
          }

          sqlite3_set_authorizer(dbConnection, _PASSQLCallback, self);
        }
      }
    }
  }
}

- (id)currentProcessName
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  return processName;
}

- (void)sendTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  if ([(_PASSQLTelemetryContext *)self filterLog:self->_sqlEventsLog])
  {
    self->_shouldSendTelemetry = 0;
    sqlEventsLog = self->_sqlEventsLog;
    self->_sqlEventsLog = &stru_1F1B24B60;
  }

  if (self->_shouldSendTelemetry && [telemetryCopy length])
  {
    if ([telemetryCopy isEqualToString:@"SqlEventLog"] && -[NSString length](self->_sqlEventsLog, "length"))
    {
      v6 = AnalyticsSendEventLazy();
    }

    else
    {
      v6 = 0;
    }

    authorizerStatusBlock = [(_PASSQLTelemetryContext *)self authorizerStatusBlock];

    if (authorizerStatusBlock)
    {
      authorizerStatusBlock2 = [(_PASSQLTelemetryContext *)self authorizerStatusBlock];
      authorizerStatusBlock2[2](authorizerStatusBlock2, v6);
    }
  }
}

- (_PASSQLTelemetryContext)initWithConnectionAndSettings:(sqlite3 *)settings sqlQuery:(id)query filterPii:(BOOL)pii bloomFilter:(id)filter bloomHashes:(id)hashes targetProcess:(id)process
{
  v30[32] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  filterCopy = filter;
  hashesCopy = hashes;
  processCopy = process;
  v28.receiver = self;
  v28.super_class = _PASSQLTelemetryContext;
  v18 = [(_PASSQLTelemetryContext *)&v28 init];
  v19 = v18;
  if (v18)
  {
    v18->_dbConnection = settings;
    v20 = [processCopy copy];
    targetProcess = v19->_targetProcess;
    v19->_targetProcess = v20;

    v22 = [queryCopy copy];
    sql = v19->_sql;
    v19->_sql = v22;

    sqlEventsLog = v19->_sqlEventsLog;
    v19->_sqlEventsLog = &stru_1F1B24B60;

    v19->_filterPii = pii;
    v19->_shouldSendTelemetry = 0;
    objc_storeStrong(&v19->_bloomFilter, filter);
    objc_storeStrong(&v19->_bloomHashes, hashes);
    v29[0] = &unk_1F1B2FF28;
    v29[1] = &unk_1F1B2FF40;
    v30[0] = @"CREATE INDEX";
    v30[1] = @"CREATE TABLE";
    v29[2] = &unk_1F1B2FF58;
    v29[3] = &unk_1F1B2FF70;
    v30[2] = @"CREATE TEMP INDEX";
    v30[3] = @"CREATE TEMP TABLE";
    v29[4] = &unk_1F1B2FF88;
    v29[5] = &unk_1F1B2FFA0;
    v30[4] = @"CREATE TEMP TRIGGER";
    v30[5] = @"CREATE TEMP VIEW";
    v29[6] = &unk_1F1B2FFB8;
    v29[7] = &unk_1F1B2FFD0;
    v30[6] = @"CREATE TRIGGER";
    v30[7] = @"CREATE VIEW";
    v29[8] = &unk_1F1B2FFE8;
    v29[9] = &unk_1F1B30000;
    v30[8] = @"DELETE";
    v30[9] = @"DROP INDEX";
    v29[10] = &unk_1F1B30018;
    v29[11] = &unk_1F1B30030;
    v30[10] = @"DROP TABLE";
    v30[11] = @"DROP TEMP INDEX";
    v29[12] = &unk_1F1B30048;
    v29[13] = &unk_1F1B30060;
    v30[12] = @"DROP TEMP TRIGGER";
    v30[13] = @"DROP TEMP VIEW";
    v29[14] = &unk_1F1B30078;
    v29[15] = &unk_1F1B30090;
    v30[14] = @"DROP TRIGGER";
    v30[15] = @"DROP VIEW";
    v29[16] = &unk_1F1B300A8;
    v29[17] = &unk_1F1B300C0;
    v30[16] = @"INSERT";
    v30[17] = @"PRAGMA";
    v29[18] = &unk_1F1B300D8;
    v29[19] = &unk_1F1B300F0;
    v30[18] = @"READ";
    v30[19] = @"SELECT";
    v29[20] = &unk_1F1B30108;
    v29[21] = &unk_1F1B30120;
    v30[20] = @"TRANSACTION";
    v30[21] = @"UPDATE";
    v29[22] = &unk_1F1B30138;
    v29[23] = &unk_1F1B30150;
    v30[22] = @"ATTACH";
    v30[23] = @"DETACH";
    v29[24] = &unk_1F1B30168;
    v29[25] = &unk_1F1B30180;
    v30[24] = @"ALTER TABLE";
    v30[25] = @"REINDEX";
    v29[26] = &unk_1F1B30198;
    v29[27] = &unk_1F1B301B0;
    v30[26] = @"ANALYZE";
    v30[27] = @"CREATE VTABLE";
    v29[28] = &unk_1F1B301C8;
    v29[29] = &unk_1F1B301E0;
    v30[28] = @"DROP VTABLE";
    v30[29] = @"FUNCTION";
    v29[30] = &unk_1F1B301F8;
    v29[31] = &unk_1F1B30210;
    v30[30] = @"SAVEPOINT";
    v30[31] = @"RECURSIVE";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:32];
    eventToStringMap = v19->_eventToStringMap;
    v19->_eventToStringMap = v25;
  }

  return v19;
}

@end