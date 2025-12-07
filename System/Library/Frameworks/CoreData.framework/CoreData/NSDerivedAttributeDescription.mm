@interface NSDerivedAttributeDescription
- (BOOL)_isSchemaEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (NSDerivedAttributeDescription)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_createCachesAndOptimizeState;
- (void)_validateKeypaths:(void *)result;
- (void)_versionHash:(char *)hash inStyle:(unint64_t)style;
- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots fetchRequests:(id)requests;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setDefaultValue:(id)value;
- (void)setDerivationExpression:(NSExpression *)derivationExpression;
- (void)setFilteringPredicate:(id)predicate;
- (void)setRenamingIdentifier:(id)identifier;
@end

@implementation NSDerivedAttributeDescription

- (void)dealloc
{
  self->_derivationExpression = 0;

  self->_filteringPredicate = 0;
  v3.receiver = self;
  v3.super_class = NSDerivedAttributeDescription;
  [(NSAttributeDescription *)&v3 dealloc];
}

- (void)_createCachesAndOptimizeState
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v17.receiver = self;
  v17.super_class = NSDerivedAttributeDescription;
  [(NSAttributeDescription *)&v17 _createCachesAndOptimizeState];
  v16 = 0;
  v4 = [(NSExpression *)self->_derivationExpression _keypathsForDerivedPropertyValidation:&v16];
  if (!v4)
  {
    v8 = v16;
    if (!v16)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134097 userInfo:&unk_1EF4357D8];
      v16 = v8;
    }

    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E696AA08];
    v20[0] = @"offending property";
    v20[1] = v10;
    v21[0] = self;
    v21[1] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:{2, v16}];
    objc_exception_throw([v9 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't get keypaths for derived attribute validation" userInfo:v11]);
  }

  [(NSDerivedAttributeDescription *)self _validateKeypaths:v4];
  filteringPredicate = self->_filteringPredicate;
  if (filteringPredicate)
  {
    v6 = [(NSPredicate *)filteringPredicate _keypathsForDerivedPropertyValidation:&v16];
    if (!v6)
    {
      v12 = v16;
      if (!v16)
      {
        v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134097 userInfo:&unk_1EF435800];
        v16 = v12;
      }

      v13 = MEMORY[0x1E695DF30];
      v14 = *MEMORY[0x1E696AA08];
      v18[0] = @"offending property";
      v18[1] = v14;
      v19[0] = self;
      v19[1] = v12;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:{2, v16}];
      objc_exception_throw([v13 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't get keypaths for derived attribute validation" userInfo:v15]);
    }

    [(NSDerivedAttributeDescription *)self _validateKeypaths:v6];
  }

  [(NSExpression *)self->_derivationExpression allowEvaluation];
  [(NSPredicate *)self->_filteringPredicate allowEvaluation];
  [v3 drain];
  v7 = 0;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = NSDerivedAttributeDescription;
  v5 = [(NSAttributeDescription *)&v13 description];
  attributeType = [(NSAttributeDescription *)self attributeType];
  attributeValueClassName = [(NSAttributeDescription *)self attributeValueClassName];
  derivationExpression = self->_derivationExpression;
  filteringPredicate = self->_filteringPredicate;
  if ([(NSAttributeDescription *)self preservesValueInHistoryOnDeletion])
  {
    v10 = objc_msgSend_stringWithFormat_(v4, v5, attributeType, attributeValueClassName, derivationExpression, filteringPredicate, @"YES");
  }

  else
  {
    v10 = objc_msgSend_stringWithFormat_(v4, v5, attributeType, attributeValueClassName, derivationExpression, filteringPredicate, @"NO");
  }

  v11 = v10;
  objc_autoreleasePoolPop(v3);
  return v11;
}

