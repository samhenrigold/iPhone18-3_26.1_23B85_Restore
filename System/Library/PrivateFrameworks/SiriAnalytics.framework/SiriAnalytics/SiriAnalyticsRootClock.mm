@interface SiriAnalyticsRootClock
- (BOOL)isTrackingDerivativeClockByStreamUUID:(id)d;
- (SiriAnalyticsRootClock)initWithClockIdentifier:(id)identifier timestampOffset:(unint64_t)offset startedOn:(unint64_t)on metastore:(id)metastore;
- (id)derivativeClockForStreamUUID:(id)d;
- (void)sensitiveCondition:(int)condition endedAt:(unint64_t)at;
- (void)sensitiveCondition:(int)condition startedAt:(unint64_t)at;
@end

@implementation SiriAnalyticsRootClock

- (void)sensitiveCondition:(int)condition endedAt:(unint64_t)at
{
  v5 = *&condition;
  v15 = *MEMORY[0x1E69E9840];
  if ([(SiriAnalyticsLogicalClock *)self containsTimestamp:at])
  {
    sensitiveConditionsLedger = self->_sensitiveConditionsLedger;

    [(SiriAnalyticsSensitiveConditionsLedger *)sensitiveConditionsLedger endWithSensitiveCondition:v5 at:at];
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v8 = SiriAnalyticsLogContextTime;
    if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[SiriAnalyticsRootClock sensitiveCondition:endedAt:]";
      v11 = 2048;
      v12 = v5;
      v13 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_1D9863000, v8, OS_LOG_TYPE_ERROR, "%s Attempted to track end for sensitive condition %lu outside scope of clock: %@", &v9, 0x20u);
    }
  }
}

- (void)sensitiveCondition:(int)condition startedAt:(unint64_t)at
{
  v5 = *&condition;
  v15 = *MEMORY[0x1E69E9840];
  if ([(SiriAnalyticsLogicalClock *)self containsTimestamp:at])
  {
    sensitiveConditionsLedger = self->_sensitiveConditionsLedger;

    [(SiriAnalyticsSensitiveConditionsLedger *)sensitiveConditionsLedger startWithSensitiveCondition:v5 at:at];
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v8 = SiriAnalyticsLogContextTime;
    if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[SiriAnalyticsRootClock sensitiveCondition:startedAt:]";
      v11 = 2048;
      v12 = v5;
      v13 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_1D9863000, v8, OS_LOG_TYPE_ERROR, "%s Attempted to track begin for sensitive condition %lu outside scope of clock: %@", &v9, 0x20u);
    }
  }
}

- (id)derivativeClockForStreamUUID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_derivativeClocksByStreamUUID objectForKey:dCopy];
  if (!v5)
  {
    v6 = MEMORY[0x1E696AFB0];
    clockIdentifier = [(SiriAnalyticsLogicalClock *)self clockIdentifier];
    v8 = [v6 sa_deterministicUUIDv5ForNamespaceUUID:clockIdentifier sourceUUID:dCopy];

    v5 = [[SiriAnalyticsDerivativeClock alloc] initWithClockIdentifier:v8 isolatedStreamUUID:dCopy timestampOffset:[(SiriAnalyticsLogicalClock *)self timestampOffset] rootClock:self];
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v9 = SiriAnalyticsLogContextTime;
    if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
    {
      v11 = 136316162;
      v12 = "[SiriAnalyticsRootClock derivativeClockForStreamUUID:]";
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = dCopy;
      v19 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1D9863000, v9, OS_LOG_TYPE_INFO, "%s Created derivative clock: %@ with identifer: %@ for streamUUID: %@ with parent clock: %@", &v11, 0x34u);
    }

    [(NSMutableDictionary *)self->_derivativeClocksByStreamUUID setObject:v5 forKey:dCopy];
  }

  return v5;
}

- (BOOL)isTrackingDerivativeClockByStreamUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_derivativeClocksByStreamUUID objectForKey:d];
  v4 = v3 != 0;

  return v4;
}

- (SiriAnalyticsRootClock)initWithClockIdentifier:(id)identifier timestampOffset:(unint64_t)offset startedOn:(unint64_t)on metastore:(id)metastore
{
  identifierCopy = identifier;
  metastoreCopy = metastore;
  v18.receiver = self;
  v18.super_class = SiriAnalyticsRootClock;
  v12 = [(SiriAnalyticsLogicalClock *)&v18 initWithClockIdentifier:identifierCopy timestampOffset:offset startedOn:on];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    derivativeClocksByStreamUUID = v12->_derivativeClocksByStreamUUID;
    v12->_derivativeClocksByStreamUUID = v13;

    v15 = [[SiriAnalyticsSensitiveConditionsLedger alloc] initWithClockIdentifier:identifierCopy metastore:metastoreCopy];
    sensitiveConditionsLedger = v12->_sensitiveConditionsLedger;
    v12->_sensitiveConditionsLedger = v15;
  }

  return v12;
}

@end