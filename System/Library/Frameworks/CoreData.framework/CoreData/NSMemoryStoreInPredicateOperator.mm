@interface NSMemoryStoreInPredicateOperator
- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject;
- (void)dealloc;
- (void)setContext:(id)context;
@end

@implementation NSMemoryStoreInPredicateOperator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSMemoryStoreInPredicateOperator;
  [(NSMemoryStoreInPredicateOperator *)&v3 dealloc];
}

- (void)setContext:(id)context
{
  context = self->_context;
  if (context != context)
  {

    self->_context = context;
  }
}

- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject
{
  v36 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())) && (object = [object objectID]) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [andObject count];
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if (v7 >= 0x201)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = &v26 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    objectCopy = object;
    v28 = &v26;
    v27 = v7;
    if (v7 > 0x200)
    {
      v10 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v26 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v8);
    }

    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v31 = 0u;
    v11 = [andObject countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          v16 = v13;
          if (*v32 != v14)
          {
            objc_enumerationMutation(andObject);
          }

          objectID = *(*(&v31 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            objectID = [objectID objectID];
          }

          context = self->_context;
          if (context)
          {
            v19 = *(context->_additionalPrivateIvars + 1);
            if (v19)
            {
              v20 = [*v19 objectForKey:objectID];
              if (v20)
              {
                objectID = v20;
              }
            }
          }

          ++v13;
          *&v10[8 * v16] = objectID;
        }

        v12 = [andObject countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v12);
    }

    v21 = v27;
    if (v27)
    {
      v22 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v10 count:v27];
      v23 = v21 >= 0x201;
      object = objectCopy;
      if (v23)
      {
        NSZoneFree(0, v10);
      }
    }

    else
    {
      v22 = NSArray_EmptyArray;
      object = objectCopy;
    }

    andObject = v22;
  }

  else
  {
    v22 = 0;
  }

  v30.receiver = self;
  v30.super_class = NSMemoryStoreInPredicateOperator;
  v24 = [(NSPredicateOperator *)&v30 performPrimitiveOperationUsingObject:object andObject:andObject];

  return v24;
}

@end