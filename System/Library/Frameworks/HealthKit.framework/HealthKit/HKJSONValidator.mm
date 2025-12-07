@interface HKJSONValidator
+ (BOOL)validateJSONObject:(id)object withSchemaNamed:(id)named bundle:(id)bundle error:(id *)error;
+ (NSArray)searchPaths;
+ (void)registerSearchPath:(id)path;
- (BOOL)_validateArray:(id)array schema:(id)schema keyStack:(id)stack;
- (BOOL)_validateBoolean:(id)boolean;
- (BOOL)_validateDictionary:(id)dictionary schema:(id)schema keyStack:(id)stack;
- (BOOL)_validateFingerprintSHA256:(id)a256;
- (BOOL)_validateJSONObject:(id)object keyStack:(id)stack;
- (BOOL)_validatePrimitive:(id)primitive schema:(id)schema keyStack:(id)stack;
- (BOOL)_validateTimezone:(id)timezone;
- (BOOL)_validateURL:(id)l;
- (BOOL)_validateValue:(id)value schema:(id)schema keyStack:(id)stack root:(BOOL)root;
- (BOOL)_validateValue:(id)value subschemaNamed:(id)named keyStack:(id)stack;
- (BOOL)validateJSONObject:(id)object error:(id *)error;
- (HKJSONValidator)init;
- (HKJSONValidator)initWithSchema:(id)schema;
- (HKJSONValidator)initWithSchema:(id)schema subschemaCache:(id)cache;
- (HKJSONValidator)initWithSchemaNamed:(id)named bundle:(id)bundle;
- (id)_loadSubschemaNamed:(id)named;
- (id)_mismatchErrorFromKeyStack:(id)stack;
@end

@implementation HKJSONValidator

+ (void)registerSearchPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = pathCopy;
  v6 = _searchPaths;
  if (!_searchPaths)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v8 = _searchPaths;
    _searchPaths = v7;

    v6 = _searchPaths;
    v5 = pathCopy;
  }

  if (([v6 containsObject:v5] & 1) == 0)
  {
    v9 = [_searchPaths arrayByAddingObject:pathCopy];
    v10 = _searchPaths;
    _searchPaths = v9;
  }

  objc_sync_exit(selfCopy);
}

+ (NSArray)searchPaths
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _searchPaths;
  objc_sync_exit(selfCopy);

  return v3;
}

- (HKJSONValidator)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKJSONValidator)initWithSchema:(id)schema
{
  schemaCopy = schema;
  v10.receiver = self;
  v10.super_class = HKJSONValidator;
  v5 = [(HKJSONValidator *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_ivarLock._os_unfair_lock_opaque = 0;
    v7 = [schemaCopy copyWithZone:0];
    schema = v6->_schema;
    v6->_schema = v7;
  }

  return v6;
}

- (HKJSONValidator)initWithSchema:(id)schema subschemaCache:(id)cache
{
  cacheCopy = cache;
  v7 = [(HKJSONValidator *)self initWithSchema:schema];
  if (v7)
  {
    v8 = [cacheCopy mutableCopy];
    subschemaCache = v7->_subschemaCache;
    v7->_subschemaCache = v8;
  }

  return v7;
}

- (HKJSONValidator)initWithSchemaNamed:(id)named bundle:(id)bundle
{
  v27 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  bundleCopy = bundle;
  v9 = [bundleCopy URLForResource:namedCopy withExtension:@"json"];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF48]) initWithURL:v9];
    v12 = v10;
    if (v10)
    {
      [v10 open];
      v20 = 0;
      v13 = [MEMORY[0x1E696ACB0] JSONObjectWithStream:v12 options:0 error:&v20];
      v14 = v20;
      close = [v12 close];
      if (v13)
      {
        self = [(HKJSONValidator *)self initWithSchema:v13];
        selfCopy = self;
      }

      else
      {
        _HKInitializeLogging(close, v16);
        v18 = HKLogDefault;
        if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v22 = namedCopy;
          v23 = 2114;
          v24 = bundleCopy;
          v25 = 2114;
          v26 = v14;
          _os_log_error_impl(&dword_19197B000, v18, OS_LOG_TYPE_ERROR, "Failed to deserialize schema %{public}@ in bundle %{public}@: %{public}@", buf, 0x20u);
        }

        selfCopy = 0;
      }
    }

    else
    {
      _HKInitializeLogging(0, v11);
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        [HKJSONValidator initWithSchemaNamed:bundle:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    _HKInitializeLogging(0, v8);
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [HKJSONValidator initWithSchemaNamed:bundle:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)validateJSONObject:(id)object error:(id *)error
{
  v6 = MEMORY[0x1E695DF70];
  objectCopy = object;
  v8 = objc_alloc_init(v6);
  v9 = [(HKJSONValidator *)self _validateJSONObject:objectCopy keyStack:v8];

  if (!v9)
  {
    v10 = [(HKJSONValidator *)self _mismatchErrorFromKeyStack:v8];
    v11 = v10;
    if (v10)
    {
      if (error)
      {
        v12 = v10;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError(v10);
      }
    }
  }

  return v9;
}

- (BOOL)_validateJSONObject:(id)object keyStack:(id)stack
{
  stackCopy = stack;
  objectCopy = object;
  schema = [(HKJSONValidator *)self schema];
  LOBYTE(self) = [(HKJSONValidator *)self _validateValue:objectCopy schema:schema keyStack:stackCopy root:1];

  return self;
}

+ (BOOL)validateJSONObject:(id)object withSchemaNamed:(id)named bundle:(id)bundle error:(id *)error
{
  objectCopy = object;
  namedCopy = named;
  bundleCopy = bundle;
  v12 = [[HKJSONValidator alloc] initWithSchemaNamed:namedCopy bundle:bundleCopy];
  v13 = v12;
  if (v12)
  {
    v14 = [(HKJSONValidator *)v12 validateJSONObject:objectCopy error:error];
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:100 format:{@"Unable to create JSON validator with schema %@ in bundle %@", namedCopy, bundleCopy}];
    v14 = 0;
  }

  return v14;
}

- (BOOL)_validateValue:(id)value schema:(id)schema keyStack:(id)stack root:(BOOL)root
{
  valueCopy = value;
  schemaCopy = schema;
  stackCopy = stack;
  if (!valueCopy)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(HKJSONValidator *)self _validateArray:valueCopy schema:schemaCopy keyStack:stackCopy];
      goto LABEL_6;
    }

    if (!root)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [(HKJSONValidator *)self _validatePrimitive:valueCopy schema:schemaCopy keyStack:stackCopy];
        goto LABEL_6;
      }
    }

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v13 = [(HKJSONValidator *)self _validateDictionary:valueCopy schema:schemaCopy keyStack:stackCopy];
LABEL_6:
  v14 = v13;
