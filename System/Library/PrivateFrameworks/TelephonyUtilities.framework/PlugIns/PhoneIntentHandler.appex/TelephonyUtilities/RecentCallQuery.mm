@interface RecentCallQuery
- (RecentCallQuery)initWithParticipants:(id)participants destinationType:(int64_t)type callTypes:(unint64_t)types callCapability:(int64_t)capability preferredCallProvider:(int64_t)provider includeThirdPartyCalls:(BOOL)calls;
- (id)callCapabilityPredicate;
- (id)callRecordTypePredicates;
- (id)participantsPredicatesWithContactsDataSource:(id)source contactIdentifierCache:(id)cache coreTelephonyDataSource:(id)dataSource;
- (id)predicateForRecentCallWithContactsDataSource:(id)source contactIdentifierCache:(id)cache coreTelephonyDataSource:(id)dataSource;
- (id)preferredCallProviderPredicate;
@end

@implementation RecentCallQuery

- (RecentCallQuery)initWithParticipants:(id)participants destinationType:(int64_t)type callTypes:(unint64_t)types callCapability:(int64_t)capability preferredCallProvider:(int64_t)provider includeThirdPartyCalls:(BOOL)calls
{
  callsCopy = calls;
  [(RecentCallQuery *)self setParticipants:participants];
  [(RecentCallQuery *)self setDestinationType:type];
  [(RecentCallQuery *)self setCallTypes:types];
  [(RecentCallQuery *)self setCallCapability:capability];
  [(RecentCallQuery *)self setPreferredCallProvider:provider];
  [(RecentCallQuery *)self setIncludeThirdPartyCalls:callsCopy];
  return self;
}

- (id)predicateForRecentCallWithContactsDataSource:(id)source contactIdentifierCache:(id)cache coreTelephonyDataSource:(id)dataSource
{
  sourceCopy = source;
  cacheCopy = cache;
  dataSourceCopy = dataSource;
  v11 = objc_alloc_init(NSMutableArray);
  callRecordTypePredicates = [(RecentCallQuery *)self callRecordTypePredicates];
  [v11 addObjectsFromArray:callRecordTypePredicates];

  preferredCallProviderPredicate = [(RecentCallQuery *)self preferredCallProviderPredicate];
  if (preferredCallProviderPredicate)
  {
    [v11 addObject:preferredCallProviderPredicate];
  }

  callCapabilityPredicate = [(RecentCallQuery *)self callCapabilityPredicate];
  if (callCapabilityPredicate)
  {
    [v11 addObject:callCapabilityPredicate];
  }

  v15 = [(RecentCallQuery *)self participantsPredicatesWithContactsDataSource:sourceCopy contactIdentifierCache:cacheCopy coreTelephonyDataSource:dataSourceCopy];
  [v11 addObjectsFromArray:v15];

  if ([v11 count] == 1)
  {
    firstObject = [v11 firstObject];
LABEL_9:
    v17 = firstObject;
    goto LABEL_11;
  }

  if ([v11 count] >= 2)
  {
    firstObject = [NSCompoundPredicate andPredicateWithSubpredicates:v11];
    goto LABEL_9;
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (id)callRecordTypePredicates
{
  v3 = objc_alloc_init(NSMutableArray);
  if (([(RecentCallQuery *)self callTypes]& 1) != 0)
  {
    v4 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:1];
    [v3 addObject:v4];
  }

  if (([(RecentCallQuery *)self callTypes]& 2) != 0)
  {
    v5 = [CallHistoryDataSourcePredicate predicateForMissedCallsSinceDate:0];
    [v3 addObject:v5];
  }

  if (([(RecentCallQuery *)self callTypes]& 4) != 0)
  {
    v6 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:0];
    [v3 addObject:v6];
  }

  if (![(RecentCallQuery *)self callTypes]&& [(RecentCallQuery *)self destinationType]== 4)
  {
    v7 = IntentHandlerDefaultLog(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Inferring outgoing callStatus requirement from the presence of redial destination type and unspecified recordTypeForRedialing.", v12, 2u);
    }

    v8 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:1];
    [v3 addObject:v8];
  }

  callTypes = [(RecentCallQuery *)self callTypes];
  if ((callTypes & 0xF8) != 0)
  {
    v10 = IntentHandlerDefaultLog(callTypes);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10002FEA4(v10);
    }
  }

  return v3;
}

