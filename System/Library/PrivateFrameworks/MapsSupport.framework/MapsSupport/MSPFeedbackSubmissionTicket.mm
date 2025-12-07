@interface MSPFeedbackSubmissionTicket
+ (id)ticketForFeedbackRequest:(id)request;
+ (id)ticketForFeedbackRequest:(id)request traits:(id)traits;
+ (id)ticketForFeedbackRequestParameters:(id)parameters mapItem:(id)item traits:(id)traits;
- (MSPFeedbackSubmissionTicket)initWithMapServiceTicket:(id)ticket;
- (void)cancel;
- (void)submitWithCallbackQueue:(id)queue handler:(id)handler networkActivity:(id)activity;
@end

@implementation MSPFeedbackSubmissionTicket

- (MSPFeedbackSubmissionTicket)initWithMapServiceTicket:(id)ticket
{
  ticketCopy = ticket;
  v14.receiver = self;
  v14.super_class = MSPFeedbackSubmissionTicket;
  v6 = [(MSPFeedbackSubmissionTicket *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ticket, ticket);
    v8 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:100];
    fakeProgress = v7->_fakeProgress;
    v7->_fakeProgress = v8;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    sessionIdentifier = v7->_sessionIdentifier;
    v7->_sessionIdentifier = uUIDString;

    v7->_cancelled = 0;
  }

  return v7;
}

+ (id)ticketForFeedbackRequest:(id)request
{
  v4 = MEMORY[0x277D0EBD0];
  requestCopy = request;
  sharedService = [v4 sharedService];
  defaultTraits = [sharedService defaultTraits];
  v8 = [self ticketForFeedbackRequest:requestCopy traits:defaultTraits];

  return v8;
}

+ (id)ticketForFeedbackRequest:(id)request traits:(id)traits
{
  v5 = MEMORY[0x277D0EBD0];
  traitsCopy = traits;
  requestCopy = request;
  sharedService = [v5 sharedService];
  v9 = [sharedService ticketForFeedbackRequest:requestCopy traits:traitsCopy];

  v10 = [objc_alloc(objc_opt_class()) initWithMapServiceTicket:v9];

  return v10;
}

+ (id)ticketForFeedbackRequestParameters:(id)parameters mapItem:(id)item traits:(id)traits
{
  v7 = MEMORY[0x277D0EBD0];
  traitsCopy = traits;
  itemCopy = item;
  parametersCopy = parameters;
  sharedService = [v7 sharedService];
  v12 = [sharedService ticketForFeedbackRequestParameters:parametersCopy placeForProblemContext:itemCopy userCredentials:0 pushToken:0 allowContactBackAtEmailAddress:0 traits:traitsCopy];

  v13 = [objc_alloc(objc_opt_class()) initWithMapServiceTicket:v12];

  return v13;
}

- (void)cancel
{
  [(GEOMapServiceFeedbackReportTicket *)self->_ticket cancel];
  fakeProgress = [(MSPFeedbackSubmissionTicket *)self fakeProgress];
  [fakeProgress cancel];

  self->_cancelled = 1;
}

- (void)submitWithCallbackQueue:(id)queue handler:(id)handler networkActivity:(id)activity
{
  v36 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  activityCopy = activity;
  v11 = MSPGetMSPFeedbackSubmissionTicketLog(activityCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412290;
    v35 = sessionIdentifier;
    _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_INFO, "<<<<<< BEGIN Session %@ >>>>>>>>", buf, 0xCu);
  }

  fakeProgress = [(MSPFeedbackSubmissionTicket *)self fakeProgress];
  [fakeProgress setCompletedUnitCount:20];

  v15 = MSPGetMSPFeedbackSubmissionTicketLog(v14);
  v16 = os_signpost_id_generate(v15);

  v18 = MSPGetMSPFeedbackSubmissionTicketLog(v17);
  v19 = v18;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "MapServiceRequest", &unk_2581CCE6D, buf, 2u);
  }

  v21 = MSPGetMSPFeedbackSubmissionTicketLog(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = self->_sessionIdentifier;
    *buf = 138412290;
    v35 = v22;
    _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_INFO, "%@ - Initiate a Map Service request", buf, 0xCu);
  }

  ticket = self->_ticket;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __79__MSPFeedbackSubmissionTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke;
  v29[3] = &unk_279868820;
  v24 = queueCopy;
  v33 = v16;
  v30 = v24;
  selfCopy = self;
  v25 = handlerCopy;
  v32 = v25;
  [(GEOMapServiceFeedbackReportTicket *)ticket submitWithHandler:v29 networkActivity:activityCopy];

  v27 = MSPGetMSPFeedbackSubmissionTicketLog(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = self->_sessionIdentifier;
    *buf = 138412290;
    v35 = v28;
    _os_log_impl(&dword_25813A000, v27, OS_LOG_TYPE_INFO, "<<<<<< END Session %@ >>>>>>>>", buf, 0xCu);
  }
}

void __79__MSPFeedbackSubmissionTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__MSPFeedbackSubmissionTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_2;
  v16[3] = &unk_2798687F8;
  v11 = a1[6];
  v10 = a1[7];
  v12 = a1[4];
  v16[4] = a1[5];
  v17 = v9;
  v21 = v10;
  v18 = v7;
  v19 = v8;
  v20 = v11;
  v13 = v8;
  v14 = v7;
  v15 = v9;
  dispatch_async(v12, v16);
}

uint64_t __79__MSPFeedbackSubmissionTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = MSPGetMSPFeedbackSubmissionTicketLog(a1);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v3, OS_SIGNPOST_INTERVAL_END, v4, "MapServiceRequest", &unk_2581CCE6D, &v17, 2u);
  }

  v5 = [*(a1 + 32) fakeProgress];
  [v5 setCompletedUnitCount:80];

  if (*(a1 + 40))
  {
    v7 = MSPGetMSPFeedbackSubmissionTicketLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "Failed Map Service request with error %@", &v17, 0xCu);
    }

    if (*(a1 + 40))
    {
      goto LABEL_9;
    }
  }

  v9 = [*(a1 + 48) status];
  if (v9)
  {
LABEL_9:
    v10 = MSPGetMSPFeedbackSubmissionTicketLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(a1 + 32) + 16);
      v12 = [*(a1 + 48) status];
      v13 = *(a1 + 40);
      v17 = 138412802;
      v18 = v11;
      v19 = 1024;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_INFO, "%@ - Map Service request failed with response status: %d, and error: %@", &v17, 0x1Cu);
    }
  }

  else
  {
    v10 = [*(a1 + 32) fakeProgress];
    v14 = [v10 totalUnitCount];
    v15 = [*(a1 + 32) fakeProgress];
    [v15 setCompletedUnitCount:v14];
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 56), *(a1 + 40));
  }

  return result;
}

@end