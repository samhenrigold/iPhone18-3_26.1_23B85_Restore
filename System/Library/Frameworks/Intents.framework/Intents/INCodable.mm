@interface INCodable
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)_BOOLValueForAttribute:(id)attribute;
- (BOOL)_isAttribute:(id)attribute equalTo:(id)to;
- (BOOL)_isStringAttribute:(id)attribute equalTo:(id)to;
- (BOOL)_readFrom:(id)from error:(id *)error;
- (BOOL)_writeTo:(id)to error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidKey:(id)key;
- (BOOL)readFrom:(id)from;
- (INCodable)initWithCodableDescription:(id)description data:(id)data;
- (INCodable)initWithCoder:(id)coder;
- (double)_doubleValueForAttribute:(id)attribute;
- (float)_floatValueForAttribute:(id)attribute;
- (id)_copyWithZone:(_NSZone *)zone error:(id *)error;
- (id)_dataWithError:(id *)error;
- (id)_dictionaryRepresentationWithNullValues:(BOOL)values;
- (id)_initWithCodableDescription:(id)description data:(id)data error:(id *)error;
- (id)_nonNilAttributes;
- (id)_nonNilRepeatedAttributes;
- (id)_valueForAttribute:(id)attribute;
- (id)_valueForAttribute:(id)attribute ofClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)data;
- (id)valueForPropertyNamed:(id)named;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (int)_int32ValueForAttribute:(id)attribute;
- (int64_t)_int64ValueForAttribute:(id)attribute;
- (unint64_t)_UInt64ValueForAttribute:(id)attribute;
- (unint64_t)hash;
- (unsigned)_UInt32ValueForAttribute:(id)attribute;
- (void)_setData:(id)data error:(id *)error;
- (void)_setEmptyArrayForNonNilRepeatedAttributes:(id)attributes;
- (void)_setObject:(id)object forAttribute:(id)attribute;
- (void)encodeWithCoder:(id)coder;
- (void)setNilValueForAllKeys;
- (void)setValue:(id)value forPropertyNamed:(id)named;
- (void)writeTo:(id)to;
@end

@implementation INCodable

- (id)_nonNilRepeatedAttributes
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  _objectDescription = [(INCodable *)self _objectDescription];
  attributes = [_objectDescription attributes];
  allValues = [attributes allValues];

  v7 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        propertyName = [v11 propertyName];
        v13 = [propertyName hasPrefix:@"_"];

        if ((v13 & 1) == 0)
        {
          v14 = [(INCodable *)self _valueForAttribute:v11];
          if (v14 && ![v11 modifier])
          {
            propertyName2 = [v11 propertyName];
            [v3 addObject:propertyName2];
          }
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v3;
}

- (id)_nonNilAttributes
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = [MEMORY[0x1E695DFA8] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  _objectDescription = [(INCodable *)self _objectDescription];
  attributes = [_objectDescription attributes];
  allValues = [attributes allValues];

  v6 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        propertyName = [v10 propertyName];
        v12 = [propertyName hasPrefix:@"_"];

        if ((v12 & 1) == 0)
        {
          v13 = [(INCodable *)self _valueForAttribute:v10];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if ((INObjectIsConsideredNil(v13, isKindOfClass & 1) & 1) == 0)
          {
            propertyName2 = [v10 propertyName];
            [v17 addObject:propertyName2];
          }
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  return v17;
}

- (id)data
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v2 = [(INCodable *)self _dataWithError:&v12];
  v3 = v12;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 debugDescription];
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
    {
      v9 = v6;
      v10 = [(__CFString *)v5 length];
      v11 = @"INCodable data writing failed";
      if (v10)
      {
        v11 = v5;
      }

      *buf = 136315394;
      v14 = "[INCodable data]";
      v15 = 2114;
      v16 = v11;
      _os_log_fault_impl(&dword_18E991000, v9, OS_LOG_TYPE_FAULT, "%s INCodable data failed: %{public}@", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = v2;
  }

  return v7;
}

