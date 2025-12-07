@interface STAskForTimeRequestResponse
+ (id)_fetchPredicateForAskForTimeRequest:(id)request requestingUserDSID:(id)d;
+ (id)fetchAskForTimeRequest:(id)request fromUser:(id)user inContext:(id)context error:(id *)error;
+ (id)fetchRequest;
+ (id)upsertAskForTimeRequest:(id)request fromUser:(id)user inContext:(id)context error:(id *)error;
- (BOOL)_validateFieldsOfRequesterResponder:(id)responder;
- (BOOL)_validateRequestingApplication:(id)application;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (void)awakeFromInsert;
@end

@implementation STAskForTimeRequestResponse

+ (id)upsertAskForTimeRequest:(id)request fromUser:(id)user inContext:(id)context error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  userCopy = user;
  contextCopy = context;
  fetchRequest = [self fetchRequest];
  dsid = [userCopy dsid];
  v16 = [self _fetchPredicateForAskForTimeRequest:requestCopy requestingUserDSID:dsid];
  [fetchRequest setPredicate:v16];

  v65 = 0;
  v17 = [fetchRequest execute:&v65];
  v18 = v65;
  v19 = v18;
  if (v17)
  {
    v64 = contextCopy;
    if ([v17 count])
    {
      firstObject = [v17 firstObject];
      requestedResourceIdentifier = +[STLog ask];
      if (!os_log_type_enabled(requestedResourceIdentifier, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:

        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        v56 = objc_opt_new();
        v57 = [currentCalendar nextDateAfterDate:v56 matchingHour:0 minute:0 second:0 options:1024];
        [(STAskForTimeRequestResponse *)firstObject setExpirationDate:v57];

        timeRequested = [requestCopy timeRequested];
        [(STAskForTimeRequestResponse *)firstObject setTimeRequested:timeRequested];

        firstObject = firstObject;
        v24 = firstObject;
LABEL_29:

        contextCopy = v64;
        goto LABEL_30;
      }

      identifier = [(STAskForTimeRequestResponse *)firstObject identifier];
      *buf = 138543618;
      v67 = firstObject;
      v68 = 2114;
      v69 = identifier;
      _os_log_impl(&dword_1B831F000, requestedResourceIdentifier, OS_LOG_TYPE_DEFAULT, "Updating existing ask for time request %{public}@ with identifier %{public}@", buf, 0x16u);
    }

    else
    {
      errorCopy = error;
      firstObject = [[STAskForTimeRequestResponse alloc] initWithContext:contextCopy];
      familySettings = [userCopy familySettings];
      organization = [familySettings organization];
      [(STAskForTimeRequestResponse *)firstObject setFamilyOrganization:organization];

      requestedResourceIdentifier = [requestCopy requestedResourceIdentifier];
      v27 = +[STLog ask];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        [requestCopy requestIdentifier];
        v28 = v62 = a2;
        *buf = 138543618;
        v67 = requestedResourceIdentifier;
        v68 = 2114;
        v69 = v28;
        _os_log_impl(&dword_1B831F000, v27, OS_LOG_TYPE_DEFAULT, "Adding new ask for time request for resource identifier %{public}@, request %{public}@", buf, 0x16u);

        a2 = v62;
      }

      usageType = [requestCopy usageType];
      [(STAskForTimeRequestResponse *)firstObject setUsageType:usageType];
      if (usageType == 2)
      {
        v44 = +[STLog ask];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          [(STAskForTimeRequestResponse *)requestedResourceIdentifier upsertAskForTimeRequest:v44 fromUser:v45 inContext:v46 error:v47, v48, v49, v50];
        }

        [(STAskForTimeRequestResponse *)firstObject setRequestedCategoryIdentifier:requestedResourceIdentifier];
      }

      else if (usageType == 1)
      {
        v37 = +[STLog ask];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          [(STAskForTimeRequestResponse *)requestedResourceIdentifier upsertAskForTimeRequest:v37 fromUser:v38 inContext:v39 error:v40, v41, v42, v43];
        }

        [(STAskForTimeRequestResponse *)firstObject setRequestedWebDomain:requestedResourceIdentifier];
      }

      else if (usageType)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v52 = a2;
        v53 = currentHandler;
        [currentHandler handleFailureInMethod:v52 object:self file:@"STAskForTimeRequestResponse.m" lineNumber:80 description:{@"Unexpected usage type %ld", usageType}];
      }

      else
      {
        v30 = +[STLog ask];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          [(STAskForTimeRequestResponse *)requestedResourceIdentifier upsertAskForTimeRequest:v30 fromUser:v31 inContext:v32 error:v33, v34, v35, v36];
        }

        [(STAskForTimeRequestResponse *)firstObject setRequestedApplicationBundleIdentifier:requestedResourceIdentifier];
      }

      requestedApplicationBundleIdentifier = [(STAskForTimeRequestResponse *)firstObject requestedApplicationBundleIdentifier];
      if (requestedApplicationBundleIdentifier || ([(STAskForTimeRequestResponse *)firstObject requestedWebDomain], (requestedApplicationBundleIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        requestedCategoryIdentifier = [(STAskForTimeRequestResponse *)firstObject requestedCategoryIdentifier];

        if (!requestedCategoryIdentifier)
        {
          if (errorCopy)
          {
            v61 = v19;
            *errorCopy = v19;
          }

          v24 = 0;
          goto LABEL_29;
        }
      }

      [(STAskForTimeRequestResponse *)firstObject setRequestingUser:userCopy];
      identifier = objc_opt_new();
      [(STAskForTimeRequestResponse *)firstObject setRequestTimeStamp:identifier];
    }

    goto LABEL_28;
  }

  if (error)
  {
    v23 = v18;
    v24 = 0;
    *error = v19;
  }

  else
  {
    v24 = 0;
  }

