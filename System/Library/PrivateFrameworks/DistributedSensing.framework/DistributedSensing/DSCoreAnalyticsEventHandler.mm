@interface DSCoreAnalyticsEventHandler
- (DSCoreAnalyticsEventHandler)init;
- (void)dsFirstListenerSessionSetUnsuccessful;
- (void)dsProviderAvailable;
- (void)dsProviderUnavailable;
- (void)dsSessionCompletedWithStopReason:(int)reason numHeartbeats:(unint64_t)heartbeats numMotionStateMessages:(unint64_t)messages activeProviderLostCount:(unint64_t)count dataLinkType:(int)type maxListenerClients:(unint64_t)clients avgListenerStartInterval:(double)interval;
- (void)dsSessionStartedWithDeviceRole:(int)role numPotentialProviders:(unint64_t)providers unterminatedSession:(BOOL)session;
@end

@implementation DSCoreAnalyticsEventHandler

- (DSCoreAnalyticsEventHandler)init
{
  v6.receiver = self;
  v6.super_class = DSCoreAnalyticsEventHandler;
  v2 = [(DSCoreAnalyticsEventHandler *)&v6 init];
  v3 = v2;
  if (v2)
  {
    sessionMetric = v2->_sessionMetric;
    v2->_sessionMetric = 0;
  }

  return v3;
}

- (void)dsSessionStartedWithDeviceRole:(int)role numPotentialProviders:(unint64_t)providers unterminatedSession:(BOOL)session
{
  if (self->_sessionMetric)
  {
    v5 = [DSLogging sharedInstance:*&role];
    dsLogger = [v5 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v7 = "[DSCoreAnalytics] session metric already exists\n";
      v8 = &v17;
LABEL_6:
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    sessionCopy = session;
    v11 = *&role;
    v13 = objc_alloc_init(DSSessionMetric);
    sessionMetric = self->_sessionMetric;
    self->_sessionMetric = v13;

    [(DSSessionMetric *)self->_sessionMetric dsSessionStartedWithDeviceRole:v11 numPotentialProviders:providers unterminatedSession:sessionCopy];
    v15 = +[DSLogging sharedInstance];
    dsLogger = [v15 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v7 = "[DSCoreAnalytics] session metric collection started\n";
      v8 = &v16;
      goto LABEL_6;
    }
  }
}

- (void)dsProviderAvailable
{
  sessionMetric = self->_sessionMetric;
  if (sessionMetric)
  {

    [(DSSessionMetric *)sessionMetric dsProviderAvailable];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v5 = +[DSLogging sharedInstance];
    dsLogger = [v5 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSCoreAnalytics] null metric during provider availability update\n", v7, 2u);
    }
  }
}

- (void)dsProviderUnavailable
{
  sessionMetric = self->_sessionMetric;
  if (sessionMetric)
  {

    [(DSSessionMetric *)sessionMetric dsProviderUnavailable];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v5 = +[DSLogging sharedInstance];
    dsLogger = [v5 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSCoreAnalytics] null metric during provider unavailability update\n", v7, 2u);
    }
  }
}

- (void)dsFirstListenerSessionSetUnsuccessful
{
  sessionMetric = self->_sessionMetric;
  if (sessionMetric)
  {

    [(DSSessionMetric *)sessionMetric dsFirstListenerSessionSetUnsuccessful];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v5 = +[DSLogging sharedInstance];
    dsLogger = [v5 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSCoreAnalytics] null metric during first listener session update\n", v7, 2u);
    }
  }
}

- (void)dsSessionCompletedWithStopReason:(int)reason numHeartbeats:(unint64_t)heartbeats numMotionStateMessages:(unint64_t)messages activeProviderLostCount:(unint64_t)count dataLinkType:(int)type maxListenerClients:(unint64_t)clients avgListenerStartInterval:(double)interval
{
  v23 = *MEMORY[0x277D85DE8];
  sessionMetric = self->_sessionMetric;
  if (sessionMetric)
  {
    [(DSSessionMetric *)sessionMetric dsSessionCompletedWithStopReason:*&reason numHeartbeats:heartbeats numMotionStateMessages:messages activeProviderLostCount:count dataLinkType:*&type maxListenerClients:clients avgListenerStartInterval:interval];
    sessionMetricFinalize = [(DSSessionMetric *)self->_sessionMetric sessionMetricFinalize];
    dsLogger3 = [sessionMetricFinalize copy];

    v13 = +[DSLogging sharedInstance];
    dsLogger = [v13 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSCoreAnalytics] session metric collection completed\n", buf, 2u);
    }

    eventName = [(DSSessionMetric *)self->_sessionMetric eventName];
    v16 = [eventName copy];

    if (dsLogger3)
    {
      if (v16)
      {
        if (![dsLogger3 count])
        {
LABEL_11:

          goto LABEL_14;
        }

        v17 = +[DSLogging sharedInstance];
        dsLogger2 = [v17 dsLogger];

        if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v16;
          _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSCoreAnalytics] submitting Event %@ to Core Analytics\n", buf, 0xCu);
        }

        v21 = dsLogger3;
        AnalyticsSendEventLazy();
        v19 = v21;
LABEL_10:

        goto LABEL_11;
      }

      [DSCoreAnalyticsEventHandler dsSessionCompletedWithStopReason:buf numHeartbeats:? numMotionStateMessages:? activeProviderLostCount:? dataLinkType:? maxListenerClients:? avgListenerStartInterval:?];
    }

    else
    {
      [DSCoreAnalyticsEventHandler dsSessionCompletedWithStopReason:buf numHeartbeats:? numMotionStateMessages:? activeProviderLostCount:? dataLinkType:? maxListenerClients:? avgListenerStartInterval:?];
    }

    v19 = *buf;
    goto LABEL_10;
  }

  v20 = [DSLogging sharedInstance:*&reason];
  dsLogger3 = [v20 dsLogger];

  if (os_log_type_enabled(dsLogger3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, dsLogger3, OS_LOG_TYPE_DEFAULT, "[DSCoreAnalytics] null metric during session stop\n", buf, 2u);
  }

LABEL_14:
}

- (void)dsSessionCompletedWithStopReason:(NSObject *)a1 numHeartbeats:numMotionStateMessages:activeProviderLostCount:dataLinkType:maxListenerClients:avgListenerStartInterval:.cold.1(NSObject **a1)
{
  v2 = +[DSLogging sharedInstance];
  v3 = [v2 dsLogger];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 0;
    OUTLINED_FUNCTION_0_0(&dword_249027000, v4, v5, "[DSCoreAnalytics] null event name\n", v6, v7, v8, v9, v10);
  }

  *a1 = v3;
}

- (void)dsSessionCompletedWithStopReason:(NSObject *)a1 numHeartbeats:numMotionStateMessages:activeProviderLostCount:dataLinkType:maxListenerClients:avgListenerStartInterval:.cold.2(NSObject **a1)
{
  v2 = +[DSLogging sharedInstance];
  v3 = [v2 dsLogger];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 0;
    OUTLINED_FUNCTION_0_0(&dword_249027000, v4, v5, "[DSCoreAnalytics] null event dictionary\n", v6, v7, v8, v9, v10);
  }

  *a1 = v3;
}

@end