@interface NSCompositeAttributeDescription
- (BOOL)_isSchemaEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (NSCompositeAttributeDescription)init;
- (NSCompositeAttributeDescription)initWithCoder:(id)coder;
- (id)_buildDefaultValue;
- (id)_flattenElements:(id)elements;
- (id)_flattenedElements;
- (id)_initWithName:(id)name;
- (id)_initWithName:(id)name type:(unint64_t)type;
- (id)_initWithName:(id)name type:(unint64_t)type withClassName:(id)className;
- (id)_initWithType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_addElement:(id)element;
- (void)_buildDefaultValue:(void *)value usingElements:;
- (void)_checkElements:(void *)result;
- (void)_createCachesAndOptimizeState;
- (void)_setEntityAndMaintainIndices:(id)indices;
- (void)_versionHash:(char *)hash inStyle:(unint64_t)style;
- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots fetchRequests:(id)requests;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAttributeType:(unint64_t)type;
- (void)setDefaultValue:(id)value;
- (void)setElements:(NSArray *)elements;
@end

@implementation NSCompositeAttributeDescription

- (NSCompositeAttributeDescription)init
{
  v5.receiver = self;
  v5.super_class = NSCompositeAttributeDescription;
  v2 = [(NSPropertyDescription *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NSCompositeAttributeDescription *)v2 setAttributeType:2100];
  }

  return v3;
}

- (id)_initWithName:(id)name
{
  v6.receiver = self;
  v6.super_class = NSCompositeAttributeDescription;
  v3 = [(NSPropertyDescription *)&v6 _initWithName:name];
  v4 = v3;
  if (v3)
  {
    [v3 setAttributeType:2100];
  }

  return v4;
}

- (id)_initWithType:(unint64_t)type
{
  if (type != 2100)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSCompositeAttributeDescription only supports NSCompositeAttributeType as a type." userInfo:0]);
  }

  v4.receiver = self;
  v4.super_class = NSCompositeAttributeDescription;
  return [(NSAttributeDescription *)&v4 _initWithType:?];
}

- (id)_initWithName:(id)name type:(unint64_t)type
{
  if (type != 2100)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSCompositeAttributeDescription only supports NSCompositeAttributeType as a type." userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSCompositeAttributeDescription;
  return [(NSAttributeDescription *)&v5 _initWithName:name type:?];
}

- (id)_initWithName:(id)name type:(unint64_t)type withClassName:(id)className
{
  if (type != 2100)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSCompositeAttributeDescription only supports NSCompositeAttributeType as a type." userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = NSCompositeAttributeDescription;
  return [(NSAttributeDescription *)&v6 _initWithName:name type:2100 withClassName:className];
}

- (void)dealloc
{
  self->_elements = 0;

  self->_elementsByName = 0;
  v3.receiver = self;
  v3.super_class = NSCompositeAttributeDescription;
  [(NSAttributeDescription *)&v3 dealloc];
}

- (void)setAttributeType:(unint64_t)type
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (type != 2100)
  {
    v3 = *MEMORY[0x1E695D940];
    v5 = @"offending attribute";
    v6[0] = self;
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v3 reason:@"The attribute type of a composite cannot be changed from NSCompositeAttributeType." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1)}]);
  }

  v4.receiver = self;
  v4.super_class = NSCompositeAttributeDescription;
  [(NSAttributeDescription *)&v4 setAttributeType:?];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = NSCompositeAttributeDescription;
  v5 = [(NSAttributeDescription *)&v11 description];
  attributeType = [(NSCompositeAttributeDescription *)self attributeType];
  elements = [(NSCompositeAttributeDescription *)self elements];
  if ([(NSAttributeDescription *)self preservesValueInHistoryOnDeletion])
  {
    v8 = objc_msgSend_stringWithFormat_(v4, v5, attributeType, elements, @"YES");
  }

  else
  {
    v8 = objc_msgSend_stringWithFormat_(v4, v5, attributeType, elements, @"NO");
  }

  v9 = v8;
  objc_autoreleasePoolPop(v3);
  return v9;
}

