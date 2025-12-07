@interface NEProfileIngestion
+ (id)getServiceIDForPayload:(id)payload;
- (BOOL)createConfigurationFromPayload:(id)payload payloadType:(id)type;
- (BOOL)enableAlwaysOnVpn;
- (BOOL)isInstalled:(id)installed;
- (BOOL)loadConfigurationsForceReloadFromDisk;
- (BOOL)lockConfigurations;
- (BOOL)removeConfiguration:(id)configuration;
- (BOOL)removeConfigurationWithIdentifier:(id)identifier;
- (BOOL)removeIngestedConfiguration;
- (BOOL)saveIngestedConfiguration;
- (BOOL)saveIngestedConfiguration:(id *)configuration;
- (BOOL)updateAccountIdentifiers:(id)identifiers;
- (BOOL)updateAppLayerVPNMappingRules:(id)rules;
- (BOOL)updateDefaultAfterAddingConfiguration;
- (BOOL)updateDefaultAfterDeletingConfiguration;
- (BOOL)updateManagedAppRules:(id)rules;
- (BOOL)updatePerAppMappingRules:(id)rules;
- (NEProfileIngestion)initWithNameAndType:(id)type payloadType:(id)payloadType;
- (id)copyManagedConfigurationIDs;
- (id)findConfigurationByConfigurationID:(id)d;
- (id)findConfigurationByName:(id)name;
- (id)findConfigurationByPayloadUUID:(id)d;
- (id)getCertificatesForConfigurationWithIdentifier:(id)identifier;
- (id)setAsideConfigurationName:(id)name unsetAside:(BOOL)aside;
- (uint64_t)enableAlwaysOnVpnInternal:(void *)internal;
- (uint64_t)matchConfigAppUUID:(void *)d configUUIDType:(void *)type configAppUUID:;
- (uint64_t)saveConfiguration:(void *)configuration returnError:;
- (void)dealloc;
- (void)enableDefaultService;
- (void)removeAllConfigurationsWithPayload:(id)payload profile:(id)profile;
- (void)unlockConfigurations;
@end

@implementation NEProfileIngestion

- (BOOL)updateManagedAppRules:(id)rules
{
  v117 = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v112 = objc_opt_class();
    v113 = 2112;
    v114 = rulesCopy;
    v65 = v112;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@ updateManagedAppRules %@", buf, 0x16u);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = [(NEProfileIngestion *)self currentConfigurations];
  v70 = [obj countByEnumeratingWithState:&v95 objects:v109 count:16];
  if (v70)
  {
    v69 = *v96;
    *&v5 = 138412802;
    v66 = v5;
    selfCopy = self;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v96 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v95 + 1) + 8 * i);
        if ([v7 grade] != 1)
        {
          continue;
        }

        v71 = i;
        Property = [v7 pathController];
        v10 = Property;
        if (Property)
        {
          Property = objc_getProperty(Property, v9, 32, 1);
        }

        v11 = Property;
        v12 = isa_nsarray(v11);

        i = v71;
        if (!v12)
        {
          continue;
        }

        array = [MEMORY[0x1E695DF70] array];
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v75 = rulesCopy;
        v79 = [v75 countByEnumeratingWithState:&v91 objects:v108 count:16];
        if (!v79)
        {
          goto LABEL_70;
        }

        v78 = *v92;
        v74 = v7;
        do
        {
          v13 = 0;
          do
          {
            if (*v92 != v78)
            {
              objc_enumerationMutation(v75);
            }

            v14 = *(*(&v91 + 1) + 8 * v13);
            if (isa_nsstring(v14))
            {
              v15 = v14;
              v16 = v7;
              v85 = v15;
              if (self)
              {
                v17 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*"];
                v103 = 0u;
                v104 = 0u;
                v105 = 0u;
                v106 = 0u;
                pathController = [v16 pathController];
                v20 = pathController;
                if (pathController)
                {
                  pathController = objc_getProperty(pathController, v19, 32, 1);
                }

                v76 = v16;
                v77 = v13;
                v21 = pathController;

                v22 = [v21 countByEnumeratingWithState:&v103 objects:buf count:16];
                if (v22)
                {
                  v23 = v22;
                  v24 = 0;
                  v25 = 0;
                  v26 = *v104;
                  v80 = *v104;
                  v81 = v21;
                  do
                  {
                    v27 = 0;
                    v82 = v23;
                    do
                    {
                      if (*v104 != v26)
                      {
                        v28 = v27;
                        objc_enumerationMutation(v21);
                        v27 = v28;
                      }

                      v84 = v27;
                      v29 = *(*(&v103 + 1) + 8 * v27);
                      if (isa_nsdictionary(v29))
                      {
                        v30 = [v29 objectForKeyedSubscript:@"AppIdentifierMatches"];
                        if (v30)
                        {
                          v86 = v29;
                          v31 = v30;
                          if (isa_nsarray(v30))
                          {
                            v101 = 0u;
                            v102 = 0u;
                            v99 = 0u;
                            v100 = 0u;
                            v83 = v31;
                            v32 = v31;
                            v33 = [v32 countByEnumeratingWithState:&v99 objects:v110 count:16];
                            if (v33)
                            {
                              v34 = v33;
                              v35 = *v100;
                              do
                              {
                                for (j = 0; j != v34; ++j)
                                {
                                  if (*v100 != v35)
                                  {
                                    objc_enumerationMutation(v32);
                                  }

                                  v37 = *(*(&v99 + 1) + 8 * j);
                                  if (isa_nsstring(v37))
                                  {
                                    v38 = [v37 stringByTrimmingCharactersInSet:v17];
                                    if ([v15 hasPrefix:v38])
                                    {
                                      v39 = [v38 length];
                                      v40 = v39;
                                      if (!v25 || v24 < v39)
                                      {
                                        v41 = v86;

                                        v24 = v40;
                                        v25 = v41;
                                        v15 = v85;
                                      }
                                    }
                                  }
                                }

                                v34 = [v32 countByEnumeratingWithState:&v99 objects:v110 count:16];
                              }

                              while (v34);
                            }

                            v26 = v80;
                            v21 = v81;
                            v23 = v82;
                            v30 = v83;
                          }

                          else
                          {
                            v30 = v31;
                          }
                        }

                        else if (!v25)
                        {
                          v25 = v29;
                          v30 = 0;
                          v24 = 0;
                        }
                      }

                      v27 = v84 + 1;
                    }

                    while (v84 + 1 != v23);
                    v23 = [v21 countByEnumeratingWithState:&v103 objects:buf count:16];
                  }

                  while (v23);
                }

                else
                {
                  v25 = 0;
                }

                self = selfCopy;
                v7 = v74;
                v16 = v76;
                v13 = v77;
              }

              else
              {
                v25 = 0;
              }

              if (isa_nsdictionary(v25))
              {
                v42 = [v25 objectForKeyedSubscript:@"AllowRoamingCellularData"];
                v43 = [v25 objectForKeyedSubscript:@"AllowCellularData"];
                if (isa_nsnumber(v42))
                {
                  bOOLValue = [v42 BOOLValue];
                  if ((isa_nsnumber(v43) & 1) == 0)
                  {
                    if ((bOOLValue & 1) == 0)
                    {
                      v45 = 0;
                      goto LABEL_61;
                    }

                    goto LABEL_64;
                  }
                }

                else
                {
                  if (!isa_nsnumber(v43))
                  {
                    goto LABEL_64;
                  }

                  bOOLValue = 1;
                }

                v45 = [v43 BOOLValue] ^ 1;
                if ((v45 & 1) != 0 || (bOOLValue & 1) == 0)
                {
LABEL_61:
                  v46 = [(NEAppRule *)[NEPathRule alloc] initWithSigningIdentifier:v85];
                  [(NEPathRule *)v46 setCellularBehavior:v45];
                  if (v46)
                  {
                    [array addObject:v46];
                  }
                }

LABEL_64:
              }
            }

            ++v13;
          }

          while (v13 != v79);
          v47 = [v75 countByEnumeratingWithState:&v91 objects:v108 count:16];
          v79 = v47;
        }

        while (v47);
LABEL_70:

        v48 = ne_log_obj();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          v61 = objc_opt_class();
          v62 = v61;
          name = [v7 name];
          *buf = v66;
          v112 = v61;
          v113 = 2112;
          v114 = name;
          v115 = 2112;
          v116 = array;
          _os_log_debug_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_DEBUG, "%@ newPathRules for %@: %@", buf, 0x20u);
        }

        pathController2 = [v7 pathController];
        pathRules = [pathController2 pathRules];
        v51 = [pathRules count];
        v52 = array;
        v53 = [array count];

        if (v51 == v53)
        {
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          pathController3 = [v7 pathController];
          pathRules2 = [pathController3 pathRules];

          v56 = [pathRules2 countByEnumeratingWithState:&v87 objects:v107 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v88;
            while (2)
            {
              for (k = 0; k != v57; ++k)
              {
                if (*v88 != v58)
                {
                  objc_enumerationMutation(pathRules2);
                }

                if (![array containsObject:*(*(&v87 + 1) + 8 * k)])
                {

                  v52 = array;
                  goto LABEL_83;
                }
              }

              v57 = [pathRules2 countByEnumeratingWithState:&v87 objects:v107 count:16];
              if (v57)
              {
                continue;
              }

              break;
            }
          }

          v52 = array;
        }

        else
        {
LABEL_83:
          pathController4 = [v7 pathController];
          [pathController4 setPathRules:v52];

          [(NEProfileIngestion *)self saveConfiguration:v7 returnError:0];
        }

        i = v71;
      }

      v70 = [obj countByEnumeratingWithState:&v95 objects:v109 count:16];
    }

    while (v70);
  }

  return 1;
}

- (uint64_t)saveConfiguration:(void *)configuration returnError:
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__21748;
    v37 = __Block_byref_object_dispose__21749;
    v38 = 0;
    if (!v5 || ([v5 name], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length") == 0, v7, v8))
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        *buf = 138412290;
        v44 = v23;
        v24 = v23;
        _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "%@ saveConfigurationByConfiguration failed: empty configuration or configuration name", buf, 0xCu);
      }
    }

    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      name = [v6 name];
      *buf = 138412546;
      v44 = v18;
      v45 = 2112;
      v46 = name;
      _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "%@ saveConfiguration: '%@'", buf, 0x16u);
    }

    manager = [self manager];
    v12 = MEMORY[0x1E69E96A0];
    v13 = MEMORY[0x1E69E96A0];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __52__NEProfileIngestion_saveConfiguration_returnError___block_invoke;
    v28 = &unk_1E7F0A750;
    selfCopy = self;
    v14 = v6;
    v30 = v14;
    v31 = &v33;
    v32 = &v39;
    [manager saveConfiguration:v14 withCompletionQueue:v12 handler:&v25];

    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      name2 = [v14 name];
      v22 = *(v40 + 24);
      *buf = 138413058;
      v44 = v20;
      v45 = 2112;
      v46 = name2;
      v47 = 1024;
      v48 = v22;
      v49 = 2112;
      v50 = v14;
      _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "%@ saveConfiguration '%@', ok = %d, configuration %@", buf, 0x26u);
    }

    if (configuration)
    {
      *configuration = v34[5];
    }

    v16 = *(v40 + 24);

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void __52__NEProfileIngestion_saveConfiguration_returnError___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] != 9)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = a1[5];
      v16 = v14;
      v17 = [v15 name];
      v18 = convert_error_to_string(v4);
      v19 = 138412802;
      v20 = v14;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "%@ Error occurred when saving configuration '%@': %@", &v19, 0x20u);
    }

    v12 = *(a1[6] + 8);
    v13 = v4;
    v5 = *(v12 + 40);
    *(v12 + 40) = v13;
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 1;
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = a1[5];
      v8 = v6;
      v9 = [v7 name];
      v10 = convert_error_to_string(v4);
      v19 = 138412802;
      v20 = v6;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@ saved configuration '%@': %@", &v19, 0x20u);
    }
  }
}