- (NSDerivedAttributeDescription)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = NSDerivedAttributeDescription;
  v4 = [(NSAttributeDescription *)&v10 initWithCoder:?];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_derivationExpression = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"NSDerivationExpression"}];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v4->_filteringPredicate = [coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"NSFilteringPredicate"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NSDerivedAttributeDescription;
  [(NSAttributeDescription *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_derivationExpression forKey:@"NSDerivationExpression"];
  [coder encodeObject:self->_filteringPredicate forKey:@"NSFilteringPredicate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NSDerivedAttributeDescription;
  v4 = [(NSAttributeDescription *)&v6 copyWithZone:zone];
  if (v4)
  {
    v4[15] = self->_derivationExpression;
    v4[16] = self->_filteringPredicate;
  }

  return v4;
}

- (void)setDerivationExpression:(NSExpression *)derivationExpression
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(NSPropertyDescription *)self _throwIfNotEditable];
  if (self->_derivationExpression != derivationExpression)
  {
    if ([(NSExpression *)derivationExpression expressionType]!= NSKeyPathExpressionType)
    {
LABEL_9:
      v11 = derivationExpression;

      self->_derivationExpression = derivationExpression;
      return;
    }

    keyPath = [(NSExpression *)derivationExpression keyPath];
    if ([(NSString *)keyPath hasSuffix:@".@sum"])
    {
      v6 = MEMORY[0x1E696ABC8];
      v14[0] = [MEMORY[0x1E696ABC8] expressionForKeyPath:{-[NSString substringToIndex:](keyPath, "substringToIndex:", -[NSString length](keyPath, "length") - 5)}];
      v7 = MEMORY[0x1E695DEC8];
      v8 = v14;
    }

    else
    {
      if (![(NSString *)keyPath hasSuffix:@".@total"])
      {
        if (![(NSString *)keyPath hasSuffix:@".@count"])
        {
          goto LABEL_9;
        }

        v6 = MEMORY[0x1E696ABC8];
        v12 = [MEMORY[0x1E696ABC8] expressionForKeyPath:{-[NSString substringToIndex:](keyPath, "substringToIndex:", -[NSString length](keyPath, "length") - 7)}];
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
        v10 = @"count:";
        goto LABEL_8;
      }

      v6 = MEMORY[0x1E696ABC8];
      v13 = [MEMORY[0x1E696ABC8] expressionForKeyPath:{-[NSString substringToIndex:](keyPath, "substringToIndex:", -[NSString length](keyPath, "length") - 7)}];
      v7 = MEMORY[0x1E695DEC8];
      v8 = &v13;
    }

    v9 = [v7 arrayWithObjects:v8 count:1];
    v10 = @"sum:";
LABEL_8:
    derivationExpression = [v6 expressionForFunction:v10 arguments:v9];
    goto LABEL_9;
  }
}

- (void)setFilteringPredicate:(id)predicate
{
  [(NSPropertyDescription *)self _throwIfNotEditable];
  if (self->_filteringPredicate != predicate)
  {
    predicateCopy = predicate;

    self->_filteringPredicate = predicate;
  }
}

- (BOOL)_isSchemaEqual:(id)equal
{
  v7.receiver = self;
  v7.super_class = NSDerivedAttributeDescription;
  v5 = [(NSAttributeDescription *)&v7 _isSchemaEqual:?];
  if (v5)
  {
    v5 = -[NSExpression isEqual:](self->_derivationExpression, "isEqual:", [equal derivationExpression]);
    if (v5)
    {
      LOBYTE(v5) = -[NSPredicate isEqual:](self->_filteringPredicate, "isEqual:", [equal filteringPredicate]) ^ 1;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  v16 = v3;
  v17 = v4;
  v15.receiver = self;
  v15.super_class = NSDerivedAttributeDescription;
  v7 = [(NSAttributeDescription *)&v15 isEqual:?];
  if (v7)
  {
    derivationExpression = self->_derivationExpression;
    derivationExpression = [equal derivationExpression];
    if (derivationExpression == derivationExpression)
    {
      goto LABEL_9;
    }

    if (derivationExpression)
    {
      v10 = derivationExpression == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_15;
    }

    v7 = [(NSExpression *)derivationExpression isEqual:derivationExpression];
    if (v7)
    {
LABEL_9:
      filteringPredicate = self->_filteringPredicate;
      filteringPredicate = [equal filteringPredicate];
      if (filteringPredicate == filteringPredicate)
      {
        LOBYTE(v7) = 1;
        return v7;
      }

      if (filteringPredicate)
      {
        v13 = filteringPredicate == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        LOBYTE(v7) = [(NSPredicate *)filteringPredicate isEqual:filteringPredicate];
        return v7;
      }

LABEL_15:
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)setDefaultValue:(id)value
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695D940];
  v4 = @"offending property";
  v5[0] = self;
  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v3 reason:@"Can't set a default value for a derived attribute" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}]);
}