LABEL_30:

  return v24;
}

+ (id)fetchAskForTimeRequest:(id)request fromUser:(id)user inContext:(id)context error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  userCopy = user;
  requestCopy = request;
  fetchRequest = [self fetchRequest];
  dsid = [userCopy dsid];

  v13 = [self _fetchPredicateForAskForTimeRequest:requestCopy requestingUserDSID:dsid];

  [fetchRequest setPredicate:v13];
  v22 = 0;
  v14 = [fetchRequest execute:&v22];
  v15 = v22;
  v16 = v15;
  if (!v14)
  {
    if (error)
    {
      v20 = v15;
      firstObject = 0;
      *error = v16;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (![v14 count])
  {
LABEL_8:
    firstObject = 0;
    goto LABEL_9;
  }

  firstObject = [v14 firstObject];
  v18 = +[STLog ask];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [firstObject identifier];
    *buf = 138543618;
    v24 = firstObject;
    v25 = 2114;
    v26 = identifier;
    _os_log_impl(&dword_1B831F000, v18, OS_LOG_TYPE_DEFAULT, "Found existing ask for time request %{public}@ with identifier %{public}@", buf, 0x16u);
  }

LABEL_9:

  return firstObject;
}

+ (id)_fetchPredicateForAskForTimeRequest:(id)request requestingUserDSID:(id)d
{
  v30[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dCopy = d;
  usageType = [requestCopy usageType];
  requestedResourceIdentifier = [requestCopy requestedResourceIdentifier];
  switch(usageType)
  {
    case 2:
      v11 = MEMORY[0x1E696AE18];
      v12 = @"requestedCategoryIdentifier";
      goto LABEL_7;
    case 1:
      v11 = MEMORY[0x1E696AE18];
      v12 = @"requestedWebDomain";
      goto LABEL_7;
    case 0:
      v11 = MEMORY[0x1E696AE18];
      v12 = @"requestedApplicationBundleIdentifier";
LABEL_7:
      v13 = [v11 predicateWithFormat:@"(%K == %@)", v12, requestedResourceIdentifier];
      goto LABEL_9;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"STAskForTimeRequestResponse.m" lineNumber:139 description:{@"Unexpected usage type %ld", usageType}];

  v13 = 0;
LABEL_9:
  v15 = MEMORY[0x1E696AE18];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:usageType];
  v17 = objc_opt_new();
  v18 = [v15 predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K > %@) && (%K == NULL)", @"usageType", v16, @"requestingUser.dsid", dCopy, @"expirationDate", v17, @"respondingUser"];

  v19 = MEMORY[0x1E696AE18];
  requestIdentifier = [requestCopy requestIdentifier];
  v21 = [v19 predicateWithFormat:@"(%K == %@)", @"identifier", requestIdentifier];

  v22 = MEMORY[0x1E696AB28];
  v30[0] = v18;
  v30[1] = v13;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v24 = [v22 andPredicateWithSubpredicates:v23];

  v25 = MEMORY[0x1E696AB28];
  v29[0] = v24;
  v29[1] = v21;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v27 = [v25 orPredicateWithSubpredicates:v26];

  return v27;
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = STAskForTimeRequestResponse;
  [(STAskForTimeRequestResponse *)&v4 awakeFromInsert];
  v3 = objc_opt_new();
  [(STAskForTimeRequestResponse *)self setPrimitiveValue:v3 forKey:@"identifier"];
}

