@interface SearchCallHistoryIntentHandler
+ (unint64_t)maximumRecordCountForCallRecordTypeOptions:(unint64_t)options;
- (SearchCallHistoryIntentHandler)init;
- (SearchCallHistoryIntentHandler)initWithDataSource:(id)source;
- (id)callRecordsForRecentCallsWithRecordTypeOptions:(unint64_t)options startDate:(id)date endDate:(id)endDate recipient:(id)recipient capabilities:(unint64_t)capabilities preferredProvider:(int64_t)provider maximumRecordCount:(unint64_t)count unseen:(id)self0;
- (id)callRecordsForVoicemails:(id)voicemails;
- (void)handleSearchCallHistory:(id)history completion:(id)completion;
- (void)handleSearchVoicemailForRecipient:(id)recipient fromStartDate:(id)date toEndDate:(id)endDate unread:(id)unread maximumRecordCount:(unint64_t)count completion:(id)completion;
- (void)resolveRecipientForSearchCallHistory:(id)history withCompletion:(id)completion;
@end

@implementation SearchCallHistoryIntentHandler

- (SearchCallHistoryIntentHandler)init
{
  v3 = objc_alloc_init(SearchCallHistoryIntentHandlerDataSource);
  v4 = [(SearchCallHistoryIntentHandler *)self initWithDataSource:v3];

  return v4;
}

- (SearchCallHistoryIntentHandler)initWithDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = SearchCallHistoryIntentHandler;
  v6 = [(SearchCallHistoryIntentHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    v8 = objc_alloc_init(NSCache);
    identifierToContactCache = v7->_identifierToContactCache;
    v7->_identifierToContactCache = v8;
  }

  return v7;
}

+ (unint64_t)maximumRecordCountForCallRecordTypeOptions:(unint64_t)options
{
  if ((options & 8) != 0)
  {
    return 1;
  }

  else
  {
    return 25;
  }
}

- (void)handleSearchCallHistory:(id)history completion:(id)completion
{
  historyCopy = history;
  completionCopy = completion;
  v7 = IntentHandlerDefaultLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = historyCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got a SearchCallHistory intent: %@", buf, 0xCu);
  }

  dateCreated = [historyCopy dateCreated];
  startDateComponents = [dateCreated startDateComponents];
  endDateComponents = [dateCreated endDateComponents];
  recipient = [historyCopy recipient];
  callCapabilities = [historyCopy callCapabilities];
  callTypes = [historyCopy callTypes];
  unseen = [historyCopy unseen];
  preferredCallProvider = [historyCopy preferredCallProvider];
  v13 = IntentHandlerDefaultLog(preferredCallProvider);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = startDateComponents;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Start Date  : %@", buf, 0xCu);
  }

  v15 = IntentHandlerDefaultLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = endDateComponents;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "End Date    : %@", buf, 0xCu);
  }

  v17 = IntentHandlerDefaultLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = recipient;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Recipient   : %@", buf, 0xCu);
  }

  v19 = IntentHandlerDefaultLog(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v44 = callCapabilities;
    v45 = 1024;
    v46 = callCapabilities & 1;
    v47 = 1024;
    v48 = (callCapabilities >> 1) & 1;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Capabilities: %lx (audio: %d | video: %d)", buf, 0x18u);
  }

  v21 = IntentHandlerDefaultLog(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = INPreferredCallProviderGetName();
    *buf = 138412290;
    v44 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PreferredCallProvider: %@", buf, 0xCu);
  }

  v24 = IntentHandlerDefaultLog(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v44 = callTypes;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Types       : %lx", buf, 0xCu);
  }

  v26 = IntentHandlerDefaultLog(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = unseen;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Unseen     : %@", buf, 0xCu);
  }

  v27 = [objc_opt_class() maximumRecordCountForCallRecordTypeOptions:callTypes];
  v28 = startDateComponents;
  date = [startDateComponents date];
  date2 = [endDateComponents date];
  if ((callTypes & 0x10) != 0)
  {
    selfCopy = self;
    v32 = recipient;
    v36 = unseen;
    v38 = v27;
    v35 = completionCopy;
    [(SearchCallHistoryIntentHandler *)selfCopy handleSearchVoicemailForRecipient:recipient fromStartDate:date toEndDate:date2 unread:unseen maximumRecordCount:v38 completion:completionCopy];
  }

  else
  {
    selfCopy2 = self;
    v32 = recipient;
    v33 = [(SearchCallHistoryIntentHandler *)selfCopy2 callRecordsForRecentCallsWithRecordTypeOptions:callTypes startDate:date endDate:date2 recipient:recipient capabilities:callCapabilities preferredProvider:preferredCallProvider maximumRecordCount:v27 unseen:unseen];

    date2 = [[INSearchCallHistoryIntentResponse alloc] initWithCode:7 userActivity:0];
    v34 = IntentHandlerDefaultLog([date2 setCallRecords:v33]);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = date2;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Calling completion block with response: %@", buf, 0xCu);
    }

    v35 = completionCopy;
    (*(completionCopy + 2))(completionCopy, date2);
    date = v33;
    v36 = unseen;
  }
}