- (void)setRenamingIdentifier:(id)identifier
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (([(NSString *)[(NSPropertyDescription *)self renamingIdentifier] isEqual:identifier]& 1) == 0)
  {
    v4 = *MEMORY[0x1E695D940];
    v5 = @"derived attribute";
    v6[0] = self;
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v4 reason:@"Can't set renaming identifiers for derived attributes" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1)}]);
  }
}

- (void)_validateKeypaths:(void *)result
{
  v38 = *MEMORY[0x1E69E9840];
  v19 = result;
  if (result)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    result = [a2 countByEnumeratingWithState:&v21 objects:v37 count:16];
    v20 = result;
    if (result)
    {
      v18 = *v22;
      do
      {
        v2 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(a2);
          }

          v17 = *(*(&v21 + 1) + 8 * v2);
          v3 = [v17 componentsSeparatedByString:@"."];
          entity = [v19 entity];
          if ([v3 count])
          {
            v5 = 1;
            do
            {
              v6 = v5 - 1;
              v7 = [v3 objectAtIndexedSubscript:v5 - 1];
              if ([v7 rangeOfString:@"$"] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v12 = MEMORY[0x1E695DF30];
                v13 = *MEMORY[0x1E695D940];
                v35[0] = @"offending property";
                v35[1] = @"keypath";
                v36[0] = v19;
                v36[1] = v17;
                v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
                v15 = @"Bad keypath for derived property (unresolved variable)";
                goto LABEL_32;
              }

              if ([v7 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
              {
                if (!entity || (v8 = [objc_msgSend(entity "propertiesByName")]) == 0)
                {
                  v12 = MEMORY[0x1E695DF30];
                  v13 = *MEMORY[0x1E695D940];
                  v31[0] = @"offending property";
                  v31[1] = @"keypath";
                  v32[0] = v19;
                  v32[1] = v17;
                  v31[2] = @"component";
                  v32[2] = v7;
                  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
                  v15 = @"Bad keypath for derived property (missing keypath component)";
                  goto LABEL_32;
                }

                v9 = v8;
                _propertyType = [v8 _propertyType];
                if (_propertyType == 2)
                {
                  if (v6 != [v3 count] - 1)
                  {
                    if (v6 != [v3 count] - 2)
                    {
                      v12 = MEMORY[0x1E695DF30];
                      v13 = *MEMORY[0x1E695D940];
                      v27[0] = @"offending property";
                      v27[1] = @"keypath";
                      v28[0] = v19;
                      v28[1] = v17;
                      v27[2] = @"component";
                      v28[2] = v7;
                      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
                      v15 = @"Bad keypath for derived property (attribute has multiple keys following)";
LABEL_32:
                      objc_exception_throw([v12 exceptionWithName:v13 reason:v15 userInfo:v14]);
                    }

                    if ([objc_msgSend(v3 objectAtIndexedSubscript:{v5), "rangeOfString:", @"@"}] == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v12 = MEMORY[0x1E695DF30];
                      v13 = *MEMORY[0x1E695D940];
                      v29[0] = @"offending property";
                      v29[1] = @"keypath";
                      v30[0] = v19;
                      v30[1] = v17;
                      v29[2] = @"component";
                      v30[2] = v7;
                      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
                      v15 = @"Bad keypath for derived property (attribute in non-terminal location not followed by operator)";
                      goto LABEL_32;
                    }
                  }
                }

                else
                {
                  if (_propertyType != 4)
                  {
                    v12 = MEMORY[0x1E695DF30];
                    v13 = *MEMORY[0x1E695D940];
                    v25[0] = @"offending property";
                    v25[1] = @"keypath";
                    v26[0] = v19;
                    v26[1] = v17;
                    v25[2] = @"component";
                    v26[2] = v7;
                    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
                    v15 = @"Bad keypath for derived property (unsupported property type in keypath)";
                    goto LABEL_32;
                  }

                  entity = [v9 destinationEntity];
                }
              }

              else if (v6 != [v3 count] - 1)
              {
                v12 = MEMORY[0x1E695DF30];
                v13 = *MEMORY[0x1E695D940];
                v33[0] = @"offending property";
                v33[1] = @"keypath";
                v34[0] = v19;
                v34[1] = v17;
                v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
                v15 = @"Bad keypath for derived property (misplaced operator)";
                goto LABEL_32;
              }
            }

            while (v5++ < [v3 count]);
          }

          v2 = v2 + 1;
        }

        while (v2 != v20);
        result = [a2 countByEnumeratingWithState:&v21 objects:v37 count:16];
        v20 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)_versionHash:(char *)hash inStyle:(unint64_t)style
{
  v18 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v15.receiver = self;
  v15.super_class = NSDerivedAttributeDescription;
  [(NSAttributeDescription *)&v15 _versionHash:v17 inStyle:style];
  derivationExpression = self->_derivationExpression;
  if (derivationExpression)
  {
    predicateFormat = [(NSExpression *)derivationExpression predicateFormat];
    CStringPtr = CFStringGetCStringPtr(predicateFormat, 0x8000100u);
    if (!CStringPtr)
    {
      CStringPtr = [(__CFString *)predicateFormat UTF8String];
    }

    v10 = strlen(CStringPtr);
    CC_SHA256_Update(&c, CStringPtr, v10);
  }

  filteringPredicate = self->_filteringPredicate;
  if (filteringPredicate)
  {
    predicateFormat2 = [(NSPredicate *)filteringPredicate predicateFormat];
    uTF8String = CFStringGetCStringPtr(predicateFormat2, 0x8000100u);
    if (!uTF8String)
    {
      uTF8String = [(__CFString *)predicateFormat2 UTF8String];
    }

    v14 = strlen(uTF8String);
    CC_SHA256_Update(&c, uTF8String, v14);
  }

  CC_SHA256_Final(hash, &c);
}

- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots fetchRequests:(id)requests
{
  v16 = [data length];
  v17 = [data length];
  v21.receiver = self;
  v21.super_class = NSDerivedAttributeDescription;
  [(NSAttributeDescription *)&v21 _writeIntoData:data propertiesDict:dict uniquedPropertyNames:names uniquedStrings:strings uniquedData:uniquedData entitiesSlots:slots fetchRequests:requests];
  if (self->_derivationExpression)
  {
    v18 = [objc_msgSend(uniquedData "objectForKey:"unsignedIntegerValue"")];
  }

  else
  {
    v18 = 0;
  }

  _writeInt32IntoData(data, v18);
  if (self->_filteringPredicate)
  {
    v19 = [objc_msgSend(uniquedData "objectForKey:"unsignedIntegerValue"")];
  }

  else
  {
    v19 = 0;
  }

  _writeInt32IntoData(data, v19);
  v20 = bswap32([data length] - v16);
  [data replaceBytesInRange:v17 withBytes:{4, &v20}];
}

@end