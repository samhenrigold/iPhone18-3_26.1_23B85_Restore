@interface IMAssistantMessageHandler
+ (id)connectToIMDaemonController;
- (NSArray)keysToFetch;
- (id)_initWithDataSource:(id)source contactKeysToFetch:(id)fetch intentIdentifier:(id)identifier;
- (id)contactIdentifiersForParticipantsInChat:(id)chat;
- (id)contactIdentifiersMatchingHandle:(id)handle;
- (id)contactIdentifiersMatchingHandleID:(id)d handleType:(int64_t)type;
- (id)contactIdentifiersMatchingINPersonHandle:(id)handle;
- (id)contactIdentifiersMatchingSPIHandle:(id)handle;
- (id)contactPredicateFromHandle:(id)handle handleType:(int64_t)type;
- (id)contactWithIdentifier:(id)identifier;
- (id)contactsMatchingINPerson:(id)person;
- (id)contactsMatchingPredicate:(id)predicate forPerson:(id)person;
- (id)meContactIdentifier;
- (id)personFromSPIHandle:(id)handle;
- (id)unifiedContactIdentifierForContactIdentifier:(id)identifier;
- (void)forceTriggerResumeNotification;
@end

@implementation IMAssistantMessageHandler

+ (id)connectToIMDaemonController
{
  if (IMIsRunningInUnitTesting())
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    if (qword_28118F660 != -1)
    {
      sub_2547C853C();
    }

    date = qword_28118F668;
  }

  return date;
}

- (id)_initWithDataSource:(id)source contactKeysToFetch:(id)fetch intentIdentifier:(id)identifier
{
  sourceCopy = source;
  fetchCopy = fetch;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = IMAssistantMessageHandler;
  v11 = [(IMAssistantMessageHandler *)&v17 init];
  if (v11)
  {
    if (sourceCopy)
    {
      v12 = sourceCopy;
    }

    else
    {
      v12 = +[IMAssistantMessageHandlerDefaultDataSource sharedInstance];
    }

    messageHandlerDataSource = v11->_messageHandlerDataSource;
    v11->_messageHandlerDataSource = v12;

    objc_storeStrong(&v11->_keysToFetch, fetch);
    v14 = [identifierCopy copy];
    intentIdentifier = v11->_intentIdentifier;
    v11->_intentIdentifier = v14;

    [(IMAssistantMessageHandler *)v11 forceTriggerResumeNotification];
  }

  return v11;
}

- (NSArray)keysToFetch
{
  v11[11] = *MEMORY[0x277D85DE8];
  keysToFetch = self->_keysToFetch;
  if (!keysToFetch)
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:{0, *MEMORY[0x277CBD068], *MEMORY[0x277CBD000], *MEMORY[0x277CBD058], *MEMORY[0x277CBCFF8], *MEMORY[0x277CBD070], *MEMORY[0x277CBD078], *MEMORY[0x277CBD098], *MEMORY[0x277CBCFC0], *MEMORY[0x277CBD0A0]}];
    v11[9] = v5;
    descriptorForUsedKeys = [MEMORY[0x277CCAC00] descriptorForUsedKeys];
    v11[10] = descriptorForUsedKeys;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:11];
    [v4 addObjectsFromArray:v7];

    v8 = [v4 copy];
    v9 = self->_keysToFetch;
    self->_keysToFetch = v8;

    keysToFetch = self->_keysToFetch;
  }

  return keysToFetch;
}

