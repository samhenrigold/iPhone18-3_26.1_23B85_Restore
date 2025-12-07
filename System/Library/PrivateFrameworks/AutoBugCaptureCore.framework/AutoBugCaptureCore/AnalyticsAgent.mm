@interface AnalyticsAgent
+ (id)_awdSignificantOperationalEventMetricForSignificantEvent:(int)event orEventName:(id)name errorContext:(int)context error:(id)error status:(int)status;
+ (id)_awdSymptomsDiagnosticIncidentReportMetricForDiagnosticCase:(id)case;
+ (id)_awdSymptomsDiagnosticNotificationTokenMetricForTokenString:(id)string;
+ (id)sharedInstance;
+ (int)awdDampeningType:(signed __int16)type;
+ (int)awdHandledResult:(signed __int16)result;
+ (void)updateAWDReport:(id)report withEvents:(id)events;
- (AnalyticsAgent)initWithSymptomsAWDConnection:(id)connection queue:(id)queue;
- (void)_handleQuery:(unsigned int)query;
- (void)_postMetric:(id)metric metricIdentifier:(unsigned int)identifier;
- (void)_registerAWDQueriableMetric:(unsigned int)metric;
- (void)apnsPostNotificationToken:(id)token;
- (void)postDiagnosticIncidentReportForCase:(id)case;
- (void)postMetricForSignificantEvent:(int)event errorContext:(int)context error:(id)error status:(int)status;
- (void)postMetricForSignificantEventWithName:(id)name errorContext:(int)context error:(id)error status:(int)status;
@end

@implementation AnalyticsAgent

- (AnalyticsAgent)initWithSymptomsAWDConnection:(id)connection queue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = AnalyticsAgent;
  v9 = [(AnalyticsAgent *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_symptomsAWDConnection, connection);
    objc_storeStrong(&v10->_queue, queue);
    [(AnalyticsAgent *)v10 _registerAWDQueriableMetric:3145742];
    symptomsAWDConnection = v10->_symptomsAWDConnection;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__AnalyticsAgent_initWithSymptomsAWDConnection_queue___block_invoke;
    v16[3] = &unk_278CF0DF8;
    v17 = v10;
    v12 = [(AWDServerConnection *)symptomsAWDConnection registerConfigChangeCallback:v16];
    if ((v12 & 1) == 0)
    {
      v13 = analyticsLogHandle(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Failed to register for Symptoms AWD config change", v15, 2u);
      }
    }
  }

  return v10;
}

void __54__AnalyticsAgent_initWithSymptomsAWDConnection_queue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__AnalyticsAgent_initWithSymptomsAWDConnection_queue___block_invoke_2;
  block[3] = &unk_278CF00E0;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __54__AnalyticsAgent_initWithSymptomsAWDConnection_queue___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = analyticsLogHandle(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [*(a1 + 32) description];
    v5 = [v4 UTF8String];
    v6 = [*(a1 + 40) description];
    v12 = 136315394;
    v13 = v5;
    v14 = 2080;
    v15 = [v6 UTF8String];
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEBUG, "Symptoms AWD metric ids configured, queriables: %s, triggers: %s", &v12, 0x16u);
  }

  v7 = MEMORY[0x277CBEB98];
  v8 = [*(a1 + 32) arrayByAddingObjectsFromArray:*(a1 + 40)];
  v9 = [v7 setWithArray:v8];
  v10 = *(a1 + 48);
  v11 = *(v10 + 24);
  *(v10 + 24) = v9;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[AnalyticsAgent sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_3;

  return v3;
}

void __32__AnalyticsAgent_sharedInstance__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.autobugcapture.analytics", v0);
  if (!v1)
  {
    v2 = analyticsLogHandle(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_ERROR, "Failed to create queue", buf, 2u);
    }
  }

  v3 = [objc_alloc(MEMORY[0x277D7BC58]) initWithComponentId:48];
  if (!v3)
  {
    v5 = analyticsLogHandle(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_ERROR, "Failed to create symptoms AWD connection", v6, 2u);
    }

    goto LABEL_10;
  }

  if (v1)
  {
    v4 = [[AnalyticsAgent alloc] initWithSymptomsAWDConnection:v3 queue:v1];
    v5 = sharedInstance_sharedInstance_3;
    sharedInstance_sharedInstance_3 = v4;
LABEL_10:
  }
}

