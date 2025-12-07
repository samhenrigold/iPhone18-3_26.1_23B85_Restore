@interface NSFetchIndexDescription
- (BOOL)isEqual:(id)equal;
- (NSFetchIndexDescription)initWithCoder:(id)coder;
- (NSFetchIndexDescription)initWithName:(NSString *)name elements:(NSArray *)elements;
- (NSFetchIndexDescription)initWithName:(id)name predicate:(id)predicate elements:(id)elements entity:(id)entity;
- (id)_validateCollationTypeChangeFrom:(uint64_t)from to:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)_compare:(id)_compare;
- (uint64_t)_compoundIndexRepresentation;
- (uint64_t)_isIndexForProperty:(uint64_t)property;
- (uint64_t)_isMappedSinglePropertyIndex;
- (uint64_t)_isPurelyModeledIndex;
- (uint64_t)_isUnique;
- (void)_checkElements:(void *)result;
- (void)_setEntity:(id)entity;
- (void)_setIsUnique:(void *)result;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setElements:(NSArray *)elements;
- (void)setName:(NSString *)name;
- (void)setPartialIndexPredicate:(NSPredicate *)partialIndexPredicate;
@end

@implementation NSFetchIndexDescription

- (void)dealloc
{
  self->_elements = 0;

  self->_name = 0;
  self->_entity = 0;
  self->_partialIndexPredicate = 0;
  v3.receiver = self;
  v3.super_class = NSFetchIndexDescription;
  [(NSFetchIndexDescription *)&v3 dealloc];
}

- (uint64_t)_isMappedSinglePropertyIndex
{
  if (!self)
  {
    return 0;
  }

  if ([*(self + 16) count] != 1)
  {
    return 0;
  }

  firstObject = [*(self + 16) firstObject];
  if ([firstObject collationType])
  {
    return 0;
  }

  return [firstObject isAscending];
}

- (uint64_t)_isPurelyModeledIndex
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v1 = *(result + 16);
    v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v7;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(v1);
          }

          if ([objc_msgSend(*(*(&v6 + 1) + 8 * i) "property")] == 5)
          {
            return 0;
          }
        }

        v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    return 1;
  }

  return result;
}

