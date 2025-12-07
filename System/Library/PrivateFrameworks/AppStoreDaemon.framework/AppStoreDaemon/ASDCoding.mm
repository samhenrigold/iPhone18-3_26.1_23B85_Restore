@interface ASDCoding
+ (BOOL)securelyEncodeObject:(id)object forKey:(id)key withCoder:(id)coder error:(id *)error;
+ (id)_findNonSecureClassesFromObject:(uint64_t)object;
+ (id)createDataByEncodingError:(id)error;
+ (id)createErrorByDecodingData:(id)data;
@end

@implementation ASDCoding

+ (id)createDataByEncodingError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)createErrorByDecodingData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)securelyEncodeObject:(id)object forKey:(id)key withCoder:(id)coder error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  coderCopy = coder;
  v13 = [(ASDCoding *)self _findNonSecureClassesFromObject:objectCopy];
  if ([v13 count])
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v13 componentsJoinedByString:{@", "}];
    keyCopy = [v14 stringWithFormat:@"Attempted to encode classes that don't conform to NSSecureCoding: '%@' with key '%@'", v15, keyCopy];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v22 = objc_opt_class();
      v23 = 2114;
      v24 = keyCopy;
      v20 = v22;
      _os_log_error_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%{public}@]: %{public}@", buf, 0x16u);
    }

    v17 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 507, @"Error encoding object", keyCopy, 0);

    if (error && v17)
    {
      v18 = v17;
      *error = v17;
    }
  }

  else
  {
    [coderCopy encodeObject:objectCopy forKey:keyCopy];
    v17 = 0;
  }

  return v17 == 0;
}

+ (id)_findNonSecureClassesFromObject:(uint64_t)object
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v5 = MEMORY[0x1E695E0F0];
    goto LABEL_24;
  }

  v4 = v3;
  v5 = objc_opt_new();
  if (([v2 conformsToProtocol:&unk_1F3034818] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v26 = objc_opt_class();
      v27 = 2114;
      v28 = v6;
      v16 = v26;
      _os_log_error_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%{public}@]:  Error: Found class %{public}@ that doesn't conform to NSSecureCoding", buf, 0x16u);
    }

    [v5 addObject:v6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo = [v2 userInfo];
    v8 = [(ASDCoding *)v4 _findNonSecureClassesFromObject:userInfo];

    if ([v8 count])
    {
      [v5 addObjectsFromArray:v8];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __45__ASDCoding__findNonSecureClassesFromObject___block_invoke;
    v21[3] = &unk_1E7CDD580;
    v23 = v4;
    v5 = v5;
    v22 = v5;
    [v2 enumerateKeysAndObjectsUsingBlock:v21];
    v9 = v22;
  }

  else
  {
    if (![v2 conformsToProtocol:&unk_1F30448B8])
    {
      goto LABEL_24;
    }

    v9 = v2;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(ASDCoding *)v4 _findNonSecureClassesFromObject:?];
          if ([v14 count])
          {
            [v5 addObjectsFromArray:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v11);
    }
  }

LABEL_24:

  return v5;
}

void __45__ASDCoding__findNonSecureClassesFromObject___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [(ASDCoding *)*(a1 + 40) _findNonSecureClassesFromObject:a3];
  if ([v4 count])
  {
    [*(a1 + 32) addObjectsFromArray:v4];
  }
}

@end