- (BOOL)updateAccountIdentifiers:(id)identifiers
{
  v43 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  selfCopy = self;
  obj = [(NEProfileIngestion *)self currentConfigurations];
  v4 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v32 = *v38;
    v6 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        appVPN = [v8 appVPN];

        if (appVPN)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v10 = [&unk_1F38BA880 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v34;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v34 != v12)
                {
                  objc_enumerationMutation(&unk_1F38BA880);
                }

                v14 = *(*(&v33 + 1) + 8 * j);
                appVPN2 = [v8 appVPN];
                [appVPN2 removeAppRuleByID:v14];
              }

              v11 = [&unk_1F38BA880 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v11);
          }

          externalIdentifier = [v8 externalIdentifier];

          if (externalIdentifier)
          {
            externalIdentifier2 = [v8 externalIdentifier];
            v18 = [identifiersCopy objectForKeyedSubscript:externalIdentifier2];

            mailAccountIdentifiers = [v18 mailAccountIdentifiers];
            v20 = [mailAccountIdentifiers count];

            if (v20)
            {
              mailAccountIdentifiers2 = [v18 mailAccountIdentifiers];
              [v8 setMailDomains:0 accountIdentifiers:mailAccountIdentifiers2];
            }

            calendarAccountIdentifiers = [v18 calendarAccountIdentifiers];
            v23 = [calendarAccountIdentifiers count];

            if (v23)
            {
              calendarAccountIdentifiers2 = [v18 calendarAccountIdentifiers];
              [v8 setCalendarDomains:0 accountIdentifiers:calendarAccountIdentifiers2];
            }

            contactsAccountIdentifiers = [v18 contactsAccountIdentifiers];
            v26 = [contactsAccountIdentifiers count];

            if (v26)
            {
              contactsAccountIdentifiers2 = [v18 contactsAccountIdentifiers];
              [v8 setContactsDomains:0 accountIdentifiers:contactsAccountIdentifiers2];
            }
          }

          v6 &= [(NEProfileIngestion *)selfCopy saveConfiguration:v8 returnError:0];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6 & 1;
}

- (BOOL)updateAppLayerVPNMappingRules:(id)rules
{
  v15 = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412802;
    v10 = objc_opt_class();
    v11 = 2080;
    v12 = "[NEProfileIngestion updateAppLayerVPNMappingRules:]";
    v13 = 2112;
    v14 = rulesCopy;
    v8 = v10;
    _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%@ %s %@", &v9, 0x20u);
  }

  v6 = [(NEProfileIngestion *)self updatePerAppMappingRules:rulesCopy];
  return v6;
}

- (BOOL)updatePerAppMappingRules:(id)rules
{
  v178 = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v168 = objc_opt_class();
    v169 = 2112;
    v170 = rulesCopy;
    v108 = v168;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@ updatePerAppMappingRules %@", buf, 0x16u);
  }

  selfCopy = self;

  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(rulesCopy, "count")}];
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  obj = rulesCopy;
  v129 = [obj countByEnumeratingWithState:&v159 objects:v177 count:16];
  if (v129)
  {
    v126 = *v160;
    do
    {
      for (i = 0; i != v129; ++i)
      {
        if (*v160 != v126)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v159 + 1) + 8 * i);
        v9 = [obj objectForKey:v8];
        v155 = 0u;
        v156 = 0u;
        v157 = 0u;
        v158 = 0u;
        v131 = v9;
        allValues = [v9 allValues];
        v11 = [allValues countByEnumeratingWithState:&v155 objects:v176 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v156;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v156 != v13)
              {
                objc_enumerationMutation(allValues);
              }

              v15 = *(*(&v155 + 1) + 8 * j);
              v16 = [v6 objectForKeyedSubscript:v15];
              if (!v16)
              {
                v16 = [MEMORY[0x1E695DFA8] set];
                [v6 setObject:v16 forKeyedSubscript:v15];
              }

              [v16 addObject:v8];
            }

            v12 = [allValues countByEnumeratingWithState:&v155 objects:v176 count:16];
          }

          while (v12);
        }
      }

      v129 = [obj countByEnumeratingWithState:&v159 objects:v177 count:16];
    }

    while (v129);
  }

  v17 = ne_log_obj();
  v18 = selfCopy;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v109 = objc_opt_class();
    *buf = 138412546;
    v168 = v109;
    v169 = 2112;
    v170 = v6;
    v110 = v109;
    _os_log_debug_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEBUG, "%@ updatePerAppMappingRules appIDsByPerAppUUID %@", buf, 0x16u);
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  currentConfigurations = [(NEProfileIngestion *)selfCopy currentConfigurations];
  v19 = [currentConfigurations countByEnumeratingWithState:&v151 objects:v175 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = *v152;
    *&v20 = 138413058;
    v111 = v20;
    v112 = *v152;
    do
    {
      v23 = 0;
      v114 = v21;
      do
      {
        if (*v152 != v22)
        {
          objc_enumerationMutation(currentConfigurations);
        }

        v24 = *(*(&v151 + 1) + 8 * v23);
        externalIdentifier = [v24 externalIdentifier];
        if (externalIdentifier)
        {
          array = [MEMORY[0x1E695DF70] array];
          appVPN = [v24 appVPN];

          v118 = v24;
          if (appVPN)
          {
            appVPN2 = [v24 appVPN];
            v27 = @"VPNUUID";
            v124 = 0;
            v127 = @"VPNUUID";
            v28 = appVPN2;
          }

          else
          {
            relay = [v24 relay];

            if (relay)
            {
              relay2 = [v24 relay];
              appVPN2 = [relay2 perApp];

              v31 = @"RelayUUID";
              v28 = 0;
              v124 = appVPN2;
              v127 = @"RelayUUID";
            }

            else
            {
              v32 = v23;
              contentFilter = [v24 contentFilter];
              perApp = [contentFilter perApp];
              if (perApp)
              {
                [v24 contentFilter];
              }

              else
              {
                [v24 dnsProxy];
              }
              v35 = ;
              appVPN2 = [v35 perApp];

              contentFilter2 = [v24 contentFilter];
              perApp2 = [contentFilter2 perApp];
              v38 = @"ContentFilterUUID";
              if (!perApp2)
              {
                v38 = @"DNSProxyUUID";
              }

              v127 = v38;

              v28 = 0;
              v124 = appVPN2;
              v18 = selfCopy;
              v23 = v32;
            }
          }

          copyAppRuleIDs = [(__CFString *)appVPN2 copyAppRuleIDs];
          if (copyAppRuleIDs)
          {
            v40 = copyAppRuleIDs;
            v120 = v23;
            v41 = ne_log_obj();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              v63 = objc_opt_class();
              v64 = v63;
              name = [v118 name];
              *buf = v111;
              v168 = v63;
              v169 = 2112;
              v170 = name;
              v171 = 2112;
              v172 = externalIdentifier;
              v173 = 2112;
              v174 = v40;
              _os_log_debug_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_DEBUG, "%@ updatePerAppMappingRules config %@ perAppUUID %@, existing appRules %@", buf, 0x2Au);
            }

            v149 = 0u;
            v150 = 0u;
            v147 = 0u;
            v148 = 0u;
            v42 = v40;
            v43 = [(__CFString *)v42 countByEnumeratingWithState:&v147 objects:v166 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v148;
              do
              {
                v46 = 0;
                do
                {
                  if (*v148 != v45)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v47 = *(*(&v147 + 1) + 8 * v46);
                  v48 = v47;
                  if (!v18)
                  {

LABEL_49:
                    v50 = [obj objectForKey:v48];
                    if (([(NEProfileIngestion *)v18 matchConfigAppUUID:v50 configUUIDType:v127 configAppUUID:externalIdentifier]& 1) == 0)
                    {
                      [array addObject:v48];
                    }

                    goto LABEL_52;
                  }

                  if (isAutoCreatedRule__onceToken != -1)
                  {
                    dispatch_once(&isAutoCreatedRule__onceToken, &__block_literal_global_21845);
                  }

                  v49 = [isAutoCreatedRule__autoRuleIdentifiers containsObject:v48];

                  if ((v49 & 1) == 0)
                  {
                    goto LABEL_49;
                  }

LABEL_52:
                  ++v46;
                }

                while (v44 != v46);
                v51 = [(__CFString *)v42 countByEnumeratingWithState:&v147 objects:v166 count:16];
                v44 = v51;
              }

              while (v51);
            }

            v145 = 0u;
            v146 = 0u;
            v143 = 0u;
            v144 = 0u;
            v52 = array;
            v53 = [v52 countByEnumeratingWithState:&v143 objects:v165 count:16];
            if (v53)
            {
              v54 = v53;
              v55 = 0;
              v56 = *v144;
              do
              {
                for (k = 0; k != v54; ++k)
                {
                  if (*v144 != v56)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v58 = *(*(&v143 + 1) + 8 * k);
                  v59 = ne_log_obj();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v168 = v58;
                    _os_log_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_DEFAULT, "updatePerAppMappingRules: Removing PerApp rule for identifier %@.", buf, 0xCu);
                  }

                  if (v28)
                  {
                    v60 = v28;
                  }

                  else
                  {
                    v60 = v124;
                  }

                  if (([(__CFString *)v60 removeAppRuleByID:v58]& 1) != 0)
                  {
                    v55 = 1;
                  }

                  else
                  {
                    v61 = ne_log_obj();
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v168 = v58;
                      _os_log_error_impl(&dword_1BA83C000, v61, OS_LOG_TYPE_ERROR, "updatePerAppMappingRules: Could not remove perApp rule for identifier %@.", buf, 0xCu);
                    }
                  }
                }

                v54 = [v52 countByEnumeratingWithState:&v143 objects:v165 count:16];
              }

              while (v54);

              v18 = selfCopy;
              if (v55)
              {
                [(NEProfileIngestion *)selfCopy saveConfiguration:v118 returnError:0];
              }
            }

            else
            {
            }

            v62 = v124;
            v22 = v112;
            v21 = v114;
            v23 = v120;
          }

          else
          {
            v42 = v28;
            v28 = v124;
            v62 = v127;
          }
        }

        ++v23;
      }

      while (v23 != v21);
      v21 = [currentConfigurations countByEnumeratingWithState:&v151 objects:v175 count:16];
    }

    while (v21);
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  currentConfigurations2 = [(NEProfileIngestion *)v18 currentConfigurations];
  v66 = [currentConfigurations2 countByEnumeratingWithState:&v139 objects:v164 count:16];
  if (!v66)
  {
    goto LABEL_132;
  }

  v67 = v66;
  v68 = *v140;
  v113 = *v140;
  do
  {
    v69 = 0;
    v115 = v67;
    do
    {
      if (*v140 != v68)
      {
        objc_enumerationMutation(currentConfigurations2);
      }

      v70 = *(*(&v139 + 1) + 8 * v69);
      externalIdentifier2 = [v70 externalIdentifier];
      if (externalIdentifier2)
      {
        v121 = [v6 objectForKeyedSubscript:externalIdentifier2];
        appVPN3 = [v70 appVPN];

        if (appVPN3)
        {
          appVPN4 = [v70 appVPN];
          v73 = @"VPNUUID";
          v74 = @"VPNUUID";
        }

        else
        {
          appVPN4 = 0;
          v73 = 0;
        }

        contentFilter3 = [v70 contentFilter];

        if (contentFilter3)
        {
          contentFilter4 = [v70 contentFilter];
          perApp3 = [contentFilter4 perApp];

          if (!perApp3)
          {
            v78 = objc_alloc_init(NEPerApp);
            contentFilter5 = [v70 contentFilter];
            [contentFilter5 setPerApp:v78];
          }

          v80 = v70;
          contentFilter6 = [v70 contentFilter];
          v82 = @"ContentFilterUUID";
          goto LABEL_102;
        }

        dnsProxy = [v70 dnsProxy];

        if (dnsProxy)
        {
          dnsProxy2 = [v70 dnsProxy];
          perApp4 = [dnsProxy2 perApp];

          if (!perApp4)
          {
            v86 = objc_alloc_init(NEPerApp);
            dnsProxy3 = [v70 dnsProxy];
            [dnsProxy3 setPerApp:v86];
          }

          v80 = v70;
          contentFilter6 = [v70 dnsProxy];
          v82 = @"DNSProxyUUID";
          goto LABEL_102;
        }

        relay3 = [v70 relay];

        if (relay3)
        {
          relay4 = [v70 relay];
          perApp5 = [relay4 perApp];

          if (!perApp5)
          {
            v91 = objc_alloc_init(NEPerApp);
            relay5 = [v70 relay];
            [relay5 setPerApp:v91];
          }

          v80 = v70;
          contentFilter6 = [v70 relay];
          v82 = @"RelayUUID";
LABEL_102:
          perApp6 = [contentFilter6 perApp];

          v94 = v82;
          v73 = v94;
          v70 = v80;
        }

        else
        {
          perApp6 = 0;
        }

        if (appVPN4 | perApp6)
        {
          v119 = v69;
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          v95 = v121;
          v96 = [v95 countByEnumeratingWithState:&v135 objects:v163 count:16];
          if (v96)
          {
            v97 = v96;
            v125 = perApp6;
            v128 = v70;
            v123 = 0;
            v98 = *v136;
            do
            {
              for (m = 0; m != v97; ++m)
              {
                if (*v136 != v98)
                {
                  objc_enumerationMutation(v95);
                }

                v100 = *(*(&v135 + 1) + 8 * m);
                v101 = [obj objectForKey:v100];
                if (([(NEProfileIngestion *)selfCopy matchConfigAppUUID:v101 configUUIDType:v73 configAppUUID:externalIdentifier2]& 1) != 0)
                {
                  v102 = appVPN4;
                  if (!appVPN4)
                  {
                    v102 = v125;
                  }

                  v103 = [v102 copyAppRuleByID:v100];
                  if (!v103)
                  {
                    v104 = ne_log_obj();
                    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v168 = v100;
                      _os_log_impl(&dword_1BA83C000, v104, OS_LOG_TYPE_DEFAULT, "updatePerAppMappingRules: Adding PerApp rule for identifier %@.", buf, 0xCu);
                    }

                    if ([v128 setPerAppRuleSettings:MEMORY[0x1E695E0F8] withAppIdentifier:v100])
                    {
                      v103 = 0;
                      v123 = 1;
                    }

                    else
                    {
                      v105 = ne_log_obj();
                      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v168 = v100;
                        _os_log_error_impl(&dword_1BA83C000, v105, OS_LOG_TYPE_ERROR, "updatePerAppMappingRules: Could not set PerApp rule for identifier %@", buf, 0xCu);
                      }

                      v103 = 0;
                    }
                  }
                }

                else
                {
                  v103 = ne_log_obj();
                  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v168 = v100;
                    _os_log_impl(&dword_1BA83C000, v103, OS_LOG_TYPE_DEFAULT, "updatePerAppMappingRules: Add for appID %@ failed - UUID/type mismatch ", buf, 0xCu);
                  }
                }
              }

              v97 = [v95 countByEnumeratingWithState:&v135 objects:v163 count:16];
            }

            while (v97);

            v68 = v113;
            v67 = v115;
            v69 = v119;
            perApp6 = v125;
            if (v123)
            {
              [(NEProfileIngestion *)selfCopy saveConfiguration:v128 returnError:0];
            }
          }

          else
          {

            v67 = v115;
            v69 = v119;
          }
        }
      }

      ++v69;
    }

    while (v69 != v67);
    v106 = [currentConfigurations2 countByEnumeratingWithState:&v139 objects:v164 count:16];
    v67 = v106;
  }

  while (v106);
