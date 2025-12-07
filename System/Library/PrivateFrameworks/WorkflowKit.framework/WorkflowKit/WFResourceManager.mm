@interface WFResourceManager
- (BOOL)currentlyRequiresResourceOfClass:(Class)class;
- (BOOL)currentlyRequiresResourceOfClasses:(id)classes;
- (BOOL)nodeIsAvailable:(id)available error:(id *)error;
- (BOOL)nodeIsRelevant:(id)relevant;
- (BOOL)resourcesAvailable;
- (BOOL)resourcesRequiredForDisplayAvailable;
- (NSArray)resourceNodes;
- (NSMutableOrderedSet)unavailableResources;
- (NSOrderedSet)unavailableResourceErrors;
- (NSSet)accessResources;
- (WFResourceManager)initWithDefinitions:(id)definitions;
- (id)currentlyRequiredResourcesOfClass:(Class)class;
- (id)relevantNodes;
- (id)resourceObjectsConformingToProtocol:(id)protocol;
- (id)resourceObjectsOfClass:(Class)class;
- (id)resourceObjectsOfClasses:(id)classes;
- (id)selectorSetForTarget:(id)target;
- (void)addResource:(id)resource;
- (void)addResourceNodes:(id)nodes;
- (void)addTarget:(id)target selector:(SEL)selector;
- (void)evaluateAvailabilityOfNodesIfNeeded;
- (void)evaluateAvailabilityOfNodesWithChangedNode:(id)node;
- (void)makeAccessResourcesAvailableWithUserInterface:(id)interface completionQueue:(id)queue completionHandler:(id)handler;
- (void)notifyTargets;
- (void)refreshAvailabilityOfRequiredResourcesOfClasses:(id)classes;
- (void)removeResourceNodes:(id)nodes;
- (void)removeTarget:(id)target selector:(SEL)selector;
- (void)resourceNodeAvailabilityChanged:(id)changed;
@end

@implementation WFResourceManager

- (NSArray)resourceNodes
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(NSMutableArray *)self->_resourceNodes copy];
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (BOOL)resourcesAvailable
{
  os_unfair_lock_lock(&self->_stateLock);
  [(WFResourceManager *)self evaluateAvailabilityOfNodesIfNeeded];
  resourcesAvailable = self->_resourcesAvailable;
  os_unfair_lock_unlock(&self->_stateLock);
  return resourcesAvailable;
}

- (void)evaluateAvailabilityOfNodesIfNeeded
{
  if (!self->_didEvaluateAvailabilityOfNodes)
  {
    [(WFResourceManager *)self evaluateAvailabilityOfNodesWithChangedNode:0];
  }
}