- (id)contactsMatchingINPerson:(id)person
{
  v34 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v5 = _IMAssistantCoreGeneralSignpostLogHandle(personCopy);
  v6 = os_signpost_id_generate(v5);

  v8 = _IMAssistantCoreGeneralSignpostLogHandle(v7);
  v9 = v8;
  v10 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v28) = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "contactsMatchingPerson", &unk_2547CAD0B, &v28, 2u);
  }

  __im_assistant_allContactIdentifiers = [personCopy __im_assistant_allContactIdentifiers];
  if ([__im_assistant_allContactIdentifiers count])
  {
    v12 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:__im_assistant_allContactIdentifiers];
    v13 = [(IMAssistantMessageHandler *)self contactsMatchingPredicate:v12 forPerson:personCopy];
    v14 = IMLogHandleForCategory();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v15)
      {
        v16 = [v13 count];
        v28 = 134218498;
        v29 = v16;
        v30 = 2112;
        v31 = personCopy;
        v32 = 2112;
        v33 = v13;
        _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Person resolved to %ld contacts via siriMatches. Person: %@, Contacts: %@", &v28, 0x20u);
      }

      v18 = _IMAssistantCoreGeneralSignpostLogHandle(v17);
      v19 = v18;
      if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        LOWORD(v28) = 0;
        _os_signpost_emit_with_name_impl(&dword_25479E000, v19, OS_SIGNPOST_INTERVAL_END, v6, "contactsMatchingPerson", &unk_2547CAD0B, &v28, 2u);
      }

      v20 = v13;
    }

    else
    {
      if (v15)
      {
        v28 = 138412290;
        v29 = personCopy;
        _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Person contained siriMatches that did not resolve to any contacts. Person: %@", &v28, 0xCu);
      }

      v25 = _IMAssistantCoreGeneralSignpostLogHandle(v24);
      v26 = v25;
      if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        LOWORD(v28) = 0;
        _os_signpost_emit_with_name_impl(&dword_25479E000, v26, OS_SIGNPOST_INTERVAL_END, v6, "contactsMatchingPerson", &unk_2547CAD0B, &v28, 2u);
      }

      v20 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v21 = IMLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v28 = 138412290;
      v29 = personCopy;
      _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Person to resolve contains no siriMatches. Person: %@", &v28, 0xCu);
    }

    v23 = _IMAssistantCoreGeneralSignpostLogHandle(v22);
    v12 = v23;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      LOWORD(v28) = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v12, OS_SIGNPOST_INTERVAL_END, v6, "contactsMatchingPerson", &unk_2547CAD0B, &v28, 2u);
    }

    v20 = MEMORY[0x277CBEBF8];
  }

  return v20;
}

- (id)unifiedContactIdentifierForContactIdentifier:(id)identifier
{
  v33[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = _IMAssistantCoreGeneralSignpostLogHandle(identifierCopy);
  v6 = os_signpost_id_generate(v5);

  v8 = _IMAssistantCoreGeneralSignpostLogHandle(v7);
  v9 = v8;
  v10 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "unifiedContactIdentifierForContactIdentifier", &unk_2547CAD0B, buf, 2u);
  }

  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  contactIdentifierToUnifiedContactIdentifierCache = [messageHandlerDataSource contactIdentifierToUnifiedContactIdentifierCache];

  v13 = [contactIdentifierToUnifiedContactIdentifierCache objectForKey:identifierCopy];
  v14 = [v13 length];
  if (v14)
  {
    v15 = _IMAssistantCoreGeneralSignpostLogHandle(v14);
    v16 = v15;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v16, OS_SIGNPOST_INTERVAL_END, v6, "unifiedContactIdentifierForContactIdentifier", &unk_2547CAD0B, buf, 2u);
    }

    identifier = v13;
  }

  else
  {
    messageHandlerDataSource2 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    contactsDataSource = [messageHandlerDataSource2 contactsDataSource];
    v33[0] = *MEMORY[0x277CBD018];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v28 = 0;
    v21 = [contactsDataSource unifiedContactWithIdentifier:identifierCopy keysToFetch:v20 error:&v28];
    v22 = v28;

    if (v22)
    {
      v23 = IMLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v30 = identifierCopy;
        v31 = 2112;
        v32 = v22;
        _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "Error fetching unified contact identifier for contact with identifier %@ from contact store. Error: %@", buf, 0x16u);
      }
    }

    identifier = [v21 identifier];
    v24 = [identifier length];
    if (v24)
    {
      v24 = [contactIdentifierToUnifiedContactIdentifierCache setObject:identifier forKey:identifierCopy];
    }

    v25 = _IMAssistantCoreGeneralSignpostLogHandle(v24);
    v26 = v25;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v26, OS_SIGNPOST_INTERVAL_END, v6, "unifiedContactIdentifierForContactIdentifier", &unk_2547CAD0B, buf, 2u);
    }
  }

  return identifier;
}

