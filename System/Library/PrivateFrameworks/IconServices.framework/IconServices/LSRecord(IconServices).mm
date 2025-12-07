@interface LSRecord(IconServices)
+ (id)_is_resourceTokenForRecords:()IconServices;
+ (void)_is_getSequenceNumber:()IconServices andUUID:;
- (uint64_t)_is_canProvideIconResources;
- (uint64_t)_is_providesPrecomposedIconResources;
@end

@implementation LSRecord(IconServices)

- (uint64_t)_is_canProvideIconResources
{
  v29 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    iconDictionary = [self iconDictionary];
    v3 = +[ISDefaults sharedInstance];
    isSolariumEnabled = [v3 isSolariumEnabled];

    if ((isSolariumEnabled & 1) == 0)
    {
      v5 = [iconDictionary mutableCopy];
      [v5 removeObjectForKey:@"ISDocumentIconConfiguration"];
      [v5 removeObjectForKey:@"ISFolderIconConfiguration"];
      v6 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];

      iconDictionary = v6;
    }

    if ([iconDictionary count])
    {
      v7 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    iconDictionary = 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = legacyResourceNames(isKindOfClass);
    v10 = expandedNamesFromResourceNames(v9);

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = iconDictionary;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [self URL];
          v18 = [v17 URLByAppendingPathComponent:v16];

          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          path = [v18 path];
          v21 = [defaultManager fileExistsAtPath:path];

          if (v21)
          {
            v7 = 1;
            goto LABEL_19;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v7 = 0;
LABEL_19:
      iconDictionary = v23;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_22:

  return v7;
}

+ (void)_is_getSequenceNumber:()IconServices andUUID:
{
  mEMORY[0x1E6963648] = [MEMORY[0x1E6963648] sharedDatabaseContext];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![mEMORY[0x1E6963648] canAccess])
  {
    *a4 = [MEMORY[0x1E696AFB0] _IF_nullUUID];
    v8 = &unk_1F1A652B0;
  }

  else
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v9 = 0;
    [defaultWorkspace getKnowledgeUUID:a4 andSequenceNumber:&v9];
    v8 = v9;
  }

  *a3 = [v8 unsignedLongLongValue];
}

+ (id)_is_resourceTokenForRecords:()IconServices
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{16 * objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        persistentIdentifier = [*(*(&v13 + 1) + 8 * i) persistentIdentifier];
        [v4 appendData:persistentIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (uint64_t)_is_providesPrecomposedIconResources
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  iconDictionary = [self iconDictionary];
  v3 = +[ISDefaults sharedInstance];
  defaultToTemplatizedAppIcons = [v3 defaultToTemplatizedAppIcons];

  v5 = [iconDictionary _IF_BOOLForKeys:&unk_1F1A657D8 defaultValue:defaultToTemplatizedAppIcons ^ 1u];
  return v5;
}

@end