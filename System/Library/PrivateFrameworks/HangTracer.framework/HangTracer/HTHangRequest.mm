@interface HTHangRequest
+ (id)sandboxExtensionForPath:(id)path;
- (BOOL)_insertNSNumberInXPCDictionaryUsingKey:(const char *)key number:(id)number dict:(id)dict;
- (id)_checkDirectoryPathIsValid;
- (id)_createXPCDictionary:(id)dictionary;
- (id)initRequest:(id)request error:(id *)error;
- (id)initRequestWithPath:(id)path dictionary:(id)dictionary error:(id *)p_isa;
@end

@implementation HTHangRequest

- (id)_checkDirectoryPathIsValid
{
  v27[1] = *MEMORY[0x1E69E9840];
  sharedDirectoryPath = [(HTHangRequest *)self sharedDirectoryPath];

  if (sharedDirectoryPath)
  {
    v21 = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    sharedDirectoryPath2 = [(HTHangRequest *)self sharedDirectoryPath];
    v6 = [defaultManager fileExistsAtPath:sharedDirectoryPath2 isDirectory:&v21];

    if (v6)
    {
      if (v21)
      {
        v7 = 0;
        goto LABEL_9;
      }

      v17 = objc_alloc(MEMORY[0x1E696AEC0]);
      sharedDirectoryPath3 = [(HTHangRequest *)self sharedDirectoryPath];
      v12 = [v17 initWithFormat:@"File '%@' is not a directory.", sharedDirectoryPath3];

      v13 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A578];
      v23 = v12;
      v14 = MEMORY[0x1E695DF20];
      v15 = &v23;
      v16 = &v22;
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      sharedDirectoryPath4 = [(HTHangRequest *)self sharedDirectoryPath];
      v12 = [v10 initWithFormat:@"File '%@' does not exist", sharedDirectoryPath4];

      v13 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      v25 = v12;
      v14 = MEMORY[0x1E695DF20];
      v15 = &v25;
      v16 = &v24;
    }

    v19 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    v7 = [v13 errorWithDomain:@"kHTHangRequestError" code:0 userInfo:v19];
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27[0] = @"Directory path not provided by client";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v7 = [v8 errorWithDomain:@"kHTHangRequestError" code:0 userInfo:v9];
  }

LABEL_9:

  return v7;
}

- (BOOL)_insertNSNumberInXPCDictionaryUsingKey:(const char *)key number:(id)number dict:(id)dict
{
  numberCopy = number;
  dictCopy = dict;
  objCType = [numberCopy objCType];
  if (*objCType == 66 && !objCType[1])
  {
    xpc_dictionary_set_BOOL(dictCopy, key, [numberCopy BOOLValue]);
LABEL_35:
    v21 = 1;
    goto LABEL_36;
  }

  objCType2 = [numberCopy objCType];
  if (*objCType2 == 105 && !objCType2[1])
  {
    intValue = [numberCopy intValue];
LABEL_31:
    v24 = intValue;
LABEL_34:
    xpc_dictionary_set_int64(dictCopy, key, v24);
    goto LABEL_35;
  }

  objCType3 = [numberCopy objCType];
  if (*objCType3 == 115 && !objCType3[1])
  {
    intValue = [numberCopy shortValue];
    goto LABEL_31;
  }

  objCType4 = [numberCopy objCType];
  if (*objCType4 == 113 && !objCType4[1])
  {
    goto LABEL_27;
  }

  objCType5 = [numberCopy objCType];
  if (*objCType5 == 99 && !objCType5[1])
  {
    intValue = [numberCopy charValue];
    goto LABEL_31;
  }

  objCType6 = [numberCopy objCType];
  if (*objCType6 == 113 && !objCType6[1])
  {
LABEL_27:
    longValue = [numberCopy longValue];
LABEL_33:
    v24 = longValue;
    goto LABEL_34;
  }

  objCType7 = [numberCopy objCType];
  if (*objCType7 == 113 && !objCType7[1])
  {
    longValue = [numberCopy longLongValue];
    goto LABEL_33;
  }

  objCType8 = [numberCopy objCType];
  if (*objCType8 == 73 && !objCType8[1])
  {
    unsignedIntValue = [numberCopy unsignedIntValue];
LABEL_41:
    xpc_dictionary_set_uint64(dictCopy, key, unsignedIntValue);
    goto LABEL_35;
  }

  objCType9 = [numberCopy objCType];
  if (*objCType9 == 81 && !objCType9[1])
  {
    unsignedLongValue = [numberCopy unsignedLongValue];
LABEL_40:
    unsignedIntValue = unsignedLongValue;
    goto LABEL_41;
  }

  objCType10 = [numberCopy objCType];
  if (*objCType10 == 81 && !objCType10[1])
  {
    unsignedLongValue = [numberCopy unsignedLongLongValue];
    goto LABEL_40;
  }

  objCType11 = [numberCopy objCType];
  if (*objCType11 == 100 && !objCType11[1])
  {
    [numberCopy doubleValue];
    xpc_dictionary_set_double(dictCopy, key, v28);
    goto LABEL_35;
  }

  v20 = shared_ht_log_handle(objCType11);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [HTHangRequest _insertNSNumberInXPCDictionaryUsingKey:numberCopy number:v20 dict:?];
  }

  v21 = 0;