+ (id)fetchRequest
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___STAskForTimeRequestResponse;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

- (BOOL)validateForUpdate:(id *)update
{
  v10.receiver = self;
  v10.super_class = STAskForTimeRequestResponse;
  if ([(STAskForTimeRequestResponse *)&v10 validateForUpdate:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STAskForTimeRequestResponse *)self _validateRequestingApplication:v5];
    [(STAskForTimeRequestResponse *)self _validateFieldsOfRequesterResponder:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(STAskForTimeRequestResponse *)v5 validateForUpdate:v6];
      }
    }

    v9.receiver = self;
    v9.super_class = STAskForTimeRequestResponse;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:update otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STAskForTimeRequestResponse validateForUpdate:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)insert
{
  v10.receiver = self;
  v10.super_class = STAskForTimeRequestResponse;
  if ([(STAskForTimeRequestResponse *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STAskForTimeRequestResponse *)self _validateRequestingApplication:v5];
    [(STAskForTimeRequestResponse *)self _validateFieldsOfRequesterResponder:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [STAskForTimeRequestResponse validateForInsert:];
      }
    }

    v9.receiver = self;
    v9.super_class = STAskForTimeRequestResponse;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:insert otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STAskForTimeRequestResponse validateForInsert:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)delete
{
  v10.receiver = self;
  v10.super_class = STAskForTimeRequestResponse;
  if ([(STAskForTimeRequestResponse *)&v10 validateForDelete:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [STAskForTimeRequestResponse validateForDelete:];
      }
    }

    v9.receiver = self;
    v9.super_class = STAskForTimeRequestResponse;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:delete otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STAskForTimeRequestResponse validateForDelete:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateRequestingApplication:(id)application
{
  v33 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  v4 = +[STAskForTimeRequestResponse fetchRequest];
  v29 = 0;
  v5 = [v4 execute:&v29];
  v6 = v29;
  v7 = v6;
  if (!v5)
  {
    [applicationCopy addObject:v6];
    v21 = 0;
    goto LABEL_18;
  }

  v24 = v6;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = v5;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v26;
  v12 = *MEMORY[0x1E696A578];
  do
  {
    v13 = 0;
    do
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v25 + 1) + 8 * v13);
      requestedApplicationBundleIdentifier = [v14 requestedApplicationBundleIdentifier];
      if (requestedApplicationBundleIdentifier || ([v14 requestedWebDomain], (requestedApplicationBundleIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v16 = requestedApplicationBundleIdentifier;
LABEL_10:

        goto LABEL_11;
      }

      requestedCategoryIdentifier = [v14 requestedCategoryIdentifier];

      if (!requestedCategoryIdentifier)
      {
        v18 = MEMORY[0x1E696ABC0];
        v30 = v12;
        v31 = @"AskForTimeRequestResponse is missing a valid requested application identifer.";
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v19 = [v18 errorWithDomain:@"STErrorDomain" code:561 userInfo:v16];
        [applicationCopy addObject:v19];

        goto LABEL_10;
      }

LABEL_11:
      ++v13;
    }

    while (v10 != v13);
    v20 = [v8 countByEnumeratingWithState:&v25 objects:v32 count:16];
    v10 = v20;
  }

  while (v20);
LABEL_16:

  v21 = [applicationCopy count] == 0;
  v7 = v24;
  v5 = v23;
LABEL_18:

  return v21;
}

