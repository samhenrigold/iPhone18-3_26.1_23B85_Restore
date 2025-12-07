@interface STTestSyncableObject
+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error;
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (id)computeUniqueIdentifier;
- (id)dictionaryRepresentation;
- (void)didChangeValueForKey:(id)key;
@end

@implementation STTestSyncableObject

- (void)didChangeValueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"identifier"])
  {
    [(STUniquedManagedObject *)self updateUniqueIdentifier];
  }

  v5.receiver = self;
  v5.super_class = STTestSyncableObject;
  [(STTestSyncableObject *)&v5 didChangeValueForKey:keyCopy];
}

- (id)computeUniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  serializableClassName = [objc_opt_class() serializableClassName];
  identifier = [(STTestSyncableObject *)self identifier];
  v6 = [v3 stringWithFormat:@"%@:%@", serializableClassName, identifier];

  return v6;
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  subobjects = [(STTestSyncableObject *)self subobjects];
  v5 = [v3 initWithCapacity:{objc_msgSend(subobjects, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(STTestSyncableObject *)self subobjects];
  v6 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v25[0] = @"identifier";
        identifier = [v10 identifier];
        v25[1] = @"active";
        v26[0] = identifier;
        v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "active")}];
        v26[1] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
        [v5 addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }

  v20.receiver = self;
  v20.super_class = STTestSyncableObject;
  dictionaryRepresentation = [(STUniquedManagedObject *)&v20 dictionaryRepresentation];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[STTestSyncableObject enabled](self, "enabled")}];
  [dictionaryRepresentation setObject:v15 forKeyedSubscript:@"enabled"];

  identifier2 = [(STTestSyncableObject *)self identifier];
  [dictionaryRepresentation setObject:identifier2 forKeyedSubscript:@"identifier"];

  [dictionaryRepresentation setObject:v5 forKeyedSubscript:@"subobjects"];
  v17 = [dictionaryRepresentation copy];

  return v17;
}

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  v31 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"enabled"];
  selfCopy = self;
  -[STTestSyncableObject setEnabled:](self, "setEnabled:", [v5 BOOLValue]);

  [representationCopy objectForKeyedSubscript:@"subobjects"];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v21 = representationCopy;
    v8 = 0;
    v24 = *v27;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v9);
        v12 = [v11 objectForKeyedSubscript:@"identifier"];
        v13 = [v11 objectForKeyedSubscript:@"active"];
        bOOLValue = [v13 BOOLValue];

        v15 = +[STTestSyncableSubObject fetchRequest];
        v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v12];
        [v15 setPredicate:v16];

        v25 = v10;
        v17 = [v15 execute:&v25];
        v8 = v25;

        firstObject = [v17 firstObject];
        v19 = firstObject;
        if (firstObject)
        {
          [firstObject setActive:bOOLValue];
          [v19 setRoot:selfCopy];
        }

        ++v9;
        v10 = v8;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);

    representationCopy = v21;
  }

  return 1;
}

+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  contextCopy = context;
  v9 = [representationCopy objectForKeyedSubscript:@"identifier"];
  fetchRequest = [self fetchRequest];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v9];
  [fetchRequest setPredicate:v11];

  v12 = [fetchRequest execute:error];
  if (v12)
  {
    v26 = fetchRequest;
    v27 = v9;
    v25 = v12;
    firstObject = [v12 firstObject];
    if (!firstObject)
    {
      v13 = [[STTestSyncableObject alloc] initWithContext:contextCopy];
      v14 = [representationCopy objectForKeyedSubscript:@"identifier"];
      firstObject = v13;
      [(STTestSyncableObject *)v13 setIdentifier:v14];
    }

    v28 = representationCopy;
    [representationCopy objectForKeyedSubscript:@"subobjects"];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v35 = 0u;
    v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [*(*(&v32 + 1) + 8 * i) objectForKeyedSubscript:@"identifier"];
          v20 = +[STTestSyncableSubObject fetchRequest];
          v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v19];
          [v20 setPredicate:v21];

          v22 = [v20 execute:error];
          firstObject2 = [v22 firstObject];
          if (!firstObject2)
          {
            firstObject2 = [[STTestSyncableSubObject alloc] initWithContext:contextCopy];
            [(STTestSyncableSubObject *)firstObject2 setIdentifier:v19];
            [(STTestSyncableSubObject *)firstObject2 setRoot:firstObject];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    v9 = v27;
    representationCopy = v28;
    v12 = v25;
    fetchRequest = v26;
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end