LABEL_132:

  return 1;
}

- (uint64_t)matchConfigAppUUID:(void *)d configUUIDType:(void *)type configAppUUID:
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  dCopy = d;
  typeCopy = type;
  if (self)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = [v10 objectForKeyedSubscript:{v14, v17}];
          if ([v14 isEqual:dCopy] && objc_msgSend(v15, "isEqual:", typeCopy))
          {

            v11 = 1;
            goto LABEL_13;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __40__NEProfileIngestion_isAutoCreatedRule___block_invoke()
{
  v0 = isAutoCreatedRule__autoRuleIdentifiers;
  isAutoCreatedRule__autoRuleIdentifiers = &unk_1F38BA868;
}

- (void)enableDefaultService
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "TO-DO: enableDefaultService: activate last service after removing current service", v3, 2u);
  }
}

- (void)unlockConfigurations
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "TO-DO: unlockConfigurations", v3, 2u);
  }
}

- (BOOL)lockConfigurations
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "TO-DO: lockConfigurations", v4, 2u);
  }

  return 1;
}

- (BOOL)enableAlwaysOnVpn
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = objc_opt_class();
    v5 = v7;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@ enableAlwaysOnVpn", &v6, 0xCu);
  }

  return [(NEProfileIngestion *)self enableAlwaysOnVpnInternal:?];
}

- (uint64_t)enableAlwaysOnVpnInternal:(void *)internal
{
  v59 = *MEMORY[0x1E69E9840];
  if (!internal)
  {
    return 0;
  }

  internalCopy = internal;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v55 = objc_opt_class();
    v56 = 1024;
    LODWORD(v57[0]) = a2;
    v41 = v55;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@ enableAlwaysOnVpnInternal with sanityCheck %d", buf, 0x12u);
  }

  [internalCopy loadConfigurationsForceReloadFromDisk];
  currentConfigurations = [internalCopy currentConfigurations];

  if (currentConfigurations)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    currentConfigurations2 = [internalCopy currentConfigurations];
    v7 = [currentConfigurations2 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v7)
    {
      v8 = v7;
      v48 = a2;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = *v51;
      v49 = internalCopy;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v51 != v12)
          {
            objc_enumerationMutation(currentConfigurations2);
          }

          v14 = *(*(&v50 + 1) + 8 * i);
          alwaysOnVPN = [v14 alwaysOnVPN];

          if (alwaysOnVPN)
          {
            v16 = v14;

            payloadInfo = [v16 payloadInfo];
            isSetAside = [payloadInfo isSetAside];

            v19 = ne_log_obj();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v20 = objc_opt_class();
              *buf = 138412546;
              v55 = v20;
              v56 = 2112;
              v57[0] = v16;
              v21 = v20;
              _os_log_debug_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEBUG, "%@ enableAlwaysOnVpnInternal: Always-On VPN configs found %@", buf, 0x16u);

              internalCopy = v49;
            }

            ++v11;
            v10 += isSetAside;

            v9 = v16;
          }
        }

        v8 = [currentConfigurations2 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v8);

      if (v11 >= 2)
      {
        if (v48)
        {
          v22 = ne_log_obj();
          v23 = v22;
          if (v11 == 2 && v10 == 1)
          {
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
LABEL_28:

              goto LABEL_30;
            }

            v24 = objc_opt_class();
            *buf = 138412802;
            v55 = v24;
            v56 = 1024;
            LODWORD(v57[0]) = 2;
            WORD2(v57[0]) = 1024;
            *(v57 + 6) = 1;
            v25 = v24;
            v26 = "%@ enableAlwaysOnVpnInternal: Sanity check OK, %d Always-On VPN configs found (%d set aside).";
            v27 = v23;
            v28 = 24;
LABEL_42:
            _os_log_debug_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_DEBUG, v26, buf, v28);

            goto LABEL_28;
          }

          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
