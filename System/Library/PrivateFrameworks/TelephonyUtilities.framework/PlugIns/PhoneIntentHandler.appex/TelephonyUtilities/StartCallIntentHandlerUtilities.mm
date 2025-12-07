@interface StartCallIntentHandlerUtilities
+ (BOOL)contactsShareHandleValue:(id)value;
+ (id)contactWithMostHandles:(id)handles;
+ (id)inPersonFromContact:(id)contact handleValue:(id)value handleType:(int64_t)type handleLabel:(id)label;
+ (id)sortContacts:(id)contacts withIdentifiers:(id)identifiers;
+ (void)populatePersonsByTUHandleFrom:(id)from personsByTUHandle:(id)handle tuHandleOrderedSet:(id)set;
@end

@implementation StartCallIntentHandlerUtilities

+ (id)sortContacts:(id)contacts withIdentifiers:(id)identifiers
{
  contactsCopy = contacts;
  identifiersCopy = identifiers;
  v6 = IntentHandlerDefaultLog(identifiersCopy);
  v7 = os_signpost_id_generate(v6);

  v9 = IntentHandlerDefaultLog(v8);
  v10 = v9;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "sortMatchingContactsWithIdentifiers", "", buf, 2u);
  }

  if (contactsCopy)
  {
    spid = v7;
    v40 = v7 - 1;
    v43 = objc_alloc_init(NSMutableArray);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v41 = identifiersCopy;
    obj = identifiersCopy;
    v12 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v12)
    {
      v13 = v12;
      v44 = *v55;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v55 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v54 + 1) + 8 * i);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v16 = contactsCopy;
          v17 = [v16 countByEnumeratingWithState:&v50 objects:v60 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v51;
            while (2)
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v51 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v50 + 1) + 8 * j);
                identifier = [v21 identifier];
                v23 = [v15 isEqualToString:identifier];

                if (v23)
                {
                  [v43 addObject:v21];
                  goto LABEL_20;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v50 objects:v60 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:
        }

        v13 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v13);
    }

    v24 = v43;
    v25 = [v43 count];
    v26 = [contactsCopy count];
    if (v25 != v26)
    {
      v27 = objc_alloc_init(NSMutableSet);
      [v27 addObjectsFromArray:v43];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v28 = contactsCopy;
      v29 = [v28 countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v47;
        do
        {
          for (k = 0; k != v30; k = k + 1)
          {
            if (*v47 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v46 + 1) + 8 * k);
            if (([v27 containsObject:v33] & 1) == 0)
            {
              [v43 addObject:v33];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v46 objects:v59 count:16];
        }

        while (v30);
      }
    }

    v34 = IntentHandlerDefaultLog(v26);
    v35 = v34;
    if (v40 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, spid, "sortMatchingContactsWithIdentifiers", "", buf, 2u);
    }

    v36 = [v43 copy];
    identifiersCopy = v41;
  }

  else
  {
    v37 = IntentHandlerDefaultLog(v11);
    v24 = v37;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, v7, "sortMatchingContactsWithIdentifiers", "", buf, 2u);
    }

    v36 = &__NSArray0__struct;
  }

  return v36;
}

+ (id)inPersonFromContact:(id)contact handleValue:(id)value handleType:(int64_t)type handleLabel:(id)label
{
  labelCopy = label;
  valueCopy = value;
  contactCopy = contact;
  v12 = [[INPersonHandle alloc] initWithValue:valueCopy type:type label:labelCopy];

  v13 = [CNContactFormatter stringFromContact:contactCopy style:0];
  v14 = [NSPersonNameComponents componentsForContact:contactCopy];
  v15 = [INPerson alloc];
  identifier = [contactCopy identifier];
  LOBYTE(v20) = 0;
  v17 = [v15 initWithPersonHandle:v12 nameComponents:v14 displayName:v13 image:0 contactIdentifier:identifier customIdentifier:0 isMe:v20];

  phonemeData = [contactCopy phonemeData];

  [v17 setPhonemeData:phonemeData];

  return v17;
}

