@interface CNContactStore
+ (id)contactStore;
+ (id)suggestedContactStore;
- (id)__contactsForHandles:(id)handles keyDescriptors:(id)descriptors alwaysUnifyLabeledValues:(BOOL)values;
- (id)contactsForHandles:(id)handles keyDescriptors:(id)descriptors alwaysUnifyLabeledValues:(BOOL)values;
@end

@implementation CNContactStore

+ (id)contactStore
{
  phoneKit_isAuthorized = [self phoneKit_isAuthorized];
  if (phoneKit_isAuthorized)
  {
    v3 = objc_alloc_init(CNContactStoreConfiguration);
    [v3 setIncludeLocalContacts:1];
    if (_os_feature_enabled_impl())
    {
      [v3 setIncludeAcceptedIntroductions:1];
    }

    v4 = [[CNContactStore alloc] initWithConfiguration:v3];
  }

  else
  {
    v5 = PHDefaultLog(phoneKit_isAuthorized);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CNContactStore(PhoneKit) *)v5 contactStore:v6];
    }

    v4 = 0;
  }

  return v4;
}

+ (id)suggestedContactStore
{
  phoneKit_isAuthorized = [self phoneKit_isAuthorized];
  if (phoneKit_isAuthorized)
  {
    v3 = objc_alloc_init(CNContactStoreConfiguration);
    [v3 setIncludeLocalContacts:1];
    if (+[CNContact suggestionsEnabled])
    {
      [v3 setIncludeSuggestedContacts:1];
      [v3 setIncludeDonatedContacts:1];
    }

    if (_os_feature_enabled_impl())
    {
      [v3 setIncludeAcceptedIntroductions:1];
    }

    v4 = [[CNContactStore alloc] initWithConfiguration:v3];
  }

  else
  {
    v5 = PHDefaultLog(phoneKit_isAuthorized);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CNContactStore(PhoneKit) *)v5 contactStore:v6];
    }

    v4 = 0;
  }

  return v4;
}

- (id)contactsForHandles:(id)handles keyDescriptors:(id)descriptors alwaysUnifyLabeledValues:(BOOL)values
{
  valuesCopy = values;
  handlesCopy = handles;
  descriptorsCopy = descriptors;
  v49 = descriptorsCopy;
  if (![handlesCopy count])
  {
    selfCopy6 = self;
    v18 = valuesCopy;
    value = 0;
    goto LABEL_21;
  }

  v10 = [[CNContactFetchRequest alloc] initWithKeysToFetch:descriptorsCopy];
  v11 = [CNContact predicateForContactsMatchingHandleStrings:handlesCopy];
  [v10 setPredicate:v11];

  v12 = NSSelectorFromString(&cfstr_Setalwaysunify.isa);
  v13 = objc_opt_respondsToSelector();
  v14 = v13;
  v15 = PHDefaultLog(v13);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      *buf = 138740227;
      v56 = v10;
      v57 = 2117;
      selfCopy3 = self;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Executing contact fetch request %{sensitive}@ without always unifying labels using contact store %{sensitive}@", buf, 0x16u);
    }

    ([v10 methodForSelector:v12])(v10, v12, valuesCopy);
  }

  else
  {
    if (v16)
    {
      *buf = 138740227;
      v56 = v10;
      v57 = 2117;
      selfCopy3 = self;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Executing contact fetch request %{sensitive}@ using contact store %{sensitive}@", buf, 0x16u);
    }
  }

  v54 = 0;
  v20 = [(CNContactStore *)self executeFetchRequest:v10 error:&v54];
  v21 = v54;
  v22 = v21;
  if (v20)
  {
    value = [v20 value];
    v23 = PHDefaultLog(value);
    selfCopy6 = self;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [value count];
      *buf = 134217984;
      v56 = v24;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Contact fetch request returned %lu results", buf, 0xCu);
    }

LABEL_19:
    v18 = valuesCopy;

    goto LABEL_20;
  }

  if (v21)
  {
    code = [v21 code];
    if (code != stru_B8.segname)
    {
      v23 = PHDefaultLog(code);
      selfCopy6 = self;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(CNContactStore(PhoneKit) *)v22 contactsForHandles:v23 keyDescriptors:v26 alwaysUnifyLabeledValues:v27, v28, v29, v30, v31];
      }

      value = 0;
      goto LABEL_19;
    }
  }

  selfCopy6 = self;
  v18 = valuesCopy;
  value = 0;
LABEL_20:

LABEL_21:
  allKeys = [value allKeys];
  v33 = [NSSet setWithArray:allKeys];

  v34 = +[NSMutableArray array];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v35 = handlesCopy;
  v36 = [v35 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v51;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v51 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v50 + 1) + 8 * i);
        if (([v33 containsObject:v40] & 1) == 0)
        {
          [v34 addObject:v40];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v37);
  }

  v41 = [(CNContactStore *)selfCopy6 __contactsForHandles:v34 keyDescriptors:v49 alwaysUnifyLabeledValues:v18];
  v42 = [NSMutableDictionary dictionaryWithDictionary:value];
  v43 = PHDefaultLog([v42 addEntriesFromDictionary:v41]);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [value count];
    v45 = [v41 count];
    v46 = [v42 count];
    *buf = 134218496;
    v56 = v44;
    v57 = 2048;
    selfCopy3 = v45;
    v59 = 2048;
    v60 = v46;
    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "TOTAL contacts fetched: regular = %lu accepted = %lu, combined = %lu", buf, 0x20u);
  }

  v47 = [v42 copy];

  return v47;
}

- (id)__contactsForHandles:(id)handles keyDescriptors:(id)descriptors alwaysUnifyLabeledValues:(BOOL)values
{
  handlesCopy = handles;
  descriptorsCopy = descriptors;
  v29 = +[NSMutableDictionary dictionary];
  if ([handlesCopy count])
  {
    [CNContact predicateForContactsMatchingHandleStrings:handlesCopy];
    v26 = v34 = 0;
    v27 = descriptorsCopy;
    v9 = [CNContactStore unifiedContactsMatchingPredicate:"unifiedContactsMatchingPredicate:keysToFetch:error:" keysToFetch:? error:?];
    v25 = v34;
    v28 = handlesCopy;
    v10 = [NSSet setWithArray:handlesCopy];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          phoneNumbers = [v16 phoneNumbers];
          firstObject = [phoneNumbers firstObject];
          value = [firstObject value];
          stringValue = [value stringValue];

          if (!stringValue)
          {
            emailAddresses = [v16 emailAddresses];
            firstObject2 = [emailAddresses firstObject];
            stringValue = [firstObject2 value];
          }

          if ([stringValue length] && objc_msgSend(v10, "containsObject:", stringValue))
          {
            v35 = v16;
            v23 = [NSArray arrayWithObjects:&v35 count:1];
            [v29 setObject:v23 forKeyedSubscript:stringValue];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v13);
    }

    descriptorsCopy = v27;
    handlesCopy = v28;
  }

  return v29;
}

@end