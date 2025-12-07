@interface PUIStyleSerialization
+ (id)dataForStyle:(id)style error:(id *)error;
+ (id)styleForData:(id)data error:(id *)error;
@end

@implementation PUIStyleSerialization

+ (id)dataForStyle:(id)style error:(id *)error
{
  styleCopy = style;
  v12 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:styleCopy requiringSecureCoding:1 error:&v12];
  v7 = v12;
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v7 = v7;
      *error = v8;
    }

    v9 = PUILogCommon(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(PUIStyleSerialization *)styleCopy dataForStyle:v8 error:v9];
    }

    v10 = 0;
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

+ (id)styleForData:(id)data error:(id *)error
{
  v17[5] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ACD0];
  v6 = MEMORY[0x1E695DFD8];
  dataCopy = data;
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v17[2] = objc_opt_class();
  v17[3] = objc_opt_class();
  v17[4] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
  v9 = [v6 setWithArray:v8];
  v16 = 0;
  v10 = [v5 _strictlyUnarchivedObjectOfClasses:v9 fromData:dataCopy error:&v16];

  v11 = v16;
  if (!v10)
  {
    v13 = PUILogCommon(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PUIStyleSerialization styleForData:v11 error:v13];
    }
  }

  if (error && v11)
  {
    v14 = v11;
    *error = v11;
  }

  return v10;
}

+ (void)dataForStyle:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A8C85000, log, OS_LOG_TYPE_ERROR, "Failed to archive %@: %{public}@", &v3, 0x16u);
}

+ (void)styleForData:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1A8C85000, a2, OS_LOG_TYPE_DEBUG, "Unable to unarchive content style: %{public}@", &v2, 0xCu);
}

@end