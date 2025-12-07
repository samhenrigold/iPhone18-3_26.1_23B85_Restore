@interface CNContactStore(PhoneKit)
+ (id)contactStore;
+ (id)suggestedContactStore;
+ (void)contactStore;
- (id)__contactsForHandles:()PhoneKit keyDescriptors:alwaysUnifyLabeledValues:;
- (id)contactsForHandles:()PhoneKit keyDescriptors:alwaysUnifyLabeledValues:;
@end

@implementation CNContactStore(PhoneKit)

+ (id)contactStore
{
  phoneKit_isAuthorized = [self phoneKit_isAuthorized];
  if (phoneKit_isAuthorized)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    [v2 setIncludeLocalContacts:1];
    if (_os_feature_enabled_impl())
    {
      [v2 setIncludeAcceptedIntroductions:1];
    }

    v3 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v2];
  }

  else
  {
    v4 = PHDefaultLog(phoneKit_isAuthorized);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CNContactStore(PhoneKit) *)v4 contactStore:v5];
    }

    v3 = 0;
  }

  return v3;
}

+ (id)suggestedContactStore
{
  phoneKit_isAuthorized = [self phoneKit_isAuthorized];
  if (phoneKit_isAuthorized)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    [v2 setIncludeLocalContacts:1];
    if ([MEMORY[0x277CBDA58] suggestionsEnabled])
    {
      [v2 setIncludeSuggestedContacts:1];
      [v2 setIncludeDonatedContacts:1];
    }

    if (_os_feature_enabled_impl())
    {
      [v2 setIncludeAcceptedIntroductions:1];
    }

    v3 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v2];
  }

  else
  {
    v4 = PHDefaultLog(phoneKit_isAuthorized);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CNContactStore(PhoneKit) *)v4 contactStore:v5];
    }

    v3 = 0;
  }

  return v3;
}

- (id)contactsForHandles:()PhoneKit keyDescriptors:alwaysUnifyLabeledValues:
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v50 = v9;
  if (![v8 count])
  {
    selfCopy6 = self;
    v18 = a5;
    value = 0;
    goto LABEL_21;
  }

  v10 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v9];
  v11 = [MEMORY[0x277CBDA58] predicateForContactsMatchingHandleStrings:v8];
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
      v57 = v10;
      v58 = 2117;
      selfCopy3 = self;
      _os_log_impl(&dword_2429BC000, v15, OS_LOG_TYPE_DEFAULT, "Executing contact fetch request %{sensitive}@ without always unifying labels using contact store %{sensitive}@", buf, 0x16u);
    }

    ([v10 methodForSelector:v12])(v10, v12, a5);
  }

  else
  {
    if (v16)
    {
      *buf = 138740227;
      v57 = v10;
      v58 = 2117;
      selfCopy3 = self;
      _os_log_impl(&dword_2429BC000, v15, OS_LOG_TYPE_DEFAULT, "Executing contact fetch request %{sensitive}@ using contact store %{sensitive}@", buf, 0x16u);
    }
  }

  v55 = 0;
  v20 = [self executeFetchRequest:v10 error:&v55];
  v21 = v55;
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
      v57 = v24;
      _os_log_impl(&dword_2429BC000, v23, OS_LOG_TYPE_DEFAULT, "Contact fetch request returned %lu results", buf, 0xCu);
    }

LABEL_19:
    v18 = a5;

    goto LABEL_20;
  }

  if (v21)
  {
    code = [v21 code];
    if (code != 200)
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
  v18 = a5;
  value = 0;
LABEL_20:

LABEL_21:
  v32 = MEMORY[0x277CBEB98];
  allKeys = [value allKeys];
  v34 = [v32 setWithArray:allKeys];

  array = [MEMORY[0x277CBEB18] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v36 = v8;
  v37 = [v36 countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v52;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v52 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v51 + 1) + 8 * i);
        if (([v34 containsObject:v41] & 1) == 0)
        {
          [array addObject:v41];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v38);
  }

  v42 = [selfCopy6 __contactsForHandles:array keyDescriptors:v50 alwaysUnifyLabeledValues:v18];
  v43 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:value];
  v44 = PHDefaultLog([v43 addEntriesFromDictionary:v42]);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = [value count];
    v46 = [v42 count];
    v47 = [v43 count];
    *buf = 134218496;
    v57 = v45;
    v58 = 2048;
    selfCopy3 = v46;
    v60 = 2048;
    v61 = v47;
    _os_log_impl(&dword_2429BC000, v44, OS_LOG_TYPE_DEFAULT, "TOTAL contacts fetched: regular = %lu accepted = %lu, combined = %lu", buf, 0x20u);
  }

  v48 = [v43 copy];

  return v48;
}

- (id)__contactsForHandles:()PhoneKit keyDescriptors:alwaysUnifyLabeledValues:
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([v6 count])
  {
    [MEMORY[0x277CBDA58] predicateForContactsMatchingHandleStrings:v6];
    v25 = v33 = 0;
    v26 = v7;
    v8 = [self unifiedContactsMatchingPredicate:? keysToFetch:? error:?];
    v24 = v33;
    v27 = v6;
    v9 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          phoneNumbers = [v15 phoneNumbers];
          firstObject = [phoneNumbers firstObject];
          value = [firstObject value];
          stringValue = [value stringValue];

          if (!stringValue)
          {
            emailAddresses = [v15 emailAddresses];
            firstObject2 = [emailAddresses firstObject];
            stringValue = [firstObject2 value];
          }

          if ([stringValue length] && objc_msgSend(v9, "containsObject:", stringValue))
          {
            v34 = v15;
            v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
            [dictionary setObject:v22 forKeyedSubscript:stringValue];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v12);
    }

    v7 = v26;
    v6 = v27;
  }

  return dictionary;
}

+ (void)contactStore
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"The application is not authorized to access contact data.";
  OUTLINED_FUNCTION_0_0(&dword_2429BC000, self, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)contactsForHandles:()PhoneKit keyDescriptors:alwaysUnifyLabeledValues:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_2429BC000, a2, a3, "Contact fetch failed with the following error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end