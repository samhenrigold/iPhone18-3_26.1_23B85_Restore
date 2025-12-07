@interface QPAccountsManager
+ (id)sharedAccountsManager;
- (id)getMeCard;
- (id)nameToEmailAddresses;
- (void)update:(id)update;
@end

@implementation QPAccountsManager

+ (id)sharedAccountsManager
{
  if (sharedAccountsManager_onceToken != -1)
  {
    +[QPAccountsManager sharedAccountsManager];
  }

  v3 = sharedAccountsManager__instance;

  return v3;
}

uint64_t __42__QPAccountsManager_sharedAccountsManager__block_invoke()
{
  v14[14] = *MEMORY[0x1E69E9840];
  if (initEntitlements_onceToken != -1)
  {
    __42__QPAccountsManager_sharedAccountsManager__block_invoke_cold_1();
  }

  v0 = objc_alloc_init(QPAccountsManager);
  v1 = sharedAccountsManager__instance;
  sharedAccountsManager__instance = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695CE28]);
  [sharedAccountsManager__instance setContactsConfiguration:v2];

  v3 = *MEMORY[0x1E6959898];
  v14[0] = *MEMORY[0x1E6959890];
  v14[1] = v3;
  v4 = *MEMORY[0x1E69598D8];
  v14[2] = *MEMORY[0x1E6959840];
  v14[3] = v4;
  v5 = *MEMORY[0x1E69598D0];
  v14[4] = *MEMORY[0x1E69598F0];
  v14[5] = v5;
  v6 = *MEMORY[0x1E69597F8];
  v14[6] = *MEMORY[0x1E69597F0];
  v14[7] = v6;
  v7 = *MEMORY[0x1E6959868];
  v14[8] = *MEMORY[0x1E6959918];
  v14[9] = v7;
  v8 = *MEMORY[0x1E69597E0];
  v14[10] = *MEMORY[0x1E6959878];
  v14[11] = v8;
  v9 = *MEMORY[0x1E69598E0];
  v14[12] = *MEMORY[0x1E69597E8];
  v14[13] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:14];
  [sharedAccountsManager__instance setAccountTypes:v10];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:sharedAccountsManager__instance selector:sel_update_ name:*MEMORY[0x1E695C3D8] object:0];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 addObserver:sharedAccountsManager__instance selector:sel_update_ name:*MEMORY[0x1E6959968] object:0];

  return [sharedAccountsManager__instance update:0];
}

