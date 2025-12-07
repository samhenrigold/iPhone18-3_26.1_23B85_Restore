@interface STRPPropertyListTypeDecoder
+ (id)_supportedCoreTypesForEncoding;
- (BOOL)containsValueForKey:(id)key;
- (BOOL)decodeBoolForKey:(id)key;
- (STRPPropertyListTypeDecoder)initWithDictionary:(id)dictionary;
- (const)decodeBytesForKey:(id)key returnedLength:(unint64_t *)length;
- (double)decodeDoubleForKey:(id)key;
- (float)decodeFloatForKey:(id)key;
- (id)_decodeObjectOfClasses:(id)classes fromObject:(id)object;
- (id)_errorWithCode:(int64_t)code message:(id)message;
- (id)_failWithCode:(int64_t)code message:(id)message;
- (id)_numberForKey:(id)key;
- (id)decodeArrayOfObjectsOfClass:(Class)class forKey:(id)key;
- (id)decodeArrayOfObjectsOfClasses:(id)classes forKey:(id)key;
- (id)decodeDictionaryWithKeysOfClass:(Class)class objectsOfClass:(Class)ofClass forKey:(id)key;
- (id)decodeDictionaryWithKeysOfClasses:(id)classes objectsOfClasses:(id)ofClasses forKey:(id)key;
- (id)decodeObjectForKey:(id)key;
- (id)decodeObjectOfClass:(Class)class forKey:(id)key;
- (id)decodeObjectOfClasses:(id)classes forKey:(id)key;
- (id)decodeRootObjectOfClass:(Class)class fromEncoded:(id)encoded error:(id *)error;
- (id)decodeTopLevelObjectForKey:(id)key error:(id *)error;
- (int)decodeInt32ForKey:(id)key;
- (int)decodeIntForKey:(id)key;
- (int64_t)decodeInt64ForKey:(id)key;
- (int64_t)decodeIntegerForKey:(id)key;
@end

@implementation STRPPropertyListTypeDecoder

+ (id)_supportedCoreTypesForEncoding
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
}

- (STRPPropertyListTypeDecoder)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = STRPPropertyListTypeDecoder;
  v5 = [(STRPPropertyListTypeDecoder *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    storage = v5->_storage;
    v5->_storage = v6;
  }

  return v5;
}

- (id)decodeRootObjectOfClass:(Class)class fromEncoded:(id)encoded error:(id *)error
{
  encodedCopy = encoded;
  if (objc_opt_class() == class)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_18;
    }
  }

  if (objc_opt_class() == class)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:encodedCopy];
LABEL_19:
      v11 = v10;
      goto LABEL_20;
    }
  }

  if (objc_opt_class() == class)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_18;
    }
  }

  if (objc_opt_class() == class)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_18;
    }
  }

  if (objc_opt_class() == class)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_18;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_opt_class() == class)
  {
    v15 = MEMORY[0x1E695DF00];
    [encodedCopy doubleValue];
    v10 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
    goto LABEL_19;
  }

  if (objc_opt_class() == class && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_opt_class() == class && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_18:
    v10 = encodedCopy;
    goto LABEL_19;
  }

  if (objc_opt_class() == class || objc_opt_class() == class)
  {
    if (!error)
    {
      goto LABEL_37;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Top level array representations are unsupported, a boxing type must be provided."];
    v14 = [(STRPPropertyListTypeDecoder *)self _errorWithCode:1 message:v13];
LABEL_36:
    *error = v14;

    goto LABEL_37;
  }

  if (objc_opt_class() == class || objc_opt_class() == class)
  {
    if (!error)
    {
      goto LABEL_37;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Top level dictionary representations are unsupported, a boxing type must be provided."];
    v14 = [(STRPPropertyListTypeDecoder *)self _errorWithCode:1 message:v13];
    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_storage, encoded);
    v10 = [[class alloc] initWithCoder:self];
    goto LABEL_19;
  }

  if (error)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Type must be a dictionary representation of a non-primitive type."];
    v14 = [(STRPPropertyListTypeDecoder *)self _errorWithCode:1 message:v13];
    goto LABEL_36;
  }