- (uint64_t)_isUnique
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v1 = *(result + 16);
    result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v7;
      while (2)
      {
        v4 = 0;
        do
        {
          if (*v7 != v3)
          {
            objc_enumerationMutation(v1);
          }

          v5 = *(*(&v6 + 1) + 8 * v4);
          if (v5 && (*(v5 + 40) & 4) != 0)
          {
            return 1;
          }

          ++v4;
        }

        while (v2 != v4);
        result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
        v2 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (void)_checkElements:(void *)result
{
  v25 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = [a2 count] ? objc_msgSend(objc_msgSend(a2, "firstObject"), "collationType") : 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    result = [a2 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v19;
      do
      {
        v6 = 0;
        do
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(a2);
          }

          v7 = *(*(&v18 + 1) + 8 * v6);
          property = [v7 property];
          if (property)
          {
            v9 = property;
            _propertyType = [property _propertyType];
            if ((_propertyType - 4) >= 3 && _propertyType != 2)
            {
              v12 = MEMORY[0x1E695DF30];
              v13 = *MEMORY[0x1E695D940];
              v22 = @"Property";
              v23 = v9;
              v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
              v15 = @"Unsupported property type for index.";
              v16 = v12;
              v17 = v13;
              goto LABEL_21;
            }

            if (v3 != [v7 collationType])
            {
              v16 = MEMORY[0x1E695DF30];
              v17 = *MEMORY[0x1E695D940];
              v15 = @"Can't mix and match collation types.";
              v14 = 0;
LABEL_21:
              objc_exception_throw([v16 exceptionWithName:v17 reason:v15 userInfo:v14]);
            }
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        result = [a2 countByEnumeratingWithState:&v18 objects:v24 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

- (NSFetchIndexDescription)initWithName:(NSString *)name elements:(NSArray *)elements
{
  v18 = *MEMORY[0x1E69E9840];
  if (!name)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't create an index with no name" userInfo:0]);
  }

  [(NSFetchIndexDescription *)self _checkElements:?];
  v16.receiver = self;
  v16.super_class = NSFetchIndexDescription;
  v7 = [(NSFetchIndexDescription *)&v16 init];
  if (v7)
  {
    v7->_name = name;
    v7->_elements = [(NSArray *)elements copy];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = [(NSArray *)elements countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(elements);
          }

          [(NSFetchIndexElementDescription *)*(*(&v12 + 1) + 8 * v10++) _setIndexDescription:v7];
        }

        while (v8 != v10);
        v8 = [(NSArray *)elements countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v7;
}

- (NSFetchIndexDescription)initWithName:(id)name predicate:(id)predicate elements:(id)elements entity:(id)entity
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = NSFetchIndexDescription;
  v10 = [(NSFetchIndexDescription *)&v21 init];
  if (v10)
  {
    v10->_name = name;
    v10->_elements = [elements copy];
    predicateCopy = predicate;
    v10->_entity = entity;
    v10->_partialIndexPredicate = predicateCopy;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [elements countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(elements);
          }

          [(NSFetchIndexElementDescription *)*(*(&v17 + 1) + 8 * v15++) _setIndexDescription:v10];
        }

        while (v13 != v15);
        v13 = [elements countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v13);
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v4[1] = [(NSString *)self->_name copy];
    v4[3] = self->_entity;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    elements = self->_elements;
    v7 = [(NSArray *)elements countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(elements);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) copy];
          [v5 addObject:v11];
          [(NSFetchIndexElementDescription *)v11 _setIndexDescription:v4];
        }

        v8 = [(NSArray *)elements countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    v4[2] = v5;
    v4[4] = [(NSPredicate *)self->_partialIndexPredicate copy];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_name forKey:@"NSIndexName"];
  [coder encodeObject:self->_elements forKey:@"NSIndexElements"];
  [coder encodeObject:self->_entity forKey:@"NSEntity"];
  partialIndexPredicate = self->_partialIndexPredicate;

  [coder encodeObject:partialIndexPredicate forKey:@"NSPartialIndexPredicate"];
}

- (NSFetchIndexDescription)initWithCoder:(id)coder
{
  v35 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = NSFetchIndexDescription;
  v4 = [(NSFetchIndexDescription *)&v33 init];
  if (v4)
  {
    v5 = +[PFModelDecoderContext retainedContext];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v30 = __41__NSFetchIndexDescription_initWithCoder___block_invoke;
    v31 = &unk_1E6EC16F0;
    v32 = v5;
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [coder decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, objc_opt_class(), 0), @"NSIndexName"}];
    v4->_name = v8;
    if (v8 && ([(NSString *)v8 isNSString]& 1) == 0)
    {
      v20 = &unk_1EF435210;
      goto LABEL_28;
    }

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [coder decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, v11, objc_opt_class(), 0), @"NSIndexElements"}];
    v4->_elements = v12;
    if (v12)
    {
      if (![(NSArray *)v12 isNSArray])
      {
        v20 = &unk_1EF435238;
        goto LABEL_28;
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      elements = v4->_elements;
      v14 = [(NSArray *)elements countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v14)
      {
        v15 = *v26;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(elements);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF435260)}];

              goto LABEL_29;
            }
          }

          v14 = [(NSArray *)elements countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

    v17 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSEntity"];
    v4->_entity = v17;
    if (!v17)
    {
      goto LABEL_23;
    }

    if (v5)
    {
      v18 = v5[3];
    }

    else
    {
      v18 = 0;
    }

    [v18 addObject:v17];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v20 = &unk_1EF4352B0;
    }

    else
    {
      v20 = &unk_1EF435288;
    }

    if (v5 != 0 && (isKindOfClass & 1) != 0)
    {
      if (v5[2] || v5[1])
      {
LABEL_23:
        v21 = MEMORY[0x1E695DFD8];
        v22 = objc_opt_class();
        v4->_partialIndexPredicate = [coder decodeObjectOfClasses:objc_msgSend(v21 forKey:{"setWithObjects:", v22, objc_opt_class(), 0), @"NSPartialIndexPredicate"}];
        if (v5)
        {
          v23 = v5[3];
        }

        else
        {
          v23 = 0;
        }

        [v23 addObject:v4];
LABEL_30:
        v30(v29);
        return v4;
      }

      v20 = &unk_1EF4352B0;
    }

LABEL_28:
    [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, v20)}];