- (NSCompositeAttributeDescription)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = NSCompositeAttributeDescription;
  v4 = [(NSAttributeDescription *)&v20 initWithCoder:?];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_elements = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"NSCompositeElements"}];
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](v4->_elements, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    elements = v4->_elements;
    v9 = [(NSArray *)elements countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(elements);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          [v7 setObject:v13 forKey:{objc_msgSend(v13, "name")}];
          objc_autoreleasePoolPop(v14);
        }

        v10 = [(NSArray *)elements countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    v4->_elementsByName = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v7];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NSCompositeAttributeDescription;
  [(NSAttributeDescription *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_elements forKey:@"NSCompositeElements"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NSCompositeAttributeDescription;
  v4 = [(NSAttributeDescription *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setElements:self->_elements];
  }

  return v5;
}

- (void)setElements:(NSArray *)elements
{
  v46[2] = *MEMORY[0x1E69E9840];
  [(NSPropertyDescription *)self _throwIfNotEditable];
  [(NSCompositeAttributeDescription *)self _checkElements:?];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](elements, "count")}];
  preservesValueInHistoryOnDeletion = [(NSAttributeDescription *)self preservesValueInHistoryOnDeletion];
  [v5 addObjectsFromArray:elements];
  v7 = 0;
  v8 = 0;
  while ([v5 count])
  {
    firstObject = [v5 firstObject];
    if ([firstObject preservesValueInHistoryOnDeletion])
    {
      v7 = firstObject;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([firstObject preservesValueInHistoryOnDeletion] && !-[NSAttributeDescription preservesValueInHistoryOnDeletion](self, "preservesValueInHistoryOnDeletion"))
      {
        v23 = MEMORY[0x1E695DF30];
        v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [firstObject _qualifiedName]);
        v45[0] = @"Composite";
        v45[1] = @"Element";
        v46[0] = self;
        v46[1] = firstObject;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
LABEL_36:
        objc_exception_throw([v23 exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:v25]);
      }

      preservesValueInHistoryOnDeletion2 = [firstObject preservesValueInHistoryOnDeletion];
      if (preservesValueInHistoryOnDeletion2 != [(NSAttributeDescription *)self preservesValueInHistoryOnDeletion])
      {
        v23 = MEMORY[0x1E695DF30];
        v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [firstObject _qualifiedName]);
        v43[0] = @"Composite";
        v43[1] = @"Element";
        v44[0] = self;
        v44[1] = firstObject;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
        goto LABEL_36;
      }
    }

    if (preservesValueInHistoryOnDeletion)
    {
      if (!v7)
      {
        v23 = MEMORY[0x1E695DF30];
        v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], -[NSPropertyDescription _qualifiedName](self, "_qualifiedName"), [firstObject _qualifiedName]);
        v39[0] = @"Composite";
        v39[1] = @"Element";
        v40[0] = self;
        v40[1] = firstObject;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
        goto LABEL_36;
      }
    }

    else if ([firstObject preservesValueInHistoryOnDeletion])
    {
      v23 = MEMORY[0x1E695DF30];
      v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [firstObject _qualifiedName], -[NSPropertyDescription _qualifiedName](self, "_qualifiedName"));
      v41[0] = @"Element";
      v41[1] = @"Composite";
      v42[0] = firstObject;
      v42[1] = self;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
      goto LABEL_36;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 addObjectsFromArray:{objc_msgSend(firstObject, "elements")}];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(1u);
      }
    }

    ++v8;
    [v5 removeObject:firstObject];
  }

  if (v8 >= 0x3EA)
  {
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{+[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", -[NSCompositeAttributeDescription attributeType](self, "attributeType")), -[NSPropertyDescription _qualifiedName](self, "_qualifiedName"), v8), 0}];
    objc_exception_throw(v26);
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](elements, "count")}];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = [(NSArray *)elements countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v12)
  {
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(elements);
        }

        v15 = [*(*(&v33 + 1) + 8 * i) copy];
        [(NSArray *)v11 addObject:v15];
      }

      v12 = [(NSArray *)elements countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
  }

  self->_elements = 0;
  self->_elementsByName = 0;
  self->_elements = v11;
  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](self->_elements, "count")}];
  v32 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v17 = self->_elements;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v18)
  {
    v19 = *v30;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v29 + 1) + 8 * j);
        v22 = objc_autoreleasePoolPush();
        [v16 setObject:v21 forKey:{objc_msgSend(v21, "name")}];
        objc_autoreleasePoolPop(v22);
      }

      v18 = [(NSArray *)v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v18);
  }

  self->_elementsByName = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v16];

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3052000000;
  v28[3] = __Block_byref_object_copy__52;
  v28[4] = __Block_byref_object_dispose__52;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __47__NSCompositeAttributeDescription_setElements___block_invoke;
  v27[3] = &unk_1E6EC5800;
  v27[4] = v28;
  v28[5] = v27;
  __47__NSCompositeAttributeDescription_setElements___block_invoke(v27, self->_elements, self);
  _Block_object_dispose(v28, 8);
}

