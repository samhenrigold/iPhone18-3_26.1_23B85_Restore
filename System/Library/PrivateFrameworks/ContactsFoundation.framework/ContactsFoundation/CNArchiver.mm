@interface CNArchiver
+ (id)decodeObjectOfClass:(Class)class associatedClasses:(id)classes data:(id)data error:(id *)error;
+ (id)os_log;
@end

@implementation CNArchiver

+ (id)os_log
{
  if (os_log_cn_once_token_1_11 != -1)
  {
    +[CNArchiver os_log];
  }

  v3 = os_log_cn_once_object_1_11;

  return v3;
}

uint64_t __20__CNArchiver_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "archiver");
  v1 = os_log_cn_once_object_1_11;
  os_log_cn_once_object_1_11 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)decodeObjectOfClass:(Class)class associatedClasses:(id)classes data:(id)data error:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  dataCopy = data;
  v43[0] = 0;
  v11 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:v43];
  v12 = v43[0];
  if (v11)
  {
    v13 = [MEMORY[0x1E695DFA8] setWithArray:classesCopy];
    [v13 addObject:class];
    v14 = *MEMORY[0x1E696A508];
    v42 = v12;
    v15 = [v11 decodeTopLevelObjectOfClasses:v13 forKey:v14 error:&v42];
    v16 = v42;

    if (v15)
    {
      if (objc_opt_isKindOfClass())
      {
        v17 = v15;
LABEL_22:

        v12 = v16;
        [v11 finishDecoding];
        goto LABEL_23;
      }

      if ([classesCopy count])
      {
        v34 = [classesCopy _cn_map:&__block_literal_global_9];
        v35 = [v34 componentsJoinedByString:{@", "}];

        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"or %@, by association", v35];
      }

      else
      {
        v36 = @"no associated classes";
      }

      v37 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"The decoded object was of type %@, but an object of type %@ (%@) was expected", objc_opt_class(), class, v36];
      v44 = *MEMORY[0x1E696A278];
      v45[0] = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v39 = [CNFoundationError errorWithCode:6 userInfo:v38];
      if (error)
      {
        v39 = v39;
        *error = v39;
      }
    }

    else
    {
      os_log = [self os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
      {
        [(CNArchiver *)v16 decodeObjectOfClass:os_log associatedClasses:v27 data:v28 error:v29, v30, v31, v32];
      }

      v33 = [CNFoundationError errorWithCode:6 underlyingError:v16];
      if (error)
      {
        v33 = v33;
        *error = v33;
      }
    }

    v17 = 0;
    goto LABEL_22;
  }

  os_log2 = [self os_log];
  if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
  {
    [(CNArchiver *)v12 decodeObjectOfClass:os_log2 associatedClasses:v19 data:v20 error:v21, v22, v23, v24];
  }

  v25 = [CNFoundationError errorWithCode:6 underlyingError:v12];
  if (error)
  {
    v25 = v25;
    *error = v25;
  }

  v17 = 0;
LABEL_23:

  return v17;
}

+ (void)decodeObjectOfClass:(uint64_t)a3 associatedClasses:(uint64_t)a4 data:(uint64_t)a5 error:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1859F0000, a2, a3, "error unarchiving object: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)decodeObjectOfClass:(uint64_t)a3 associatedClasses:(uint64_t)a4 data:(uint64_t)a5 error:(uint64_t)a6 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1859F0000, a2, a3, "exception while unarchiving object: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)decodeObjectOfClass:(uint64_t)a3 associatedClasses:(uint64_t)a4 data:(uint64_t)a5 error:(uint64_t)a6 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1859F0000, a2, a3, "error initializing unarchiver: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end