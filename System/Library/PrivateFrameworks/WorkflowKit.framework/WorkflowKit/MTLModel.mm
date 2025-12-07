@interface MTLModel
+ (id)allowedSecureCodingClassesByPropertyKey;
+ (id)encodingBehaviorsByPropertyKey;
+ (id)modelWithDictionary:(id)dictionary error:(id *)error;
+ (id)permanentPropertyKeys;
+ (id)propertyKeys;
+ (id)transitoryPropertyKeys;
+ (unint64_t)storageBehaviorForPropertyWithKey:(id)key;
+ (void)enumeratePropertiesUsingBlock:(id)block;
+ (void)generateAndCacheStorageBehaviors;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id *)validate;
- (MTLModel)init;
- (MTLModel)initWithCoder:(id)coder;
- (MTLModel)initWithDictionary:(id)dictionary error:(id *)error;
- (NSDictionary)dictionaryValue;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodeValueForKey:(id)key withCoder:(id)coder modelVersion:(unint64_t)version;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)mergeValueForKey:(id)key fromModel:(id)model;
- (void)mergeValuesForKeysFromModel:(id)model;
@end

@implementation MTLModel

- (BOOL)isEqual:(id)equal
{
  v22 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else if ([(MTLModel *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    permanentPropertyKeys = [objc_opt_class() permanentPropertyKeys];
    v6 = [permanentPropertyKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(permanentPropertyKeys);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [(MTLModel *)self valueForKey:v10];
          v12 = [(MTLModel *)equalCopy valueForKey:v10];
          if (v11 | v12)
          {
            v13 = v12;
            v14 = [v11 isEqual:v12];

            if (!v14)
            {
              v15 = 0;
              goto LABEL_16;
            }
          }
        }

        v7 = [permanentPropertyKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_16:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  permanentPropertyKeys = [objc_opt_class() permanentPropertyKeys];
  v4 = [permanentPropertyKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(permanentPropertyKeys);
        }

        v9 = [(MTLModel *)self valueForKey:*(*(&v11 + 1) + 8 * i)];
        v6 ^= [v9 hash];
      }

      v5 = [permanentPropertyKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  permanentPropertyKeys = [objc_opt_class() permanentPropertyKeys];
  allObjects = [permanentPropertyKeys allObjects];
  v5 = [(MTLModel *)self dictionaryWithValuesForKeys:allObjects];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p> %@", objc_opt_class(), self, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  dictionaryValue = [(MTLModel *)self dictionaryValue];
  [v4 setValuesForKeysWithDictionary:dictionaryValue];

  return v4;
}

- (BOOL)validate:(id *)validate
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  propertyKeys = [objc_opt_class() propertyKeys];
  v6 = [propertyKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(propertyKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(MTLModel *)self valueForKey:v10];
        LODWORD(v10) = MTLValidateAndSetValue(self, v10, v11, 0, validate);

        if (!v10)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v7 = [propertyKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (void)mergeValuesForKeysFromModel:(id)model
{
  v17 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  propertyKeys = [objc_opt_class() propertyKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  propertyKeys2 = [objc_opt_class() propertyKeys];
  v7 = [propertyKeys2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(propertyKeys2);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([propertyKeys containsObject:v11])
        {
          [(MTLModel *)self mergeValueForKey:v11 fromModel:modelCopy];
        }
      }

      v8 = [propertyKeys2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)mergeValueForKey:(id)key fromModel:(id)model
{
  keyCopy = key;
  modelCopy = model;
  v8 = keyCopy;
  v9 = modelCopy;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTLModel.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

    v8 = 0;
  }

  v10 = MTLSelectorWithCapitalizedKeyPattern("merge", v8, "FromModel:");
  if (objc_opt_respondsToSelector())
  {
    ([(MTLModel *)self methodForSelector:v10])(self, v10, v9);
  }

  else if (v9)
  {
    v11 = [v9 valueForKey:keyCopy];
    [(MTLModel *)self setValue:v11 forKey:keyCopy];
  }
}

- (NSDictionary)dictionaryValue
{
  transitoryPropertyKeys = [objc_opt_class() transitoryPropertyKeys];
  permanentPropertyKeys = [objc_opt_class() permanentPropertyKeys];
  v5 = [transitoryPropertyKeys setByAddingObjectsFromSet:permanentPropertyKeys];

  allObjects = [v5 allObjects];
  v7 = [(MTLModel *)self dictionaryWithValuesForKeys:allObjects];

  return v7;
}

- (MTLModel)initWithDictionary:(id)dictionary error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [(MTLModel *)self init];
  if (v7)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = dictionaryCopy;
    v8 = dictionaryCopy;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v8 objectForKey:v13];
          v15 = v14;
          null = [MEMORY[0x1E695DFB0] null];
          v17 = [v14 isEqual:null];

          if (v17)
          {
            v18 = 0;
          }

          else
          {
            v18 = v14;
          }

          if (!MTLValidateAndSetValue(v7, v13, v18, 1, error))
          {

            v19 = 0;
            goto LABEL_15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v19 = v7;
LABEL_15:
    dictionaryCopy = v21;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (MTLModel)init
{
  v3.receiver = self;
  v3.super_class = MTLModel;
  return [(MTLModel *)&v3 init];
}

+ (unint64_t)storageBehaviorForPropertyWithKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  Property = class_getProperty(v5, [keyCopy UTF8String]);
  if (Property)
  {
    v7 = mtl_copyPropertyAttributes(Property);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__MTLModel_storageBehaviorForPropertyWithKey___block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v7;
    v8 = _Block_copy(aBlock);
    v9 = [self instancesRespondToSelector:*(v7 + 2)];
    v10 = [self instancesRespondToSelector:*(v7 + 3)];
    if ((v7[4] & 1) != 0 || (*(v7 + 4) != 0) | (v9 | v10) & 1)
    {
      if (*v7 != 1 || *(v7 + 4))
      {
        v11 = 2;
LABEL_10:
        v8[2](v8);

        goto LABEL_11;
      }

      if (([self isEqual:objc_opt_class()] & 1) == 0)
      {
        v11 = [objc_msgSend(self "superclass")];
        goto LABEL_10;
      }
    }

    v11 = 0;
    goto LABEL_10;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (id)permanentPropertyKeys
{
  v3 = objc_getAssociatedObject(self, MTLModelCachedPermanentPropertyKeysKey);
  if (!v3)
  {
    [self generateAndCacheStorageBehaviors];
    v3 = objc_getAssociatedObject(self, MTLModelCachedPermanentPropertyKeysKey);
  }

  return v3;
}

+ (id)transitoryPropertyKeys
{
  v3 = objc_getAssociatedObject(self, MTLModelCachedTransitoryPropertyKeysKey);
  if (!v3)
  {
    [self generateAndCacheStorageBehaviors];
    v3 = objc_getAssociatedObject(self, MTLModelCachedTransitoryPropertyKeysKey);
  }

  return v3;
}

+ (id)propertyKeys
{
  v3 = objc_getAssociatedObject(self, MTLModelCachedPropertyKeysKey);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __24__MTLModel_propertyKeys__block_invoke;
    v8[3] = &unk_1E837A3E0;
    selfCopy = self;
    v5 = v6;
    v9 = v5;
    [self enumeratePropertiesUsingBlock:v8];
    objc_setAssociatedObject(self, MTLModelCachedPropertyKeysKey, v5, 0x303);
  }

  return v5;
}

void __24__MTLModel_propertyKeys__block_invoke(uint64_t a1, objc_property_t property)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:property_getName(property)];
  if ([*(a1 + 40) storageBehaviorForPropertyWithKey:?])
  {
    [*(a1 + 32) addObject:v3];
  }
}

+ (void)enumeratePropertiesUsingBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  do
  {
    if ([self isEqual:objc_opt_class()])
    {
      break;
    }

    outCount = 0;
    v5 = class_copyPropertyList(self, &outCount);
    self = [self superclass];
    if (v5)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __42__MTLModel_enumeratePropertiesUsingBlock___block_invoke;
      v9[3] = &__block_descriptor_40_e5_v8__0l;
      v9[4] = v5;
      v6 = _Block_copy(v9);
      if (outCount)
      {
        v7 = 1;
        do
        {
          blockCopy[2](blockCopy, *v5, &v11);
          if (v11)
          {
            break;
          }

          ++v5;
        }

        while (v7++ < outCount);
      }

      v6[2](v6);
    }
  }

  while ((v11 & 1) == 0);
}

+ (id)modelWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v7 = [[self alloc] initWithDictionary:dictionaryCopy error:error];

  return v7;
}

+ (void)generateAndCacheStorageBehaviors
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  propertyKeys = [self propertyKeys];
  v6 = [propertyKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(propertyKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [self storageBehaviorForPropertyWithKey:v10];
        v12 = v3;
        if (v11 != 1)
        {
          if (v11 != 2)
          {
            continue;
          }

          v12 = v4;
        }

        [v12 addObject:v10];
      }

      v7 = [propertyKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_setAssociatedObject(self, MTLModelCachedTransitoryPropertyKeysKey, v3, 0x303);
  objc_setAssociatedObject(self, MTLModelCachedPermanentPropertyKeysKey, v4, 0x303);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (coderRequiresSecureCoding(coderCopy))
  {
    v6 = objc_opt_class();
    verifyAllowedClassesByPropertyKey(v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "modelVersion")}];
  [coderCopy encodeObject:v7 forKey:@"MTLModelVersion"];

  encodingBehaviorsByPropertyKey = [objc_opt_class() encodingBehaviorsByPropertyKey];
  dictionaryValue = [(MTLModel *)self dictionaryValue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__MTLModel_NSCoding__encodeWithCoder___block_invoke;
  v12[3] = &unk_1E837B638;
  v13 = encodingBehaviorsByPropertyKey;
  v14 = coderCopy;
  selfCopy = self;
  v16 = a2;
  v10 = coderCopy;
  v11 = encodingBehaviorsByPropertyKey;
  [dictionaryValue enumerateKeysAndObjectsUsingBlock:v12];
}

void __38__MTLModel_NSCoding__encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v15];
    v9 = [v8 unsignedIntegerValue];

    if (v9)
    {
      if (v9 == 2)
      {
        [*(a1 + 40) encodeConditionalObject:v5 forKey:v15];
      }

      else if (v9 == 1)
      {
        [*(a1 + 40) encodeObject:v5 forKey:v15];
      }

      else
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = *(a1 + 48);
        v11 = *(a1 + 56);
        v13 = objc_opt_class();
        v14 = [*(a1 + 32) objectForKeyedSubscript:v15];
        [v10 handleFailureInMethod:v11 object:v12 file:@"MTLModel+NSCoding.m" lineNumber:232 description:{@"Unrecognized encoding behavior %@ on class %@ for key %@", v13, v14, v15}];
      }
    }
  }
}

