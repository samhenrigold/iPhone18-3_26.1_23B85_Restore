@interface _PFModelMap
+ (id)ancillaryModelFactoryClasses;
- (id)entitiesForContext:(uint64_t)context configuration:;
- (void)addManagedObjectModel:(uint64_t)model;
- (void)ancillaryEntityWithName:(void *)name;
- (void)dealloc;
- (void)entityForClassName:(void *)name inContext:;
- (void)initWithClientModel:(void *)model;
@end

@implementation _PFModelMap

+ (id)ancillaryModelFactoryClasses
{
  if (qword_1ED4BEAD0 != -1)
  {
    dispatch_once(&qword_1ED4BEAD0, &__block_literal_global_36);
  }

  return _MergedGlobals_81;
}

- (void)dealloc
{
  self->_clientModel = 0;

  self->_models = 0;
  modelEntityCounts = self->_modelEntityCounts;
  if (modelEntityCounts)
  {
    free(modelEntityCounts);
  }

  indexedEntities = self->_indexedEntities;
  if (indexedEntities)
  {
    entityCount = self->_entityCount;
    if (entityCount)
    {
      for (i = 0; i < entityCount; ++i)
      {
        v7 = self->_indexedEntities[i];
        if (v7)
        {

          self->_indexedEntities[i] = 0;
          entityCount = self->_entityCount;
        }
      }

      indexedEntities = self->_indexedEntities;
    }

    free(indexedEntities);
  }

  self->_allEntities = 0;
  self->_entitiesByPath = 0;
  v8.receiver = self;
  v8.super_class = _PFModelMap;
  [(_PFModelMap *)&v8 dealloc];
}

- (void)initWithClientModel:(void *)model
{
  modelCopy = model;
  v23 = *MEMORY[0x1E69E9840];
  if (model)
  {
    if ([a2 _modelsReferenceIDOffset])
    {

      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{objc_msgSend(a2, "_modelsReferenceIDOffset"), a2), 0}];
      objc_exception_throw(v16);
    }

    v21.receiver = modelCopy;
    v21.super_class = _PFModelMap;
    modelCopy = objc_msgSendSuper2(&v21, sel_init);
    if (modelCopy)
    {
      v4 = objc_autoreleasePoolPush();
      modelCopy[1] = a2;
      v5 = [objc_msgSend(a2 "entitiesByName")];
      modelCopy[5] = v5;
      modelCopy[6] = v5;
      v6 = [+[_PFModelMap ancillaryModelFactoryClasses](_PFModelMap "ancillaryModelFactoryClasses")];
      v7 = malloc_type_malloc(8 * [v6 count] + 8, 0x100004000313F17uLL);
      modelCopy[8] = v7;
      *v7 = modelCopy[6];
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = *v18;
        do
        {
          v12 = 0;
          v13 = v10;
          do
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v6);
            }

            v10 = v13 + 1;
            ancillaryEntityCount = [*(*(&v17 + 1) + 8 * v12) ancillaryEntityCount];
            *(modelCopy[8] + 8 * v13 + 8) = ancillaryEntityCount;
            modelCopy[6] += ancillaryEntityCount;
            ++v12;
            ++v13;
          }

          while (v9 != v12);
          v9 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v9);
      }

      [(_PFModelMap *)modelCopy addManagedObjectModel:a2];
      objc_autoreleasePoolPop(v4);
    }
  }

  return modelCopy;
}

- (void)addManagedObjectModel:(uint64_t)model
{
  v40 = *MEMORY[0x1E69E9840];
  if (model)
  {
    if (!*(model + 32))
    {
      *(model + 32) = PF_CALLOC_OBJECT_ARRAY(*(model + 48));
    }

    context = objc_autoreleasePoolPush();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v4 = *(model + 24);
    v5 = [v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = *v35;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        _modelsReferenceIDOffset = [v9 _modelsReferenceIDOffset];
        if (_modelsReferenceIDOffset == [a2 _modelsReferenceIDOffset])
        {
          v11 = [objc_msgSend(v9 "entities")];
          if (v11 != [objc_msgSend(a2 "entities")])
          {
            v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{objc_msgSend(v9, "_modelsReferenceIDOffset")), 0}];
            objc_exception_throw(v28);
          }

          if (([objc_msgSend(v9 "entityVersionHashesByName")] & 1) == 0)
          {
            v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{v9, objc_msgSend(v9, "entityVersionHashesByName"), a2, objc_msgSend(a2, "entityVersionHashesByName")), 0}];
            objc_exception_throw(v27);
          }

          v7 = 0;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v5);
    if (v7)
    {
LABEL_16:
      v12 = *(model + 16);
      if (v12)
      {
        v13 = [v12 mutableCopy];
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v14 = v13;
      v15 = *(model + 56);
      if (v15)
      {
        v16 = [v15 mutableCopy];
      }

      else
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v17 = v16;
      v18 = *(model + 24);
      if (v18)
      {
        v19 = [v18 mutableCopy];
      }

      else
      {
        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v20 = v19;
      [v19 addObject:a2];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v21 = [a2 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v21)
      {
        v22 = *v31;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(a2);
            }

            v24 = *(*(&v30 + 1) + 8 * j);
            v25 = _PFModelMapSlotForEntity(model, v24);
            [v17 setObject:v24 forKey:_PFModelMapPathForEntity(v24)];
            v26 = *(*(model + 32) + 8 * v25);
            if (v26 != v24)
            {

              *(*(model + 32) + 8 * v25) = v24;
            }

            [v14 addObject:v24];
          }

          v21 = [a2 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v21);
      }

      *(model + 24) = [v20 copy];
      *(model + 16) = v14;

      *(model + 56) = [v17 copy];
    }

    objc_autoreleasePoolPop(context);
  }
}

- (void)ancillaryEntityWithName:(void *)name
{
  if (!name)
  {
    return 0;
  }

  v3 = name[5];
  if (v3 >= name[6])
  {
    return 0;
  }

  while (1)
  {
    v5 = *(name[4] + 8 * v3);
    if ([objc_msgSend(v5 "name")])
    {
      break;
    }

    if (++v3 >= name[6])
    {
      return 0;
    }
  }

  return v5;
}

- (void)entityForClassName:(void *)name inContext:
{
  if (!self)
  {
    return 0;
  }

  _allowAncillaryEntities = [name _allowAncillaryEntities];
  v6 = 40;
  if (_allowAncillaryEntities)
  {
    v6 = 48;
  }

  v7 = *(self + v6);
  if (!v7)
  {
    return 0;
  }

  for (i = 0; i < v7; ++i)
  {
    v9 = *(*(self + 32) + 8 * i);
    managedObjectClassName = [v9 managedObjectClassName];
    if (managedObjectClassName && [managedObjectClassName isEqualToString:a2])
    {
      i = *(self + 48);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)entitiesForContext:(uint64_t)context configuration:
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  if ([a2 _allowAncillaryEntities])
  {
    if (context)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = *(self + 24);
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            if (v11 == *(self + 8))
            {
              entities = [v11 entitiesForConfiguration:context];
            }

            else
            {
              entities = [v11 entities];
            }

            [v5 addObjectsFromArray:entities];
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v8);
      }

      v13 = [v5 copy];

      return v13;
    }

    v15 = *(self + 16);
  }

  else
  {
    v15 = [*(self + 8) entitiesForConfiguration:context];
  }

  return v15;
}

@end