@interface NEVPNApp
+ (BOOL)compareAppRules:(id)rules newAppRules:(id)appRules noExistingDomain:(BOOL *)domain;
+ (id)findRuleWithSameDomains:(id)domains matchSigningIdentifier:(id)identifier startIndex:(int64_t *)index;
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)installSigningIdentifiersWithFlowDivertControlSocket:(int)socket;
- (BOOL)removeAppRuleByID:(id)d;
- (NEVPNApp)init;
- (NEVPNApp)initWithCoder:(id)coder;
- (id)copyAppRuleByID:(id)d;
- (id)copyAppRuleIDs;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)updateAppRulesForUID:(unsigned int)d;
@end

@implementation NEVPNApp

- (void)updateAppRulesForUID:(unsigned int)d
{
  v3 = *&d;
  v48 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_appRules;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v43;
    v9 = 0x1E7F04000uLL;
    v31 = v3;
    v30 = *v43;
    do
    {
      v10 = 0;
      v32 = v6;
      do
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v42 + 1) + 8 * v10);
        matchSigningIdentifier = [v11 matchSigningIdentifier];

        if (matchSigningIdentifier)
        {
          v13 = *(v9 + 3208);
          matchSigningIdentifier2 = [v11 matchSigningIdentifier];
          v41 = 0;
          v15 = [v13 bundleProxyForIdentifier:matchSigningIdentifier2 uid:v3 plugins:&v41];
          v16 = v41;

          v36 = v16;
          if (v15 && [v16 count])
          {
            v33 = v15;
            v34 = v10;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v17 = v16;
            v18 = [v17 countByEnumeratingWithState:&v37 objects:v46 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v38;
              do
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v38 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v37 + 1) + 8 * i);
                  identifier = [v22 identifier];
                  v24 = [(NEVPNApp *)self copyAppRuleByID:identifier];

                  if (!v24)
                  {
                    v25 = [NEAppRule alloc];
                    identifier2 = [v22 identifier];
                    v27 = [(NEAppRule *)v25 initWithSigningIdentifier:identifier2];

                    if (v27)
                    {
                      if (!v7)
                      {
                        v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      }

                      [v7 addObject:v27];
                    }
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v37 objects:v46 count:16];
              }

              while (v19);
            }

            v3 = v31;
            v8 = v30;
            v6 = v32;
            v15 = v33;
            v9 = 0x1E7F04000;
            v10 = v34;
          }
        }

        ++v10;
      }

      while (v10 != v6);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if ([v7 count])
  {
    appRules = [(NEVPNApp *)self appRules];
    v29 = [appRules arrayByAddingObjectsFromArray:v7];
    [(NEVPNApp *)self setAppRules:v29];
  }
}