LABEL_38:

            v35 = 0;
            goto LABEL_31;
          }

          v47 = objc_opt_class();
          *buf = 138412802;
          v55 = v47;
          v56 = 1024;
          LODWORD(v57[0]) = v11;
          WORD2(v57[0]) = 1024;
          *(v57 + 6) = v10;
          v38 = v47;
          v39 = "%@ enableAlwaysOnVpnInternal: Sanity check failed. %d Always-On VPN configs found (%d set aside). Enabling will be disallowed.";
        }

        else
        {
          v23 = ne_log_obj();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          v37 = objc_opt_class();
          *buf = 138412802;
          v55 = v37;
          v56 = 1024;
          LODWORD(v57[0]) = v11;
          WORD2(v57[0]) = 1024;
          *(v57 + 6) = v10;
          v38 = v37;
          v39 = "%@ enableAlwaysOnVpnInternal: %d Always-On VPN configs found (%d set aside), skip enabling new AOVpn configs.";
        }

        _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, v39, buf, 0x18u);

        goto LABEL_38;
      }

      if (v9)
      {
        alwaysOnVPN2 = [v9 alwaysOnVPN];
        isEnabled = [alwaysOnVPN2 isEnabled];

        v23 = ne_log_obj();
        v34 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
        if ((isEnabled & 1) == 0)
        {
          if (v34)
          {
            v44 = objc_opt_class();
            v45 = "";
            if (v48)
            {
              v45 = " anyway";
            }

            *buf = 138412546;
            v55 = v44;
            v56 = 2080;
            v57[0] = v45;
            v46 = v44;
            _os_log_debug_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEBUG, "%@ enableAlwaysOnVpnInternal: enable the only Always-On VPN config%s.", buf, 0x16u);
          }

          alwaysOnVPN3 = [v9 alwaysOnVPN];
          v35 = 1;
          [alwaysOnVPN3 setEnabled:1];

          [(NEProfileIngestion *)internalCopy saveConfiguration:v9 returnError:0];
          goto LABEL_31;
        }

        if (!v34)
        {
          goto LABEL_28;
        }

        v43 = objc_opt_class();
        *buf = 138412290;
        v55 = v43;
        v25 = v43;
        v26 = "%@ enableAlwaysOnVpnInternal: the only Always-On VPN config is already enabled.";
        v27 = v23;
        v28 = 12;
        goto LABEL_42;
      }
    }

    else
    {
    }

    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_30;
    }

    v42 = objc_opt_class();
    *buf = 138412290;
    v55 = v42;
    v30 = v42;
    v31 = "%@ enableAlwaysOnVpnInternal: no Always-On VPN configs to enable";
LABEL_40:
    _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, v31, buf, 0xCu);

    goto LABEL_30;
  }

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v29 = objc_opt_class();
    *buf = 138412290;
    v55 = v29;
    v30 = v29;
    v31 = "%@ enableAlwaysOnVpnInternal: empty configuration database";
    goto LABEL_40;
  }

LABEL_30:
  v35 = 1;
LABEL_31:

  return v35;
}

- (id)copyManagedConfigurationIDs
{
  v22 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  currentConfigurations = [(NEProfileIngestion *)self currentConfigurations];

  if (currentConfigurations)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    currentConfigurations2 = [(NEProfileIngestion *)self currentConfigurations];
    v6 = [currentConfigurations2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(currentConfigurations2);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          payloadInfo = [v10 payloadInfo];
          payloadUUID = [payloadInfo payloadUUID];

          if (payloadUUID)
          {
            identifier = [v10 identifier];
            uUIDString = [identifier UUIDString];
            [array addObject:uUIDString];
          }
        }

        v7 = [currentConfigurations2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  v15 = [array copy];

  return v15;
}

- (BOOL)updateDefaultAfterDeletingConfiguration
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "To-DO: updateDefaultAfterDeletingConfiguration", v4, 2u);
  }

  return 1;
}

- (BOOL)updateDefaultAfterAddingConfiguration
{
  selfCopy = self;
  v65 = *MEMORY[0x1E69E9840];
  ingestedConfiguration = [(NEProfileIngestion *)self ingestedConfiguration];
  name = [ingestedConfiguration name];

  if (name)
  {
    v48 = name;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    currentConfigurations = [(NEProfileIngestion *)selfCopy currentConfigurations];
    v6 = [currentConfigurations countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v57;
      v50 = currentConfigurations;
      v51 = selfCopy;
      v49 = *v57;
LABEL_4:
      v9 = 0;
      v55 = v7;
      while (1)
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(currentConfigurations);
        }

        v10 = *(*(&v56 + 1) + 8 * v9);
        payloadInfo = [v10 payloadInfo];
        if (!payloadInfo)
        {
          goto LABEL_13;
        }

        v12 = payloadInfo;
        payloadInfo2 = [v10 payloadInfo];
        if (![payloadInfo2 isSetAside])
        {
          goto LABEL_11;
        }

        identifier = [v10 identifier];
        ingestedConfiguration2 = [(NEProfileIngestion *)selfCopy ingestedConfiguration];
        identifier2 = [ingestedConfiguration2 identifier];
        if ([identifier isEqual:identifier2])
        {
          break;
        }

        payloadInfo3 = [v10 payloadInfo];
        [payloadInfo3 profileIdentifier];
        v17 = v52 = identifier;
        ingestedConfiguration3 = [(NEProfileIngestion *)selfCopy ingestedConfiguration];
        payloadInfo4 = [ingestedConfiguration3 payloadInfo];
        profileIdentifier = [payloadInfo4 profileIdentifier];
        isEqualToString = objc_msgSend_isEqualToString_(v17);

        currentConfigurations = v50;
        v8 = v49;

        selfCopy = v51;
        v7 = v55;
        if (!isEqualToString)
        {
          goto LABEL_13;
        }

        ingestedConfiguration4 = [(NEProfileIngestion *)v51 ingestedConfiguration];
        name2 = [ingestedConfiguration4 name];
        identifier3 = [v10 identifier];
        uUIDString = [identifier3 UUIDString];
        v12 = [name2 stringByAppendingString:uUIDString];

        name3 = [v10 name];
        LOBYTE(identifier3) = objc_msgSend_isEqualToString_(name3);

        if (identifier3)
        {
          v27 = v10;

          selfCopy = v51;
          if (!v27)
          {
            goto LABEL_25;
          }

          v30 = [v27 VPN];
          if (v30)
          {
            [v27 VPN];
          }

          else
          {
            [v27 appVPN];
          }
          v33 = ;

          ingestedConfiguration5 = [(NEProfileIngestion *)v51 ingestedConfiguration];
          v35 = [ingestedConfiguration5 VPN];
          ingestedConfiguration6 = [(NEProfileIngestion *)v51 ingestedConfiguration];
          v37 = ingestedConfiguration6;
          if (v35)
          {
            [ingestedConfiguration6 VPN];
          }

          else
          {
            [ingestedConfiguration6 appVPN];
          }
          v38 = ;

          if (v33 && v38 && (v39 = objc_opt_class(), [v39 isEqual:objc_opt_class()]))
          {
            v40 = ne_log_obj();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              ingestedConfiguration7 = [(NEProfileIngestion *)v51 ingestedConfiguration];
              name4 = [ingestedConfiguration7 name];
              isOnDemandEnabled = [v33 isOnDemandEnabled];
              *buf = 138412546;
              v61 = name4;
              v62 = 1024;
              v63 = isOnDemandEnabled;
              _os_log_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_DEFAULT, "%@: Using onDemandEnabled setting from set-aside configuration (%d)", buf, 0x12u);
            }

            [v38 setOnDemandEnabled:{objc_msgSend(v33, "isOnDemandEnabled")}];
          }

          else
          {
            v44 = ne_log_obj();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              ingestedConfiguration8 = [(NEProfileIngestion *)v51 ingestedConfiguration];
              name5 = [ingestedConfiguration8 name];
              *buf = 138412290;
              v61 = name5;
              _os_log_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_DEFAULT, "%@: VPN type mis-match with set-aside configuration", buf, 0xCu);
            }
          }

          goto LABEL_41;
        }

        currentConfigurations = v50;
        selfCopy = v51;
        v8 = v49;
LABEL_12:

LABEL_13:
        if (v7 == ++v9)
        {
          v26 = [currentConfigurations countByEnumeratingWithState:&v56 objects:v64 count:16];
          v7 = v26;
          if (v26)
          {
            goto LABEL_4;
          }

          goto LABEL_19;
        }
      }

      v7 = v55;
LABEL_11:

      goto LABEL_12;
    }

LABEL_19:

LABEL_25:
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      ingestedConfiguration9 = [(NEProfileIngestion *)selfCopy ingestedConfiguration];
      name6 = [ingestedConfiguration9 name];
      *buf = 138412290;
      v61 = name6;
      _os_log_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_DEFAULT, "%@: No set-aside configuration", buf, 0xCu);
    }

LABEL_41:
    name = v48;
  }

  else
  {
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      ingestedConfiguration10 = [(NEProfileIngestion *)selfCopy ingestedConfiguration];
      identifier4 = [ingestedConfiguration10 identifier];
      *buf = 138412290;
      v61 = identifier4;
      _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, "The ingested configuration (%@) has no name, cannot update from the set aside version of the configuration", buf, 0xCu);
    }
  }

  return name != 0;
}

- (BOOL)removeIngestedConfiguration
{
  v11 = *MEMORY[0x1E69E9840];
  ingestedConfiguration = [(NEProfileIngestion *)self ingestedConfiguration];

  if (!ingestedConfiguration)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = objc_opt_class();
      v8 = v10;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%@ removeIngestedConfiguration skipped: current configuration does not exist", &v9, 0xCu);
    }

    return 1;
  }

  ingestedConfiguration2 = [(NEProfileIngestion *)self ingestedConfiguration];
  v5 = [(NEProfileIngestion *)self removeConfiguration:ingestedConfiguration2];

  if (v5)
  {
    [(NEProfileIngestion *)self setIngestedConfiguration:0];
    return 1;
  }

  return 0;
}

- (id)getCertificatesForConfigurationWithIdentifier:(id)identifier
{
  v3 = [(NEProfileIngestion *)self findConfigurationByConfigurationID:identifier];
  getCertificates = [v3 getCertificates];

  return getCertificates;
}

- (BOOL)removeConfigurationWithIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(NEProfileIngestion *)self findConfigurationByConfigurationID:identifierCopy];
  if (v5)
  {
    [(NEProfileIngestion *)self removeConfiguration:v5];
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412546;
      v10 = objc_opt_class();
      v11 = 2112;
      v12 = identifierCopy;
      v8 = v10;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%@ removeConfigurationWithIdentifier failed: no configuration found with id %@", &v9, 0x16u);
    }
  }

  return 1;
}