LABEL_29:
    v4 = 0;
    goto LABEL_30;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_23;
  }

  if (!equal || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(name) = 0;
    return name;
  }

  name = self->_name;
  name = [equal name];
  if (name == name || (v7 = name, LOBYTE(name) = 0, name) && v7 && (LODWORD(name) = [(NSString *)name isEqual:?], name))
  {
    name2 = [(NSEntityDescription *)self->_entity name];
    name = [objc_msgSend(equal "entity")];
    if (name2 == name || (v9 = name, LOBYTE(name) = 0, name2) && v9 && (LODWORD(name) = [(NSString *)name2 isEqual:?], name))
    {
      elements = self->_elements;
      name = [equal elements];
      if (elements == name || (v11 = name, LOBYTE(name) = 0, elements) && v11 && (LODWORD(name) = [(NSArray *)elements isEqual:?], name))
      {
        partialIndexPredicate = self->_partialIndexPredicate;
        name = [equal partialIndexPredicate];
        if (partialIndexPredicate != name)
        {
          v13 = name;
          LOBYTE(name) = 0;
          if (partialIndexPredicate && v13)
          {

            LOBYTE(name) = [(NSPredicate *)partialIndexPredicate isEqual:?];
          }

          return name;
        }

LABEL_23:
        LOBYTE(name) = 1;
      }
    }
  }

  return name;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSEntityDescription *)self->_entity name], self->_name, self->_elements, self->_partialIndexPredicate);
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (void)setName:(NSString *)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(NSFetchIndexDescription *)self _throwIfNotEditable];
  if (!name)
  {
    v9 = *MEMORY[0x1E695D940];
    v10 = @"IndexDescription";
    v11[0] = self;
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v9 reason:@"Can't set an index name to nil" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}]);
  }

  if (([(NSString *)self->_name isEqual:name]& 1) == 0)
  {
    entity = self->_entity;
    if (entity)
    {
      if (atomic_load(&entity->_isImmutable))
      {
        rootentity = entity->_rootentity;
      }

      else
      {
        do
        {
          rootentity = entity;
          entity = [(NSEntityDescription *)entity superentity];
        }

        while (entity);
      }
    }

    else
    {
      rootentity = 0;
    }

    [(NSEntityDescription *)rootentity _validateIndexNameChangeFrom:name to:?];
    v8 = name;

    self->_name = name;
  }
}

- (void)setElements:(NSArray *)elements
{
  [(NSFetchIndexDescription *)self _throwIfNotEditable];
  [(NSFetchIndexDescription *)self _checkElements:?];
  v5 = [(NSArray *)elements copy];

  self->_elements = v5;
}

- (void)_setEntity:(id)entity
{
  v15 = *MEMORY[0x1E69E9840];
  self->_entity = entity;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  elements = self->_elements;
  v5 = [(NSArray *)elements countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(elements);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [(NSFetchIndexElementDescription *)v9 _setIndexDescription:?];
        [v9 property];
      }

      v6 = [(NSArray *)elements countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setPartialIndexPredicate:(NSPredicate *)partialIndexPredicate
{
  [(NSFetchIndexDescription *)self _throwIfNotEditable];
  if (self->_partialIndexPredicate != partialIndexPredicate)
  {
    v5 = partialIndexPredicate;

    self->_partialIndexPredicate = partialIndexPredicate;
  }
}

- (id)_validateCollationTypeChangeFrom:(uint64_t)from to:
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    result = [result[2] count];
    if (a2 != from && result <= 1)
    {
      v6 = *MEMORY[0x1E695D940];
      v7 = @"Index";
      v8[0] = v5;
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v6 reason:@"Can't change an collation type in a multi-element index" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}]);
    }
  }

  return result;
}

- (uint64_t)_isIndexForProperty:(uint64_t)property
{
  if (!property)
  {
    return 0;
  }

  if ([*(property + 16) count] != 1)
  {
    return 0;
  }

  firstObject = [*(property + 16) firstObject];
  if (![objc_msgSend(a2 "name")] || objc_msgSend(firstObject, "collationType"))
  {
    return 0;
  }

  return [firstObject isAscending];
}

