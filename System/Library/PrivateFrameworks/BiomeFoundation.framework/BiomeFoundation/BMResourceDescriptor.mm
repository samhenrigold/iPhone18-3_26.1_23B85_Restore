@interface BMResourceDescriptor
+ (BOOL)_validateInput:(id)input description:(id)description error:(id *)error;
+ (BOOL)enumerateDescriptorsFromEncodedString:(id)string error:(id *)error usingBlock:(id)block;
+ (id)_illegalCharactersSet;
+ (id)descriptorsFromEncodedString:(id)string error:(id *)error;
+ (id)encodedStringFromDescriptors:(id)descriptors error:(id *)error;
+ (id)sortedDescriptorsDetectingDuplicates:(id)duplicates error:(id *)error;
- (BMResourceDescriptor)initWithCoder:(id)coder;
- (BMResourceDescriptor)initWithEncodedString:(id)string error:(id *)error;
- (BMResourceDescriptor)initWithKey:(id)key value:(id)value error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMResourceDescriptor

+ (id)sortedDescriptorsDetectingDuplicates:(id)duplicates error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  duplicatesCopy = duplicates;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__BMResourceDescriptor_sortedDescriptorsDetectingDuplicates_error___block_invoke;
  v13[3] = &unk_1E796B808;
  v13[4] = &v14;
  v6 = [duplicatesCopy sortedArrayUsingComparator:v13];
  if ([v15[5] count])
  {
    v7 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found descriptors with duplicate keys: %@", v15[5]];
    v21[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [v7 errorWithDomain:@"BMResourceDescriptorError" code:2 userInfo:v9];
    if (error && v10)
    {
      v10 = v10;
      *error = v10;
    }

    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  _Block_object_dispose(&v14, 8);

  return v11;
}

uint64_t __67__BMResourceDescriptor_sortedDescriptorsDetectingDuplicates_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 key];
  v8 = [v6 key];
  if ([v7 isEqual:v8])
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v9 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v9 addObject:v5];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
  }

  v13 = [v7 compare:v8];

  return v13;
}

+ (id)descriptorsFromEncodedString:(id)string error:(id *)error
{
  v5 = MEMORY[0x1E695DF70];
  stringCopy = string;
  v7 = objc_alloc_init(v5);
  v8 = objc_opt_class();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__BMResourceDescriptor_descriptorsFromEncodedString_error___block_invoke;
  v12[3] = &unk_1E796B830;
  v9 = v7;
  v13 = v9;
  LODWORD(error) = [v8 enumerateDescriptorsFromEncodedString:stringCopy error:error usingBlock:v12];

  if (error)
  {
    v10 = [v9 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)encodedStringFromDescriptors:(id)descriptors error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v9 = NSStringFromClass(v19);
    v7 = [v18 stringWithFormat:@"Invalid class for descriptors - expected: %@ received: %@", v9, objc_opt_class()];
    v31[0] = v7;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v21 = [v17 errorWithDomain:@"BMResourceDescriptorError" code:1 userInfo:v20];
    if (error && v21)
    {
      v21 = v21;
      *error = v21;
    }

    v16 = 0;
    goto LABEL_17;
  }

  if ([descriptorsCopy count])
  {
    v28 = 0;
    v7 = [self sortedDescriptorsDetectingDuplicates:descriptorsCopy error:&v28];
    v8 = v28;
    v9 = v8;
    if (!v7 || v8)
    {
      v16 = 0;
      if (error && v8)
      {
        v23 = v8;
        v16 = 0;
        *error = v9;
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = v7;
      v11 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v7);
            }

            encodedString = [*(*(&v24 + 1) + 8 * i) encodedString];
            [v10 addObject:encodedString];
          }

          v12 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v12);
      }

      v16 = [v10 componentsJoinedByString:@"&"];
    }

LABEL_17:

    goto LABEL_18;
  }

  v16 = &stru_1F20E2850;
LABEL_18:

  return v16;
}

+ (BOOL)enumerateDescriptorsFromEncodedString:(id)string error:(id *)error usingBlock:(id)block
{
  v28[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  blockCopy = block;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"Invalid class for encodedString - expected: %@ received: %@", v13, objc_opt_class()];
    v28[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v16 = [v10 errorWithDomain:@"BMResourceDescriptorError" code:1 userInfo:v15];
    if (error && v16)
    {
      v16 = v16;
      *error = v16;
    }

    LOBYTE(v9) = 0;
LABEL_19:

    goto LABEL_20;
  }

  if (([stringCopy isEqual:&stru_1F20E2850] & 1) == 0)
  {
    [stringCopy componentsSeparatedByString:@"&"];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v25 = 0u;
    v17 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
LABEL_10:
      v20 = 0;
      while (1)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v9 = [objc_alloc(objc_opt_class()) initWithEncodedString:*(*(&v22 + 1) + 8 * v20) error:error];
        if (!v9)
        {
          break;
        }

        blockCopy[2](blockCopy, v9);

        if (v18 == ++v20)
        {
          v18 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
          LOBYTE(v9) = 1;
          if (v18)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v9) = 1;
    }

    v13 = v14;
    goto LABEL_19;
  }

  LOBYTE(v9) = 1;
LABEL_20:

  return v9;
}

+ (id)_illegalCharactersSet
{
  if (_illegalCharactersSet_onceToken != -1)
  {
    +[BMResourceDescriptor _illegalCharactersSet];
  }

  v3 = _illegalCharactersSet_characterSet;

  return v3;
}

