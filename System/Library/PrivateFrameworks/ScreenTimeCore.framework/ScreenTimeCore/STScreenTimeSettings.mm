@interface STScreenTimeSettings
+ (id)fetchRequest;
+ (id)fetchScreenTimeSettingsInContext:(id)context error:(id *)error;
- (BOOL)_validateCurrentOrganization:(id)organization;
- (BOOL)_validateNumberOfObjects:(id)objects;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
@end

@implementation STScreenTimeSettings

+ (id)fetchRequest
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___STScreenTimeSettings;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

+ (id)fetchScreenTimeSettingsInContext:(id)context error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  fetchRequest = [self fetchRequest];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v37[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  [fetchRequest setSortDescriptors:v7];

  v28 = 0;
  v8 = [fetchRequest execute:&v28];
  v9 = v28;
  v10 = v9;
  if (v8)
  {
    if ([v8 count] < 2)
    {
      firstObject = [v8 firstObject];
      v17 = firstObject;
      if (firstObject)
      {
        v20 = firstObject;
      }

      else if (error)
      {
        v22 = MEMORY[0x1E696ABC0];
        v23 = *MEMORY[0x1E696A578];
        v31 = *MEMORY[0x1E696A578];
        v32 = @"screen time settings not found";
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v25 = [v22 errorWithDomain:@"STErrorDomain" code:9 userInfo:v24];

        if (v25)
        {
          v26 = MEMORY[0x1E696ABC0];
          v29 = v23;
          v30 = @"screen time settings not found";
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          *error = [v26 errorWithDomain:@"STErrorDomain" code:9 userInfo:v27];
        }
      }
    }

    else
    {
      if (error)
      {
        v11 = MEMORY[0x1E696ABC0];
        v12 = *MEMORY[0x1E696A578];
        v35 = *MEMORY[0x1E696A578];
        v36 = @"There must be one and only once ScreenTimeSettings object.";
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v14 = [v11 errorWithDomain:@"STErrorDomain" code:502 userInfo:v13];

        if (v14)
        {
          v15 = MEMORY[0x1E696ABC0];
          v33 = v12;
          v34 = @"There must be one and only once ScreenTimeSettings object.";
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          *error = [v15 errorWithDomain:@"STErrorDomain" code:502 userInfo:v16];
        }
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    if (error && v9)
    {
      v18 = v9;
      v17 = 0;
      *error = v10;
    }
  }

  return v17;
}

- (BOOL)validateForUpdate:(id *)update
{
  v10.receiver = self;
  v10.super_class = STScreenTimeSettings;
  if ([(STScreenTimeSettings *)&v10 validateForUpdate:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STScreenTimeSettings validateForUpdate:];
      }
    }

    v9.receiver = self;
    v9.super_class = STScreenTimeSettings;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:update otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STScreenTimeSettings validateForUpdate:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)insert
{
  v10.receiver = self;
  v10.super_class = STScreenTimeSettings;
  if ([(STScreenTimeSettings *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STScreenTimeSettings *)self _validateNumberOfObjects:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STScreenTimeSettings validateForInsert:];
      }
    }

    v9.receiver = self;
    v9.super_class = STScreenTimeSettings;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:insert otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STScreenTimeSettings validateForInsert:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)delete
{
  v10.receiver = self;
  v10.super_class = STScreenTimeSettings;
  if ([(STScreenTimeSettings *)&v10 validateForDelete:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STScreenTimeSettings *)self _validateNumberOfObjects:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STScreenTimeSettings validateForDelete:];
      }
    }

    v9.receiver = self;
    v9.super_class = STScreenTimeSettings;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:delete otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STScreenTimeSettings validateForDelete:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateCurrentOrganization:(id)organization
{
  v20[1] = *MEMORY[0x1E69E9840];
  organizationCopy = organization;
  currentOrganization = [(STScreenTimeSettings *)self currentOrganization];

  if (!currentOrganization)
  {
    v6 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = @"The ScreenTimeSettings object must always contain a currentOrganization.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:21 userInfo:v7];
    [organizationCopy addObject:v8];
  }

  currentOrganization2 = [(STScreenTimeSettings *)self currentOrganization];
  if (currentOrganization2)
  {
    v10 = currentOrganization2;
    currentOrganization3 = [(STScreenTimeSettings *)self currentOrganization];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_7:

      goto LABEL_8;
    }

    currentOrganization4 = [(STScreenTimeSettings *)self currentOrganization];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v14 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v18 = @"The ScreenTimeSettings object references an unsupported organization class.";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      currentOrganization3 = [v14 errorWithDomain:@"STErrorDomain" code:503 userInfo:v10];
      [organizationCopy addObject:currentOrganization3];
      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = [organizationCopy count] == 0;

  return v15;
}

- (BOOL)_validateNumberOfObjects:(id)objects
{
  v19[1] = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v4 = +[STScreenTimeSettings fetchRequest];
  v15 = 0;
  v5 = [v4 execute:&v15];
  v6 = v15;
  if (v5)
  {
    if ([v5 count] >= 2)
    {
      v7 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v19[0] = @"There must be one and only one ScreenTimeSettings object.";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v9 = [v7 errorWithDomain:@"STErrorDomain" code:502 userInfo:v8];
      [objectsCopy addObject:v9];
    }

    if (![v5 count])
    {
      v10 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A578];
      v17 = @"There must be one ScreenTimeSettings object.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v12 = [v10 errorWithDomain:@"STErrorDomain" code:9 userInfo:v11];
      [objectsCopy addObject:v12];
    }

    v13 = [objectsCopy count] == 0;
  }

  else
  {
    [objectsCopy addObject:v6];
    v13 = 0;
  }

  return v13;
}

- (void)validateForUpdate:.cold.1()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v0, v1, "%{public}s Built-in CoreData Validation for update on ScreenTimeSettings failed with: %{public}@", v2, v3, v4, v5, v6);
}

- (void)validateForUpdate:.cold.2()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for Update on ScreenTimeSettings failed with error: %{public}@", v2, v3, v4, v5, v6);
}

- (void)validateForInsert:.cold.1()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v0, v1, "%{public}s Built-in CoreData Validation for insert on ScreenTimeSettings failed with: %{public}@", v2, v3, v4, v5, v6);
}

- (void)validateForInsert:.cold.2()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for Insert on ScreenTimeSettings failed with error: %{public}@", v2, v3, v4, v5, v6);
}

- (void)validateForDelete:.cold.1()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v0, v1, "%{public}s Built-in CoreData Validation for delete on ScreenTimeSettings failed with: %{public}@", v2, v3, v4, v5, v6);
}

- (void)validateForDelete:.cold.2()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for Delete on ScreenTimeSettings failed with error: %{public}@", v2, v3, v4, v5, v6);
}

@end