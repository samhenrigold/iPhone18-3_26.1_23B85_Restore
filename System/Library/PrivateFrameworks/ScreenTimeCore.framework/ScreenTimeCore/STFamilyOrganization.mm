@interface STFamilyOrganization
+ (id)fetchOrCreateFamilyOrganizationWithContext:(id)context error:(id *)error;
+ (id)fetchRequest;
+ (id)fetchWithContext:(id)context error:(id *)error;
- (BOOL)_validateNumberOfObjects:(id)objects;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
@end

@implementation STFamilyOrganization

+ (id)fetchWithContext:(id)context error:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  fetchRequest = [self fetchRequest];
  v8 = [fetchRequest execute:error];
  v9 = v8;
  if (!v8)
  {
    firstObject = 0;
    goto LABEL_39;
  }

  if ([v8 count] >= 2)
  {
    v10 = +[STLog persistence];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      +[STFamilyOrganization fetchWithContext:error:];
    }

    v53 = 0;
    v11 = [STCoreUser fetchLocalUserInContext:contextCopy error:&v53];
    v12 = v53;
    if (!v11)
    {
      v13 = +[STLog persistence];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        +[STFamilyOrganization fetchWithContext:error:];
      }
    }

    familySettings = [v11 familySettings];
    organization = [familySettings organization];

    v16 = +[STLog persistence];
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (organization)
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v16, OS_LOG_TYPE_DEFAULT, "Preserving family organization associated with the local user's family settings.", buf, 2u);
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v18 = v9;
      v19 = [v18 countByEnumeratingWithState:&v49 objects:v60 count:16];
      if (!v19)
      {
        goto LABEL_37;
      }

      v20 = v19;
      v41 = v12;
      v42 = v11;
      v43 = v9;
      v44 = fetchRequest;
      v21 = *v50;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v50 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v49 + 1) + 8 * i);
          if (v23 != organization)
          {
            v24 = v23;
            v25 = contextCopy;
            v26 = +[STLog persistence];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *v61 = 138543362;
              v62 = v24;
              _os_log_error_impl(&dword_1B831F000, v26, OS_LOG_TYPE_ERROR, "Deleting extraneous family organization: %{public}@", v61, 0xCu);
            }

            settings = [v24 settings];
            *buf = MEMORY[0x1E69E9820];
            v55 = 3221225472;
            v56 = __deleteExtraneousFamilyOrganizationAndChildObjects_block_invoke;
            v57 = &unk_1E7CE7480;
            v58 = v25;
            v28 = v25;
            [settings enumerateObjectsUsingBlock:buf];

            [v28 deleteObject:v24];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v49 objects:v60 count:16];
      }

      while (v20);
    }

    else
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v16, OS_LOG_TYPE_DEFAULT, "Preserving first family organization returned from fetch request.", buf, 2u);
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v30 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{1, objc_msgSend(v9, "count") - 1}];
      v18 = [v9 objectsAtIndexes:v30];

      v31 = [v18 countByEnumeratingWithState:&v45 objects:v59 count:16];
      if (!v31)
      {
        goto LABEL_37;
      }

      v32 = v31;
      v41 = v12;
      v42 = v11;
      v43 = v9;
      v44 = fetchRequest;
      v33 = *v46;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v46 != v33)
          {
            objc_enumerationMutation(v18);
          }

          v35 = *(*(&v45 + 1) + 8 * j);
          v36 = contextCopy;
          v37 = +[STLog persistence];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *v61 = 138543362;
            v62 = v35;
            _os_log_error_impl(&dword_1B831F000, v37, OS_LOG_TYPE_ERROR, "Deleting extraneous family organization: %{public}@", v61, 0xCu);
          }

          settings2 = [v35 settings];
          *buf = MEMORY[0x1E69E9820];
          v55 = 3221225472;
          v56 = __deleteExtraneousFamilyOrganizationAndChildObjects_block_invoke;
          v57 = &unk_1E7CE7480;
          v58 = v36;
          v39 = v36;
          [settings2 enumerateObjectsUsingBlock:buf];

          [v39 deleteObject:v35];
        }

        v32 = [v18 countByEnumeratingWithState:&v45 objects:v59 count:16];
      }

      while (v32);
    }

    v9 = v43;
    fetchRequest = v44;
    v12 = v41;
    v11 = v42;