- (void)_checkElements:(void *)result
{
  v32 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    result = [a2 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v22;
      do
      {
        v6 = 0;
        do
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(a2);
          }

          v7 = *(*(&v21 + 1) + 8 * v6);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ([v7 isNSArray])
            {
              [(NSCompositeAttributeDescription *)v3 _checkElements:v7];
            }

            v19 = MEMORY[0x1E695DF30];
            v20 = *MEMORY[0x1E695D940];
            v25 = @"Attribute";
            v26 = v7;
            v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
            v18 = @"Unsupported attribute type for composite.";
            v16 = v19;
            v17 = v20;
            goto LABEL_51;
          }

          attributeType = [v7 attributeType];
          v9 = attributeType;
          if (attributeType <= 799)
          {
            if (attributeType <= 399)
            {
              if (attributeType <= 199)
              {
                if (attributeType != 100)
                {
                  if (!attributeType)
                  {
                    goto LABEL_50;
                  }

LABEL_46:
                  LogStream = _PFLogGetLogStream(17);
                  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v30 = v7;
                    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: New attribute type? %@\n", buf, 0xCu);
                  }

                  v11 = _PFLogGetLogStream(17);
                  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138412290;
                    v30 = v7;
                    _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: New attribute type? %@", buf, 0xCu);
                  }

LABEL_50:
                  v12 = MEMORY[0x1E695DF30];
                  v13 = *MEMORY[0x1E695D940];
                  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [NSAttributeDescription stringForAttributeType:2100], [NSAttributeDescription stringForAttributeType:v9]);
                  v27 = @"offendingAttribute";
                  v28 = v7;
                  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
                  v16 = v12;
                  v17 = v13;
                  v18 = v14;
LABEL_51:
                  objc_exception_throw([v16 exceptionWithName:v17 reason:v18 userInfo:v15]);
                }
              }

              else if (attributeType != 200 && attributeType != 300)
              {
                goto LABEL_46;
              }
            }

            else if (attributeType > 599)
            {
              if (attributeType != 600 && attributeType != 700)
              {
                goto LABEL_46;
              }
            }

            else if (attributeType != 400 && attributeType != 500)
            {
              goto LABEL_46;
            }
          }

          else if (attributeType <= 1199)
          {
            if (attributeType > 999)
            {
              if (attributeType == 1000)
              {
                if ([v7 allowsExternalBinaryDataStorage] & 1) != 0 || (objc_msgSend(v7, "isFileBackedFuture"))
                {
                  goto LABEL_50;
                }
              }

              else if (attributeType != 1100)
              {
                goto LABEL_46;
              }
            }

            else if (attributeType != 800 && attributeType != 900)
            {
              goto LABEL_46;
            }
          }

          else if (attributeType <= 1999)
          {
            if (attributeType != 1200 && attributeType != 1800)
            {
              goto LABEL_46;
            }
          }

          else if (attributeType != 2100 && attributeType != 2200)
          {
            if (attributeType == 2000)
            {
              goto LABEL_50;
            }

            goto LABEL_46;
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        result = [a2 countByEnumeratingWithState:&v21 objects:v31 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

void *__47__NSCompositeAttributeDescription_setElements___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if ([v10 isNSArray])
        {
          v11 = *(*(*(*(a1 + 32) + 8) + 40) + 16);
LABEL_10:
          v11();
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setSuperCompositeAttribute:a3];
          v12 = *(*(*(a1 + 32) + 8) + 40);
          [v10 elements];
          v11 = *(v12 + 16);
          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setSuperCompositeAttribute:a3];
        }

LABEL_11:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

- (void)_setEntityAndMaintainIndices:(id)indices
{
  v7.receiver = self;
  v7.super_class = NSCompositeAttributeDescription;
  [(NSPropertyDescription *)&v7 _setEntityAndMaintainIndices:?];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = __Block_byref_object_copy__52;
  v6[4] = __Block_byref_object_dispose__52;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__NSCompositeAttributeDescription__setEntityAndMaintainIndices___block_invoke;
  v5[3] = &unk_1E6EC5828;
  v5[4] = indices;
  v5[5] = v6;
  v6[5] = v5;
  __64__NSCompositeAttributeDescription__setEntityAndMaintainIndices___block_invoke(v5, self->_elements, indices);
  _Block_object_dispose(v6, 8);
}

