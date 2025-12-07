@interface DDSAssertionDataHandler
- (DDSAssertionDataHandler)initWithAssertionStorageFileURL:(id)l;
- (id)loadAssertionData;
- (void)saveAssertionData:(id)data;
@end

@implementation DDSAssertionDataHandler

- (DDSAssertionDataHandler)initWithAssertionStorageFileURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = DDSAssertionDataHandler;
  v5 = [(DDSAssertionDataHandler *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    assertionStorageFileURL = v5->_assertionStorageFileURL;
    v5->_assertionStorageFileURL = v6;
  }

  return v5;
}

- (id)loadAssertionData
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DEF0];
  assertionStorageFileURL = [(DDSAssertionDataHandler *)self assertionStorageFileURL];
  v17 = 0;
  v4 = [v2 dataWithContentsOfURL:assertionStorageFileURL options:0 error:&v17];
  v5 = v17;

  if (v4)
  {
    v7 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v9 = [v7 setWithArray:v8];

    v16 = 0;
    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v9 fromData:v4 error:&v16];
    v11 = v16;
    v12 = v11;
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v14 = DefaultLog(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [DDSAssertionDataHandler loadAssertionData];
      }

      v13 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v12 = DefaultLog(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DDSAssertionDataHandler loadAssertionData];
    }

    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

- (void)saveAssertionData:(id)data
{
  dataCopy = data;
  v15 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dataCopy requiringSecureCoding:1 error:&v15];
  v6 = v15;
  v7 = v6;
  if (v5)
  {
    assertionStorageFileURL = [(DDSAssertionDataHandler *)self assertionStorageFileURL];
    v14 = 0;
    v9 = [v5 writeToURL:assertionStorageFileURL options:1 error:&v14];
    v10 = v14;

    v12 = DefaultLog(v11);
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(DDSAssertionDataHandler *)self saveAssertionData:v13];
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DDSAssertionDataHandler saveAssertionData:];
    }
  }

  else
  {
    v10 = DefaultLog(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DDSAssertionDataHandler saveAssertionData:];
    }
  }
}

- (void)saveAssertionData:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_1DF7C6000, v1, OS_LOG_TYPE_ERROR, "Error (%{public}@) writing content: %{public}@", v2, 0x16u);
}

- (void)saveAssertionData:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 assertionStorageFileURL];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Saved assertion data to URL: (%{public}@)", v4, 0xCu);
}

@end