@interface INPerson
+ (id)tu_personMatchingHandle:(id)handle contactsDataSource:(id)source isoCountryCodes:(id)codes;
- (BOOL)usesScoreBasedEncoding;
- (id)extractRecommendation;
- (id)tu_allContactIdentifiers;
- (id)tu_contactsMatchingIdentifiers:(id)identifiers contactsDataSource:(id)source identifierToContactCache:(id)cache;
- (id)tu_handlesMatchingPersonWithContactsDataSource:(id)source identifierToContactCache:(id)cache;
- (id)tu_matchingINPersonHandlesByContactIdentifier;
- (id)tu_personWithFormattedHandleForISOCountryCodes:(id)codes;
@end

@implementation INPerson

- (id)tu_allContactIdentifiers
{
  v3 = objc_alloc_init(NSMutableOrderedSet);
  contactIdentifier = [(INPerson *)self contactIdentifier];
  v5 = [contactIdentifier length];

  if (v5)
  {
    contactIdentifier2 = [(INPerson *)self contactIdentifier];
    [v3 addObject:contactIdentifier2];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  siriMatches = [(INPerson *)self siriMatches];
  v8 = [siriMatches countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(siriMatches);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        contactIdentifier3 = [v12 contactIdentifier];
        v14 = [contactIdentifier3 length];

        if (v14)
        {
          contactIdentifier4 = [v12 contactIdentifier];
          [v3 addObject:contactIdentifier4];
        }
      }

      v9 = [siriMatches countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  array = [v3 array];

  return array;
}

- (id)tu_matchingINPersonHandlesByContactIdentifier
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  siriMatches = [(INPerson *)self siriMatches];
  v5 = [siriMatches countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(siriMatches);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        contactIdentifier = [v9 contactIdentifier];
        if ([contactIdentifier length])
        {
          personHandle = [v9 personHandle];

          if (!personHandle)
          {
            continue;
          }

          contactIdentifier2 = [v9 contactIdentifier];
          contactIdentifier = [v3 objectForKeyedSubscript:contactIdentifier2];

          if (!contactIdentifier)
          {
            contactIdentifier = objc_alloc_init(NSMutableArray);
            contactIdentifier3 = [v9 contactIdentifier];
            [v3 setObject:contactIdentifier forKeyedSubscript:contactIdentifier3];
          }

          personHandle2 = [v9 personHandle];
          [contactIdentifier addObject:personHandle2];
        }
      }

      v6 = [siriMatches countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = [v3 copy];

  return v15;
}

- (id)tu_personWithFormattedHandleForISOCountryCodes:(id)codes
{
  codesCopy = codes;
  personHandle = [(INPerson *)self personHandle];
  value = [personHandle value];
  if ([personHandle type] == 2 || !objc_msgSend(personHandle, "type") && objc_msgSend(value, "_appearsToBePhoneNumber"))
  {
    firstObject = [codesCopy firstObject];
    v8 = [CNPhoneNumber phoneNumberWithDigits:value countryCode:firstObject];
    formattedStringValue = [v8 formattedStringValue];

    [personHandle setValue:formattedStringValue forKey:@"value"];
  }

  v10 = [(INPerson *)self mutableCopy];
  [v10 setPersonHandle:personHandle];

  return v10;
}

- (id)tu_handlesMatchingPersonWithContactsDataSource:(id)source identifierToContactCache:(id)cache
{
  sourceCopy = source;
  cacheCopy = cache;
  v8 = IntentHandlerDefaultLog(cacheCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = IntentHandlerDefaultLog(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "handlesMatchingPerson", "", buf, 2u);
  }

  v13 = objc_alloc_init(NSMutableArray);
  personHandle = [(INPerson *)self personHandle];
  value = [personHandle value];
  v16 = [value length];

  if (v16)
  {
    v17 = [TUHandle handleWithPerson:self];
    [v13 addObject:v17];
  }

  else
  {
    tu_allContactIdentifiers = [(INPerson *)self tu_allContactIdentifiers];
    v55 = cacheCopy;
    v56 = sourceCopy;
    v18 = [INPerson tu_contactsMatchingIdentifiers:"tu_contactsMatchingIdentifiers:contactsDataSource:identifierToContactCache:" contactsDataSource:? identifierToContactCache:?];
    personHandle2 = [(INPerson *)self personHandle];
    type = [personHandle2 type];

    v21 = type < 3;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v18;
    v63 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
    if (v63)
    {
      v62 = v21 & (3u >> (type & 7));
      v61 = v21 & (type ^ 1);
      v60 = *v73;
      selfCopy = self;
      do
      {
        for (i = 0; i != v63; i = i + 1)
        {
          if (*v73 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v72 + 1) + 8 * i);
          if (v61)
          {
            personHandle3 = [(INPerson *)self personHandle];
            label = [personHandle3 label];
            v59 = v23;
            v26 = [v23 tu_phoneNumbersMatchingPersonHandleLabel:label];

            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v27 = v26;
            v28 = [v27 countByEnumeratingWithState:&v68 objects:v78 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v69;
              do
              {
                for (j = 0; j != v29; j = j + 1)
                {
                  if (*v69 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v68 + 1) + 8 * j);
                  v33 = [TUHandle alloc];
                  value2 = [v32 value];
                  stringValue = [value2 stringValue];
                  v36 = [v33 initWithType:2 value:stringValue];

                  [v13 addObject:v36];
                }

                v29 = [v27 countByEnumeratingWithState:&v68 objects:v78 count:16];
              }

              while (v29);
            }

            self = selfCopy;
            v23 = v59;
          }

          if (v62)
          {
            personHandle4 = [(INPerson *)self personHandle];
            label2 = [personHandle4 label];
            v39 = [v23 tu_emailAddressesMatchingPersonHandleLabel:label2];

            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v40 = v39;
            v41 = [v40 countByEnumeratingWithState:&v64 objects:v77 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v65;
              do
              {
                for (k = 0; k != v42; k = k + 1)
                {
                  if (*v65 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*(&v64 + 1) + 8 * k);
                  v46 = [TUHandle alloc];
                  value3 = [v45 value];
                  v48 = [v46 initWithType:3 value:value3];

                  [v13 addObject:v48];
                }

                v42 = [v40 countByEnumeratingWithState:&v64 objects:v77 count:16];
              }

              while (v42);
            }
          }
        }

        v63 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
      }

      while (v63);
    }

    cacheCopy = v55;
    sourceCopy = v56;
    v17 = tu_allContactIdentifiers;
  }

  v50 = IntentHandlerDefaultLog(v49);
  v51 = v50;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_END, v9, "handlesMatchingPerson", "", buf, 2u);
  }

  v52 = [v13 copy];

  return v52;
}