LABEL_36:

  return v21;
}

- (id)_createXPCDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = dictionaryCopy;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          v19 = shared_ht_log_handle(v11);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [HTHangRequest _createXPCDictionary:];
          }

          goto LABEL_27;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          break;
        }

        uTF8String = [v10 UTF8String];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          xpc_dictionary_set_string(v4, uTF8String, [v12 UTF8String]);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (![(HTHangRequest *)self _insertNSNumberInXPCDictionaryUsingKey:uTF8String number:v12 dict:v4])
            {
              goto LABEL_28;
            }
          }

          else
          {
            objc_opt_class();
            v16 = objc_opt_isKindOfClass();
            if ((v16 & 1) == 0)
            {
              v19 = shared_ht_log_handle(v16);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                [HTHangRequest _createXPCDictionary:];
              }

LABEL_27:

LABEL_28:
              v18 = 0;
              goto LABEL_29;
            }

            [v12 timeIntervalSince1970];
            xpc_dictionary_set_date(v4, uTF8String, (v17 * 1000000000.0));
          }
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_21;
        }
      }

      v19 = shared_ht_log_handle(isKindOfClass);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(HTHangRequest *)v10 _createXPCDictionary:v5, v19];
      }

      goto LABEL_27;
    }

LABEL_21:

    v18 = v4;
LABEL_29:
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)sandboxExtensionForPath:(id)path
{
  [path UTF8String];
  v3 = sandbox_extension_issue_file();
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    free(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)initRequest:(id)request error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v7 = [(HTHangRequest *)self _createXPCDictionary:requestCopy];
  requestXPCDictionary = self->_requestXPCDictionary;
  self->_requestXPCDictionary = v7;

  requestXPCDictionary = [(HTHangRequest *)self requestXPCDictionary];

  if (error && !requestXPCDictionary)
  {
    requestCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not create xpc_object_t request dictionary from dictionary '%@'", requestCopy];
    v11 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = requestCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = [v11 errorWithDomain:@"kHTHangRequestError" code:0 userInfo:v12];
    v14 = *error;
    *error = v13;
  }

  return self;
}

- (id)initRequestWithPath:(id)path dictionary:(id)dictionary error:(id *)p_isa
{
  v27[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dictionaryCopy = dictionary;
  objc_storeStrong(&self->_sharedDirectoryPath, path);
  _checkDirectoryPathIsValid = [(HTHangRequest *)self _checkDirectoryPathIsValid];
  if (!_checkDirectoryPathIsValid)
  {
    v12 = [objc_opt_class() sandboxExtensionForPath:self->_sharedDirectoryPath];
    sandboxExtension = self->_sandboxExtension;
    self->_sandboxExtension = v12;

    sandboxExtension = [(HTHangRequest *)self sandboxExtension];

    if (sandboxExtension)
    {
      v15 = [dictionaryCopy mutableCopy];
      sandboxExtension2 = [(HTHangRequest *)self sandboxExtension];
      v17 = [MEMORY[0x1E696AEC0] stringWithCString:"sandboxExtension" encoding:4];
      [v15 setObject:sandboxExtension2 forKeyedSubscript:v17];

      self = [(HTHangRequest *)self initRequest:v15 error:p_isa];
      p_isa = &self->super.isa;
      goto LABEL_7;
    }

    if (!p_isa)
    {
      goto LABEL_7;
    }

    v19 = MEMORY[0x1E696AEC0];
    sharedDirectoryPath = [(HTHangRequest *)self sharedDirectoryPath];
    v21 = [v19 stringWithFormat:@"Could not create sandbox extension for '%@'. This may be due to lack of sufficient permissions to access the directory.", sharedDirectoryPath];

    v22 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27[0] = v21;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v24 = [v22 errorWithDomain:@"kHTHangRequestError" code:0 userInfo:v23];
    v25 = *p_isa;
    *p_isa = v24;

    goto LABEL_4;
  }

  if (p_isa)
  {
    objc_storeStrong(p_isa, _checkDirectoryPathIsValid);
LABEL_4:
    p_isa = 0;
  }

LABEL_7:

  return p_isa;
}

- (void)_insertNSNumberInXPCDictionaryUsingKey:(void *)a1 number:(NSObject *)a2 dict:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136315138;
  v4 = [a1 objCType];
  _os_log_error_impl(&dword_1C8286000, a2, OS_LOG_TYPE_ERROR, "Passed unsupported NSNumber primitive type: %s", &v3, 0xCu);
}

- (void)_createXPCDictionary:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  v8 = a2;
  v6 = v5;
  _os_log_error_impl(&dword_1C8286000, a3, OS_LOG_TYPE_ERROR, "Encountered non-NSSting key of class '%@' in request dictionary: %@", v7, 0x16u);
}

@end