LABEL_37:
  }

  firstObject = [v9 firstObject];
LABEL_39:

  return firstObject;
}

+ (id)fetchOrCreateFamilyOrganizationWithContext:(id)context error:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  fetchRequest = [self fetchRequest];
  v7 = [fetchRequest execute:error];
  v8 = v7;
  if (!v7)
  {
    firstObject = 0;
    goto LABEL_42;
  }

  if ([v7 count] >= 2)
  {
    v9 = +[STLog persistence];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      +[STFamilyOrganization fetchWithContext:error:];
    }

    v54 = 0;
    v10 = [STCoreUser fetchLocalUserInContext:contextCopy error:&v54];
    v11 = v54;
    if (!v10)
    {
      v12 = +[STLog persistence];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        +[STFamilyOrganization fetchWithContext:error:];
      }
    }

    familySettings = [v10 familySettings];
    organization = [familySettings organization];

    v15 = +[STLog persistence];
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (organization)
    {
      if (v16)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B831F000, v15, OS_LOG_TYPE_DEFAULT, "Preserving family organization associated with the local user's family settings.", &buf, 2u);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v17 = v8;
      v18 = [v17 countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (!v18)
      {
        goto LABEL_37;
      }

      v19 = v18;
      v41 = v11;
      v42 = v10;
      v43 = v8;
      v44 = fetchRequest;
      v20 = *v51;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v51 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v50 + 1) + 8 * i);
          if (v22 != organization)
          {
            v23 = v22;
            v24 = contextCopy;
            v25 = +[STLog persistence];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *v61 = 138543362;
              v62 = v23;
              _os_log_error_impl(&dword_1B831F000, v25, OS_LOG_TYPE_ERROR, "Deleting extraneous family organization: %{public}@", v61, 0xCu);
            }

            settings = [v23 settings];
            *&buf = MEMORY[0x1E69E9820];
            *(&buf + 1) = 3221225472;
            v58 = __deleteExtraneousFamilyOrganizationAndChildObjects_block_invoke;
            v59 = &unk_1E7CE7480;
            v60 = v24;
            v27 = v24;
            [settings enumerateObjectsUsingBlock:&buf];

            [v27 deleteObject:v23];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v19);
    }

    else
    {
      if (v16)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B831F000, v15, OS_LOG_TYPE_DEFAULT, "Preserving first family organization returned from fetch request.", &buf, 2u);
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v29 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{1, objc_msgSend(v8, "count") - 1}];
      v17 = [v8 objectsAtIndexes:v29];

      v30 = [v17 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (!v30)
      {
        goto LABEL_37;
      }

      v31 = v30;
      v41 = v11;
      v42 = v10;
      v43 = v8;
      v44 = fetchRequest;
      v32 = *v47;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v47 != v32)
          {
            objc_enumerationMutation(v17);
          }

          v34 = *(*(&v46 + 1) + 8 * j);
          v35 = contextCopy;
          v36 = +[STLog persistence];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *v61 = 138543362;
            v62 = v34;
            _os_log_error_impl(&dword_1B831F000, v36, OS_LOG_TYPE_ERROR, "Deleting extraneous family organization: %{public}@", v61, 0xCu);
          }

          settings2 = [v34 settings];
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v58 = __deleteExtraneousFamilyOrganizationAndChildObjects_block_invoke;
          v59 = &unk_1E7CE7480;
          v60 = v35;
          v38 = v35;
          [settings2 enumerateObjectsUsingBlock:&buf];

          [v38 deleteObject:v34];
        }

        v31 = [v17 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v31);
    }

    v8 = v43;
    fetchRequest = v44;
    v11 = v41;
    v10 = v42;
LABEL_37:
  }

  firstObject = [v8 firstObject];
  if (!firstObject)
  {
    firstObject = [[STFamilyOrganization alloc] initWithContext:contextCopy];
    v39 = +[STLog persistence];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = firstObject;
      _os_log_impl(&dword_1B831F000, v39, OS_LOG_TYPE_DEFAULT, "Created a family organization. Family Organization; %@", &buf, 0xCu);
    }
  }