- (void)resolveRecipientForSearchCallHistory:(id)history withCompletion:(id)completion
{
  completionCopy = completion;
  recipient = [history recipient];
  v7 = IntentHandlerDefaultLog(recipient);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = recipient;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resolveRecipientForSearchCallHistory: %@", &v23, 0xCu);
  }

  if (!recipient)
  {
    v15 = IntentHandlerDefaultLog(v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No recipient specified, returning notRequired", &v23, 2u);
    }

    v14 = +[INPersonResolutionResult notRequired];
    goto LABEL_11;
  }

  personHandle = [recipient personHandle];
  value = [personHandle value];
  v11 = [value length];

  if (v11)
  {
    v13 = IntentHandlerDefaultLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = recipient;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Handle is present. Simply using the recipient to resolve with: %@", &v23, 0xCu);
    }

    v14 = [INPersonResolutionResult successWithResolvedPerson:recipient];
LABEL_11:
    v16 = v14;
    goto LABEL_20;
  }

  siriMatches = [recipient siriMatches];
  v18 = [siriMatches count];
  v19 = IntentHandlerDefaultLog(v18);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Recipient contains siriMatches, preserving those and returning success", &v23, 2u);
    }

    v21 = [INPersonResolutionResult successWithResolvedPerson:recipient];
  }

  else
  {
    if (v20)
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No contacts match the specified recipient, returning unsupported (a.k.a. notFound)", &v23, 2u);
    }

    v21 = +[INPersonResolutionResult unsupported];
  }

  v16 = v21;

LABEL_20:
  v22 = IntentHandlerDefaultLog(v14);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Resolving with: %@", &v23, 0xCu);
  }

  completionCopy[2](completionCopy, v16);
}