- (id)preferredCallProviderPredicate
{
  preferredCallProvider = [(RecentCallQuery *)self preferredCallProvider];
  if (preferredCallProvider)
  {
    if (preferredCallProvider == 2)
    {
      v4 = +[CallHistoryDataSourcePredicate predicateForFaceTimeCalls];
      goto LABEL_15;
    }

    if (preferredCallProvider == 1)
    {
      v4 = +[CallHistoryDataSourcePredicate predicateForTelephonyCalls];
      goto LABEL_15;
    }

    v7 = IntentHandlerDefaultLog(preferredCallProvider);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10002FEE8(v7);
    }

    goto LABEL_11;
  }

  includeThirdPartyCalls = [(RecentCallQuery *)self includeThirdPartyCalls];
  v6 = includeThirdPartyCalls;
  v7 = IntentHandlerDefaultLog(includeThirdPartyCalls);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No preferredCallProvider specified and thirdParty redial is enabled, not filtering by provider", buf, 2u);
    }

LABEL_11:

    v4 = 0;
    goto LABEL_15;
  }

  if (v8)
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No preferredCallProvider specified and thirdParty redial is not enabled. Filtering for 1P calls.", v10, 2u);
  }

  v4 = +[CallHistoryDataSourcePredicate predicateForTelephonyOrFaceTimeCalls];
LABEL_15:

  return v4;
}

- (id)callCapabilityPredicate
{
  callCapability = [(RecentCallQuery *)self callCapability];
  if (callCapability == 1)
  {
    v3 = +[CallHistoryDataSourcePredicate predicateForAudioCalls];
  }

  else if (callCapability == 2)
  {
    v3 = +[CallHistoryDataSourcePredicate predicateForVideoCalls];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)participantsPredicatesWithContactsDataSource:(id)source contactIdentifierCache:(id)cache coreTelephonyDataSource:(id)dataSource
{
  sourceCopy = source;
  cacheCopy = cache;
  dataSourceCopy = dataSource;
  v10 = objc_alloc_init(NSMutableArray);
  participants = [(RecentCallQuery *)self participants];
  v12 = [participants count];

  if (v12)
  {
    participants2 = [(RecentCallQuery *)self participants];
    v14 = +[CallHistoryDataSourcePredicate predicateForCallsWithNumberOfRemoteParticipants:](CallHistoryDataSourcePredicate, "predicateForCallsWithNumberOfRemoteParticipants:", [participants2 count]);

    v28 = v14;
    [v10 addObject:v14];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [(RecentCallQuery *)self participants];
    v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [*(*(&v32 + 1) + 8 * i) tu_handlesMatchingPersonWithContactsDataSource:sourceCopy identifierToContactCache:cacheCopy];
          includeThirdPartyCalls = [(RecentCallQuery *)self includeThirdPartyCalls];
          v21 = includeThirdPartyCalls;
          v22 = IntentHandlerDefaultLog(includeThirdPartyCalls);
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
          if (v21)
          {
            if (v23)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "ThirdParty redial is enabled, using redial predicate that includes search for non-normalized handle values.", buf, 2u);
            }

            allRelevantISOCountryCodes = [dataSourceCopy allRelevantISOCountryCodes];
            v25 = [CallHistoryDataSourcePredicate predicateForCallToCallBackWithAnyOfTheseRemoteParticipantHandles:v19 isoCountryCodes:allRelevantISOCountryCodes];
          }

          else
          {
            if (v23)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "ThirdParty redial is not enabled, using normal recent call predicate that includes search for non-normalized handle values.", buf, 2u);
            }

            allRelevantISOCountryCodes = [dataSourceCopy allRelevantISOCountryCodes];
            v25 = [CallHistoryDataSourcePredicate predicateForCallsWithAnyOfTheseRemoteParticipantHandles:v19 isoCountryCodes:allRelevantISOCountryCodes];
          }

          v26 = v25;

          [v10 addObject:v26];
        }

        v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }
  }

  return v10;
}

@end