LABEL_37:
  v11 = 0;
LABEL_20:

  return v11;
}

- (BOOL)containsValueForKey:(id)key
{
  v3 = [(NSDictionary *)self->_storage objectForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (id)_decodeObjectOfClasses:(id)classes fromObject:(id)object
{
  v84 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  objectCopy = object;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2050000000;
  v82 = 0;
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __65__STRPPropertyListTypeDecoder__decodeObjectOfClasses_fromObject___block_invoke;
  v76[3] = &unk_1E86A2980;
  v7 = objectCopy;
  v77 = v7;
  v78 = &v79;
  [classesCopy enumerateObjectsUsingBlock:v76];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [classesCopy containsObject:objc_opt_class()] && objc_msgSend(classesCopy, "count") == 1)
  {
    v8 = MEMORY[0x1E695DF00];
    [v7 doubleValue];
    v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
LABEL_22:
    v27 = v9;
    goto LABEL_36;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [classesCopy containsObject:objc_opt_class()] && objc_msgSend(classesCopy, "count") == 1)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
    goto LABEL_22;
  }

  v10 = v80[3];
  if (!v10)
  {
    v28 = [classesCopy mutableCopy];
    _supportedCoreTypesForEncoding = [objc_opt_class() _supportedCoreTypesForEncoding];
    [v28 minusSet:_supportedCoreTypesForEncoding];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v28 count])
    {
      v30 = [objc_alloc(objc_opt_class()) initWithDictionary:v7];
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v31 = v28;
      v32 = [v31 countByEnumeratingWithState:&v72 objects:v83 count:16];
      if (v32)
      {
        v33 = *v73;
LABEL_27:
        v34 = 0;
        while (1)
        {
          if (*v73 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v27 = [objc_alloc(*(*(&v72 + 1) + 8 * v34)) initWithCoder:v30];
          if (v27)
          {
            goto LABEL_35;
          }

          if (v32 == ++v34)
          {
            v32 = [v31 countByEnumeratingWithState:&v72 objects:v83 count:16];
            if (v32)
            {
              goto LABEL_27;
            }

            break;
          }
        }
      }
    }

    v35 = MEMORY[0x1E696AEC0];
    v36 = objc_opt_class();
    v30 = NSStringFromClass(v36);
    v31 = [v35 stringWithFormat:@"No matching class found from candidates: %@, but found: %@", classesCopy, v30];
    v37 = [(STRPPropertyListTypeDecoder *)self _failWithCode:1 message:v31];
    v27 = 0;
LABEL_35:

    goto LABEL_36;
  }

  if (v10 == objc_opt_class() || (v11 = v80[3], v11 == objc_opt_class()) || (v12 = v80[3], v12 == objc_opt_class()) || (v13 = v80[3], v13 == objc_opt_class()))
  {
    v9 = v7;
    goto LABEL_22;
  }

  v14 = v80[3];
  if (v14 == objc_opt_class() || (v15 = v80[3], v15 == objc_opt_class()))
  {
    v39 = v7;
    v40 = [v39 count];
    v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v40];
    v42 = [classesCopy mutableCopy];
    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
    [v42 minusSet:v45];

    if ([v42 count] == 1)
    {
      anyObject = [v42 anyObject];
      _supportedCoreTypesForEncoding2 = [objc_opt_class() _supportedCoreTypesForEncoding];
      v48 = [_supportedCoreTypesForEncoding2 containsObject:anyObject];

      v68 = 0;
      v69 = &v68;
      v70 = 0x2020000000;
      v71 = 0;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __65__STRPPropertyListTypeDecoder__decodeObjectOfClasses_fromObject___block_invoke_2;
      v62[3] = &unk_1E86A29A8;
      v67 = v48 ^ 1;
      v62[4] = self;
      v63 = v42;
      v65 = &v68;
      v66 = anyObject;
      v49 = v41;
      v64 = v49;
      [v39 enumerateObjectsUsingBlock:v62];
      if (v69[3])
      {
        v27 = 0;
      }

      else
      {
        v27 = [v49 copy];
      }

      _Block_object_dispose(&v68, 8);
    }

    else
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ambiguous types for NSArray: %@ we only support single value types in the array, but found more than 1 type.", v42];;
      v27 = [(STRPPropertyListTypeDecoder *)self _failWithCode:0 message:v50];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = v7;
      v16 = [v56 count];
      v55 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v16];
      v17 = [classesCopy mutableCopy];
      v18 = MEMORY[0x1E695DFD8];
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      v22 = [v18 setWithObjects:{v19, v20, v21, objc_opt_class(), 0}];
      [v17 minusSet:v22];

      v23 = MEMORY[0x1E695DFD8];
      v24 = objc_opt_class();
      v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
      if ([v17 count] && objc_msgSend(v17, "count") < 3)
      {
        v51 = [v17 intersectsSet:v25];
        if (v51)
        {
          v68 = 0;
          v69 = &v68;
          v70 = 0x2020000000;
          v71 = 0;
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = __65__STRPPropertyListTypeDecoder__decodeObjectOfClasses_fromObject___block_invoke_38;
          v58[3] = &unk_1E86A29D0;
          v61 = &v68;
          v58[4] = self;
          v59 = v17;
          v52 = v55;
          v60 = v52;
          [v56 enumerateKeysAndObjectsUsingBlock:v58];
          if (v69[3])
          {
            v27 = 0;
          }

          else
          {
            v27 = [v52 copy];
          }

          _Block_object_dispose(&v68, 8);
        }

        else
        {
          v53 = STRPLogCoding(v51);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
          {
            [STRPPropertyListTypeDecoder _decodeObjectOfClasses:v17 fromObject:v53];
          }

          v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ambiguous key types for NSDictionary: %@ we only support NSString and NSNumber keys.", v17];;
          v27 = [(STRPPropertyListTypeDecoder *)self _failWithCode:0 message:v54];
        }
      }

      else
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ambiguous value types for NSDictionary: %@ we only support NSString and NSNumber keys and single object or array of object value types.", v17];;
        v27 = [(STRPPropertyListTypeDecoder *)self _failWithCode:0 message:v26];
      }
    }

    else
    {
      v27 = 0;
    }
  }