- (id)nameToEmailAddresses
{
  v135 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  v114 = dictionary;
  if (sPrivateAccountsEntitlement == 1)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    selfCopy = self;
    accountTypes = self->_accountTypes;
    v128 = 0;
    v6 = [defaultStore accountsWithAccountTypeIdentifiers:accountTypes error:&v128];
    v7 = v128;

    v95 = v7;
    if (!v7)
    {
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      obj = v6;
      v8 = [obj countByEnumeratingWithState:&v124 objects:v134 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v125;
        v97 = *MEMORY[0x1E6959918];
        v96 = *MEMORY[0x1E6959878];
        v94 = *MEMORY[0x1E6959868];
        v93 = *MEMORY[0x1E6959890];
        v90 = *MEMORY[0x1E69597F8];
        v91 = *MEMORY[0x1E6959898];
        v98 = *v125;
        v99 = v6;
        do
        {
          v11 = 0;
          v100 = v9;
          do
          {
            if (*v125 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v124 + 1) + 8 * v11);
            if ([v12 isActive])
            {
              accountProperties = [v12 accountProperties];
              array = [MEMORY[0x1E695DF70] array];
              v15 = [accountProperties objectForKey:@"EmailAddresses"];
              if ([v15 count])
              {
                [array addObjectsFromArray:v15];
              }

              v107 = v15;
              if (![array count])
              {
                v16 = accountProperties;
                v17 = [accountProperties objectForKey:@"IdentityEmailAddress"];
                if ([v17 length])
                {
                  lowercaseString = [v17 lowercaseString];
                  [array addObject:lowercaseString];
                }

                accountType = [v12 accountType];
                v20 = accountType;
                if (accountType)
                {
                  v104 = v11;
                  identifier = [accountType identifier];
                  if ([identifier length] && ((objc_msgSend(identifier, "isEqualToString:", v97) & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", v96) & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", v94) & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", v93) & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", v91) & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", v90)))
                  {
                    username = [v12 username];
                    if ([username length])
                    {
                      [username lowercaseString];
                      v24 = v23 = v6;
                      [array addObject:v24];

                      v6 = v23;
                    }
                  }

                  v9 = v100;
                  v11 = v104;
                }

                accountProperties = v16;
                v15 = v107;
              }

              if ([array count])
              {
                v25 = [accountProperties objectForKey:@"FullUserName"];
                v103 = accountProperties;
                if (![v25 length])
                {
                  v26 = [accountProperties objectForKey:@"ACPropertyFullName"];

                  v25 = v26;
                }

                v105 = v11;
                v27 = [v25 length];
                if (!v27)
                {
                  firstObject = [array firstObject];

                  v25 = firstObject;
                }

                v122 = 0u;
                v123 = 0u;
                v120 = 0u;
                v121 = 0u;
                v102 = array;
                v110 = array;
                v29 = [v110 countByEnumeratingWithState:&v120 objects:v133 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v121;
                  do
                  {
                    for (i = 0; i != v30; ++i)
                    {
                      if (*v121 != v31)
                      {
                        objc_enumerationMutation(v110);
                      }

                      v33 = *(*(&v120 + 1) + 8 * i);
                      if ([v33 length])
                      {
                        v34 = [dictionary3 objectForKey:v33];
                        v35 = [dictionary2 objectForKey:v33];
                        v36 = v35;
                        if (v35 && [v35 length])
                        {
                          if (v34)
                          {
                            dictionary = v114;
                            if ([v34 BOOLValue] & 1 | (v27 == 0))
                            {
                              goto LABEL_49;
                            }
                          }

                          else
                          {
                            dictionary = v114;
                            if (!v27)
                            {
LABEL_49:

                              continue;
                            }
                          }

                          v37 = [dictionary objectForKeyedSubscript:v36];
                          [v37 removeObject:v33];

                          v38 = [dictionary objectForKeyedSubscript:v36];
                          v39 = [v38 count];

                          if (!v39)
                          {
                            [v114 removeObjectForKey:v36];
                          }
                        }

                        v40 = [v114 objectForKey:v25];

                        if (!v40)
                        {
                          v41 = [MEMORY[0x1E695DFA8] set];
                          [v114 setObject:v41 forKey:v25];
                        }

                        v42 = [v114 objectForKeyedSubscript:v25];
                        [v42 addObject:v33];

                        dictionary = v114;
                        [dictionary2 setObject:v25 forKey:v33];
                        v43 = [MEMORY[0x1E696AD98] numberWithBool:v27 != 0];
                        [dictionary3 setObject:v43 forKey:v33];

                        goto LABEL_49;
                      }
                    }

                    v30 = [v110 countByEnumeratingWithState:&v120 objects:v133 count:16];
                  }

                  while (v30);
                }

                v10 = v98;
                v6 = v99;
                v9 = v100;
                accountProperties = v103;
                v11 = v105;
                array = v102;
                v15 = v107;
              }
            }

            ++v11;
          }

          while (v11 != v9);
          v9 = [obj countByEnumeratingWithState:&v124 objects:v134 count:16];
        }

        while (v9);
      }

      if (accountsLogger_token != -1)
      {
        [QPAccountsManager nameToEmailAddresses];
      }

      v44 = accountsLogger_log;
      if (os_log_type_enabled(accountsLogger_log, OS_LOG_TYPE_INFO))
      {
        v45 = v44;
        v46 = [dictionary count];
        *buf = 134217984;
        v132 = v46;
        _os_log_impl(&dword_1C6584000, v45, OS_LOG_TYPE_INFO, "QueryParserAccountsManager: found %lu distinct Accounts names", buf, 0xCu);
      }
    }

    self = selfCopy;
  }

  else
  {
    if (accountsLogger_token != -1)
    {
      [QPAccountsManager nameToEmailAddresses];
    }

    v47 = accountsLogger_log;
    if (os_log_type_enabled(accountsLogger_log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6584000, v47, OS_LOG_TYPE_INFO, "QueryParserAccountsManager: not entitled to access Accounts", buf, 2u);
    }

    v95 = 0;
  }

  if (sPrivateContactsEntitlement == 1)
  {
    v48 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:self->_contactsConfiguration];
    v49 = *MEMORY[0x1E695C2F0];
    v130[0] = *MEMORY[0x1E695C240];
    v130[1] = v49;
    v50 = *MEMORY[0x1E695C208];
    v130[2] = *MEMORY[0x1E695C230];
    v130[3] = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:4];
    v119 = v95;
    v52 = [v48 _crossPlatformUnifiedMeContactWithKeysToFetch:v51 error:&v119];
    v53 = v119;

    if (v53)
    {

      v95 = v53;
      goto LABEL_108;
    }

    array2 = [MEMORY[0x1E695DF70] array];
    givenName = [v52 givenName];
    v57 = [givenName length];

    if (v57)
    {
      givenName2 = [v52 givenName];
      [array2 addObject:givenName2];
    }

    middleName = [v52 middleName];
    v60 = [middleName length];

    if (v60)
    {
      middleName2 = [v52 middleName];
      [array2 addObject:middleName2];
    }

    familyName = [v52 familyName];
    v63 = [familyName length];

    if (v63)
    {
      familyName2 = [v52 familyName];
      [array2 addObject:familyName2];
    }

    v109 = v48;
    v106 = array2;
    if ([array2 count])
    {
      v65 = [array2 componentsJoinedByString:@" "];
    }

    else
    {
      v65 = 0;
    }

    dictionary = v114;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v108 = v52;
    emailAddresses = [v52 emailAddresses];
    v67 = [emailAddresses countByEnumeratingWithState:&v115 objects:v129 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v116;
      do
      {
        v70 = 0;
        v111 = v68;
        do
        {
          if (*v116 != v69)
          {
            objc_enumerationMutation(emailAddresses);
          }

          value = [*(*(&v115 + 1) + 8 * v70) value];
          if ([value length])
          {
            v72 = [dictionary2 objectForKey:value];
            v73 = v65;
            if ([v73 length])
            {
              if (v72 && [v72 length])
              {
                v74 = v65;
                v75 = v69;
                v76 = emailAddresses;
                v77 = [dictionary objectForKeyedSubscript:v72];
                [v77 removeObject:value];

                v78 = [dictionary objectForKeyedSubscript:v72];
                v79 = dictionary;
                v80 = [v78 count];

                if (!v80)
                {
                  [v79 removeObjectForKey:v72];
                }

                dictionary = v79;
                emailAddresses = v76;
                v69 = v75;
                v65 = v74;
                v68 = v111;
              }

LABEL_97:
              v82 = [dictionary objectForKey:v73];

              if (!v82)
              {
                v83 = [MEMORY[0x1E695DFA8] set];
                [dictionary setObject:v83 forKey:v73];
              }

              v84 = [dictionary objectForKeyedSubscript:v73];
              [v84 addObject:value];

              dictionary = v114;
              [dictionary2 setObject:v73 forKey:value];
              v85 = [MEMORY[0x1E696AD98] numberWithBool:v65 != 0];
              [dictionary3 setObject:v85 forKey:value];
            }

            else if (!v72 || ![v72 length])
            {
              v81 = value;

              v73 = v81;
              goto LABEL_97;
            }
          }

          ++v70;
        }

        while (v68 != v70);
        v68 = [emailAddresses countByEnumeratingWithState:&v115 objects:v129 count:16];
      }

      while (v68);
    }

    v95 = 0;
  }

  else
  {
    if (accountsLogger_token != -1)
    {
      [QPAccountsManager nameToEmailAddresses];
    }

    v54 = accountsLogger_log;
    if (os_log_type_enabled(accountsLogger_log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6584000, v54, OS_LOG_TYPE_INFO, "QueryParserAccountsManager: not entitled to access Contacts", buf, 2u);
    }
  }

  if (accountsLogger_token != -1)
  {
    [QPAccountsManager nameToEmailAddresses];
  }

  v86 = accountsLogger_log;
  if (os_log_type_enabled(accountsLogger_log, OS_LOG_TYPE_INFO))
  {
    v87 = v86;
    v88 = [dictionary count];
    *buf = 134217984;
    v132 = v88;
    _os_log_impl(&dword_1C6584000, v87, OS_LOG_TYPE_INFO, "QueryParserAccountsManager: found %lu distinct names in total", buf, 0xCu);
  }

