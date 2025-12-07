@interface NSConstraintValidator
- (id)reset;
- (id)validateForSave;
- (void)_addConstraintRoot:(void *)root forEntity:;
- (void)dealloc;
- (void)initWithManagedObjectContext:(void *)context;
- (void)registerObject:(void *)result;
- (void)registerObjects:(void *)result;
@end

@implementation NSConstraintValidator

- (id)validateForSave
{
  selfCopy = self;
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (selfCopy[3])
    {
      v3 = [selfCopy[2] count];
      if (v3)
      {
        v4 = v3;
        for (i = 0; i != v4; ++i)
        {
          v6 = selfCopy[3];
          if (v6[i])
          {
            v17 = 0u;
            v18 = 0u;
            v15 = 0u;
            v16 = 0u;
            v7 = v6[i];
            v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
            if (v8)
            {
              v9 = v8;
              v10 = *v16;
              do
              {
                for (j = 0; j != v9; ++j)
                {
                  if (*v16 != v10)
                  {
                    objc_enumerationMutation(v7);
                  }

                  v12 = [(NSConstraintCache *)*(*(&v15 + 1) + 8 * j) validateForSave:?];
                  if ([v12 count])
                  {
                    [v2 addObjectsFromArray:v12];
                  }
                }

                v9 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
              }

              while (v9);
            }
          }
        }
      }
    }

    if ([v2 count])
    {
      v13 = *MEMORY[0x1E696A250];
      v19 = @"Conflicts";
      v20 = v2;
      selfCopy = [MEMORY[0x1E696ABC0] errorWithDomain:v13 code:1551 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v20, &v19, 1)}];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)reset
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (result[3])
    {
      result = [result[2] count];
      if (result)
      {
        v2 = result;
        for (i = 0; i != v2; i = (i + 1))
        {
          v4 = v1[3];
          if (v4[i])
          {
            v11 = 0u;
            v12 = 0u;
            v9 = 0u;
            v10 = 0u;
            v5 = v4[i];
            result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
            if (result)
            {
              v6 = result;
              v7 = *v10;
              do
              {
                v8 = 0;
                do
                {
                  if (*v10 != v7)
                  {
                    objc_enumerationMutation(v5);
                  }

                  [(NSConstraintCache *)*(*(&v9 + 1) + 8 * v8) reset];
                  v8 = (v8 + 1);
                }

                while (v6 != v8);
                result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
                v6 = result;
              }

              while (result);
            }
          }
        }
      }
    }
  }

  return result;
}

- (void)dealloc
{
  if (self->_cachesByEntity)
  {
    v3 = [(NSArray *)self->_entities count];
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
        v6 = self->_cachesByEntity[i];
        if (v6)
        {

          self->_cachesByEntity[i] = 0;
        }
      }
    }

    PF_FREE_OBJECT_ARRAY(self->_cachesByEntity);
  }

  self->_modelMap = 0;
  self->_entities = 0;
  v7.receiver = self;
  v7.super_class = NSConstraintValidator;
  [(NSConstraintValidator *)&v7 dealloc];
}

- (void)initWithManagedObjectContext:(void *)context
{
  v20 = *MEMORY[0x1E69E9840];
  if (!context)
  {
    return 0;
  }

  v18.receiver = context;
  v18.super_class = NSConstraintValidator;
  v3 = objc_msgSendSuper2(&v18, sel_init);
  if (v3)
  {
    persistentStoreCoordinator = [a2 persistentStoreCoordinator];
    v5 = persistentStoreCoordinator ? *(persistentStoreCoordinator + 96) : 0;
    v6 = v5;
    v3[1] = v6;
    v7 = [(_PFModelMap *)v6 entitiesForContext:a2 configuration:0];
    v3[2] = v7;
    v3[3] = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([(NSEntityDescription *)v12 _hasUniqueProperties])
          {
            if (!v3[3])
            {
              v3[3] = PF_CALLOC_OBJECT_ARRAY([v3[2] count]);
            }

            [NSConstraintCache createCachesForEntity:v12 forValidator:v3];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return v3;
}

- (void)_addConstraintRoot:(void *)root forEntity:
{
  if (result)
  {
    v4 = result;
    v5 = _PFModelMapSlotForEntity(result[1], root);
    v6 = *(v4[3] + 8 * v5);
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(v4[3] + 8 * v5) = v6;
    }

    return [v6 addObject:a2];
  }

  return result;
}

- (void)registerObject:(void *)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    result = [a2 entity];
    if (result)
    {
      v4 = result;
      do
      {
        v5 = v3[3];
        v6 = *(v5 + 8 * _PFModelMapSlotForEntity(v3[1], v4));
        if (v6)
        {
          v13 = 0u;
          v14 = 0u;
          v11 = 0u;
          v12 = 0u;
          v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v12;
            do
            {
              v10 = 0;
              do
              {
                if (*v12 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                [(NSConstraintCache *)*(*(&v11 + 1) + 8 * v10++) registerObject:a2];
              }

              while (v8 != v10);
              v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
            }

            while (v8);
          }
        }

        result = [v4 superentity];
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)registerObjects:(void *)result
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (result[3])
    {
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      result = [a2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (result)
      {
        v4 = result;
        v5 = *v8;
        do
        {
          v6 = 0;
          do
          {
            if (*v8 != v5)
            {
              objc_enumerationMutation(a2);
            }

            [(NSConstraintValidator *)v2 registerObject:?];
            v6 = (v6 + 1);
          }

          while (v4 != v6);
          result = [a2 countByEnumeratingWithState:&v7 objects:v11 count:16];
          v4 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

@end