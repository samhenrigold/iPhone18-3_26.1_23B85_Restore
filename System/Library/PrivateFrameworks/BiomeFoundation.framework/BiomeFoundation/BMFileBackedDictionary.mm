@interface BMFileBackedDictionary
- (BMFileBackedDictionary)initWithFilename:(id)filename protectionClass:(int)class directory:(id)directory readOnly:(BOOL)only create:(BOOL)create initialDictionary:(id)dictionary error:(id *)error;
- (BOOL)_loadDictionaryOrCreate:(BOOL)create readOnly:(BOOL)only initialDictionary:(id)dictionary error:(id *)error;
- (BOOL)clear:(id *)clear;
- (BOOL)clearObjectForKey:(id)key error:(id *)error;
- (BOOL)writeUpdatedObject:(id)object forKey:(id)key error:(id *)error;
- (BOOL)writeUpdatedObjects:(id)objects forKeys:(id)keys error:(id *)error;
- (id)description;
- (id)mutableDictionaryForKey:(id)key error:(id *)error;
- (id)objectForKey:(id)key;
@end

@implementation BMFileBackedDictionary

- (BMFileBackedDictionary)initWithFilename:(id)filename protectionClass:(int)class directory:(id)directory readOnly:(BOOL)only create:(BOOL)create initialDictionary:(id)dictionary error:(id *)error
{
  createCopy = create;
  onlyCopy = only;
  v29[1] = *MEMORY[0x1E69E9840];
  filenameCopy = filename;
  directoryCopy = directory;
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = BMFileBackedDictionary;
  v18 = [(BMFileBackedDictionary *)&v27 init];
  if (!v18)
  {
    goto LABEL_5;
  }

  if (!filenameCopy || !directoryCopy)
  {
    v22 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    directoryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid {filename: %@, directory: %@}", filenameCopy, directoryCopy];
    v29[0] = directoryCopy;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v25 = [v22 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:2 userInfo:v24];
    BMSetError(error, v25);

    goto LABEL_7;
  }

  v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:filenameCopy relativeToURL:directoryCopy];
  fileURL = v18->_fileURL;
  v18->_fileURL = v19;

  v18->_protectionClass = class;
  if (![(BMFileBackedDictionary *)v18 _loadDictionaryOrCreate:createCopy readOnly:onlyCopy initialDictionary:dictionaryCopy error:error])
  {
LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

LABEL_5:
  v21 = v18;
LABEL_8:

  return v21;
}

- (BOOL)_loadDictionaryOrCreate:(BOOL)create readOnly:(BOOL)only initialDictionary:(id)dictionary error:(id *)error
{
  onlyCopy = only;
  v54[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  path = [(NSURL *)self->_fileURL path];
  fileURL = self->_fileURL;
  v46 = 0;
  v13 = BMReadPropertyList(fileURL, !onlyCopy, &v46);
  v14 = v46;
  dictionary = self->_dictionary;
  self->_dictionary = v13;

  if (self->_dictionary)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (onlyCopy)
      {
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_24;
      }

      errorCopy2 = error;
      v45 = dictionaryCopy;
      v16 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E696A578];
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [v17 stringWithFormat:@"Expected mutable plist class (%@) but received class (%@) for object: %@ at path: %@", v19, v21, self->_dictionary, path];
      v54[0] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      v24 = [v16 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:5 userInfo:v23];

      v14 = v23;
    }

    else
    {
      errorCopy2 = error;
      v45 = dictionaryCopy;
      v32 = MEMORY[0x1E696ABC0];
      v51 = *MEMORY[0x1E696A578];
      v33 = MEMORY[0x1E696AEC0];
      v34 = objc_opt_class();
      v19 = NSStringFromClass(v34);
      v21 = [v33 stringWithFormat:@"Unexpected plist class (%@) of object: %@ at path: %@", v19, self->_dictionary, path];
      v52 = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v24 = [v32 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:5 userInfo:v22];
    }

    v29 = __biome_log_for_category(16);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
    }

    v14 = v24;
    error = errorCopy2;
    dictionaryCopy = v45;
  }

  else
  {
    code = [v14 code];
    v26 = __biome_log_for_category(16);
    v27 = v26;
    if (code == 260)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
      }

      v28 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696AA08];
      v50 = v14;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v30 = v28;
      v31 = 6;
    }

    else
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
      }

      if (v14)
      {
        v47 = *MEMORY[0x1E696AA08];
        v48 = v14;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      }

      else
      {
        v29 = 0;
      }

      v30 = MEMORY[0x1E696ABC0];
      v31 = 7;
    }

    v35 = [v30 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:v31 userInfo:v29];

    v14 = v35;
  }

  if (!create)
  {
    BMSetError(error, v14);
    v37 = 0;
    goto LABEL_32;
  }

  if (onlyCopy)
  {
    v36 = self->_dictionary;
    self->_dictionary = MEMORY[0x1E695E0F8];

LABEL_24:
    v37 = 1;
    goto LABEL_32;
  }

  v38 = __biome_log_for_category(16);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
  }

  v39 = [dictionaryCopy mutableCopy];
  v40 = v39;
  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = objc_opt_new();
  }

  v42 = self->_dictionary;
  self->_dictionary = v41;

  v37 = BMWritePropertyList(self->_dictionary, self->_fileURL, self->_protectionClass, error);