- (void)_registerAWDQueriableMetric:(unsigned int)metric
{
  v10 = *MEMORY[0x277D85DE8];
  symptomsAWDConnection = self->_symptomsAWDConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__AnalyticsAgent__registerAWDQueriableMetric___block_invoke;
  v7[3] = &unk_278CF0520;
  v7[4] = self;
  v5 = [(AWDServerConnection *)symptomsAWDConnection registerQueriableMetric:*&metric callback:v7];
  if ((v5 & 1) == 0)
  {
    v6 = analyticsLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      metricCopy = metric;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_ERROR, "Failed to register queriable for 0x%x", buf, 8u);
    }
  }
}

void __46__AnalyticsAgent__registerAWDQueriableMetric___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__AnalyticsAgent__registerAWDQueriableMetric___block_invoke_2;
  v5[3] = &unk_278CF0E20;
  v5[4] = *(a1 + 32);
  v6 = a2;
  dispatch_async(v4, v5);
}

- (void)_postMetric:(id)metric metricIdentifier:(unsigned int)identifier
{
  metricCopy = metric;
  queue = [(AnalyticsAgent *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__AnalyticsAgent__postMetric_metricIdentifier___block_invoke;
  block[3] = &unk_278CF0E48;
  identifierCopy = identifier;
  block[4] = self;
  v10 = metricCopy;
  v8 = metricCopy;
  dispatch_async(queue, block);
}

void __47__AnalyticsAgent__postMetric_metricIdentifier___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) newMetricContainerWithIdentifier:*(a1 + 48)];
  v3 = v2;
  if (!v2)
  {
    v7 = analyticsLogHandle(0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v12 = *(a1 + 48);
    v14 = 67109120;
    v15 = v12;
    v9 = "awd is not interested in metric ID %ul";
LABEL_9:
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    goto LABEL_10;
  }

  [v2 setMetric:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 16) submitMetric:v3];
  v5 = v4;
  v6 = analyticsLogHandle(v4);
  v7 = v6;
  if (!v5)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 48);
    v14 = 67109120;
    v15 = v13;
    v9 = "Failed to send a metric with ID %ul";
    goto LABEL_9;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 48);
    v14 = 67109120;
    v15 = v8;
    v9 = "Successfully sent a metric with ID %ul";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
LABEL_10:
    _os_log_impl(&dword_241804000, v10, v11, v9, &v14, 8u);
  }

LABEL_11:
}

- (void)_handleQuery:(unsigned int)query
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = analyticsLogHandle(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = query;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "Received queriable metric request for metric ID %ul", v7, 8u);
  }

  if (query == 3145742)
  {
    v6 = analyticsLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_INFO, "Submitting APNS token to AWD has been deprecated", v7, 2u);
    }
  }
}

+ (id)_awdSymptomsDiagnosticNotificationTokenMetricForTokenString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(AWDSymptomsDiagnosticNotificationToken);
  [(AWDSymptomsDiagnosticNotificationToken *)v4 setNotificationToken:stringCopy];

  return v4;
}

