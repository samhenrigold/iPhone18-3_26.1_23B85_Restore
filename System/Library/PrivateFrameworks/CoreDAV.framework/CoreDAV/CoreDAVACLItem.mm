@interface CoreDAVACLItem
+ (id)copyParseRules;
- (id)description;
- (id)liveACEs;
- (id)notGrantedSubsetOfACEs:(id)es;
- (void)addACE:(id)e;
@end

@implementation CoreDAVACLItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVACLItem;
  v4 = [(CoreDAVItem *)&v7 description];
  [v3 appendFormat:@"[%@]", v4];

  accessControlEntities = [(CoreDAVACLItem *)self accessControlEntities];
  [v3 appendFormat:@"\n  Number of access control entities: [%lu]", objc_msgSend(accessControlEntities, "count")];

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
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"DAV:" elementName:@"ace" objectClass:objc_opt_class() setterMethod:sel_addACE_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"ace"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, 0}];

    v9 = +[CoreDAVItem parseRuleCache];
    v10 = NSStringFromClass(self);
    [v9 setObject:v5 forKey:v10];
  }

  return v5;
}

- (void)addACE:(id)e
{
  eCopy = e;
  accessControlEntities = [(CoreDAVACLItem *)self accessControlEntities];

  if (!accessControlEntities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CoreDAVACLItem *)self setAccessControlEntities:v6];
  }

  accessControlEntities2 = [(CoreDAVACLItem *)self accessControlEntities];
  [accessControlEntities2 addObject:eCopy];
}

- (id)notGrantedSubsetOfACEs:(id)es
{
  v61 = *MEMORY[0x277D85DE8];
  esCopy = es;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = esCopy;
  v5 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v55;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v55 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v54 + 1) + 8 * i);
        principal = [v9 principal];
        hashString = [principal hashString];
        v12 = [dictionary objectForKey:hashString];

        if (!v12)
        {
          v12 = [MEMORY[0x277CBEB58] set];
          principal2 = [v9 principal];
          hashString2 = [principal2 hashString];
          [dictionary setObject:v12 forKey:hashString2];
        }

        grant = [v9 grant];
        privileges = [grant privileges];
        v17 = [privileges valueForKey:@"hashString"];
        [v12 unionSet:v17];
      }

      v6 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v6);
  }

  v37 = [CoreDAVACEItem privilegeItemWithNameSpace:@"DAV:" andName:@"all"];
  hashString3 = [v37 hashString];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  accessControlEntities = [(CoreDAVACLItem *)self accessControlEntities];
  v43 = [accessControlEntities countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v43)
  {
    v40 = dictionary;
    v41 = *v51;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v51 != v41)
        {
          objc_enumerationMutation(accessControlEntities);
        }

        v20 = *(*(&v50 + 1) + 8 * j);
        principal3 = [v20 principal];
        hashString4 = [principal3 hashString];
        v23 = [dictionary objectForKey:hashString4];

        if ([v23 count])
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          grant2 = [v20 grant];
          privileges2 = [grant2 privileges];

          v26 = [privileges2 countByEnumeratingWithState:&v46 objects:v58 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v47;
            while (2)
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v47 != v28)
                {
                  objc_enumerationMutation(privileges2);
                }

                v30 = *(*(&v46 + 1) + 8 * k);
                hashString5 = [v30 hashString];
                v32 = [hashString5 isEqualToString:hashString3];

                if (v32)
                {
                  [v23 removeAllObjects];
                  goto LABEL_26;
                }

                hashString6 = [v30 hashString];
                [v23 removeObject:hashString6];
              }

              v27 = [privileges2 countByEnumeratingWithState:&v46 objects:v58 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

LABEL_26:

          dictionary = v40;
        }
      }

      v43 = [accessControlEntities countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v43);
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __41__CoreDAVACLItem_notGrantedSubsetOfACEs___block_invoke;
  v44[3] = &unk_278E31488;
  v45 = dictionary;
  v34 = dictionary;
  v35 = [obj objectsPassingTest:v44];

  return v35;
}

uint64_t __41__CoreDAVACLItem_notGrantedSubsetOfACEs___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 principal];
  v6 = [v5 hashString];
  v7 = [v4 objectForKey:v6];

  if ([v7 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v3 grant];
    v9 = [v8 privileges];

    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) hashString];
          v14 = [v7 containsObject:v13];

          if (v14)
          {
            v10 = 1;
            goto LABEL_12;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)liveACEs
{
  accessControlEntities = [(CoreDAVACLItem *)self accessControlEntities];
  v3 = [accessControlEntities objectsPassingTest:&__block_literal_global_4];

  return v3;
}

BOOL __26__CoreDAVACLItem_liveACEs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 inherited];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 protectedItem];
    v4 = v5 == 0;
  }

  return v4;
}

@end