- (id)tu_contactsMatchingIdentifiers:(id)identifiers contactsDataSource:(id)source identifierToContactCache:(id)cache
{
  identifiersCopy = identifiers;
  sourceCopy = source;
  cacheCopy = cache;
  v10 = [identifiersCopy count];
  if (v10)
  {
    v56 = sourceCopy;
    v11 = IntentHandlerDefaultLog(v10);
    v12 = os_signpost_id_generate(v11);

    v14 = IntentHandlerDefaultLog(v13);
    v15 = v14;
    v54 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "contactsMatchingIdentifiers", "", buf, 2u);
    }

    spid = v12;

    v16 = objc_alloc_init(NSMutableArray);
    v17 = objc_alloc_init(NSMutableArray);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v55 = identifiersCopy;
    v18 = identifiersCopy;
    v19 = [v18 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v63;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v63 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v62 + 1) + 8 * i);
          v24 = [cacheCopy objectForKey:v23];
          if (v24)
          {
            v25 = v17;
            v26 = v24;
          }

          else
          {
            v25 = v16;
            v26 = v23;
          }

          [v25 addObject:v26];
        }

        v20 = [v18 countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v20);
    }

    v27 = [v16 count];
    sourceCopy = v56;
    if (v27)
    {
      v28 = IntentHandlerDefaultLog(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = v18;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Looking up contact in the contact store matching identifiers: %@", buf, 0xCu);
      }

      v29 = [CNContact predicateForContactsWithIdentifiers:v16];
      v67[0] = CNContactPhoneNumbersKey;
      v67[1] = CNContactEmailAddressesKey;
      [NSArray arrayWithObjects:v67 count:2];
      v51 = v61 = 0;
      v52 = v29;
      v30 = [v56 unifiedContactsMatchingPredicate:v29 keysToFetch:? error:?];
      v31 = 0;
      v32 = v31;
      if (v31)
      {
        v33 = IntentHandlerDefaultLog(v31);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_10002F2FC(v32, v33, v34, v35, v36, v37, v38, v39);
        }
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v40 = v30;
      v41 = [v40 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v58;
        do
        {
          for (j = 0; j != v42; j = j + 1)
          {
            if (*v58 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v57 + 1) + 8 * j);
            identifier = [v45 identifier];
            [cacheCopy setObject:v45 forKey:identifier];

            [v17 addObject:v45];
          }

          v42 = [v40 countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v42);
      }

      sourceCopy = v56;
    }

    v47 = IntentHandlerDefaultLog(v27);
    v48 = v47;
    if (v54 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_END, spid, "contactsMatchingIdentifiers", "", buf, 2u);
    }

    v49 = [v17 copy];
    identifiersCopy = v55;
  }

  else
  {
    v49 = &__NSArray0__struct;
  }

  return v49;
}