+ (id)_awdSymptomsDiagnosticIncidentReportMetricForDiagnosticCase:(id)case
{
  v63 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  v5 = objc_alloc_init(AWDSymptomsDiagnosticIncidentReport);
  [caseCopy caseOpenedTime];
  [(AWDSymptomsDiagnosticIncidentReport *)v5 setTimestamp:(v6 * 1000.0)];
  [(AWDSymptomsDiagnosticIncidentReport *)v5 setVersion:2];
  -[AWDSymptomsDiagnosticIncidentReport setHandledResult:](v5, "setHandledResult:", +[AnalyticsAgent awdHandledResult:](AnalyticsAgent, "awdHandledResult:", [caseCopy dampeningType]));
  v7 = +[AnalyticsAgent awdDampeningType:](AnalyticsAgent, "awdDampeningType:", [caseCopy dampeningType]);
  if (v7 >= 1)
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setDampeningType:v7];
  }

  [caseCopy caseClosedTime];
  v9 = v8;
  [caseCopy caseOpenedTime];
  if (v9 > v10)
  {
    [caseCopy caseClosedTime];
    v12 = v11;
    [caseCopy caseOpenedTime];
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setDuration:(v13 * -1000.0 + v12 * 1000.0)];
  }

  caseId = [caseCopy caseId];

  if (caseId)
  {
    caseId2 = [caseCopy caseId];
    uUIDString = [caseId2 UUIDString];
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setIdentifier:uUIDString];
  }

  signature = [caseCopy signature];
  v18 = [signature objectForKeyedSubscript:@"groupID"];

  if ([v18 length])
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setGroupIdentifier:v18];
  }

  signature2 = [caseCopy signature];
  v20 = [signature2 objectForKeyedSubscript:@"domain"];

  if ([v20 length])
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setDomain:v20];
  }

  signature3 = [caseCopy signature];
  v22 = [signature3 objectForKeyedSubscript:@"type"];

  if ([v22 length])
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setType:v22];
  }

  signature4 = [caseCopy signature];
  v24 = [signature4 objectForKeyedSubscript:@"subtype"];

  if ([v24 length])
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setSubtype:v24];
  }

  v57 = v22;
  signature5 = [caseCopy signature];
  v26 = [signature5 objectForKeyedSubscript:@"additional"];

  if ([v26 length])
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setSubtypeContext:v26];
  }

  v55 = v26;
  v56 = v24;
  signature6 = [caseCopy signature];
  v28 = [signature6 objectForKeyedSubscript:@"detected"];
  if (v28)
  {
  }

  else
  {
    signature7 = [caseCopy signature];
    v30 = [signature7 objectForKeyedSubscript:@"bundleID"];

    if (!v30)
    {
      goto LABEL_25;
    }
  }

  signature8 = [caseCopy signature];
  v32 = [signature8 objectForKeyedSubscript:@"bundleID"];

  if (![v32 length])
  {
    signature9 = [caseCopy signature];
    v34 = [signature9 objectForKeyedSubscript:@"detected"];

    v32 = v34;
  }

  if ([v32 length])
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setDetectedName:v32];
  }

LABEL_25:
  signature10 = [caseCopy signature];
  v36 = [signature10 objectForKeyedSubscript:@"effective"];

  if ([v36 length])
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setEffectiveName:v36];
  }

  signature11 = [caseCopy signature];
  v38 = [signature11 objectForKeyedSubscript:@"related"];

  if (v38)
  {
    signature12 = [caseCopy signature];
    v40 = [signature12 objectForKeyedSubscript:@"related"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = v20;
      v53 = v18;
      selfCopy = self;
      v41 = v40;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v42 = [v41 countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v59;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v59 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v58 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v46 length])
            {
              [(AWDSymptomsDiagnosticIncidentReport *)v5 addRelatedNames:v46];
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v58 objects:v62 count:16];
        }

        while (v43);
      }

      self = selfCopy;
      v20 = v52;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = v40;
        if ([v47 length])
        {
          [(AWDSymptomsDiagnosticIncidentReport *)v5 addRelatedNames:v47];
        }
      }
    }
  }

  events = [caseCopy events];
  v49 = [events count];

  if (v49)
  {
    events2 = [caseCopy events];
    [self updateAWDReport:v5 withEvents:events2];
  }

  return v5;
}

+ (int)awdHandledResult:(signed __int16)result
{
  if (result == -1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (result)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

+ (int)awdDampeningType:(signed __int16)type
{
  v7 = *MEMORY[0x277D85DE8];
  if ((type + 2) < 7)
  {
    return dword_24188AD28[(type + 2)];
  }

  typeCopy = type;
  v5 = analyticsLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109120;
    v6[1] = typeCopy;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_ERROR, "Found unexpected dampening type %d", v6, 8u);
  }

  return 0;
}

