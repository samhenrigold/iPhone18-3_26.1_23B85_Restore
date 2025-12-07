@interface RAPSubmissionStatusSyncHandler
- (RAPSubmissionStatusSyncHandler)init;
- (void)_fetchUnresolvedRAPRecordsWithLimit:(unint64_t)limit offset:(int64_t)offset oldestDate:(id)date completion:(id)completion;
- (void)_updateMapsSyncRAPRecordWithIdentifiers:(id)identifiers toStatus:(signed __int16)status forceUpdate:(BOOL)update editBlock:(id)block completion:(id)completion;
- (void)_updateRAPStatusWithIdentifiers:(id)identifiers toStatus:(signed __int16)status forceUpdate:(BOOL)update extraEditBlock:(id)block completion:(id)completion;
- (void)fetchUnresolvedRAPIdentifiersWithBatchSize:(unint64_t)size offset:(int64_t)offset oldestDate:(id)date completion:(id)completion;
- (void)saveIdentifier:(id)identifier completion:(id)completion;
- (void)setFixedProblemAsReviewed:(id)reviewed;
- (void)updateRAPsStatusWithRapInfos:(id)infos completion:(id)completion;
@end

@implementation RAPSubmissionStatusSyncHandler

- (RAPSubmissionStatusSyncHandler)init
{
  v7.receiver = self;
  v7.super_class = RAPSubmissionStatusSyncHandler;
  v2 = [(RAPSubmissionStatusSyncHandler *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_10000FD7C(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Initializing submission status sync handler", v6, 2u);
    }
  }

  return v3;
}

- (void)fetchUnresolvedRAPIdentifiersWithBatchSize:(unint64_t)size offset:(int64_t)offset oldestDate:(id)date completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000FE7C;
  v11[3] = &unk_10003CF70;
  completionCopy = completion;
  offsetCopy = offset;
  v10 = completionCopy;
  [(RAPSubmissionStatusSyncHandler *)self _fetchUnresolvedRAPRecordsWithLimit:size offset:offset oldestDate:date completion:v11];
}

- (void)_fetchUnresolvedRAPRecordsWithLimit:(unint64_t)limit offset:(int64_t)offset oldestDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  v12 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"((status == 0) || (status == 2)) && reportId != ''" argumentArray:0];
  v27 = dateCopy;
  v13 = [NSArray arrayWithObjects:&v27 count:1];
  v14 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"createTime > %@" argumentArray:v13];

  v15 = [_TtC8MapsSync22MapsSyncQueryPredicate alloc];
  v26[0] = v12;
  v26[1] = v14;
  v16 = [NSArray arrayWithObjects:v26 count:2];
  v17 = [v15 initWithAnd:v16];

  v18 = [[_TtC8MapsSync13MapsSyncRange alloc] initWithOffset:offset limit:limit];
  v19 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v17 sortDescriptors:0 range:v18];
  objc_initWeak(&location, self);
  v20 = objc_alloc_init(MSRAPRecordRequest);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10001046C;
  v22[3] = &unk_10003CDB0;
  objc_copyWeak(&v24, &location);
  v21 = completionCopy;
  v23 = v21;
  [v20 fetchWithOptions:v19 completionHandler:v22];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)setFixedProblemAsReviewed:(id)reviewed
{
  problemStatus = [reviewed problemStatus];
  firstObject = [problemStatus firstObject];

  problemId = [firstObject problemId];

  v8 = sub_10000FD7C(v7);
  v9 = v8;
  if (problemId)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      problemId2 = [firstObject problemId];
      *buf = 138412290;
      v17 = problemId2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received notification for fixed RAP: %@", buf, 0xCu);
    }

    problemId3 = [firstObject problemId];
    v15 = problemId3;
    v12 = [NSArray arrayWithObjects:&v15 count:1];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100010764;
    v13[3] = &unk_10003CF98;
    v14 = firstObject;
    [(RAPSubmissionStatusSyncHandler *)self setIdentifiersAsReviewed:v12 completion:v13];

    v9 = v14;
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = firstObject;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Received notification for fixed RAP with nil GEORPProblemStatus problemID. Problem status: %@", buf, 0xCu);
  }
}