- (BOOL)removeConfiguration:(id)configuration
{
  v52 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  payloadInfo = [configurationCopy payloadInfo];
  isSetAside = [payloadInfo isSetAside];

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  if (configurationCopy)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v29 = objc_opt_class();
      name = [configurationCopy name];
      *buf = 138412546;
      v47 = v29;
      v48 = 2112;
      v49 = name;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%@ removeConfiguration: '%@'", buf, 0x16u);
    }

    manager = [(NEProfileIngestion *)self manager];
    v8 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __42__NEProfileIngestion_removeConfiguration___block_invoke;
    v39[3] = &unk_1E7F0AD00;
    v10 = configurationCopy;
    v40 = v10;
    v41 = &v42;
    [manager removeConfiguration:v10 withCompletionQueue:v8 handler:v39];

    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v31 = objc_opt_class();
      name2 = [v10 name];
      v33 = *(v43 + 24);
      *buf = 138412802;
      v47 = v31;
      v48 = 2112;
      v49 = name2;
      v50 = 1024;
      v51 = v33;
      _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "%@ removeConfiguration '%@', ok = %d", buf, 0x1Cu);
    }

    currentConfigurations = [(NEProfileIngestion *)self currentConfigurations];
    v13 = currentConfigurations == 0;

    if (!v13)
    {
      for (i = 0; ; ++i)
      {
        currentConfigurations2 = [(NEProfileIngestion *)self currentConfigurations];
        v16 = i < [currentConfigurations2 count];

        if (!v16)
        {
          break;
        }

        currentConfigurations3 = [(NEProfileIngestion *)self currentConfigurations];
        v18 = [currentConfigurations3 objectAtIndex:i];

        identifier = [v18 identifier];
        uUIDString = [identifier UUIDString];
        identifier2 = [v10 identifier];
        uUIDString2 = [identifier2 UUIDString];
        isEqualToString = objc_msgSend_isEqualToString_(uUIDString);

        if (isEqualToString)
        {
          currentConfigurations4 = [(NEProfileIngestion *)self currentConfigurations];
          [currentConfigurations4 removeObjectAtIndex:i];

          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v36 = objc_opt_class();
            name3 = [v10 name];
            *buf = 138412546;
            v47 = v36;
            v48 = 2112;
            v49 = name3;
            _os_log_debug_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_DEBUG, "%@ removeConfiguration '%@' from cached list", buf, 0x16u);
          }

          break;
        }
      }
    }

    if (isSetAside)
    {
      [(NEProfileIngestion *)self enableAlwaysOnVpnInternal:?];
    }

    v25 = *(v43 + 24);
    v24 = v40;
  }

  else
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v34 = objc_opt_class();
      *buf = 138412290;
      v47 = v34;
      v35 = v34;
      _os_log_debug_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEBUG, "%@ removeConfiguration skipped: empty configuration.", buf, 0xCu);
    }

    v25 = 1;
  }

  _Block_object_dispose(&v42, 8);
  return v25 & 1;
}

void __42__NEProfileIngestion_removeConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) name];
      v6 = convert_error_to_string(v3);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Error occurred when removing configurations '%@': %@", &v7, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)saveIngestedConfiguration:(id *)configuration
{
  ingestedConfiguration = [(NEProfileIngestion *)self ingestedConfiguration];
  LOBYTE(configuration) = [(NEProfileIngestion *)self saveConfiguration:ingestedConfiguration returnError:configuration];

  return configuration;
}

- (BOOL)saveIngestedConfiguration
{
  selfCopy = self;
  ingestedConfiguration = [(NEProfileIngestion *)self ingestedConfiguration];
  LOBYTE(selfCopy) = [(NEProfileIngestion *)selfCopy saveConfiguration:ingestedConfiguration returnError:0];

  return selfCopy;
}

- (BOOL)createConfigurationFromPayload:(id)payload payloadType:(id)type
{
  v232 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  typeCopy = type;
  payloadAtom = [payloadCopy payloadAtom];
  v9 = [payloadAtom objectForKeyedSubscript:@"UserDefinedName"];
  v10 = [payloadAtom objectForKeyedSubscript:@"VPNSubType"];
  if (!v9)
  {
    v11 = [payloadAtom objectForKeyedSubscript:@"PayloadDisplayName"];
    if (!v11)
    {
      if (objc_msgSend_isEqualToString_(typeCopy))
      {
        v12 = kNECFPluginBundleIDKey;
      }

      else
      {
        isEqualToString = objc_msgSend_isEqualToString_(typeCopy);
        v12 = kNEVPNTypeKey;
        if (isEqualToString)
        {
          v12 = &kNEDNSProxyAppBundleIdentifierKey;
        }
      }

      v11 = [payloadAtom objectForKeyedSubscript:*v12];
    }

    v9 = v11;
  }

  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v227 = typeCopy;
    v228 = 2112;
    v229 = v9;
    _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "createConfigurationFromPayload type %@, name '%@'", buf, 0x16u);
  }

  v15 = [(NEProfileIngestion *)self findConfigurationByName:v9];
  selfCopy = self;
  if (!v15)
  {
    goto LABEL_186;
  }

  v188 = payloadCopy;
  v16 = v9;
  v17 = v16;
  v190 = v15;
  v193 = v10;
  if (self)
  {
    v18 = [(__CFString *)v16 componentsSeparatedByString:@" "];
    v19 = [v18 count];
    v20 = v19 - 1;
    v196 = v18;
    if (v19 > 1)
    {
      v24 = typeCopy;
      v25 = [v18 objectAtIndex:v20];
      v26 = v18;
      v27 = [v25 length];
      v28 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789 "];
      v29 = [v25 stringByTrimmingCharactersInSet:v28];

      if ([v29 length])
      {
        v22 = v17;
        intValue = 0;
      }

      else
      {
        v30 = [v26 objectAtIndex:v20];
        intValue = [v30 intValue];

        v22 = [(__CFString *)v17 substringToIndex:[(__CFString *)v17 length]- v27];
      }

      v21 = v24;
      self = selfCopy;
    }

    else
    {
      v21 = typeCopy;
      v22 = v17;
      intValue = 0;
    }

    currentConfigurations = [(NEProfileIngestion *)self currentConfigurations];

    if (currentConfigurations)
    {
      selfCopy2 = self;
      v33 = 0;
      v34 = intValue + 1;
      do
      {
        v35 = [(__CFString *)v22 stringByAppendingFormat:@" %ld", v34];

        v36 = [(NEProfileIngestion *)selfCopy2 findConfigurationByName:v35];

        ++v34;
        v33 = v35;
      }

      while (v36);
    }

    else
    {
      v37 = ne_log_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_ERROR, "resolveConfigurationNameConflict system configurations disappeared", buf, 2u);
      }

      v35 = 0;
    }

    v9 = v35;
  }

  else
  {
    v21 = typeCopy;
    v9 = 0;
  }

  v38 = ne_log_obj();
  payloadCopy = v188;
  v15 = v190;
  self = selfCopy;
  typeCopy = v21;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v65 = objc_opt_class();
    *buf = 138412802;
    v227 = v65;
    v228 = 2112;
    v229 = v17;
    v230 = 2112;
    v231 = v9;
    v66 = v65;
    _os_log_debug_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_DEBUG, "%@ createConfigurationFromPayload: rename %@ to %@", buf, 0x20u);
  }

  v10 = v193;
  if (v9)
  {
LABEL_186:
    if (isa_nsstring(v10) && [NETunnelProviderProtocol isLegacyPluginType:v10])
    {
      manager = [(NEProfileIngestion *)self manager];
      v219[0] = MEMORY[0x1E69E9820];
      v219[1] = 3221225472;
      v219[2] = __65__NEProfileIngestion_createConfigurationFromPayload_payloadType___block_invoke;
      v219[3] = &unk_1E7F0A6F0;
      v220 = payloadCopy;
      [manager fetchUpgradeInfoForPluginType:v10 completionQueue:MEMORY[0x1E69E96A0] handler:v219];
    }

    if (objc_msgSend_isEqualToString_(typeCopy))
    {
      v40 = [payloadAtom objectForKeyedSubscript:@"VPNType"];
      v41 = objc_msgSend_isEqualToString_(v40);

      if (v41)
      {
        v42 = ne_log_obj();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_DEBUG, "ingesting PPTP not supported", buf, 2u);
        }

        [(NEProfileIngestion *)self setIngestedConfiguration:0];
        v43 = 1;
LABEL_58:

        goto LABEL_59;
      }

      v56 = [[NEConfiguration alloc] initWithVPNPayload:payloadCopy configurationName:v9 grade:1];
      goto LABEL_55;
    }

    if (objc_msgSend_isEqualToString_(typeCopy))
    {
      currentConfigurations2 = [(NEProfileIngestion *)self currentConfigurations];

      if (currentConfigurations2)
      {
        v191 = v15;
        v194 = v10;
        v186 = typeCopy;
        v45 = payloadAtom;
        v217 = 0u;
        v218 = 0u;
        v215 = 0u;
        v216 = 0u;
        currentConfigurations3 = [(NEProfileIngestion *)self currentConfigurations];
        v47 = [currentConfigurations3 countByEnumeratingWithState:&v215 objects:v225 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v216;
          while (2)
          {
            for (i = 0; i != v48; ++i)
            {
              if (*v216 != v49)
              {
                objc_enumerationMutation(currentConfigurations3);
              }

              v51 = *(*(&v215 + 1) + 8 * i);
              alwaysOnVPN = [v51 alwaysOnVPN];
              if (alwaysOnVPN)
              {
                v53 = alwaysOnVPN;
                payloadInfo = [v51 payloadInfo];
                isSetAside = [payloadInfo isSetAside];

                if ((isSetAside & 1) == 0)
                {
                  v64 = ne_log_obj();
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                  {
                    v112 = objc_opt_class();
                    *buf = 138412290;
                    v227 = v112;
                    v113 = v112;
                    _os_log_error_impl(&dword_1BA83C000, v64, OS_LOG_TYPE_ERROR, "%@ createConfigurationFromPayload: installations of multiple Always-On VPN configs are not allowed.", buf, 0xCu);
                  }

                  v43 = 0;
                  payloadAtom = v45;
                  v15 = v191;
                  v10 = v194;
                  typeCopy = v186;
                  goto LABEL_58;
                }
              }
            }

            v48 = [currentConfigurations3 countByEnumeratingWithState:&v215 objects:v225 count:16];
            if (v48)
            {
              continue;
            }

            break;
          }
        }

        payloadAtom = v45;
        v15 = v191;
        v10 = v194;
        self = selfCopy;
        typeCopy = v186;
      }

      v56 = [[NEConfiguration alloc] initWithAlwaysOnVPNPayload:payloadCopy configurationName:v9 grade:1];
      goto LABEL_55;
    }

    if (objc_msgSend_isEqualToString_(typeCopy))
    {
      v56 = [[NEConfiguration alloc] initWithAppLayerVPNPayload:payloadCopy configurationName:v9 grade:1];
LABEL_55:
      v57 = v56;
      [(NEProfileIngestion *)self setIngestedConfiguration:v56];
LABEL_56:

      ingestedConfiguration = [(NEProfileIngestion *)self ingestedConfiguration];
      v43 = ingestedConfiguration != 0;

      v59 = ne_log_obj();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        v67 = objc_opt_class();
        v68 = "no";
        if (ingestedConfiguration)
        {
          v68 = "yes";
        }

        *buf = 138412546;
        v227 = v67;
        v228 = 2080;
        v229 = v68;
        v69 = v67;
        _os_log_debug_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_DEBUG, "%@ createConfigurationFromPayload: configuration created (%s)", buf, 0x16u);
      }

      goto LABEL_58;
    }

    if (!objc_msgSend_isEqualToString_(typeCopy))
    {
      if (objc_msgSend_isEqualToString_(typeCopy))
      {
        v56 = [[NEConfiguration alloc] initWithPathControllerPayload:payloadCopy configurationName:v9 grade:1];
        goto LABEL_55;
      }

      if (!objc_msgSend_isEqualToString_(typeCopy))
      {
        if (objc_msgSend_isEqualToString_(typeCopy))
        {
          v56 = [[NEConfiguration alloc] initWithDNSSettingsPayload:payloadCopy configurationName:v9 grade:2];
        }

        else
        {
          if (!objc_msgSend_isEqualToString_(typeCopy))
          {
            v114 = ne_log_obj();
            if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v227 = typeCopy;
              _os_log_error_impl(&dword_1BA83C000, v114, OS_LOG_TYPE_ERROR, "NEProfileIngestion createConfigurationFromPayload: unsupported payload type '%@'", buf, 0xCu);
            }

            v43 = 0;
            goto LABEL_58;
          }

          v56 = [[NEConfiguration alloc] initWithRelayPayload:payloadCopy configurationName:v9 grade:1];
        }

        goto LABEL_55;
      }

      v192 = v15;
      v195 = v10;
      v185 = payloadAtom;
      v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
      currentConfigurations4 = [(NEProfileIngestion *)self currentConfigurations];

      v184 = v9;
      if (currentConfigurations4)
      {
        v81 = typeCopy;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        currentConfigurations5 = [(NEProfileIngestion *)self currentConfigurations];
        v83 = [currentConfigurations5 countByEnumeratingWithState:&v203 objects:v222 count:16];
        if (v83)
        {
          v84 = v83;
          v85 = *v204;
          do
          {
            for (j = 0; j != v84; ++j)
            {
              if (*v204 != v85)
              {
                objc_enumerationMutation(currentConfigurations5);
              }

              v87 = *(*(&v203 + 1) + 8 * j);
              dnsProxy = [v87 dnsProxy];
              if (dnsProxy)
              {
                v89 = dnsProxy;
                payloadInfo2 = [v87 payloadInfo];

                if (!payloadInfo2)
                {
                  [v57 addObject:v87];
                }
              }
            }

            v84 = [currentConfigurations5 countByEnumeratingWithState:&v203 objects:v222 count:16];
          }

          while (v84);
        }

        typeCopy = v81;
        self = selfCopy;
        v9 = v184;
      }

      v91 = [NEConfiguration initWithDNSProxyPayload:payloadCopy configurationName:v9 grade:?];
      [(NEProfileIngestion *)self setIngestedConfiguration:v91];

      ingestedConfiguration2 = [(NEProfileIngestion *)self ingestedConfiguration];

      if (ingestedConfiguration2)
      {
        v187 = typeCopy;
        v189 = payloadCopy;
        ingestedConfiguration3 = [(NEProfileIngestion *)self ingestedConfiguration];
        [ingestedConfiguration3 setName:v9];

        v201 = 0u;
        v202 = 0u;
        v199 = 0u;
        v200 = 0u;
        v57 = v57;
        v94 = [v57 countByEnumeratingWithState:&v199 objects:v221 count:16];
        if (v94)
        {
          v95 = v94;
          v96 = *v200;
          do
          {
            for (k = 0; k != v95; ++k)
            {
              if (*v200 != v96)
              {
                objc_enumerationMutation(v57);
              }

              v98 = *(*(&v199 + 1) + 8 * k);
              v99 = ne_log_obj();
              if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
              {
                v100 = objc_opt_class();
                v101 = v100;
                [v98 identifier];
                v103 = v102 = v57;
                *buf = 138412546;
                v227 = v100;
                v228 = 2112;
                v229 = v103;
                _os_log_impl(&dword_1BA83C000, v99, OS_LOG_TYPE_INFO, "%@ createConfigurationFromPayload: Removing overridden DNS proxy configuration %@.", buf, 0x16u);

                v57 = v102;
                self = selfCopy;
              }

              [(NEProfileIngestion *)self removeConfiguration:v98];
            }

            v95 = [v57 countByEnumeratingWithState:&v199 objects:v221 count:16];
          }

          while (v95);
        }

        goto LABEL_152;
      }

