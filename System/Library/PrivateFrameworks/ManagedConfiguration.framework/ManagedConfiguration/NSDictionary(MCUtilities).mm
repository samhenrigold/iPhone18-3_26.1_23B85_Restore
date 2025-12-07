@interface NSDictionary(MCUtilities)
+ (id)MCDictionaryFromFile:()MCUtilities;
+ (id)MCShortenedArray:()MCUtilities;
+ (id)MCShortenedData:()MCUtilities;
+ (id)MCShortenedDictionary:()MCUtilities;
+ (id)MCShortenedObject:()MCUtilities;
- (id)MCDictionaryAdditiveDeltaToCreateDictionary:()MCUtilities;
- (id)MCDictionarySubtractiveDeltaToCreateDictionary:()MCUtilities;
- (id)MCDictionaryWithLeafValuesSetToValue:()MCUtilities;
- (id)MCInsertedKeysFromDictionary:()MCUtilities withNewLeafValue:;
- (id)MCRemovedKeysFromDictionary:()MCUtilities;
- (id)MCRetainRequiredNonZeroLengthStringKey:()MCUtilities errorDomain:missingDataCode:missingDataErrorString:invalidDataCode:invalidDataErrorString:outError:;
- (id)MCRetainRequiredObjectKey:()MCUtilities type:errorDomain:missingDataCode:missingDataErrorString:invalidDataCode:invalidDataErrorString:outError:;
- (id)MCShortenedPlistDescription;
- (uint64_t)MCValidateBoolRestriction:()MCUtilities inRestrictions:defaultRestrictions:;
- (uint64_t)MCValidateIntersectionRestriction:()MCUtilities inRestrictions:defaultRestrictions:;
- (uint64_t)MCValidateRestrictions;
- (uint64_t)MCValidateUnionRestriction:()MCUtilities inRestrictions:defaultRestrictions:;
- (uint64_t)MCValidateValueRestriction:()MCUtilities inRestrictions:defaultRestrictions:;
- (uint64_t)MCWriteToBinaryFile:()MCUtilities;
- (uint64_t)MCWriteToBinaryFile:()MCUtilities atomically:;
- (void)MCMutableDeepCopyWithZone:()MCUtilities;
- (void)MCRetainOptionalNonZeroLengthStringKey:()MCUtilities errorDomain:invalidDataCode:invalidDataErrorString:outError:;
- (void)MCRetainOptionalObjectKey:()MCUtilities type:errorDomain:invalidDataCode:invalidDataErrorString:outError:;
@end

@implementation NSDictionary(MCUtilities)

- (uint64_t)MCWriteToBinaryFile:()MCUtilities
{
  v4 = a3;
  v5 = [[MCDictionaryWriter alloc] initWithDictionary:self path:v4];

  write = [(MCDictionaryWriter *)v5 write];
  return write;
}

- (uint64_t)MCWriteToBinaryFile:()MCUtilities atomically:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v17 = 0;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:self format:200 options:0 error:&v17];
  v9 = v17;
  if (v8)
  {
    v16 = 0;
    v10 = [v8 writeToFile:v6 options:a4 error:&v16];
    v11 = v16;
    if (v10)
    {
      v12 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = v6;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_ERROR, "Could not serialize data for %{public}@: %{public}@", buf, 0x16u);
    }

    v11 = 0;
  }

  v14 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v19 = v6;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_ERROR, "Could not write data to path %{public}@: %{public}@", buf, 0x16u);
  }

  v12 = 0;
LABEL_10:

  objc_autoreleasePoolPop(v7);
  return v12;
}

+ (id)MCDictionaryFromFile:()MCUtilities
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  v9 = 0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v4 error:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = v3;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "Failed to make dictionary from file at path: %{public}@ with error: %{public}@", buf, 0x16u);
    }
  }

  return v5;
}

- (void)MCMutableDeepCopyWithZone:()MCUtilities
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [self keyEnumerator];
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = v10;
        if ([v10 conformsToProtocol:&unk_1F1AC0DC8])
        {
          v11 = [v10 mutableCopyWithZone:a3];
        }

        v12 = [self objectForKey:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 MCMutableDeepCopyWithZone:a3];
