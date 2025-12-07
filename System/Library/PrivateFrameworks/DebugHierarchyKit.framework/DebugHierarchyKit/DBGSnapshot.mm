@interface DBGSnapshot
- (DBGSnapshot)init;
- (DBGSnapshotManager)snapshotManager;
- (NSArray)rootLevelSnapshotGroups;
- (id)_recursivelyDescribeGroup:(id)group withIndentation:(unint64_t)indentation isAdditonalGroup:(BOOL)additonalGroup includeProperties:(BOOL)properties;
- (id)_recursivelyDescribeNode:(id)node withIndentation:(unint64_t)indentation includeProperties:(BOOL)properties;
- (id)nodesKindOfRuntimeClass:(id)class;
- (id)nodesMatchingPredicate:(id)predicate;
- (id)recursiveDescriptionIncludingProperties:(BOOL)properties;
- (id)rootLevelSnapshotGroupWithIdentifier:(id)identifier;
- (void)addRootLevelGroup:(id)group;
- (void)clearData;
@end

@implementation DBGSnapshot

- (DBGSnapshot)init
{
  v11.receiver = self;
  v11.super_class = DBGSnapshot;
  v2 = [(DBGSnapshot *)&v11 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    rootLevelGroups = v2->_rootLevelGroups;
    v2->_rootLevelGroups = v3;

    v5 = +[NSMapTable strongToWeakObjectsMapTable];
    identifierToNodeMap = v2->_identifierToNodeMap;
    v2->_identifierToNodeMap = v5;

    v7 = +[NSUUID UUID];
    uUIDString = [v7 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;
  }

  return v2;
}

- (void)addRootLevelGroup:(id)group
{
  groupCopy = group;
  [(DBGSnapshot *)self willChangeValueForKey:@"rootLevelSnapshotGroups"];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  rootLevelGroups = [(DBGSnapshot *)self rootLevelGroups];
  v6 = [rootLevelGroups countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(rootLevelGroups);
      }

      groupingIdentifier = [*(*(&v14 + 1) + 8 * v9) groupingIdentifier];
      groupingIdentifier2 = [groupCopy groupingIdentifier];
      v12 = [groupingIdentifier isEqualToString:groupingIdentifier2];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [rootLevelGroups countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [groupCopy setSnapshot:self];
  rootLevelGroups2 = [(DBGSnapshot *)self rootLevelGroups];
  [rootLevelGroups2 addObject:groupCopy];

  [(DBGSnapshot *)self didChangeValueForKey:@"rootLevelSnapshotGroups"];
}

- (void)clearData
{
  [(DBGSnapshot *)self willChangeValueForKey:@"rootLevelSnapshotGroups"];
  rootLevelGroups = [(DBGSnapshot *)self rootLevelGroups];
  [rootLevelGroups removeAllObjects];

  [(DBGSnapshot *)self didChangeValueForKey:@"rootLevelSnapshotGroups"];
}

- (id)nodesMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  identifierToNodeMap = [(DBGSnapshot *)self identifierToNodeMap];
  objectEnumerator = [identifierToNodeMap objectEnumerator];

  v8 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([predicateCopy evaluateWithObject:v12])
        {
          [v5 addObject:v12];
        }
      }

      v9 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v5 copy];

  return v13;
}

- (id)nodesKindOfRuntimeClass:(id)class
{
  classCopy = class;
  v5 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  identifierToNodeMap = [(DBGSnapshot *)self identifierToNodeMap];
  objectEnumerator = [identifierToNodeMap objectEnumerator];

  v8 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        runtimeType = [v12 runtimeType];
        v14 = [runtimeType isKindOfTypeWithName:classCopy];

        if (v14)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v5 copy];

  return v15;
}

- (id)rootLevelSnapshotGroupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  rootLevelSnapshotGroups = [(DBGSnapshot *)self rootLevelSnapshotGroups];
  v6 = [rootLevelSnapshotGroups countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(rootLevelSnapshotGroups);
      }

      v8 = *(*(&v15 + 1) + 8 * v10);

      groupingIdentifier = [v8 groupingIdentifier];
      v13 = [groupingIdentifier isEqualToString:identifierCopy];

      if (v13)
      {
        break;
      }

      v10 = v10 + 1;
      v11 = v8;
      if (v7 == v10)
      {
        v7 = [rootLevelSnapshotGroups countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  return v8;
}

- (NSArray)rootLevelSnapshotGroups
{
  rootLevelGroups = [(DBGSnapshot *)self rootLevelGroups];
  v3 = [rootLevelGroups copy];

  return v3;
}

- (id)recursiveDescriptionIncludingProperties:(BOOL)properties
{
  propertiesCopy = properties;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(DBGSnapshot *)self rootLevelGroups];
  v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = &stru_28750;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [(DBGSnapshot *)self _recursivelyDescribeGroup:*(*(&v14 + 1) + 8 * v9) withIndentation:0 isAdditonalGroup:0 includeProperties:propertiesCopy];
        v8 = [NSString stringWithFormat:@"%@%@\n", v10, v11];

        v9 = v9 + 1;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = &stru_28750;
  }

  return v8;
}

- (id)_recursivelyDescribeGroup:(id)group withIndentation:(unint64_t)indentation isAdditonalGroup:(BOOL)additonalGroup includeProperties:(BOOL)properties
{
  propertiesCopy = properties;
  additonalGroupCopy = additonalGroup;
  groupCopy = group;
  v10 = [&stru_28750 stringByPaddingToLength:indentation withString:@"-" startingAtIndex:0];
  v11 = [groupCopy debugDescription];
  v21 = v10;
  v12 = [NSString stringWithFormat:@"%@%@", v10, v11];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = groupCopy;
  allObjects = [groupCopy allObjects];
  v14 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      v17 = 0;
      v18 = v12;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(allObjects);
        }

        if (additonalGroupCopy)
        {
          v19 = [*(*(&v24 + 1) + 8 * v17) debugDescriptionWithIndentationDepth:indentation + 1 prefix:@"(REFERENCE)" includeProperties:propertiesCopy];
          [NSString stringWithFormat:@"%@\n%@ #REFERENCE#", v18, v19];
        }

        else
        {
          v19 = [(DBGSnapshot *)self _recursivelyDescribeNode:*(*(&v24 + 1) + 8 * v17) withIndentation:indentation + 1 includeProperties:propertiesCopy];
          [NSString stringWithFormat:@"%@\n%@", v18, v19];
        }
        v12 = ;

        v17 = v17 + 1;
        v18 = v12;
      }

      while (v15 != v17);
      v15 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  return v12;
}

- (id)_recursivelyDescribeNode:(id)node withIndentation:(unint64_t)indentation includeProperties:(BOOL)properties
{
  propertiesCopy = properties;
  nodeCopy = node;
  v9 = [nodeCopy debugDescriptionWithIndentationDepth:indentation prefix:0 includeProperties:propertiesCopy];
  childGroup = [nodeCopy childGroup];
  allObjects = [childGroup allObjects];
  v12 = [allObjects count];

  if (v12)
  {
    childGroup2 = [nodeCopy childGroup];
    v14 = [(DBGSnapshot *)self _recursivelyDescribeGroup:childGroup2 withIndentation:indentation + 1 isAdditonalGroup:0 includeProperties:propertiesCopy];

    v15 = [NSString stringWithFormat:@"%@\n%@", v9, v14];

    v9 = v15;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = nodeCopy;
  obj = [nodeCopy additionalGroups];
  v16 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      v19 = 0;
      v20 = v9;
      do
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(obj);
        }

        [(DBGSnapshot *)self _recursivelyDescribeGroup:*(*(&v28 + 1) + 8 * v19) withIndentation:indentation + 1 isAdditonalGroup:1 includeProperties:propertiesCopy];
        selfCopy = self;
        indentationCopy = indentation;
        v24 = v23 = propertiesCopy;
        v9 = [NSString stringWithFormat:@"%@\n%@", v20, v24];

        propertiesCopy = v23;
        indentation = indentationCopy;
        self = selfCopy;
        v19 = v19 + 1;
        v20 = v9;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v17);
  }

  return v9;
}

- (DBGSnapshotManager)snapshotManager
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotManager);

  return WeakRetained;
}

@end