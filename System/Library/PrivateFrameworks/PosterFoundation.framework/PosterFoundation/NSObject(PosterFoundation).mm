@interface NSObject(PosterFoundation)
+ (id)pf_secureDecodedFromData:()PosterFoundation classReplacementMap:;
+ (id)pf_secureDecodedFromData:()PosterFoundation ofClasses:classReplacementMap:;
@end

@implementation NSObject(PosterFoundation)

+ (id)pf_secureDecodedFromData:()PosterFoundation classReplacementMap:
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v12 = 0;
    goto LABEL_21;
  }

  v9 = v7;
  v10 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 length];
    v12 = 0;
    if (!self || !v11)
    {
      goto LABEL_20;
    }

    v13 = objc_autoreleasePoolPush();
    v21 = 0;
    v14 = [MEMORY[0x1E696ACD0] pf_unarchivedObjectOfClass:self fromData:v10 classReplacementMap:v9 error:&v21];
    v15 = v21;
    v16 = v15;
    if (v15)
    {
      v17 = PFLogCommon(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [NSObject(PosterFoundation) pf_secureDecodedFromData:self classReplacementMap:?];
      }
    }

    if (v14)
    {
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v12 = v14;
LABEL_19:

        objc_autoreleasePoolPop(v13);
        goto LABEL_20;
      }

      if (!v16)
      {
        v19 = PFLogCommon(isKindOfClass);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [NSObject(PosterFoundation) pf_secureDecodedFromData:self classReplacementMap:v14];
        }
      }
    }

    v12 = 0;
    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

LABEL_21:

  return v12;
}

+ (id)pf_secureDecodedFromData:()PosterFoundation ofClasses:classReplacementMap:
{
  v41 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v27 = 0;
    goto LABEL_32;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:&selfCopy count:1];
  v11 = v10;
  if (v8)
  {
    [v10 unionSet:v8];
  }

  v12 = v11;
  v13 = v9;
  v14 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 length] && objc_msgSend(v12, "count"))
  {
    v15 = objc_autoreleasePoolPush();
    v39 = 0;
    v16 = [MEMORY[0x1E696ACD0] pf_unarchivedObjectOfClasses:v12 fromData:v14 classReplacementMap:v13 error:&v39];
    v17 = v39;
    v33 = v17;
    if (v17)
    {
      v18 = PFLogCommon(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [NSObject(PosterFoundation) pf_secureDecodedFromData:v33 ofClasses:v18 classReplacementMap:?];
      }
    }

    if (v16)
    {
      v31 = v15;
      v32 = v13;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v19 = v12;
      v20 = [v19 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v36;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(v19);
            }

            if (objc_opt_isKindOfClass())
            {

              v25 = v16;
              goto LABEL_36;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v35 objects:v40 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      if (v33)
      {
        v25 = 0;
LABEL_36:
        v15 = v31;
        v13 = v32;
        goto LABEL_41;
      }

      v30 = PFLogCommon(v24);
      v15 = v31;
      v13 = v32;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [NSObject(PosterFoundation) pf_secureDecodedFromData:v19 ofClasses:v16 classReplacementMap:?];
      }
    }

    v25 = 0;
LABEL_41:

    objc_autoreleasePoolPop(v15);
    goto LABEL_23;
  }

  v25 = 0;
LABEL_23:

  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v27 = v25;
  }

  else
  {
    if (v25)
    {
      v28 = PFLogCommon(isKindOfClass);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [NSObject(PosterFoundation) pf_secureDecodedFromData:v25 ofClasses:? classReplacementMap:?];
      }
    }

    v27 = 0;
  }

LABEL_32:

  return v27;
}

+ (void)pf_secureDecodedFromData:()PosterFoundation classReplacementMap:.cold.1(objc_class *a1)
{
  v6 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)pf_secureDecodedFromData:()PosterFoundation classReplacementMap:.cold.2(objc_class *a1, uint64_t a2)
{
  v2 = NSStringFromClass(a1);
  v3 = objc_opt_class();
  v9 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)pf_secureDecodedFromData:()PosterFoundation ofClasses:classReplacementMap:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C269D000, a2, OS_LOG_TYPE_ERROR, "Error during decoding of data: %{public}@", &v2, 0xCu);
}

+ (void)pf_secureDecodedFromData:()PosterFoundation ofClasses:classReplacementMap:.cold.2(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)pf_secureDecodedFromData:()PosterFoundation ofClasses:classReplacementMap:.cold.3(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

@end