- (BOOL)installSigningIdentifiersWithFlowDivertControlSocket:(int)socket
{
  v63 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  if (self)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    appRules = [(NEVPNApp *)self appRules];
    v6 = [appRules countByEnumeratingWithState:&v54 objects:buf count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v55;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v55 != v8)
          {
            objc_enumerationMutation(appRules);
          }

          v10 = *(*(&v54 + 1) + 8 * i);
          matchSigningIdentifier = [v10 matchSigningIdentifier];
          if (matchSigningIdentifier)
          {
            v12 = matchSigningIdentifier;
            matchSigningIdentifier2 = [v10 matchSigningIdentifier];
            v14 = [v4 objectForKeyedSubscript:matchSigningIdentifier2];

            if (!v14)
            {
              matchSigningIdentifier3 = [v10 matchSigningIdentifier];
              matchSigningIdentifier4 = [v10 matchSigningIdentifier];
              [v4 setObject:matchSigningIdentifier3 forKeyedSubscript:matchSigningIdentifier4];
            }
          }
        }

        v7 = [appRules countByEnumeratingWithState:&v54 objects:buf count:16];
      }

      while (v7);
    }

    v17 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];
  }

  else
  {
    v17 = 0;
  }

  if ([(NEVPN *)self tunnelType]== 2)
  {
    if ([v17 count])
    {
      v18 = NEFlowTLVMsgCreate();
      NEFlowTLVAdd();
      v19 = send(socket, v18, v50 - v52, 0);
      v20 = MEMORY[0x1E695E480];
      if (v19 < 0)
      {
        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v40 = __error();
          v41 = strerror(*v40);
          *buf = 136315138;
          v60 = v41;
          _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, "Failed to send a FLOW_DIVERT_PKT_APP_MAP_CREATE message: %s", buf, 0xCu);
        }

        v32 = 0;
        v21 = 0;
      }

      else
      {
        CFAllocatorDeallocate(*MEMORY[0x1E695E480], v18);
        v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
        allKeys = [v17 allKeys];
        if ([allKeys count])
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          do
          {
            if ([allKeys count])
            {
              v26 = 0;
              v27 = 0;
              do
              {
                if (v25 != v27)
                {
                  v28 = [allKeys objectAtIndexedSubscript:v23];
                  v29 = [allKeys objectAtIndexedSubscript:v26];
                  v30 = [v28 commonPrefixWithString:v29 options:2];

                  if ([v30 length])
                  {
                    [v21 setObject:v30 forKeyedSubscript:v30];
                  }
                }

                v26 = ++v27;
              }

              while ([allKeys count] > v27);
            }

            v31 = [allKeys objectAtIndexedSubscript:v23];
            v24 += strlen([v31 cStringUsingEncoding:1]);

            v23 = ++v25;
          }

          while ([allKeys count] > v25);
          v20 = MEMORY[0x1E695E480];
        }

        v53 = [v21 count];
        [allKeys count];
        v18 = NEFlowTLVMsgCreate();
        NEFlowTLVAdd();
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v32 = allKeys;
        v35 = [v32 countByEnumeratingWithState:&v46 objects:v58 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v47;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v47 != v37)
              {
                objc_enumerationMutation(v32);
              }

              strlen([*(*(&v46 + 1) + 8 * j) cStringUsingEncoding:1]);
              NEFlowTLVAdd();
            }

            v36 = [v32 countByEnumeratingWithState:&v46 objects:v58 count:16];
          }

          while (v36);
        }

        if ((send(socket, v18, v50 - v52, 0) & 0x8000000000000000) == 0)
        {
          v33 = 1;
          if (!v18)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v42 = (v50 - v52);
          v43 = __error();
          v44 = strerror(*v43);
          *buf = 134218242;
          v60 = v42;
          v61 = 2080;
          v62 = v44;
          _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, "Failed to send a FLOW_DIVERT_PKT_APP_MAP_CREATE with size %lu bytes: %s", buf, 0x16u);
        }
      }

      v33 = 0;
      if (v18)
      {
LABEL_45:
        CFAllocatorDeallocate(*v20, v18);
      }
    }

    else
    {
      v32 = 0;
      v21 = 0;
      v33 = 1;
    }
  }

  else
  {
    v32 = 0;
    v21 = 0;
    v33 = 0;
  }

LABEL_46:

  return v33;
}

- (id)copyAppRuleIDs
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_appRules, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_appRules;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        matchSigningIdentifier = [*(*(&v12 + 1) + 8 * v8) matchSigningIdentifier];
        [v3 addObject:matchSigningIdentifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  return v10;
}

- (BOOL)removeAppRuleByID:(id)d
{
  dCopy = d;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_appRules];
  if ([v5 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v5 objectAtIndex:v6];
      matchSigningIdentifier = [v7 matchSigningIdentifier];
      isEqualToString = objc_msgSend_isEqualToString_(matchSigningIdentifier);

      if (isEqualToString)
      {
        break;
      }

      if (++v6 >= [v5 count])
      {
        goto LABEL_5;
      }
    }

    [v5 removeObjectAtIndex:v6];
    objc_storeStrong(&self->_appRules, v5);

    v10 = 1;
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (id)copyAppRuleByID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = selfCopy->_appRules;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        matchSigningIdentifier = [v10 matchSigningIdentifier];
        isEqualToString = objc_msgSend_isEqualToString_(matchSigningIdentifier);

        if (isEqualToString)
        {
          v7 = [v10 copy];
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);
  return v7;
}

- (id)copyLegacyDictionary
{
  v6.receiver = self;
  v6.super_class = NEVPNApp;
  copyLegacyDictionary = [(NEVPN *)&v6 copyLegacyDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPN isOnDemandEnabled](self, "isOnDemandEnabled")}];
  [copyLegacyDictionary setObject:v4 forKeyedSubscript:*MEMORY[0x1E69827C0]];

  return copyLegacyDictionary;
}