LABEL_36:

  _Block_object_dispose(&v79, 8);

  return v27;
}

uint64_t __65__STRPPropertyListTypeDecoder__decodeObjectOfClasses_fromObject___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

void __65__STRPPropertyListTypeDecoder__decodeObjectOfClasses_fromObject___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  if (*(a1 + 72) == 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v10 = *(a1 + 32);
      v11 = MEMORY[0x1E696AEC0];
      v12 = NSStringFromClass(*(a1 + 64));
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v11 stringWithFormat:@"Type mismatch - expected NSDictionary representation of %@, but found: %@ instead.", v12, v14];
      v16 = [v10 _failWithCode:1 message:v15];

      *a4 = 1;
      goto LABEL_8;
    }

    v6 = [objc_alloc(objc_opt_class()) initWithDictionary:v17];
    v7 = [*(a1 + 40) anyObject];
    v8 = [objc_msgSend(v7 "alloc")];
  }

  else
  {
    v9 = *(a1 + 32);
    v6 = [objc_opt_class() _supportedCoreTypesForEncoding];
    v8 = [v9 _decodeObjectOfClasses:v6 fromObject:v17];
  }

  if (v8)
  {
    [*(a1 + 48) addObject:v8];
  }

LABEL_8:
}

void __65__STRPPropertyListTypeDecoder__decodeObjectOfClasses_fromObject___block_invoke_38(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v34 = a2;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v18 = *(a1 + 32);
      v19 = MEMORY[0x1E696AEC0];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [v19 stringWithFormat:@"Type mismatch - expected NSDictionary with String or Number keys found keys with representation %@ instead.", v21];;
      v23 = [v18 _failWithCode:1 message:v22];

      *a4 = 1;
      goto LABEL_19;
    }
  }

  v8 = objc_opt_class();
  if ([*(a1 + 40) count] >= 2)
  {
    [*(a1 + 40) removeObject:v8];
  }

  if (![*(a1 + 40) count])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v15 = *(a1 + 32);
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Type mismatch - expected NSDictionary with homogenous key types."];
    v17 = [v15 _failWithCode:1 message:v16];

    *a4 = 1;
    goto LABEL_19;
  }

  v9 = [*(a1 + 40) anyObject];
  v10 = [objc_opt_class() _supportedCoreTypesForEncoding];
  v11 = [v10 containsObject:v9];

  if ((v11 & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [objc_alloc(objc_opt_class()) initWithDictionary:v7];
      v25 = [*(a1 + 40) anyObject];
      v26 = [objc_msgSend(v25 "alloc")];

      goto LABEL_17;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v27 = *(a1 + 32);
      v28 = MEMORY[0x1E696AEC0];
      v29 = NSStringFromClass(v9);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = [v28 stringWithFormat:@"Type mismatch - expected NSDictionary representation of %@, but found: %@ instead.", v29, v31];
      v33 = [v27 _failWithCode:1 message:v32];

      *a4 = 1;
      goto LABEL_19;
    }

    v13 = *(a1 + 32);
    goto LABEL_15;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = *(a1 + 32);
  if (isKindOfClass)
  {
LABEL_15:
    v14 = [*(a1 + 40) setByAddingObject:objc_opt_class()];
    goto LABEL_16;
  }

  v14 = [objc_opt_class() _supportedCoreTypesForEncoding];
LABEL_16:
  v24 = v14;
  v26 = [v13 _decodeObjectOfClasses:v14 fromObject:v7];
LABEL_17:

  if (v26)
  {
    [*(a1 + 48) setObject:v26 forKeyedSubscript:v34];
  }

LABEL_19:
}