- (id)_valueForAttribute:(id)attribute ofClass:(Class)class
{
  attributeCopy = attribute;
  v7 = [(INCodable *)self _valueForAttribute:attributeCopy];
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    v11 = MEMORY[0x1E696AEC0];
    propertyName = [attributeCopy propertyName];
    v13 = NSStringFromClass(class);
    v14 = [v11 stringWithFormat:@"Property '%@' is not a valid %@ subclass", propertyName, v13];
    v15 = [v9 exceptionWithName:v10 reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  return v7;
}

- (id)valueForPropertyNamed:(id)named
{
  customValueForKeyDictionary = self->_customValueForKeyDictionary;
  if_stringByLowercasingFirstCharacter = [named if_stringByLowercasingFirstCharacter];
  v5 = [(NSMutableDictionary *)customValueForKeyDictionary objectForKeyedSubscript:if_stringByLowercasingFirstCharacter];

  return v5;
}

- (id)_valueForAttribute:(id)attribute
{
  customValueForKeyDictionary = self->_customValueForKeyDictionary;
  propertyName = [attribute propertyName];
  if_stringByLowercasingFirstCharacter = [propertyName if_stringByLowercasingFirstCharacter];
  v6 = [(NSMutableDictionary *)customValueForKeyDictionary objectForKeyedSubscript:if_stringByLowercasingFirstCharacter];

  return v6;
}

- (BOOL)_BOOLValueForAttribute:(id)attribute
{
  v3 = [(INCodable *)self _valueForAttribute:attribute];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (unint64_t)_UInt64ValueForAttribute:(id)attribute
{
  v3 = [(INCodable *)self _valueForAttribute:attribute];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unsigned)_UInt32ValueForAttribute:(id)attribute
{
  v3 = [(INCodable *)self _valueForAttribute:attribute];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (int64_t)_int64ValueForAttribute:(id)attribute
{
  v3 = [(INCodable *)self _valueForAttribute:attribute];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (int)_int32ValueForAttribute:(id)attribute
{
  v3 = [(INCodable *)self _valueForAttribute:attribute];
  intValue = [v3 intValue];

  return intValue;
}

- (float)_floatValueForAttribute:(id)attribute
{
  v3 = [(INCodable *)self _valueForAttribute:attribute];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)_doubleValueForAttribute:(id)attribute
{
  v3 = [(INCodable *)self _valueForAttribute:attribute];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)_setObject:(id)object forAttribute:(id)attribute
{
  objectCopy = object;
  propertyName = [attribute propertyName];
  [(INCodable *)self setValue:objectCopy forPropertyNamed:propertyName];
}

- (void)setValue:(id)value forPropertyNamed:(id)named
{
  valueCopy = value;
  namedCopy = named;
  if_stringByLowercasingFirstCharacter = [namedCopy if_stringByLowercasingFirstCharacter];
  if (![(INCodable *)self isValidKey:if_stringByLowercasingFirstCharacter])
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid attribute", if_stringByLowercasingFirstCharacter];
    v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
    v13 = v12;

    objc_exception_throw(v12);
  }

  customValueForKeyDictionary = self->_customValueForKeyDictionary;
  if (valueCopy)
  {
    [(NSMutableDictionary *)customValueForKeyDictionary setObject:valueCopy forKeyedSubscript:if_stringByLowercasingFirstCharacter];
  }

  else
  {
    [(NSMutableDictionary *)customValueForKeyDictionary removeObjectForKey:if_stringByLowercasingFirstCharacter];
  }
}

- (id)_copyWithZone:(_NSZone *)zone error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  _nonNilRepeatedAttributes = [(INCodable *)self _nonNilRepeatedAttributes];
  v21 = 0;
  v8 = [(INCodable *)self _dataWithError:&v21];
  v9 = v21;
  if (v9)
  {
    v10 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "[INCodable _copyWithZone:error:]";
      v24 = 2112;
      selfCopy2 = self;
      v26 = 2112;
      v27 = v9;
      _os_log_error_impl(&dword_18E991000, v10, OS_LOG_TYPE_ERROR, "%s Failed to copy INCodable %@ due to data error: %@", buf, 0x20u);
    }

    v11 = v9;
    v12 = 0;
    v13 = 0;
    *error = v9;
  }

  else
  {
    v14 = [objc_opt_class() allocWithZone:zone];
    _objectDescription = [(INCodable *)self _objectDescription];
    v20 = 0;
    v16 = [v14 _initWithCodableDescription:_objectDescription data:v8 error:&v20];
    v12 = v20;

    [v16 _setEmptyArrayForNonNilRepeatedAttributes:_nonNilRepeatedAttributes];
    if (v12)
    {
      v17 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v23 = "[INCodable _copyWithZone:error:]";
        v24 = 2112;
        selfCopy2 = self;
        v26 = 2112;
        v27 = v12;
        _os_log_error_impl(&dword_18E991000, v17, OS_LOG_TYPE_ERROR, "%s Failed to copy INCodable %@ due to initialization error: %@", buf, 0x20u);
      }

      v18 = v12;
      v13 = 0;
      *error = v12;
    }

    else
    {
      v13 = v16;
    }
  }

  return v13;
}

- (void)_setEmptyArrayForNonNilRepeatedAttributes:(id)attributes
{
  v20 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [attributesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(attributesCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([(INCodable *)self isValidKey:v10])
        {
          v11 = [(INCodable *)self valueForPropertyNamed:v10];
          if (v11)
          {
          }

          else
          {
            _objectDescription = [(INCodable *)self _objectDescription];
            v13 = [_objectDescription attributeByName:v10];
            modifier = [v13 modifier];

            if (!modifier)
            {
              [(INCodable *)self setValue:v8 forPropertyNamed:v10];
            }
          }
        }
      }

      v6 = [attributesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (id)_dataWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  [(INCodable *)self _writeTo:v5 error:error];
  immutableData = [v5 immutableData];

  return immutableData;
}

- (BOOL)_writeTo:(id)to error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  toCopy = to;
  _objectDescription = [(INCodable *)self _objectDescription];
  attributes = [_objectDescription attributes];
  allKeys = [attributes allKeys];
  v10 = [allKeys sortedArrayUsingComparator:&__block_literal_global_74];

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __28__INCodable__writeTo_error___block_invoke_2;
  v36[3] = &unk_1E7282A98;
  errorCopy = error;
  v11 = toCopy;
  v37 = v11;
  v12 = MEMORY[0x193AD7780](v36);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __28__INCodable__writeTo_error___block_invoke_3;
  v32[3] = &unk_1E7282AC0;
  v32[4] = self;
  v13 = v12;
  v34 = v13;
  errorCopy2 = error;
  v14 = v11;
  v33 = v14;
  v15 = MEMORY[0x193AD7780](v32);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v10;
  v16 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v26 = v14;
    v18 = *v29;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v28 + 1) + 8 * i);
        _objectDescription2 = [(INCodable *)self _objectDescription];
        attributes2 = [_objectDescription2 attributes];
        v23 = [attributes2 objectForKey:v20];

        if (v23 && !(v15)[2](v15, v23, v20))
        {

          v24 = 0;
          goto LABEL_12;
        }
      }

      v17 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v24 = 1;
LABEL_12:
    v14 = v26;
  }

  else
  {
    v24 = 1;
  }

  return v24;
}

uint64_t __28__INCodable__writeTo_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 valueTransformer];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 transformedValue:v8];

    v8 = v12;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v9 unsignedIntValue];
    PBDataWriterWriteSubmessage();
  }

  else if (*(a1 + 40))
  {
    v14 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    v15 = MEMORY[0x1E696AEC0];
    v17 = v16 = [v7 propertyName];
    v21[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    **(a1 + 40) = [v14 errorWithDomain:@"IntentsErrorDomain" code:8001 userInfo:v18];
  }

  return isKindOfClass & 1;
}