void *__64__NSCompositeAttributeDescription__setEntityAndMaintainIndices___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if ([v10 isNSArray])
        {
          v11 = *(*(*(*(a1 + 40) + 8) + 40) + 16);
LABEL_10:
          v11();
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 _setEntityAndMaintainIndices:a3];
          v12 = *(*(*(a1 + 40) + 8) + 40);
          [v10 elements];
          v11 = *(v12 + 16);
          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 _setEntityAndMaintainIndices:*(a1 + 32)];
        }

LABEL_11:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

- (void)_addElement:(id)element
{
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:self->_elements];
  [v5 addObject:element];
  v6 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];

  [(NSCompositeAttributeDescription *)self setElements:v6];
}

- (BOOL)_isSchemaEqual:(id)equal
{
  v7.receiver = self;
  v7.super_class = NSCompositeAttributeDescription;
  v5 = [(NSAttributeDescription *)&v7 _isSchemaEqual:?];
  if (v5)
  {
    LOBYTE(v5) = -[NSArray isEqual:](self->_elements, "isEqual:", [equal elements]);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v13 = v3;
    v14 = v4;
    v12.receiver = self;
    v12.super_class = NSCompositeAttributeDescription;
    v7 = [(NSAttributeDescription *)&v12 isEqual:?];
    if (v7)
    {
      elements = self->_elements;
      elements = [equal elements];
      if (elements == elements)
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        if (elements)
        {
          v10 = elements == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          LOBYTE(v7) = 0;
        }

        else
        {
          LOBYTE(v7) = [(NSArray *)elements isEqual:elements];
        }
      }
    }
  }

  return v7;
}

- (void)setDefaultValue:(id)value
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (([value isNSDictionary] & 1) == 0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v8 = @"Attribute";
    v9[0] = [(NSPropertyDescription *)self name];
    objc_exception_throw([v5 exceptionWithName:v6 reason:@"Unsupported default value for composite. Must be an NSDictionary." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}]);
  }

  v7.receiver = self;
  v7.super_class = NSCompositeAttributeDescription;
  [(NSAttributeDescription *)&v7 setDefaultValue:value];
}

- (id)_buildDefaultValue
{
  v3 = [-[NSAttributeDescription defaultValue](self "defaultValue")];
  v4 = v3;
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [(NSCompositeAttributeDescription *)self _buildDefaultValue:v4 usingElements:[(NSCompositeAttributeDescription *)self elements]];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];

  if (!v3 && ![v5 count])
  {
    return 0;
  }

  return v5;
}

- (void)_buildDefaultValue:(void *)value usingElements:
{
  v40 = *MEMORY[0x1E69E9840];
  v23 = result;
  if (result)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    result = [value countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v33;
      v22 = a2;
      v20 = *v33;
      do
      {
        v6 = 0;
        v21 = v4;
        do
        {
          if (*v33 != v5)
          {
            objc_enumerationMutation(value);
          }

          v7 = *(*(&v32 + 1) + 8 * v6);
          v8 = objc_autoreleasePoolPush();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSCompositeAttributeDescription *)v23 _buildDefaultValue:a2 usingElements:[(__CFString *)v7 elements]];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v19 = *MEMORY[0x1E695D940];
              v36 = @"Attribute";
              v37 = v7;
              objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v19 reason:@"Unsupported attribute type for composite." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v37, &v36, 1)}]);
            }

            defaultValue = [(__CFString *)v7 defaultValue];
            if (defaultValue)
            {
              v27 = v8;
              _elementPath = [(NSPropertyDescription *)v7 _elementPath];
              v9 = [(__CFString *)_elementPath componentsSeparatedByString:@"."];
              if ([v9 count] >= 2)
              {
                v30 = 0u;
                v31 = 0u;
                v28 = 0u;
                v29 = 0u;
                v10 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
                if (v10)
                {
                  v11 = v10;
                  v12 = *v29;
                  v13 = v22;
                  do
                  {
                    v14 = 0;
                    v15 = v13;
                    do
                    {
                      if (*v29 != v12)
                      {
                        objc_enumerationMutation(v9);
                      }

                      v16 = *(*(&v28 + 1) + 8 * v14);
                      v13 = [v15 objectForKey:{v16, v20}];
                      if (!v13)
                      {
                        v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
                        [v15 setObject:v17 forKey:v16];
                      }

                      ++v14;
                      v15 = v13;
                    }

                    while (v11 != v14);
                    v11 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
                  }

                  while (v11);
                }
              }

              a2 = v22;
              v18 = [v22 valueForKeyPath:{_elementPath, v20}];
              v5 = v20;
              v4 = v21;
              v8 = v27;
              if (!v18)
              {
                [v22 setValue:defaultValue forKeyPath:_elementPath];
              }
            }
          }

          objc_autoreleasePoolPop(v8);
          v6 = v6 + 1;
        }

        while (v6 != v4);
        result = [value countByEnumeratingWithState:&v32 objects:v39 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

- (id)_flattenedElements
{
  elements = [(NSCompositeAttributeDescription *)self elements];

  return [(NSCompositeAttributeDescription *)self _flattenElements:elements];
}

- (id)_flattenElements:(id)elements
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [elements countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(elements);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObjectsFromArray:{-[NSCompositeAttributeDescription _flattenElements:](self, "_flattenElements:", objc_msgSend(v10, "elements"))}];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = *MEMORY[0x1E695D940];
            v18 = @"Attribute";
            v19 = v10;
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v13 reason:@"Unsupported attribute type for composite." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v19, &v18, 1)}]);
          }

          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [elements countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];

  return v11;
}

