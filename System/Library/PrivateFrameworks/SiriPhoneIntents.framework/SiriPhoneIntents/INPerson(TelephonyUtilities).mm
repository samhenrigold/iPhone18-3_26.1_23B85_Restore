@interface INPerson(TelephonyUtilities)
+ (id)tu_personMatchingHandle:()TelephonyUtilities contactsDataSource:isoCountryCodes:;
- (id)tu_allContactIdentifiers;
- (id)tu_contactsMatchingIdentifiers:()TelephonyUtilities contactsDataSource:identifierToContactCache:;
- (id)tu_handlesMatchingPersonWithContactsDataSource:()TelephonyUtilities identifierToContactCache:;
- (id)tu_matchingINPersonHandlesByContactIdentifier;
- (id)tu_personWithFormattedHandleForISOCountryCodes:()TelephonyUtilities;
@end

@implementation INPerson(TelephonyUtilities)

- (id)tu_allContactIdentifiers
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB40]);
  contactIdentifier = [self contactIdentifier];
  v4 = [contactIdentifier length];

  if (v4)
  {
    contactIdentifier2 = [self contactIdentifier];
    [v2 addObject:contactIdentifier2];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  siriMatches = [self siriMatches];
  v7 = [siriMatches countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(siriMatches);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        contactIdentifier3 = [v11 contactIdentifier];
        v13 = [contactIdentifier3 length];

        if (v13)
        {
          contactIdentifier4 = [v11 contactIdentifier];
          [v2 addObject:contactIdentifier4];
        }
      }

      v8 = [siriMatches countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  array = [v2 array];

  return array;
}

- (id)tu_matchingINPersonHandlesByContactIdentifier
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  siriMatches = [self siriMatches];
  v4 = [siriMatches countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(siriMatches);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        contactIdentifier = [v8 contactIdentifier];
        if ([contactIdentifier length])
        {
          personHandle = [v8 personHandle];

          if (!personHandle)
          {
            continue;
          }

          contactIdentifier2 = [v8 contactIdentifier];
          contactIdentifier = [v2 objectForKeyedSubscript:contactIdentifier2];

          if (!contactIdentifier)
          {
            contactIdentifier = objc_alloc_init(MEMORY[0x277CBEB18]);
            contactIdentifier3 = [v8 contactIdentifier];
            [v2 setObject:contactIdentifier forKeyedSubscript:contactIdentifier3];
          }

          personHandle2 = [v8 personHandle];
          [contactIdentifier addObject:personHandle2];
        }
      }

      v5 = [siriMatches countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = [v2 copy];

  return v14;
}

- (id)tu_personWithFormattedHandleForISOCountryCodes:()TelephonyUtilities
{
  v4 = a3;
  personHandle = [self personHandle];
  value = [personHandle value];
  if ([personHandle type] == 2 || !objc_msgSend(personHandle, "type") && objc_msgSend(value, "_appearsToBePhoneNumber"))
  {
    v7 = MEMORY[0x277CBDB70];
    firstObject = [v4 firstObject];
    v9 = [v7 phoneNumberWithDigits:value countryCode:firstObject];
    formattedStringValue = [v9 formattedStringValue];

    [personHandle setValue:formattedStringValue forKey:@"value"];
  }

  v11 = [self mutableCopy];
  [v11 setPersonHandle:personHandle];

  return v11;
}

- (id)tu_handlesMatchingPersonWithContactsDataSource:()TelephonyUtilities identifierToContactCache:
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog(v7);
  v9 = os_signpost_id_generate(v8);

  v11 = IntentHandlerDefaultLog(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2688A7000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "handlesMatchingPerson", "", buf, 2u);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  personHandle = [self personHandle];
  value = [personHandle value];
  v16 = [value length];

  if (v16)
  {
    v17 = [MEMORY[0x277D6EEE8] handleWithPerson:self];
    [v13 addObject:v17];
  }

  else
  {
    tu_allContactIdentifiers = [self tu_allContactIdentifiers];
    v55 = v7;
    v56 = v6;
    v18 = [self tu_contactsMatchingIdentifiers:? contactsDataSource:? identifierToContactCache:?];
    personHandle2 = [self personHandle];
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
        for (i = 0; i != v63; ++i)
        {
          if (*v73 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v72 + 1) + 8 * i);
          if (v61)
          {
            personHandle3 = [self personHandle];
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
                for (j = 0; j != v29; ++j)
                {
                  if (*v69 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v68 + 1) + 8 * j);
                  v33 = objc_alloc(MEMORY[0x277D6EEE8]);
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
            personHandle4 = [self personHandle];
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
                for (k = 0; k != v42; ++k)
                {
                  if (*v65 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*(&v64 + 1) + 8 * k);
                  v46 = objc_alloc(MEMORY[0x277D6EEE8]);
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

    v7 = v55;
    v6 = v56;
    v17 = tu_allContactIdentifiers;
  }

  v50 = IntentHandlerDefaultLog(v49);
  v51 = v50;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2688A7000, v51, OS_SIGNPOST_INTERVAL_END, v9, "handlesMatchingPerson", "", buf, 2u);
  }

  v52 = [v13 copy];

  return v52;
}