uint64_t __28__INCodable__writeTo_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    if ([v7 modifier])
    {
      v8 = [*(a1 + 32) _valueForAttribute:v7];
      if (v8 && !(*(*(a1 + 48) + 16))())
      {
LABEL_5:

        goto LABEL_31;
      }
    }

    else
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v8 = [*(a1 + 32) _valueForAttribute:v7 ofClass:objc_opt_class()];
      v15 = [v8 countByEnumeratingWithState:&v71 objects:v83 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v72;
LABEL_22:
        v18 = 0;
        while (1)
        {
          if (*v72 != v17)
          {
            objc_enumerationMutation(v8);
          }

          if (!(*(*(a1 + 48) + 16))())
          {
            goto LABEL_5;
          }

          if (v16 == ++v18)
          {
            v16 = [v8 countByEnumeratingWithState:&v71 objects:v83 count:16];
            if (v16)
            {
              goto LABEL_22;
            }

            break;
          }
        }
      }
    }

    goto LABEL_78;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v5 modifier])
    {
      [*(a1 + 40) writeInt32:objc_msgSend(*(a1 + 32) forTag:{"_int32ValueForAttribute:", v5), objc_msgSend(v6, "unsignedIntValue")}];
      goto LABEL_78;
    }

    if (!*(a1 + 56))
    {
      goto LABEL_42;
    }

    v24 = MEMORY[0x1E696ABC0];
    v81 = *MEMORY[0x1E696A278];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Repeated modifier is not supported for enum attributes"];
    v82 = v9;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    **(a1 + 56) = [v24 errorWithDomain:@"IntentsErrorDomain" code:8001 userInfo:v25];

    goto LABEL_41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!*(a1 + 56))
    {
LABEL_42:
      v36 = 0;
      goto LABEL_79;
    }

    v19 = MEMORY[0x1E696ABC0];
    v75 = *MEMORY[0x1E696A278];
    v20 = MEMORY[0x1E696AEC0];
    v21 = objc_opt_class();
    v7 = NSStringFromClass(v21);
    v22 = [v20 stringWithFormat:@"Unsupported attribute type: %@", v7];
    v76 = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    **(a1 + 56) = [v19 errorWithDomain:@"IntentsErrorDomain" code:8001 userInfo:v23];

LABEL_31:
    goto LABEL_42;
  }

  v9 = v5;
  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F02D81D0, &unk_1F02D81E8, 0}];
  if (![v9 modifier])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "type")}];
    v12 = [v10 containsObject:v11];

    if ((v12 & 1) == 0)
    {
      if (*(a1 + 56))
      {
        v31 = MEMORY[0x1E696ABC0];
        v79 = *MEMORY[0x1E696A278];
        v32 = MEMORY[0x1E696AEC0];
        v33 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "type")}];
        v34 = [v32 stringWithFormat:@"Repeated modifier is not supported for scalar attributes with type %@", v33];
        v80 = v34;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        **(a1 + 56) = [v31 errorWithDomain:@"IntentsErrorDomain" code:8001 userInfo:v35];
      }

LABEL_41:
      goto LABEL_42;
    }
  }

  v13 = [v9 type];
  if (v13 <= 3)
  {
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        [*(a1 + 40) writeInt32:objc_msgSend(*(a1 + 32) forTag:{"_int32ValueForAttribute:", v9), objc_msgSend(v6, "unsignedIntValue")}];
      }

      else
      {
        [*(a1 + 40) writeInt64:objc_msgSend(*(a1 + 32) forTag:{"_int32ValueForAttribute:", v9), objc_msgSend(v6, "unsignedIntValue")}];
      }
    }

    else if (v13)
    {
      if (v13 == 1)
      {
        v26 = *(a1 + 40);
        [*(a1 + 32) _floatValueForAttribute:v9];
        v28 = v27;
        v29 = [v6 unsignedIntValue];
        LODWORD(v30) = v28;
        [v26 writeFloat:v29 forTag:v30];
      }
    }

    else
    {
      v37 = *(a1 + 40);
      [*(a1 + 32) _doubleValueForAttribute:v9];
      [v37 writeDouble:objc_msgSend(v6 forTag:{"unsignedIntValue"), v38}];
    }
  }

  else if (v13 <= 5)
  {
    if (v13 == 4)
    {
      [*(a1 + 40) writeUint32:objc_msgSend(*(a1 + 32) forTag:{"_UInt32ValueForAttribute:", v9), objc_msgSend(v6, "unsignedIntValue")}];
    }

    else
    {
      [*(a1 + 40) writeUint64:objc_msgSend(*(a1 + 32) forTag:{"_UInt64ValueForAttribute:", v9), objc_msgSend(v6, "unsignedIntValue")}];
    }
  }

  else if (v13 == 6)
  {
    [*(a1 + 40) writeBOOL:objc_msgSend(*(a1 + 32) forTag:{"_BOOLValueForAttribute:", v9), objc_msgSend(v6, "unsignedIntValue")}];
  }

  else
  {
    if (v13 == 7)
    {
      if ([v9 modifier])
      {
        v39 = [*(a1 + 32) _valueForAttribute:v9 ofClass:objc_opt_class()];
        v14 = [v39 _intents_encodeForProto];

        if (v14)
        {
          [*(a1 + 40) writeString:v14 forTag:{objc_msgSend(v6, "unsignedIntValue")}];
        }
      }

      else
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v14 = [*(a1 + 32) _valueForAttribute:v9 ofClass:objc_opt_class()];
        v45 = [v14 countByEnumeratingWithState:&v67 objects:v78 count:16];
        if (v45)
        {
          v46 = v45;
          v61 = v10;
          v62 = v9;
          v47 = *v68;
          while (1)
          {
            for (i = 0; i != v46; ++i)
            {
              if (*v68 != v47)
              {
                objc_enumerationMutation(v14);
              }

              v49 = *(*(&v67 + 1) + 8 * i);
              if (v49)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v52 = MEMORY[0x1E695DF30];
                  v53 = *MEMORY[0x1E695D930];
                  v54 = MEMORY[0x1E696AEC0];
                  v55 = [v62 propertyName];
LABEL_82:
                  v56 = objc_opt_class();
                  v57 = NSStringFromClass(v56);
                  v58 = [v54 stringWithFormat:@"Property '%@' is not a valid NSArray<%@ *> subclass", v55, v57, v61];
                  v59 = [v52 exceptionWithName:v53 reason:v58 userInfo:0];
                  v60 = v59;

                  objc_exception_throw(v59);
                }
              }

              v50 = [v49 _intents_encodeForProto];
              if (v50)
              {
                [*(a1 + 40) writeString:v50 forTag:{objc_msgSend(v6, "unsignedIntValue")}];
              }
            }

            v46 = [v14 countByEnumeratingWithState:&v67 objects:v78 count:16];
            if (!v46)
            {
              goto LABEL_75;
            }
          }
        }
      }
    }

    else
    {
      if (v13 != 8)
      {
        goto LABEL_77;
      }

      if ([v9 modifier])
      {
        v14 = [*(a1 + 32) _valueForAttribute:v9 ofClass:objc_opt_class()];
        if (v14)
        {
          [*(a1 + 40) writeData:v14 forTag:{objc_msgSend(v6, "unsignedIntValue")}];
        }
      }

      else
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v14 = [*(a1 + 32) _valueForAttribute:v9 ofClass:objc_opt_class()];
        v40 = [v14 countByEnumeratingWithState:&v63 objects:v77 count:16];
        if (v40)
        {
          v41 = v40;
          v61 = v10;
          v62 = v9;
          v42 = *v64;
          while (1)
          {
            for (j = 0; j != v41; ++j)
            {
              if (*v64 != v42)
              {
                objc_enumerationMutation(v14);
              }

              v44 = *(*(&v63 + 1) + 8 * j);
              if (v44)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v52 = MEMORY[0x1E695DF30];
                  v53 = *MEMORY[0x1E695D930];
                  v54 = MEMORY[0x1E696AEC0];
                  v55 = [v9 propertyName];
                  goto LABEL_82;
                }
              }

              [*(a1 + 40) writeData:v44 forTag:{objc_msgSend(v6, "unsignedIntValue")}];
            }

            v41 = [v14 countByEnumeratingWithState:&v63 objects:v77 count:16];
            if (!v41)
            {
LABEL_75:

              goto LABEL_78;
            }
          }
        }
      }
    }
  }