- (MTLModel)initWithCoder:(id)coder
{
  v37 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v6 = coderRequiresSecureCoding(coderCopy);
  if (v6)
  {
    [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTLModelVersion"];
  }

  else
  {
    [coderCopy decodeObjectForKey:@"MTLModelVersion"];
  }
  v7 = ;
  v8 = v7;
  if (!v7)
  {
    v11 = objc_opt_class();
    NSLog(&cfstr_WarningDecodin.isa, v11);
LABEL_8:
    if (v6)
    {
      v12 = objc_opt_class();
      verifyAllowedClassesByPropertyKey(v12);
    }

    else
    {
      v13 = [coderCopy decodeObjectForKey:@"externalRepresentation"];
      if (v13)
      {
        v14 = v13;
        v15 = [objc_opt_class() methodForSelector:sel_dictionaryValueFromArchivedExternalRepresentation_version_];
        if (v15 == [MTLModel methodForSelector:sel_dictionaryValueFromArchivedExternalRepresentation_version_])
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"MTLModel+NSCoding.m" lineNumber:177 description:{@"Decoded an old archive of %@ that contains an externalRepresentation, but +dictionaryValueFromArchivedExternalRepresentation:version: is not overridden to handle it", objc_opt_class()}];
        }

        v16 = [objc_opt_class() dictionaryValueFromArchivedExternalRepresentation:v14 version:{objc_msgSend(v8, "unsignedIntegerValue")}];
        if (!v16)
        {
          selfCopy = 0;
          goto LABEL_28;
        }

        v35 = 0;
        v17 = [(MTLModel *)self initWithDictionary:v16 error:&v35];
        v18 = v35;
        if (!v17)
        {
          v28 = objc_opt_class();
          NSLog(&cfstr_CouldNotDecode.isa, v28, v18);
        }

LABEL_27:
        self = v17;

        selfCopy = self;
LABEL_28:

        goto LABEL_29;
      }
    }

    propertyKeys = [objc_opt_class() propertyKeys];
    v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(propertyKeys, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = propertyKeys;
    v20 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v14);
          }

          v24 = *(*(&v31 + 1) + 8 * i);
          v25 = -[MTLModel decodeValueForKey:withCoder:modelVersion:](self, "decodeValueForKey:withCoder:modelVersion:", v24, coderCopy, [v8 unsignedIntegerValue]);
          if (v25)
          {
            [v16 setObject:v25 forKeyedSubscript:v24];
          }
        }

        v21 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v21);
    }

    v30 = 0;
    v17 = [(MTLModel *)self initWithDictionary:v16 error:&v30];
    v18 = v30;
    if (!v17)
    {
      v29 = objc_opt_class();
      NSLog(&cfstr_CouldNotUnarch.isa, v29, v18);
    }

    goto LABEL_27;
  }

  unsignedIntegerValue = [v7 unsignedIntegerValue];
  if (unsignedIntegerValue <= [objc_opt_class() modelVersion])
  {
    goto LABEL_8;
  }

  selfCopy = 0;