LABEL_154:
      payloadAtom = v185;
      goto LABEL_155;
    }

    v187 = typeCopy;
    v61 = [payloadAtom objectForKeyedSubscript:@"FilterURLs"];
    if (isa_nsnumber(v61))
    {
      v62 = [payloadAtom objectForKeyedSubscript:@"FilterURLs"];
      v63 = [v62 BOOLValue] ^ 1;
    }

    else
    {
      v63 = 1;
    }

    v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v189 = payloadCopy;
    v192 = v15;
    v185 = payloadAtom;
    v195 = v10;
    if (v63)
    {
      currentConfigurations6 = [(NEProfileIngestion *)self currentConfigurations];

      if (currentConfigurations6)
      {
        v213 = 0u;
        v214 = 0u;
        v211 = 0u;
        v212 = 0u;
        currentConfigurations7 = [(NEProfileIngestion *)self currentConfigurations];
        v72 = [currentConfigurations7 countByEnumeratingWithState:&v211 objects:v224 count:16];
        if (v72)
        {
          v73 = v72;
          v74 = *v212;
          do
          {
            for (m = 0; m != v73; ++m)
            {
              if (*v212 != v74)
              {
                objc_enumerationMutation(currentConfigurations7);
              }

              v76 = *(*(&v211 + 1) + 8 * m);
              contentFilter = [v76 contentFilter];

              if (contentFilter)
              {
                payloadInfo3 = [v76 payloadInfo];

                if (!payloadInfo3)
                {
                  [v57 addObject:v76];
                }
              }
            }

            v73 = [currentConfigurations7 countByEnumeratingWithState:&v211 objects:v224 count:16];
          }

          while (v73);
        }

        self = selfCopy;
      }

      v79 = [[NEConfiguration alloc] initWithContentFilterPayload:payloadCopy configurationName:v9 grade:1];
      goto LABEL_142;
    }

    v104 = [NEConfiguration alloc];
    v105 = payloadCopy;
    v197 = v9;
    if (!v104)
    {
      v79 = 0;
      goto LABEL_141;
    }

    v183 = v105;
    payloadAtom2 = [v105 payloadAtom];
    v107 = ne_log_large_obj();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
    {
      v141 = objc_opt_class();
      *buf = 138412290;
      v227 = v141;
      v142 = v141;
      _os_log_debug_impl(&dword_1BA83C000, v107, OS_LOG_TYPE_DEBUG, "%@ initWithURLFilterPayload", buf, 0xCu);
    }

    v108 = [payloadAtom2 objectForKeyedSubscript:@"FilterURLs"];
    v109 = isa_nsnumber(v108);

    if ((v109 & 1) == 0)
    {
      v111 = ne_log_obj();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v227 = v104;
        _os_log_error_impl(&dword_1BA83C000, v111, OS_LOG_TYPE_ERROR, "%@ initWithURLFilterPayload: not URLFilter config", buf, 0xCu);
      }

      v79 = 0;
      goto LABEL_139;
    }

    if (!payloadAtom2)
    {
      goto LABEL_136;
    }

    v110 = [payloadAtom2 objectForKeyedSubscript:@"FilterType"];
    if (v110)
    {
      v108 = [payloadAtom2 objectForKeyedSubscript:@"FilterType"];
      if ((objc_msgSend_isEqualToString_(@"Plugin") & 1) == 0)
      {

LABEL_136:
        v128 = ne_log_obj();
        if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_137;
        }

        v177 = objc_opt_class();
        *buf = 138412290;
        v227 = v177;
        v145 = v177;
        v146 = "%@ initWithURLFilterPayload: empty payload atom or plugin type, or wrong filter type";
LABEL_181:
        _os_log_error_impl(&dword_1BA83C000, v128, OS_LOG_TYPE_ERROR, v146, buf, 0xCu);

        goto LABEL_137;
      }
    }

    v115 = [payloadAtom2 objectForKeyedSubscript:@"PluginBundleID"];

    if (v110)
    {
    }

    if (!v115)
    {
      goto LABEL_136;
    }

    v116 = [(NEConfiguration *)v104 initWithName:v197 grade:1];
    if (!v116)
    {
      v104 = ne_log_obj();
      if (!os_log_type_enabled(&v104->super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_138;
      }

      v143 = objc_opt_class();
      *buf = 138412290;
      v227 = v143;
      v128 = v143;
      _os_log_error_impl(&dword_1BA83C000, &v104->super, OS_LOG_TYPE_ERROR, "%@ initWithURLFilterPayload init failed", buf, 0xCu);
LABEL_137:

LABEL_138:
      v79 = 0;
      self = selfCopy;
LABEL_139:
      v105 = v183;
LABEL_140:

LABEL_141:
      payloadCopy = v189;
LABEL_142:
      [(NEProfileIngestion *)self setIngestedConfiguration:v79];

      ingestedConfiguration4 = [(NEProfileIngestion *)self ingestedConfiguration];

      if (ingestedConfiguration4)
      {
        ingestedConfiguration5 = [(NEProfileIngestion *)self ingestedConfiguration];
        v184 = v9;
        [ingestedConfiguration5 setName:v9];

        v209 = 0u;
        v210 = 0u;
        v207 = 0u;
        v208 = 0u;
        v57 = v57;
        v131 = [v57 countByEnumeratingWithState:&v207 objects:v223 count:16];
        if (v131)
        {
          v132 = v131;
          v133 = *v208;
          do
          {
            for (n = 0; n != v132; ++n)
            {
              if (*v208 != v133)
              {
                objc_enumerationMutation(v57);
              }

              v135 = *(*(&v207 + 1) + 8 * n);
              v136 = ne_log_obj();
              if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
              {
                v137 = objc_opt_class();
                v138 = v137;
                [v135 identifier];
                v140 = v139 = v57;
                *buf = 138412546;
                v227 = v137;
                v228 = 2112;
                v229 = v140;
                _os_log_impl(&dword_1BA83C000, v136, OS_LOG_TYPE_DEFAULT, "%@ createConfigurationFromPayload: Removing overridden content filter configuration %@.", buf, 0x16u);

                v57 = v139;
                self = selfCopy;
              }

              [(NEProfileIngestion *)self removeConfiguration:v135];
            }

            v132 = [v57 countByEnumeratingWithState:&v207 objects:v223 count:16];
          }

          while (v132);
        }

LABEL_152:

        typeCopy = v187;
        payloadCopy = v189;
        v9 = v184;
        payloadAtom = v185;
LABEL_155:
        v15 = v192;
        v10 = v195;
        goto LABEL_56;
      }

      typeCopy = v187;
      goto LABEL_154;
    }

    v104 = v116;
    v117 = objc_alloc_init(NEURLFilterConfiguration);
    [(NEConfiguration *)v104 setUrlFilter:v117];

    urlFilter = [(NEConfiguration *)v104 urlFilter];

    if (!urlFilter)
    {
      v128 = ne_log_obj();
      if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_137;
      }

      v144 = objc_opt_class();
      *buf = 138412290;
      v227 = v144;
      v145 = v144;
      v146 = "%@ initWithURLFilterPayload failed, can't create URL filter config";
      goto LABEL_181;
    }

    v119 = [payloadAtom2 objectForKeyedSubscript:@"PluginBundleID"];
    urlFilter2 = [(NEConfiguration *)v104 urlFilter];
    [urlFilter2 setAppBundleIdentifier:v119];

    urlFilter3 = [(NEConfiguration *)v104 urlFilter];
    appBundleIdentifier = [urlFilter3 appBundleIdentifier];
    [(NEConfiguration *)v104 setApplication:appBundleIdentifier];

    urlFilter4 = [(NEConfiguration *)v104 urlFilter];
    appBundleIdentifier2 = [urlFilter4 appBundleIdentifier];
    [(NEConfiguration *)v104 setApplicationIdentifier:appBundleIdentifier2];

    v125 = [payloadAtom2 objectForKeyedSubscript:@"Enabled"];
    if (isa_nsnumber(v125))
    {
      v126 = [payloadAtom2 objectForKeyedSubscript:@"Enabled"];
      bOOLValue = [v126 BOOLValue];

      if (!bOOLValue)
      {
LABEL_162:
        v148 = [payloadAtom2 objectForKeyedSubscript:@"URLFilterParameters"];
        if ((isa_nsdictionary(v148) & 1) == 0)
        {
          v176 = ne_log_obj();
          if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
          {
            v181 = objc_opt_class();
            *buf = 138412546;
            v227 = v181;
            v228 = 2112;
            v229 = @"URLFilterParameters";
            v182 = v181;
            _os_log_error_impl(&dword_1BA83C000, v176, OS_LOG_TYPE_ERROR, "%@ initWithContentFilterPayload failed, missing %@ dictionary", buf, 0x16u);
          }

          v79 = 0;
          goto LABEL_179;
        }

        urlFilter5 = [(NEConfiguration *)v104 urlFilter];
        [urlFilter5 setShouldFailClosed:0];

        urlFilter13 = [v148 objectForKeyedSubscript:@"URLFilterFailClosed"];
        if (isa_nsnumber(urlFilter13))
        {
          v151 = [v148 objectForKeyedSubscript:@"URLFilterFailClosed"];
          bOOLValue2 = [v151 BOOLValue];

          if (!bOOLValue2)
          {
LABEL_167:
            v153 = [v148 objectForKeyedSubscript:@"URLFilterControlProviderDesignatedRequirement"];
            urlFilter6 = [(NEConfiguration *)v104 urlFilter];
            [urlFilter6 setControlProviderDesignatedRequirement:v153];

            v155 = [v148 objectForKeyedSubscript:@"URLFilterControlProviderBundleIdentifier"];
            urlFilter7 = [(NEConfiguration *)v104 urlFilter];
            [urlFilter7 setControlProviderBundleIdentifier:v155];

            v157 = [v148 objectForKeyedSubscript:@"URLPrefilterFetchFrequency"];
            LODWORD(urlFilter7) = isa_nsnumber(v157);

            if (urlFilter7)
            {
              v158 = [v148 objectForKeyedSubscript:@"URLPrefilterFetchFrequency"];
              intValue2 = [v158 intValue];
              urlFilter8 = [(NEConfiguration *)v104 urlFilter];
              [urlFilter8 setPrefilterFetchInterval:intValue2];
            }

            v161 = [v148 objectForKeyedSubscript:@"PIRServerURL"];
            v162 = isa_nsstring(v161);

            if (v162)
            {
              v163 = objc_alloc(MEMORY[0x1E695DFF8]);
              v164 = [v148 objectForKeyedSubscript:@"PIRServerURL"];
              v165 = [v163 initWithString:v164];
              urlFilter9 = [(NEConfiguration *)v104 urlFilter];
              [urlFilter9 setPirServerURL:v165];
            }

            v167 = [v148 objectForKeyedSubscript:@"PIRPrivacyPassIssuerURL"];
            v168 = isa_nsstring(v167);

            if (v168)
            {
              v169 = objc_alloc(MEMORY[0x1E695DFF8]);
              v170 = [v148 objectForKeyedSubscript:@"PIRPrivacyPassIssuerURL"];
              v171 = [v169 initWithString:v170];
              urlFilter10 = [(NEConfiguration *)v104 urlFilter];
              [urlFilter10 setPirPrivacyPassIssuerURL:v171];
            }

            v173 = [v148 objectForKeyedSubscript:@"PIRAuthenticationToken"];
            urlFilter11 = [(NEConfiguration *)v104 urlFilter];
            [urlFilter11 setPirAuthenticationToken:v173];

            v175 = ne_log_obj();
            if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
            {
              v178 = objc_opt_class();
              v179 = v178;
              urlFilter12 = [(NEConfiguration *)v104 urlFilter];
              *buf = 138412546;
              v227 = v178;
              v228 = 2112;
              v229 = urlFilter12;
              _os_log_debug_impl(&dword_1BA83C000, v175, OS_LOG_TYPE_DEBUG, "%@ initWithURLFilterPayload: config %@", buf, 0x16u);
            }

            v79 = v104;
LABEL_179:
            self = selfCopy;
            v105 = v183;

            goto LABEL_140;
          }

          urlFilter13 = [(NEConfiguration *)v104 urlFilter];
          [urlFilter13 setShouldFailClosed:1];
        }

        goto LABEL_167;
      }
    }

    else
    {
    }

    urlFilter14 = [(NEConfiguration *)v104 urlFilter];
    [urlFilter14 setEnabled:1];

    goto LABEL_162;
  }

  v43 = 0;