LABEL_77:

LABEL_78:
  v36 = 1;
LABEL_79:

  return v36;
}

- (BOOL)_readFrom:(id)from error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __29__INCodable__readFrom_error___block_invoke;
  v38[3] = &unk_1E7282A28;
  v38[4] = self;
  v25 = MEMORY[0x193AD7780](v38);
  while ([fromCopy hasMoreData])
  {
    v37 = 0;
    v36 = 0;
    [fromCopy readTag:&v37 type:&v36];
    if (([fromCopy hasError] & 1) != 0 || v36 == 4)
    {
      break;
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __29__INCodable__readFrom_error___block_invoke_2;
    v30[3] = &unk_1E7282A50;
    v31 = dictionary;
    errorCopy = error;
    v32 = fromCopy;
    v8 = v25;
    selfCopy = self;
    v34 = v8;
    v9 = MEMORY[0x193AD7780](v30);
    _objectDescription = [(INCodable *)self _objectDescription];
    attributes = [_objectDescription attributes];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v37];
    v13 = [attributes objectForKey:v12];

    if (v13 && !(v9)[2](v9, v13))
    {

      LOBYTE(v23) = 0;
      goto LABEL_19;
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  allKeys = [dictionary allKeys];
  v15 = [allKeys countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = [dictionary objectForKeyedSubscript:v19];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 copy];
          [(INCodable *)self setValue:v22 forPropertyNamed:v19];
        }
      }

      v16 = [allKeys countByEnumeratingWithState:&v26 objects:v39 count:16];
    }

    while (v16);
  }

  v23 = [fromCopy hasError] ^ 1;
LABEL_19:

  return v23;
}

void __29__INCodable__readFrom_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if ([v10 modifier])
  {
    [*(a1 + 32) _setObject:v9 forAttribute:v10];
  }

  else if (v9)
  {
    [v11 addObject:v9];
  }

  else if (a5)
  {
    v12 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A278];
    v13 = MEMORY[0x1E696AEC0];
    v14 = [v10 propertyName];
    v15 = [v13 stringWithFormat:@"Value for property '%@' can't be nil", v14];
    v18[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *a5 = [v12 errorWithDomain:@"IntentsErrorDomain" code:8001 userInfo:v16];
  }
}