+ (id)tu_personMatchingHandle:(id)handle contactsDataSource:(id)source isoCountryCodes:(id)codes
{
  handleCopy = handle;
  sourceCopy = source;
  codesCopy = codes;
  v10 = IntentHandlerDefaultLog(codesCopy);
  v11 = os_signpost_id_generate(v10);

  v13 = IntentHandlerDefaultLog(v12);
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "personMatchingHandle", "", buf, 2u);
  }

  v17 = IntentHandlerDefaultLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v68 = handleCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Looking up contact in the contact store matching handle: %@", buf, 0xCu);
  }

  type = [handleCopy type];
  if (type == 1)
  {
    value = [handleCopy value];
    _appearsToBePhoneNumber = [value _appearsToBePhoneNumber];

    if (!_appearsToBePhoneNumber)
    {
      value2 = [handleCopy value];
      _appearsToBeEmail = [value2 _appearsToBeEmail];

      if (!_appearsToBeEmail)
      {
        goto LABEL_33;
      }

LABEL_9:
      value3 = [handleCopy value];
      v20 = [CNContact predicateForContactsMatchingEmailAddress:value3];
      goto LABEL_12;
    }
  }

  else if (type != 2)
  {
    if (type != 3)
    {
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  value3 = [handleCopy value];
  v23 = [CNPhoneNumber phoneNumberWithStringValue:value3];
  v20 = [CNContact predicateForContactsMatchingPhoneNumber:v23];

LABEL_12:
  if (v20)
  {
    v66[0] = CNContactPhoneNumbersKey;
    v66[1] = CNContactEmailAddressesKey;
    v24 = +[NSPersonNameComponents descriptorForUsedKeys];
    v66[2] = v24;
    v25 = [NSArray arrayWithObjects:v66 count:3];

    v64 = sourceCopy;
    v65 = 0;
    v63 = v25;
    v26 = [sourceCopy unifiedContactsMatchingPredicate:v20 keysToFetch:v25 error:&v65];
    v27 = v65;
    v28 = v27;
    if (v27)
    {
      v29 = IntentHandlerDefaultLog(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10002F2FC(v28, v29, v30, v31, v32, v33, v34, v35);
      }
    }

    if ([v26 count])
    {
      v36 = [v26 count];
      if (v36 < 2)
      {
LABEL_25:
        spid = v11;
        firstObject = [v26 firstObject];
        v40 = firstObject;
        v62 = v28;
        if (firstObject)
        {
          v41 = codesCopy;
          v42 = [firstObject tu_personHandleMatchingHandle:handleCopy isoCountryCodes:codesCopy];
          v43 = [NSPersonNameComponents componentsForContact:v40];
        }

        else
        {
          v44 = [INPersonHandle alloc];
          v41 = codesCopy;
          v42 = [v44 tu_initUnlabledPersonHandleWithTUHandle:handleCopy isoCountryCodes:codesCopy];

          v43 = 0;
        }

        v45 = [INPerson alloc];
        identifier = [v40 identifier];
        LOBYTE(v60) = 0;
        v47 = [v45 initWithPersonHandle:v42 nameComponents:v43 displayName:0 image:0 contactIdentifier:identifier customIdentifier:0 isMe:v60];

        v49 = IntentHandlerDefaultLog(v48);
        v50 = v49;
        if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_END, spid, "personMatchingHandle", "", buf, 2u);
        }

        sourceCopy = v64;
        codesCopy = v41;
        goto LABEL_36;
      }

      v37 = IntentHandlerDefaultLog(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v38 = "[WARN] Multiple contacts match handle, using the first one arbitrarily";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 2u);
      }
    }

    else
    {
      v37 = IntentHandlerDefaultLog(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v38 = "No contacts match handle";
        goto LABEL_23;
      }
    }

    goto LABEL_25;
  }