- (void)updateRAPsStatusWithRapInfos:(id)infos completion:(id)completion
{
  infosCopy = infos;
  completionCopy = completion;
  v6 = sub_10000FD7C(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = infosCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Updating RAP submissions with RapInfos:%@", &buf, 0xCu);
  }

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v32 = objc_opt_new();
  v9 = +[NSMutableDictionary dictionary];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = infosCopy;
  v11 = [v10 countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v11)
  {
    v12 = *v52;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        rapDisplayMenu = [v14 rapDisplayMenu];
        if (rapDisplayMenu == 1)
        {
          v16 = v32;
LABEL_13:
          rapId = [v14 rapId];
          [v16 addObject:rapId];

          goto LABEL_14;
        }

        v16 = v7;
        if (rapDisplayMenu == 2)
        {
          goto LABEL_13;
        }

        v16 = v8;
        if (rapDisplayMenu == 3)
        {
          goto LABEL_13;
        }

LABEL_14:
        rapResponse = [v14 rapResponse];
        v19 = rapResponse == 0;

        if (!v19)
        {
          rapResponse2 = [v14 rapResponse];
          rapId2 = [v14 rapId];
          [v9 setObject:rapResponse2 forKeyedSubscript:rapId2];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v11);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v58 = 0x3032000000;
  v59 = sub_100010EEC;
  v60 = sub_100010EFC;
  v61 = 0;
  v22 = dispatch_group_create();
  v23 = sub_10000FD7C(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *v55 = 138412290;
    v56 = v7;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Array of RAP submissions that have been Reviewed: %@", v55, 0xCu);
  }

  dispatch_group_enter(v22);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100010F04;
  v49[3] = &unk_10003CFC0;
  v24 = v9;
  v50 = v24;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100010FA8;
  v46[3] = &unk_10003CFE8;
  p_buf = &buf;
  v25 = v22;
  v47 = v25;
  v26 = sub_10000FD7C([(RAPSubmissionStatusSyncHandler *)self _updateRAPStatusWithIdentifiers:v7 toStatus:1 forceUpdate:1 extraEditBlock:v49 completion:v46]);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *v55 = 138412290;
    v56 = v8;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Array of RAP submissions that in Tell Us More statuses: %@", v55, 0xCu);
  }

  v27 = [v8 count];
  if (v27)
  {
    dispatch_group_enter(v25);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100011010;
    v44[3] = &unk_10003CFC0;
    v45 = v24;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000110B4;
    v41[3] = &unk_10003CFE8;
    v43 = &buf;
    v42 = v25;
    [(RAPSubmissionStatusSyncHandler *)self _updateRAPStatusWithIdentifiers:v8 toStatus:2 forceUpdate:1 extraEditBlock:v44 completion:v41];
  }

  v28 = sub_10000FD7C(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *v55 = 138412290;
    v56 = v32;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Array of RAP submissions that in In Review statuses: %@", v55, 0xCu);
  }

  if ([v32 count])
  {
    dispatch_group_enter(v25);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10001111C;
    v39[3] = &unk_10003CFC0;
    v40 = v24;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000111C0;
    v36[3] = &unk_10003CFE8;
    v38 = &buf;
    v37 = v25;
    [(RAPSubmissionStatusSyncHandler *)self _updateRAPStatusWithIdentifiers:v32 toStatus:0 extraEditBlock:v39 completion:v36];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011228;
  block[3] = &unk_10003D010;
  v34 = completionCopy;
  v35 = &buf;
  v29 = completionCopy;
  dispatch_group_notify(v25, &_dispatch_main_q, block);

  _Block_object_dispose(&buf, 8);
}

- (void)_updateRAPStatusWithIdentifiers:(id)identifiers toStatus:(signed __int16)status forceUpdate:(BOOL)update extraEditBlock:(id)block completion:(id)completion
{
  updateCopy = update;
  statusCopy = status;
  identifiersCopy = identifiers;
  completionCopy = completion;
  blockCopy = block;
  v15 = sub_10000FD7C(blockCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = 134218240;
    v17 = [identifiersCopy count];
    v18 = 1024;
    v19 = statusCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Updating %lu RAPs status to: %d", &v16, 0x12u);
  }

  [(RAPSubmissionStatusSyncHandler *)self _updateMapsSyncRAPRecordWithIdentifiers:identifiersCopy toStatus:statusCopy forceUpdate:updateCopy editBlock:blockCopy completion:completionCopy];
}

- (void)_updateMapsSyncRAPRecordWithIdentifiers:(id)identifiers toStatus:(signed __int16)status forceUpdate:(BOOL)update editBlock:(id)block completion:(id)completion
{
  updateCopy = update;
  statusCopy = status;
  identifiersCopy = identifiers;
  blockCopy = block;
  completionCopy = completion;
  if ([identifiersCopy count])
  {
    if (updateCopy)
    {
      v28 = identifiersCopy;
      v15 = [NSArray arrayWithObjects:&v28 count:1];
      v16 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"reportId IN %@" argumentArray:v15];
    }

    else
    {
      statusCopy = [NSString stringWithFormat:@"status != %d", statusCopy];
      v15 = [statusCopy stringByAppendingString:@" AND reportId IN %@"];

      v27 = identifiersCopy;
      v18 = [NSArray arrayWithObjects:&v27 count:1];
      v16 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:v15 argumentArray:v18];
    }

    v19 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v16 sortDescriptors:0 range:0];
    objc_initWeak(&location, self);
    v20 = objc_alloc_init(MSRAPRecordRequest);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100011610;
    v21[3] = &unk_10003D060;
    v22 = completionCopy;
    v23 = blockCopy;
    v25 = statusCopy;
    objc_copyWeak(&v24, &location);
    [v20 fetchWithOptions:v19 completionHandler:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)saveIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v7 = objc_alloc_init(MSRAPRecord);
  [v7 setReportId:identifierCopy];

  v8 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v13 = v7;
  v9 = [NSArray arrayWithObjects:&v13 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100011A8C;
  v11[3] = &unk_10003CD38;
  v12 = completionCopy;
  v10 = completionCopy;
  [v8 saveWithObjects:v9 completionHandler:v11];
}

@end