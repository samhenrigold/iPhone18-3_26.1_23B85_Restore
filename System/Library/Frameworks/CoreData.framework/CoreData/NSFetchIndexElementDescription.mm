@interface NSFetchIndexElementDescription
- (BOOL)isEqual:(id)equal;
- (NSFetchIndexElementDescription)initWithCoder:(id)coder;
- (NSFetchIndexElementDescription)initWithProperty:(NSPropertyDescription *)property collationType:(NSFetchIndexElementType)collationType;
- (NSPropertyDescription)property;
- (_DWORD)initWithPropertyName:(uint64_t)name collationType:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_setIndexDescription:(uint64_t)description;
- (void)_throwIfNotEditable;
- (void)_validateCollationType:(void *)type forProperty:;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initWithPropertyName:(void *)name property:(uint64_t)property collationType:(int)type ascending:;
- (void)setAscending:(BOOL)ascending;
- (void)setCollationType:(NSFetchIndexElementType)collationType;
@end

@implementation NSFetchIndexElementDescription

- (void)dealloc
{
  self->_propertyName = 0;
  if ((*&self->_indexElementDescriptionFlags & 2) != 0)
  {

    self->_property = 0;
  }

  v3.receiver = self;
  v3.super_class = NSFetchIndexElementDescription;
  [(NSFetchIndexElementDescription *)&v3 dealloc];
}

- (NSPropertyDescription)property
{
  property = self->_property;
  if (!property)
  {
    indexDescription = self->_indexDescription;
    if (indexDescription)
    {
      entity = [(NSFetchIndexDescription *)indexDescription entity];
      if (entity)
      {
        property = [*(entity + 96) objectForKey:self->_propertyName];
      }

      else
      {
        property = 0;
      }

      if (![(NSPropertyDescription *)property _isEditable])
      {
        indexElementDescriptionFlags = self->_indexElementDescriptionFlags;
        if ((*&indexElementDescriptionFlags & 2) != 0)
        {

          indexElementDescriptionFlags = self->_indexElementDescriptionFlags;
        }

        self->_property = property;
        self->_indexElementDescriptionFlags = (*&indexElementDescriptionFlags & 0xFFFFFFFD);
      }
    }

    else
    {
      return 0;
    }
  }

  return property;
}

- (void)_validateCollationType:(void *)type forProperty:
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (result && a2 == 1)
  {
    if ([type _propertyType] == 2 || objc_msgSend(type, "_propertyType") == 6)
    {
      result = [type attributeType];
      if (result == 100 || result == 200 || result == 600)
      {
        return result;
      }

      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D940];
      v8 = @"property";
      typeCopy = type;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&typeCopy forKeys:&v8 count:1];
      v7 = @"Invalid collation type (rtree indexes can only be created for floats or integers < 32 bit).";
    }

    else
    {
      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D940];
      v10 = @"property";
      v11[0] = type;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v7 = @"Invalid collation type (rtree indexes can only be created on attributes).";
    }

    objc_exception_throw([v4 exceptionWithName:v5 reason:v7 userInfo:v6]);
  }

  return result;
}

- (NSFetchIndexElementDescription)initWithProperty:(NSPropertyDescription *)property collationType:(NSFetchIndexElementType)collationType
{
  if (!property)
  {

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"Can't create an index element without a property";
    goto LABEL_17;
  }

  if (![(NSPropertyDescription *)property name])
  {

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"Can't create an index element with an unnamed property";
    goto LABEL_17;
  }

  _propertyType = [(NSPropertyDescription *)property _propertyType];
  if (_propertyType - 4 >= 3 && _propertyType != 2)
  {
    if (_propertyType == 7)
    {

      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = @"Can't create an index element with composite property";
    }

    else
    {

      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = @"Can't create an index element with non-attribute property";
    }

LABEL_17:
    objc_exception_throw([v11 exceptionWithName:v12 reason:v13 userInfo:0]);
  }

  [(NSFetchIndexElementDescription *)self _validateCollationType:property forProperty:?];
  v14.receiver = self;
  v14.super_class = NSFetchIndexElementDescription;
  v8 = [(NSFetchIndexElementDescription *)&v14 init];
  if (v8)
  {
    if ([(NSPropertyDescription *)property _propertyType]== 5 || !v8->_indexDescription)
    {
      v8->_property = property;
      v9 = *&v8->_indexElementDescriptionFlags | 2;
    }

    else
    {
      v8->_property = property;
      v9 = *&v8->_indexElementDescriptionFlags & 0xFFFFFFFD;
    }

    v8->_indexElementDescriptionFlags = v9;
    v8->_propertyName = [(NSPropertyDescription *)property name];
    v8->_collationType = collationType;
    *&v8->_indexElementDescriptionFlags |= 1u;
  }

  return v8;
}