+ (void)updateAWDReport:(id)report withEvents:(id)events
{
  v50 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  eventsCopy = events;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = [eventsCopy countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    v40 = eventsCopy;
    v41 = *v44;
    do
    {
      v9 = 0;
      v42 = v7;
      do
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 objectForKeyedSubscript:@"type"];
          if ([v11 isEqualToString:@"probe"])
          {
            v12 = [v10 objectForKeyedSubscript:@"status"];
            v13 = [v10 objectForKeyedSubscript:@"result"];
            v14 = v13;
            v15 = 2;
            goto LABEL_11;
          }

          v13 = [v11 isEqualToString:@"symptom"];
          if (v13)
          {
            v14 = 0;
            v12 = 0;
            v15 = 1;
LABEL_11:
            v16 = analyticsLogHandle(v13);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v48 = v11;
              _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_INFO, "Processing event of type: %@", buf, 0xCu);
            }

            v17 = [v10 objectForKeyedSubscript:@"name"];
            v18 = [v10 objectForKeyedSubscript:@"process"];
            v19 = [v10 objectForKeyedSubscript:@"timestamp"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v19 timeIntervalSince1970];
              goto LABEL_18;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              [v19 doubleValue];
LABEL_18:
              v21 = v20;
              if (v20 > 0.0)
              {
                v22 = objc_alloc_init(AWDSymptomsDiagnosticIncidentEvent);
                [(AWDSymptomsDiagnosticIncidentEvent *)v22 setType:v15];
                if ([v17 length])
                {
                  [(AWDSymptomsDiagnosticIncidentEvent *)v22 setName:v17];
                }

                v23 = [v18 length];
                if (v23)
                {
                  v23 = [(AWDSymptomsDiagnosticIncidentEvent *)v22 setDetectedName:v18];
                }

                v24 = analyticsLogHandle(v23);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v48 = v12;
                  _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_INFO, " kSymptomDiagnosticKeyEventStatus is %@", buf, 0xCu);
                }

                v25 = [v12 length];
                if (v25)
                {
                  if ([v12 isEqualToString:@"starting"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"Starting") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"Requesting"))
                  {
                    v26 = 1;
                    goto LABEL_30;
                  }

                  if ([v12 isEqualToString:@"finished"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"Finished"))
                  {
                    goto LABEL_66;
                  }

                  if ([v12 isEqualToString:@"success"])
                  {
                    v37 = 1;
                    goto LABEL_65;
                  }

                  v25 = [v12 isEqualToString:@"failure"];
                  if (v25)
                  {
                    v37 = 2;
LABEL_65:
                    [(AWDSymptomsDiagnosticIncidentEvent *)v22 setStatus:v37];
LABEL_66:
                    v26 = 2;
LABEL_30:
                    v25 = [(AWDSymptomsDiagnosticIncidentEvent *)v22 setState:v26];
                  }
                }

                v27 = analyticsLogHandle(v25);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v48 = v14;
                  _os_log_impl(&dword_241804000, v27, OS_LOG_TYPE_INFO, " kSymptomDiagnosticKeyEventResult is %@", buf, 0xCu);
                }

                if ([v14 length])
                {
                  if ([v14 isEqualToString:@"success"])
                  {
                    v28 = 1;
                    goto LABEL_40;
                  }

                  if ([v14 isEqualToString:@"failure"])
                  {
                    v28 = 2;
                    goto LABEL_40;
                  }

                  if ([v12 isEqualToString:@"timeout"])
                  {
                    v28 = 3;
LABEL_40:
                    [(AWDSymptomsDiagnosticIncidentEvent *)v22 setStatus:v28];
                  }
                }

                hasState = [(AWDSymptomsDiagnosticIncidentEvent *)v22 hasState];
                if (hasState)
                {
                  v30 = analyticsLogHandle(hasState);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                  {
                    v31 = [(AWDSymptomsDiagnosticIncidentEvent *)v22 stateAsString:[(AWDSymptomsDiagnosticIncidentEvent *)v22 state]];
                    *buf = 138412290;
                    v48 = v31;
                    _os_log_impl(&dword_241804000, v30, OS_LOG_TYPE_DEBUG, "  state: %@", buf, 0xCu);

                    eventsCopy = v40;
                  }
                }

                hasStatus = [(AWDSymptomsDiagnosticIncidentEvent *)v22 hasStatus];
                if (hasStatus)
                {
                  v33 = analyticsLogHandle(hasStatus);
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                  {
                    v34 = [(AWDSymptomsDiagnosticIncidentEvent *)v22 statusAsString:[(AWDSymptomsDiagnosticIncidentEvent *)v22 status]];
                    *buf = 138412290;
                    v48 = v34;
                    _os_log_impl(&dword_241804000, v33, OS_LOG_TYPE_DEBUG, "  status: %@", buf, 0xCu);

                    eventsCopy = v40;
                  }
                }

                hasState2 = [(AWDSymptomsDiagnosticIncidentEvent *)v22 hasState];
                if ((hasState2 & 1) != 0 || (hasState2 = [(AWDSymptomsDiagnosticIncidentEvent *)v22 hasStatus], hasState2))
                {
                  v36 = analyticsLogHandle(hasState2);
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_INFO, " Adding event to AWD incident report.", buf, 2u);
                  }

                  [reportCopy addIncidentEvents:v22];
                  [reportCopy addTimestampsIncidentEvents:(v21 * 1000.0)];
                  eventsCopy = v40;
                }
              }
            }

            v8 = v41;
            v7 = v42;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v38 = [eventsCopy countByEnumeratingWithState:&v43 objects:v49 count:16];
      v7 = v38;
    }

    while (v38);
  }
}