- (void)handleSearchVoicemailForRecipient:(id)recipient fromStartDate:(id)date toEndDate:(id)endDate unread:(id)unread maximumRecordCount:(unint64_t)count completion:(id)completion
{
  recipientCopy = recipient;
  dateCopy = date;
  endDateCopy = endDate;
  unreadCopy = unread;
  completionCopy = completion;
  v19 = IntentHandlerDefaultLog(completionCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Type indicates we should be searching for voicemail. Matching voicemails to this intent", buf, 2u);
  }

  dataSource = [(SearchCallHistoryIntentHandler *)self dataSource];
  voicemailDataSource = [dataSource voicemailDataSource];

  if ([voicemailDataSource isOnlineAndSubscribed])
  {
    [(SearchCallHistoryIntentHandler *)self dataSource];
    selfCopy = self;
    v23 = v34 = self;
    [v23 contactsDataSource];
    countCopy = count;
    v24 = voicemailDataSource;
    v25 = completionCopy;
    v26 = unreadCopy;
    v27 = endDateCopy;
    v29 = v28 = dateCopy;
    identifierToContactCache = [(SearchCallHistoryIntentHandler *)selfCopy identifierToContactCache];
    v31 = [recipientCopy tu_handlesMatchingPersonWithContactsDataSource:v29 identifierToContactCache:identifierToContactCache];

    dateCopy = v28;
    endDateCopy = v27;
    unreadCopy = v26;
    completionCopy = v25;
    voicemailDataSource = v24;

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100008D3C;
    v39[3] = &unk_10004CCD0;
    v40 = recipientCopy;
    v41 = v31;
    v42 = dateCopy;
    v43 = endDateCopy;
    v44 = unreadCopy;
    v32 = v31;
    v33 = objc_retainBlock(v39);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000915C;
    v36[3] = &unk_10004CCF8;
    v38 = countCopy;
    v36[4] = v34;
    v37 = completionCopy;
    [v24 fetchVoicemailsMatching:v33 completion:v36];
  }

  else
  {
    v32 = [[INSearchCallHistoryIntentResponse alloc] initWithCode:5 userActivity:0];
    (*(completionCopy + 2))(completionCopy, v32);
  }
}

- (id)callRecordsForVoicemails:(id)voicemails
{
  voicemailsCopy = voicemails;
  v37 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [voicemailsCopy count]);
  v35 = objc_alloc_init(NSMutableDictionary);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = voicemailsCopy;
  v38 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v38)
  {
    v36 = *v41;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v41 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v40 + 1) + 8 * i);
        senderDestinationID = [v5 senderDestinationID];
        v7 = [senderDestinationID length];

        if (!v7)
        {
          v14 = IntentHandlerDefaultLog(v8);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Could not determine voicemail.senderDestinationID", buf, 2u);
          }

          goto LABEL_14;
        }

        v9 = [TUHandle alloc];
        senderDestinationID2 = [v5 senderDestinationID];
        v11 = [v9 initWithType:2 value:senderDestinationID2];

        v12 = [v35 objectForKey:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          if (v12)
          {

LABEL_14:
            v13 = 0;
LABEL_23:
            v24 = 0;
            goto LABEL_24;
          }

          dataSource = [(SearchCallHistoryIntentHandler *)self dataSource];
          contactsDataSource = [dataSource contactsDataSource];
          dataSource2 = [(SearchCallHistoryIntentHandler *)self dataSource];
          coreTelephonyDataSource = [dataSource2 coreTelephonyDataSource];
          allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
          v13 = [INPerson tu_personMatchingHandle:v11 contactsDataSource:contactsDataSource isoCountryCodes:allRelevantISOCountryCodes];

          if (v13)
          {
            v20 = v13;
          }

          else
          {
            v20 = +[NSNull null];
          }

          v21 = v20;
          [v35 setObject:v20 forKey:v11];
        }

        if (!v13)
        {
          goto LABEL_23;
        }

        v23 = IntentHandlerDefaultLog(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] person in callRecord is nil", buf, 2u);
        }

        v44 = v13;
        v24 = [NSArray arrayWithObjects:&v44 count:1];
LABEL_24:
        v25 = [INCallRecord alloc];
        vmIdentifier = [v5 vmIdentifier];
        date = [v5 date];
        [v5 duration];
        v28 = [NSNumber numberWithDouble:?];
        v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isUnread]);
        v30 = [v25 initWithIdentifier:vmIdentifier dateCreated:date callRecordType:5 callCapability:1 callDuration:v28 unseen:v29 participants:v24 numberOfCalls:0 isCallerIdBlocked:0];

        [v37 addObject:v30];
      }

      v38 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v38);
  }

  v31 = [v37 copy];

  return v31;
}