- (BOOL)_validateFieldsOfRequesterResponder:(id)responder
{
  v69 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  v4 = +[STAskForTimeRequestResponse fetchRequest];
  v55 = 0;
  v5 = [v4 execute:&v55];
  v6 = v55;
  v7 = v6;
  if (!v5)
  {
    [responderCopy addObject:v6];
    v44 = 0;
    goto LABEL_33;
  }

  v47 = v6;
  v48 = v4;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v46 = v5;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v51 objects:v68 count:16];
  if (!v8)
  {
    goto LABEL_31;
  }

  v9 = v8;
  v10 = *v52;
  v50 = *MEMORY[0x1E696A578];
  do
  {
    v11 = 0;
    do
    {
      if (*v52 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v51 + 1) + 8 * v11);
      if (v12)
      {
        requestingUser = [*(*(&v51 + 1) + 8 * v11) requestingUser];
        respondingUser = [v12 respondingUser];
        v15 = respondingUser;
        if (!(respondingUser | requestingUser))
        {
          v16 = MEMORY[0x1E696ABC0];
          v66 = v50;
          v67 = @"AskForTimeRequestResponse is missing a valid responding or requesting user.";
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          v18 = v16;
          v19 = 564;
          goto LABEL_10;
        }

        if (respondingUser)
        {
          respondingUser2 = [v12 respondingUser];
          familyMemberType = [respondingUser2 familyMemberType];

          if (familyMemberType != @"Adult")
          {
            v23 = MEMORY[0x1E696ABC0];
            v64 = v50;
            v65 = @"AskForTimeRequestResponse responding user is not an adult.";
            v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
            v25 = [v23 errorWithDomain:@"STErrorDomain" code:562 userInfo:v24];
            [responderCopy addObject:v25];
          }

          amountGranted = [v12 amountGranted];
          if (!amountGranted)
          {
            goto LABEL_19;
          }

          v27 = amountGranted;
          answer = [v12 answer];
          if (!answer)
          {

            goto LABEL_19;
          }

          v29 = answer;
          responseTimeStamp = [v12 responseTimeStamp];

          if (!responseTimeStamp)
          {
LABEL_19:
            v31 = MEMORY[0x1E696ABC0];
            v62 = v50;
            v63 = @"AskForTimeRequestResponse is missing a field from the responding user.";
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
            v33 = [v31 errorWithDomain:@"STErrorDomain" code:562 userInfo:v32];
            [responderCopy addObject:v33];
          }
        }

        if (requestingUser)
        {
          if (([requestingUser isManaged] & 1) == 0)
          {
            v34 = MEMORY[0x1E696ABC0];
            v60 = v50;
            v61 = @"AskForTimeRequestResponse requesting user is not managed.";
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
            v36 = [v34 errorWithDomain:@"STErrorDomain" code:565 userInfo:v35];
            [responderCopy addObject:v36];
          }

          familyMemberType2 = [requestingUser familyMemberType];

          if (familyMemberType2 != @"Child")
          {
            v38 = MEMORY[0x1E696ABC0];
            v58 = v50;
            v59 = @"AskForTimeRequestResponse requesting user is not a child.";
            v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
            v40 = [v38 errorWithDomain:@"STErrorDomain" code:566 userInfo:v39];
            [responderCopy addObject:v40];
          }

          timeRequested = [v12 timeRequested];

          if (!timeRequested)
          {
            v42 = MEMORY[0x1E696ABC0];
            v56 = v50;
            v57 = @"AskForTimeRequestResponse is missing a field from the requesting user.";
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
            v18 = v42;
            v19 = 563;
LABEL_10:
            v20 = [v18 errorWithDomain:@"STErrorDomain" code:v19 userInfo:{v17, v46, v47, v48}];
            [responderCopy addObject:v20];
          }
        }
      }

      ++v11;
    }

    while (v9 != v11);
    v43 = [obj countByEnumeratingWithState:&v51 objects:v68 count:16];
    v9 = v43;
  }

  while (v43);
LABEL_31:

  v44 = [responderCopy count] == 0;
  v7 = v47;
  v4 = v48;
  v5 = v46;
LABEL_33:

  return v44;
}

+ (void)upsertAskForTimeRequest:(uint64_t)a3 fromUser:(uint64_t)a4 inContext:(uint64_t)a5 error:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_3_0(&dword_1B831F000, a2, a3, "Associating category %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)upsertAskForTimeRequest:(uint64_t)a3 fromUser:(uint64_t)a4 inContext:(uint64_t)a5 error:(uint64_t)a6 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_3_0(&dword_1B831F000, a2, a3, "Associating web domain %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)upsertAskForTimeRequest:(uint64_t)a3 fromUser:(uint64_t)a4 inContext:(uint64_t)a5 error:(uint64_t)a6 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_3_0(&dword_1B831F000, a2, a3, "Associating app %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)validateForUpdate:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  v6 = 136446466;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v0, v1, "%{public}s Built-in CoreData Validation for update for AskForMoreTimeRequestResponse failed with: %{public}@", v2, v3, v4, v5, v6);
}

- (void)validateForUpdate:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136446466;
  v3 = "[STAskForTimeRequestResponse validateForUpdate:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "%{public}s Validate for update on AskForMoreTimeRequestResponse failed with error: %{public}@", &v2, 0x16u);
}

- (void)validateForInsert:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  v6 = 136446466;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v0, v1, "%{public}s Built-in CoreData Validation for insert on AskForMoreTimeRequestResponse failed with: %{public}@", v2, v3, v4, v5, v6);
}

- (void)validateForDelete:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  v6 = 136446466;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v0, v1, "%{public}s Built-in CoreData Validation for delete on AskForMoreTimeRequestResponse failed with: %{public}@", v2, v3, v4, v5, v6);
}

@end