LABEL_11:

  return v14;
}

- (BOOL)_validateDictionary:(id)dictionary schema:(id)schema keyStack:(id)stack
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  schemaCopy = schema;
  stackCopy = stack;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = 0;
    goto LABEL_24;
  }

  if (![schemaCopy count])
  {
    v19 = 1;
    goto LABEL_24;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = schemaCopy;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v11)
  {
    v19 = 1;
    goto LABEL_23;
  }

  v12 = v11;
  v13 = *v24;
  v21 = schemaCopy;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v23 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_22;
      }

      v16 = [v10 objectForKeyedSubscript:v15];
      if ([v15 hasSuffix:@"?"])
      {
        v17 = [v15 substringToIndex:{objc_msgSend(v15, "length") - objc_msgSend(@"?", "length")}];
        v18 = [dictionaryCopy objectForKeyedSubscript:v17];

        if (!v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v18 = [dictionaryCopy objectForKeyedSubscript:v15];
      }

      [stackCopy addObject:{v15, v21}];
      if (![(HKJSONValidator *)self _validateValue:v18 schema:v16 keyStack:stackCopy root:0])
      {

LABEL_22:
        v19 = 0;
        schemaCopy = v21;
        goto LABEL_23;
      }

      [stackCopy removeLastObject];

LABEL_15:
    }

    v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    v19 = 1;
    schemaCopy = v21;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_23:

LABEL_24:
  return v19;
}