- (id)callRecordsForRecentCallsWithRecordTypeOptions:(unint64_t)options startDate:(id)date endDate:(id)endDate recipient:(id)recipient capabilities:(unint64_t)capabilities preferredProvider:(int64_t)provider maximumRecordCount:(unint64_t)count unseen:(id)self0
{
  providerCopy = provider;
  *(&v91 + 1) = date;
  *&v91 = endDate;
  recipientCopy = recipient;
  unseenCopy = unseen;
  v14 = IntentHandlerDefaultLog(unseenCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Performing call history lookup", buf, 2u);
  }

  v15 = &AnalyticsSendEventLazy_ptr;
  v16 = objc_alloc_init(NSMutableArray);
  if (v91 != 0)
  {
    v17 = [CallHistoryDataSourcePredicate predicateForCallsAfterDate:*(&v91 + 1) beforeDate:v91];
    [v16 addObject:v17];
  }

  if (recipientCopy)
  {
    dataSource = [(SearchCallHistoryIntentHandler *)self dataSource];
    contactsDataSource = [dataSource contactsDataSource];
    identifierToContactCache = [(SearchCallHistoryIntentHandler *)self identifierToContactCache];
    v21 = [recipientCopy tu_handlesMatchingPersonWithContactsDataSource:contactsDataSource identifierToContactCache:identifierToContactCache];

    v22 = [CallHistoryDataSourcePredicate predicateForCallsWithNumberOfRemoteParticipants:1];
    [v16 addObject:v22];
    dataSource2 = [(SearchCallHistoryIntentHandler *)self dataSource];
    [dataSource2 coreTelephonyDataSource];
    v25 = v24 = options;
    allRelevantISOCountryCodes = [v25 allRelevantISOCountryCodes];
    v27 = [CallHistoryDataSourcePredicate predicateForCallsWithAnyOfTheseRemoteParticipantHandles:v21 isoCountryCodes:allRelevantISOCountryCodes];

    options = v24;
    [v16 addObject:v27];
  }

  v89 = recipientCopy;
  v28 = unseenCopy;
  if (options)
  {
    v29 = objc_alloc_init(NSMutableArray);
    v30 = v29;
    if (options)
    {
      v31 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:1];
      [v30 addObject:v31];
    }

    if ((options & 2) != 0)
    {
      v32 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:0];
      v33 = [CallHistoryDataSourcePredicate predicateForCallsThatWereAnswered:0];
      optionsCopy = options;
      v97[0] = v32;
      v97[1] = v33;
      v35 = [NSArray arrayWithObjects:v97 count:2];
      v36 = [NSCompoundPredicate andPredicateWithSubpredicates:v35];

      [v30 addObject:v36];
      options = optionsCopy;

      v28 = unseenCopy;
      v15 = &AnalyticsSendEventLazy_ptr;
    }

    if ((options & 4) != 0)
    {
      v37 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:0];
      [CallHistoryDataSourcePredicate predicateForCallsThatWereAnswered:1];
      v39 = v38 = v28;
      optionsCopy2 = options;
      v96[0] = v37;
      v96[1] = v39;
      v41 = [NSArray arrayWithObjects:v96 count:2];
      v42 = [NSCompoundPredicate andPredicateWithSubpredicates:v41];

      [v30 addObject:v42];
      options = optionsCopy2;

      v28 = v38;
      v15 = &AnalyticsSendEventLazy_ptr;
    }

    if (options >= 8)
    {
      v43 = IntentHandlerDefaultLog(v29);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_10002F50C(options, v43, v44, v45, v46, v47, v48, v49);
      }
    }

    if ([v30 count] == 1)
    {
      firstObject = [v30 firstObject];
    }

    else
    {
      if ([v30 count] < 2)
      {
LABEL_23:

        goto LABEL_24;
      }

      firstObject = [NSCompoundPredicate orPredicateWithSubpredicates:v30];
    }

    v51 = firstObject;
    [v16 addObject:firstObject];

    goto LABEL_23;
  }

