@interface NEPerApp
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)removeAppRuleByID:(id)d;
- (NEPerApp)init;
- (NEPerApp)initWithCoder:(id)coder;
- (id)copyAppRuleByID:(id)d;
- (id)copyAppRuleIDs;
- (id)copyCachedMachOUUIDs;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
- (void)updateAppRulesForUID:(unsigned int)d;
@end

@implementation NEPerApp

- (id)copyCachedMachOUUIDs
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  appRules = [(NEPerApp *)self appRules];
  v5 = [appRules countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(appRules);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        cachedMachOUUIDs = [v9 cachedMachOUUIDs];
        v11 = [cachedMachOUUIDs count];

        if (v11)
        {
          cachedMachOUUIDs2 = [v9 cachedMachOUUIDs];
          [v3 addObjectsFromArray:cachedMachOUUIDs2];
        }
      }

      v6 = [appRules countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v14;
}

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
                  v24 = [(NEPerApp *)self copyAppRuleByID:identifier];

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
    appRules = [(NEPerApp *)self appRules];
    v29 = [appRules arrayByAddingObjectsFromArray:v7];
    [(NEPerApp *)self setAppRules:v29];
  }
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
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  appRules = self->_appRules;
  p_appRules = &self->_appRules;
  v8 = [v5 initWithArray:appRules];
  if ([v8 count])
  {
    v9 = 0;
    while (1)
    {
      v10 = [v8 objectAtIndex:v9];
      matchSigningIdentifier = [v10 matchSigningIdentifier];
      isEqualToString = objc_msgSend_isEqualToString_(matchSigningIdentifier);

      if (isEqualToString)
      {
        break;
      }

      if (++v9 >= [v8 count])
      {
        goto LABEL_5;
      }
    }

    [v8 removeObjectAtIndex:v9];
    objc_storeStrong(p_appRules, v8);

    v13 = 1;
  }

  else
  {
LABEL_5:
    v13 = 0;
  }

  return v13;
}

- (id)copyAppRuleByID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
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

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  appRules = [(NEPerApp *)self appRules];
  [v7 appendPrettyObject:appRules withName:@"appRules" andIndent:v5 options:options];

  excludedDomains = [(NEPerApp *)self excludedDomains];
  [v7 appendPrettyObject:excludedDomains withName:@"excludedDomains" andIndent:v5 options:options];

  return v7;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v19 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  appRules = [(NEPerApp *)self appRules];

  if (appRules)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    appRules2 = [(NEPerApp *)self appRules];
    v7 = [appRules2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      v10 = 1;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(appRules2);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 &= [v12 checkValidityAndCollectErrors:errorsCopy];
          }

          else
          {
            [NEConfiguration addError:errorsCopy toList:?];
            v10 = 0;
          }
        }

        v8 = [appRules2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  appRules = [(NEPerApp *)self appRules];

  if (appRules)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    appRules2 = [(NEPerApp *)self appRules];
    v8 = [v6 initWithArray:appRules2 copyItems:1];
    [v4 setAppRules:v8];
  }

  v9 = objc_alloc(MEMORY[0x1E695DEC8]);
  excludedDomains = [(NEPerApp *)self excludedDomains];
  v11 = [v9 initWithArray:excludedDomains copyItems:1];
  [v4 setExcludedDomains:v11];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appRules = [(NEPerApp *)self appRules];
  [coderCopy encodeObject:appRules forKey:@"Rules"];

  excludedDomains = [(NEPerApp *)self excludedDomains];
  [coderCopy encodeObject:excludedDomains forKey:@"ExcludedDomains"];
}

- (NEPerApp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NEPerApp *)self init];
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

- (NEPerApp)init
{
  v3.receiver = self;
  v3.super_class = NEPerApp;
  result = [(NEPerApp *)&v3 init];
  if (result)
  {
    result->_noRestriction = 1;
  }

  return result;
}

@end