LABEL_13:
          v14 = v13;
          [v5 setObject:v13 forKey:v11];

          goto LABEL_14;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || [v12 conformsToProtocol:&unk_1F1AC0DC8])
        {
          v13 = [v12 mutableCopyWithZone:a3];
          goto LABEL_13;
        }

        if ([v12 conformsToProtocol:&unk_1F1AB3400])
        {
          v13 = [v12 copyWithZone:a3];
          goto LABEL_13;
        }

        [v5 setObject:v12 forKey:v11];
LABEL_14:

        ++v9;
      }

      while (v7 != v9);
      v15 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      v7 = v15;
    }

    while (v15);
  }

  return v5;
}

- (id)MCRetainRequiredObjectKey:()MCUtilities type:errorDomain:missingDataCode:missingDataErrorString:invalidDataCode:invalidDataErrorString:outError:
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a9;
  v26 = [self objectForKey:v15];
  if (v26)
  {
    if (objc_opt_isKindOfClass())
    {
      v34 = v26;
      goto LABEL_10;
    }

    if (a10)
    {
      v40 = MEMORY[0x1E696ABC0];
      v36 = MCErrorArray(v18, v27, v28, v29, v30, v31, v32, v33, v15);
      v37 = v40;
      v38 = v16;
      v39 = a8;
      goto LABEL_8;
    }
  }

  else if (a10)
  {
    v35 = MEMORY[0x1E696ABC0];
    v36 = MCErrorArray(v17, v19, v20, v21, v22, v23, v24, v25, v15);
    v37 = v35;
    v38 = v16;
    v39 = a6;
LABEL_8:
    *a10 = [v37 MCErrorWithDomain:v38 code:v39 descriptionArray:v36 errorType:@"MCFatalError"];
  }

  v34 = 0;
LABEL_10:

  return v34;
}

- (void)MCRetainOptionalObjectKey:()MCUtilities type:errorDomain:invalidDataCode:invalidDataErrorString:outError:
{
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v16 = [self objectForKey:v13];
  if (v16 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a8)
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = MCErrorArray(v15, v17, v18, v19, v20, v21, v22, v23, v13);
      *a8 = [v24 MCErrorWithDomain:v14 code:a6 descriptionArray:v25 errorType:@"MCFatalError"];

      a8 = 0;
    }
  }

  else
  {
    a8 = v16;
  }

  return a8;
}

- (id)MCRetainRequiredNonZeroLengthStringKey:()MCUtilities errorDomain:missingDataCode:missingDataErrorString:invalidDataCode:invalidDataErrorString:outError:
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v19 = [self objectForKey:v15];
  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a9)
    {
      v35 = MEMORY[0x1E696ABC0];
      v36 = MCErrorArray(v18, v20, v21, v22, v23, v24, v25, v26, v15);
      v37 = v35;
      v38 = v16;
      v39 = a7;
LABEL_9:
      *a9 = [v37 MCErrorWithDomain:v38 code:v39 descriptionArray:v36 errorType:@"MCFatalError"];
    }
  }

  else
  {
    if ([v19 length])
    {
      v34 = v19;
      goto LABEL_11;
    }

    if (a9)
    {
      v40 = MEMORY[0x1E696ABC0];
      v36 = MCErrorArray(v17, v27, v28, v29, v30, v31, v32, v33, v15);
      v37 = v40;
      v38 = v16;
      v39 = a5;
      goto LABEL_9;
    }
  }

  v34 = 0;
LABEL_11:

  return v34;
}

- (void)MCRetainOptionalNonZeroLengthStringKey:()MCUtilities errorDomain:invalidDataCode:invalidDataErrorString:outError:
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [self objectForKey:v12];
  if (!v15)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v15 length])
    {
LABEL_4:
      a7 = v15;
      goto LABEL_8;
    }
  }

  else
  {
    if (!a7)
    {
      goto LABEL_8;
    }

    v23 = MEMORY[0x1E696ABC0];
    v24 = MCErrorArray(v14, v16, v17, v18, v19, v20, v21, v22, v12);
    *a7 = [v23 MCErrorWithDomain:v13 code:a5 descriptionArray:v24 errorType:@"MCFatalError"];
  }

  a7 = 0;
