@interface INCodableCustomObjectAttribute
+ (BOOL)_isSupportedClass:(Class)class;
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (Class)_unsafeObjectClass;
- (Class)objectClass;
- (INCodableCustomObjectAttribute)initWithCoder:(id)coder;
- (INCodableDescription)codableDescription;
- (id)__INCodableDescriptionObjectTypeKey;
- (id)__INCodableDescriptionObjectTypeNamespaceKey;
- (id)__INIntentResponseCodableDescriptionObjectTypeKey;
- (id)__INIntentResponseCodableDescriptionObjectTypeNamespaceKey;
- (id)__INTypeCodableDescriptionObjectTypeKey;
- (id)__INTypeCodableDescriptionObjectTypeNamespaceKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)valueTransformer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (unint64_t)hash;
- (void)_assignCodableDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableCustomObjectAttribute

- (id)valueTransformer
{
  codableDescription = [(INCodableCustomObjectAttribute *)self codableDescription];
  v4 = MEMORY[0x1E696B0A0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__INCodableCustomObjectAttribute_valueTransformer__block_invoke;
  v11[3] = &unk_1E7282F78;
  v12 = codableDescription;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__INCodableCustomObjectAttribute_valueTransformer__block_invoke_2;
  v8[3] = &unk_1E7282FA0;
  v9 = v12;
  selfCopy = self;
  v5 = v12;
  v6 = [v4 if_transformerUsingForwardTransformation:v11 reverseTransformation:v8];

  return v6;
}

- (INCodableDescription)codableDescription
{
  WeakRetained = objc_loadWeakRetained(&self->_codableDescription);
  if (!WeakRetained)
  {
    objectTypeNamespace = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
    v5 = [objectTypeNamespace isEqualToString:@"System"];

    if (v5)
    {
      v6 = +[INSchema systemSchema];
      _types = [v6 _types];
      objectTypeName = [(INCodableCustomObjectAttribute *)self objectTypeName];
      v9 = INIntentDefinitionNamespacedName(@"System", objectTypeName);
      WeakRetained = [_types objectForKeyedSubscript:v9];
    }

    else
    {
      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

INCodable *__50__INCodableCustomObjectAttribute_valueTransformer__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = [[INCodable alloc] initWithCodableDescription:*(a1 + 32) data:0];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [*(a1 + 32) attributes];
    v6 = [v5 allValues];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) propertyName];
          v12 = [v3 valueForKey:v11];
          [(INCodable *)v4 setValue:v12 forPropertyNamed:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __50__INCodableCustomObjectAttribute_valueTransformer__block_invoke_2(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 className];
    v6 = NSClassFromString(v5);
    if ([objc_opt_class() _isSupportedClass:v6])
    {
      v30 = v5;
      v31 = v6;
      if (v6)
      {
        v7 = objc_alloc_init(v6);
      }

      else
      {
        v7 = [[INCustomObject alloc] _initWithCodableDescription:*(a1 + 32)];
      }

      v8 = v7;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v10 = [*(a1 + 32) attributes];
      v11 = [v10 allValues];

      obj = v11;
      v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v34;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v34 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = [*(*(&v33 + 1) + 8 * i) propertyName];
            v17 = [v3 valueForPropertyNamed:v16];
            if (v17)
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v19 = objc_opt_class();
              v20 = [v19 _isSupportedClass:objc_opt_class()];
              if (isKindOfClass)
              {
                v21 = v8;
                v22 = v21;
                if (v8)
                {
                  if ([v21 conformsToProtocol:&unk_1F02E2388])
                  {
                    v23 = v22;
                  }

                  else
                  {
                    v23 = 0;
                  }
                }

                else
                {
                  v23 = 0;
                }

                v27 = v23;

                if ([&unk_1F02DBB98 containsObject:v16])
                {
                  [v22 setValue:v17 forKey:v16];
                }

                else if (v27)
                {
                  [v27 setValue:v17 forProperty:v16];
                }
              }

              else if (v20)
              {
                [v8 setValue:v17 forKey:v16];
              }

              else
              {
                v24 = INSiriLogContextIntents;
                if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
                {
                  v25 = v24;
                  v26 = objc_opt_class();
                  *buf = 136315650;
                  v39 = "[INCodableCustomObjectAttribute valueTransformer]_block_invoke";
                  v40 = 2114;
                  v41 = v26;
                  v42 = 2114;
                  v43 = v31;
                  _os_log_fault_impl(&dword_18E991000, v25, OS_LOG_TYPE_FAULT, "%s Use of %{public}@ on a class outside of system frameworks: %{public}@", buf, 0x20u);
                }
              }
            }
          }

          v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v13);
      }

      v5 = v30;
    }

    else
    {
      v9 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
      {
        v29 = v9;
        *buf = 136315650;
        v39 = "[INCodableCustomObjectAttribute valueTransformer]_block_invoke_2";
        v40 = 2114;
        v41 = objc_opt_class();
        v42 = 2114;
        v43 = v6;
        _os_log_fault_impl(&dword_18E991000, v29, OS_LOG_TYPE_FAULT, "%s Use of %{public}@ on a class outside of allowed classes: %{public}@", buf, 0x20u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  objectTypeNamespace = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
  v4 = [objectTypeNamespace hash];
  objectTypeName = [(INCodableCustomObjectAttribute *)self objectTypeName];
  v6 = [objectTypeName hash] ^ v4;
  v9.receiver = self;
  v9.super_class = INCodableCustomObjectAttribute;
  v7 = [(INCodableObjectAttribute *)&v9 hash];

  return v6 ^ v7;
}

- (id)__INCodableDescriptionObjectTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableCustomObjectAttributeObjectTypeKey = [objc_opt_class() __INCodableCustomObjectAttributeObjectTypeKey];

  return __INCodableCustomObjectAttributeObjectTypeKey;
}

- (id)__INCodableDescriptionObjectTypeNamespaceKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableCustomObjectAttributeObjectTypeNamespaceKey = [objc_opt_class() __INCodableCustomObjectAttributeObjectTypeNamespaceKey];

  return __INCodableCustomObjectAttributeObjectTypeNamespaceKey;
}