- (id)contactWithIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = _IMAssistantCoreGeneralSignpostLogHandle(identifierCopy);
  v6 = os_signpost_id_generate(v5);

  v8 = _IMAssistantCoreGeneralSignpostLogHandle(v7);
  v9 = v8;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "contactWithIdentifier", &unk_2547CAD0B, buf, 2u);
  }

  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  contactsDataSource = [messageHandlerDataSource contactsDataSource];
  keysToFetch = [(IMAssistantMessageHandler *)self keysToFetch];
  v20 = 0;
  v13 = [contactsDataSource unifiedContactWithIdentifier:identifierCopy keysToFetch:keysToFetch error:&v20];
  v14 = v20;

  if (v14)
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = identifierCopy;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_25479E000, v16, OS_LOG_TYPE_INFO, "Error fetching contact with identifier %@ from contact store. Error: %@", buf, 0x16u);
    }
  }

  v17 = _IMAssistantCoreGeneralSignpostLogHandle(v15);
  v18 = v17;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v18, OS_SIGNPOST_INTERVAL_END, v6, "contactWithIdentifier", &unk_2547CAD0B, buf, 2u);
  }

  return v13;
}

- (id)contactsMatchingPredicate:(id)predicate forPerson:(id)person
{
  v31 = *MEMORY[0x277D85DE8];
  personCopy = person;
  predicateCopy = predicate;
  v8 = _IMAssistantCoreGeneralSignpostLogHandle(predicateCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = _IMAssistantCoreGeneralSignpostLogHandle(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "contactsMatchingPredicate", &unk_2547CAD0B, buf, 2u);
  }

  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  contactsDataSource = [messageHandlerDataSource contactsDataSource];
  keysToFetch = [(IMAssistantMessageHandler *)self keysToFetch];
  v26 = 0;
  v16 = [contactsDataSource unifiedContactsMatchingPredicate:predicateCopy keysToFetch:keysToFetch error:&v26];

  v17 = v26;
  if (v17)
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = personCopy;
      v29 = 2112;
      v30 = v17;
      v19 = "Error fetching %@ from contact store: %@";
      v20 = v18;
      v21 = 22;
LABEL_7:
      _os_log_impl(&dword_25479E000, v20, OS_LOG_TYPE_INFO, v19, buf, v21);
    }
  }

  else
  {
    v22 = [v16 count];
    if (v22)
    {
      goto LABEL_10;
    }

    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = personCopy;
      v19 = "Could not find person %@ in contact store with predicate";
      v20 = v18;
      v21 = 12;
      goto LABEL_7;
    }
  }

LABEL_10:
  v23 = _IMAssistantCoreGeneralSignpostLogHandle(v22);
  v24 = v23;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v24, OS_SIGNPOST_INTERVAL_END, v9, "contactsMatchingPredicate", &unk_2547CAD0B, buf, 2u);
  }

  return v16;
}

- (id)contactIdentifiersMatchingHandleID:(id)d handleType:(int64_t)type
{
  v59[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = _IMAssistantCoreGeneralSignpostLogHandle(dCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = _IMAssistantCoreGeneralSignpostLogHandle(v9);
  v11 = v10;
  v12 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "contactIdentifiersMatchingHandleID", &unk_2547CAD0B, buf, 2u);
  }

  if (![dCopy length])
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v17, OS_LOG_TYPE_INFO, "Returning empty contactID array for nil handleID", buf, 2u);
    }

    v19 = _IMAssistantCoreGeneralSignpostLogHandle(v18);
    handleToContactIdentifierCache = v19;
    if (v12 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v19))
    {
      goto LABEL_17;
    }

    *buf = 0;
    goto LABEL_16;
  }

  if (MEMORY[0x259C19110](dCopy))
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v56 = dCopy;
      _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Returning empty contactID array for handleID that is a businessID: %@", buf, 0xCu);
    }

    v15 = _IMAssistantCoreGeneralSignpostLogHandle(v14);
    handleToContactIdentifierCache = v15;
    if (v12 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v15))
    {
      goto LABEL_17;
    }

    *buf = 0;
LABEL_16:
    _os_signpost_emit_with_name_impl(&dword_25479E000, handleToContactIdentifierCache, OS_SIGNPOST_INTERVAL_END, v8, "contactIdentifiersMatchingHandleID", &unk_2547CAD0B, buf, 2u);