LABEL_42:

  return firstObject;
}

+ (id)fetchRequest
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___STFamilyOrganization;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

- (BOOL)validateForUpdate:(id *)update
{
  v10.receiver = self;
  v10.super_class = STFamilyOrganization;
  if ([(STFamilyOrganization *)&v10 validateForUpdate:?])
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
        [STFamilyOrganization validateForUpdate:];
      }
    }

    v9.receiver = self;
    v9.super_class = STFamilyOrganization;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:update otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STFamilyOrganization validateForUpdate:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)insert
{
  v10.receiver = self;
  v10.super_class = STFamilyOrganization;
  if ([(STFamilyOrganization *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STFamilyOrganization *)self _validateNumberOfObjects:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STFamilyOrganization validateForInsert:];
      }
    }

    v9.receiver = self;
    v9.super_class = STFamilyOrganization;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:insert otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STFamilyOrganization validateForInsert:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)delete
{
  v10.receiver = self;
  v10.super_class = STFamilyOrganization;
  if ([(STFamilyOrganization *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STFamilyOrganization *)self _validateNumberOfObjects:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STFamilyOrganization validateForDelete:];
      }
    }

    v9.receiver = self;
    v9.super_class = STFamilyOrganization;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:delete otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STFamilyOrganization validateForDelete:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateNumberOfObjects:(id)objects
{
  v32[1] = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v4 = +[STCoreUser fetchRequestMatchingLocalUser];
  v26 = 0;
  v5 = [v4 execute:&v26];
  v6 = v26;
  if (v5)
  {
    firstObject = [v5 firstObject];
    v8 = +[STFamilyOrganization fetchRequest];
    v25 = v6;
    v9 = [v8 execute:&v25];
    v10 = v25;

    if (!v9)
    {
      [objectsCopy addObject:v10];
LABEL_17:
      v18 = 0;
      goto LABEL_18;
    }

    familyMemberType = [firstObject familyMemberType];
    v12 = familyMemberType;
    if (familyMemberType == @"Unknown")
    {
    }

    else
    {
      familyMemberType2 = [firstObject familyMemberType];

      if (familyMemberType2)
      {
        if (![v9 count])
        {
          v22 = MEMORY[0x1E696ABC0];
          v29 = *MEMORY[0x1E696A578];
          v30 = @"There must be one Family Organization objects for the local user.";
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          v20 = v22;
          v21 = 507;
          goto LABEL_16;
        }

        if ([v9 count] >= 2)
        {
          v14 = MEMORY[0x1E696ABC0];
          v27 = *MEMORY[0x1E696A578];
          v28 = @"There must be one and only one Family Organization objects for the local user.";
          v15 = MEMORY[0x1E695DF20];
          v16 = &v28;
          v17 = &v27;
LABEL_13:
          v19 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
          v20 = v14;
          v21 = 506;
LABEL_16:
          v23 = [v20 errorWithDomain:@"STErrorDomain" code:v21 userInfo:v19];
          [objectsCopy addObject:v23];

          goto LABEL_17;
        }

        goto LABEL_14;
      }
    }

    if ([v9 count])
    {
      v14 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A578];
      v32[0] = @"There must be 0 Family Organization objects for a local user with no iCloud signed in.";
      v15 = MEMORY[0x1E695DF20];
      v16 = v32;
      v17 = &v31;
      goto LABEL_13;
    }

LABEL_14:
    v18 = 1;
LABEL_18:

    goto LABEL_19;
  }

  [objectsCopy addObject:v6];
  v18 = 0;
  v10 = v6;
LABEL_19:

  return v18;
}

+ (void)fetchWithContext:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)fetchWithContext:error:.cold.2()
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

- (void)validateForUpdate:.cold.2()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for update on FamilyOrganization failed with error: %{public}@", v2, v3, v4, v5, v6);
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
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for insert on FamilyOrganization failed with error: %{public}@", v2, v3, v4, v5, v6);
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
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for delete on FamilyOrganization failed with error: %{public}@", v2, v3, v4, v5, v6);
}

@end