- (id)initFromLegacyDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = NEVPNApp;
  v5 = [(NEVPN *)&v27 initFromLegacyDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = *MEMORY[0x1E69827C0];
    v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69827C0]];
    v8 = isa_nsnumber(v7);

    if ((v8 & 1) != 0 || (v6 = *MEMORY[0x1E69827B8], [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69827B8]], v9 = objc_claimAutoreleasedReturnValue(), v10 = isa_nsnumber(v9), v9, v10))
    {
      v11 = [dictionaryCopy objectForKeyedSubscript:v6];
      [v5 setOnDemandEnabled:{objc_msgSend(v11, "BOOLValue")}];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982728]];
    if (isa_nsarray(v12))
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v23 + 1) + 8 * i);
            if (isa_nsdictionary(v19))
            {
              v20 = [NEAppRule alloc];
              v21 = [(NEAppRule *)v20 initFromLegacyDictionary:v19, v23];
              if (v21)
              {
                [v13 addObject:v21];
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v16);
      }

      if ([v13 count])
      {
        [v5 setAppRules:v13];
      }
    }
  }

  return v5;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = objc_alloc(MEMORY[0x1E696AD60]);
  v13.receiver = self;
  v13.super_class = NEVPNApp;
  v8 = [(NEVPN *)&v13 descriptionWithIndent:v5 options:options];
  v9 = [v7 initWithString:v8];

  appRules = [(NEVPNApp *)self appRules];
  [v9 appendPrettyObject:appRules withName:@"appRules" andIndent:v5 options:options];

  excludedDomains = [(NEVPNApp *)self excludedDomains];
  [v9 appendPrettyObject:excludedDomains withName:@"excludedDomains" andIndent:v5 options:options];

  return v9;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v100 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v94.receiver = self;
  v94.super_class = NEVPNApp;
  v5 = [(NEVPN *)&v94 checkValidityAndCollectErrors:errorsCopy];
  appRules = [(NEVPNApp *)self appRules];

  if (appRules)
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    selfCopy = self;
    appRules2 = [(NEVPNApp *)self appRules];
    v8 = [appRules2 countByEnumeratingWithState:&v90 objects:v99 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v91;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          v12 = v5;
          if (*v91 != v10)
          {
            objc_enumerationMutation(appRules2);
          }

          v13 = *(*(&v90 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = [v13 checkValidityAndCollectErrors:errorsCopy] & v12;
          }

          else
          {
            [NEConfiguration addError:errorsCopy toList:?];
            v5 = 0;
          }
        }

        v9 = [appRules2 countByEnumeratingWithState:&v90 objects:v99 count:16];
      }

      while (v9);
    }

    self = selfCopy;
  }

  excludedDomains = [(NEVPNApp *)self excludedDomains];
  v15 = [excludedDomains count];

  if (v15)
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    excludedDomains2 = [(NEVPNApp *)self excludedDomains];
    v17 = [excludedDomains2 countByEnumeratingWithState:&v86 objects:v98 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = v5;
      v20 = *v87;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v87 != v20)
          {
            objc_enumerationMutation(excludedDomains2);
          }

          v22 = *(*(&v86 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v22 length])
          {
            v23 = NEResourcesCopyLocalizedNSString(@"APP_VPN_EMPTY_EXCLUDED_DOMAIN", @"APP_VPN_EMPTY_EXCLUDED_DOMAIN");
            [NEConfiguration addError:v23 toList:errorsCopy];

            LOBYTE(v5) = 0;
            goto LABEL_25;
          }
        }

        v18 = [excludedDomains2 countByEnumeratingWithState:&v86 objects:v98 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      LOBYTE(v5) = v19;
    }