LABEL_17:
    array = MEMORY[0x277CBEBF8];
    goto LABEL_43;
  }

  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  handleToContactIdentifierCache = [messageHandlerDataSource handleToContactIdentifierCache];

  v22 = [handleToContactIdentifierCache objectForKey:dCopy];
  v23 = v22;
  if (v22)
  {
    v24 = _IMAssistantCoreGeneralSignpostLogHandle(v22);
    v25 = v24;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v25, OS_SIGNPOST_INTERVAL_END, v8, "contactIdentifiersMatchingHandleID", &unk_2547CAD0B, buf, 2u);
    }

    array = v23;
  }

  else
  {
    v26 = [(IMAssistantMessageHandler *)self contactPredicateFromHandle:dCopy handleType:type];
    v27 = objc_alloc_init(MEMORY[0x277CBEB40]);
    if (v26)
    {
      messageHandlerDataSource2 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      contactsDataSource = [messageHandlerDataSource2 contactsDataSource];
      v30 = *MEMORY[0x277CBCFC0];
      v59[0] = *MEMORY[0x277CBD018];
      v59[1] = v30;
      v59[2] = *MEMORY[0x277CBD098];
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
      v32 = v26;
      v33 = v31;
      v53 = 0;
      v48 = v32;
      v46 = [contactsDataSource unifiedContactsMatchingPredicate:? keysToFetch:? error:?];
      v34 = 0;

      if (v34)
      {
        v35 = IMLogHandleForCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v56 = dCopy;
          v57 = 2112;
          v58 = v34;
          _os_log_impl(&dword_25479E000, v35, OS_LOG_TYPE_INFO, "Error fetching contact identifiers matching handle %@ from contact store: %@", buf, 0x16u);
        }
      }

      v47 = v34;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v36 = v46;
      v37 = [v36 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v50;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v50 != v39)
            {
              objc_enumerationMutation(v36);
            }

            identifier = [*(*(&v49 + 1) + 8 * i) identifier];
            [v27 addObject:identifier];
          }

          v38 = [v36 countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v38);
      }

      v26 = v48;
      v23 = 0;
      v42 = v47;
    }

    else
    {
      v42 = IMLogHandleForCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v56 = dCopy;
        _os_log_impl(&dword_25479E000, v42, OS_LOG_TYPE_INFO, "Could not search for contacts matching handle because a predicate could not be consrtuced from handle ID: %@", buf, 0xCu);
      }
    }

    array = [v27 array];
    v43 = _IMAssistantCoreGeneralSignpostLogHandle(array);
    v44 = v43;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v44, OS_SIGNPOST_INTERVAL_END, v8, "contactIdentifiersMatchingHandleID", &unk_2547CAD0B, buf, 2u);
    }
  }

LABEL_43:

  return array;
}

- (id)contactPredicateFromHandle:(id)handle handleType:(int64_t)type
{
  handleCopy = handle;
  if (type)
  {
    if (type != 2)
    {
      if (type != 1)
      {
LABEL_4:
        v6 = 0;
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_25479E000, v7, OS_LOG_TYPE_INFO, "Unknown handle type, determining type from handle string value", v10, 2u);
    }

    if (IMStringIsEmail())
    {
LABEL_8:
      v6 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:handleCopy];
      goto LABEL_11;
    }

    if (!MEMORY[0x259C19130](handleCopy))
    {
      goto LABEL_4;
    }
  }

  v8 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:handleCopy];
  v6 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v8];

LABEL_11:

  return v6;
}