LABEL_33:
  v20 = IntentHandlerDefaultLog(type);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_10002F368(handleCopy, v20, v53, v54, v55, v56, v57, v58);
  }

  v47 = 0;
LABEL_36:

  return v47;
}

- (BOOL)usesScoreBasedEncoding
{
  scoredAlternatives = [(INPerson *)self scoredAlternatives];
  if ([scoredAlternatives count])
  {
    scoredAlternatives2 = [(INPerson *)self scoredAlternatives];
    v5 = [scoredAlternatives2 objectAtIndexedSubscript:0];
    score = [v5 score];
    v7 = score != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)extractRecommendation
{
  if ([(INPerson *)self usesScoreBasedEncoding])
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = objc_alloc_init(NSMutableOrderedSet);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    scoredAlternatives = [(INPerson *)self scoredAlternatives];
    v6 = [scoredAlternatives countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v41;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v41 != v8)
          {
            objc_enumerationMutation(scoredAlternatives);
          }

          v10 = *(*(&v40 + 1) + 8 * i);
          person = [v10 person];
          contactIdentifier = [person contactIdentifier];

          if ([contactIdentifier length])
          {
            [v4 addObject:contactIdentifier];
            v13 = [v3 valueForKey:contactIdentifier];
            score = [v10 score];
            v15 = score;
            if (score)
            {
              v16 = score;
            }

            else
            {
              v16 = [NSNumber numberWithFloat:0.0];
            }

            v17 = v16;

            if (!v13 || [v17 compare:v13] == 1)
            {
              [v3 setValue:v17 forKey:contactIdentifier];
            }
          }
        }

        v7 = [scoredAlternatives countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v7);
    }

    v18 = [v3 copy];
    array = [v4 array];

    if ([array count])
    {
      if ([v18 count] == 1)
      {
        allValues = [v18 allValues];
        firstObject = [allValues firstObject];

        [firstObject floatValue];
        if (v22 >= 0.7)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }
      }

      else
      {
        v23 = 3;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    contactIdentifier2 = [(INPerson *)self contactIdentifier];
    v25 = [contactIdentifier2 length];

    if (v25)
    {
      contactIdentifier3 = [(INPerson *)self contactIdentifier];
      v45 = contactIdentifier3;
      v23 = 1;
      array = [NSArray arrayWithObjects:&v45 count:1];

      goto LABEL_31;
    }

    siriMatches = [(INPerson *)self siriMatches];
    if ([siriMatches count] == 1)
    {
      siriMatches2 = [(INPerson *)self siriMatches];
      firstObject2 = [siriMatches2 firstObject];
      contactIdentifier4 = [firstObject2 contactIdentifier];

      if (contactIdentifier4)
      {
        siriMatches3 = [(INPerson *)self siriMatches];
        firstObject3 = [siriMatches3 firstObject];
        contactIdentifier5 = [firstObject3 contactIdentifier];
        v44 = contactIdentifier5;
        array = [NSArray arrayWithObjects:&v44 count:1];

        v23 = 2;
        goto LABEL_31;
      }
    }

    else
    {
    }

    siriMatches4 = [(INPerson *)self siriMatches];
    v37 = [siriMatches4 count];

    if (v37 < 2)
    {
      v23 = 0;
      array = &__NSArray0__struct;
    }

    else
    {
      siriMatches5 = [(INPerson *)self siriMatches];
      v39 = NSStringFromSelector("contactIdentifier");
      array = [siriMatches5 valueForKey:v39];

      v23 = 3;
    }
  }

LABEL_31:
  v34 = [[SiriMatchRecommendation alloc] initWithType:v23 contactIdentifiers:array];

  return v34;
}

@end