LABEL_25:
  }

  if ([(NEVPNApp *)self restrictDomains])
  {
    protocol = [(NEVPN *)self protocol];
    serverAddress = [protocol serverAddress];

    if (serverAddress)
    {
      v26 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:serverAddress];
      v27 = v26;
      if (!v26 || ([v26 host], (v28 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v28 = serverAddress;
      }

      v29 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"."];
      v30 = [v28 stringByTrimmingCharactersInSet:v29];

      v65 = v30;
      v31 = [v30 componentsSeparatedByString:@"."];
      if ([v31 count] > 1)
      {
        v62 = v27;
        v63 = serverAddress;
        v64 = v5;
        v67 = errorsCopy;
        v61 = v31;
        v60 = [v31 subarrayWithRange:{objc_msgSend(v31, "count") - 2, 2}];
        [v60 componentsJoinedByString:@"."];
        v34 = v36 = self;
        v73 = [@"." stringByAppendingString:v34];
        v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        obj = [(NEVPNApp *)v36 appRules];
        v69 = [obj countByEnumeratingWithState:&v82 objects:v97 count:16];
        if (v69)
        {
          v68 = *v83;
          do
          {
            v38 = 0;
            do
            {
              if (*v83 != v68)
              {
                objc_enumerationMutation(obj);
              }

              v70 = v38;
              v39 = *(*(&v82 + 1) + 8 * v38);
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v81 = 0u;
              matchDomains = [v39 matchDomains];
              v41 = [matchDomains countByEnumeratingWithState:&v78 objects:v96 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v79;
                do
                {
                  for (k = 0; k != v42; ++k)
                  {
                    if (*v79 != v43)
                    {
                      objc_enumerationMutation(matchDomains);
                    }

                    v45 = *(*(&v78 + 1) + 8 * k);
                    v46 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*."];
                    v47 = [v45 stringByTrimmingCharactersInSet:v46];

                    v48 = [v47 length];
                    if (v48 > [v34 length] && !objc_msgSend(v47, "hasSuffix:", v73) || (v49 = objc_msgSend(v47, "length"), v49 == objc_msgSend(v34, "length")) && !objc_msgSend_isEqualToString_(v47) || (v50 = objc_msgSend(v47, "length"), v50 < objc_msgSend(v34, "length")))
                    {
                      [v37 setObject:v47 forKeyedSubscript:v47];
                    }
                  }

                  v42 = [matchDomains countByEnumeratingWithState:&v78 objects:v96 count:16];
                }

                while (v42);
              }

              v38 = v70 + 1;
            }

            while (v70 + 1 != v69);
            v69 = [obj countByEnumeratingWithState:&v82 objects:v97 count:16];
          }

          while (v69);
        }

        LOBYTE(v5) = v64;
        if ([v37 count])
        {
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v71 = v37;
          v51 = [v71 countByEnumeratingWithState:&v74 objects:v95 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v75;
            do
            {
              for (m = 0; m != v52; ++m)
              {
                if (*v75 != v53)
                {
                  objc_enumerationMutation(v71);
                }

                v55 = *(*(&v74 + 1) + 8 * m);
                v56 = objc_alloc(MEMORY[0x1E696AEC0]);
                v57 = NEResourcesCopyLocalizedNSString(@"APP_VPN_INVALID_MATCH_DOMAIN", @"APP_VPN_INVALID_MATCH_DOMAIN");
                v58 = [v56 initWithFormat:v57, v55, v34];
                [v67 addObject:v58];
              }

              v52 = [v71 countByEnumeratingWithState:&v74 objects:v95 count:16];
            }

            while (v52);
          }

          LOBYTE(v5) = 0;
        }

        errorsCopy = v67;
        v27 = v62;
        serverAddress = v63;
        v33 = v60;
        v31 = v61;
      }

      else
      {
        v32 = objc_alloc(MEMORY[0x1E696AEC0]);
        v33 = NEResourcesCopyLocalizedNSString(@"APP_VPN_INVALID_DOMAIN", @"APP_VPN_INVALID_DOMAIN");
        v34 = [v32 initWithFormat:v33, objc_msgSend(v31, "count")];
        [errorsCopy addObject:v34];
        LOBYTE(v5) = 0;
      }

      v35 = v65;
    }

    else
    {
      v35 = NEResourcesCopyLocalizedNSString(@"APP_VPN_NO_DOMAIN", @"APP_VPN_NO_DOMAIN");
      [errorsCopy addObject:v35];
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = NEVPNApp;
  v4 = [(NEVPN *)&v13 copyWithZone:zone];
  appRules = [(NEVPNApp *)self appRules];

  if (appRules)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    appRules2 = [(NEVPNApp *)self appRules];
    v8 = [v6 initWithArray:appRules2 copyItems:1];
    [v4 setAppRules:v8];
  }

  v9 = objc_alloc(MEMORY[0x1E695DEC8]);
  excludedDomains = [(NEVPNApp *)self excludedDomains];
  v11 = [v9 initWithArray:excludedDomains copyItems:1];
  [v4 setExcludedDomains:v11];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NEVPNApp;
  coderCopy = coder;
  [(NEVPN *)&v7 encodeWithCoder:coderCopy];
  v5 = [(NEVPNApp *)self appRules:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"Rules"];

  excludedDomains = [(NEVPNApp *)self excludedDomains];
  [coderCopy encodeObject:excludedDomains forKey:@"ExcludedDomains"];
}

- (NEVPNApp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = NEVPNApp;
  v5 = [(NEVPN *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Rules"];
    appRules = v5->_appRules;
    v5->_appRules = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"ExcludedDomains"];
    excludedDomains = v5->_excludedDomains;
    v5->_excludedDomains = v14;
  }

  return v5;
}