- (id)tu_contactsMatchingIdentifiers:()TelephonyUtilities contactsDataSource:identifierToContactCache:
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 count];
  if (v10)
  {
    v57 = v8;
    v11 = IntentHandlerDefaultLog(v10);
    v12 = os_signpost_id_generate(v11);

    v14 = IntentHandlerDefaultLog(v13);
    v15 = v14;
    v55 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2688A7000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "contactsMatchingIdentifiers", "", buf, 2u);
    }

    spid = v12;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v56 = v7;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v64;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v64 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v63 + 1) + 8 * i);
          v24 = [v9 objectForKey:v23];
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

        v20 = [v18 countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v20);
    }

    v27 = [v16 count];
    v8 = v57;
    if (v27)
    {
      v28 = IntentHandlerDefaultLog(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v70 = v18;
        _os_log_impl(&dword_2688A7000, v28, OS_LOG_TYPE_DEFAULT, "Looking up contact in the contact store matching identifiers: %@", buf, 0xCu);
      }

      v29 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v16];
      v30 = *MEMORY[0x277CBCFC0];
      v68[0] = *MEMORY[0x277CBD098];
      v68[1] = v30;
      [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
      v52 = v62 = 0;
      v53 = v29;
      v31 = [v57 unifiedContactsMatchingPredicate:v29 keysToFetch:? error:?];
      v32 = 0;
      v33 = v32;
      if (v32)
      {
        v34 = IntentHandlerDefaultLog(v32);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [(INPerson(TelephonyUtilities) *)v33 tu_contactsMatchingIdentifiers:v34 contactsDataSource:v35 identifierToContactCache:v36, v37, v38, v39, v40];
        }
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v41 = v31;
      v42 = [v41 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v59;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v59 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v58 + 1) + 8 * j);
            identifier = [v46 identifier];
            [v9 setObject:v46 forKey:identifier];

            [v17 addObject:v46];
          }

          v43 = [v41 countByEnumeratingWithState:&v58 objects:v67 count:16];
        }

        while (v43);
      }

      v8 = v57;
    }

    v48 = IntentHandlerDefaultLog(v27);
    v49 = v48;
    if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2688A7000, v49, OS_SIGNPOST_INTERVAL_END, spid, "contactsMatchingIdentifiers", "", buf, 2u);
    }

    v50 = [v17 copy];
    v7 = v56;
  }

  else
  {
    v50 = MEMORY[0x277CBEBF8];
  }

  return v50;
}