- (id)contactIdentifiersMatchingINPersonHandle:(id)handle
{
  handleCopy = handle;
  value = [handleCopy value];
  if (value)
  {
    v6 = -[IMAssistantMessageHandler contactIdentifiersMatchingHandleID:handleType:](self, "contactIdentifiersMatchingHandleID:handleType:", value, [handleCopy type]);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)contactIdentifiersMatchingHandle:(id)handle
{
  normalizedID = [handle normalizedID];
  if (normalizedID)
  {
    v5 = [(IMAssistantMessageHandler *)self contactIdentifiersMatchingHandleID:normalizedID handleType:0];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)contactIdentifiersMatchingSPIHandle:(id)handle
{
  handleCopy = handle;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if ([handleCopy isMe])
  {
    meContactIdentifier = [(IMAssistantMessageHandler *)self meContactIdentifier];
    if ([meContactIdentifier length])
    {
      [v5 addObject:meContactIdentifier];
    }
  }

  address = [handleCopy address];
  if (address)
  {
    v8 = [(IMAssistantMessageHandler *)self contactIdentifiersMatchingHandleID:address handleType:0];
    [v5 addObjectsFromArray:v8];
  }

  array = [v5 array];

  return array;
}

- (id)meContactIdentifier
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = _IMAssistantCoreGeneralSignpostLogHandle(self);
  v4 = os_signpost_id_generate(v3);

  v6 = _IMAssistantCoreGeneralSignpostLogHandle(v5);
  v7 = v6;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "meContactIdentifier", &unk_2547CAD0B, buf, 2u);
  }

  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  contactsDataSource = [messageHandlerDataSource contactsDataSource];

  v22[0] = *MEMORY[0x277CBD018];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v19 = 0;
  v11 = [contactsDataSource _crossPlatformUnifiedMeContactWithKeysToFetch:v10 error:&v19];
  v12 = v19;
  if (v12)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Error fetching me contact: %@", buf, 0xCu);
    }
  }

  if (!v11)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Could not find me contact identifier", buf, 2u);
    }
  }

  identifier = [v11 identifier];
  v16 = _IMAssistantCoreGeneralSignpostLogHandle(identifier);
  v17 = v16;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v17, OS_SIGNPOST_INTERVAL_END, v4, "meContactIdentifier", &unk_2547CAD0B, buf, 2u);
  }

  return identifier;
}

- (id)contactIdentifiersForParticipantsInChat:(id)chat
{
  v19 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [chatCopy participantsWithState:16];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(IMAssistantMessageHandler *)self contactIdentifiersMatchingHandle:*(*(&v14 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)personFromSPIHandle:(id)handle
{
  v34 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v5 = _IMAssistantCoreGeneralSignpostLogHandle(handleCopy);
  v6 = os_signpost_id_generate(v5);

  v8 = _IMAssistantCoreGeneralSignpostLogHandle(v7);
  v9 = v8;
  v10 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v26) = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "personFromSPIHandle", &unk_2547CAD0B, &v26, 2u);
  }

  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  spiHandleToPersonCache = [messageHandlerDataSource spiHandleToPersonCache];

  v13 = [spiHandleToPersonCache objectForKey:handleCopy];
  v14 = v13;
  if (v13)
  {
    v15 = _IMAssistantCoreGeneralSignpostLogHandle(v13);
    v16 = v15;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      LOWORD(v26) = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v16, OS_SIGNPOST_INTERVAL_END, v6, "personFromSPIHandle", &unk_2547CAD0B, &v26, 2u);
    }

    v17 = v14;
  }

  else
  {
    v18 = [(IMAssistantMessageHandler *)self contactIdentifiersMatchingSPIHandle:handleCopy];
    if ([v18 count])
    {
      firstObject = [v18 firstObject];
      v20 = [(IMAssistantMessageHandler *)self contactWithIdentifier:firstObject];
      if ([v18 count] >= 2)
      {
        v21 = IMLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [v18 count];
          v26 = 134218754;
          v27 = v22;
          v28 = 2112;
          v29 = handleCopy;
          v30 = 2112;
          v31 = v18;
          v32 = 2112;
          v33 = v20;
          _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "%ld contacts matched handle %@. Matching identifiers: %@. Using contact: %@", &v26, 0x2Au);
        }
      }
    }

    else
    {
      v20 = 0;
    }

    v17 = [MEMORY[0x277CD3E90] __im_personFromSPIHandle:handleCopy contact:v20];
    v23 = _IMAssistantCoreGeneralSignpostLogHandle([spiHandleToPersonCache setObject:v17 forKey:handleCopy]);
    v24 = v23;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      LOWORD(v26) = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v24, OS_SIGNPOST_INTERVAL_END, v6, "personFromSPIHandle", &unk_2547CAD0B, &v26, 2u);
    }
  }

  return v17;
}

- (void)forceTriggerResumeNotification
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_25479F654;
  v5[3] = &unk_279786A58;
  v5[4] = self;
  v2 = MEMORY[0x259C19590](v5, a2);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_25479F644;
    v3[3] = &unk_279786928;
    v4 = v2;
    dispatch_sync(MEMORY[0x277D85CD0], v3);
  }
}

@end