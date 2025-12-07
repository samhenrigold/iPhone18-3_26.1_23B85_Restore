@interface DMCPersonaHelper
+ (BOOL)isCurrentPersonaEnterprise;
+ (BOOL)personaWithUniqueIdentifierExists:(id)exists;
+ (BOOL)removePersona:(id)persona error:(id *)error;
+ (id)createEnterprisePersonaWithDevicePasscode:(id)passcode error:(id *)error;
+ (id)createEnterprisePersonaWithPasscodeData:(id)data passcodeDataType:(unint64_t)type error:(id *)error;
+ (id)currentPersonaID;
+ (id)currentPersonaTypeString;
+ (id)enterprisePersonaDisplayName;
+ (id)enterprisePersonaIdentifier;
+ (id)fetchDirtyPersonaIDs;
+ (id)performBlockUnderPersona:(id)persona block:(id)block;
+ (id)performBlockUnderPersonalPersona:(id)persona;
+ (void)removePersonaAndAccountsWithPersonaID:(id)d;
+ (void)setPersonaIdentifierForApps:(id)apps personaID:(id)d completionHandler:(id)handler;
+ (void)trackDirtyPersona:(id)persona;
+ (void)untrackAllDirtyPersonas;
+ (void)untrackDirtyPersona:(id)persona;
@end

@implementation DMCPersonaHelper

+ (id)createEnterprisePersonaWithDevicePasscode:(id)passcode error:(id *)error
{
  v6 = [passcode dataUsingEncoding:4];
  v7 = [self createEnterprisePersonaWithPasscodeData:v6 passcodeDataType:0 error:error];

  return v7;
}

+ (id)createEnterprisePersonaWithPasscodeData:(id)data passcodeDataType:(unint64_t)type error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v39 = *MEMORY[0x1E69DF0A8];
  v40[0] = &unk_1F28682A8;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__5;
  v35 = __Block_byref_object_dispose__5;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__5;
  v29 = __Block_byref_object_dispose__5;
  v30 = 0;
  v9 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __83__DMCPersonaHelper_createEnterprisePersonaWithPasscodeData_passcodeDataType_error___block_invoke;
  v21[3] = &unk_1E7ADCE60;
  v11 = v9;
  v22 = v11;
  v23 = &v31;
  v24 = &v25;
  [mEMORY[0x1E69DF068] createUserPersona:v8 passcodeData:dataCopy passcodeDataType:type completionHandler:v21];

  v12 = [v11 tryLockWhenCondition:1];
  if ((v12 & 1) == 0)
  {
    v14 = *DMCLogObjects(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_INFO, "Waiting for persona to be created...", buf, 2u);
    }

    [v11 lockWhenCondition:1];
  }

  [v11 unlock];
  v16 = v32[5];
  if (v16)
  {
    if (error)
    {
      *error = v16;
    }
  }

  else
  {
    v17 = *DMCLogObjects(0, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v26[5];
      *buf = 138543362;
      v38 = v18;
      _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_INFO, "Persona created with identifier %{public}@.", buf, 0xCu);
    }
  }

  v19 = v26[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v19;
}

void __83__DMCPersonaHelper_createEnterprisePersonaWithPasscodeData_passcodeDataType_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) lock];
  if (v6)
  {
    v9 = *DMCLogObjects(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v6;
      _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_ERROR, "Failed to create persona: %{public}@", &v14, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v10 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DF0B0]];
    v11 = [v10 copy];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  [*(a1 + 32) unlockWithCondition:1];
}

+ (BOOL)removePersona:(id)persona error:(id *)error
{
  v38[1] = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  v37 = *MEMORY[0x1E69DF0B0];
  v38[0] = personaCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v7 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __40__DMCPersonaHelper_removePersona_error___block_invoke;
  v23[3] = &unk_1E7ADCE88;
  v9 = v7;
  v24 = v9;
  v10 = personaCopy;
  v25 = v10;
  v26 = &v27;
  [mEMORY[0x1E69DF068] deleteUserPersonaWithProfileInfo:v6 passcodeData:0 completionHandler:v23];

  v11 = [v9 tryLockWhenCondition:1];
  if ((v11 & 1) == 0)
  {
    v13 = *DMCLogObjects(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_INFO, "Waiting for persona to be removed...", buf, 2u);
    }

    [v9 lockWhenCondition:1];
  }

  unlock = [v9 unlock];
  v16 = v28[5];
  if (v16)
  {
    v17 = objc_opt_new();
    v18 = v28[5];
    v19 = &stru_1F2860120;
    if (v10)
    {
      v19 = v10;
    }

    v35 = @"persona ID";
    v36 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    [v17 logErrorEventForTopic:@"Persona" reason:@"Persona Removal Failed" error:v18 details:v20];

    if (error)
    {
      *error = v28[5];
    }
  }

  else
  {
    v21 = *DMCLogObjects(unlock, v15);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v34 = v10;
      _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_INFO, "Persona with identifier %{public}@ removed.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v27, 8);
  return v16 == 0;
}

