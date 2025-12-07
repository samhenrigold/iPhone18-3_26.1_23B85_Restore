@interface ContactResolver
+ (id)keysToFetch;
- (ContactResolver)initWithDataSource:(id)source logger:(id)logger;
- (id)_contactsMatchingIdentifiers:(id)identifiers;
- (id)_contactsMatchingNamesForPerson:(id)person;
- (id)matchingContactsForPerson:(id)person;
- (void)_sendSiriMatchAnalyticsEventForIdentifiers:(id)identifiers contactsMatchingId:(id)id contactsMatchingName:(id)name;
@end

@implementation ContactResolver

- (ContactResolver)initWithDataSource:(id)source logger:(id)logger
{
  sourceCopy = source;
  loggerCopy = logger;
  v12.receiver = self;
  v12.super_class = ContactResolver;
  v9 = [(ContactResolver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactsDataSource, source);
    objc_storeStrong(&v10->_coreAnalyticsLogger, logger);
  }

  return v10;
}

+ (id)keysToFetch
{
  if (qword_100057A30 != -1)
  {
    sub_10002F038();
  }

  v3 = qword_100057A28;

  return v3;
}

- (id)matchingContactsForPerson:(id)person
{
  personCopy = person;
  tu_allContactIdentifiers = [personCopy tu_allContactIdentifiers];
  v6 = IntentHandlerDefaultLog(tu_allContactIdentifiers);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134218242;
    v24 = [tu_allContactIdentifiers count];
    v25 = 2112;
    v26 = personCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Person contains %ld contact IDs. Person: %@", &v23, 0x16u);
  }

  v8 = IntentHandlerDefaultLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = tu_allContactIdentifiers;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Looking up contact in the contact store matching identifiers: %@", &v23, 0xCu);
  }

  v9 = [(ContactResolver *)self _contactsMatchingIdentifiers:tu_allContactIdentifiers];
  v10 = IntentHandlerDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 count];
    v23 = 134217984;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found %ld contacts matching siriMatches", &v23, 0xCu);
  }

  v12 = [StartCallIntentHandlerUtilities sortContacts:v9 withIdentifiers:tu_allContactIdentifiers];
  v13 = [v12 count];
  v14 = IntentHandlerDefaultLog(v13);
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found contacts matching siriMatches", &v23, 2u);
    }

    v16 = &__NSArray0__struct;
    v17 = v12;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10002F04C(v15);
    }

    v19 = IntentHandlerDefaultLog(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Looking up contact in the contact store by names", &v23, 2u);
    }

    v17 = [(ContactResolver *)self _contactsMatchingNamesForPerson:personCopy];
    v16 = v17;
  }

  v20 = v17;
  [(ContactResolver *)self _sendSiriMatchAnalyticsEventForIdentifiers:tu_allContactIdentifiers contactsMatchingId:v12 contactsMatchingName:v16];
  v21 = [[ContactPool alloc] initWithContacts:v20];

  return v21;
}

- (id)_contactsMatchingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [identifiersCopy count];
  v6 = &__NSArray0__struct;
  if (v5)
  {
    v7 = IntentHandlerDefaultLog(v5);
    v8 = os_signpost_id_generate(v7);

    v10 = IntentHandlerDefaultLog(v9);
    v11 = v10;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "contactsMatchingIdentifiers", "", buf, 2u);
    }

    v12 = [CNContact predicateForContactsWithIdentifiers:identifiersCopy];
    contactsDataSource = [(ContactResolver *)self contactsDataSource];
    v14 = +[ContactResolver keysToFetch];
    v25 = 0;
    v15 = [contactsDataSource unifiedContactsMatchingPredicate:v12 keysToFetch:v14 error:&v25];
    v16 = v25;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &__NSArray0__struct;
    }

    v6 = v17;

    if (v16)
    {
      v19 = IntentHandlerDefaultLog(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10002F090(v16, v19);
      }
    }

    v20 = IntentHandlerDefaultLog(v18);
    v21 = v20;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v8, "contactsMatchingIdentifiers", "", v24, 2u);
    }
  }

  v22 = [v6 copy];

  return v22;
}

- (id)_contactsMatchingNamesForPerson:(id)person
{
  personCopy = person;
  v5 = IntentHandlerDefaultLog(personCopy);
  v6 = os_signpost_id_generate(v5);

  v8 = IntentHandlerDefaultLog(v7);
  v9 = v8;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "contactsMatchingName", "", buf, 2u);
  }

  displayName = [personCopy displayName];

  v11 = [CNContact predicateForContactsMatchingName:displayName options:1];

  contactsDataSource = [(ContactResolver *)self contactsDataSource];
  v13 = +[ContactResolver keysToFetch];
  v27 = 0;
  v14 = [contactsDataSource unifiedContactsMatchingPredicate:v11 keysToFetch:v13 error:&v27];
  v15 = v27;
  v16 = &__NSArray0__struct;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  if (v15)
  {
    v19 = IntentHandlerDefaultLog(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10002F108(v15, v19);
    }
  }

  v20 = IntentHandlerDefaultLog(v18);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_10002F180(v17, v20);
  }

  v22 = IntentHandlerDefaultLog(v21);
  v23 = v22;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *v26 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v6, "contactsMatchingName", "", v26, 2u);
  }

  v24 = [v17 copy];

  return v24;
}

- (void)_sendSiriMatchAnalyticsEventForIdentifiers:(id)identifiers contactsMatchingId:(id)id contactsMatchingName:(id)name
{
  nameCopy = name;
  idCopy = id;
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [identifiers count]);
  v10 = [idCopy count];

  v11 = [NSNumber numberWithUnsignedInteger:v10];
  v12 = [nameCopy count];

  v13 = [NSNumber numberWithUnsignedInteger:v12];
  v14 = +[INPreferences sharedPreferences];
  _cachedSiriLanguageCode = [v14 _cachedSiriLanguageCode];

  if (_cachedSiriLanguageCode)
  {
    v16 = _cachedSiriLanguageCode;
  }

  else
  {
    v16 = @"N/A";
  }

  coreAnalyticsLogger = [(ContactResolver *)self coreAnalyticsLogger];
  [coreAnalyticsLogger logSiriMatchEvent:v18 matchesByIdCount:v11 matchesByNameCount:v13 siriLocale:v16];
}

@end