LABEL_59:

  return v43;
}

- (void)removeAllConfigurationsWithPayload:(id)payload profile:(id)profile
{
  v41 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  profileCopy = profile;
  if (isa_nsstring(payloadCopy) && (isa_nsstring(profileCopy) & 1) != 0)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = payloadCopy;
      v39 = 2112;
      v40 = profileCopy;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Removing existing configurations with payload UUID %@ and profile UUID %@", buf, 0x16u);
    }

    v9 = MEMORY[0x1E696AE18];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __65__NEProfileIngestion_removeAllConfigurationsWithPayload_profile___block_invoke;
    v33[3] = &unk_1E7F0A690;
    v28 = payloadCopy;
    v34 = payloadCopy;
    v27 = profileCopy;
    v35 = profileCopy;
    v10 = [v9 predicateWithBlock:v33];
    currentConfigurations = [(NEProfileIngestion *)self currentConfigurations];
    v26 = v10;
    v12 = [currentConfigurations filteredArrayUsingPredicate:v10];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        v17 = 0;
        do
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * v17);
          v19 = [(NEProfileIngestion *)self removeConfiguration:v18];
          v20 = ne_log_obj();
          v21 = v20;
          if (v19)
          {
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_15;
            }

            name = [v18 name];
            identifier = [v18 identifier];
            *buf = 138412546;
            v38 = name;
            v39 = 2112;
            v40 = identifier;
            _os_log_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_DEFAULT, "Removed duplicate configuration %@ (%@)", buf, 0x16u);
            goto LABEL_13;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            name = [v18 name];
            identifier = [v18 identifier];
            *buf = 138412546;
            v38 = name;
            v39 = 2112;
            v40 = identifier;
            _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "Failed to remove duplicate configuration %@ (%@)", buf, 0x16u);
LABEL_13:
          }

LABEL_15:

          ++v17;
        }

        while (v15 != v17);
        v24 = [v13 countByEnumeratingWithState:&v29 objects:v36 count:16];
        v15 = v24;
      }

      while (v24);
    }

    v25 = v34;
    profileCopy = v27;
    payloadCopy = v28;
  }

  else
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v38 = payloadCopy;
      v39 = 2112;
      v40 = profileCopy;
      _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, "Payload UUID (%@) and/or profile UUID (%@) is invalid", buf, 0x16u);
    }
  }
}

uint64_t __65__NEProfileIngestion_removeAllConfigurationsWithPayload_profile___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 payloadInfo];
    if (v3)
    {
      v4 = [v2 payloadInfo];
      v5 = [v4 payloadUUID];
      if (objc_msgSend_isEqualToString_(v5))
      {
        v6 = [v2 payloadInfo];
        v7 = [v6 profileUUID];
        isEqualToString = objc_msgSend_isEqualToString_(v7);
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = 0;
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (BOOL)isInstalled:(id)installed
{
  v3 = [(NEProfileIngestion *)self findConfigurationByPayloadUUID:installed];

  return v3 != 0;
}

- (id)findConfigurationByConfigurationID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = dCopy;
  if (dCopy && [dCopy length])
  {
    currentConfigurations = [(NEProfileIngestion *)self currentConfigurations];

    if (!currentConfigurations)
    {
      goto LABEL_17;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    currentConfigurations2 = [(NEProfileIngestion *)self currentConfigurations];
    currentConfigurations = [currentConfigurations2 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (currentConfigurations)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != currentConfigurations; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(currentConfigurations2);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          identifier = [v10 identifier];
          uUIDString = [identifier UUIDString];
          isEqualToString = objc_msgSend_isEqualToString_(uUIDString);

          if (isEqualToString)
          {
            currentConfigurations = v10;
            goto LABEL_16;
          }
        }

        currentConfigurations = [currentConfigurations2 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (currentConfigurations)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    currentConfigurations2 = ne_log_obj();
    if (os_log_type_enabled(currentConfigurations2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA83C000, currentConfigurations2, OS_LOG_TYPE_DEBUG, "findConfigurationByConfigurationID failed: empty identifier", buf, 2u);
    }

    currentConfigurations = 0;
  }

LABEL_16:

LABEL_17:

  return currentConfigurations;
}

- (id)findConfigurationByPayloadUUID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v30 = dCopy;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "findConfigurationByPayloadUUID for payloadUUID %@", buf, 0xCu);
  }

  currentConfigurations = [(NEProfileIngestion *)self currentConfigurations];

  if (currentConfigurations)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    currentConfigurations2 = [(NEProfileIngestion *)self currentConfigurations];
    v8 = [currentConfigurations2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(currentConfigurations2);
          }

          v12 = *(*(&v24 + 1) + 8 * v11);
          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            payloadInfo = [v12 payloadInfo];
            if (payloadInfo)
            {
              payloadInfo2 = [v12 payloadInfo];
              payloadUUID = [payloadInfo2 payloadUUID];
              *buf = 138412290;
              v30 = payloadUUID;
              _os_log_debug_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEBUG, "findConfigurationByPayloadUUID check config with payloadUUID %@", buf, 0xCu);
            }

            else
            {
              *buf = 138412290;
              v30 = 0;
              _os_log_debug_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEBUG, "findConfigurationByPayloadUUID check config with payloadUUID %@", buf, 0xCu);
            }
          }

          payloadInfo3 = [v12 payloadInfo];
          if (payloadInfo3)
          {
            v15 = payloadInfo3;
            payloadInfo4 = [v12 payloadInfo];
            payloadUUID2 = [payloadInfo4 payloadUUID];
            isEqualToString = objc_msgSend_isEqualToString_(payloadUUID2);

            if (isEqualToString)
            {
              currentConfigurations = v12;
              goto LABEL_21;
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v22 = [currentConfigurations2 countByEnumeratingWithState:&v24 objects:v28 count:16];
        v9 = v22;
      }

      while (v22);
    }

    currentConfigurations = 0;