void __40__DMCPersonaHelper_removePersona_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [*(a1 + 32) lock];
  if (v4)
  {
    v7 = *DMCLogObjects(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_ERROR, "Failed to remove persona with identifier %{public}@: %{public}@", &v9, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  [*(a1 + 32) unlockWithCondition:1];
}

+ (void)removePersonaAndAccountsWithPersonaID:(id)d
{
  dCopy = d;
  [DMCPersonaHelper removePersona:dCopy error:0];
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  [defaultStore dmc_removeMAIDRelatedAccountsWithPersonaID:dCopy asynchronous:0];
}

+ (id)performBlockUnderPersonalPersona:(id)persona
{
  personaCopy = persona;
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  if (([currentPersona isPersonalPersona] & 1) != 0 || (objc_msgSend(currentPersona, "isSystemPersona") & 1) != 0 || (v6 = objc_msgSend(currentPersona, "isDefaultPersona"), v6))
  {
    personaCopy[2](personaCopy);
    v8 = 0;
  }

  else
  {
    v10 = *DMCLogObjects(v6, v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_DEFAULT, "DMCPersonaHelper: We are not under personal/system/default persona, will to switch to personal persona", buf, 2u);
    }

    v11 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
    v19 = v11;
    if (v11 && ([v11 userPersonaUniqueString], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v20, v21))
    {
      userPersonaUniqueString = [v19 userPersonaUniqueString];
      v23 = [DMCPersonaHelper performBlockUnderPersona:userPersonaUniqueString block:personaCopy];
    }

    else
    {
      v24 = MEMORY[0x1E696ABC0];
      userPersonaUniqueString = DMCErrorArray(@"PERSONA_ATTRIBUTE_FETCH_ERROR", v12, v13, v14, v15, v16, v17, v18, 0);
      v23 = [v24 DMCErrorWithDomain:@"DMCPersonaErrorDomain" code:55001 descriptionArray:userPersonaUniqueString errorType:@"DMCFatalError"];
    }

    v8 = v23;
  }

  return v8;
}

+ (id)performBlockUnderPersona:(id)persona block:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  blockCopy = block;
  if (!blockCopy)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  if (![personaCopy length])
  {
    v12 = DMCLogObjects(0, v7)[1];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_INFO, "performBlockUnderPersona: No persona provided, will just run the block", buf, 2u);
    }

    blockCopy[2](blockCopy);
    goto LABEL_8;
  }

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v21 = 0;
  v10 = [currentPersona copyCurrentPersonaContextWithError:&v21];
  v11 = v21;
  if (!v11)
  {
    v14 = [currentPersona createPersonaContextForBackgroundProcessingWithPersonaUniqueString:personaCopy];
    if (v14)
    {
      v11 = v14;
      v16 = DMCLogObjects(v14, v15)[1];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v23 = personaCopy;
        v24 = 2114;
        v25 = v11;
        _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_ERROR, "Failed to adopt persona:%{public}@ with error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      blockCopy[2](blockCopy);
      v17 = [currentPersona restorePersonaWithSavedPersonaContext:v10];
      if (v17)
      {
        v19 = DMCLogObjects(v17, v18)[1];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_ERROR, "Cannot restore persona context", buf, 2u);
        }

        v20 = [MEMORY[0x1E695DF30] exceptionWithName:@"PersonaRestorationFailedException" reason:@"The persona restoration failed" userInfo:0];
        objc_exception_throw(v20);
      }

      v11 = 0;
    }
  }

LABEL_9:

  return v11;
}

+ (id)currentPersonaID
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  userPersonaUniqueString = [currentPersona userPersonaUniqueString];

  return userPersonaUniqueString;
}

+ (BOOL)isCurrentPersonaEnterprise
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];
  isEnterprisePersona = [currentPersona isEnterprisePersona];

  return isEnterprisePersona;
}

+ (id)currentPersonaTypeString
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];
  userPersonaNickName = [currentPersona userPersonaNickName];

  return userPersonaNickName;
}