+ (id)tu_personMatchingHandle:()TelephonyUtilities contactsDataSource:isoCountryCodes:
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = IntentHandlerDefaultLog(v9);
  v11 = os_signpost_id_generate(v10);

  v13 = IntentHandlerDefaultLog(v12);
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2688A7000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "personMatchingHandle", "", buf, 2u);
  }

  v17 = IntentHandlerDefaultLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v72 = v7;
    _os_log_impl(&dword_2688A7000, v17, OS_LOG_TYPE_DEFAULT, "Looking up contact in the contact store matching handle: %@", buf, 0xCu);
  }

  type = [v7 type];
  switch(type)
  {
    case 1:
      value = [v7 value];
      _appearsToBePhoneNumber = [value _appearsToBePhoneNumber];

      if (!_appearsToBePhoneNumber)
      {
        value2 = [v7 value];
        _appearsToBeEmail = [value2 _appearsToBeEmail];

        if (!_appearsToBeEmail)
        {
          goto LABEL_33;
        }

LABEL_9:
        v19 = MEMORY[0x277CBDA58];
        value3 = [v7 value];
        v21 = [v19 predicateForContactsMatchingEmailAddress:value3];
        goto LABEL_12;
      }

      break;
    case 2:
      break;
    case 3:
      goto LABEL_9;
    default:
      goto LABEL_33;
  }

  v24 = MEMORY[0x277CBDA58];
  v25 = MEMORY[0x277CBDB70];
  value3 = [v7 value];
  v26 = [v25 phoneNumberWithStringValue:value3];
  v21 = [v24 predicateForContactsMatchingPhoneNumber:v26];

LABEL_12:
  if (v21)
  {
    v27 = *MEMORY[0x277CBCFC0];
    v70[0] = *MEMORY[0x277CBD098];
    v70[1] = v27;
    descriptorForUsedKeys = [MEMORY[0x277CCAC00] descriptorForUsedKeys];
    v70[2] = descriptorForUsedKeys;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:3];

    v68 = v8;
    v69 = 0;
    v67 = v29;
    v30 = [v8 unifiedContactsMatchingPredicate:v21 keysToFetch:v29 error:&v69];
    v31 = v69;
    v32 = v31;
    if (v31)
    {
      v33 = IntentHandlerDefaultLog(v31);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [(INPerson(TelephonyUtilities) *)v32 tu_contactsMatchingIdentifiers:v33 contactsDataSource:v34 identifierToContactCache:v35, v36, v37, v38, v39];
      }
    }

    if ([v30 count])
    {
      v40 = [v30 count];
      if (v40 < 2)
      {
LABEL_25:
        spid = v11;
        firstObject = [v30 firstObject];
        v44 = firstObject;
        v66 = v32;
        if (firstObject)
        {
          v45 = v9;
          v46 = [firstObject tu_personHandleMatchingHandle:v7 isoCountryCodes:v9];
          v47 = [MEMORY[0x277CCAC00] componentsForContact:v44];
        }

        else
        {
          v48 = objc_alloc(MEMORY[0x277CD3E98]);
          v45 = v9;
          v46 = [v48 tu_initUnlabledPersonHandleWithTUHandle:v7 isoCountryCodes:v9];

          v47 = 0;
        }

        v49 = objc_alloc(MEMORY[0x277CD3E90]);
        identifier = [v44 identifier];
        LOBYTE(v64) = 0;
        v51 = [v49 initWithPersonHandle:v46 nameComponents:v47 displayName:0 image:0 contactIdentifier:identifier customIdentifier:0 isMe:v64];

        v53 = IntentHandlerDefaultLog(v52);
        v54 = v53;
        if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_2688A7000, v54, OS_SIGNPOST_INTERVAL_END, spid, "personMatchingHandle", "", buf, 2u);
        }

        v8 = v68;
        v9 = v45;
        goto LABEL_36;
      }

      v41 = IntentHandlerDefaultLog(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v42 = "[WARN] Multiple contacts match handle, using the first one arbitrarily";
LABEL_23:
        _os_log_impl(&dword_2688A7000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 2u);
      }
    }

    else
    {
      v41 = IntentHandlerDefaultLog(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v42 = "No contacts match handle";
        goto LABEL_23;
      }
    }

    goto LABEL_25;
  }

LABEL_33:
  v21 = IntentHandlerDefaultLog(type);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [(INPerson(TelephonyUtilities) *)v7 tu_personMatchingHandle:v21 contactsDataSource:v57 isoCountryCodes:v58, v59, v60, v61, v62];
  }

  v51 = 0;
LABEL_36:

  return v51;
}

- (void)tu_contactsMatchingIdentifiers:()TelephonyUtilities contactsDataSource:identifierToContactCache:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_2688A7000, a2, a3, "Error performing contact search: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)tu_personMatchingHandle:()TelephonyUtilities contactsDataSource:isoCountryCodes:.cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_2688A7000, a2, a3, "Could not construct contact search predicate from handle: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end