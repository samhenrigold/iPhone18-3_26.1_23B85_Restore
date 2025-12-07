@interface RAPBatchSubmissionStatusTicket
- (void)cancelRequest;
- (void)fetchStatusesForIdentifiers:(id)identifiers querySource:(int)source completion:(id)completion;
@end

@implementation RAPBatchSubmissionStatusTicket

- (void)fetchStatusesForIdentifiers:(id)identifiers querySource:(int)source completion:(id)completion
{
  v6 = *&source;
  identifiersCopy = identifiers;
  completionCopy = completion;
  if ([identifiersCopy count])
  {
    v10 = identifiersCopy;
    v11 = objc_alloc_init(GEORPRapQueryParameters);
    v12 = [v10 mutableCopy];

    [v11 setFeedbackIds:v12];
    [v11 setQuerySource:v6];
    v13 = objc_alloc_init(GEORPFeedbackRequestParameters);
    v14 = objc_alloc_init(GEORPFeedbackQueryParameters);
    [v13 setQueryParameters:v14];

    queryParameters = [v13 queryParameters];
    [queryParameters addFeedbackComponentType:5];

    v16 = objc_alloc_init(GEORPFeedbackComponentQueryParameters);
    queryParameters2 = [v13 queryParameters];
    [queryParameters2 setComponentQueryParameters:v16];

    queryParameters3 = [v13 queryParameters];
    componentQueryParameters = [queryParameters3 componentQueryParameters];
    [componentQueryParameters setRapQueryParameters:v11];

    v20 = [GEORPFeedbackRequest alloc];
    v21 = +[GEOMapService sharedService];
    defaultTraits = [v21 defaultTraits];
    v23 = [v20 initWithFeedbackRequestParameters:v13 traits:defaultTraits];

    v25 = sub_1000035D8(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v23;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Created request %@", buf, 0xCu);
    }

    v26 = +[GEOMapService sharedService];
    v27 = +[GEOMapService sharedService];
    defaultTraits2 = [v27 defaultTraits];
    v29 = [v26 ticketForFeedbackRequest:v23 traits:defaultTraits2];
    ticket = self->_ticket;
    self->_ticket = v29;

    v31 = self->_ticket;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000361C;
    v32[3] = &unk_10003C948;
    v33 = completionCopy;
    [(GEOMapServiceFeedbackReportTicket *)v31 submitWithHandler:v32 networkActivity:0];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)cancelRequest
{
  [(GEOMapServiceFeedbackReportTicket *)self->_ticket cancel];
  ticket = self->_ticket;
  self->_ticket = 0;
}

@end