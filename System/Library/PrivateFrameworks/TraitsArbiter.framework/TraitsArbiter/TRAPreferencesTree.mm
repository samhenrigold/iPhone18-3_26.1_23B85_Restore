@interface TRAPreferencesTree
+ (TRAPreferencesTree)treeWithNodesSpecifications:(id)specifications traversalType:(int64_t)type debugName:(id)name;
- (id)_initWithRootChildren:(id)children traversalType:(int64_t)type debugName:(id)name;
- (id)_recursiveDescriptionWithChildrenInZOrder:(BOOL)order;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)participantsTopologicalSort;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)topologicalSort;
@end

@implementation TRAPreferencesTree

- (id)participantsTopologicalSort
{
  v16 = *MEMORY[0x277D85DE8];
  topologicalSort = [(TRAPreferencesTree *)self topologicalSort];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(topologicalSort, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = topologicalSort;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        participant = [*(*(&v11 + 1) + 8 * i) participant];
        [v3 addObject:participant];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)topologicalSort
{
  if (self->_isFlatTree)
  {
    v3 = self->_rootChildren;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_rootChildren, "count")}];
    preOrder(0, self->_rootChildren, v3, self->_traversalType);
  }

  return v3;
}

- (id)_initWithRootChildren:(id)children traversalType:(int64_t)type debugName:(id)name
{
  childrenCopy = children;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = TRAPreferencesTree;
  v10 = [(TRAPreferencesTree *)&v14 init];
  if (v10)
  {
    v11 = [childrenCopy sortedArrayUsingComparator:&__block_literal_global_136];
    rootChildren = v10->_rootChildren;
    v10->_rootChildren = v11;

    v10->_traversalType = type;
    objc_storeStrong(&v10->_debugName, name);
  }

  return v10;
}

uint64_t __68__TRAPreferencesTree__initWithRootChildren_traversalType_debugName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 order];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 order];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

+ (TRAPreferencesTree)treeWithNodesSpecifications:(id)specifications traversalType:(int64_t)type debugName:(id)name
{
  v69 = *MEMORY[0x277D85DE8];
  specificationsCopy = specifications;
  nameCopy = name;
  v9 = nameCopy;
  if (specificationsCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[TRAPreferencesTree treeWithNodesSpecifications:traversalType:debugName:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  +[TRAPreferencesTree treeWithNodesSpecifications:traversalType:debugName:];
LABEL_3:
  v43 = v9;
  v52 = [MEMORY[0x277CBEB58] setWithArray:specificationsCopy];
  v46 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(specificationsCopy, "count")}];
  v45 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(specificationsCopy, "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = specificationsCopy;
  v10 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v63;
    v13 = 1;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v62 + 1) + 8 * i);
        parentParticipant = [v15 parentParticipant];

        if (parentParticipant)
        {
          v13 = 0;
        }

        else
        {
          v17 = [TRAPreferencesTreeNode alloc];
          participant = [v15 participant];
          v19 = [(TRAPreferencesTreeNode *)v17 initWithParticipant:participant];

          [v15 order];
          [(TRAPreferencesTreeNode *)v19 setOrder:?];
          [v46 addObject:v19];
          [v52 removeObject:v15];
          uniqueIdentifier = [(TRAPreferencesTreeNode *)v19 uniqueIdentifier];
          [v45 setObject:v19 forKey:uniqueIdentifier];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 1;
  }

  v21 = v43;
  v22 = [[TRAPreferencesTree alloc] _initWithRootChildren:v46 traversalType:type debugName:v43];
  v23 = v22;
  if ((v13 & 1) == 0)
  {
    v22 = [v46 count];
    if (v22)
    {
      v42 = v23;
      v24 = [MEMORY[0x277CBEB18] arrayWithArray:v46];
      v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v24, "count")}];
      v44 = v24;
      v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v24, "count")}];
      do
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v26 = v44;
        v51 = [v26 countByEnumeratingWithState:&v58 objects:v67 count:16];
        if (v51)
        {
          v48 = *v59;
          v49 = v26;
          do
          {
            v27 = 0;
            do
            {
              if (*v59 != v48)
              {
                objc_enumerationMutation(v26);
              }

              v53 = v27;
              v28 = *(*(&v58 + 1) + 8 * v27);
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              v29 = v52;
              v30 = [v29 countByEnumeratingWithState:&v54 objects:v66 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v55;
                do
                {
                  for (j = 0; j != v31; ++j)
                  {
                    if (*v55 != v32)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v34 = *(*(&v54 + 1) + 8 * j);
                    parentParticipant2 = [v34 parentParticipant];
                    participant2 = [v28 participant];

                    if (parentParticipant2 == participant2)
                    {
                      v37 = [TRAPreferencesTreeNode alloc];
                      participant3 = [v34 participant];
                      v39 = [(TRAPreferencesTreeNode *)v37 initWithParticipant:participant3];

                      [v34 order];
                      [(TRAPreferencesTreeNode *)v39 setOrder:?];
                      [v28 addChild:v39];
                      [v25 addObject:v39];
                    }
                  }

                  v31 = [v29 countByEnumeratingWithState:&v54 objects:v66 count:16];
                }

                while (v31);
              }

              [v50 addObject:v28];
              v27 = v53 + 1;
              v26 = v49;
            }

            while (v53 + 1 != v51);
            v51 = [v49 countByEnumeratingWithState:&v58 objects:v67 count:16];
          }

          while (v51);
        }

        [v26 removeObjectsInArray:v50];
        [v26 addObjectsFromArray:v25];
        [v25 removeAllObjects];
        [v50 removeAllObjects];
      }

      while ([v26 count]);

      v23 = v42;
      v21 = v43;
    }
  }

  v40 = TRALogCommon(v22);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    +[TRAPreferencesTree treeWithNodesSpecifications:traversalType:debugName:];
  }

  return v23;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAPreferencesTree *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_debugName withName:@"name"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAPreferencesTree *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)_recursiveDescriptionWithChildrenInZOrder:(BOOL)order
{
  orderCopy = order;
  string = [MEMORY[0x277CCAB68] string];
  v6 = MEMORY[0x277CCACA8];
  debugName = [(TRAPreferencesTree *)self debugName];
  v8 = [v6 stringWithFormat:@"   ◼︎ %@ Root", debugName];
  [string appendString:v8];

  appendDescription(0, self->_rootChildren, string, 0, self->_traversalType, orderCopy);
  [string appendString:@"   "];

  return string;
}

+ (void)treeWithNodesSpecifications:traversalType:debugName:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"nodesSpecifications" object:? file:? lineNumber:? description:?];
}

+ (void)treeWithNodesSpecifications:traversalType:debugName:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"debugName" object:? file:? lineNumber:? description:?];
}

+ (void)treeWithNodesSpecifications:traversalType:debugName:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v9 = *MEMORY[0x277D85DE8];
  v3 = [v2 debugName];
  v4 = [v1 recursiveDescription];
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_debug_impl(&dword_26F353000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@", &v5, 0x16u);
}

@end