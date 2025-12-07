@interface DebugHierarchyCrawler
+ (id)crawlerWithRequestContext:(id)context knownObjectsMap:(id)map;
- (DebugHierarchyCrawler)initWithRequestContext:(id)context knownObjectsMap:(id)map;
- (DebugHierarchyCrawlerOptions)options;
- (id)_entryPointClasses;
- (void)crawlDebugHierarchyObject:(id)object inGroupWithID:(id)d asDirectChild:(BOOL)child belowParent:(id)parent withParentDefinedVisibility:(int64_t)visibility;
- (void)crawlEntryPointClasses;
- (void)enumerateDebugHierarchyObjects:(id)objects inGroupWithID:(id)d options:(id)options asDirectChildren:(BOOL)children belowParent:(id)parent;
@end

@implementation DebugHierarchyCrawler

+ (id)crawlerWithRequestContext:(id)context knownObjectsMap:(id)map
{
  mapCopy = map;
  contextCopy = context;
  v8 = [[self alloc] initWithRequestContext:contextCopy knownObjectsMap:mapCopy];

  return v8;
}

- (DebugHierarchyCrawler)initWithRequestContext:(id)context knownObjectsMap:(id)map
{
  contextCopy = context;
  mapCopy = map;
  v12.receiver = self;
  v12.super_class = DebugHierarchyCrawler;
  v9 = [(DebugHierarchyCrawler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_knownObjectsMap, map);
    objc_storeStrong(&v10->_requestContext, context);
  }

  return v10;
}

- (void)crawlEntryPointClasses
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(DebugHierarchyCrawler *)self _entryPointClasses];
  v17 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v17)
  {
    v16 = *v25;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v24 + 1) + 8 * i);
        v4 = [DebugHierarchyEntryPointProtocolHelper debugHierarchyGroupingIDsOnClass:v3];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v5 = v4;
        v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v6)
        {
          v7 = *v21;
          do
          {
            for (j = 0; j != v6; j = j + 1)
            {
              if (*v21 != v7)
              {
                objc_enumerationMutation(v5);
              }

              v9 = *(*(&v20 + 1) + 8 * j);
              options = [(DebugHierarchyCrawler *)self options];
              if (options)
              {
                options2 = [(DebugHierarchyCrawler *)self options];
                v12 = [options2 shouldCrawlGroupWithID:v9];

                if (!v12)
                {
                  continue;
                }
              }

              v19 = 0;
              v13 = [DebugHierarchyEntryPointProtocolHelper debugHierarchyObjectsInGroupWithID:v9 outOptions:&v19 onEntryPointClass:v3];
              v14 = v19;
              [(DebugHierarchyCrawler *)self enumerateDebugHierarchyObjects:v13 inGroupWithID:v9 options:v14 asDirectChildren:1 belowParent:0];
            }

            v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v6);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v17);
  }
}

- (DebugHierarchyCrawlerOptions)options
{
  requestContext = [(DebugHierarchyCrawler *)self requestContext];
  request = [requestContext request];
  crawlerOptions = [request crawlerOptions];

  return crawlerOptions;
}

- (void)enumerateDebugHierarchyObjects:(id)objects inGroupWithID:(id)d options:(id)options asDirectChildren:(BOOL)children belowParent:(id)parent
{
  childrenCopy = children;
  objectsCopy = objects;
  dCopy = d;
  optionsCopy = options;
  parentCopy = parent;
  if ([objectsCopy count])
  {
    v15 = [optionsCopy objectForKeyedSubscript:@"visibilityImplementationDetail"];
    v16 = [optionsCopy objectForKeyedSubscript:@"visibilityAppleInternal"];
    v17 = [optionsCopy objectForKeyedSubscript:@"visibilityInvisible"];
    if ([objectsCopy count])
    {
      v18 = 0;
      do
      {
        v19 = [objectsCopy objectAtIndexedSubscript:v18];
        if (optionsCopy)
        {
          if ([v15 containsIndex:v18])
          {
            v20 = 2;
          }

          else if ([v16 containsIndex:v18])
          {
            v20 = 4;
          }

          else if ([v17 containsIndex:v18])
          {
            v20 = 8;
          }

          else
          {
            v20 = 1;
          }
        }

        else
        {
          v20 = 1;
        }

        [(DebugHierarchyCrawler *)self crawlDebugHierarchyObject:v19 inGroupWithID:dCopy asDirectChild:childrenCopy belowParent:parentCopy withParentDefinedVisibility:v20];

        ++v18;
      }

      while ([objectsCopy count] > v18);
    }
  }
}