- (void)_assignCodableDescription
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  schema = [_codableDescription schema];

  _types = [schema _types];
  objectTypeNamespace = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
  objectTypeName = [(INCodableCustomObjectAttribute *)self objectTypeName];
  v7 = INIntentDefinitionNamespacedName(objectTypeNamespace, objectTypeName);
  v8 = [_types objectForKeyedSubscript:v7];

  if (([schema isSystem] & 1) == 0 && !v8)
  {
    objectTypeNamespace2 = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
    v10 = [objectTypeNamespace2 isEqualToString:@"System"];

    if (v10)
    {
      v11 = +[INSchema systemSchema];
      _types2 = [v11 _types];
      objectTypeName2 = [(INCodableCustomObjectAttribute *)self objectTypeName];
      v14 = INIntentDefinitionNamespacedName(@"System", objectTypeName2);
      v8 = [_types2 objectForKeyedSubscript:v14];
    }

    else
    {
      v8 = 0;
    }
  }

  objc_storeWeak(&self->_codableDescription, v8);
}

- (INCodableCustomObjectAttribute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = INCodableCustomObjectAttribute;
  v5 = [(INCodableObjectAttribute *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectTypeName"];
    objectTypeName = v5->_objectTypeName;
    v5->_objectTypeName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectTypeNamespace"];
    objectTypeNamespace = v5->_objectTypeNamespace;
    v5->_objectTypeNamespace = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codableDescription"];
    objc_storeWeak(&v5->_codableDescription, v10);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = INCodableCustomObjectAttribute;
  coderCopy = coder;
  [(INCodableObjectAttribute *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_objectTypeName forKey:{@"objectTypeName", v6.receiver, v6.super_class}];
  [coderCopy encodeObject:self->_objectTypeNamespace forKey:@"objectTypeNamespace"];
  WeakRetained = objc_loadWeakRetained(&self->_codableDescription);
  [coderCopy encodeConditionalObject:WeakRetained forKey:@"codableDescription"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodableCustomObjectAttribute;
  v13 = 0;
  v6 = [(INCodableObjectAttribute *)&v12 widgetPlistableRepresentationWithParameters:parameters error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    [v6 intents_setPlistSafeObject:self->_objectTypeName forKey:@"objectTypeName"];
    [v6 intents_setPlistSafeObject:self->_objectTypeNamespace forKey:@"objectTypeNamespace"];
    v10 = v6;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = INCodableCustomObjectAttribute;
  v4 = [(INCodableObjectAttribute *)&v9 copyWithZone:zone];
  objectTypeName = [(INCodableCustomObjectAttribute *)self objectTypeName];
  [v4 setObjectTypeName:objectTypeName];

  objectTypeNamespace = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
  [v4 setObjectTypeNamespace:objectTypeNamespace];

  codableDescription = [(INCodableCustomObjectAttribute *)self codableDescription];
  [v4 setCodableDescription:codableDescription];

  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v17[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = INCodableCustomObjectAttribute;
  v4 = [(INCodableObjectAttribute *)&v15 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionObjectTypeNamespaceKey = [(INCodableCustomObjectAttribute *)self __INCodableDescriptionObjectTypeNamespaceKey];
  v16[0] = __INCodableDescriptionObjectTypeNamespaceKey;
  objectTypeNamespace = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
  null = objectTypeNamespace;
  if (!objectTypeNamespace)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  __INCodableDescriptionObjectTypeKey = [(INCodableCustomObjectAttribute *)self __INCodableDescriptionObjectTypeKey];
  v16[1] = __INCodableDescriptionObjectTypeKey;
  objectTypeName = [(INCodableCustomObjectAttribute *)self objectTypeName];
  null2 = objectTypeName;
  if (!objectTypeName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v12 = [v4 if_dictionaryByAddingEntriesFromDictionary:v11];

  if (!objectTypeName)
  {
  }

  if (!objectTypeNamespace)
  {
  }

  if_dictionaryWithNonEmptyValues = [v12 if_dictionaryWithNonEmptyValues];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  __INCodableDescriptionObjectTypeKey = [(INCodableCustomObjectAttribute *)self __INCodableDescriptionObjectTypeKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionObjectTypeKey];
  objectTypeName = self->_objectTypeName;
  self->_objectTypeName = v6;

  __INCodableDescriptionObjectTypeNamespaceKey = [(INCodableCustomObjectAttribute *)self __INCodableDescriptionObjectTypeNamespaceKey];
  v9 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionObjectTypeNamespaceKey];
  objectTypeNamespace = self->_objectTypeNamespace;
  self->_objectTypeNamespace = v9;

  [(INCodableCustomObjectAttribute *)self _assignCodableDescription];
  v11.receiver = self;
  v11.super_class = INCodableCustomObjectAttribute;
  [(INCodableObjectAttribute *)&v11 updateWithDictionary:dictionaryCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = INCodableCustomObjectAttribute;
  if ([(INCodableObjectAttribute *)&v16 isEqual:equalCopy])
  {
    objectTypeName = [(INCodableCustomObjectAttribute *)self objectTypeName];
    if (objectTypeName || ([equalCopy objectTypeName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      objectTypeName2 = [(INCodableCustomObjectAttribute *)self objectTypeName];
      objectTypeName3 = [equalCopy objectTypeName];
      v9 = [objectTypeName2 isEqual:objectTypeName3];

      if (objectTypeName)
      {
LABEL_9:

        objectTypeNamespace = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
        if (objectTypeNamespace || ([equalCopy objectTypeNamespace], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          objectTypeNamespace2 = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
          objectTypeNamespace3 = [equalCopy objectTypeNamespace];
          v14 = [objectTypeNamespace2 isEqual:objectTypeNamespace3];

          if (objectTypeNamespace)
          {
LABEL_15:

            v10 = v9 & v14;
            goto LABEL_16;
          }
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (Class)_unsafeObjectClass
{
  v15 = *MEMORY[0x1E69E9840];
  objectClass = [(INCodableCustomObjectAttribute *)self objectClass];
  if (objectClass == objc_opt_class())
  {
    codableDescription = [(INCodableCustomObjectAttribute *)self codableDescription];
    className = [codableDescription className];
    objectClass = NSClassFromString(className);

    if (([objc_opt_class() _isSupportedClass:objectClass] & 1) == 0)
    {
      v6 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
      {
        v8 = v6;
        v9 = 136315650;
        v10 = "[INCodableCustomObjectAttribute _unsafeObjectClass]";
        v11 = 2114;
        v12 = objc_opt_class();
        v13 = 2114;
        v14 = objectClass;
        _os_log_fault_impl(&dword_18E991000, v8, OS_LOG_TYPE_FAULT, "%s Use of %{public}@ on a class outside of allowed classes: %{public}@", &v9, 0x20u);
      }

      objectClass = 0;
    }
  }

  return objectClass;
}

- (Class)objectClass
{
  v22 = *MEMORY[0x1E69E9840];
  objectTypeNamespace = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
  v4 = [objectTypeNamespace isEqualToString:@"System"];

  if (v4)
  {
    v5 = +[INSchema systemSchema];
    _types = [v5 _types];
    objectTypeName = [(INCodableCustomObjectAttribute *)self objectTypeName];
    v8 = INIntentDefinitionNamespacedName(@"System", objectTypeName);
    v9 = [_types objectForKeyedSubscript:v8];

    className = [v9 className];

    if (className)
    {
      className2 = [v9 className];
      v12 = NSClassFromString(className2);

      if ([objc_opt_class() _isSupportedClass:v12])
      {

        if (v12)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v13 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
      {
        v15 = v13;
        v16 = 136315650;
        v17 = "[INCodableCustomObjectAttribute objectClass]";
        v18 = 2114;
        v19 = objc_opt_class();
        v20 = 2114;
        v21 = v12;
        _os_log_fault_impl(&dword_18E991000, v15, OS_LOG_TYPE_FAULT, "%s Use of %{public}@ on a class outside of allowed classes: %{public}@", &v16, 0x20u);
      }
    }
  }

LABEL_9:
  v12 = objc_opt_class();
LABEL_10:

  return v12;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___INCodableCustomObjectAttribute;
  v18 = 0;
  v7 = objc_msgSendSuper2(&v17, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v18);
  v8 = v18;
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [representationCopy intents_stringForKey:@"objectTypeName"];
    v13 = v7[22];
    v7[22] = v12;

    v14 = [representationCopy intents_stringForKey:@"objectTypeNamespace"];
    v15 = v7[23];
    v7[23] = v14;

    v11 = v7;
  }

  return v11;
}

+ (BOOL)_isSupportedClass:(Class)class
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:?];
  v5 = +[INSchema _supportedClasses];
  v6 = [v5 containsObject:class];

  LOBYTE(v5) = [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  bundleIdentifier = [v4 bundleIdentifier];
  v8 = [bundleIdentifier isEqualToString:@"com.apple.siri.IntentsTests"];

  LOBYTE(bundleIdentifier) = objc_opt_class() == class;
  LOBYTE(class) = (class == 0) | v6 | v5 | v8 | bundleIdentifier | (objc_opt_class() == class);

  return class & 1;
}

- (id)__INTypeCodableDescriptionObjectTypeNamespaceKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableCustomObjectAttributeObjectTypeNamespaceKey = [objc_opt_class() __INCodableCustomObjectAttributeObjectTypeNamespaceKey];

  return __INCodableCustomObjectAttributeObjectTypeNamespaceKey;
}

- (id)__INTypeCodableDescriptionObjectTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableCustomObjectAttributeObjectTypeKey = [objc_opt_class() __INCodableCustomObjectAttributeObjectTypeKey];

  return __INCodableCustomObjectAttributeObjectTypeKey;
}

- (id)__INIntentResponseCodableDescriptionObjectTypeNamespaceKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableCustomObjectAttributeObjectTypeNamespaceKey = [objc_opt_class() __INCodableCustomObjectAttributeObjectTypeNamespaceKey];

  return __INCodableCustomObjectAttributeObjectTypeNamespaceKey;
}

- (id)__INIntentResponseCodableDescriptionObjectTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableCustomObjectAttributeObjectTypeKey = [objc_opt_class() __INCodableCustomObjectAttributeObjectTypeKey];

  return __INCodableCustomObjectAttributeObjectTypeKey;
}

@end