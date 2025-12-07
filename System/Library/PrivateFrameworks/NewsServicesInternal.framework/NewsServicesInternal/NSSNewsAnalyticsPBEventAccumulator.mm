@interface NSSNewsAnalyticsPBEventAccumulator
- (NSSNewsAnalyticsPBEventAccumulator)init;
- (NSSNewsAnalyticsPBEventAccumulator)initWithEnvelopeDescriptor:(id)descriptor sessionManager:(id)manager;
- (NSSNewsAnalyticsSessionManager)sessionManager;
- (id)dequeueEventsIntoEnvelope;
- (void)observeEvent:(id)event;
- (void)observeEvents:(id)events;
@end

@implementation NSSNewsAnalyticsPBEventAccumulator

- (NSSNewsAnalyticsPBEventAccumulator)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NSSNewsAnalyticsPBEventAccumulator init]";
    v10 = 2080;
    v11 = "NSSNewsAnalyticsPBEventAccumulator.m";
    v12 = 1024;
    v13 = 83;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF0A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NSSNewsAnalyticsPBEventAccumulator init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NSSNewsAnalyticsPBEventAccumulator)initWithEnvelopeDescriptor:(id)descriptor sessionManager:(id)manager
{
  descriptorCopy = descriptor;
  managerCopy = manager;
  if (!descriptorCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsPBEventAccumulator initWithEnvelopeDescriptor:sessionManager:];
    if (managerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (managerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsPBEventAccumulator initWithEnvelopeDescriptor:sessionManager:];
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = NSSNewsAnalyticsPBEventAccumulator;
  v8 = [(NSSNewsAnalyticsPBEventAccumulator *)&v14 init];
  if (v8)
  {
    v9 = [descriptorCopy copy];
    envelopeDescriptor = v8->_envelopeDescriptor;
    v8->_envelopeDescriptor = v9;

    objc_storeWeak(&v8->_sessionManager, managerCopy);
    v11 = objc_opt_new();
    events = v8->_events;
    v8->_events = v11;
  }

  return v8;
}

- (id)dequeueEventsIntoEnvelope
{
  v31 = *MEMORY[0x277D85DE8];
  events = [(NSSNewsAnalyticsPBEventAccumulator *)self events];
  v4 = [events count];

  if (v4)
  {
    sessionManager = [(NSSNewsAnalyticsPBEventAccumulator *)self sessionManager];
    currentSession = [sessionManager currentSession];
    v7 = [currentSession copy];

    events2 = [(NSSNewsAnalyticsPBEventAccumulator *)self events];
    v9 = [events2 copy];

    nss_sessionBatchWithIdentifier = [MEMORY[0x277D35500] nss_sessionBatchWithIdentifier];
    [nss_sessionBatchWithIdentifier setSession:v7];
    v11 = NSSNewsAnalyticsPBEventAccumulatorLog([nss_sessionBatchWithIdentifier setEvents:v9]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      envelopeDescriptor = [(NSSNewsAnalyticsPBEventAccumulator *)self envelopeDescriptor];
      *buf = 67109634;
      contentType = [envelopeDescriptor contentType];
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_25BF0A000, v11, OS_LOG_TYPE_DEBUG, "Preparing an envelope of contentType %d with session %@, events %@", buf, 0x1Cu);
    }

    nss_envelopeWithIdentifier = [MEMORY[0x277D35468] nss_envelopeWithIdentifier];
    envelopeDescriptor2 = [(NSSNewsAnalyticsPBEventAccumulator *)self envelopeDescriptor];
    [nss_envelopeWithIdentifier setContentTypeVersion:{objc_msgSend(envelopeDescriptor2, "contentTypeVersion")}];

    envelopeDescriptor3 = [(NSSNewsAnalyticsPBEventAccumulator *)self envelopeDescriptor];
    [nss_envelopeWithIdentifier setContentTypeMinorVersion:{objc_msgSend(envelopeDescriptor3, "contentTypeMinorVersion")}];

    envelopeDescriptor4 = [(NSSNewsAnalyticsPBEventAccumulator *)self envelopeDescriptor];
    [nss_envelopeWithIdentifier setContentTypePatchVersion:{objc_msgSend(envelopeDescriptor4, "contentTypePatchVersion")}];

    envelopeDescriptor5 = [(NSSNewsAnalyticsPBEventAccumulator *)self envelopeDescriptor];
    [nss_envelopeWithIdentifier setContentType:{objc_msgSend(envelopeDescriptor5, "contentType")}];

    data = [nss_sessionBatchWithIdentifier data];
    fc_zlibDeflate = [data fc_zlibDeflate];
    [nss_envelopeWithIdentifier setContent:fc_zlibDeflate];

    v20 = MEMORY[0x277D2F918];
    v24 = nss_envelopeWithIdentifier;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    [v20 registerEnvelopesAsCreated:v21];

    events3 = [(NSSNewsAnalyticsPBEventAccumulator *)self events];
    [events3 removeAllObjects];
  }

  else
  {
    nss_envelopeWithIdentifier = 0;
  }

  return nss_envelopeWithIdentifier;
}

- (void)observeEvent:(id)event
{
  v6[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (!eventCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsPBEventAccumulator observeEvent:];
  }

  v6[0] = eventCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(NSSNewsAnalyticsPBEventAccumulator *)self observeEvents:v5];
}

- (void)observeEvents:(id)events
{
  v29 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if (!eventsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsPBEventAccumulator observeEvents:];
  }

  if ([eventsCopy count])
  {
    events = [(NSSNewsAnalyticsPBEventAccumulator *)self events];
    v6 = [events count];

    if (!v6)
    {
      v7 = MEMORY[0x277D2F918];
      envelopeDescriptor = [(NSSNewsAnalyticsPBEventAccumulator *)self envelopeDescriptor];
      [v7 registerEnvelopeCreationAnticipatedForContentType:{objc_msgSend(envelopeDescriptor, "contentType")}];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = eventsCopy;
    v9 = eventsCopy;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          v15 = NSSNewsAnalyticsPBEventAccumulatorLog(v10);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            envelopeDescriptor2 = [(NSSNewsAnalyticsPBEventAccumulator *)self envelopeDescriptor];
            contentType = [envelopeDescriptor2 contentType];
            *buf = 67109378;
            v25 = contentType;
            v26 = 2112;
            v27 = v14;
            _os_log_impl(&dword_25BF0A000, v15, OS_LOG_TYPE_DEBUG, "For envelope of contentType %d, processing event %@.", buf, 0x12u);
          }

          ++v13;
        }

        while (v11 != v13);
        v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
        v11 = v10;
      }

      while (v10);
    }

    events2 = [(NSSNewsAnalyticsPBEventAccumulator *)self events];
    [events2 addObjectsFromArray:v9];

    eventsCopy = v19;
  }
}

- (NSSNewsAnalyticsSessionManager)sessionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionManager);

  return WeakRetained;
}

- (void)initWithEnvelopeDescriptor:sessionManager:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "envelopeDescriptor"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)initWithEnvelopeDescriptor:sessionManager:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "sessionManager"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)observeEvent:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "event"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)observeEvents:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "events"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

@end