LABEL_8:

  return a7;
}

- (id)MCShortenedPlistDescription
{
  v2 = [objc_opt_class() MCShortenedDictionary:self];
  v3 = [v2 description];

  return v3;
}

+ (id)MCShortenedObject:()MCUtilities
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self MCShortenedArray:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [self MCShortenedDictionary:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [self MCShortenedData:v4];
      }

      else
      {
        v5 = v4;
      }
    }
  }

  v6 = v5;

  return v6;
}

+ (id)MCShortenedData:()MCUtilities
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 length];
    v5 = MEMORY[0x1E696AEC0];
    if (v4 > 0x10)
    {
      mCHexString3 = [v3 subdataWithRange:{0, 8}];
      mCHexString = [mCHexString3 MCHexString];
      v9 = [v3 subdataWithRange:{objc_msgSend(v3, "length") - 8, 8}];
      mCHexString2 = [v9 MCHexString];
      v7 = [v5 stringWithFormat:@"0x%@ ... 0x%@", mCHexString, mCHexString2];
    }

    else
    {
      mCHexString3 = [v3 MCHexString];
      v7 = [v5 stringWithFormat:@"0x%@", mCHexString3];
    }
  }

  else
  {
    v7 = @"<empty>";
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Data { length = %lu, bytes = %@ }", objc_msgSend(v3, "length"), v7];

  return v11;
}

+ (id)MCShortenedArray:()MCUtilities
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self MCShortenedObject:{*(*(&v13 + 1) + 8 * i), v13}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)MCShortenedDictionary:()MCUtilities
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__NSDictionary_MCUtilities__MCShortenedDictionary___block_invoke;
  v9[3] = &unk_1E77CFE90;
  v7 = v6;
  v10 = v7;
  selfCopy = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

- (uint64_t)MCValidateRestrictions
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = +[MCRestrictionManager sharedManager];
  defaultRestrictions = [v2 defaultRestrictions];

  [self objectForKeyedSubscript:@"restrictedBool"];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = v41 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![self MCValidateBoolRestriction:*(*(&v38 + 1) + 8 * v8) inRestrictions:v4 defaultRestrictions:defaultRestrictions])
        {
          v24 = 0;
          v9 = v4;
          goto LABEL_41;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v38 objects:v45 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [self objectForKeyedSubscript:@"restrictedValue"];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = v37 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (![self MCValidateValueRestriction:*(*(&v34 + 1) + 8 * v13) inRestrictions:v9 defaultRestrictions:defaultRestrictions])
        {
          v24 = 0;
          v14 = v9;
          goto LABEL_40;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  [self objectForKeyedSubscript:@"intersection"];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v33 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    while (2)
    {
      v18 = 0;
      do
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (![self MCValidateIntersectionRestriction:*(*(&v30 + 1) + 8 * v18) inRestrictions:v14 defaultRestrictions:defaultRestrictions])
        {
          v24 = 0;
          v19 = v14;
          goto LABEL_39;
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v30 objects:v43 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  [self objectForKeyedSubscript:@"union"];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = v29 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    while (2)
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        if (![self MCValidateUnionRestriction:*(*(&v26 + 1) + 8 * v23) inRestrictions:v19 defaultRestrictions:{defaultRestrictions, v26}])
        {
          v24 = 0;
          goto LABEL_38;
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v26 objects:v42 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v24 = 1;
LABEL_38:

LABEL_39:
LABEL_40:

LABEL_41:
  return v24;
}

- (uint64_t)MCValidateBoolRestriction:()MCUtilities inRestrictions:defaultRestrictions:
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKeyedSubscript:@"restrictedBool"];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:v7];
    v12 = [v11 objectForKeyedSubscript:@"preference"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 objectForKeyedSubscript:v7];
      v13 = [v10 objectForKeyedSubscript:@"value"];

      objc_opt_class();
      LOBYTE(v10) = objc_opt_isKindOfClass();
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10 & 1;
}

- (uint64_t)MCValidateValueRestriction:()MCUtilities inRestrictions:defaultRestrictions:
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKeyedSubscript:@"restrictedValue"];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:v7];
    v12 = [v11 objectForKeyedSubscript:@"preferSmallerValues"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 objectForKeyedSubscript:v7];
      v13 = [v10 objectForKeyedSubscript:@"value"];

      objc_opt_class();
      LOBYTE(v10) = objc_opt_isKindOfClass();
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10 & 1;
}