- (_DWORD)initWithPropertyName:(uint64_t)name collationType:
{
  if (!self)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = NSFetchIndexElementDescription;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  if (v5)
  {
    v6 = a2;
    v7 = v5[10];
    *(v5 + 2) = v6;
    *(v5 + 3) = name;
    v5[10] = v7 & 0xFFFFFFFC | 1;
  }

  return v5;
}

- (void)initWithPropertyName:(void *)name property:(uint64_t)property collationType:(int)type ascending:
{
  if (!self)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = NSFetchIndexElementDescription;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  if (v9)
  {
    v9[2] = a2;
    if (name && [name _propertyType] == 5)
    {
      v9[1] = name;
      v10 = *(v9 + 10) | 2;
    }

    else
    {
      v9[1] = 0;
      v10 = v9[5] & 0xFFFFFFFD;
    }

    v9[3] = property;
    *(v9 + 10) = v10 & 0xFFFFFFFE | type;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_propertyName forKey:@"NSPropertyName"];
  if ([(NSPropertyDescription *)self->_property _propertyType]== 5)
  {
    [coder encodeObject:self->_property forKey:@"NSIndexedProperty"];
  }

  [coder encodeInteger:self->_collationType forKey:@"NSFetchIndexElementType"];
  [coder encodeObject:self->_indexDescription forKey:@"NSFetchIndexDescription"];
  v5 = *&self->_indexElementDescriptionFlags & 1;

  [coder encodeBool:v5 forKey:@"NSAscending"];
}

- (NSFetchIndexElementDescription)initWithCoder:(id)coder
{
  v19.receiver = self;
  v19.super_class = NSFetchIndexElementDescription;
  v4 = [(NSFetchIndexElementDescription *)&v19 init];
  if (v4)
  {
    v5 = +[PFModelDecoderContext retainedContext];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __48__NSFetchIndexElementDescription_initWithCoder___block_invoke;
    v17 = &unk_1E6EC16F0;
    v18 = v5;
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSPropertyName"];
    v4->_propertyName = v6;
    if (v6 && ([(NSString *)v6 isNSString]& 1) == 0)
    {
      v10 = &unk_1EF435828;
    }

    else
    {
      v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSFetchIndexDescription"];
      v4->_indexDescription = v7;
      if (!v7)
      {
LABEL_13:
        v11 = [coder decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E695DFD8] forKey:{"setWithObjects:", objc_opt_class(), 0, v14, v15), @"NSIndexedProperty"}];
        if (!v11)
        {
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v11 _propertyType] == 5 || !v4->_indexDescription)
          {
            v4->_property = v11;
            v12 = *&v4->_indexElementDescriptionFlags | 2;
            goto LABEL_23;
          }

LABEL_17:
          v4->_property = 0;
          v12 = *&v4->_indexElementDescriptionFlags & 0xFFFFFFFD;
LABEL_23:
          v4->_indexElementDescriptionFlags = v12;
          v4->_collationType = [coder decodeIntegerForKey:@"NSFetchIndexElementType"];
          v4->_indexElementDescriptionFlags = (*&v4->_indexElementDescriptionFlags & 0xFFFFFFFE | [coder decodeBoolForKey:@"NSAscending"]);
          goto LABEL_24;
        }

        [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF4358A0)}];

LABEL_20:
        v4 = 0;