- (id)decodeObjectOfClass:(Class)class forKey:(id)key
{
  v6 = MEMORY[0x1E695DFD8];
  keyCopy = key;
  v8 = [v6 setWithObject:class];
  v9 = [(STRPPropertyListTypeDecoder *)self decodeObjectOfClasses:v8 forKey:keyCopy];

  return v9;
}

- (id)decodeObjectOfClasses:(id)classes forKey:(id)key
{
  classesCopy = classes;
  v7 = [(NSDictionary *)self->_storage objectForKey:key];
  if (v7)
  {
    v8 = [(STRPPropertyListTypeDecoder *)self _decodeObjectOfClasses:classesCopy fromObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)decodeObjectForKey:(id)key
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not supported. Must be secure coding compliant. key='%@'", key];
  v5 = [(STRPPropertyListTypeDecoder *)self _failWithCode:3 message:v4];

  return 0;
}

- (id)decodeTopLevelObjectForKey:(id)key error:(id *)error
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not supported. key='%@'", error, key];
  v6 = [(STRPPropertyListTypeDecoder *)self _failWithCode:3 message:v5];

  return 0;
}

- (BOOL)decodeBoolForKey:(id)key
{
  v3 = [(STRPPropertyListTypeDecoder *)self _numberForKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (int)decodeIntForKey:(id)key
{
  v3 = [(STRPPropertyListTypeDecoder *)self _numberForKey:key];
  intValue = [v3 intValue];

  return intValue;
}

- (int)decodeInt32ForKey:(id)key
{
  v3 = [(STRPPropertyListTypeDecoder *)self _numberForKey:key];
  intValue = [v3 intValue];

  return intValue;
}

- (int64_t)decodeInt64ForKey:(id)key
{
  v3 = [(STRPPropertyListTypeDecoder *)self _numberForKey:key];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (float)decodeFloatForKey:(id)key
{
  v3 = [(STRPPropertyListTypeDecoder *)self _numberForKey:key];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)decodeDoubleForKey:(id)key
{
  v3 = [(STRPPropertyListTypeDecoder *)self _numberForKey:key];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (const)decodeBytesForKey:(id)key returnedLength:(unint64_t *)length
{
  keyCopy = key;
  v7 = [(NSDictionary *)self->_storage objectForKey:keyCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if (length)
    {
      *length = [v7 length];
    }

    bytes = [v7 bytes];
  }

  else
  {
    v10 = STRPLogCoding(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(STRPPropertyListTypeDecoder *)v7 decodeBytesForKey:keyCopy returnedLength:v10];
    }

    bytes = 0;
  }

  return bytes;
}

- (int64_t)decodeIntegerForKey:(id)key
{
  v3 = [(STRPPropertyListTypeDecoder *)self _numberForKey:key];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)decodeArrayOfObjectsOfClass:(Class)class forKey:(id)key
{
  v6 = MEMORY[0x1E695DFD8];
  keyCopy = key;
  v8 = [v6 setWithObject:class];
  v9 = [(STRPPropertyListTypeDecoder *)self decodeArrayOfObjectsOfClasses:v8 forKey:keyCopy];

  return v9;
}

- (id)decodeArrayOfObjectsOfClasses:(id)classes forKey:(id)key
{
  keyCopy = key;
  classesCopy = classes;
  v8 = [classesCopy setByAddingObject:objc_opt_class()];

  v9 = [(STRPPropertyListTypeDecoder *)self decodeObjectOfClasses:v8 forKey:keyCopy];

  return v9;
}

- (id)decodeDictionaryWithKeysOfClass:(Class)class objectsOfClass:(Class)ofClass forKey:(id)key
{
  v8 = MEMORY[0x1E695DFD8];
  keyCopy = key;
  v10 = [v8 setWithObject:class];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:ofClass];
  v12 = [(STRPPropertyListTypeDecoder *)self decodeDictionaryWithKeysOfClasses:v10 objectsOfClasses:v11 forKey:keyCopy];

  return v12;
}

- (id)decodeDictionaryWithKeysOfClasses:(id)classes objectsOfClasses:(id)ofClasses forKey:(id)key
{
  keyCopy = key;
  classesCopy = classes;
  v10 = [ofClasses mutableCopy];
  [v10 unionSet:classesCopy];

  [v10 addObject:objc_opt_class()];
  v11 = [(STRPPropertyListTypeDecoder *)self decodeObjectOfClasses:v10 forKey:keyCopy];

  return v11;
}

- (id)_numberForKey:(id)key
{
  storage = self->_storage;
  keyCopy = key;
  v5 = [(NSDictionary *)storage bs_safeObjectForKey:keyCopy ofType:objc_opt_class()];

  return v5;
}

- (id)_errorWithCode:(int64_t)code message:(id)message
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E695E650];
  v12[0] = message;
  v6 = MEMORY[0x1E695DF20];
  messageCopy = message;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"STRPCodingErrorDomain" code:code userInfo:v8];

  return v9;
}

- (id)_failWithCode:(int64_t)code message:(id)message
{
  v5 = [(STRPPropertyListTypeDecoder *)self _errorWithCode:code message:message];
  [(STRPPropertyListTypeDecoder *)self failWithError:v5];

  return 0;
}

- (void)_decodeObjectOfClasses:(uint64_t)a1 fromObject:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
}

- (void)decodeBytesForKey:(NSObject *)a3 returnedLength:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_fault_impl(&dword_1DEE0F000, a3, OS_LOG_TYPE_FAULT, "-decodeBytesForKey:returnedLength: called with class %@ for key '%@'.", &v7, 0x16u);
}

@end