- (uint64_t)MCValidateIntersectionRestriction:()MCUtilities inRestrictions:defaultRestrictions:
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKeyedSubscript:@"intersection"];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:v7];
    v12 = [v11 objectForKeyedSubscript:@"values"];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (uint64_t)MCValidateUnionRestriction:()MCUtilities inRestrictions:defaultRestrictions:
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKeyedSubscript:@"union"];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:v7];
    v12 = [v11 objectForKeyedSubscript:@"values"];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)MCDictionaryAdditiveDeltaToCreateDictionary:()MCUtilities
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [self objectForKeyedSubscript:{v11, v16}];
        v13 = [v6 objectForKeyedSubscript:v11];
        if (!v12)
        {
          goto LABEL_11;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_11;
        }

        if ([v13 isEqual:v12])
        {
          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v12 MCDictionaryAdditiveDeltaToCreateDictionary:v13];
          [v5 setObject:v14 forKeyedSubscript:v11];
        }

        else
        {
LABEL_11:
          [v5 setObject:v13 forKeyedSubscript:v11];
        }

LABEL_12:
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)MCDictionarySubtractiveDeltaToCreateDictionary:()MCUtilities
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [selfCopy objectForKeyedSubscript:{v11, v16}];
        v13 = [v4 objectForKeyedSubscript:v11];
        if (v13)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v13 isEqual:v12] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [v12 MCDictionarySubtractiveDeltaToCreateDictionary:v13];
              if ([v14 count])
              {
                [v5 setObject:v14 forKeyedSubscript:v11];
              }
            }
          }
        }

        else
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)MCRemovedKeysFromDictionary:()MCUtilities
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    selfCopy = self;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [self objectForKeyedSubscript:v11];
        v13 = [v6 objectForKeyedSubscript:v11];
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v14 = v5;
            v15 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v12];
            v16 = [v15 MCRemovedKeysFromDictionary:v13];

            v5 = v14;
            if ([v16 count])
            {
              [v14 setObject:v16 forKeyedSubscript:v11];
            }

            else
            {
              [v14 removeObjectForKey:v11];
            }

            self = selfCopy;
          }

          else
          {
            [v5 removeObjectForKey:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)MCInsertedKeysFromDictionary:()MCUtilities withNewLeafValue:
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v23 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v6;
  v24 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v24)
  {
    selfCopy = self;
    v22 = *v26;
    v20 = v8;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [self objectForKeyedSubscript:v10];
        v12 = [v8 objectForKeyedSubscript:v10];
        v13 = v12;
        if (v7)
        {
          v14 = v7;
        }

        else
        {
          v14 = v12;
        }

        v15 = v14;
        v16 = v13;
        if (v7)
        {
          objc_opt_class();
          v16 = v7;
          if (objc_opt_isKindOfClass())
          {
            v16 = [v13 MCDictionaryWithLeafValuesSetToValue:v7];
          }
        }

        if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v11];
          v18 = [v17 MCInsertedKeysFromDictionary:v13 withNewLeafValue:v7];

          v8 = v20;
          [v23 setObject:v18 forKeyedSubscript:v10];

          self = selfCopy;
        }

        else
        {
          [v23 setObject:v16 forKeyedSubscript:v10];
        }
      }

      v24 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v24);
  }

  return v23;
}

- (id)MCDictionaryWithLeafValuesSetToValue:()MCUtilities
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [selfCopy objectForKeyedSubscript:{v11, v15}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 MCDictionaryWithLeafValuesSetToValue:v4];
          [v5 setObject:v13 forKeyedSubscript:v11];
        }

        else
        {
          [v5 setObject:v4 forKeyedSubscript:v11];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

@end