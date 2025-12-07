@interface CHManagedHandle
+ (id)managedHandleForHandle:(id)handle inManagedObjectContext:(id)context;
+ (id)managedHandlesForHandles:(id)handles inManagedObjectContext:(id)context;
- (CHHandle)chHandle;
- (id)copyWithContext:(id)context;
@end

@implementation CHManagedHandle

- (CHHandle)chHandle
{
  value = [(CHManagedHandle *)self value];
  if (value && (v4 = [(CHManagedHandle *)self type], (v4 - 1) <= 2))
  {
    v5 = v4;
    v6 = [CHHandle alloc];
    normalizedValue = [(CHManagedHandle *)self normalizedValue];
    v8 = [(CHHandle *)v6 initWithType:v5 value:value normalizedValue:normalizedValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)managedHandleForHandle:(id)handle inManagedObjectContext:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  contextCopy = context;
  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];

  if (managedObjectModel)
  {
    entitiesByName = [managedObjectModel entitiesByName];
    v10 = [entitiesByName objectForKeyedSubscript:@"Handle"];

    if (v10)
    {
      v13 = [objc_alloc(objc_opt_class()) initWithEntity:v10 insertIntoManagedObjectContext:contextCopy];
    }

    else
    {
      v15 = ch_framework_log(v11, v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543618;
        v20 = @"Handle";
        v21 = 2114;
        v22 = contextCopy;
        _os_log_impl(&dword_1C3E90000, v15, OS_LOG_TYPE_DEFAULT, "Could not find entity description with name %{public}@ in managed object context %{public}@. Falling back to convenience initializer.", &v19, 0x16u);
      }

      v13 = [objc_alloc(objc_opt_class()) initWithContext:contextCopy];
    }

    v14 = v13;
    normalizedValue = [handleCopy normalizedValue];
    [v14 setNormalizedValue:normalizedValue];

    [v14 setType:{objc_msgSend(handleCopy, "type")}];
    value = [handleCopy value];
    [v14 setValue:value];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)managedHandlesForHandles:(id)handles inManagedObjectContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  contextCopy = context;
  v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(handlesCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = handlesCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [self managedHandleForHandle:*(*(&v17 + 1) + 8 * i) inManagedObjectContext:{contextCopy, v17}];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = [DBManager entityDescriptionHavingName:@"Handle" forContext:contextCopy];
  if (v5)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithEntity:v5 insertIntoManagedObjectContext:contextCopy];
  }

  else
  {
    v7 = +[CHLogServer sharedInstance];
    v8 = [v7 logHandleForDomain:"CHManagedHandle"];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CHManagedHandle(Additions) *)contextCopy copyWithContext:v8];
    }

    v6 = [objc_alloc(objc_opt_class()) initWithContext:contextCopy];
  }

  v9 = v6;
  normalizedValue = [(CHManagedHandle *)self normalizedValue];
  [v9 setNormalizedValue:normalizedValue];

  [v9 setType:{-[CHManagedHandle type](self, "type")}];
  value = [(CHManagedHandle *)self value];
  [v9 setValue:value];

  return v9;
}

@end