- (BOOL)_validateArray:(id)array schema:(id)schema keyStack:(id)stack
{
  v24 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  schemaCopy = schema;
  stackCopy = stack;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([schemaCopy count])
    {
      lastObject = [schemaCopy lastObject];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = arrayCopy;
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if (![(HKJSONValidator *)self _validateValue:*(*(&v19 + 1) + 8 * i) schema:lastObject keyStack:stackCopy root:0, v19])
            {
              v17 = 0;
              goto LABEL_14;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v17 = 1;
LABEL_14:
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_validatePrimitive:(id)primitive schema:(id)schema keyStack:(id)stack
{
  primitiveCopy = primitive;
  schemaCopy = schema;
  stackCopy = stack;
  [stackCopy addObject:schemaCopy];
  if (![schemaCopy isEqualToString:@"BOOLean"])
  {
    if ([schemaCopy isEqualToString:@"number"] || objc_msgSend(schemaCopy, "isEqualToString:", @"string"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_7;
      }
    }

    else
    {
      if ([schemaCopy isEqualToString:@"fingerprint:sha256"])
      {
        if (![(HKJSONValidator *)self _validateFingerprintSHA256:primitiveCopy])
        {
          goto LABEL_20;
        }

        goto LABEL_7;
      }

      if ([schemaCopy isEqualToString:@"timezone"])
      {
        if (![(HKJSONValidator *)self _validateTimezone:primitiveCopy])
        {
          goto LABEL_20;
        }

        goto LABEL_7;
      }

      if ([schemaCopy isEqualToString:@"url"])
      {
        if (![(HKJSONValidator *)self _validateURL:primitiveCopy])
        {
          goto LABEL_20;
        }

        goto LABEL_7;
      }

      if ([schemaCopy hasPrefix:@"schema:"])
      {
        v12 = [schemaCopy substringFromIndex:{objc_msgSend(@"schema:", "length")}];
        v11 = [(HKJSONValidator *)self _validateValue:primitiveCopy subschemaNamed:v12 keyStack:stackCopy];

        if (!v11)
        {
          goto LABEL_21;
        }

        goto LABEL_7;
      }
    }

LABEL_20:
    LOBYTE(v11) = 0;
    goto LABEL_21;
  }

  if (![(HKJSONValidator *)self _validateBoolean:primitiveCopy])
  {
    goto LABEL_20;
  }

LABEL_7:
  [stackCopy removeLastObject];
  LOBYTE(v11) = 1;
LABEL_21:

  return v11;
}

- (BOOL)_validateBoolean:(id)boolean
{
  booleanCopy = boolean;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = CFGetTypeID(booleanCopy);
    v5 = v4 == CFBooleanGetTypeID();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_validateFingerprintSHA256:(id)a256
{
  a256Copy = a256;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E695DEF0] hk_dataWithSHA256Fingerprint:a256Copy error:0];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_validateTimezone:(id)timezone
{
  timezoneCopy = timezone;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_validateURL:(id)l
{
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:lCopy];
    v5 = v4;
    if (v4)
    {
      scheme = [v4 scheme];
      if (scheme)
      {
        host = [v5 host];
        v8 = host != 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_validateValue:(id)value subschemaNamed:(id)named keyStack:(id)stack
{
  valueCopy = value;
  stackCopy = stack;
  v10 = [(HKJSONValidator *)self _loadSubschemaNamed:named];
  if (v10)
  {
    os_unfair_lock_lock(&self->_ivarLock);
    v11 = [objc_alloc(objc_opt_class()) initWithSchema:v10 subschemaCache:self->_subschemaCache];
    os_unfair_lock_unlock(&self->_ivarLock);
    v12 = [v11 _validateJSONObject:valueCopy keyStack:stackCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_loadSubschemaNamed:(id)named
{
  v34 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  os_unfair_lock_lock(&self->_ivarLock);
  subschemaCache = self->_subschemaCache;
  if (!subschemaCache)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_subschemaCache;
    self->_subschemaCache = v6;

    subschemaCache = self->_subschemaCache;
  }

  v8 = [(NSMutableDictionary *)subschemaCache objectForKeyedSubscript:namedCopy];
  os_unfair_lock_unlock(&self->_ivarLock);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [namedCopy stringByAppendingPathExtension:@"json"];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    searchPaths = [objc_opt_class() searchPaths];
    v12 = [searchPaths countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(searchPaths);
          }

          v16 = [*(*(&v29 + 1) + 8 * i) URLByAppendingPathComponent:v10];
          v17 = [objc_alloc(MEMORY[0x1E695DF48]) initWithURL:v16];
          if (v17)
          {
            v21 = v17;
            [v17 open];
            v28 = 0;
            v22 = [MEMORY[0x1E696ACB0] JSONObjectWithStream:v21 options:0 error:&v28];
            v23 = v28;
            close = [v21 close];
            if (!v22)
            {
              _HKInitializeLogging(close, v25);
              v26 = HKLogDefault;
              if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
              {
                [(HKJSONValidator *)v26 _loadSubschemaNamed:v16, v23];
              }
            }

            os_unfair_lock_lock(&self->_ivarLock);
            [(NSMutableDictionary *)self->_subschemaCache setObject:v22 forKeyedSubscript:namedCopy];
            os_unfair_lock_unlock(&self->_ivarLock);
            v9 = v22;

            goto LABEL_20;
          }
        }

        v13 = [searchPaths countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    _HKInitializeLogging(v18, v19);
    v20 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(HKJSONValidator *)namedCopy _loadSubschemaNamed:v20];
    }

    v9 = 0;
LABEL_20:
  }

  return v9;
}

- (id)_mismatchErrorFromKeyStack:(id)stack
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [stack componentsJoinedByString:@"."];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Schema mismatch at %@", v3];
  v5 = *MEMORY[0x1E696A578];
  v9[0] = @"HKJSONErrorKeyPathKey";
  v9[1] = v5;
  v10[0] = v3;
  v10[1] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.healthkit.private.json" code:1 userInfo:v6];

  return v7;
}

- (void)_loadSubschemaNamed:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 absoluteString];
  OUTLINED_FUNCTION_2_4();
  v8 = a3;
  _os_log_error_impl(&dword_19197B000, v5, OS_LOG_TYPE_ERROR, "Unable to load subschema at %{public}@: %{public}@", v7, 0x16u);
}

- (void)_loadSubschemaNamed:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Subschema not found: %{public}@", &v2, 0xCu);
}

@end