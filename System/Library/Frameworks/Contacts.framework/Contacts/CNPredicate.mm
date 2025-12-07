@interface CNPredicate
+ (id)_convertSuggestions:(uint64_t)suggestions withSortOrder:(void *)order mutableObjects:;
+ (id)os_log;
- (CNPredicate)initWithCoder:(id)coder;
- (CNPredicate)initWithPredicate:(id)predicate;
- (NSString)description;
- (id)suggestedContactsWithSortOrder:(void *)order keysToFetch:(unsigned int)fetch mutableObjects:(void *)objects service:(void *)service error:;
- (void)_convertContactMatches:(void *)matches withService:(void *)service intoSuggestions:;
- (void)encodeWithCoder:(id)coder;
- (void)mainStoreDidFetchContacts:(id)contacts unifiedFetch:(BOOL)fetch;
@end

@implementation CNPredicate

+ (id)os_log
{
  if (os_log_cn_once_token_0_1 != -1)
  {
    +[CNPredicate os_log];
  }

  v3 = os_log_cn_once_object_0_1;

  return v3;
}

uint64_t __32__CNPredicate_Suggested__os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.predicates", "suggested-contact");
  v1 = os_log_cn_once_object_2;
  os_log_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_convertSuggestions:(uint64_t)suggestions withSortOrder:(void *)order mutableObjects:
{
  v22 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  objc_opt_self();
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(orderCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = orderCopy;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        mainStoreLinkedIdentifier = [v9 mainStoreLinkedIdentifier];

        if (mainStoreLinkedIdentifier)
        {
          v19 = @"CNContactMainStoreLinkedIdentifier";
          mainStoreLinkedIdentifier2 = [v9 mainStoreLinkedIdentifier];
          v20 = mainStoreLinkedIdentifier2;
          mainStoreLinkedIdentifier = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        }

        contact = [v9 contact];
        v13 = CNContactFromSGContact(contact, mainStoreLinkedIdentifier);

        if (v13)
        {
          [v3 addObject:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)suggestedContactsWithSortOrder:(void *)order keysToFetch:(unsigned int)fetch mutableObjects:(void *)objects service:(void *)service error:
{
  v78 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  objectsCopy = objects;
  v55 = objectsCopy;
  if (self)
  {
    if (!objectsCopy)
    {
      if (CNGuardOSLog_cn_once_token_0_0 != -1)
      {
        [CNPredicate suggestedContactsWithSortOrder:keysToFetch:mutableObjects:service:error:];
      }

      v9 = CNGuardOSLog_cn_once_object_0_0;
      if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_0, OS_LOG_TYPE_FAULT))
      {
        [CNPredicate suggestedContactsWithSortOrder:v9 keysToFetch:? mutableObjects:? service:? error:?];
      }
    }

    v10 = &unk_1F098FE90;
    selfCopy = self;
    if ([selfCopy conformsToProtocol:v10])
    {
      v11 = selfCopy;
    }

    else
    {
      v11 = 0;
    }

    v53 = v11;

    array = [MEMORY[0x1E695DF70] array];
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__0;
    v74 = __Block_byref_object_dispose__0;
    v75 = 0;
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    watchdog = [currentEnvironment watchdog];
    v15 = [watchdog statusForEvent:*MEMORY[0x1E6996600]] == 0;

    if (!v15)
    {
      v16 = objc_opt_class();
      v17 = +[(CNPredicate *)v16];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CNPredicate suggestedContactsWithSortOrder:v17 keysToFetch:? mutableObjects:? service:? error:?];
      }

      v18 = MEMORY[0x1E695E0F0];
LABEL_61:

      _Block_object_dispose(&v70, 8);
      goto LABEL_62;
    }

    v50 = objc_alloc_init(MEMORY[0x1E6996838]);
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __98__CNPredicate_Suggested__suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error___block_invoke;
    v69[3] = &unk_1E7412358;
    v69[5] = &v70;
    v69[4] = selfCopy;
    v19 = [v69 copy];
    v20 = objc_opt_self();
    v21 = _Block_copy(v20);
    [v50 push:v21];

    if ([selfCopy augmentMainStoreResults])
    {
      v22 = objc_opt_new();
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __98__CNPredicate_Suggested__suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error___block_invoke_91;
      v67[3] = &unk_1E7412380;
      v23 = v22;
      v68 = v23;
      [orderCopy enumerateObjectsUsingBlock:v67];
      if (suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error__cn_once_token_6 != -1)
      {
        [CNPredicate suggestedContactsWithSortOrder:keysToFetch:mutableObjects:service:error:];
      }

      v44 = v23;
      v45 = suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error__cn_once_object_6;
      if ([v45 intersectsKeyVector:v23])
      {
        [selfCopy mainStoreContactIdentifiers];
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        obj = v64 = 0u;
        v24 = [obj countByEnumeratingWithState:&v63 objects:v77 count:16];
        if (v24)
        {
          v51 = *v64;
          while (2)
          {
            for (i = 0; i != v24; i = (i + 1))
            {
              if (*v64 != v51)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v63 + 1) + 8 * i);
              v62 = 0;
              v27 = [v55 contactMatchesWithContactIdentifier:v26 limitTo:1 error:&v62];
              v28 = v62;
              v29 = v62;
              if (v29)
              {
                v35 = v29;
                objc_storeStrong(v71 + 5, v28);
                v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CONTACTS: failed to augment contact with identifier %@ with suggestions, error: %@", v26, v71[5], v44, v45];

                goto LABEL_37;
              }

              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              v30 = v27;
              v31 = [v30 countByEnumeratingWithState:&v58 objects:v76 count:16];
              if (v31)
              {
                v32 = *v59;
                do
                {
                  for (j = 0; j != v31; ++j)
                  {
                    if (*v59 != v32)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v34 = [CNContactSuggestionMatch suggestionFromContactMatch:*(*(&v58 + 1) + 8 * j)];
                    [v34 setMainStoreLinkedIdentifier:v26];
                    [array addObject:v34];
                  }

                  v31 = [v30 countByEnumeratingWithState:&v58 objects:v76 count:16];
                }

                while (v31);
              }
            }

            v24 = [obj countByEnumeratingWithState:&v63 objects:v77 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

LABEL_37:
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    if (v71[5])
    {
      goto LABEL_40;
    }

    if (objc_opt_respondsToSelector())
    {
      v36 = v71 + 5;
      v57 = v71[5];
      v37 = [v53 suggestionsWithSortOrder:a2 mutableObjects:fetch service:v55 error:&v57];
      objc_storeStrong(v36, v57);
      if ([v37 count])
      {
        [array addObjectsFromArray:v37];
LABEL_52:
        v17 = v24;
        goto LABEL_53;
      }

      if (!v71[5])
      {
        goto LABEL_52;
      }

      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CONTACTS: failed to find suggested contacts, error: %@", v71[5]];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_40:
        v17 = v24;
LABEL_54:
        if (v71[5])
        {
          v40 = objc_opt_class();
          v41 = +[(CNPredicate *)v40];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [CNPredicate suggestedContactsWithSortOrder:v17 keysToFetch:v41 mutableObjects:? service:? error:?];
          }

          v18 = 0;
          if (service)
          {
            *service = v71[5];
          }
        }

        else
        {
          v18 = [CNPredicate _convertSuggestions:array withSortOrder:? mutableObjects:?];
        }

        [v50 popAllWithHandler:&__block_literal_global_110];
        v42 = objc_opt_self();

        goto LABEL_61;
      }

      v38 = v71 + 5;
      v56 = v71[5];
      v37 = [v53 sgContactMatchesWithSortOrder:a2 mutableObjects:fetch service:v55 error:&v56];
      objc_storeStrong(v38, v56);
      if ([v37 count])
      {
        [(CNPredicate *)selfCopy _convertContactMatches:v37 withService:v55 intoSuggestions:array];
        goto LABEL_52;
      }

      if (!v71[5])
      {
        goto LABEL_52;
      }

      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CONTACTS: failed to fetch suggested contact matches, error: %@", v71[5]];
    }

    v17 = v39;

LABEL_53:
    goto LABEL_54;
  }

  v18 = 0;
LABEL_62:

  return v18;
}