LABEL_21:
  }

  return currentConfigurations;
}

- (id)setAsideConfigurationName:(id)name unsetAside:(BOOL)aside
{
  asideCopy = aside;
  v30 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = [(NEProfileIngestion *)self findConfigurationByConfigurationID:nameCopy];
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v26 = 138412802;
    *v27 = nameCopy;
    *&v27[8] = 1024;
    *&v27[10] = asideCopy;
    v28 = 2112;
    v29 = v7;
    _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "setAsideConfigurationName: configID %@, unset %d, configurations %@", &v26, 0x1Cu);
  }

  if (!v7)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v26 = 138412290;
      *v27 = nameCopy;
      _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "setAsideConfigurationName can't find configuration of ID  %@", &v26, 0xCu);
    }

    goto LABEL_16;
  }

  name = [v7 name];
  name3 = name;
  if (asideCopy)
  {
    v11 = [name hasSuffix:nameCopy];

    if (!v11)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v26 = 138412290;
        *v27 = nameCopy;
        v17 = "setAsideConfigurationName: unset-aside failed. Name '%@' is not a set-aside name";
        goto LABEL_28;
      }

LABEL_16:
      v21 = 0;
      goto LABEL_17;
    }

    name2 = [v7 name];
    v13 = [name2 length];
    v14 = [nameCopy length];

    v15 = v13 - v14;
    if (v13 == v14)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v26 = 138412290;
        *v27 = nameCopy;
        v17 = "setAsideConfigurationName: unset-aside failed. Name '%@' would be empty after unset-aside";
LABEL_28:
        _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, v17, &v26, 0xCu);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    name3 = [v7 name];
    v18 = [name3 substringToIndex:v15];
  }

  else
  {
    v18 = [name stringByAppendingString:nameCopy];
  }

  v16 = v18;

  v19 = [(NEProfileIngestion *)self findConfigurationByName:v16];

  if (v19)
  {
    v20 = ne_log_obj();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

      goto LABEL_16;
    }

    v26 = 67109378;
    *v27 = asideCopy;
    *&v27[4] = 2112;
    *&v27[6] = v16;
    v25 = "setAsideConfigurationName failed (unSetAside = %d), name '%@' in use.";
LABEL_26:
    _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, v25, &v26, 0x12u);
    goto LABEL_14;
  }

  payloadInfo = [v7 payloadInfo];

  if (!payloadInfo)
  {
    v20 = ne_log_obj();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v26 = 67109378;
    *v27 = asideCopy;
    *&v27[4] = 2112;
    *&v27[6] = v16;
    v25 = "setAsideConfigurationName failed (unSetAside = %d), configuration '%@' is missing payload info.";
    goto LABEL_26;
  }

  payloadInfo2 = [v7 payloadInfo];
  [payloadInfo2 setIsSetAside:!asideCopy];

  [v7 setName:v16];
  [(NEProfileIngestion *)self saveConfiguration:v7 returnError:0];
  v21 = v7;
LABEL_17:

  return v21;
}

- (id)findConfigurationByName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  currentConfigurations = [(NEProfileIngestion *)self currentConfigurations];

  if (currentConfigurations)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    currentConfigurations2 = [(NEProfileIngestion *)self currentConfigurations];
    currentConfigurations = [currentConfigurations2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (currentConfigurations)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != currentConfigurations; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(currentConfigurations2);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          name = [v9 name];
          isEqualToString = objc_msgSend_isEqualToString_(name);

          if (isEqualToString)
          {
            currentConfigurations = v9;
            goto LABEL_12;
          }
        }

        currentConfigurations = [currentConfigurations2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (currentConfigurations)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return currentConfigurations;
}

- (BOOL)loadConfigurationsForceReloadFromDisk
{
  selfCopy = self;
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    [(NEProfileIngestion *)self currentConfigurations];

    manager = [(NEProfileIngestion *)selfCopy manager];
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__NEProfileIngestion_loadConfigurationsWithRefreshOption___block_invoke;
    v12[3] = &unk_1E7F0A668;
    v12[4] = selfCopy;
    v12[5] = &v13;
    [manager loadConfigurationsWithCompletionQueue:v4 handler:v12];

    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = *(v14 + 24);
      currentConfigurations = [(NEProfileIngestion *)selfCopy currentConfigurations];
      v11 = [currentConfigurations count];
      *buf = 138413058;
      v18 = v8;
      v19 = 1024;
      v20 = 1;
      v21 = 1024;
      v22 = v9;
      v23 = 2048;
      v24 = v11;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%@ loadConfigurationsWithRefreshOption (refresh = %d) done, error = %d, #configs loaded %lu", buf, 0x22u);
    }

    LOBYTE(selfCopy) = *(v14 + 24) ^ 1;
    _Block_object_dispose(&v13, 8);
  }

  return selfCopy & 1;
}

void __58__NEProfileIngestion_loadConfigurationsWithRefreshOption___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = convert_error_to_string(v6);
      v15 = 138412290;
      v16 = v14;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "loadConfigurationsWithRefreshOption Failed to load the current configurations: %@", &v15, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v8 = [v5 mutableCopy];
  [*(a1 + 32) setCurrentConfigurations:v8];

  v9 = [*(a1 + 32) ingestedConfiguration];

  if (v9)
  {
    v10 = [*(a1 + 32) ingestedConfiguration];
    v11 = [v10 identifier];
    v12 = [v11 UUIDString];

    v13 = [*(a1 + 32) findConfigurationByConfigurationID:v12];
    if (v13)
    {
      [*(a1 + 32) setIngestedConfiguration:v13];
    }
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NEProfileIngestion;
  [(NEProfileIngestion *)&v2 dealloc];
}

- (NEProfileIngestion)initWithNameAndType:(id)type payloadType:(id)payloadType
{
  v26 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  payloadTypeCopy = payloadType;
  v19.receiver = self;
  v19.super_class = NEProfileIngestion;
  v8 = [(NEProfileIngestion *)&v19 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    clientName = v8->_clientName;
    v8->_clientName = v9;

    v11 = [payloadTypeCopy copy];
    payloadType = v8->_payloadType;
    v8->_payloadType = v11;

    initSynchronous = [[NEConfigurationManager alloc] initSynchronous];
    manager = v8->_manager;
    v8->_manager = initSynchronous;

    if (!v8->_manager)
    {

      v8 = 0;
    }
  }

  v15 = ne_log_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_opt_class();
    *buf = 138412802;
    v21 = v17;
    v22 = 2112;
    v23 = typeCopy;
    v24 = 2112;
    v25 = payloadTypeCopy;
    v18 = v17;
    _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "%@ initWithNameAndType name %@, type %@", buf, 0x20u);
  }

  return v8;
}

+ (id)getServiceIDForPayload:(id)payload
{
  v38 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v4 = [payloadCopy objectForKeyedSubscript:@"PayloadType"];
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v37 = payloadCopy;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "getServiceIDForPayload start with payload stub %@", buf, 0xCu);
  }

  if ((objc_msgSend_isEqualToString_(v4) & 1) == 0 && (objc_msgSend_isEqualToString_(v4) & 1) == 0 && (objc_msgSend_isEqualToString_(v4) & 1) == 0 && (objc_msgSend_isEqualToString_(v4) & 1) == 0 && (objc_msgSend_isEqualToString_(v4) & 1) == 0 && (objc_msgSend_isEqualToString_(v4) & 1) == 0 && (objc_msgSend_isEqualToString_(v4) & 1) == 0)
  {
    log = ne_log_obj();
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA83C000, log, OS_LOG_TYPE_DEBUG, "getServiceIDForPayload: ignore non-NetworkExtension payload", buf, 2u);
    }

    goto LABEL_40;
  }

  log = [payloadCopy objectForKeyedSubscript:@"PayloadUUID"];
  if (!log)
  {
    log = ne_log_obj();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, log, OS_LOG_TYPE_ERROR, "getServiceIDForPayload payload stub has no payload UUID", buf, 2u);
    }

    goto LABEL_40;
  }

  v6 = SCPreferencesCreate(*MEMORY[0x1E695E480], @"NEProfileIngestion Migrator", 0);
  if (!v6)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "getServiceIDForPayload failed to create SCPreference", buf, 2u);
    }

LABEL_40:
    v22 = 0;
    goto LABEL_49;
  }

  v7 = v6;
  v8 = SCNetworkServiceCopyAll(v6);
  if (!v8)
  {
    v22 = 0;
    goto LABEL_46;
  }

  v9 = v8;
  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v27 = [(__CFArray *)v9 count];
    *buf = 134217984;
    v37 = v27;
    _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "getServiceIDForPayload found %lu services", buf, 0xCu);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = v9;
  v12 = [(__CFArray *)v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v12)
  {
    v22 = 0;
    goto LABEL_45;
  }

  v13 = v12;
  v28 = v4;
  v29 = payloadCopy;
  v14 = *v32;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v32 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v31 + 1) + 8 * i);
      if (!v16 || (v17 = SCNetworkServiceCopyProtocol(*(*(&v31 + 1) + 8 * i), @"com.apple.payload")) == 0)
      {
        v20 = 0;
        v21 = 0;
        goto LABEL_32;
      }

      v18 = v17;
      v19 = SCNetworkProtocolGetConfiguration(v17);
      v20 = v19;
      if (!v19)
      {
        v21 = 0;
LABEL_31:
        CFRelease(v18);
        goto LABEL_32;
      }

      v21 = [v19 objectForKeyedSubscript:@"PayloadUUID"];
      if (!isa_nsstring(v21) || !objc_msgSend_isEqualToString_(v21))
      {
        goto LABEL_31;
      }

      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:SCNetworkServiceGetServiceID(v16)];
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v22;
        _os_log_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEFAULT, "getServiceIDForPayload found matching service '%@'", buf, 0xCu);
      }

      CFRelease(v18);
      if (v22)
      {

        goto LABEL_43;
      }

LABEL_32:
    }

    v13 = [(__CFArray *)v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  v22 = 0;
LABEL_43:
  v4 = v28;
  payloadCopy = v29;
LABEL_45:

  CFRelease(v11);
LABEL_46:
  CFRelease(v7);
  v25 = ne_log_obj();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v37 = v22;
    _os_log_debug_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEBUG, "getServiceIDForPayload found matching service %@", buf, 0xCu);
  }

LABEL_49:

  return v22;
}

@end