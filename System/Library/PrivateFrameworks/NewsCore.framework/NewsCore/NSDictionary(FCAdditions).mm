@interface NSDictionary(FCAdditions)
+ (id)fc_dictionaryByAddingEntriesFromDictionary:()FCAdditions toDictionary:;
+ (id)fc_dictionaryFromArray:()FCAdditions keyBlock:valueBlock:;
+ (id)fc_dictionaryFromJSON:()FCAdditions error:;
+ (id)fc_dictionaryWithKeys:()FCAdditions allowingNil:valueBlock:;
+ (id)fc_dictionaryWithKeys:()FCAdditions valueWithIndexBlock:;
+ (id)fc_dictionaryWithObjects:()FCAdditions keyBlock:;
+ (void)fc_dictionary:()FCAdditions;
- (id)fc_arrayByTransformingWithKeyAndValueBlock:()FCAdditions;
- (id)fc_deepCopy;
- (id)fc_dictionaryByMergingDictionary:()FCAdditions withValueCombiner:;
- (id)fc_dictionaryByRemovingObjectForKey:()FCAdditions;
- (id)fc_dictionaryBySwappingValuesAndKeys;
- (id)fc_dictionaryByTransformingKeysWithBlock:()FCAdditions;
- (id)fc_dictionaryByTransformingKeysWithKeyAndValueBlock:()FCAdditions;
- (id)fc_dictionaryByTransformingValuesWithBlock:()FCAdditions;
- (id)fc_dictionaryByTransformingValuesWithKeyAndValueBlock:()FCAdditions;
- (id)fc_jsonString;
- (id)fc_jsonStringWithObjectHandler:()FCAdditions arrayObjectHandler:dictionaryKeyHandler:dictionaryValueHandler:;
- (id)fc_jsonStringWithOmittedUnsupportedDataTypes;
- (id)fc_safeObjectForKey:()FCAdditions;
- (id)fc_sortedEntriesWithKeyBlock:()FCAdditions;
- (id)fc_subdictionaryForKeys:()FCAdditions;
- (id)fc_subdictionaryWithCopiesForKeys:()FCAdditions;
- (id)fr_descriptionWithKeyComparator:()FCAdditions;
- (id)nf_mutableObjectsForKeysWithoutMarker:()FCAdditions;
- (void)fc_jsonEncodableDictionaryWithObjectHandler:()FCAdditions arrayObjectHandler:dictionaryKeyHandler:dictionaryValueHandler:;
@end

@implementation NSDictionary(FCAdditions)

+ (void)fc_dictionary:()FCAdditions
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = v7;

  return v7;
}