void __98__CNPredicate_Suggested__suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error___block_invoke(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) code] == 10)
  {
    v2 = [*(*(*(a1 + 40) + 8) + 40) domain];
    v3 = [v2 isEqual:*MEMORY[0x1E69992F8]];

    if (v3)
    {
      v4 = objc_opt_class();
      v5 = +[(CNPredicate *)v4];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __98__CNPredicate_Suggested__suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error___block_invoke_cold_1(v5);
      }

      v6 = [MEMORY[0x1E69966E8] currentEnvironment];
      v7 = [v6 watchdog];
      [v7 recordExceptionForEvent:*MEMORY[0x1E6996600]];
    }
  }
}

void __98__CNPredicate_Suggested__suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error___block_invoke_91(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = v7;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

LABEL_7:
    v5 = *(a1 + 32);
    v3 = [v4 _cn_requiredKeys];
    [v5 unionKeyVector:v3];
LABEL_8:

    goto LABEL_9;
  }

  v6 = [v4 conformsToProtocol:&unk_1F0998880];

  if (v6)
  {
    goto LABEL_7;
  }

LABEL_9:
}

void __98__CNPredicate_Suggested__suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error___block_invoke_2()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"emailAddresses";
  v4[1] = @"phoneNumbers";
  v4[2] = @"postalAddresses";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v1 = [CNContactKeyVector keyVectorWithKeys:v0];
  v2 = [v1 copy];
  v3 = suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error__cn_once_object_6;
  suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error__cn_once_object_6 = v2;
}