- (void)crawlDebugHierarchyObject:(id)object inGroupWithID:(id)d asDirectChild:(BOOL)child belowParent:(id)parent withParentDefinedVisibility:(int64_t)visibility
{
  childCopy = child;
  objectCopy = object;
  dCopy = d;
  parentCopy = parent;
  if (objectCopy)
  {
    v15 = CFStringCreateWithFormat(0, 0, @"%p", objectCopy);
    knownObjectsMap = [(DebugHierarchyCrawler *)self knownObjectsMap];
    [knownObjectsMap setObject:objectCopy forKey:v15];
  }

  v17 = DebugHierarchyVisibilityForObject(objectCopy, visibility);
  requestContext = [(DebugHierarchyCrawler *)self requestContext];
  v19 = [requestContext hasAlreadyFetchedDebugHierarchyObject:objectCopy];

  if (v19)
  {
    if (!childCopy)
    {
      requestContext2 = [(DebugHierarchyCrawler *)self requestContext];
      [requestContext2 addReferencedDebugHierarchyObject:objectCopy withVisibility:v17 toGroupWithID:dCopy asDirectChild:0 belowParent:parentCopy];
    }

    goto LABEL_18;
  }

  options = [(DebugHierarchyCrawler *)self options];
  if (options)
  {
    v22 = options;
    options2 = [(DebugHierarchyCrawler *)self options];
    v24 = [options2 shouldCrawlObject:objectCopy];

    if (v24)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    requestContext3 = [(DebugHierarchyCrawler *)self requestContext];
    [requestContext3 addDebugHierarchyObject:objectCopy withVisibility:v17 fetchStatus:v25 toGroupWithID:dCopy asDirectChild:childCopy belowParent:parentCopy];

    if ((v24 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    requestContext4 = [(DebugHierarchyCrawler *)self requestContext];
    [requestContext4 addDebugHierarchyObject:objectCopy withVisibility:v17 fetchStatus:4 toGroupWithID:dCopy asDirectChild:childCopy belowParent:parentCopy];
  }

  requestContext5 = [(DebugHierarchyCrawler *)self requestContext];
  v29 = objc_opt_class();
  if (v29 && (v30 = v29, object_isClass(v29)))
  {
    v31 = NSStringFromClass(v30);
  }

  else
  {
    v31 = 0;
  }

  v32 = [requestContext5 runtimeTypeWithName:v31];

  v40 = 0;
  v41 = 0;
  v33 = [DebugHierarchyObjectProtocolHelper childObjectsForObject:objectCopy withType:v32 outGroupingID:&v41 outOptions:&v40];
  v34 = v41;
  v35 = v40;
  [(DebugHierarchyCrawler *)self enumerateDebugHierarchyObjects:v33 inGroupWithID:v34 options:v35 asDirectChildren:1 belowParent:objectCopy];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = __119__DebugHierarchyCrawler_crawlDebugHierarchyObject_inGroupWithID_asDirectChild_belowParent_withParentDefinedVisibility___block_invoke;
  v38[3] = &unk_24310;
  v38[4] = self;
  v36 = objectCopy;
  v39 = v36;
  [DebugHierarchyObjectProtocolHelper enumerateAdditionalGroupsAndObjectsOfObject:v36 withType:v32 withBlock:v38];
  actionExecutor = [(DebugHierarchyCrawler *)self actionExecutor];
  [actionExecutor executeActionsWithObject:v36];

LABEL_18:
}

- (id)_entryPointClasses
{
  v2 = DebugHierarchyEntryPointClasses();
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([DebugHierarchyEntryPointProtocolHelper classImplementsRequiredEntryPointMethods:v9, v12])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

@end