LABEL_32:

  return v37;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = BMFileBackedDictionary;
  v3 = [(BMFileBackedDictionary *)&v7 description];
  path = [(NSURL *)self->_fileURL path];
  v5 = [v3 stringByAppendingFormat:@" fileBackedDictionary: %@", path];

  return v5;
}

- (id)objectForKey:(id)key
{
  v3 = [(NSDictionary *)self->_dictionary objectForKey:key];
  v4 = [v3 copy];

  return v4;
}

- (id)mutableDictionaryForKey:(id)key error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = [(BMFileBackedDictionary *)self objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_10:
    v17 = v8;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 mutableCopy];
    goto LABEL_10;
  }

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    goto LABEL_10;
  }

  v9 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696A578];
  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"Unexpected object: %@ for key: %@ expected: %@", v7, keyCopy, v12, v19];
  v20[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v15 = [v9 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:4 userInfo:v14];

  BMSetError(error, v15);
  v16 = __biome_log_for_category(16);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (BOOL)writeUpdatedObject:(id)object forKey:(id)key error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (object && key)
  {
    objectCopy = object;
    v8 = MEMORY[0x1E695DEC8];
    keyCopy = key;
    objectCopy2 = object;
    keyCopy2 = [v8 arrayWithObjects:&objectCopy count:1];
    v20 = keyCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];

    v13 = [(BMFileBackedDictionary *)self writeUpdatedObjects:keyCopy2 forKeys:v12 error:error];
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v15 = MEMORY[0x1E696AEC0];
    keyCopy2 = key;
    objectCopy3 = object;
    keyCopy2 = [v15 stringWithFormat:@"Invalid {object: %@ key: %@}", objectCopy3, keyCopy2];
    v23[0] = keyCopy2;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v18 = [v14 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:1 userInfo:v12];

    BMSetError(error, v18);
    v13 = 0;
  }

  return v13;
}

- (BOOL)writeUpdatedObjects:(id)objects forKeys:(id)keys error:(id *)error
{
  v59[1] = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  keysCopy = keys;
  if ([(BMFileBackedDictionary *)self isReadOnly])
  {
    v10 = MEMORY[0x1E696ABC0];
    v58 = *MEMORY[0x1E696A578];
    keysCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"instance: %@ is read only.", self];
    v59[0] = keysCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v13 = v10;
    v14 = 3;
LABEL_18:
    v24 = [v13 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:v14 userInfo:v12];
    BMSetError(error, v24);
    v25 = 0;
    goto LABEL_19;
  }

  v15 = [objectsCopy count];
  if (v15 != [keysCopy count])
  {
    v23 = MEMORY[0x1E696ABC0];
    v56 = *MEMORY[0x1E696A578];
    keysCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected number of objects: %@ for keys: %@", objectsCopy, keysCopy];
    v57 = keysCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v13 = v23;
    v14 = 1;
    goto LABEL_18;
  }

  errorCopy = error;
  keysCopy = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v16 = [objectsCopy count];
  if ([objectsCopy count])
  {
    for (i = 0; i < [objectsCopy count]; ++i)
    {
      v18 = [objectsCopy objectAtIndex:i];
      v19 = [keysCopy objectAtIndex:i];
      v20 = [keysCopy objectForKey:v19];
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = [(NSDictionary *)self->_dictionary objectForKey:v19];
        if (!v21)
        {
          goto LABEL_14;
        }
      }

      if ([v21 isEqual:v18])
      {
        v22 = __biome_log_for_category(16);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v50 = v18;
          v51 = 2112;
          v52 = v19;
          _os_log_debug_impl(&dword_1AC15D000, v22, OS_LOG_TYPE_DEBUG, "object: %@ is already recorded for key: %@", buf, 0x16u);
        }

        --v16;
        goto LABEL_15;
      }

      [keysCopy setObject:v21 forKey:v19];
LABEL_14:
      [(NSDictionary *)self->_dictionary setObject:v18 forKey:v19];