LABEL_24:
        v16(&v14);
        return v4;
      }

      if (v5)
      {
        v8 = v5[3];
      }

      else
      {
        v8 = 0;
      }

      [v8 addObject:v7];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v10 = &unk_1EF435878;
      }

      else
      {
        v10 = &unk_1EF435850;
      }

      if (v5 != 0 && (isKindOfClass & 1) != 0)
      {
        if (v5[1] || v5[2])
        {
          goto LABEL_13;
        }

        v10 = &unk_1EF435878;
      }
    }

    [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, v10)}];

    goto LABEL_20;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 32) = 0;
    *(v4 + 16) = [(NSString *)self->_propertyName copy];
    if ([(NSPropertyDescription *)self->_property _propertyType]== 5)
    {
      property = [(NSPropertyDescription *)self->_property copy];
    }

    else
    {
      property = [(NSFetchIndexElementDescription *)self property];
    }

    *(v5 + 8) = property;
    v7 = *(v5 + 40) | 2;
    *(v5 + 40) = v7;
    *(v5 + 24) = self->_collationType;
    *(v5 + 40) = v7 & 0xFFFFFFFE | *&self->_indexElementDescriptionFlags & 1;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(propertyName) = 1;
  }

  else
  {
    v19 = v5;
    v20 = v4;
    v21 = v3;
    if (equal && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (collationType = self->_collationType, collationType == [equal collationType]) && (v12 = -[NSFetchIndexElementDescription isAscending](self, "isAscending"), v12 == objc_msgSend(equal, "isAscending")))
    {
      propertyName = self->_propertyName;
      propertyName = [equal propertyName];
      if (propertyName == propertyName || (v15 = propertyName, LOBYTE(propertyName) = 0, propertyName) && v15 && (LODWORD(propertyName) = [(NSString *)propertyName isEqual:?], propertyName))
      {
        if (-[NSPropertyDescription _propertyType](self->_property, "_propertyType", v6, v19, v20, v21, v7, v8) != 5 || (property = self->_property, propertyName = [equal property], property == propertyName) || (v17 = propertyName, LOBYTE(propertyName) = 0, property) && v17 && (LODWORD(propertyName) = -[NSPropertyDescription isEqual:](property, "isEqual:"), propertyName))
        {
          LOBYTE(propertyName) = 1;
        }
      }
    }

    else
    {
      LOBYTE(propertyName) = 0;
    }
  }

  return propertyName;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  propertyName = self->_propertyName;
  if ([(NSPropertyDescription *)self->_property _propertyType]== 5)
  {
    property = self->_property;
  }

  else
  {
    property = @"modeled property";
  }

  collationType = self->_collationType;
  if ([(NSFetchIndexElementDescription *)self isAscending])
  {
    v8 = objc_msgSend_stringWithFormat_(v4, propertyName, property, collationType, @"ascending");
  }

  else
  {
    v8 = objc_msgSend_stringWithFormat_(v4, propertyName, property, collationType, @"descending");
  }

  v9 = v8;
  objc_autoreleasePoolPop(v3);

  return v9;
}

- (void)_throwIfNotEditable
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    property = [result property];
    if (!property && v1[2])
    {
      v3 = *MEMORY[0x1E695D930];
      v4 = @"offender";
      v5[0] = v1;
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v3 reason:@"Broken logic around index elements" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}]);
    }

    return [property _throwIfNotEditable];
  }

  return result;
}

- (void)setCollationType:(NSFetchIndexElementType)collationType
{
  [(NSFetchIndexElementDescription *)self _throwIfNotEditable];
  if (self->_collationType != collationType)
  {
    [(NSFetchIndexElementDescription *)self _validateCollationType:self->_property forProperty:?];
    [(NSFetchIndexDescription *)&self->_indexDescription->super.isa _validateCollationTypeChangeFrom:collationType to:?];
    self->_collationType = collationType;
  }
}

- (void)setAscending:(BOOL)ascending
{
  v3 = ascending;
  [(NSFetchIndexElementDescription *)self _throwIfNotEditable];
  self->_indexElementDescriptionFlags = (*&self->_indexElementDescriptionFlags & 0xFFFFFFFE | v3);
}

- (void)_setIndexDescription:(uint64_t)description
{
  if (description)
  {
    if (!a2 || *(description + 32) || [*(description + 8) _propertyType] == 5)
    {
      goto LABEL_10;
    }

    if ([a2 entity])
    {

      *(description + 8) = 0;
      v4 = *(description + 40) & 0xFFFFFFFD;
    }

    else
    {
      if ((*(description + 40) & 2) != 0)
      {
LABEL_10:
        *(description + 32) = a2;
        return;
      }

      v5 = *(description + 8);
      v4 = *(description + 40) | 2;
    }

    *(description + 40) = v4;
    goto LABEL_10;
  }
}

@end