uint64_t __29__INCodable__readFrom_error___block_invoke_2(uint64_t a1, void *a2)
{
  v68[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 propertyName];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (![v3 modifier] && !v6)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = *(a1 + 32);
    v8 = [v3 propertyName];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v3;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v16 = v10;

    v17 = [v16 valueTransformer];
    v12 = v16;
    if (v12 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, (isKindOfClass & 1) != 0))
    {
      v19 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      v22 = [v21 codableDescription];

      if (v22)
      {
        v23 = [[INCodable alloc] initWithCodableDescription:v22 data:0];
LABEL_36:
        v24 = v23;

        goto LABEL_37;
      }

      v50 = *(a1 + 64);
      v41 = (a1 + 64);
      if (v50)
      {
        v43 = MEMORY[0x1E696ABC0];
        v67 = *MEMORY[0x1E696A278];
        v51 = MEMORY[0x1E696AEC0];
        v45 = [v19 typeName];
        v46 = [v51 stringWithFormat:@"Unknown codable description for custom type: %@", v45];
        v68[0] = v46;
        v47 = MEMORY[0x1E695DF20];
        v48 = v68;
        v49 = &v67;
        goto LABEL_51;
      }
    }

    else
    {
      if (v17)
      {
        v24 = objc_alloc_init([objc_opt_class() reverseTransformedValueClass]);
LABEL_37:
        if (!PBReaderPlaceMark() || ![v24 readFrom:*(a1 + 40)])
        {
          goto LABEL_43;
        }

        if (v17)
        {
          v35 = [v17 reverseTransformedValue:v24];

          v24 = v35;
        }

        PBReaderRecallMark();
        (*(*(a1 + 56) + 16))();
        v36 = *(a1 + 64);
        if (v36)
        {
          if (*v36)
          {
LABEL_43:

LABEL_46:
LABEL_53:

            goto LABEL_54;
          }
        }

        goto LABEL_70;
      }

      v25 = [v12 typeName];
      v26 = objc_opt_class();
      v27 = NSClassFromString(v25);
      if (v27)
      {
        v28 = v27;
        if ([(objc_class *)v27 isSubclassOfClass:v26])
        {
          v29 = v28;
          v30 = v28;

          v22 = [v12 typeName];
          v31 = objc_opt_class();
          v32 = NSClassFromString(v22);
          if (v32)
          {
            v33 = v32;
            if ([(objc_class *)v32 isSubclassOfClass:v31])
            {
              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            v32 = v34;
          }

          v23 = objc_alloc_init(v32);
          goto LABEL_36;
        }
      }

      v42 = *(a1 + 64);
      v41 = (a1 + 64);
      if (v42)
      {
        v43 = MEMORY[0x1E696ABC0];
        v65 = *MEMORY[0x1E696A278];
        v44 = MEMORY[0x1E696AEC0];
        v45 = [v12 typeName];
        v46 = [v44 stringWithFormat:@"Unknown type %@", v45];
        v66 = v46;
        v47 = MEMORY[0x1E695DF20];
        v48 = &v66;
        v49 = &v65;
LABEL_51:
        v52 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:1];
        **v41 = [v43 errorWithDomain:@"IntentsErrorDomain" code:8001 userInfo:v52];
      }
    }

    goto LABEL_53;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *(a1 + 48);
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 40), "readInt32")}];
    [v11 _setObject:v12 forAttribute:v3];
    goto LABEL_70;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v3;
    v13 = [v12 type];
    if (v13 <= 3)
    {
      if (v13 <= 1)
      {
        if (v13)
        {
          if (v13 != 1)
          {
            goto LABEL_70;
          }

          v54 = MEMORY[0x1E696AD98];
          v55 = *(a1 + 48);
          [*(a1 + 40) readFloat];
          v56 = [v54 numberWithFloat:?];
        }

        else
        {
          v57 = MEMORY[0x1E696AD98];
          v55 = *(a1 + 48);
          [*(a1 + 40) readDouble];
          v56 = [v57 numberWithDouble:?];
        }

        goto LABEL_69;
      }

      v55 = *(a1 + 48);
      if (v13 == 2)
      {
        [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 40), "readInt32")}];
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "readInt64")}];
      }
    }

    else
    {
      if (v13 > 5)
      {
        if (v13 != 6)
        {
          if (v13 == 7)
          {
            v60 = *(a1 + 56);
            v15 = [*(a1 + 40) readString];
            v61 = [v15 _intents_decodeFromProto];
            (*(v60 + 16))(v60, v61, v12, v6, *(a1 + 64));
          }

          else
          {
            if (v13 != 8)
            {
              goto LABEL_70;
            }

            v14 = *(a1 + 56);
            v15 = [*(a1 + 40) readData];
            (*(v14 + 16))(v14, v15, v12, v6, *(a1 + 64));
          }

          v62 = *(a1 + 64);
          if (v62 && *v62)
          {
            goto LABEL_53;
          }

LABEL_70:

          v53 = [*(a1 + 40) hasError] ^ 1;
          goto LABEL_71;
        }

        v55 = *(a1 + 48);
        v56 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "readBOOL")}];
LABEL_69:
        v58 = v56;
        [v55 _setObject:v56 forAttribute:v12];

        goto LABEL_70;
      }

      v55 = *(a1 + 48);
      if (v13 == 4)
      {
        [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "readUint32")}];
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 40), "readUint64")}];
      }
    }
    v56 = ;
    goto LABEL_69;
  }

  if (*(a1 + 64))
  {
    v37 = MEMORY[0x1E696ABC0];
    v63 = *MEMORY[0x1E696A278];
    v38 = MEMORY[0x1E696AEC0];
    v39 = objc_opt_class();
    v12 = NSStringFromClass(v39);
    v24 = [v38 stringWithFormat:@"Unsupported attribute type: %@", v12];
    v64 = v24;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    **(a1 + 64) = [v37 errorWithDomain:@"IntentsErrorDomain" code:8001 userInfo:v40];

    goto LABEL_46;
  }

LABEL_54:
  v53 = 0;
LABEL_71:

  return v53;
}

- (BOOL)_isStringAttribute:(id)attribute equalTo:(id)to
{
  toCopy = to;
  attributeCopy = attribute;
  v8 = [(INCodable *)self _valueForAttribute:attributeCopy ofClass:objc_opt_class()];
  v9 = [toCopy _valueForAttribute:attributeCopy ofClass:objc_opt_class()];

  if (v8 | v9)
  {
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = [v8 isEqualToString:v9];
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_isAttribute:(id)attribute equalTo:(id)to
{
  toCopy = to;
  attributeCopy = attribute;
  v8 = [(INCodable *)self _valueForAttribute:attributeCopy];
  _geoMapItem4 = [toCopy _valueForAttribute:attributeCopy];

  if (v8 | _geoMapItem4)
  {
    if ((v8 != 0) != (_geoMapItem4 != 0))
    {
      v10 = 0;
    }

    else
    {
      v11 = v8;
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      _geoMapItem = [v13 _geoMapItem];

      if (_geoMapItem)
      {
        v15 = _geoMapItem4;
        if (_geoMapItem4)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        _geoMapItem2 = [v17 _geoMapItem];

        if (_geoMapItem2)
        {
          _geoMapItem3 = [v11 _geoMapItem];

          _geoMapItem4 = [v15 _geoMapItem];

          v11 = _geoMapItem3;
        }

        else
        {
          _geoMapItem4 = v15;
        }
      }

      v10 = [v11 isEqual:_geoMapItem4];
      v8 = v11;
    }
  }

  else
  {
    _geoMapItem4 = 0;
    v8 = 0;
    v10 = 1;
  }

  return v10;
}

- (INCodable)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy if_decodeBytesNoCopyForKey:@"codableDescriptionBytes"];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codableDescriptionData"];
    if (!v15)
    {
      v17 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_objectDescription"];
      selfCopy2 = self;
      goto LABEL_7;
    }
  }

  selfCopy2 = self;
  v30 = 0;
  v17 = [MEMORY[0x1E696ACD0] _in_safeUnarchivedObjectOfClasses:v13 fromData:v15 error:&v30];
  v18 = v30;
  if (v18)
  {
    v19 = v18;
    [coderCopy failWithError:v18];
    v20 = 0;
    goto LABEL_13;
  }

