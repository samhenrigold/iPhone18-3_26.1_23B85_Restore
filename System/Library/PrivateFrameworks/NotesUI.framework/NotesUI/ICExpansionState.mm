@interface ICExpansionState
+ (ICExpansionState)sharedExpansionState;
- (BOOL)isSectionIdentiferExpanded:(id)expanded inContext:(id)context;
- (ICExpansionState)init;
- (NSDictionary)archiveDictionary;
- (id)archivableIdentifierForItemIdentifier:(id)identifier;
- (id)collapsedObjectIDsInContext:(id)context;
- (id)description;
- (id)expandedObjectIDsInContext:(id)context;
- (id)identifierForArchivableIdentifier:(id)identifier itemType:(int64_t)type;
- (id)itemIdentifiersExpanded:(BOOL)expanded itemType:(int64_t)type context:(id)context;
- (id)normalizedContext:(id)context;
- (id)normalizedItemIdentifier:(id)identifier;
- (int64_t)itemTypeForItemIdentifier:(id)identifier;
- (void)applyArchiveDictionary:(id)dictionary;
- (void)collapseItemIdentifiers:(id)identifiers itemType:(int64_t)type context:(id)context;
- (void)expandItemIdentifiers:(id)identifiers itemType:(int64_t)type context:(id)context;
- (void)setExpanded:(BOOL)expanded itemIdentifier:(id)identifier itemType:(int64_t)type context:(id)context;
@end

@implementation ICExpansionState

+ (ICExpansionState)sharedExpansionState
{
  if (sharedExpansionState_onceToken != -1)
  {
    +[ICExpansionState sharedExpansionState];
  }

  v3 = sharedExpansionState_instance;

  return v3;
}

uint64_t __40__ICExpansionState_sharedExpansionState__block_invoke()
{
  v0 = objc_alloc_init(ICExpansionState);
  sharedExpansionState_instance = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (ICExpansionState)init
{
  v6.receiver = self;
  v6.super_class = ICExpansionState;
  v2 = [(ICExpansionState *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    expansionState = v2->_expansionState;
    v2->_expansionState = dictionary;
  }

  return v2;
}

- (NSDictionary)archiveDictionary
{
  v50 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  expansionState = [(ICExpansionState *)self expansionState];
  allKeys = [expansionState allKeys];

  obj = allKeys;
  v26 = [allKeys countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v26)
  {
    v24 = *v44;
    do
    {
      v5 = 0;
      do
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v5;
        v6 = *(*(&v43 + 1) + 8 * v5);
        expansionState2 = [(ICExpansionState *)self expansionState];
        v27 = v6;
        v8 = objc_msgSend_objectForKeyedSubscript_(expansionState2);

        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v32 = v8;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        allKeys2 = [v8 allKeys];
        v33 = [allKeys2 countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v33)
        {
          v30 = *v40;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v40 != v30)
              {
                objc_enumerationMutation(allKeys2);
              }

              v34 = *(*(&v39 + 1) + 8 * i);
              v10 = objc_msgSend_objectForKeyedSubscript_(v32);
              dictionary3 = [MEMORY[0x1E695DF90] dictionary];
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              allKeys3 = [v10 allKeys];
              v13 = [allKeys3 countByEnumeratingWithState:&v35 objects:v47 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v36;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v36 != v15)
                    {
                      objc_enumerationMutation(allKeys3);
                    }

                    v17 = [(ICExpansionState *)self archivableIdentifierForItemIdentifier:*(*(&v35 + 1) + 8 * j)];
                    v18 = objc_msgSend_objectForKeyedSubscript_(v10);
                    [dictionary3 setObject:v18 forKeyedSubscript:v17];
                  }

                  v14 = [allKeys3 countByEnumeratingWithState:&v35 objects:v47 count:16];
                }

                while (v14);
              }

              v19 = [dictionary3 copy];
              [dictionary2 setObject:v19 forKeyedSubscript:v34];
            }

            v33 = [allKeys2 countByEnumeratingWithState:&v39 objects:v48 count:16];
          }

          while (v33);
        }

        v20 = [dictionary2 copy];
        [dictionary setObject:v20 forKeyedSubscript:v27];

        v5 = v28 + 1;
      }

      while (v28 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v26);
  }

  v21 = [dictionary copy];

  return v21;
}