- (uint64_t)_compoundIndexRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self || ![*(self + 16) count] || objc_msgSend(objc_msgSend(*(self + 16), "firstObject"), "collationType") || objc_msgSend(*(self + 16), "count") == 1)
  {
    return 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = *(self + 16);
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        property = [*(*(&v27 + 1) + 8 * i) property];
        _propertyType = [property _propertyType];
        if ((_propertyType & 0xFFFFFFFFFFFFFFFBLL) != 2 && (_propertyType != 5 || !+[_PFRoutines _expressionIsCompoundIndexCompatible:](_PFRoutines, [property expression])))
        {
          return 0;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  array = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = *(self + 16);
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (!v12)
  {
    return array;
  }

  v13 = v12;
  v14 = *v24;
  do
  {
    v15 = 0;
    do
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(v11);
      }

      property2 = [*(*(&v23 + 1) + 8 * v15) property];
      _propertyType2 = [property2 _propertyType];
      if ((_propertyType2 & 0xFFFFFFFFFFFFFFFBLL) == 2)
      {
        name = [property2 name];
        goto LABEL_24;
      }

      if (_propertyType2 == 5 && +[_PFRoutines _expressionIsCompoundIndexCompatible:](_PFRoutines, [property2 expression]))
      {
        v21 = [objc_msgSend(property2 "expression")];
        if (v21 == 3)
        {
          name = [objc_msgSend(property2 "expression")];
LABEL_24:
          v19 = name;
          v20 = array;
LABEL_25:
          [v20 addObject:v19];
          goto LABEL_31;
        }

        if (v21 == 1)
        {
          v20 = array;
          v19 = @"self";
          goto LABEL_25;
        }
      }

LABEL_31:
      ++v15;
    }

    while (v13 != v15);
    v22 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
    v13 = v22;
  }

  while (v22);
  return array;
}

- (void)_setIsUnique:(void *)result
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = result[2];
    result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v10;
      if (a2)
      {
        v6 = 4;
      }

      else
      {
        v6 = 0;
      }

      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * v7);
          if (v8)
          {
            *(v8 + 40) = *(v8 + 40) & 0xFFFFFFFB | v6;
          }

          v7 = (v7 + 1);
        }

        while (v4 != v7);
        result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

- (int64_t)_compare:(id)_compare
{
  v38 = *MEMORY[0x1E69E9840];
  if (!_compare)
  {
    return 1;
  }

  if (-[NSString isEqualToString:](-[NSEntityDescription name](-[NSFetchIndexDescription entity](self, "entity"), "name"), "isEqualToString:", [objc_msgSend(_compare "entity")]))
  {
    v5 = [(NSArray *)self->_elements count];
    if (v5 == [*(_compare + 2) count])
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      elements = self->_elements;
      result = [(NSArray *)elements countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (result)
      {
        v8 = result;
        v9 = *v33;
        v25 = *v33;
        while (1)
        {
          v10 = 0;
          v26 = v8;
          while (2)
          {
            if (*v33 != v9)
            {
              objc_enumerationMutation(elements);
            }

            v11 = *(*(&v32 + 1) + 8 * v10);
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v12 = *(_compare + 2);
            v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (!v13)
            {
              return -1;
            }

            v14 = v13;
            v27 = v10;
            v15 = 0;
            v16 = *v29;
            while (2)
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v29 != v16)
                {
                  objc_enumerationMutation(v12);
                }

                v18 = *(*(&v28 + 1) + 8 * i);
                if ([objc_msgSend(v11 "propertyName")])
                {
                  collationType = [v11 collationType];
                  if (collationType != [v18 collationType])
                  {
                    collationType2 = [v11 collationType];
                    v23 = collationType2 >= [v18 collationType];
                    goto LABEL_29;
                  }

                  v15 = 1;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }

            if ((v15 & 1) == 0)
            {
              return -1;
            }

            v10 = v27 + 1;
            v9 = v25;
            if (v27 + 1 != v26)
            {
              continue;
            }

            break;
          }

          v8 = [(NSArray *)elements countByEnumeratingWithState:&v32 objects:v37 count:16];
          result = 0;
          if (!v8)
          {
            return result;
          }
        }
      }
    }

    else
    {
      v22 = [(NSArray *)self->_elements count];
      v23 = v22 >= [*(_compare + 2) count];
LABEL_29:
      if (v23)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }
  }

  else
  {
    name = [(NSEntityDescription *)[(NSFetchIndexDescription *)self entity] name];
    v21 = [objc_msgSend(_compare "entity")];

    return [(NSString *)name compare:v21];
  }

  return result;
}

@end