+ (id)enterprisePersonaIdentifier
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
  userPersonaUniqueString = [v2 userPersonaUniqueString];

  return userPersonaUniqueString;
}

+ (id)enterprisePersonaDisplayName
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
  userPersonaDisplayName = [v2 userPersonaDisplayName];

  return userPersonaDisplayName;
}

+ (void)setPersonaIdentifierForApps:(id)apps personaID:(id)d completionHandler:(id)handler
{
  appsCopy = apps;
  dCopy = d;
  handlerCopy = handler;
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__DMCPersonaHelper_setPersonaIdentifierForApps_personaID_completionHandler___block_invoke;
  v15[3] = &unk_1E7ADCED8;
  v16 = appsCopy;
  v17 = mEMORY[0x1E69DF068];
  v18 = dCopy;
  v19 = handlerCopy;
  v11 = handlerCopy;
  v12 = dCopy;
  v13 = mEMORY[0x1E69DF068];
  v14 = appsCopy;
  [v13 fetchBundleIdentifierForPersonaWithIDString:v12 completionHandler:v15];
}

void __76__DMCPersonaHelper_setPersonaIdentifierForApps_personaID_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = [MEMORY[0x1E695DFA8] setWithArray:v3];
  [v4 addObjectsFromArray:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = [v4 allObjects];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__DMCPersonaHelper_setPersonaIdentifierForApps_personaID_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7ADCEB0;
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v5 setBundlesIdentifiers:v6 forUniquePersonaWithIDString:v7 completionHandler:v8];
}

void __76__DMCPersonaHelper_setPersonaIdentifierForApps_personaID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = *DMCLogObjects(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_ERROR, "Failed to set bundle identifiers for persona with error: %{public}@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

+ (BOOL)personaWithUniqueIdentifierExists:(id)exists
{
  v11 = *MEMORY[0x1E69E9840];
  existsCopy = exists;
  v5 = *DMCLogObjects(existsCopy, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = existsCopy;
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_INFO, "fetchPersonaWithPersonaUniqueString: will fetch persona with persona ID: %@", &v9, 0xCu);
  }

  v6 = [MEMORY[0x1E69DF088] personaAttributesForPersonaUniqueString:existsCopy];
  v7 = v6 != 0;

  return v7;
}

+ (void)trackDirtyPersona:(id)persona
{
  v9[1] = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  v4 = [personaCopy length];
  if (v4)
  {
    v5 = MDMDirtyPersonaFilePath(v4);
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [defaultManager fileExistsAtPath:v5];

    if (v7)
    {
      v8 = [MEMORY[0x1E695DF70] arrayWithContentsOfFile:v5];
      [v8 addObject:personaCopy];
    }

    else
    {
      v9[0] = personaCopy;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    }

    [v8 writeToFile:v5 atomically:1];
    DMCSetSkipBackupAttributeToItemAtPath(v5, 1);
  }
}

+ (void)untrackDirtyPersona:(id)persona
{
  v16 = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  v4 = MDMDirtyPersonaFilePath(personaCopy);
  if ([personaCopy length])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [defaultManager fileExistsAtPath:v4];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithContentsOfFile:v4];
      [v7 removeObject:personaCopy];
      if ([v7 count])
      {
        [v7 writeToFile:v4 atomically:1];
        DMCSetSkipBackupAttributeToItemAtPath(v4, 1);
      }

      else
      {
        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        v13 = 0;
        [defaultManager2 removeItemAtPath:v4 error:&v13];
        v9 = v13;

        if (v9)
        {
          v12 = *DMCLogObjects(v10, v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v15 = v9;
            _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Failed to remove dirty persona file, error: %{public}@", buf, 0xCu);
          }
        }
      }
    }
  }
}

+ (void)untrackAllDirtyPersonas
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MDMDirtyPersonaFilePath(self);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager2 fileExistsAtPath:v2];

  if (v5)
  {
    v10 = 0;
    [defaultManager removeItemAtPath:v2 error:&v10];
    v6 = v10;
    if (v6)
    {
      v8 = v6;
      v9 = *DMCLogObjects(v6, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v8;
        _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_ERROR, "Failed to remove dirty persona file, error: %{public}@", buf, 0xCu);
      }
    }
  }
}

+ (id)fetchDirtyPersonaIDs
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = MDMDirtyPersonaFilePath(self);
  v4 = [v2 arrayWithContentsOfFile:v3];

  return v4;
}

@end