LABEL_108:

  return dictionary;
}

- (void)update:(id)update
{
  v40 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (accountsLogger_token != -1)
  {
    [QPAccountsManager nameToEmailAddresses];
  }

  v5 = accountsLogger_log;
  if (os_log_type_enabled(accountsLogger_log, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    name = [updateCopy name];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = name;
    _os_log_impl(&dword_1C6584000, v6, OS_LOG_TYPE_INFO, "QueryParserAccountsManager: start update AccountsManager based on %@ notification", &buf, 0xCu);
  }

  getMeCard = [(QPAccountsManager *)self getMeCard];
  meCard = self->_meCard;
  self->_meCard = getMeCard;

  nameToEmailAddresses = [(QPAccountsManager *)self nameToEmailAddresses];
  contentsArray = self->_contentsArray;
  p_contentsArray = &self->_contentsArray;
  *p_contentsArray = 0;

  if ([nameToEmailAddresses count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy_;
    v38 = __Block_byref_object_dispose_;
    v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(nameToEmailAddresses, "count") + 1}];
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(nameToEmailAddresses, "count")}];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(nameToEmailAddresses, "count")}];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __28__QPAccountsManager_update___block_invoke;
    v19[3] = &unk_1E8266598;
    v19[4] = &v26;
    v19[5] = &v20;
    v19[6] = &buf;
    [nameToEmailAddresses enumerateKeysAndObjectsUsingBlock:v19];
    v13 = *(*(&buf + 1) + 40);
    v14 = [v27[5] componentsJoinedByString:{@", "}];
    v34[0] = v14;
    v15 = [v21[5] componentsJoinedByString:{@", "}];
    v34[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    [v13 addObject:v16];

    objc_storeStrong(p_contentsArray, *(*(&buf + 1) + 40));
    if (accountsLogger_token != -1)
    {
      [QPAccountsManager nameToEmailAddresses];
    }

    v17 = accountsLogger_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      name2 = [updateCopy name];
      *v32 = 138412290;
      v33 = name2;
      _os_log_impl(&dword_1C6584000, v17, OS_LOG_TYPE_INFO, "QueryParserAccountsManager: end update AccountsManager based on %@ notification", v32, 0xCu);
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);

    _Block_object_dispose(&buf, 8);
  }
}