- (void)_createCachesAndOptimizeState
{
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7.receiver = self;
  v7.super_class = NSCompositeAttributeDescription;
  [(NSAttributeDescription *)&v7 _createCachesAndOptimizeState];
  [(NSCompositeAttributeDescription *)self _checkElements:?];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = __Block_byref_object_copy__52;
  v6[4] = __Block_byref_object_dispose__52;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__NSCompositeAttributeDescription__createCachesAndOptimizeState__block_invoke;
  v5[3] = &unk_1E6EC5800;
  v5[4] = v6;
  v6[5] = v5;
  __64__NSCompositeAttributeDescription__createCachesAndOptimizeState__block_invoke(v5, self->_elements, self);
  _Block_object_dispose(v6, 8);
  [v3 drain];
  v4 = 0;
}

void *__64__NSCompositeAttributeDescription__createCachesAndOptimizeState__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if ([v10 isNSArray])
        {
          v11 = *(*(*(*(a1 + 32) + 8) + 40) + 16);
LABEL_10:
          v11();
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setSuperCompositeAttribute:a3];
          v12 = *(*(*(a1 + 32) + 8) + 40);
          [v10 elements];
          v11 = *(v12 + 16);
          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setSuperCompositeAttribute:a3];
        }

LABEL_11:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

- (void)_versionHash:(char *)hash inStyle:(unint64_t)style
{
  v31 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v26.receiver = self;
  v26.super_class = NSCompositeAttributeDescription;
  [(NSAttributeDescription *)&v26 _versionHash:data inStyle:style];
  if (self->_elements)
  {
    v6 = [-[NSCompositeAttributeDescription _flattenElements:](self _flattenElements:{-[NSCompositeAttributeDescription elements](self, "elements")), "sortedArrayUsingFunction:context:", _comparePropertiesByName, 0}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if ([v11 isNSArray])
          {
            v12 = [v11 sortedArrayUsingFunction:_comparePropertiesByName context:0];
            v18 = 0u;
            v19 = 0u;
            v20 = 0u;
            v21 = 0u;
            v13 = [v12 countByEnumeratingWithState:&v18 objects:v28 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v19;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v19 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  [*(*(&v18 + 1) + 8 * j) _versionHash:data inStyle:style];
                  CC_SHA256_Update(&c, data, 0x20u);
                }

                v14 = [v12 countByEnumeratingWithState:&v18 objects:v28 count:16];
              }

              while (v14);
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v11 isTransient] & 1) == 0)
            {
              [v11 _versionHash:data inStyle:style];
              CC_SHA256_Update(&c, data, 0x20u);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v8);
    }
  }

  CC_SHA256_Final(hash, &c);
}

- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots fetchRequests:(id)requests
{
  v16 = [data length];
  v17 = [data length];
  v20.receiver = self;
  v20.super_class = NSCompositeAttributeDescription;
  [(NSAttributeDescription *)&v20 _writeIntoData:data propertiesDict:dict uniquedPropertyNames:names uniquedStrings:strings uniquedData:uniquedData entitiesSlots:slots fetchRequests:requests];
  if (self->_elements)
  {
    v18 = [objc_msgSend(uniquedData "objectForKey:"unsignedIntegerValue"")];
  }

  else
  {
    v18 = 0;
  }

  _writeInt32IntoData(data, v18);
  v19 = bswap32([data length] - v16);
  [data replaceBytesInRange:v17 withBytes:{4, &v19}];
}

@end