LABEL_7:
  v19 = [coderCopy if_decodeBytesNoCopyForKey:@"bytes"];
  if (!v19)
  {
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  }

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = [v21 setWithObjects:{v22, v23, objc_opt_class(), 0}];
  v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"_nonNilRepeatedAttributes"];

  v29 = 0;
  selfCopy2 = [(INCodable *)selfCopy2 _initWithCodableDescription:v17 data:v19 error:&v29];
  v26 = v29;
  [(INCodable *)selfCopy2 _setEmptyArrayForNonNilRepeatedAttributes:v25];
  if (v26)
  {
    [coderCopy failWithError:v26];
    v20 = 0;
  }

  else
  {
    v20 = selfCopy2;
  }

LABEL_13:
  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v12 = 0;
  v5 = [(INCodable *)self _dataWithError:&v12];
  v6 = v12;
  if (v6)
  {
    [coderCopy failWithError:v6];
  }

  else
  {
    _nonNilRepeatedAttributes = [(INCodable *)self _nonNilRepeatedAttributes];
    [coderCopy encodeObject:_nonNilRepeatedAttributes forKey:@"_nonNilRepeatedAttributes"];

    [coderCopy if_encodeBytesNoCopy:v5 forKey:@"bytes"];
    objectDescription = self->_objectDescription;
    v11 = 0;
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:objectDescription requiringSecureCoding:1 error:&v11];
    v10 = v11;
    if (v10)
    {
      [coderCopy failWithError:v10];
    }

    else
    {
      [coderCopy if_encodeBytesNoCopy:v9 forKey:@"codableDescriptionBytes"];
    }
  }
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0;
  v8 = [(INCodable *)self _dataWithError:&v18];
  v9 = v18;
  if (v9)
  {
    v10 = v9;
    if (error)
    {
LABEL_3:
      v11 = v10;
      v12 = 0;
      *error = v10;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  [dictionary intents_setPlistSafeObject:v8 forKey:@"bytes"];
  [dictionary intents_setIntegerIfNonZero:-[INCodableDescription codableDescriptionType](self->_objectDescription forKey:{"codableDescriptionType"), @"descType"}];
  _nonNilRepeatedAttributes = [(INCodable *)self _nonNilRepeatedAttributes];
  allObjects = [_nonNilRepeatedAttributes allObjects];
  [dictionary intents_setPlistSafeObject:allObjects forKey:@"_nonNilRepeatedAttributes"];

  objectDescription = self->_objectDescription;
  v17 = 0;
  [dictionary intents_setWidgetPlistRepresentable:objectDescription forKey:@"codableDescriptionBytes" parameters:parametersCopy error:&v17];
  v10 = v17;
  if (v10)
  {
    if (error)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = [dictionary copy];
LABEL_8:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [(INCodable *)self _copyWithZone:zone error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[INCodable copyWithZone:]";
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&dword_18E991000, v5, OS_LOG_TYPE_ERROR, "%s Failed to copy due to error %@", buf, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)_dictionaryRepresentationWithNullValues:(BOOL)values
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  _objectDescription = [(INCodable *)self _objectDescription];
  attributes = [_objectDescription attributes];
  allValues = [attributes allValues];

  v35 = [allValues countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v35)
  {
    v34 = *v41;
    v32 = v5;
    valuesCopy = values;
    v29 = allValues;
    selfCopy = self;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        propertyName = [v10 propertyName];
        v12 = [propertyName hasPrefix:@"_"];

        if ((v12 & 1) == 0)
        {
          propertyName2 = [v10 propertyName];
          v14 = [(INCodable *)self valueForPropertyNamed:propertyName2];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            dictionaryRepresentation = [v14 dictionaryRepresentation];
            goto LABEL_21;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v14;
            v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v18 = v16;
            v19 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v37;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v37 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v36 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    dictionaryRepresentation2 = [v23 dictionaryRepresentation];
                    [v17 addObject:dictionaryRepresentation2];
                  }

                  else
                  {
                    [v17 addObject:v23];
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v20);
            }

            dictionaryRepresentation = [v17 copy];
            v5 = v32;
            values = valuesCopy;
            allValues = v29;
            self = selfCopy;
LABEL_21:

            v14 = dictionaryRepresentation;
          }

          if (values || v14)
          {
            null = v14;
            if (!v14)
            {
              null = [MEMORY[0x1E695DFB0] null];
              v33 = null;
            }

            propertyName3 = [v10 propertyName];
            [v5 setObject:null forKey:propertyName3];

            if (!v14)
            {
            }
          }

          continue;
        }
      }

      v35 = [allValues countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v35);
  }

  v27 = [v5 copy];

  return v27;
}