- (void)applyArchiveDictionary:(id)dictionary
{
  v43 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  dictionaryCopy = dictionary;
  obj = [dictionaryCopy allKeys];
  v21 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v21)
  {
    v19 = *v37;
    do
    {
      v4 = 0;
      do
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v4;
        v5 = *(*(&v36 + 1) + 8 * v4);
        v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v25 = v6;
        allKeys = [v6 allKeys];
        v26 = [allKeys countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v26)
        {
          v24 = *v33;
          do
          {
            v7 = 0;
            do
            {
              if (*v33 != v24)
              {
                objc_enumerationMutation(allKeys);
              }

              v27 = v7;
              v8 = *(*(&v32 + 1) + 8 * v7);
              v9 = objc_msgSend_objectForKeyedSubscript_(v25);
              v10 = ICExpansionStateItemTypeFromString(v8);
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              allKeys2 = [v9 allKeys];
              v12 = [allKeys2 countByEnumeratingWithState:&v28 objects:v40 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v29;
                do
                {
                  v15 = 0;
                  do
                  {
                    if (*v29 != v14)
                    {
                      objc_enumerationMutation(allKeys2);
                    }

                    v16 = [(ICExpansionState *)self identifierForArchivableIdentifier:*(*(&v28 + 1) + 8 * v15) itemType:v10];
                    v17 = objc_msgSend_objectForKeyedSubscript_(v9);
                    -[ICExpansionState setExpanded:itemIdentifier:itemType:context:](self, "setExpanded:itemIdentifier:itemType:context:", [v17 BOOLValue], v16, v10, v5);

                    ++v15;
                  }

                  while (v13 != v15);
                  v13 = [allKeys2 countByEnumeratingWithState:&v28 objects:v40 count:16];
                }

                while (v13);
              }

              v7 = v27 + 1;
            }

            while (v27 + 1 != v26);
            v26 = [allKeys countByEnumeratingWithState:&v32 objects:v41 count:16];
          }

          while (v26);
        }

        v4 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v21);
  }
}

- (id)expandedObjectIDsInContext:(id)context
{
  v3 = [(ICExpansionState *)self expandedItemIdentifiersWithItemType:0 context:context];
  v4 = [v3 ic_objectsOfClass:objc_opt_class()];

  return v4;
}

- (id)collapsedObjectIDsInContext:(id)context
{
  v3 = [(ICExpansionState *)self collapsedItemIdentifiersWithItemType:0 context:context];
  v4 = [v3 ic_objectsOfClass:objc_opt_class()];

  return v4;
}