+ (id)_awdSignificantOperationalEventMetricForSignificantEvent:(int)event orEventName:(id)name errorContext:(int)context error:(id)error status:(int)status
{
  v7 = *&status;
  v9 = *&context;
  v10 = *&event;
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  errorCopy = error;
  if (v10 <= 0 && ![nameCopy length])
  {
    v15 = analyticsLogHandle(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21[0] = 67109378;
      v21[1] = v10;
      v22 = 2112;
      v23 = nameCopy;
      v16 = "Cannot create SignificantOperationalEvent metric without a valid event (%d) or event name (%@)!";
      v17 = v15;
      v18 = 18;
      goto LABEL_18;
    }

LABEL_19:

    v14 = 0;
    goto LABEL_20;
  }

  v13 = objc_opt_new();
  if (!v13)
  {
    v15 = analyticsLogHandle(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21[0]) = 0;
      v16 = "Unable to create AWDSymptomsSignificantOperationalEvent object!";
      v17 = v15;
      v18 = 2;
LABEL_18:
      _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_ERROR, v16, v21, v18);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v14 = v13;
  if (v10 < 1)
  {
    if ([nameCopy length])
    {
      [v14 setAlternateName:nameCopy];
    }
  }

  else
  {
    [v13 setName:v10];
  }

  if (v9 >= 1)
  {
    [v14 setError:v9];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    domain = [errorCopy domain];
    [v14 setErrorDomain:domain];

    [v14 setErrorCode:{objc_msgSend(errorCopy, "code")}];
  }

  if (v7 >= 1)
  {
    [v14 setStatus:v7];
  }

LABEL_20:

  return v14;
}

- (void)apnsPostNotificationToken:(id)token
{
  v9 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v5 = analyticsLogHandle(tokenCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = tokenCopy;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "Creating AWDSymptomsDiagnosticNotificationToken metric with token string %@", &v7, 0xCu);
  }

  v6 = [AnalyticsAgent _awdSymptomsDiagnosticNotificationTokenMetricForTokenString:tokenCopy];
  [(AnalyticsAgent *)self _postMetric:v6 metricIdentifier:3145742];
}

- (void)postDiagnosticIncidentReportForCase:(id)case
{
  v9 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  v4 = analyticsLogHandle(caseCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = caseCopy;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "Creating AWDSymptomsDiagnosticIncidentReport for diagnostic case: %@", &v7, 0xCu);
  }

  v5 = [AnalyticsAgent _awdSymptomsDiagnosticIncidentReportMetricForDiagnosticCase:caseCopy];
  v6 = +[AnalyticsAgent sharedInstance];
  [v6 _postMetric:v5 metricIdentifier:3145739];
}

- (void)postMetricForSignificantEvent:(int)event errorContext:(int)context error:(id)error status:(int)status
{
  v6 = *&status;
  v7 = *&context;
  v8 = *&event;
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v10 = analyticsLogHandle(errorCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109890;
    v13[1] = v8;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v6;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "Creating AWDSymptomsSignificantOperationalEvent metric with event %d, error context %d, status %d, error: %@", v13, 0x1Eu);
  }

  v11 = [AnalyticsAgent _awdSignificantOperationalEventMetricForSignificantEvent:v8 orEventName:0 errorContext:v7 error:errorCopy status:v6];
  v12 = +[AnalyticsAgent sharedInstance];
  [v12 _postMetric:v11 metricIdentifier:3145749];
}

- (void)postMetricForSignificantEventWithName:(id)name errorContext:(int)context error:(id)error status:(int)status
{
  v6 = *&status;
  v8 = *&context;
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  errorCopy = error;
  v11 = analyticsLogHandle(errorCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 138413058;
    v15 = nameCopy;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v6;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_INFO, "Creating AWDSymptomsSignificantOperationalEvent metric with event name %@, error context %d, status %d, error: %@", &v14, 0x22u);
  }

  v12 = [AnalyticsAgent _awdSignificantOperationalEventMetricForSignificantEvent:0 orEventName:nameCopy errorContext:v8 error:errorCopy status:v6];
  v13 = +[AnalyticsAgent sharedInstance];
  [v13 _postMetric:v12 metricIdentifier:3145749];
}

@end