- (unint64_t)hash
{
  v45 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  _objectDescription = [(INCodable *)self _objectDescription];
  attributes = [_objectDescription attributes];
  allValues = [attributes allValues];

  v6 = [allValues countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v41;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v39 = vnegq_f64(v10);
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [(INCodable *)self _valueForAttribute:v12];
          if (v13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          v17 = v14;

          _geoMapItem = [v17 _geoMapItem];

          if (_geoMapItem)
          {
            _geoMapItem2 = [v13 _geoMapItem];

            v13 = _geoMapItem2;
          }

          v8 ^= [v13 hash];
          goto LABEL_47;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 ^= 2654435761 * [(INCodable *)self _int32ValueForAttribute:v12];
          continue;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v31 = MEMORY[0x1E695DF30];
          v32 = *MEMORY[0x1E695D930];
          v33 = MEMORY[0x1E696AEC0];
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = [v33 stringWithFormat:@"Unsupported attribute type: %@", v35];
          v37 = [v31 exceptionWithName:v32 reason:v36 userInfo:0];
          v38 = v37;

          objc_exception_throw(v37);
        }

        v13 = v12;
        type = [v13 type];
        if (type > 4)
        {
          if ((type - 7) < 2)
          {
            v25 = [(INCodable *)self _valueForAttribute:v13];
            v8 ^= [v25 hash];
          }

          else
          {
            if (type == 5)
            {
              v26 = [(INCodable *)self _UInt64ValueForAttribute:v13];
              goto LABEL_45;
            }

            if (type == 6)
            {
              v20 = [(INCodable *)self _BOOLValueForAttribute:v13];
              v16 = 2654435761;
              if (!v20)
              {
                v16 = 0;
              }

              goto LABEL_46;
            }
          }
        }

        else
        {
          if (type > 1)
          {
            if (type == 2)
            {
              v16 = 2654435761 * [(INCodable *)self _int32ValueForAttribute:v13];
              goto LABEL_46;
            }

            if (type != 3)
            {
              v16 = 2654435761 * [(INCodable *)self _UInt32ValueForAttribute:v13];
              goto LABEL_46;
            }

            v26 = [(INCodable *)self _int64ValueForAttribute:v13];
LABEL_45:
            v16 = 2654435761 * v26;
            goto LABEL_46;
          }

          if (!type)
          {
            [(INCodable *)self _doubleValueForAttribute:v13];
            if (v24 < 0.0)
            {
              v24 = -v24;
            }

LABEL_39:
            *v22.i64 = floor(v24 + 0.5);
            v27 = (v24 - *v22.i64) * 1.84467441e19;
            *v23.i64 = *v22.i64 - trunc(*v22.i64 * 5.42101086e-20) * 1.84467441e19;
            v22.i64[0] = vbslq_s8(v39, v23, v22).i64[0];
            v28 = 2654435761u * *v22.i64;
            v29 = v28 + v27;
            if (v27 <= 0.0)
            {
              v29 = 2654435761u * *v22.i64;
            }

            v16 = v28 - fabs(v27);
            if (v27 >= 0.0)
            {
              v16 = v29;
            }

LABEL_46:
            v8 ^= v16;
            goto LABEL_47;
          }

          if (type == 1)
          {
            [(INCodable *)self _floatValueForAttribute:v13];
            if (v21 >= 0.0)
            {
              v24 = v21;
            }

            else
            {
              v24 = -v21;
            }

            goto LABEL_39;
          }
        }

LABEL_47:
      }

      v7 = [allValues countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (!v7)
      {
        goto LABEL_52;
      }
    }
  }

  v8 = 0;
LABEL_52:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  v41 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    _objectDescription = [(INCodable *)self _objectDescription];
    attributes = [_objectDescription attributes];
    allValues = [attributes allValues];

    v8 = [allValues countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v36 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![(INCodable *)self _isAttribute:v12 equalTo:equalCopy])
          {
            goto LABEL_53;
          }

          goto LABEL_48;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [(INCodable *)self _int32ValueForAttribute:v12];
          if (v13 != [equalCopy _int32ValueForAttribute:v12])
          {
            goto LABEL_53;
          }

          goto LABEL_48;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v28 = MEMORY[0x1E695DF30];
          v29 = *MEMORY[0x1E695D930];
          v30 = MEMORY[0x1E696AEC0];
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = [v30 stringWithFormat:@"Unsupported attribute type: %@", v32];
          v34 = [v28 exceptionWithName:v29 reason:v33 userInfo:0];
          v35 = v34;

          objc_exception_throw(v34);
        }

        v14 = v12;
        type = [v14 type];
        if (type <= 3)
        {
          if (type > 1)
          {
            if (type == 2)
            {
              v21 = [(INCodable *)self _int32ValueForAttribute:v14];
              v22 = [equalCopy _int32ValueForAttribute:v14];
              goto LABEL_40;
            }

            v19 = [(INCodable *)self _int64ValueForAttribute:v14];
            v20 = [equalCopy _int64ValueForAttribute:v14];
            goto LABEL_31;
          }

          if (!type)
          {
            [(INCodable *)self _doubleValueForAttribute:v14];
            v24 = v23;
            [equalCopy _doubleValueForAttribute:v14];
            if (v24 != v25)
            {
              goto LABEL_52;
            }

            goto LABEL_47;
          }

          if (type != 1)
          {
            goto LABEL_36;
          }

          [(INCodable *)self _floatValueForAttribute:v14];
          v17 = v16;
          [equalCopy _floatValueForAttribute:v14];
          if (v17 != v18)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (type <= 5)
          {
            if (type == 4)
            {
              v21 = [(INCodable *)self _UInt32ValueForAttribute:v14];
              v22 = [equalCopy _UInt32ValueForAttribute:v14];
              goto LABEL_40;
            }

            v19 = [(INCodable *)self _UInt64ValueForAttribute:v14];
            v20 = [equalCopy _UInt64ValueForAttribute:v14];
LABEL_31:
            if (v19 != v20)
            {
              goto LABEL_52;
            }

            goto LABEL_47;
          }

          switch(type)
          {
            case 6:
              v21 = [(INCodable *)self _BOOLValueForAttribute:v14];
              v22 = [equalCopy _BOOLValueForAttribute:v14];
LABEL_40:
              if (v21 != v22)
              {
                goto LABEL_52;
              }

              break;
            case 7:
              type = [v14 modifier];
              if ((type - 1) < 2)
              {
                if (![(INCodable *)self _isStringAttribute:v14 equalTo:equalCopy])
                {
                  goto LABEL_52;
                }

                break;
              }

LABEL_35:
              if (!type)
              {
                if (![(INCodable *)self _isAttribute:v14 equalTo:equalCopy])
                {
LABEL_52:

LABEL_53:
                  v26 = 0;
                  goto LABEL_54;
                }

                break;
              }

LABEL_36:
              if (type == -1)
              {
                goto LABEL_52;
              }

              break;
            case 8:
              type = [v14 modifier];
              if ((type - 1) >= 2)
              {
                goto LABEL_35;
              }

              if (![(INCodable *)self _isAttribute:v14 equalTo:equalCopy])
              {
                goto LABEL_52;
              }

              break;
          }
        }

