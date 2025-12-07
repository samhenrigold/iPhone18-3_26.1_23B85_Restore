@interface CoreDAVCurrentUserPrivilegeSetItem
+ (id)copyParseRules;
- (BOOL)hasPrivilegeWithNameSpace:(id)space andName:(id)name;
- (id)description;
- (void)addPrivilege:(id)privilege;
@end

@implementation CoreDAVCurrentUserPrivilegeSetItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVCurrentUserPrivilegeSetItem;
  v4 = [(CoreDAVItem *)&v7 description];
  [v3 appendFormat:@"[%@]", v4];

  privileges = [(CoreDAVCurrentUserPrivilegeSetItem *)self privileges];
  [v3 appendFormat:@"\n  Number of privileges: [%lu]", objc_msgSend(privileges, "count")];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAC0]);
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"DAV:" elementName:@"privilege" objectClass:objc_opt_class() setterMethod:sel_addPrivilege_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"privilege"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, 0}];

    v9 = +[CoreDAVItem parseRuleCache];
    v10 = NSStringFromClass(self);
    [v9 setObject:v5 forKey:v10];
  }

  return v5;
}

- (void)addPrivilege:(id)privilege
{
  privilegeCopy = privilege;
  privileges = [(CoreDAVCurrentUserPrivilegeSetItem *)self privileges];

  if (!privileges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CoreDAVCurrentUserPrivilegeSetItem *)self setPrivileges:v6];
  }

  privileges2 = [(CoreDAVCurrentUserPrivilegeSetItem *)self privileges];
  [privileges2 addObject:privilegeCopy];
}

- (BOOL)hasPrivilegeWithNameSpace:(id)space andName:(id)name
{
  v38 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  nameCopy = name;
  if (!nameCopy || (v8 = nameCopy, ![nameCopy length]))
  {
    v24 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Non-nil and non-empty 'name' required." userInfo:0];
    objc_exception_throw(v24);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  privileges = [(CoreDAVCurrentUserPrivilegeSetItem *)self privileges];
  v26 = [privileges countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v10 = *v33;
    v27 = privileges;
    v25 = *v33;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(privileges);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        extraChildItems = [v12 extraChildItems];
        v14 = [extraChildItems countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v29;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(extraChildItems);
              }

              v18 = *(*(&v28 + 1) + 8 * j);
              name = [v18 name];
              if ([v8 isEqualToString:name])
              {
                if (!spaceCopy)
                {

LABEL_25:
                  v22 = 1;
                  privileges = v27;
                  goto LABEL_26;
                }

                nameSpace = [v18 nameSpace];
                v21 = [spaceCopy isEqualToString:nameSpace];

                if (v21)
                {
                  goto LABEL_25;
                }
              }

              else
              {
              }
            }

            v15 = [extraChildItems countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        privileges = v27;
        v10 = v25;
      }

      v22 = 0;
      v26 = [v27 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  else
  {
    v22 = 0;
  }

LABEL_26:

  return v22;
}

@end