void __45__BMResourceDescriptor__illegalCharactersSet__block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  [v2 addCharactersInString:@"="];
  [v2 addCharactersInString:@"&"];
  v0 = [v2 copy];
  v1 = _illegalCharactersSet_characterSet;
  _illegalCharactersSet_characterSet = v0;
}

+ (BOOL)_validateInput:(id)input description:(id)description error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  descriptionCopy = description;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    descriptionCopy = NSStringFromClass(v19);
    v21 = [v18 stringWithFormat:@"Invalid class for %@ - expected: %@ received: %@", descriptionCopy, descriptionCopy, objc_opt_class()];
    v36[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v23 = [v17 errorWithDomain:@"BMResourceDescriptorError" code:1 userInfo:v22];
    if (error && v23)
    {
      v23 = v23;
      *error = v23;
    }

    goto LABEL_17;
  }

  if (![inputCopy length])
  {
    v24 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    descriptionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid empty string for %@", descriptionCopy];
    v34 = descriptionCopy;
    v25 = MEMORY[0x1E695DF20];
    v26 = &v34;
    v27 = &v33;
LABEL_14:
    v21 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
    v28 = [v24 errorWithDomain:@"BMResourceDescriptorError" code:3 userInfo:v21];
    v22 = v28;
    if (error && v28)
    {
      v29 = v28;
      *error = v22;
    }

LABEL_17:

    v16 = 0;
    goto LABEL_18;
  }

  v10 = [inputCopy length];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    while (1)
    {
      v13 = [inputCopy characterAtIndex:v12];
      _illegalCharactersSet = [self _illegalCharactersSet];
      v15 = [_illegalCharactersSet characterIsMember:v13];

      if (v15)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_7;
      }
    }

    v24 = MEMORY[0x1E696ABC0];
    descriptionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@: %@ contains whitespace or separator character: '%c'", descriptionCopy, inputCopy, v13, *MEMORY[0x1E696A578]];
    v32 = descriptionCopy;
    v25 = MEMORY[0x1E695DF20];
    v26 = &v32;
    v27 = &v31;
    goto LABEL_14;
  }

LABEL_7:
  v16 = 1;
LABEL_18:

  return v16;
}

- (BMResourceDescriptor)initWithKey:(id)key value:(id)value error:(id *)error
{
  keyCopy = key;
  valueCopy = value;
  v27.receiver = self;
  v27.super_class = BMResourceDescriptor;
  v11 = [(BMResourceDescriptor *)&v27 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v11->_key, key);
  v13 = objc_opt_class();
  key = v12->_key;
  v26 = 0;
  v15 = [v13 _validateInput:key description:@"key" error:&v26];
  v16 = v26;
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    if (!error || !v16)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  objc_storeStrong(&v12->_value, value);
  v18 = objc_opt_class();
  value = v12->_value;
  v25 = v17;
  v20 = [v18 _validateInput:value description:@"value" error:&v25];
  v21 = v25;

  if ((v20 & 1) == 0)
  {
    if (!error)
    {
      v17 = v21;
      goto LABEL_12;
    }

    v17 = v21;
    if (!v21)
    {
LABEL_12:

      v22 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v23 = v17;
    *error = v17;
    goto LABEL_12;
  }

LABEL_5:
  v22 = v12;
LABEL_13:

  return v22;
}

- (BMResourceDescriptor)initWithEncodedString:(id)string error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [stringCopy componentsSeparatedByString:@"="];
    if ([v7 count] == 2)
    {
      firstObject = [v7 firstObject];
      lastObject = [v7 lastObject];
      self = [(BMResourceDescriptor *)self initWithKey:firstObject value:lastObject error:error];

      selfCopy = self;
      goto LABEL_10;
    }

    v18 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encoded string invalid: %@ (%@)", stringCopy, v7];
    v22 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v16 = v18;
    v17 = 3;
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v7 = NSStringFromClass(v13);
    v14 = [v12 stringWithFormat:@"Invalid class for encodedString - expected: %@ received: %@", v7, objc_opt_class()];
    v24[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v16 = v11;
    v17 = 1;
  }

  v19 = [v16 errorWithDomain:@"BMResourceDescriptorError" code:v17 userInfo:v15];
  if (error && v19)
  {
    v19 = v19;
    *error = v19;
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(BMResourceDescriptor *)self key];
    v7 = [v5 key];
    if ([v6 isEqual:v7])
    {
      value = [(BMResourceDescriptor *)self value];
      value2 = [v5 value];
      v10 = [value isEqual:value2];
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

  return v10;
}

- (unint64_t)hash
{
  v3 = [(BMResourceDescriptor *)self key];
  v4 = [v3 hash];
  value = [(BMResourceDescriptor *)self value];
  v6 = [value hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(BMResourceDescriptor *)self key];
  value = [(BMResourceDescriptor *)self value];
  v8 = [v3 initWithFormat:@"%@ - key: %@ value: %@", v5, v6, value];

  return v8;
}

- (BMResourceDescriptor)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"s"];

  if (v5)
  {
    v15 = 0;
    v6 = [(BMResourceDescriptor *)self initWithEncodedString:v5 error:&v15];
    v7 = v15;
    v8 = v6;
    self = v8;
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v11 = v8;
    }

    else
    {
      v10 = __biome_log_for_category(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138412802;
        v17 = v14;
        v18 = 2112;
        v19 = v5;
        v20 = 2112;
        v21 = v7;
        _os_log_error_impl(&dword_1AC15D000, v10, OS_LOG_TYPE_ERROR, "%@ could not unarchive descriptor from encoded string: %@, error: %@", buf, 0x20u);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodedString = [(BMResourceDescriptor *)self encodedString];
  [coderCopy encodeObject:encodedString forKey:@"s"];
}

@end