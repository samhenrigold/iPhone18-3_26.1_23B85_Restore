@interface CallRecordConverter
+ (id)sharedInstance;
- (CallRecordConverter)init;
- (id)callRecordForRecentCall:(id)call withContactsDataSource:(id)source withCallProviderManager:(id)manager withCurrentISOCountryCodes:(id)codes;
- (id)callRecordsForRecentCalls:(id)calls withContactsDataSource:(id)source withCallProviderManager:(id)manager withCurrentISOCountryCodes:(id)codes;
- (int64_t)callCapabilityFromRecentCall:(id)call;
- (int64_t)preferredCallProviderFromRecentCall:(id)call;
@end

@implementation CallRecordConverter

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000252F0;
  block[3] = &unk_10004CC00;
  block[4] = self;
  if (qword_100057A80 != -1)
  {
    dispatch_once(&qword_100057A80, block);
  }

  v2 = qword_100057A78;

  return v2;
}

- (CallRecordConverter)init
{
  v8.receiver = self;
  v8.super_class = CallRecordConverter;
  v2 = [(CallRecordConverter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCache);
    recentCallIdToCallRecordCache = v2->_recentCallIdToCallRecordCache;
    v2->_recentCallIdToCallRecordCache = v3;

    v5 = objc_alloc_init(NSCache);
    handleToPersonCache = v2->_handleToPersonCache;
    v2->_handleToPersonCache = v5;
  }

  return v2;
}

- (id)callRecordsForRecentCalls:(id)calls withContactsDataSource:(id)source withCallProviderManager:(id)manager withCurrentISOCountryCodes:(id)codes
{
  callsCopy = calls;
  sourceCopy = source;
  managerCopy = manager;
  codesCopy = codes;
  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [callsCopy count]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = callsCopy;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * v16);
        recentCallIdToCallRecordCache = [(CallRecordConverter *)self recentCallIdToCallRecordCache];
        uniqueId = [v17 uniqueId];
        v20 = [recentCallIdToCallRecordCache objectForKey:uniqueId];

        recentCallIdToCallRecordCache2 = IntentHandlerDefaultLog(v21);
        v23 = os_log_type_enabled(recentCallIdToCallRecordCache2, OS_LOG_TYPE_DEBUG);
        if (v20)
        {
          if (v23)
          {
            sub_100030B6C(&buf, v31, recentCallIdToCallRecordCache2);
          }
        }

        else
        {
          if (v23)
          {
            sub_100030BAC(v36, v17, &v37, recentCallIdToCallRecordCache2);
          }

          v20 = [(CallRecordConverter *)self callRecordForRecentCall:v17 withContactsDataSource:sourceCopy withCallProviderManager:managerCopy withCurrentISOCountryCodes:codesCopy];
          recentCallIdToCallRecordCache2 = [(CallRecordConverter *)self recentCallIdToCallRecordCache];
          uniqueId2 = [v17 uniqueId];
          [recentCallIdToCallRecordCache2 setObject:v20 forKey:uniqueId2];
        }

        [v11 addObject:v20];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v14);
  }

  v25 = [v11 copy];

  return v25;
}

- (id)callRecordForRecentCall:(id)call withContactsDataSource:(id)source withCallProviderManager:(id)manager withCurrentISOCountryCodes:(id)codes
{
  callCopy = call;
  sourceCopy = source;
  v12 = callCopy;
  v55 = sourceCopy;
  managerCopy = manager;
  codesCopy = codes;
  v57 = +[NSMutableArray array];
  callerIdIsBlocked = [callCopy callerIdIsBlocked];
  v56 = callCopy;
  v53 = managerCopy;
  if (callerIdIsBlocked)
  {
    remoteParticipantHandles = IntentHandlerDefaultLog(callerIdIsBlocked);
    if (os_log_type_enabled(remoteParticipantHandles, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, remoteParticipantHandles, OS_LOG_TYPE_DEFAULT, "[WARN] Caller ID is blocked", buf, 2u);
    }

    goto LABEL_40;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  remoteParticipantHandles = [callCopy remoteParticipantHandles];
  v16 = [remoteParticipantHandles countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v63;
    v59 = remoteParticipantHandles;
    while (1)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v63 != v19)
        {
          objc_enumerationMutation(remoteParticipantHandles);
        }

        tu_tuHandle = [*(*(&v62 + 1) + 8 * i) tu_tuHandle];
        if (tu_tuHandle)
        {
          handleToPersonCache = [(CallRecordConverter *)self handleToPersonCache];
          v23 = [handleToPersonCache objectForKey:tu_tuHandle];

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v25 = v23;
            v26 = v18;
            goto LABEL_30;
          }

          if (v23)
          {
            v27 = IntentHandlerDefaultLog(isKindOfClass);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Found an entry of unknown type in handleToPerson cache", buf, 2u);
            }

            v18 = 0;
          }

          else
          {
            isoCountryCode = [v12 isoCountryCode];
            if (isoCountryCode)
            {
              isoCountryCode2 = [v12 isoCountryCode];
              v68 = isoCountryCode2;
              v26 = [NSArray arrayWithObjects:&v68 count:1];
            }

            else
            {
              v26 = codesCopy;
            }

            v25 = [INPerson tu_personMatchingHandle:tu_tuHandle contactsDataSource:v55 isoCountryCodes:v26];

            if (v25 && ([v25 nameComponents], v32 = objc_claimAutoreleasedReturnValue(), v32, v32))
            {
              v33 = IntentHandlerDefaultLog(v31);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v67 = v25;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Saving person in cache: %@", buf, 0xCu);
              }

              handleToPersonCache2 = [(CallRecordConverter *)self handleToPersonCache];
              [handleToPersonCache2 setObject:v25 forKey:tu_tuHandle];
            }

            else
            {
              v35 = IntentHandlerDefaultLog(v31);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v67 = v25;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Clearing or skipping cache for unlabeled person: %@", buf, 0xCu);
              }

              handleToPersonCache2 = [(CallRecordConverter *)self handleToPersonCache];
              [handleToPersonCache2 removeObjectForKey:tu_tuHandle];
            }

            v12 = v56;