- (NEVPNApp)init
{
  v5.receiver = self;
  v5.super_class = NEVPNApp;
  v2 = [(NEVPN *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NEVPN *)v2 setEnabled:1];
    [(NEVPN *)v3 setTunnelType:2];
    v3->_noRestriction = 1;
  }

  return v3;
}

+ (id)findRuleWithSameDomains:(id)domains matchSigningIdentifier:(id)identifier startIndex:(int64_t *)index
{
  v59 = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  identifierCopy = identifier;
  if (!domainsCopy)
  {
    goto LABEL_14;
  }

  v8 = [domainsCopy count];
  v9 = 0;
  if (!index || !v8)
  {
    goto LABEL_15;
  }

  indexCopy = index;
  v11 = *index;
  if (v11 >= [domainsCopy count])
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v12 = domainsCopy;
  v9 = [v12 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v9)
  {
    v47 = indexCopy;
    v43 = domainsCopy;
    v13 = 0;
    v14 = *v54;
LABEL_7:
    v15 = 0;
    v16 = v13;
    while (1)
    {
      if (*v54 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v13 = *(*(&v53 + 1) + 8 * v15);

      matchSigningIdentifier = [v13 matchSigningIdentifier];
      isEqualToString = objc_msgSend_isEqualToString_(matchSigningIdentifier);

      if (isEqualToString)
      {
        break;
      }

      v15 = v15 + 1;
      v16 = v13;
      if (v9 == v15)
      {
        v9 = [v12 countByEnumeratingWithState:&v53 objects:v58 count:16];
        if (v9)
        {
          goto LABEL_7;
        }

        v13 = v12;
        domainsCopy = v43;
        goto LABEL_39;
      }
    }

    if (!v13)
    {
      v9 = 0;
      domainsCopy = v43;
      goto LABEL_15;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v12;
    v20 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v45 = 0;
      v23 = *v50;
      v24 = v47;
      do
      {
        v25 = 0;
        v44 = v22;
        do
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(obj);
          }

          if (v22 >= *v24)
          {
            v26 = *(*(&v49 + 1) + 8 * v25);
            matchSigningIdentifier2 = [v26 matchSigningIdentifier];
            matchSigningIdentifier3 = [v13 matchSigningIdentifier];
            v29 = objc_msgSend_isEqualToString_(matchSigningIdentifier2);

            if ((v29 & 1) == 0)
            {
              matchDomains = [v26 matchDomains];
              v31 = [matchDomains count];

              if (v31)
              {
                matchDomains2 = [v26 matchDomains];
                v33 = [matchDomains2 count];
                matchDomains3 = [v13 matchDomains];
                v35 = [matchDomains3 count];

                if (v33 == v35)
                {
                  v36 = MEMORY[0x1E695DFD8];
                  matchDomains4 = [v26 matchDomains];
                  v38 = [v36 setWithArray:matchDomains4];

                  v39 = MEMORY[0x1E695DFD8];
                  matchDomains5 = [v13 matchDomains];
                  v41 = [v39 setWithArray:matchDomains5];

                  if ([v38 isEqualToSet:v41])
                  {
                    matchSigningIdentifier4 = [v26 matchSigningIdentifier];

                    v45 = matchSigningIdentifier4;
                  }

                  v24 = v47;
                }

                else
                {
                  v24 = v47;
                }
              }
            }
          }

          ++v25;
          ++v22;
        }

        while (v21 != v25);
        v22 = v44 + v21;
        v21 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v21);
    }

    else
    {
      v22 = 0;
      v45 = 0;
      v24 = v47;
    }

    *v24 = v22;
    domainsCopy = v43;
    v9 = v45;
  }

  else
  {
    v13 = v12;
  }

LABEL_39:

LABEL_15:

  return v9;
}