LABEL_47:

LABEL_48:
        if (v9 == ++v11)
        {
          v9 = [allValues countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v26 = 1;
LABEL_54:
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  [(INCodable *)self _writeTo:to error:&v10];
  v3 = v10;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 debugDescription];
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
    {
      v7 = v6;
      v8 = [(__CFString *)v5 length];
      v9 = @"INCodable data writing failed";
      if (v8)
      {
        v9 = v5;
      }

      *buf = 136315394;
      v12 = "[INCodable writeTo:]";
      v13 = 2114;
      v14 = v9;
      _os_log_fault_impl(&dword_18E991000, v7, OS_LOG_TYPE_FAULT, "%s INCodable writeTo failed: %{public}@", buf, 0x16u);
    }
  }
}

- (BOOL)readFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v3 = [(INCodable *)self _readFrom:from error:&v12];
  v4 = v12;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 debugDescription];
    v7 = [(__CFString *)v6 length];
    v8 = @"INCodable data reading failed";
    if (v7)
    {
      v8 = v6;
    }

    v9 = v8;
    v10 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[INCodable readFrom:]";
      v15 = 2112;
      v16 = v9;
      _os_log_error_impl(&dword_18E991000, v10, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    v3 = 0;
  }

  return v3;
}

- (void)_setData:(id)data error:(id *)error
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    [(INCodable *)self _readFrom:v6 error:error];
  }

  else
  {
    [(NSMutableDictionary *)self->_customValueForKeyDictionary removeAllObjects];
  }
}

- (BOOL)isValidKey:(id)key
{
  keyCopy = key;
  _objectDescription = [(INCodable *)self _objectDescription];
  if_stringByLowercasingFirstCharacter = [keyCopy if_stringByLowercasingFirstCharacter];

  v7 = [_objectDescription attributeByName:if_stringByLowercasingFirstCharacter];
  LOBYTE(keyCopy) = v7 != 0;

  return keyCopy;
}

- (void)setNilValueForAllKeys
{
  v23 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  _objectDescription = [(INCodable *)self _objectDescription];
  attributes = [_objectDescription attributes];
  allValues = [attributes allValues];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __34__INCodable_setNilValueForAllKeys__block_invoke;
  v20[3] = &unk_1E72829E0;
  v7 = array;
  v21 = v7;
  [allValues enumerateObjectsUsingBlock:v20];
  [(NSMutableDictionary *)self->_customValueForKeyDictionary removeObjectsForKeys:v7];
  v8 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_70475];
  v9 = [allValues filteredArrayUsingPredicate:v8];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        propertyName = [*(*(&v16 + 1) + 8 * v14) propertyName];
        [(INCodable *)self setValue:0 forPropertyNamed:propertyName];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v12);
  }
}

void __34__INCodable_setNilValueForAllKeys__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v7 propertyName];
    v4 = [v3 hasPrefix:@"_"];

    if ((v4 & 1) == 0)
    {
      v5 = *(a1 + 32);
      v6 = [v7 propertyName];
      [v5 addObject:v6];
    }
  }
}

uint64_t __34__INCodable_setNilValueForAllKeys__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 propertyName];
  v3 = [v2 hasPrefix:@"_"];

  return v3 ^ 1u;
}

- (id)_initWithCodableDescription:(id)description data:(id)data error:(id *)error
{
  descriptionCopy = description;
  dataCopy = data;
  v19.receiver = self;
  v19.super_class = INCodable;
  v11 = [(INCodable *)&v19 init];
  if (v11)
  {
    v12 = objc_opt_new();
    customValueForKeyDictionary = v11->_customValueForKeyDictionary;
    v11->_customValueForKeyDictionary = v12;

    objc_storeStrong(&v11->_objectDescription, description);
    v18 = 0;
    [(INCodable *)v11 _setData:dataCopy error:&v18];
    v14 = v18;
    v15 = v14;
    if (v14)
    {
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      v11 = 0;
    }
  }

  return v11;
}

- (INCodable)initWithCodableDescription:(id)description data:(id)data
{
  v24 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  dataCopy = data;
  v15 = 0;
  v8 = [(INCodable *)self _initWithCodableDescription:descriptionCopy data:dataCopy error:&v15];
  v9 = v15;
  v10 = v8;
  v11 = v10;
  if (v9)
  {
    v12 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "[INCodable initWithCodableDescription:data:]";
      v18 = 2112;
      v19 = descriptionCopy;
      v20 = 2112;
      v21 = dataCopy;
      v22 = 2112;
      v23 = v9;
      _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s Failed to init INCodable with description %@ and data %@ due to error: %@", buf, 0x2Au);
    }

    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  return v13;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  if (representationCopy)
  {
    v6 = [representationCopy intents_safeObjectForKey:@"bytes" ofType:objc_opt_class()];
    v7 = [representationCopy intents_safeObjectForKey:@"_nonNilRepeatedAttributes" ofType:objc_opt_class()];
    v8 = [representationCopy intents_intForKey:@"descType"];
    v9 = INCodableDescriptionClassFromType(v8);
    {
      v25 = 0;
      v10 = [v9 intents_widgetPlistRepresentableInDict:representationCopy key:@"codableDescriptionBytes" error:&v25];
      v11 = v25;
      if (v11)
      {
        v12 = v11;
        if (error)
        {
          v13 = v11;
          v14 = 0;
          *error = v12;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v24 = 0;
        v19 = [[INCodable alloc] _initWithCodableDescription:v10 data:v6 error:&v24];
        v20 = v24;
        v12 = v20;
        if (v20)
        {
          if (error)
          {
            v21 = v20;
            v14 = 0;
            *error = v12;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v22 = [MEMORY[0x1E695DFD8] setWithArray:v7];
          [v19 _setEmptyArrayForNonNilRepeatedAttributes:v22];

          v14 = v19;
        }
      }
    }

    else if (error)
    {
      v18 = v12;
      v14 = 0;
      *error = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end