LABEL_24:
  if (!capabilities)
  {
    goto LABEL_39;
  }

  v52 = objc_alloc_init(v15[337]);
  v53 = v52;
  if (capabilities)
  {
    v54 = +[CallHistoryDataSourcePredicate predicateForAudioCalls];
    [v53 addObject:v54];
  }

  if ((capabilities & 2) != 0)
  {
    v55 = +[CallHistoryDataSourcePredicate predicateForVideoCalls];
    [v53 addObject:v55];
  }

  if (capabilities >= 4)
  {
    v56 = IntentHandlerDefaultLog(v52);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_10002F578(capabilities, v56, v57, v58, v59, v60, v61, v62);
    }
  }

  if ([v53 count] == 1)
  {
    firstObject2 = [v53 firstObject];
LABEL_37:
    v64 = firstObject2;
    [v16 addObject:firstObject2];

    goto LABEL_38;
  }

  if ([v53 count] >= 2)
  {
    firstObject2 = [NSCompoundPredicate orPredicateWithSubpredicates:v53];
    goto LABEL_37;
  }

LABEL_38:

LABEL_39:
  if (providerCopy == 2)
  {
    v65 = +[CallHistoryDataSourcePredicate predicateForFaceTimeCalls];
  }

  else
  {
    if (providerCopy != 1)
    {
      goto LABEL_44;
    }

    v65 = +[CallHistoryDataSourcePredicate predicateForTelephonyCalls];
  }

  v66 = v65;
  [v16 addObject:{v65, providerCopy}];

LABEL_44:
  if (v28)
  {
    v67 = +[CallHistoryDataSourcePredicate predicateForCallsThatAreRead:](CallHistoryDataSourcePredicate, "predicateForCallsThatAreRead:", [v28 BOOLValue] ^ 1);
    [v16 addObject:v67];
  }

  dataSource3 = [(SearchCallHistoryIntentHandler *)self dataSource];
  restrictedCallTypes = [dataSource3 restrictedCallTypes];

  if (restrictedCallTypes)
  {
    v70 = [CallHistoryDataSourcePredicate predicateFilteringOutCallTypes:restrictedCallTypes];
    [v16 addObject:v70];
  }

  if ([v16 count] == 1)
  {
    firstObject3 = [v16 firstObject];
LABEL_52:
    v72 = firstObject3;
    goto LABEL_54;
  }

  firstObject3 = [v16 count];
  if (firstObject3 >= 2)
  {
    firstObject3 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];
    goto LABEL_52;
  }

  v72 = 0;
LABEL_54:
  v73 = IntentHandlerDefaultLog(firstObject3);
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v95 = v72;
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Using predicate: %@", buf, 0xCu);
  }

  dataSource4 = [(SearchCallHistoryIntentHandler *)self dataSource];
  callHistoryDataSource = [dataSource4 callHistoryDataSource];
  v76 = [callHistoryDataSource coalescedCallsWithPredicate:v72 limit:count offset:0 batchSize:count];

  v78 = IntentHandlerDefaultLog(v77);
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v95 = v76;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Call history search results: %@", buf, 0xCu);
  }

  v79 = +[CallRecordConverter sharedInstance];
  dataSource5 = [(SearchCallHistoryIntentHandler *)self dataSource];
  contactsDataSource2 = [dataSource5 contactsDataSource];
  dataSource6 = [(SearchCallHistoryIntentHandler *)self dataSource];
  providerManager = [dataSource6 providerManager];
  v84 = [v79 callRecordsForRecentCalls:v76 withContactsDataSource:contactsDataSource2 withCallProviderManager:providerManager];

  v86 = IntentHandlerDefaultLog(v85);
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v95 = v84;
    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "callRecords: %@", buf, 0xCu);
  }

  return v84;
}

@end