+ (BOOL)contactsShareHandleValue:(id)value
{
  valueCopy = value;
  if ([valueCopy count])
  {
    v38 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(valueCopy, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v35 = valueCopy;
    obj = valueCopy;
    v4 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v4)
    {
      v5 = v4;
      v37 = *v52;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v52 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v51 + 1) + 8 * i);
          v8 = objc_alloc_init(NSMutableSet);
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          phoneNumbers = [v7 phoneNumbers];
          v10 = [phoneNumbers countByEnumeratingWithState:&v47 objects:v57 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v48;
            do
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v48 != v12)
                {
                  objc_enumerationMutation(phoneNumbers);
                }

                value = [*(*(&v47 + 1) + 8 * j) value];
                unformattedInternationalStringValue = [value unformattedInternationalStringValue];

                [v8 addObject:unformattedInternationalStringValue];
              }

              v11 = [phoneNumbers countByEnumeratingWithState:&v47 objects:v57 count:16];
            }

            while (v11);
          }

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          emailAddresses = [v7 emailAddresses];
          v17 = [emailAddresses countByEnumeratingWithState:&v43 objects:v56 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v44;
            do
            {
              for (k = 0; k != v18; k = k + 1)
              {
                if (*v44 != v19)
                {
                  objc_enumerationMutation(emailAddresses);
                }

                value2 = [*(*(&v43 + 1) + 8 * k) value];
                lowercaseString = [value2 lowercaseString];
                [v8 addObject:lowercaseString];
              }

              v18 = [emailAddresses countByEnumeratingWithState:&v43 objects:v56 count:16];
            }

            while (v18);
          }

          v23 = [v8 copy];
          [v38 setObject:v23 forKey:v7];
        }

        v5 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v5);
    }

    v24 = [NSMutableSet alloc];
    allValues = [v38 allValues];
    firstObject = [allValues firstObject];
    v27 = [v24 initWithSet:firstObject];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    allValues2 = [v38 allValues];
    v29 = [allValues2 countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v40;
      do
      {
        for (m = 0; m != v30; m = m + 1)
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(allValues2);
          }

          [v27 intersectSet:{*(*(&v39 + 1) + 8 * m), v35}];
        }

        v30 = [allValues2 countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v30);
    }

    v33 = [v27 count] != 0;
    valueCopy = v35;
  }

  else
  {
    v33 = 1;
  }

  return v33;
}

+ (id)contactWithMostHandles:(id)handles
{
  handlesCopy = handles;
  firstObject = [handlesCopy firstObject];
  emailAddresses = [firstObject emailAddresses];
  v6 = [emailAddresses count];
  phoneNumbers = [firstObject phoneNumbers];
  v8 = [phoneNumbers count];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = handlesCopy;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = &v6[v8];
    v13 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        emailAddresses2 = [v15 emailAddresses];
        v17 = [emailAddresses2 count];
        phoneNumbers2 = [v15 phoneNumbers];
        v19 = &v17[[phoneNumbers2 count]];

        if (v19 > v12)
        {
          v20 = v15;

          v12 = v19;
          firstObject = v20;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  return firstObject;
}

+ (void)populatePersonsByTUHandleFrom:(id)from personsByTUHandle:(id)handle tuHandleOrderedSet:(id)set
{
  fromCopy = from;
  handleCopy = handle;
  setCopy = set;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [fromCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(fromCopy);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [TUHandle handleWithPerson:v14];
        if (v15)
        {
          [setCopy addObject:v15];
          v16 = [handleCopy objectForKeyedSubscript:v15];
          if (!v16)
          {
            v16 = objc_alloc_init(NSMutableArray);
            [handleCopy setObject:v16 forKeyedSubscript:v15];
          }

          [v16 addObject:v14];
        }
      }

      v11 = [fromCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

@end