LABEL_30:

            if (v25)
            {
              v28 = [v57 addObject:v25];
              v18 = v25;
            }

            else
            {
              v18 = 0;
            }

            remoteParticipantHandles = v59;
          }

          v36 = IntentHandlerDefaultLog(v28);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v67 = v18;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "person added to particpants in callrecord: %@", buf, 0xCu);
          }

          goto LABEL_37;
        }

        v23 = IntentHandlerDefaultLog(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Could not determine remoteParticipantHandle for CHRecentCall", buf, 2u);
        }

LABEL_37:
      }

      v17 = [remoteParticipantHandles countByEnumeratingWithState:&v62 objects:v69 count:16];
      if (!v17)
      {
        managerCopy = v53;
        goto LABEL_41;
      }
    }
  }

LABEL_40:
  v18 = 0;
LABEL_41:

  callStatus = [v12 callStatus];
  if ((kCHCallStatusOutgoing & callStatus) != 0)
  {
    v38 = 1;
  }

  else
  {
    callStatus2 = [v12 callStatus];
    if ((kCHCallStatusMissed & callStatus2) != 0)
    {
      v38 = 2;
    }

    else
    {
      callStatus3 = [v12 callStatus];
      v38 = 3;
      if ((kCHCallStatusIncoming & callStatus3) == 0)
      {
        v38 = 0;
      }
    }
  }

  v60 = v38;
  v50 = [managerCopy providerForRecentCall:v12];
  bundleIdentifier = [v50 bundleIdentifier];
  v58 = [(CallRecordConverter *)self preferredCallProviderFromRecentCall:v12];
  v52 = [(CallRecordConverter *)self callCapabilityFromRecentCall:v12];
  v42 = [INCallRecord alloc];
  uniqueId = [v12 uniqueId];
  date = [v12 date];
  [v12 duration];
  v48 = [NSNumber numberWithDouble:?];
  v43 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 read] ^ 1);
  v44 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 numberOfOccurrences]);
  identifier = [v50 identifier];
  v46 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 callerIdIsBlocked]);
  v61 = [v42 initWithIdentifier:uniqueId dateCreated:date callRecordType:v60 callCapability:v52 callDuration:v48 unseen:v43 preferredCallProvider:v58 participants:v57 numberOfCalls:v44 providerId:identifier providerBundleId:bundleIdentifier isCallerIdBlocked:v46];

  return v61;
}

- (int64_t)preferredCallProviderFromRecentCall:(id)call
{
  serviceProvider = [call serviceProvider];
  if ([serviceProvider isEqualToString:kCHServiceProviderFaceTime])
  {
    v4 = 2;
  }

  else if ([serviceProvider isEqualToString:kCHServiceProviderTelephony] & 1) != 0 || (objc_msgSend(serviceProvider, "isEqualToString:", @"com.apple.Superbox"))
  {
    v4 = 1;
  }

  else
  {
    v5 = [serviceProvider length];
    v6 = IntentHandlerDefaultLog(v5);
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100030C24(v7);
      }

      v4 = 3;
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100030C68(v7);
      }

      v4 = 0;
    }
  }

  return v4;
}

- (int64_t)callCapabilityFromRecentCall:(id)call
{
  mediaType = [call mediaType];
  v4 = mediaType;
  if (mediaType)
  {
    if (mediaType == 2)
    {
      v5 = IntentHandlerDefaultLog(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v6 = "Inferring video call capability from call to redial";
        v7 = &v10;
        goto LABEL_10;
      }
    }

    else
    {
      if (mediaType != 1)
      {
        return 0;
      }

      v5 = IntentHandlerDefaultLog(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v6 = "Inferring audio call capability from call to redial";
        v7 = &v11;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      }
    }
  }

  else
  {
    v5 = IntentHandlerDefaultLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v6 = "[WARN] Unable to infer callCapability from call to redial because media type of that call was unknown.";
      v7 = &v9;
      goto LABEL_10;
    }
  }

  return v4;
}

@end