void __28__QPAccountsManager_update___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = a2;
  v14 = [v5 arrayWithCapacity:5];
  [v14 addObject:v7];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v7];
  [*(*(a1[4] + 8) + 40) addObject:v8];
  [v14 addObject:v8];
  v9 = createStringFromSet(v6, @"%@", @"%@", @",");
  [*(*(a1[5] + 8) + 40) addObject:v9];
  [v14 addObject:v9];
  v10 = createStringFromSet(v6, @"(%@)", @"** == %@cdw", @" || ");
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(** == %@cdw)", v7];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ || %@)", v10, v11];
  [v14 addObject:v12];
  v13 = [v6 allObjects];

  [v14 addObject:v13];
  [*(*(a1[6] + 8) + 40) addObject:v14];
}

- (id)getMeCard
{
  v81[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:self->_contactsConfiguration];
  v5 = *MEMORY[0x1E695C2F0];
  v81[0] = *MEMORY[0x1E695C240];
  v81[1] = v5;
  v6 = *MEMORY[0x1E695C208];
  v81[2] = *MEMORY[0x1E695C230];
  v81[3] = v6;
  v7 = *MEMORY[0x1E695C3A8];
  v81[4] = *MEMORY[0x1E695C330];
  v81[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:6];
  v74 = 0;
  v9 = [v4 _crossPlatformUnifiedMeContactWithKeysToFetch:v8 error:&v74];
  v10 = v74;

  if (v10)
  {
    if (accountsLogger_token != -1)
    {
      [QPAccountsManager nameToEmailAddresses];
    }

    v11 = accountsLogger_log;
    if (os_log_type_enabled(accountsLogger_log, OS_LOG_TYPE_ERROR))
    {
      [(QPAccountsManager *)v11 getMeCard];
    }
  }

  else
  {
    v59 = v4;
    array = [MEMORY[0x1E695DF70] array];
    givenName = [v9 givenName];
    v14 = [givenName length];

    if (v14)
    {
      givenName2 = [v9 givenName];
      [array addObject:givenName2];
    }

    middleName = [v9 middleName];
    v17 = [middleName length];

    if (v17)
    {
      middleName2 = [v9 middleName];
      [array addObject:middleName2];
    }

    familyName = [v9 familyName];
    v20 = [familyName length];

    if (v20)
    {
      familyName2 = [v9 familyName];
      [array addObject:familyName2];
    }

    v60 = v3;
    v57 = array;
    if ([array count])
    {
      v56 = [array componentsJoinedByString:@" "];
    }

    else
    {
      v56 = 0;
    }

    array2 = [MEMORY[0x1E695DF70] array];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    emailAddresses = [v9 emailAddresses];
    v24 = [emailAddresses countByEnumeratingWithState:&v70 objects:v80 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v71;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v71 != v26)
          {
            objc_enumerationMutation(emailAddresses);
          }

          value = [*(*(&v70 + 1) + 8 * i) value];
          [array2 addObject:value];
        }

        v25 = [emailAddresses countByEnumeratingWithState:&v70 objects:v80 count:16];
      }

      while (v25);
    }

    array3 = [MEMORY[0x1E695DF70] array];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    phoneNumbers = [v9 phoneNumbers];
    v31 = [phoneNumbers countByEnumeratingWithState:&v66 objects:v79 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v67;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v67 != v33)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          value2 = [*(*(&v66 + 1) + 8 * j) value];
          v36 = value2;
          if (value2)
          {
            stringValue = [value2 stringValue];
            [array3 addObject:stringValue];
          }
        }

        v32 = [phoneNumbers countByEnumeratingWithState:&v66 objects:v79 count:16];
      }

      while (v32);
    }

    v55 = array3;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v58 = v9;
    contactRelations = [v9 contactRelations];
    v39 = [contactRelations countByEnumeratingWithState:&v62 objects:v78 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v63;
      do
      {
        v42 = 0;
        do
        {
          if (*v63 != v41)
          {
            objc_enumerationMutation(contactRelations);
          }

          v43 = *(*(&v62 + 1) + 8 * v42);
          if (v43)
          {
            label = [*(*(&v62 + 1) + 8 * v42) label];
            value3 = [v43 value];
            v46 = value3;
            if (value3)
            {
              name = [value3 name];
              if (name)
              {
                v48 = label;
                if ([v48 length])
                {
                  if (normalizeRelationLabelString_onceToken != -1)
                  {
                    [QPAccountsManager getMeCard];
                  }

                  v49 = [normalizeRelationLabelString_sRelationLabelsRegex stringByReplacingMatchesInString:v48 options:0 range:0 withTemplate:{objc_msgSend(v48, "length"), &stru_1F45E9EA0}];
                }

                else
                {
                  v49 = v48;
                }

                v50 = v49;

                if (v50)
                {
                  v51 = v50;
                }

                else
                {
                  v51 = &stru_1F45E9EA0;
                }

                [dictionary setObject:v51 forKeyedSubscript:name];
              }
            }
          }

          ++v42;
        }

        while (v40 != v42);
        v40 = [contactRelations countByEnumeratingWithState:&v62 objects:v78 count:16];
      }

      while (v40);
    }

    if (v56)
    {
      v76 = v56;
      v77 = @"me";
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v75 = v56;
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
      v3 = v60;
      [v60 setObject:v53 forKeyedSubscript:@"personNames"];
    }

    else
    {
      v3 = v60;
      [v60 setObject:MEMORY[0x1E695E0F0] forKeyedSubscript:@"personNames"];
      v52 = MEMORY[0x1E695E0F8];
    }

    v10 = 0;
    v4 = v59;
    v9 = v58;
    [v3 setObject:v57 forKeyedSubscript:@"personSubNames"];
    [v3 setObject:array2 forKeyedSubscript:@"personEmails"];
    [v3 setObject:v55 forKeyedSubscript:@"personPhoneNumbers"];
    [v3 setObject:dictionary forKeyedSubscript:@"meCardRelationMap"];
    [v3 setObject:v52 forKeyedSubscript:@"personRelationMap"];
  }

  return v3;
}

@end