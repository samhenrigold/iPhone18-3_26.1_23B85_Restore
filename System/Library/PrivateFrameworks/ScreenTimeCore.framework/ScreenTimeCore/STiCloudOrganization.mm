@interface STiCloudOrganization
+ (id)fetchOrCreateiCloudOrganizationWithContext:(id)context error:(id *)error;
+ (id)fetchRequest;
+ (id)fetchWithContext:(id)context error:(id *)error;
- (BOOL)_validateNumberOfObjects:(id)objects;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
@end

@implementation STiCloudOrganization

+ (id)fetchWithContext:(id)context error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  fetchRequest = [self fetchRequest];
  v8 = [contextCopy executeFetchRequest:fetchRequest error:error];

  if (!v8)
  {
    goto LABEL_6;
  }

  if ([v8 count] < 2)
  {
    firstObject = [v8 firstObject];
    v14 = firstObject;
    if (firstObject)
    {
      v14 = firstObject;
      v15 = v14;
    }

    else
    {
      if (error)
      {
        v17 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E696A578];
        v26 = *MEMORY[0x1E696A578];
        v27 = @"There must be one Cloud Organization.";
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v20 = [v17 errorWithDomain:@"STErrorDomain" code:505 userInfo:v19];

        if (v20)
        {
          v21 = MEMORY[0x1E696ABC0];
          v24 = v18;
          v25 = @"There must be one Cloud Organization.";
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
          *error = [v21 errorWithDomain:@"STErrorDomain" code:505 userInfo:v22];
        }
      }

      v15 = 0;
    }

    goto LABEL_13;
  }

  if (!error || (v9 = MEMORY[0x1E696ABC0], v10 = *MEMORY[0x1E696A578], v30 = *MEMORY[0x1E696A578], v31[0] = @"There must be one and only one Cloud Organization object.", [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "errorWithDomain:code:userInfo:", @"STErrorDomain", 504, v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
  {
LABEL_6:
    v15 = 0;
    goto LABEL_14;
  }

  v13 = MEMORY[0x1E696ABC0];
  v28 = v10;
  v29 = @"There must be one and only one Cloud Organization object.";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [v13 errorWithDomain:@"STErrorDomain" code:504 userInfo:v14];
  *error = v15 = 0;
LABEL_13:

LABEL_14:

  return v15;
}

+ (id)fetchOrCreateiCloudOrganizationWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  fetchRequest = [self fetchRequest];
  v8 = [contextCopy executeFetchRequest:fetchRequest error:error];
  v9 = v8;
  if (v8)
  {
    if ([v8 count] >= 2)
    {
      v10 = +[STLog persistence];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        +[STiCloudOrganization fetchOrCreateiCloudOrganizationWithContext:error:];
      }
    }

    firstObject = [v9 firstObject];
    if (!firstObject)
    {
      firstObject = [[STiCloudOrganization alloc] initWithContext:contextCopy];
    }

    settings = [(STiCloudOrganization *)firstObject settings];
    if (!settings)
    {
      settings = [[STiCloudOrganizationSettings alloc] initWithContext:contextCopy];
      [(STiCloudOrganizationSettings *)settings setOrganization:firstObject];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)fetchRequest
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___STiCloudOrganization;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

- (BOOL)validateForUpdate:(id *)update
{
  v6.receiver = self;
  v6.super_class = STiCloudOrganization;
  v3 = [(STiCloudOrganization *)&v6 validateForUpdate:?];
  if (v3)
  {
    _os_feature_enabled_impl();
  }

  else
  {
    v4 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [STiCloudOrganization validateForUpdate:];
    }
  }

  return v3;
}

- (BOOL)validateForInsert:(id *)insert
{
  v10.receiver = self;
  v10.super_class = STiCloudOrganization;
  if ([(STiCloudOrganization *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STiCloudOrganization *)self _validateNumberOfObjects:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STiCloudOrganization validateForInsert:];
      }
    }

    v9.receiver = self;
    v9.super_class = STiCloudOrganization;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:insert otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STiCloudOrganization validateForInsert:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)delete
{
  v10.receiver = self;
  v10.super_class = STiCloudOrganization;
  if ([(STiCloudOrganization *)&v10 validateForDelete:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STiCloudOrganization *)self _validateNumberOfObjects:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STiCloudOrganization validateForDelete:];
      }
    }

    v9.receiver = self;
    v9.super_class = STiCloudOrganization;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:delete otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STiCloudOrganization validateForDelete:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateNumberOfObjects:(id)objects
{
  v14[1] = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v4 = +[STiCloudOrganization fetchRequest];
  v12 = 0;
  v5 = [v4 execute:&v12];
  v6 = v12;
  if (v5)
  {
    if ([v5 count] < 2)
    {
      v10 = 1;
      goto LABEL_7;
    }

    v7 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"There must be one and only one Cloud Organization object.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v7 errorWithDomain:@"STErrorDomain" code:504 userInfo:v8];
    [objectsCopy addObject:v9];
  }

  else
  {
    [objectsCopy addObject:v6];
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (void)fetchOrCreateiCloudOrganizationWithContext:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)validateForUpdate:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateForInsert:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateForInsert:.cold.2()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for insert on iCloudOrganization failed with error: %{public}@", v2, v3, v4, v5, v6);
}

- (void)validateForDelete:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateForDelete:.cold.2()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for delete on iCloudOrganization failed with error: %{public}@", v2, v3, v4, v5, v6);
}

@end