+ (id)fc_dictionaryFromJSON:()FCAdditions error:
{
  v5 = [a3 dataUsingEncoding:4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:a4];
    v8 = FCCheckedDynamicCast(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)fc_dictionaryFromArray:()FCAdditions keyBlock:valueBlock:
{
  v7 = MEMORY[0x1E695DF20];
  v8 = a4;
  v9 = a3;
  v10 = [v9 fc_arrayByTransformingWithBlock:a5];
  v11 = [v9 fc_arrayByTransformingWithBlock:v8];

  v12 = [v7 dictionaryWithObjects:v10 forKeys:v11];

  return v12;
}

- (id)fc_dictionaryByTransformingKeysWithKeyAndValueBlock:()FCAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock"];
    *buf = 136315906;
    v16 = "[NSDictionary(FCAdditions) fc_dictionaryByTransformingKeysWithKeyAndValueBlock:]";
    v17 = 2080;
    v18 = "NSDictionary+FCAdditions.m";
    v19 = 1024;
    v20 = 53;
    v21 = 2114;
    v22 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__NSDictionary_FCAdditions__fc_dictionaryByTransformingKeysWithKeyAndValueBlock___block_invoke;
  v12[3] = &unk_1E7C44718;
  v14 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:v12];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)fc_dictionaryByTransformingKeysWithBlock:()FCAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock"];
    *buf = 136315906;
    v16 = "[NSDictionary(FCAdditions) fc_dictionaryByTransformingKeysWithBlock:]";
    v17 = 2080;
    v18 = "NSDictionary+FCAdditions.m";
    v19 = 1024;
    v20 = 68;
    v21 = 2114;
    v22 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__NSDictionary_FCAdditions__fc_dictionaryByTransformingKeysWithBlock___block_invoke;
  v12[3] = &unk_1E7C44718;
  v14 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:v12];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)fc_sortedEntriesWithKeyBlock:()FCAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock"];
    *buf = 136315906;
    v16 = "[NSDictionary(FCAdditions) fc_sortedEntriesWithKeyBlock:]";
    v17 = 2080;
    v18 = "NSDictionary+FCAdditions.m";
    v19 = 1024;
    v20 = 83;
    v21 = 2114;
    v22 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__NSDictionary_FCAdditions__fc_sortedEntriesWithKeyBlock___block_invoke;
  v12[3] = &unk_1E7C44718;
  v14 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:v12];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)fc_dictionaryByTransformingValuesWithKeyAndValueBlock:()FCAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock"];
    *buf = 136315906;
    v16 = "[NSDictionary(FCAdditions) fc_dictionaryByTransformingValuesWithKeyAndValueBlock:]";
    v17 = 2080;
    v18 = "NSDictionary+FCAdditions.m";
    v19 = 1024;
    v20 = 106;
    v21 = 2114;
    v22 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__NSDictionary_FCAdditions__fc_dictionaryByTransformingValuesWithKeyAndValueBlock___block_invoke;
  v12[3] = &unk_1E7C44718;
  v14 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:v12];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)fc_dictionaryByTransformingValuesWithBlock:()FCAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock"];
    *buf = 136315906;
    v16 = "[NSDictionary(FCAdditions) fc_dictionaryByTransformingValuesWithBlock:]";
    v17 = 2080;
    v18 = "NSDictionary+FCAdditions.m";
    v19 = 1024;
    v20 = 121;
    v21 = 2114;
    v22 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__NSDictionary_FCAdditions__fc_dictionaryByTransformingValuesWithBlock___block_invoke;
  v12[3] = &unk_1E7C44718;
  v14 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:v12];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)fc_dictionaryByRemovingObjectForKey:()FCAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 removeObjectForKey:v4];

  return v5;
}

+ (id)fc_dictionaryWithObjects:()FCAdditions keyBlock:
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "keyBlock"];
    *buf = 136315906;
    v25 = "+[NSDictionary(FCAdditions) fc_dictionaryWithObjects:keyBlock:]";
    v26 = 2080;
    v27 = "NSDictionary+FCAdditions.m";
    v28 = 1024;
    v29 = 143;
    v30 = 2114;
    v31 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    v12 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = v6[2](v6, v14);
        if (v15)
        {
          [v7 setObject:v14 forKeyedSubscript:v15];
        }

        else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "key"];
          *buf = 136315906;
          v25 = "+[NSDictionary(FCAdditions) fc_dictionaryWithObjects:keyBlock:]";
          v26 = 2080;
          v27 = "NSDictionary+FCAdditions.m";
          v28 = 1024;
          v29 = 149;
          v30 = 2114;
          v31 = v16;
          _os_log_error_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)fc_dictionaryWithKeys:()FCAdditions allowingNil:valueBlock:
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "valueBlock"];
    *buf = 136315906;
    v28 = "+[NSDictionary(FCAdditions) fc_dictionaryWithKeys:allowingNil:valueBlock:]";
    v29 = 2080;
    v30 = "NSDictionary+FCAdditions.m";
    v31 = 1024;
    v32 = 161;
    v33 = 2114;
    v34 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    v13 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = v8[2](v8, v15);
        v17 = v16;
        if ((a4 & 1) != 0 || v16)
        {
          if (v16)
          {
            [v21 setObject:v16 forKeyedSubscript:v15];
          }
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "value"];
          *buf = 136315906;
          v28 = "+[NSDictionary(FCAdditions) fc_dictionaryWithKeys:allowingNil:valueBlock:]";
          v29 = 2080;
          v30 = "NSDictionary+FCAdditions.m";
          v31 = 1024;
          v32 = 170;
          v33 = 2114;
          v34 = v18;
          _os_log_error_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  return v21;
}

