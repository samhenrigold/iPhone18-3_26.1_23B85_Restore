@interface MTLibraryChanges
- (BOOL)hasChanges;
- (BOOL)hasChangesForEntityNames:(id)names;
- (BOOL)hasDeletes;
- (BOOL)hasDeletesForEntityNames:(id)names;
- (BOOL)hasInserts;
- (BOOL)hasInsertsForEntityNames:(id)names;
- (BOOL)hasUpdates;
- (BOOL)hasUpdatesForEntityNames:(id)names;
- (MTLibraryChanges)initWithContextName:(id)name;
- (id)changesForEntityName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)entityNames;
- (void)addChangeWith:(id)with entityName:(id)name changeType:(int)type;
- (void)combineChanges:(id)changes;
- (void)removeAllChanges;
@end

@implementation MTLibraryChanges

- (BOOL)hasChanges
{
  selfCopy = self;
  changesByEntityName = [(MTLibraryChanges *)self changesByEntityName];
  allKeys = [changesByEntityName allKeys];

  LOBYTE(selfCopy) = [(MTLibraryChanges *)selfCopy hasChangesForEntityNames:allKeys];
  return selfCopy;
}

- (MTLibraryChanges)initWithContextName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = MTLibraryChanges;
  v5 = [(MTLibraryChanges *)&v11 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    contextName = v5->_contextName;
    v5->_contextName = v6;

    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    changesByEntityName = v5->_changesByEntityName;
    v5->_changesByEntityName = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  changesByEntityName = [(MTLibraryChanges *)self changesByEntityName];
  v7 = [v5 initWithDictionary:changesByEntityName copyItems:1];
  [v4 setChangesByEntityName:v7];

  return v4;
}

- (id)description
{
  changesByEntityName = [(MTLibraryChanges *)self changesByEntityName];
  allValues = [changesByEntityName allValues];
  v4 = [allValues componentsJoinedByString:@"\n\t"];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"library changes: {\n\t%@\n}", v4];

  return v5;
}

- (id)changesForEntityName:(id)name
{
  nameCopy = name;
  changesByEntityName = [(MTLibraryChanges *)self changesByEntityName];
  v6 = [changesByEntityName objectForKeyedSubscript:nameCopy];

  return v6;
}

- (id)entityNames
{
  changesByEntityName = [(MTLibraryChanges *)self changesByEntityName];
  allKeys = [changesByEntityName allKeys];

  return allKeys;
}

- (void)removeAllChanges
{
  changesByEntityName = [(MTLibraryChanges *)self changesByEntityName];
  [changesByEntityName removeAllObjects];
}

- (void)addChangeWith:(id)with entityName:(id)name changeType:(int)type
{
  v5 = *&type;
  withCopy = with;
  nameCopy = name;
  v9 = [(MTLibraryChanges *)self changesForEntityName:nameCopy];
  if (!v9)
  {
    v9 = [[MTLibraryEntityChanges alloc] initWithEntityName:nameCopy];
    changesByEntityName = [(MTLibraryChanges *)self changesByEntityName];
    [changesByEntityName setObject:v9 forKeyedSubscript:nameCopy];
  }

  [(MTLibraryEntityChanges *)v9 add:withCopy changeType:v5];
}

- (void)combineChanges:(id)changes
{
  v19 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  entityNames = [changesCopy entityNames];
  v6 = [entityNames countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(entityNames);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [changesCopy changesForEntityName:v10];
        v12 = [(MTLibraryChanges *)self changesForEntityName:v10];
        if (!v12)
        {
          v12 = [[MTLibraryEntityChanges alloc] initWithEntityName:v10];
          changesByEntityName = [(MTLibraryChanges *)self changesByEntityName];
          [changesByEntityName setObject:v12 forKeyedSubscript:v10];
        }

        [(MTLibraryEntityChanges *)v12 combineChanges:v11];
      }

      v7 = [entityNames countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (BOOL)hasInserts
{
  selfCopy = self;
  changesByEntityName = [(MTLibraryChanges *)self changesByEntityName];
  allKeys = [changesByEntityName allKeys];

  LOBYTE(selfCopy) = [(MTLibraryChanges *)selfCopy hasInsertsForEntityNames:allKeys];
  return selfCopy;
}

- (BOOL)hasDeletes
{
  selfCopy = self;
  changesByEntityName = [(MTLibraryChanges *)self changesByEntityName];
  allKeys = [changesByEntityName allKeys];

  LOBYTE(selfCopy) = [(MTLibraryChanges *)selfCopy hasDeletesForEntityNames:allKeys];
  return selfCopy;
}

- (BOOL)hasUpdates
{
  selfCopy = self;
  changesByEntityName = [(MTLibraryChanges *)self changesByEntityName];
  allKeys = [changesByEntityName allKeys];

  LOBYTE(selfCopy) = [(MTLibraryChanges *)selfCopy hasUpdatesForEntityNames:allKeys];
  return selfCopy;
}

- (BOOL)hasChangesForEntityNames:(id)names
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  namesCopy = names;
  v5 = [namesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(namesCopy);
        }

        v9 = [(MTLibraryChanges *)self changesForEntityName:*(*(&v13 + 1) + 8 * i), v13];
        hasChanges = [v9 hasChanges];

        if (hasChanges)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [namesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)hasInsertsForEntityNames:(id)names
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  namesCopy = names;
  v5 = [namesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(namesCopy);
        }

        v9 = [(MTLibraryChanges *)self changesForEntityName:*(*(&v13 + 1) + 8 * i), v13];
        hasInserts = [v9 hasInserts];

        if (hasInserts)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [namesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)hasDeletesForEntityNames:(id)names
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  namesCopy = names;
  v5 = [namesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(namesCopy);
        }

        v9 = [(MTLibraryChanges *)self changesForEntityName:*(*(&v13 + 1) + 8 * i), v13];
        hasDeletes = [v9 hasDeletes];

        if (hasDeletes)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [namesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)hasUpdatesForEntityNames:(id)names
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  namesCopy = names;
  v5 = [namesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(namesCopy);
        }

        v9 = [(MTLibraryChanges *)self changesForEntityName:*(*(&v13 + 1) + 8 * i), v13];
        hasUpdates = [v9 hasUpdates];

        if (hasUpdates)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [namesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

@end