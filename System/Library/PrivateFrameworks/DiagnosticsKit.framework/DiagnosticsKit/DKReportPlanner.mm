@interface DKReportPlanner
+ (DKReportPlanner)plannerWithReportGeneratorRegistry:(id)registry;
- (DKReportPlanner)initWithReportGeneratorRegistry:(id)registry;
- (id)_resolveComponentIdentityManifest:(id)manifest;
- (id)requestGroupsForPredicateManifest:(id)manifest;
@end

@implementation DKReportPlanner

+ (DKReportPlanner)plannerWithReportGeneratorRegistry:(id)registry
{
  registryCopy = registry;
  v4 = [[DKReportPlanner alloc] initWithReportGeneratorRegistry:registryCopy];

  return v4;
}

- (DKReportPlanner)initWithReportGeneratorRegistry:(id)registry
{
  registryCopy = registry;
  v9.receiver = self;
  v9.super_class = DKReportPlanner;
  v6 = [(DKReportPlanner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_registry, registry);
  }

  return v7;
}

- (id)requestGroupsForPredicateManifest:(id)manifest
{
  v38 = *MEMORY[0x277D85DE8];
  manifestCopy = manifest;
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  v21 = manifestCopy;
  [(DKReportPlanner *)self _resolveComponentIdentityManifest:manifestCopy];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v24 = *v33;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * i);
        registry = [(DKReportPlanner *)selfCopy registry];
        v8 = [registry generatorForComponentIdentity:v6];

        if (v8)
        {
          v27 = i;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v9 = array;
          v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v29;
LABEL_9:
            v13 = 0;
            while (1)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v28 + 1) + 8 * v13);
              requestLookupByGenerator = [v14 requestLookupByGenerator];
              allKeys = [requestLookupByGenerator allKeys];
              v17 = [allKeys count];

              if (v17 <= 3 && ([v14 addComponentIdentity:v6 usingGenerator:v8] & 1) != 0)
              {
                break;
              }

              if (v11 == ++v13)
              {
                v11 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
                if (v11)
                {
                  goto LABEL_9;
                }

                goto LABEL_16;
              }
            }
          }

          else
          {
LABEL_16:

            resources = [v6 resources];
            v19 = [DKReportingConcurrentRequestGroup initWithResources:resources];

            [v19 addComponentIdentity:v6 usingGenerator:v8];
            [v9 addObject:v19];
            v9 = v19;
          }

          i = v27;
        }
      }

      v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  return array;
}

- (id)_resolveComponentIdentityManifest:(id)manifest
{
  v34 = *MEMORY[0x277D85DE8];
  manifestCopy = manifest;
  v5 = [MEMORY[0x277CBEB58] set];
  registry = [(DKReportPlanner *)self registry];
  components = [registry components];
  v8 = [components mutableCopy];

  if (manifestCopy)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = manifestCopy;
    obj = manifestCopy;
    v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v23)
    {
      v22 = *v29;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          v10 = v5;
          if (*v29 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v8, "count", v20)}];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = v8;
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v25;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v24 + 1) + 8 * j);
                if ([v11 matchesComponentIdentity:v18])
                {
                  [v12 addObject:v18];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v15);
          }

          [v13 minusSet:v12];
          v5 = v10;
          [v10 unionSet:v12];
        }

        v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v23);
    }

    manifestCopy = v20;
  }

  else
  {
    [v5 unionSet:v8];
  }

  return v5;
}

@end