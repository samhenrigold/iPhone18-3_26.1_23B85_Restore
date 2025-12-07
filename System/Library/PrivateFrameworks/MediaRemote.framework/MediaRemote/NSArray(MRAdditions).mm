@interface NSArray(MRAdditions)
- (id)changeDescriptionTo:()MRAdditions keyBlock:isUpdatedBlock:descriptionBlock:;
- (id)mr_compactMap:()MRAdditions;
- (id)mr_filter:()MRAdditions;
- (id)mr_first:()MRAdditions;
- (id)mr_flatMap:()MRAdditions;
- (id)mr_map:()MRAdditions;
- (uint64_t)mr_all:()MRAdditions;
- (uint64_t)mr_any:()MRAdditions;
- (uint64_t)mr_containsAnyOf:()MRAdditions;
@end

@implementation NSArray(MRAdditions)

- (uint64_t)mr_any:()MRAdditions
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (v4[2](v4, *(*(&v10 + 1) + 8 * i)))
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (uint64_t)mr_all:()MRAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (!v4[2](v4, *(*(&v12 + 1) + 8 * v9)))
        {
          v10 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (id)mr_first:()MRAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (uint64_t)mr_containsAnyOf:()MRAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([self containsObject:{*(*(&v11 + 1) + 8 * v8), v11}])
        {
          v9 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)mr_filter:()MRAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v13}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)mr_map:()MRAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObjectsFromArray:v11];
        }

        else if (v11)
        {
          [v5 addObject:{v11, v13}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)mr_flatMap:()MRAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObjectsFromArray:{v11, v13}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)mr_compactMap:()MRAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v13}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)changeDescriptionTo:()MRAdditions keyBlock:isUpdatedBlock:descriptionBlock:
{
  v118 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v70 = a5;
  v71 = a6;
  v12 = [self count];
  if (v12 <= [v10 count])
  {
    selfCopy = v10;
  }

  else
  {
    selfCopy = self;
  }

  v14 = [selfCopy count];
  v69 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
  v68 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
  v67 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
  v75 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = self;
  v16 = [obj countByEnumeratingWithState:&v107 objects:v117 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v108;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v108 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v11[2](v11, *(*(&v107 + 1) + 8 * i));
        if (!v20)
        {
          v73 = _MRLogForCategory(0);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            [NSArray(MRAdditions) changeDescriptionTo:v71 keyBlock:? isUpdatedBlock:? descriptionBlock:?];
          }

          v40 = 0;
          goto LABEL_67;
        }

        v21 = v20;
        [v75 addObject:v20];
      }

      v17 = [obj countByEnumeratingWithState:&v107 objects:v117 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  obj = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:obj forKeys:v75];
  v73 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v72 = v10;
  v22 = [v72 countByEnumeratingWithState:&v103 objects:v116 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v104;
    while (2)
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v104 != v24)
        {
          objc_enumerationMutation(v72);
        }

        v26 = v11[2](v11, *(*(&v103 + 1) + 8 * j));
        if (!v26)
        {
          v61 = _MRLogForCategory(0);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            [NSArray(MRAdditions) changeDescriptionTo:v71 keyBlock:? isUpdatedBlock:? descriptionBlock:?];
          }

          v40 = 0;
          goto LABEL_66;
        }

        v27 = v26;
        [v73 addObject:v26];
      }

      v23 = [v72 countByEnumeratingWithState:&v103 objects:v116 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v65 = v11;

  v28 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v72 forKeys:v73];
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __85__NSArray_MRAdditions__changeDescriptionTo_keyBlock_isUpdatedBlock_descriptionBlock___block_invoke;
  v96[3] = &unk_1E76A37A0;
  v29 = obj;
  v97 = v29;
  v101 = v70;
  v66 = v67;
  v98 = v66;
  v30 = v71;
  v102 = v30;
  v63 = v68;
  v99 = v63;
  v64 = v69;
  v100 = v64;
  v72 = v28;
  [v28 enumerateKeysAndObjectsUsingBlock:v96];
  v31 = [MEMORY[0x1E695DFA8] setWithArray:v75];
  v32 = [MEMORY[0x1E695DFD8] setWithArray:v73];
  [v31 minusSet:v32];

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v33 = v31;
  v34 = [v33 countByEnumeratingWithState:&v92 objects:v115 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v93;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v93 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [v29 objectForKeyedSubscript:*(*(&v92 + 1) + 8 * k)];
        v39 = (*(v30 + 2))(v30, v38);
        [v15 addObject:v39];
      }

      v35 = [v33 countByEnumeratingWithState:&v92 objects:v115 count:16];
    }

    while (v35);
  }

  if ([v66 count] || objc_msgSend(v64, "count") || objc_msgSend(v15, "count"))
  {
    v40 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v41 = v64;
    v42 = [v41 countByEnumeratingWithState:&v88 objects:v114 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v89;
      do
      {
        for (m = 0; m != v43; ++m)
        {
          if (*v89 != v44)
          {
            objc_enumerationMutation(v41);
          }

          [v40 appendFormat:@"+ %@\n", *(*(&v88 + 1) + 8 * m)];
        }

        v43 = [v41 countByEnumeratingWithState:&v88 objects:v114 count:16];
      }

      while (v43);
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v46 = v63;
    v47 = [v46 countByEnumeratingWithState:&v84 objects:v113 count:16];
    v11 = v65;
    if (v47)
    {
      v48 = v47;
      v49 = *v85;
      do
      {
        for (n = 0; n != v48; ++n)
        {
          if (*v85 != v49)
          {
            objc_enumerationMutation(v46);
          }

          [v40 appendFormat:@"  %@\n", *(*(&v84 + 1) + 8 * n)];
        }

        v48 = [v46 countByEnumeratingWithState:&v84 objects:v113 count:16];
      }

      while (v48);
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v51 = v66;
    v52 = [v51 countByEnumeratingWithState:&v80 objects:v112 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v81;
      do
      {
        for (ii = 0; ii != v53; ++ii)
        {
          if (*v81 != v54)
          {
            objc_enumerationMutation(v51);
          }

          [v40 appendFormat:@"* %@\n", *(*(&v80 + 1) + 8 * ii)];
        }

        v53 = [v51 countByEnumeratingWithState:&v80 objects:v112 count:16];
      }

      while (v53);
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v56 = v15;
    v57 = [v56 countByEnumeratingWithState:&v76 objects:v111 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v77;
      do
      {
        for (jj = 0; jj != v58; ++jj)
        {
          if (*v77 != v59)
          {
            objc_enumerationMutation(v56);
          }

          [v40 appendFormat:@"- %@\n", *(*(&v76 + 1) + 8 * jj)];
        }

        v58 = [v56 countByEnumeratingWithState:&v76 objects:v111 count:16];
      }

      while (v58);
    }
  }

  else
  {
    v40 = 0;
    v11 = v65;
  }

  v61 = v97;
LABEL_66:

LABEL_67:

  return v40;
}

- (void)changeDescriptionTo:()MRAdditions keyBlock:isUpdatedBlock:descriptionBlock:.cold.1(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v2, v3, "[changeDescription] Nil key returned for object: %{public}@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end