LABEL_15:
    }
  }

  if (!v16)
  {
    v25 = 1;
    goto LABEL_20;
  }

  fileURL = self->_fileURL;
  dictionary = self->_dictionary;
  protectionClass = self->_protectionClass;
  v48 = 0;
  v25 = BMWritePropertyList(dictionary, fileURL, protectionClass, &v48);
  v30 = v48;
  v12 = v30;
  if (v25)
  {
    v24 = __biome_log_for_category(16);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v50 = objectsCopy;
      v51 = 2112;
      v52 = keysCopy;
      v53 = 2112;
      v54 = keysCopy;
      _os_log_debug_impl(&dword_1AC15D000, v24, OS_LOG_TYPE_DEBUG, "Updated object(s): %@ for key(s): %@ replacing prior object(s): %@", buf, 0x20u);
    }
  }

  else
  {
    v41 = v30;
    v42 = v25;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v31 = keysCopy;
    v32 = [v31 countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v45;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v45 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v44 + 1) + 8 * j);
          v37 = [keysCopy objectForKey:v36];
          v38 = self->_dictionary;
          if (v37)
          {
            [(NSDictionary *)v38 setObject:v37 forKey:v36];
          }

          else
          {
            [(NSDictionary *)v38 removeObjectForKey:v36];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v33);
    }

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to write updated object(s): %@ for key(s): %@ reverting to prior object(s): %@", objectsCopy, v31, keysCopy];
    [v24 setObject:v39 forKey:*MEMORY[0x1E696A578]];

    if (v41)
    {
      [v24 setObject:v41 forKey:*MEMORY[0x1E696AA08]];
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:8 userInfo:v24];

    BMSetError(errorCopy, v12);
    v40 = __biome_log_for_category(16);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
    }

    v25 = v42;
  }

LABEL_19:

LABEL_20:
  return v25;
}

- (BOOL)clearObjectForKey:(id)key error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if ([(BMFileBackedDictionary *)self isReadOnly])
  {
    v7 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"instance: %@ is read only.", self];
    v27[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v10 = v7;
    v11 = 3;
LABEL_10:
    v19 = [v10 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:v11 userInfo:v9];
    BMSetError(error, v19);

    v15 = 0;
    goto LABEL_20;
  }

  if (!keyCopy)
  {
    v18 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid key: %@", 0];
    v25 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v10 = v18;
    v11 = 1;
    goto LABEL_10;
  }

  v8 = [(NSDictionary *)self->_dictionary objectForKey:keyCopy];
  if (v8)
  {
    [(NSDictionary *)self->_dictionary removeObjectForKey:keyCopy];
    fileURL = self->_fileURL;
    dictionary = self->_dictionary;
    protectionClass = self->_protectionClass;
    v23 = 0;
    v15 = BMWritePropertyList(dictionary, fileURL, protectionClass, &v23);
    v16 = v23;
    if (v15)
    {
      v17 = __biome_log_for_category(16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [BMFileBackedDictionary clearObjectForKey:error:];
      }

      v9 = v16;
    }

    else
    {
      [(NSDictionary *)self->_dictionary setObject:v8 forKey:keyCopy];
      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to write removal for key: %@ reverting to prior object: %@", keyCopy, v8];
      [v17 setObject:v20 forKey:*MEMORY[0x1E696A578]];

      if (v16)
      {
        [v17 setObject:v16 forKey:*MEMORY[0x1E696AA08]];
      }

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:8 userInfo:v17];

      BMSetError(error, v9);
      v21 = __biome_log_for_category(16);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
      }
    }
  }

  else
  {
    v9 = __biome_log_for_category(16);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BMFileBackedDictionary clearObjectForKey:error:];
    }

    v15 = 1;
  }

LABEL_20:

  return v15;
}

- (BOOL)clear:(id *)clear
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (![(BMFileBackedDictionary *)self isReadOnly])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [(NSURL *)self->_fileURL path];
    if (path && [defaultManager fileExistsAtPath:path])
    {
      fileURL = self->_fileURL;
      v17 = 0;
      v11 = [defaultManager removeItemAtURL:fileURL error:&v17];
      v12 = v17;
      if ((v11 & 1) == 0)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to remove file-backed dictionary at path: %@", path];
        [v13 setObject:v14 forKey:*MEMORY[0x1E696A578]];

        if (v12)
        {
          [v13 setObject:v12 forKey:*MEMORY[0x1E696AA08]];
        }

        v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:8 userInfo:v13];

        BMSetError(clear, v6);
        v15 = __biome_log_for_category(16);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
        }

        goto LABEL_3;
      }
    }

    else
    {
      v12 = 0;
    }

    [(NSDictionary *)self->_dictionary removeAllObjects];
    v9 = 1;
    v6 = v12;
    goto LABEL_14;
  }

  v5 = MEMORY[0x1E696ABC0];
  v18 = *MEMORY[0x1E696A578];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"instance: %@ is read only.", self];
  v19[0] = v6;
  defaultManager = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  path = [v5 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:3 userInfo:defaultManager];
  BMSetError(clear, path);
LABEL_3:
  v9 = 0;
LABEL_14:

  return v9;
}

- (void)_loadDictionaryOrCreate:readOnly:initialDictionary:error:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(&dword_1AC15D000, v0, OS_LOG_TYPE_ERROR, "Failed to read prior file-backed dictionary at path: %@ error: %@", v1, 0x16u);
}

- (void)_loadDictionaryOrCreate:readOnly:initialDictionary:error:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_1AC15D000, v0, OS_LOG_TYPE_DEBUG, "No prior file-backed dictionary found at path: %@", v1, 0xCu);
}

- (void)clearObjectForKey:error:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_1AC15D000, v0, OS_LOG_TYPE_DEBUG, "No object exists for key: %@", v1, 0xCu);
}

@end