+ (BOOL)compareAppRules:(id)rules newAppRules:(id)appRules noExistingDomain:(BOOL *)domain
{
  v88 = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  appRulesCopy = appRules;
  if (!rulesCopy || ![rulesCopy count])
  {
LABEL_53:
    v53 = 0;
    if (domain)
    {
      *domain = 1;
    }

    goto LABEL_60;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v9 = rulesCopy;
  v10 = [v9 countByEnumeratingWithState:&v79 objects:v87 count:16];
  if (!v10)
  {

    goto LABEL_53;
  }

  v11 = v10;
  v60 = rulesCopy;
  v12 = 0;
  v13 = *v80;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v80 != v13)
      {
        objc_enumerationMutation(v9);
      }

      matchDomains = [*(*(&v79 + 1) + 8 * i) matchDomains];
      v12 += [matchDomains count];
    }

    v11 = [v9 countByEnumeratingWithState:&v79 objects:v87 count:16];
  }

  while (v11);

  rulesCopy = v60;
  if (!v12)
  {
    goto LABEL_53;
  }

  if (appRulesCopy && [appRulesCopy count])
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v9;
    v61 = appRulesCopy;
    v58 = [obj countByEnumeratingWithState:&v75 objects:v86 count:16];
    if (v58)
    {
      v56 = *v76;
      while (2)
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v76 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v75 + 1) + 8 * j);
          matchDomains2 = [v17 matchDomains];
          v19 = [matchDomains2 count];

          if (v19)
          {
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v20 = appRulesCopy;
            v21 = [v20 countByEnumeratingWithState:&v71 objects:v85 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v72;
LABEL_21:
              v24 = 0;
              while (1)
              {
                if (*v72 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v71 + 1) + 8 * v24);
                matchSigningIdentifier = [v17 matchSigningIdentifier];
                matchSigningIdentifier2 = [v25 matchSigningIdentifier];
                isEqualToString = objc_msgSend_isEqualToString_(matchSigningIdentifier);

                if (isEqualToString)
                {
                  break;
                }

                if (v22 == ++v24)
                {
                  v22 = [v20 countByEnumeratingWithState:&v71 objects:v85 count:16];
                  if (v22)
                  {
                    goto LABEL_21;
                  }

                  goto LABEL_57;
                }
              }

              matchDomains3 = [v17 matchDomains];
              v30 = [matchDomains3 count];
              matchDomains4 = [v25 matchDomains];
              v32 = [matchDomains4 count];

              if (v30 == v32)
              {
                v33 = MEMORY[0x1E695DFD8];
                matchDomains5 = [v17 matchDomains];
                v35 = [v33 setWithArray:matchDomains5];

                v36 = MEMORY[0x1E695DFD8];
                matchDomains6 = [v25 matchDomains];
                v38 = [v36 setWithArray:matchDomains6];

                LOBYTE(matchDomains6) = [v35 isEqualToSet:v38];
                if (matchDomains6)
                {

                  appRulesCopy = v61;
                  continue;
                }
              }
            }

LABEL_57:

            v54 = obj;
LABEL_59:

            v53 = 1;
            rulesCopy = v60;
            appRulesCopy = v61;
            goto LABEL_60;
          }
        }

        v58 = [obj countByEnumeratingWithState:&v75 objects:v86 count:16];
        if (v58)
        {
          continue;
        }

        break;
      }
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v57 = appRulesCopy;
    v39 = [v57 countByEnumeratingWithState:&v67 objects:v84 count:16];
    if (v39)
    {
      v40 = v39;
      v59 = *v68;
      while (2)
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v68 != v59)
          {
            objc_enumerationMutation(v57);
          }

          v42 = *(*(&v67 + 1) + 8 * k);
          matchDomains7 = [v42 matchDomains];
          v44 = [matchDomains7 count];

          if (v44)
          {
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v45 = obj;
            v46 = [v45 countByEnumeratingWithState:&v63 objects:v83 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v64;
              while (2)
              {
                for (m = 0; m != v47; ++m)
                {
                  if (*v64 != v48)
                  {
                    objc_enumerationMutation(v45);
                  }

                  matchSigningIdentifier3 = [*(*(&v63 + 1) + 8 * m) matchSigningIdentifier];
                  matchSigningIdentifier4 = [v42 matchSigningIdentifier];
                  v52 = objc_msgSend_isEqualToString_(matchSigningIdentifier3);

                  if (v52)
                  {

                    appRulesCopy = v61;
                    goto LABEL_49;
                  }
                }

                v47 = [v45 countByEnumeratingWithState:&v63 objects:v83 count:16];
                if (v47)
                {
                  continue;
                }

                break;
              }
            }

            v54 = v57;
            goto LABEL_59;
          }

LABEL_49:
          ;
        }

        v40 = [v57 countByEnumeratingWithState:&v67 objects:v84 count:16];
        if (v40)
        {
          continue;
        }

        break;
      }
    }

    v53 = 0;
    rulesCopy = v60;
  }

  else
  {
    v53 = 1;
  }

LABEL_60:

  return v53;
}

@end