LABEL_29:

  return selfCopy;
}

- (id)decodeValueForKey:(id)key withCoder:(id)coder modelVersion:(unint64_t)version
{
  keyCopy = key;
  coderCopy = coder;
  v11 = coderCopy;
  if (keyCopy)
  {
    if (coderCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTLModel+NSCoding.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"MTLModel+NSCoding.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"coder != nil"}];

LABEL_3:
  v12 = MTLSelectorWithCapitalizedKeyPattern("decode", keyCopy, "WithCoder:modelVersion:");
  if (objc_opt_respondsToSelector())
  {
    v13 = ([(MTLModel *)self methodForSelector:v12])(self, v12, v11, version);
LABEL_10:
    v17 = v13;
    goto LABEL_11;
  }

  if (!coderRequiresSecureCoding(v11))
  {
    v13 = [v11 decodeObjectForKey:keyCopy];
    goto LABEL_10;
  }

  allowedSecureCodingClassesByPropertyKey = [objc_opt_class() allowedSecureCodingClassesByPropertyKey];
  v15 = [allowedSecureCodingClassesByPropertyKey objectForKeyedSubscript:keyCopy];

  if (!v15)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"MTLModel+NSCoding.m" lineNumber:141 description:{@"No allowed classes specified for securely decoding key %@ on %@", keyCopy, objc_opt_class()}];
  }

  v16 = [MEMORY[0x1E695DFD8] setWithArray:v15];
  v17 = [v11 decodeObjectOfClasses:v16 forKey:keyCopy];

LABEL_11:

  return v17;
}