- (id)itemIdentifiersExpanded:(BOOL)expanded itemType:(int64_t)type context:(id)context
{
  expandedCopy = expanded;
  v28 = *MEMORY[0x1E69E9840];
  v7 = [(ICExpansionState *)self normalizedContext:context];
  expansionState = [(ICExpansionState *)self expansionState];
  v9 = objc_msgSend_objectForKeyedSubscript_(expansionState);
  v22 = v7;
  v10 = objc_msgSend_objectForKeyedSubscript_(v9);

  v11 = [MEMORY[0x1E695DFA8] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [v10 allKeys];
  v13 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = objc_msgSend_objectForKeyedSubscript_(v10);
        bOOLValue = [v18 BOOLValue];

        if (bOOLValue == expandedCopy)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v20 = [v11 copy];

  return v20;
}

- (BOOL)isSectionIdentiferExpanded:(id)expanded inContext:(id)context
{
  expandedCopy = expanded;
  v7 = [(ICExpansionState *)self normalizedContext:context];
  expansionState = [(ICExpansionState *)self expansionState];
  v9 = objc_msgSend_objectForKeyedSubscript_(expansionState);
  v10 = objc_msgSend_objectForKeyedSubscript_(v9);

  expansionStateContext = [expandedCopy expansionStateContext];

  v12 = objc_msgSend_objectForKeyedSubscript_(v10);

  if (v12)
  {
    bOOLValue = [v12 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)expandItemIdentifiers:(id)identifiers itemType:(int64_t)type context:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  contextCopy = context;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [identifiersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        [(ICExpansionState *)self expandItemIdentifier:*(*(&v14 + 1) + 8 * v13++) itemType:type context:contextCopy];
      }

      while (v11 != v13);
      v11 = [identifiersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)collapseItemIdentifiers:(id)identifiers itemType:(int64_t)type context:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  contextCopy = context;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [identifiersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        [(ICExpansionState *)self collapseItemIdentifier:*(*(&v14 + 1) + 8 * v13++) itemType:type context:contextCopy];
      }

      while (v11 != v13);
      v11 = [identifiersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  archiveDictionary = [(ICExpansionState *)self archiveDictionary];
  v7 = [v3 stringWithFormat:@"%@[%@]", v5, archiveDictionary];

  return v7;
}

- (void)setExpanded:(BOOL)expanded itemIdentifier:(id)identifier itemType:(int64_t)type context:(id)context
{
  expandedCopy = expanded;
  identifierCopy = identifier;
  v10 = [(ICExpansionState *)self normalizedContext:context];
  expansionState = [(ICExpansionState *)self expansionState];
  dictionary = objc_msgSend_objectForKeyedSubscript_(expansionState);

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    expansionState2 = [(ICExpansionState *)self expansionState];
    [expansionState2 setObject:dictionary forKeyedSubscript:v10];
  }

  if (type == -1)
  {
    type = [(ICExpansionState *)self itemTypeForItemIdentifier:identifierCopy];
  }

  v14 = [(ICExpansionState *)self normalizedItemIdentifier:identifierCopy];
  v15 = v14;
  if (type != -1 && v14)
  {
    dictionary2 = objc_msgSend_objectForKeyedSubscript_(dictionary);
    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      if (type > 2)
      {
        v17 = @"ICExpansionStateItemTypeUnknown";
      }

      else
      {
        v17 = off_1E8469E28[type];
      }

      [dictionary setObject:dictionary2 forKeyedSubscript:v17];
    }

    v18 = [MEMORY[0x1E696AD98] numberWithBool:expandedCopy];
    [dictionary2 setObject:v18 forKeyedSubscript:v15];
  }
}

- (id)normalizedContext:(id)context
{
  if (context)
  {
    return context;
  }

  else
  {
    return @"ICExpansionStateGlobalContext";
  }
}

- (int64_t)itemTypeForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy conformsToProtocol:&unk_1F4FE3D00])
  {
    v4 = 1;
  }

  else if ([identifierCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)normalizedItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  expansionStateContext = identifierCopy;
  if ([identifierCopy conformsToProtocol:&unk_1F4FE3D00])
  {
    expansionStateContext = [identifierCopy expansionStateContext];
  }

  return expansionStateContext;
}

- (id)archivableIdentifierForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uRIRepresentation = [identifierCopy URIRepresentation];
    absoluteString = [uRIRepresentation absoluteString];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifierCopy = identifierCopy;
    }

    else
    {
      identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", identifierCopy];
    }

    absoluteString = identifierCopy;
  }

  return absoluteString;
}

- (id)identifierForArchivableIdentifier:(id)identifier itemType:(int64_t)type
{
  identifierCopy = identifier;
  mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
  persistentStoreCoordinator = [mEMORY[0x1E69B7800] persistentStoreCoordinator];

  persistentStoreCoordinator2 = [MEMORY[0x1E69B7140] persistentStoreCoordinator];
  if (type)
  {
    v9 = identifierCopy;
  }

  else
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:identifierCopy];
    if (v10)
    {
      v11 = [persistentStoreCoordinator ic_managedObjectIDForURIRepresentation:v10];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [persistentStoreCoordinator2 ic_managedObjectIDForURIRepresentation:v10];
      }

      v9 = v13;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end