+ (id)fc_dictionaryWithKeys:()FCAdditions valueWithIndexBlock:
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "valueWithIndexBlock"];
    *buf = 136315906;
    v18 = "+[NSDictionary(FCAdditions) fc_dictionaryWithKeys:valueWithIndexBlock:]";
    v19 = 2080;
    v20 = "NSDictionary+FCAdditions.m";
    v21 = 1024;
    v22 = 190;
    v23 = 2114;
    v24 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__NSDictionary_FCAdditions__fc_dictionaryWithKeys_valueWithIndexBlock___block_invoke;
  v14[3] = &unk_1E7C43AC8;
  v16 = v6;
  v8 = v7;
  v15 = v8;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v14];
  v10 = v15;
  v11 = v8;

  return v8;
}

- (id)nf_mutableObjectsForKeysWithoutMarker:()FCAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
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

        v11 = [self objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)fc_subdictionaryForKeys:()FCAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [self objectForKeyedSubscript:{v11, v14}];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)fc_subdictionaryWithCopiesForKeys:()FCAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [self objectForKeyedSubscript:{v11, v15}];
        v13 = [v12 copy];

        if (v13)
        {
          [v5 setObject:v13 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)fc_deepCopy
{
  allKeys = [self allKeys];
  v3 = [self fc_subdictionaryWithCopiesForKeys:allKeys];

  return v3;
}

- (id)fc_dictionaryBySwappingValuesAndKeys
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [selfCopy objectForKeyedSubscript:{v8, v11}];
        [v2 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

+ (id)fc_dictionaryByAddingEntriesFromDictionary:()FCAdditions toDictionary:
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  dictionary = [v5 dictionary];
  [dictionary addEntriesFromDictionary:v6];

  [dictionary addEntriesFromDictionary:v7];

  return dictionary;
}

- (id)fr_descriptionWithKeyComparator:()FCAdditions
{
  v4 = MEMORY[0x1E696AD60];
  v5 = a3;
  v6 = [v4 stringWithString:@"{\n"];
  allKeys = [self allKeys];
  v8 = [allKeys sortedArrayUsingComparator:v5];

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __61__NSDictionary_FCAdditions__fr_descriptionWithKeyComparator___block_invoke;
  v15 = &unk_1E7C38AA8;
  v16 = v6;
  selfCopy = self;
  v9 = v6;
  [v8 enumerateObjectsUsingBlock:&v12];

  [v9 appendString:{@"}", v12, v13, v14, v15}];
  v10 = [v9 copy];

  return v10;
}

- (id)fc_jsonStringWithOmittedUnsupportedDataTypes
{
  objc_opt_class();
  v3 = fc_JSONEncodableObjectWithObjectHandlers(self, 0, 0, 0, 0);
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  fc_jsonString = [v5 fc_jsonString];

  return fc_jsonString;
}

- (void)fc_jsonEncodableDictionaryWithObjectHandler:()FCAdditions arrayObjectHandler:dictionaryKeyHandler:dictionaryValueHandler:
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  objc_opt_class();
  v14 = fc_JSONEncodableObjectWithObjectHandlers(self, v13, v12, v11, v10);

  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

- (id)fc_jsonStringWithObjectHandler:()FCAdditions arrayObjectHandler:dictionaryKeyHandler:dictionaryValueHandler:
{
  v1 = [self fc_jsonEncodableDictionaryWithObjectHandler:? arrayObjectHandler:? dictionaryKeyHandler:? dictionaryValueHandler:?];
  fc_jsonString = [v1 fc_jsonString];

  return fc_jsonString;
}

- (id)fc_jsonString
{
  v4 = 0;
  v1 = [MEMORY[0x1E696ACB0] dataWithJSONObject:self options:0 error:&v4];
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v1 encoding:4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)fc_dictionaryByMergingDictionary:()FCAdditions withValueCombiner:
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695DF20];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__NSDictionary_FCAdditions__fc_dictionaryByMergingDictionary_withValueCombiner___block_invoke;
  v13[3] = &unk_1E7C44768;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 fc_dictionary:v13];

  return v11;
}

- (id)fc_safeObjectForKey:()FCAdditions
{
  if (a3)
  {
    v4 = [self objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)fc_arrayByTransformingWithKeyAndValueBlock:()FCAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__NSDictionary_FCAdditions__fc_arrayByTransformingWithKeyAndValueBlock___block_invoke;
  v11[3] = &unk_1E7C44790;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

@end