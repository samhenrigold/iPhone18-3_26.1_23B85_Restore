@interface BRAccountDescriptor
+ (BOOL)mightHaveDataSeparatedAccountDescriptor;
+ (id)accountDescriptorForAccountID:(id)d mustBeLoggedIn:(BOOL)in;
+ (id)accountDescriptorForPersonaID:(id)d mustBeLoggedIn:(BOOL)in;
+ (id)accountDescriptorForURL:(id)l mustBeLoggedIn:(BOOL)in;
+ (id)allEligibleAccountDescriptors;
+ (id)allLoggedInAccountDescriptors;
+ (id)matchDomainWithAccountAndStampDomainIfNeeded:(id)needed withAccounts:(id)accounts persistDomain:(BOOL *)domain;
+ (void)clearAccountDescriptorCache;
+ (void)refreshCache:(BOOL)cache;
- (BRAccountDescriptor)initWithCoder:(id)coder;
- (BRAccountDescriptor)initWithPersonaIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier domainIdentifier:(id)domainIdentifier organizationName:(id)name dataSeparated:(BOOL)separated loggedInToCloudDocs:(BOOL)docs;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BRAccountDescriptor

+ (id)allEligibleAccountDescriptors
{
  +[BRAccount startAccountTokenChangeObserverIfNeeded];
  if (g_cacheValid & 1) != 0 || ([self refreshCache:0], (g_cacheValid))
  {
    v3 = g_allAccounts;
    objc_sync_enter(v3);
    v4 = [g_allAccounts copy];
    objc_sync_exit(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BRAccountDescriptor)initWithPersonaIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier domainIdentifier:(id)domainIdentifier organizationName:(id)name dataSeparated:(BOOL)separated loggedInToCloudDocs:(BOOL)docs
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  domainIdentifierCopy = domainIdentifier;
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = BRAccountDescriptor;
  v18 = [(BRAccountDescriptor *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_personaIdentifier, identifier);
    objc_storeStrong(&v19->_accountIdentifier, accountIdentifier);
    objc_storeStrong(&v19->_domainIdentifier, domainIdentifier);
    objc_storeStrong(&v19->_organizationName, name);
    v19->_isDataSeparated = separated;
    v19->_isLoggedInToCloudDocs = docs;
  }

  return v19;
}

- (BRAccountDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = BRAccountDescriptor;
  v5 = [(BRAccountDescriptor *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personaID"];
    personaIdentifier = v5->_personaIdentifier;
    v5->_personaIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domainID"];
    domainIdentifier = v5->_domainIdentifier;
    v5->_domainIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orgName"];
    organizationName = v5->_organizationName;
    v5->_organizationName = v12;

    v5->_isDataSeparated = [coderCopy decodeBoolForKey:@"dataSeparated"];
    v5->_isLoggedInToCloudDocs = [coderCopy decodeBoolForKey:@"loggedInToCloudDocs"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  personaIdentifier = self->_personaIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:personaIdentifier forKey:@"personaID"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountID"];
  [coderCopy encodeObject:self->_domainIdentifier forKey:@"domainID"];
  [coderCopy encodeObject:self->_organizationName forKey:@"orgName"];
  [coderCopy encodeBool:self->_isDataSeparated forKey:@"dataSeparated"];
  [coderCopy encodeBool:self->_isLoggedInToCloudDocs forKey:@"loggedInToCloudDocs"];
}

+ (void)clearAccountDescriptorCache
{
  if (g_allAccounts)
  {
    obj = g_allAccounts;
    objc_sync_enter(obj);
    g_cacheValid = 0;
    g_hasDSAccount = 0;
    [g_allAccounts removeAllObjects];
    objc_sync_exit(obj);
  }
}

+ (id)allLoggedInAccountDescriptors
{
  allEligibleAccountDescriptors = [self allEligibleAccountDescriptors];
  v3 = [allEligibleAccountDescriptors mutableCopy];

  v4 = [v3 indexesOfObjectsPassingTest:&__block_literal_global_128];
  [v3 removeObjectsAtIndexes:v4];

  return v3;
}

+ (void)refreshCache:(BOOL)cache
{
  cacheCopy = cache;
  if (refreshCache__onceToken == -1)
  {
    if (cache)
    {
LABEL_3:
      v4 = refreshCache__refreshQueue;

      dispatch_async(v4, &__block_literal_global_134);
      return;
    }
  }

  else
  {
    +[BRAccountDescriptor refreshCache:];
    if (cacheCopy)
    {
      goto LABEL_3;
    }
  }

  __36__BRAccountDescriptor_refreshCache___block_invoke_2();
}

void __36__BRAccountDescriptor_refreshCache___block_invoke()
{
  v0 = objc_opt_new();
  v1 = g_allAccounts;
  g_allAccounts = v0;

  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(v5, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("account-refresh-queue", v2);

  v4 = refreshCache__refreshQueue;
  refreshCache__refreshQueue = v3;
}

void __36__BRAccountDescriptor_refreshCache___block_invoke_2()
{
  v82 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v54 = [v0 bundleIdentifier];

  v1 = [v54 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
  v62 = [v54 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
  v2 = 1;
  v57 = v1;
  if (([v54 isEqualToString:@"com.apple.bird"] & 1) == 0 && (v1 & 1) == 0 && (v62 & 1) == 0)
  {
    v2 = [BRPosixOperationsWrapper checkMachLookupForService:@"com.apple.bird"]!= 0;
  }

  v3 = g_allAccounts;
  objc_sync_enter(v3);
  if ((g_cacheValid & 1) == 0)
  {
    v51 = v3;
    if (v2)
    {
      if ([BRPosixOperationsWrapper checkMachLookupForService:@"com.apple.accountsd.accountmanager"])
      {
        v53 = brc_bread_crumbs("+[BRAccountDescriptor refreshCache:]_block_invoke", 507);
        v4 = brc_default_log(1, 0);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          __36__BRAccountDescriptor_refreshCache___block_invoke_2_cold_3();
        }
      }

      else
      {
        v53 = [MEMORY[0x1E6959A48] defaultStore];
        v4 = [v53 br_allEligibleAppleAccounts];
        if ([v4 count])
        {
          v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
          if ((v62 & 1) == 0)
          {
            v12 = [MEMORY[0x1E6967508] br_getEnterpriseProviderManager];
            if (v12)
            {
              [v11 addObject:v12];
            }

            else
            {
              v17 = brc_bread_crumbs("+[BRAccountDescriptor refreshCache:]_block_invoke", 521);
              v18 = brc_default_log(0, 0);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
              {
                __36__BRAccountDescriptor_refreshCache___block_invoke_2_cold_4();
              }
            }
          }

          if ((v57 & 1) == 0)
          {
            v19 = [MEMORY[0x1E6967508] br_getPrimaryProviderManager];
            if (v19)
            {
              [v11 addObject:v19];
            }

            else
            {
              v20 = brc_bread_crumbs("+[BRAccountDescriptor refreshCache:]_block_invoke", 529);
              v21 = brc_default_log(0, 0);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
              {
                __36__BRAccountDescriptor_refreshCache___block_invoke_2_cold_5();
              }
            }
          }

          v16 = objc_opt_new();
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v22 = v11;
          v58 = v22;
          obj = [v22 countByEnumeratingWithState:&v72 objects:v80 count:16];
          if (obj)
          {
            v52 = *v73;
            while (2)
            {
              for (i = 0; i != obj; i = i + 1)
              {
                if (*v73 != v52)
                {
                  objc_enumerationMutation(v22);
                }

                v23 = *(*(&v72 + 1) + 8 * i);
                v71 = 0;
                v24 = [v23 br_getFPDomainsWithError:&v71];
                v25 = v71;
                if (v25)
                {
                  v48 = v25;
                  v49 = brc_bread_crumbs("+[BRAccountDescriptor refreshCache:]_block_invoke", 539);
                  v50 = brc_default_log(0, 0);
                  if (os_log_type_enabled(v50, 0x90u))
                  {
                    __36__BRAccountDescriptor_refreshCache___block_invoke_2_cold_6();
                  }

                  v47 = v58;
                  v46 = v58;
                  goto LABEL_75;
                }

                v69 = 0u;
                v70 = 0u;
                v67 = 0u;
                v68 = 0u;
                v26 = v24;
                v27 = [v26 countByEnumeratingWithState:&v67 objects:v79 count:16];
                if (v27)
                {
                  v28 = *v68;
                  do
                  {
                    for (j = 0; j != v27; ++j)
                    {
                      if (*v68 != v28)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v30 = *(*(&v67 + 1) + 8 * j);
                      v31 = [BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:v30 withAccounts:v4 persistDomain:0];
                      if (v31)
                      {
                        v32 = [v30 identifier];
                        v33 = [v31 identifier];
                        [v16 setObject:v32 forKeyedSubscript:v33];
                      }
                    }

                    v27 = [v26 countByEnumeratingWithState:&v67 objects:v79 count:16];
                  }

                  while (v27);
                }

                v22 = v58;
              }

              obj = [v58 countByEnumeratingWithState:&v72 objects:v80 count:16];
              if (obj)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        obja = v4;
        v34 = [obja countByEnumeratingWithState:&v63 objects:v78 count:16];
        if (v34)
        {
          v59 = *v64;
          do
          {
            v61 = v34;
            for (k = 0; k != v61; ++k)
            {
              if (*v64 != v59)
              {
                objc_enumerationMutation(obja);
              }

              v36 = *(*(&v63 + 1) + 8 * k);
              if ((!v62 || ([*(*(&v63 + 1) + 8 * k) isDataSeparatedAccount] & 1) == 0) && (!v57 || objc_msgSend(v36, "isDataSeparatedAccount")))
              {
                v37 = [v36 identifier];
                v38 = [v16 objectForKeyedSubscript:v37];
                v39 = v38;
                if (v38)
                {
                  v40 = v38;
                }

                else
                {
                  v40 = v37;
                }

                v41 = v40;

                v42 = [BRAccountDescriptor alloc];
                v43 = [v36 br_personaIdentifier];
                v44 = [v36 accountDescription];
                v45 = -[BRAccountDescriptor initWithPersonaIdentifier:accountIdentifier:domainIdentifier:organizationName:dataSeparated:loggedInToCloudDocs:](v42, "initWithPersonaIdentifier:accountIdentifier:domainIdentifier:organizationName:dataSeparated:loggedInToCloudDocs:", v43, v37, v41, v44, [v36 isDataSeparatedAccount], objc_msgSend(v36, "br_isEnabledForCloudDocs"));

                [g_allAccounts addObject:v45];
                if ([v36 isDataSeparatedAccount])
                {
                  g_hasDSAccount = 1;
                }
              }
            }

            v34 = [obja countByEnumeratingWithState:&v63 objects:v78 count:16];
          }

          while (v34);
        }

        g_cacheValid = 1;
        v46 = brc_bread_crumbs("+[BRAccountDescriptor refreshCache:]_block_invoke", 580);
        v47 = brc_default_log(1, 0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          __36__BRAccountDescriptor_refreshCache___block_invoke_2_cold_2();
        }

LABEL_75:
      }
    }

    else
    {
      v5 = +[BRDaemonConnection secondaryConnection];
      v6 = [v5 newSyncProxy];

      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __36__BRAccountDescriptor_refreshCache___block_invoke_3;
      v76[3] = &unk_1E7A14918;
      v77 = v6;
      v53 = v77;
      [v77 queryEligibleAccountDescriptorsWithReply:v76];
      v7 = [v53 error];
      LODWORD(v6) = v7 == 0;

      if (v6)
      {
        v13 = g_allAccounts;
        v14 = [v53 result];
        [v13 addObjectsFromArray:v14];

        if ([g_allAccounts count] > 1)
        {
          g_hasDSAccount = 1;
        }

        else
        {
          v15 = [g_allAccounts firstObject];
          g_hasDSAccount = [v15 isDataSeparated];
        }

        g_cacheValid = 1;
        v8 = brc_bread_crumbs("+[BRAccountDescriptor refreshCache:]_block_invoke_2", 498);
        v9 = brc_default_log(1, 0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __36__BRAccountDescriptor_refreshCache___block_invoke_2_cold_2();
        }
      }

      else
      {
        v8 = brc_bread_crumbs("+[BRAccountDescriptor refreshCache:]_block_invoke", 501);
        v9 = brc_default_log(0, 0);
        if (os_log_type_enabled(v9, 0x90u))
        {
          v10 = [v53 error];
          __36__BRAccountDescriptor_refreshCache___block_invoke_2_cold_1(v10, v8, v81);
        }
      }

      v4 = v77;
    }

    v3 = v51;
  }

  objc_sync_exit(v3);
}

+ (id)accountDescriptorForURL:(id)l mustBeLoggedIn:(BOOL)in
{
  inCopy = in;
  v21 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = +[BRAccountDescriptor allEligibleAccountDescriptors];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        personaIdentifier = [v11 personaIdentifier];
        v13 = [lCopy _br_isInLocalHomeDirectoryUnderPersona:personaIdentifier needsPersonaSwitch:1];

        if (v13)
        {
          if (inCopy && ![v11 isLoggedInToCloudDocs])
          {
            v11 = 0;
          }

          v14 = v11;
          goto LABEL_14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

+ (id)accountDescriptorForPersonaID:(id)d mustBeLoggedIn:(BOOL)in
{
  inCopy = in;
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  userPersonaUniqueString = [v6 userPersonaUniqueString];
  v8 = [dCopy isEqualToString:userPersonaUniqueString];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = +[BRAccountDescriptor allEligibleAccountDescriptors];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v23 = inCopy;
    v12 = *v25;
    v13 = v8 ^ 1;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        personaIdentifier = [v15 personaIdentifier];
        v17 = [personaIdentifier isEqualToString:dCopy];
        if ((v17 | v13))
        {
          v18 = v17;

          if (v18)
          {
            goto LABEL_13;
          }
        }

        else
        {
          personaIdentifier2 = [v15 personaIdentifier];
          v20 = [personaIdentifier2 isEqualToString:@"__defaultPersonaID__"];

          if (v20)
          {
LABEL_13:
            if (v23 && ![v15 isLoggedInToCloudDocs])
            {
              v15 = 0;
            }

            v21 = v15;
            goto LABEL_17;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_17:

  return v21;
}

+ (id)accountDescriptorForAccountID:(id)d mustBeLoggedIn:(BOOL)in
{
  inCopy = in;
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = +[BRAccountDescriptor allEligibleAccountDescriptors];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        accountIdentifier = [v11 accountIdentifier];
        v13 = [accountIdentifier isEqualToString:dCopy];

        if (v13)
        {
          if (inCopy && ![v11 isLoggedInToCloudDocs])
          {
            v11 = 0;
          }

          v14 = v11;
          goto LABEL_14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

+ (BOOL)mightHaveDataSeparatedAccountDescriptor
{
  v16 = *MEMORY[0x1E69E9840];
  if (g_cacheValid)
  {
    v2 = g_hasDSAccount;
  }

  else
  {
    v4 = brc_bread_crumbs("+[BRAccountDescriptor mightHaveDataSeparatedAccountDescriptor]", 678);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v11 = v4;
      _os_log_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Cache not populated - going for a quick discovery%@", buf, 0xCu);
    }

    v6 = kpersona_find_by_type();
    v2 = v6 == -1;
    v7 = brc_bread_crumbs("+[BRAccountDescriptor mightHaveDataSeparatedAccountDescriptor]", 686);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109890;
      *v11 = v6 == -1;
      *&v11[4] = 1024;
      *&v11[6] = *v11;
      v12 = 1024;
      v13 = 0;
      v14 = 2112;
      v15 = v7;
      _os_log_debug_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] hasManagedPersona = %d because %d || %d%@", buf, 0x1Eu);
    }

    [self refreshCache:1];
  }

  return v2 & 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_isDataSeparated)
  {
    v5 = @"separated";
  }

  else
  {
    v5 = @"primary";
  }

  return [v3 stringWithFormat:@"<%@: %p account:%@ persona:%@ org:%@ %@>", v4, self, self->_accountIdentifier, self->_personaIdentifier, self->_organizationName, v5];
}

+ (id)matchDomainWithAccountAndStampDomainIfNeeded:(id)needed withAccounts:(id)accounts persistDomain:(BOOL *)domain
{
  v75 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  accountsCopy = accounts;
  identifier = [neededCopy identifier];
  if ([neededCopy br_isCiconiaDomain])
  {
    v10 = brc_bread_crumbs("+[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:]", 712);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:];
    }

    v12 = 0;
    goto LABEL_50;
  }

  domainCopy = domain;
  userInfo = [neededCopy userInfo];
  v14 = [userInfo mutableCopy];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_opt_new();
  }

  v11 = v16;

  br_dsid2 = [v11 objectForKeyedSubscript:@"dsid"];
  v18 = brc_bread_crumbs("+[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:]", 718);
  v19 = brc_default_log(1, 0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    +[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = accountsCopy;
  v20 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
  if (!v20)
  {
    v35 = 0;
    goto LABEL_45;
  }

  v22 = v20;
  v57 = br_dsid2;
  v55 = v11;
  v56 = accountsCopy;
  v23 = *v61;
  *&v21 = 138413058;
  v53 = v21;
LABEL_12:
  v24 = 0;
  while (1)
  {
    if (*v61 != v23)
    {
      objc_enumerationMutation(obj);
    }

    v25 = *(*(&v60 + 1) + 8 * v24);
    identifier2 = [v25 identifier];
    if ([identifier2 isEqualToString:identifier])
    {
      v27 = brc_bread_crumbs("+[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:]", 723);
      v28 = brc_default_log(1, 0);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      *buf = 138412546;
      v65 = identifier;
      v66 = 2112;
      v67 = v27;
      v29 = v28;
      v30 = "[DEBUG] Located account with identifier: %@%@";
      v31 = 22;
      goto LABEL_30;
    }

    br_dsid = [v25 br_dsid];
    v33 = [v57 isEqualToString:br_dsid];

    if (v33)
    {
      break;
    }

LABEL_27:

    if (v22 == ++v24)
    {
      v43 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
      v22 = v43;
      if (!v43)
      {
        v35 = 0;
        accountsCopy = v56;
        goto LABEL_44;
      }

      goto LABEL_12;
    }
  }

  v27 = brc_bread_crumbs("+[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:]", 726);
  v28 = brc_default_log(1, 0);
  if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_20;
  }

  *buf = v53;
  v65 = v57;
  v66 = 2112;
  v67 = identifier2;
  v68 = 2112;
  v69 = identifier;
  v70 = 2112;
  v71 = v27;
  v29 = v28;
  v30 = "[DEBUG] Located account with DSID: %@ (accountID: %@, domainID: %@)%@";
  v31 = 42;
LABEL_30:
  _os_log_debug_impl(&dword_1AE2A9000, v29, OS_LOG_TYPE_DEBUG, v30, buf, v31);
LABEL_20:

  v34 = v25;
  if (!v34)
  {
    goto LABEL_27;
  }

  v35 = v34;
  br_volumeUUID = [v34 br_volumeUUID];
  if (br_volumeUUID)
  {
    v59 = identifier2;
    br_volumeUUID2 = [neededCopy br_volumeUUID];
    v38 = br_volumeUUID2;
    v39 = identifier;
    if (!br_volumeUUID2)
    {
      v44 = brc_bread_crumbs("+[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:]", 743);
      v45 = brc_default_log(0, 0);
      accountsCopy = v56;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        +[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:];
      }

      goto LABEL_42;
    }

    if ([br_volumeUUID2 isEqual:br_volumeUUID])
    {
      v44 = brc_bread_crumbs("+[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:]", 740);
      v45 = brc_default_log(1, 0);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413314;
        v65 = v35;
        v66 = 2112;
        v67 = br_volumeUUID;
        v68 = 2112;
        v69 = neededCopy;
        v70 = 2112;
        v71 = v38;
        v72 = 2112;
        v73 = v44;
        _os_log_debug_impl(&dword_1AE2A9000, v45, OS_LOG_TYPE_DEBUG, "[DEBUG] Matched account %@ (vid=%@) and domain %@ (vid=%@) volume IDs match%@", buf, 0x34u);
      }

      accountsCopy = v56;
LABEL_42:

      identifier = v39;
      identifier2 = v59;
      goto LABEL_43;
    }

    v40 = neededCopy;
    v41 = brc_bread_crumbs("+[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:]", 736);
    v42 = brc_default_log(1, 0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v65 = v35;
      v66 = 2112;
      v67 = br_volumeUUID;
      v68 = 2112;
      v69 = v40;
      v70 = 2112;
      v71 = v38;
      v72 = 2112;
      v73 = v41;
      _os_log_impl(&dword_1AE2A9000, v42, OS_LOG_TYPE_DEFAULT, "[WARNING] Matched account %@ (vid=%@) and domain %@ (vid=%@) volume IDs DO NOT match%@", buf, 0x34u);
    }

    neededCopy = v40;
    identifier = v39;
    identifier2 = v59;
    goto LABEL_27;
  }

  v38 = brc_bread_crumbs("+[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:]", 746);
  v44 = brc_default_log(0, 0);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
  {
    +[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:];
  }

  accountsCopy = v56;
LABEL_43:

LABEL_44:
  v11 = v55;
  br_dsid2 = v57;
LABEL_45:

  if (br_dsid2)
  {
    v46 = brc_bread_crumbs("+[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:]", 755);
    v47 = brc_default_log(1, 0);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v65 = neededCopy;
      v66 = 2112;
      v67 = br_dsid2;
      v68 = 2112;
      v69 = v46;
      _os_log_debug_impl(&dword_1AE2A9000, v47, OS_LOG_TYPE_DEBUG, "[DEBUG] Domain %@ was already stamped with dsid: %@%@", buf, 0x20u);
    }
  }

  else if (v35)
  {
    br_dsid2 = [v35 br_dsid];
    v49 = brc_bread_crumbs("+[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:]", 758);
    v50 = brc_default_log(1, 0);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v65 = neededCopy;
      v66 = 2112;
      v67 = br_dsid2;
      v68 = 2112;
      v69 = v49;
      _os_log_impl(&dword_1AE2A9000, v50, OS_LOG_TYPE_DEFAULT, "[NOTICE] Stamping domain %@ with DSID %@%@", buf, 0x20u);
    }

    [v11 setObject:br_dsid2 forKeyedSubscript:@"dsid"];
    [neededCopy setUserInfo:v11];
    if (domainCopy)
    {
      *domainCopy = 1;
    }
  }

  else
  {
    v51 = brc_bread_crumbs("+[BRAccountDescriptor matchDomainWithAccountAndStampDomainIfNeeded:withAccounts:persistDomain:]", 765);
    v52 = brc_default_log(1, 0);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v65 = identifier;
      v66 = 2112;
      v67 = v51;
      _os_log_impl(&dword_1AE2A9000, v52, OS_LOG_TYPE_DEFAULT, "[WARNING] Didn't find an account with identifier %@. Possible data loss%@", buf, 0x16u);
    }

    br_dsid2 = 0;
  }

  v10 = v35;

  v12 = v10;
LABEL_50:

  return v12;
}

void __36__BRAccountDescriptor_refreshCache___block_invoke_2_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_7(&dword_1AE2A9000, v6, v4, "[ERROR] Couldn't get account descriptors from daemon - %@%@", v5);
}

void __36__BRAccountDescriptor_refreshCache___block_invoke_2_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end