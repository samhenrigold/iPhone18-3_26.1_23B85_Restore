@interface FIPresentationNodeMap
+ (id)presentationNodeForKeyNode:(id)node;
+ (id)shared;
+ (void)finalize;
- (FIPresentationNodeMap)init;
- (id)presentationNodeForKeyNode:(id)node;
- (void)registerPresentationNode:(id)node forNode:(id)forNode;
- (void)registerPresentationNode:(id)node forNode:(id)forNode clearOlderKeyNodes:(BOOL)nodes;
- (void)unregisterAllForPresentationNode:(id)node;
- (void)unregisterKeyNode:(id)node;
@end

@implementation FIPresentationNodeMap

+ (id)shared
{
  std::mutex::lock(&PresentationNodeMapLock(void)::sMutex);
  v2 = gPresentationMap;
  if (!gPresentationMap)
  {
    v3 = objc_alloc_init(FIPresentationNodeMap);
    v4 = gPresentationMap;
    gPresentationMap = v3;

    v2 = gPresentationMap;
  }

  v5 = v2;
  std::mutex::unlock(&PresentationNodeMapLock(void)::sMutex);

  return v5;
}

- (FIPresentationNodeMap)init
{
  v6.receiver = self;
  v6.super_class = FIPresentationNodeMap;
  v2 = [(FIPresentationNodeMap *)&v6 init];
  v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:5 capacity:20];
  lookupTable = v2->_lookupTable;
  v2->_lookupTable = v3;

  return v2;
}

+ (void)finalize
{
  std::mutex::lock(&PresentationNodeMapLock(void)::sMutex);
  v2 = gPresentationMap;
  if (gPresentationMap)
  {
    v3 = LogObj(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_DEBUG, "Finalized presentation map", v4, 2u);
    }

    v2 = gPresentationMap;
  }

  gPresentationMap = 0;

  std::mutex::unlock(&PresentationNodeMapLock(void)::sMutex);
}

- (id)presentationNodeForKeyNode:(id)node
{
  nodeCopy = node;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMapTable *)selfCopy->_lookupTable objectForKey:nodeCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

+ (id)presentationNodeForKeyNode:(id)node
{
  nodeCopy = node;
  shared = [self shared];
  v6 = [shared presentationNodeForKeyNode:nodeCopy];

  return v6;
}

- (void)registerPresentationNode:(id)node forNode:(id)forNode clearOlderKeyNodes:(BOOL)nodes
{
  nodesCopy = nodes;
  nodeCopy = node;
  forNodeCopy = forNode;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (nodesCopy)
  {
    [(FIPresentationNodeMap *)selfCopy unregisterAllForPresentationNode:nodeCopy];
  }

  [(FIPresentationNodeMap *)selfCopy registerPresentationNode:nodeCopy forNode:forNodeCopy];
  objc_sync_exit(selfCopy);
}

- (void)registerPresentationNode:(id)node forNode:(id)forNode
{
  v15 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  forNodeCopy = forNode;
  v8 = forNodeCopy;
  if (nodeCopy && forNodeCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMapTable *)selfCopy->_lookupTable setObject:nodeCopy forKey:v8];
    v10 = LogObj(5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138543618;
      v12 = nodeCopy;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_1E5674000, v10, OS_LOG_TYPE_DEBUG, "Adding to lookup table %{public}@ for %{public}@", &v11, 0x16u);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = LogObj(5);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1E5674000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Trying to register a nil node", &v11, 2u);
    }
  }
}

- (void)unregisterAllForPresentationNode:(id)node
{
  v33 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = selfCopy->_lookupTable;
  v7 = 0;
  v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v8)
  {
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [(NSMapTable *)selfCopy->_lookupTable objectForKey:v11];
        if (v12 == nodeCopy)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v7 addObject:v11];
        }
      }

      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v14)
  {
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [(NSMapTable *)selfCopy->_lookupTable removeObjectForKey:*(*(&v19 + 1) + 8 * j), v19];
      }

      v14 = [v13 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v14);
  }

  objc_sync_exit(selfCopy);
  if (v13)
  {
    v17 = LogObj(5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v13 count];
      *buf = 134218242;
      v28 = v18;
      v29 = 2112;
      v30 = nodeCopy;
      _os_log_impl(&dword_1E5674000, v17, OS_LOG_TYPE_DEBUG, "Removed %ld keys for presentation node %@", buf, 0x16u);
    }
  }
}

- (void)unregisterKeyNode:(id)node
{
  v12 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (IsDebugLogCategoryEnabled(5))
  {
    v6 = [(NSMapTable *)selfCopy->_lookupTable objectForKey:nodeCopy];
  }

  else
  {
    v6 = 0;
  }

  [(NSMapTable *)selfCopy->_lookupTable removeObjectForKey:nodeCopy];
  objc_sync_exit(selfCopy);

  if (v6)
  {
    v7 = LogObj(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412546;
      v9 = nodeCopy;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_1E5674000, v7, OS_LOG_TYPE_DEBUG, "Removed keyNode %@ for presentation node %@", &v8, 0x16u);
    }
  }
}

@end