uint64_t __21__CNPredicate_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "predicates");
  v1 = os_log_cn_once_object_0_1;
  os_log_cn_once_object_0_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNPredicate)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v10.receiver = self;
  v10.super_class = CNPredicate;
  v5 = [(CNPredicate *)&v10 init];
  if (v5)
  {
    v6 = [predicateCopy copy];
    cn_predicate = v5->_cn_predicate;
    v5->_cn_predicate = v6;

    v5->_augmentMainStoreResults = 1;
    v8 = v5;
  }

  return v5;
}

- (CNPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CNPredicate;
  v5 = [(CNPredicate *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_cn_predicate"];
    v7 = [v6 copy];
    cn_predicate = v5->_cn_predicate;
    v5->_cn_predicate = v7;

    v5->_augmentMainStoreResults = [coderCopy decodeBoolForKey:@"_augmentMainStoreResults"];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_mainStoreContactIdentifiers"];
    v13 = [v12 copy];
    mainStoreContactIdentifiers = v5->_mainStoreContactIdentifiers;
    v5->_mainStoreContactIdentifiers = v13;

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_cn_predicate forKey:{@"_cn_predicate", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_augmentMainStoreResults forKey:@"_augmentMainStoreResults"];
  [coderCopy encodeObject:self->_mainStoreContactIdentifiers forKey:@"_mainStoreContactIdentifiers"];
}

- (void)mainStoreDidFetchContacts:(id)contacts unifiedFetch:(BOOL)fetch
{
  contactsCopy = contacts;
  if ([contactsCopy count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__CNPredicate_mainStoreDidFetchContacts_unifiedFetch___block_invoke;
    v8[3] = &unk_1E7412B30;
    v8[4] = self;
    fetchCopy = fetch;
    v7 = [contactsCopy _cn_flatMap:v8];
    [(CNPredicate *)self setMainStoreContactIdentifiers:v7];
  }
}

id __54__CNPredicate_mainStoreDidFetchContacts_unifiedFetch___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((*(*MEMORY[0x1E6996558] + 16))())
  {
    v4 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__CNPredicate_mainStoreDidFetchContacts_unifiedFetch___block_invoke_cold_1(v4);
    }

    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    if (*(a1 + 40) == 1 && [v3 isUnified])
    {
      v6 = [v3 linkedContacts];
      v7 = [v6 valueForKey:@"identifier"];
    }

    else
    {
      v6 = [v3 identifier];
      v9[0] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    }

    v5 = v7;
  }

  return v5;
}

- (NSString)description
{
  v2 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  build = [v2 build];

  return build;
}

- (void)_convertContactMatches:(void *)matches withService:(void *)service intoSuggestions:
{
  if (self)
  {
    serviceCopy = service;
    matchesCopy = matches;
    v8 = [a2 _cn_map:&__block_literal_global_39];
    [CNContactSuggestionMatch fetchLinkedIdentifiersForContactSuggestionMatches:v8 fromSuggestionService:matchesCopy];

    [serviceCopy addObjectsFromArray:v8];
  }
}

- (void)suggestedContactsWithSortOrder:(uint64_t)a1 keysToFetch:(NSObject *)a2 mutableObjects:service:error:.cold.5(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
}

@end