- (void)notifyTargets
{
  os_unfair_lock_lock(&self->_targetSelectorLock);
  targetSelectorTable = [(WFResourceManager *)self targetSelectorTable];
  v4 = [targetSelectorTable copy];

  os_unfair_lock_unlock(&self->_targetSelectorLock);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__WFResourceManager_notifyTargets__block_invoke;
  v6[3] = &unk_1E837F870;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __34__WFResourceManager_notifyTargets__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) keyEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = [*(a1 + 32) objectForKey:{v7, 0}];
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [v7 performSelector:NSSelectorFromString(*(*(&v13 + 1) + 8 * v12++)) withObject:*(a1 + 40)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

- (void)removeResourceNodes:(id)nodes
{
  v16 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  os_unfair_lock_lock(&self->_stateLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = nodesCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [(NSMutableArray *)self->_resourceNodes removeObject:v10, v11];
        [(WFResourceManager *)self evaluateAvailabilityOfNodesWithChangedNode:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)addResourceNodes:(id)nodes
{
  v16 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  os_unfair_lock_lock(&self->_stateLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = nodesCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 setDelegate:{self, v11}];
        [(NSMutableArray *)self->_resourceNodes addObject:v10];
        [(WFResourceManager *)self evaluateAvailabilityOfNodesWithChangedNode:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)addResource:(id)resource
{
  v7[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  v5 = [[WFResourceNode alloc] initWithResource:resourceCopy];

  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [(WFResourceManager *)self addResourceNodes:v6];
}

- (void)removeTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v7 = NSStringFromSelector(selector);
  os_unfair_lock_lock(&self->_targetSelectorLock);
  targetSelectorTable = [(WFResourceManager *)self targetSelectorTable];
  v9 = [targetSelectorTable objectForKey:targetCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__WFResourceManager_removeTarget_selector___block_invoke;
  v13[3] = &unk_1E837EED0;
  v14 = v7;
  v10 = v7;
  v11 = [v9 objectsPassingTest:v13];

  if ([v11 count])
  {
    targetSelectorTable2 = [(WFResourceManager *)self targetSelectorTable];
    [targetSelectorTable2 setObject:v11 forKey:targetCopy];
LABEL_5:

    goto LABEL_6;
  }

  if (v11)
  {
    targetSelectorTable2 = [(WFResourceManager *)self targetSelectorTable];
    [targetSelectorTable2 removeObjectForKey:targetCopy];
    goto LABEL_5;
  }

LABEL_6:
  os_unfair_lock_unlock(&self->_targetSelectorLock);
}

- (void)addTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v6 = NSStringFromSelector(selector);
  os_unfair_lock_lock(&self->_targetSelectorLock);
  v7 = [(WFResourceManager *)self selectorSetForTarget:targetCopy];
  if (([v7 containsObject:v6] & 1) == 0)
  {
    targetSelectorTable = [(WFResourceManager *)self targetSelectorTable];
    v9 = [v7 setByAddingObject:v6];
    [targetSelectorTable setObject:v9 forKey:targetCopy];
  }

  os_unfair_lock_unlock(&self->_targetSelectorLock);
}

- (id)selectorSetForTarget:(id)target
{
  targetCopy = target;
  os_unfair_lock_assert_owner(&self->_targetSelectorLock);
  targetSelectorTable = [(WFResourceManager *)self targetSelectorTable];
  v6 = [targetSelectorTable objectForKey:targetCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

- (void)resourceNodeAvailabilityChanged:(id)changed
{
  changedCopy = changed;
  os_unfair_lock_lock(&self->_stateLock);
  [(WFResourceManager *)self evaluateAvailabilityOfNodesIfNeeded];
  [(WFResourceManager *)self evaluateAvailabilityOfNodesWithChangedNode:changedCopy];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (NSOrderedSet)unavailableResourceErrors
{
  os_unfair_lock_lock(&self->_stateLock);
  [(WFResourceManager *)self evaluateAvailabilityOfNodesIfNeeded];
  v3 = self->_unavailableResourceErrors;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (NSMutableOrderedSet)unavailableResources
{
  os_unfair_lock_lock(&self->_stateLock);
  [(WFResourceManager *)self evaluateAvailabilityOfNodesIfNeeded];
  v3 = self->_unavailableResources;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (BOOL)resourcesRequiredForDisplayAvailable
{
  os_unfair_lock_lock(&self->_stateLock);
  [(WFResourceManager *)self evaluateAvailabilityOfNodesIfNeeded];
  resourcesRequiredForDisplayAvailable = self->_resourcesRequiredForDisplayAvailable;
  os_unfair_lock_unlock(&self->_stateLock);
  return resourcesRequiredForDisplayAvailable;
}

- (void)evaluateAvailabilityOfNodesWithChangedNode:(id)node
{
  v33 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  os_unfair_lock_assert_owner(&self->_stateLock);
  if (nodeCopy)
  {
    v5 = [(NSMutableOrderedSet *)self->_unavailableResources mutableCopy];
    resourcesAvailable = self->_resourcesAvailable;
    resourcesRequiredForDisplayAvailable = self->_resourcesRequiredForDisplayAvailable;
    if ([(WFResourceManager *)self nodeIsAvailable:nodeCopy error:0])
    {
      resource = [nodeCopy resource];
      [v5 removeObject:resource];

      v9 = [v5 count] == 0;
      v10 = v9 || resourcesRequiredForDisplayAvailable;
      v11 = v9 || resourcesAvailable;
    }

    else
    {
      resource2 = [nodeCopy resource];
      mustBeAvailableForDisplay = [objc_opt_class() mustBeAvailableForDisplay];

      v10 = (mustBeAvailableForDisplay ^ 1) & resourcesRequiredForDisplayAvailable;
      resource3 = [nodeCopy resource];
      [v5 addObject:resource3];

      v11 = 0;
    }
  }

  else
  {
    v5 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = self->_resourceNodes;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      v10 = 1;
      v11 = 1;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          if (![(WFResourceManager *)self nodeIsAvailable:v17 error:0])
          {
            resource4 = [v17 resource];
            mustBeAvailableForDisplay2 = [objc_opt_class() mustBeAvailableForDisplay];

            v10 &= mustBeAvailableForDisplay2 ^ 1;
            resource5 = [v17 resource];
            [v5 addObject:resource5];

            v11 = 0;
          }
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);
    }

    else
    {
      v10 = 1;
      v11 = 1;
    }

    self->_didEvaluateAvailabilityOfNodes = 1;
    nodeCopy = 0;
  }

  v24 = [v5 if_compactMap:&__block_literal_global_178_69510];
  unavailableResources = self->_unavailableResources;
  if (v5 | unavailableResources && ([(NSMutableOrderedSet *)unavailableResources isEqualToOrderedSet:v5]& 1) == 0)
  {
    [(WFResourceManager *)self setUnavailableResources:v5];
  }

  unavailableResourceErrors = self->_unavailableResourceErrors;
  if (unavailableResourceErrors | v24 && ![(NSOrderedSet *)unavailableResourceErrors isEqualToOrderedSet:v24])
  {
    [(WFResourceManager *)self setUnavailableResourceErrors:v24];
    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  if (self->_resourcesAvailable != (v11 & 1))
  {
    [(WFResourceManager *)self setResourcesAvailable:?];
    v27 = 1;
  }

  if (self->_resourcesRequiredForDisplayAvailable != (v10 & 1))
  {
    [(WFResourceManager *)self setResourcesRequiredForDisplayAvailable:?];
  }

  if (v27)
  {
    [(WFResourceManager *)self notifyTargets];
  }
}

- (BOOL)nodeIsAvailable:(id)available error:(id *)error
{
  availableCopy = available;
  if (-[WFResourceManager nodeIsRelevant:](self, "nodeIsRelevant:", availableCopy) && ([availableCopy resource], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isAvailable"), v7, (v8 & 1) == 0))
  {
    if (error)
    {
      resource = [availableCopy resource];
      availabilityError = [resource availabilityError];

      if (availabilityError)
      {
        resource2 = [availableCopy resource];
        *error = [resource2 availabilityError];
      }

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 1;
  }

  return error;
}

- (BOOL)nodeIsRelevant:(id)relevant
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subnodes = [relevant subnodes];
  v5 = [subnodes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(subnodes);
        }

        if (![(WFResourceManager *)self nodeIsAvailable:*(*(&v11 + 1) + 8 * i) error:0])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [subnodes countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (id)relevantNodes
{
  resourceNodes = [(WFResourceManager *)self resourceNodes];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__WFResourceManager_relevantNodes__block_invoke;
  v6[3] = &unk_1E837EE88;
  v6[4] = self;
  v4 = [resourceNodes if_objectsPassingTest:v6];

  return v4;
}

- (id)resourceObjectsOfClasses:(id)classes
{
  v17 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  v5 = objc_opt_new();
  if ([classesCopy anyObject])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    resourceNodes = [(WFResourceManager *)self resourceNodes];
    v7 = [resourceNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(resourceNodes);
          }

          [*(*(&v12 + 1) + 8 * i) addResourceObjectsOfClassesOrProtocols:classesCopy toSet:v5];
        }

        v8 = [resourceNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (id)resourceObjectsConformingToProtocol:(id)protocol
{
  v19 = *MEMORY[0x1E69E9840];
  protocolCopy = protocol;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  resourceNodes = [(WFResourceManager *)self resourceNodes];
  v7 = [resourceNodes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(resourceNodes);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [MEMORY[0x1E695DFD8] setWithObject:protocolCopy];
        [v11 addResourceObjectsOfClassesOrProtocols:v12 toSet:v5];
      }

      v8 = [resourceNodes countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)resourceObjectsOfClass:(Class)class
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:class];
  v5 = [(WFResourceManager *)self resourceObjectsOfClasses:v4];

  return v5;
}

- (void)makeAccessResourcesAvailableWithUserInterface:(id)interface completionQueue:(id)queue completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  queueCopy = queue;
  handlerCopy = handler;
  relevantNodes = [(WFResourceManager *)self relevantNodes];
  v12 = [relevantNodes if_compactMap:&__block_literal_global_69515];

  if ([v12 count])
  {
    v13 = objc_opt_new();
    aBlock = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __101__WFResourceManager_makeAccessResourcesAvailableWithUserInterface_completionQueue_completionHandler___block_invoke_2;
    v29 = &unk_1E837EE38;
    v30 = interfaceCopy;
    v14 = v13;
    v31 = v14;
    v15 = _Block_copy(&aBlock);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __101__WFResourceManager_makeAccessResourcesAvailableWithUserInterface_completionQueue_completionHandler___block_invoke_4;
    v23 = &unk_1E837EE60;
    v24 = v14;
    v25 = handlerCopy;
    v16 = v14;
    v17 = _Block_copy(&v20);
    if (queueCopy)
    {
      [v12 if_enumerateAsynchronouslyInSequenceOnQueue:queueCopy block:v15 completionHandler:{v17, v20, v21, v22, v23, v24, v25, aBlock, v27, v28, v29, v30}];
    }

    else
    {
      v19 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v33 = "[WFResourceManager makeAccessResourcesAvailableWithUserInterface:completionQueue:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_DEBUG, "%s No completionQueue provided to if_enumerateAsynchronouslyInSequence", buf, 0xCu);
      }

      [v12 if_enumerateAsynchronouslyInSequence:v15 completionHandler:{v17, v20, v21, v22, v23, v24, v25, aBlock, v27, v28, v29, v30}];
    }
  }

  else
  {
    v18 = objc_opt_new();
    (*(handlerCopy + 2))(handlerCopy, v18);
  }
}

void __101__WFResourceManager_makeAccessResourcesAvailableWithUserInterface_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __101__WFResourceManager_makeAccessResourcesAvailableWithUserInterface_completionQueue_completionHandler___block_invoke_3;
  v9[3] = &unk_1E837EE10;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v6;
  v8 = v6;
  [a2 makeAvailableWithUserInterface:v7 completionHandler:v9];
}

void __101__WFResourceManager_makeAccessResourcesAvailableWithUserInterface_completionQueue_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

uint64_t __101__WFResourceManager_makeAccessResourcesAvailableWithUserInterface_completionQueue_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) addObject:?];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

id __101__WFResourceManager_makeAccessResourcesAvailableWithUserInterface_completionQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 resource];
    v6 = [v5 status] == 1;
    if ((v6 | [objc_opt_class() alwaysMakeAvailable]))
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)currentlyRequiredResourcesOfClass:(Class)class
{
  v4 = MEMORY[0x1E695DFB8];
  relevantNodes = [(WFResourceManager *)self relevantNodes];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__WFResourceManager_currentlyRequiredResourcesOfClass___block_invoke;
  v9[3] = &__block_descriptor_40_e39___WFResource_24__0__WFResourceNode_8Q16lu32l8;
  v9[4] = class;
  v6 = [relevantNodes if_compactMap:v9];
  v7 = [v4 orderedSetWithArray:v6];

  return v7;
}

id __55__WFResourceManager_currentlyRequiredResourcesOfClass___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resource];
  if (objc_opt_isKindOfClass())
  {
    v4 = [v2 resource];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSSet)accessResources
{
  v3 = objc_opt_class();

  return [(WFResourceManager *)self resourceObjectsOfClass:v3];
}

- (BOOL)currentlyRequiresResourceOfClasses:(id)classes
{
  v20 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  resourceNodes = [(WFResourceManager *)self resourceNodes];
  v6 = [resourceNodes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(resourceNodes);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        resource = [v10 resource];
        v12 = WFResourceClassIsInArray(resource, classesCopy);

        if (v12)
        {
          v13 = [(WFResourceManager *)self nodeIsRelevant:v10];
          goto LABEL_11;
        }
      }

      v7 = [resourceNodes countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)currentlyRequiresResourceOfClass:(Class)class
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = class;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  LOBYTE(self) = [(WFResourceManager *)self currentlyRequiresResourceOfClasses:v4];

  return self;
}

- (void)refreshAvailabilityOfRequiredResourcesOfClasses:(id)classes
{
  v18 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  resourceNodes = [(WFResourceManager *)self resourceNodes];
  v6 = [resourceNodes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(resourceNodes);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        resource = [v10 resource];
        v12 = WFResourceClassIsInArray(resource, classesCopy);

        if (v12)
        {
          [v10 refreshAvailability];
        }
      }

      v7 = [resourceNodes countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (WFResourceManager)initWithDefinitions:(id)definitions
{
  definitionsCopy = definitions;
  v13.receiver = self;
  v13.super_class = WFResourceManager;
  v5 = [(WFResourceManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_stateLock._os_unfair_lock_opaque = 0;
    v5->_targetSelectorLock._os_unfair_lock_opaque = 0;
    v7 = [WFResourceNode nodesWithDefinitions:definitionsCopy];
    v8 = [v7 mutableCopy];
    resourceNodes = v6->_resourceNodes;
    v6->_resourceNodes = v8;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    targetSelectorTable = v6->_targetSelectorTable;
    v6->_targetSelectorTable = weakToStrongObjectsMapTable;

    [(NSMutableArray *)v6->_resourceNodes makeObjectsPerformSelector:sel_setDelegate_ withObject:v6];
  }

  return v6;
}

@end