+ (id)allowedSecureCodingClassesByPropertyKey
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_getAssociatedObject(self, MTLModelCachedAllowedClassesKey);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    goto LABEL_21;
  }

  encodingBehaviorsByPropertyKey = [self encodingBehaviorsByPropertyKey];
  v7 = [encodingBehaviorsByPropertyKey keysOfEntriesPassingTest:&__block_literal_global_50164];

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *v26;
  do
  {
    v10 = 0;
    do
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v25 + 1) + 8 * v10);
      v12 = v11;
      Property = class_getProperty(self, [v11 UTF8String]);
      if (Property)
      {
        v14 = mtl_copyPropertyAttributes(Property);
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"MTLModel+NSCoding.m" lineNumber:98 description:{@"Could not find property %@ on %@", v11, self}];

        v14 = mtl_copyPropertyAttributes(0);
      }

      v15 = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __61__MTLModel_NSCoding__allowedSecureCodingClassesByPropertyKey__block_invoke_2;
      aBlock[3] = &__block_descriptor_40_e5_v8__0l;
      aBlock[4] = v14;
      v16 = _Block_copy(aBlock);
      v17 = v15[48];
      if (v17 == 35 || v17 == 64)
      {
        if (!*(v15 + 5))
        {
          goto LABEL_16;
        }

        v29 = *(v15 + 5);
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
        [v5 setObject:v18 forKeyedSubscript:v11];
      }

      else
      {
        v30 = objc_opt_class();
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        [v5 setObject:v18 forKeyedSubscript:v11];
      }

LABEL_16:
      v16[2](v16);

      ++v10;
    }

    while (v8 != v10);
    v20 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    v8 = v20;
  }

  while (v20);
LABEL_20:

  objc_setAssociatedObject(self, MTLModelCachedAllowedClassesKey, v5, 0x303);
  v4 = 0;
LABEL_21:

  return v5;
}

+ (id)encodingBehaviorsByPropertyKey
{
  v27 = *MEMORY[0x1E69E9840];
  propertyKeys = [self propertyKeys];
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(propertyKeys, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = propertyKeys;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = v8;
        Property = class_getProperty(self, [v8 UTF8String]);
        if (Property)
        {
          v11 = mtl_copyPropertyAttributes(Property);
        }

        else
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"MTLModel+NSCoding.m" lineNumber:71 description:{@"Could not find property %@ on %@", v8, self}];

          v11 = mtl_copyPropertyAttributes(0);
        }

        v12 = v11;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __52__MTLModel_NSCoding__encodingBehaviorsByPropertyKey__block_invoke;
        aBlock[3] = &__block_descriptor_40_e5_v8__0l;
        aBlock[4] = v11;
        v13 = _Block_copy(aBlock);
        if (v12[2])
        {
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
        [v4 setObject:v15 forKeyedSubscript:v8];

        v13[2](v13);
        ++v7;
      }

      while (v5 != v7);
      v17 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      v5 = v17;
    }

    while (v17);
  }

  return v4;
}

@end