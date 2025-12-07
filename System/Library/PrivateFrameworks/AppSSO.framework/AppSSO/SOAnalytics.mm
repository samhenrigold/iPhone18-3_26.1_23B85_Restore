@interface SOAnalytics
+ (void)analyticsForMDMProfiles:(id)profiles reason:(id)reason;
@end

@implementation SOAnalytics

+ (void)analyticsForMDMProfiles:(id)profiles reason:(id)reason
{
  v19 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  reasonCopy = reason;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [profilesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(profilesCopy);
        }

        v11 = MEMORY[0x1E69E9820];
        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = reasonCopy;
        AnalyticsSendEventLazy();
      }

      v8 = [profilesCopy countByEnumeratingWithState:&v14 objects:v18 count:{16, v11, 3221225472, __46__SOAnalytics_analyticsForMDMProfiles_reason___block_invoke, &unk_1E813EE48, v12}];
    }

    while (v8);
  }
}

id __46__SOAnalytics_analyticsForMDMProfiles_reason___block_invoke(uint64_t a1)
{
  v49[21] = *MEMORY[0x1E69E9840];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v2 = getPOProfileClass_softClass;
  v47 = getPOProfileClass_softClass;
  if (!getPOProfileClass_softClass)
  {
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __getPOProfileClass_block_invoke;
    v42 = &unk_1E813E230;
    v43 = &v44;
    __getPOProfileClass_block_invoke(&v39);
    v2 = v45[3];
  }

  v3 = v2;
  _Block_object_dispose(&v44, 8);
  v4 = [[v2 alloc] initWithProfile:*(a1 + 32)];
  if (!v4)
  {
    if (SO_LOG_SOAnalytics_once != -1)
    {
      __46__SOAnalytics_analyticsForMDMProfiles_reason___block_invoke_cold_1();
    }

    v5 = SO_LOG_SOAnalytics_log;
    if (os_log_type_enabled(SO_LOG_SOAnalytics_log, OS_LOG_TYPE_ERROR))
    {
      __46__SOAnalytics_analyticsForMDMProfiles_reason___block_invoke_cold_2(v5);
    }
  }

  v49[0] = *(a1 + 40);
  v48[0] = @"reason";
  v48[1] = @"type";
  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v6 = getSOFullProfileClass_softClass_0;
  v47 = getSOFullProfileClass_softClass_0;
  if (!getSOFullProfileClass_softClass_0)
  {
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __getSOFullProfileClass_block_invoke_0;
    v42 = &unk_1E813E230;
    v43 = &v44;
    __getSOFullProfileClass_block_invoke_0(&v39);
    v6 = v45[3];
  }

  v7 = v6;
  _Block_object_dispose(&v44, 8);
  v9 = *(a1 + 32);
  v8 = (a1 + 32);
  v38 = [v6 stringWithProfileType:{objc_msgSend(v9, "type")}];
  v49[1] = v38;
  v48[2] = @"isKerberosExtension";
  v10 = MEMORY[0x1E696AD98];
  v37 = [*v8 extensionBundleIdentifier];
  v36 = [v10 numberWithBool:{objc_msgSend(v37, "isEqualToString:", @"com.apple.AppSSOKerberos.KerberosExtension"}];
  v49[2] = v36;
  v48[3] = @"authenticationMethod";
  v35 = [*v8 platformSSO];
  v11 = [v35 objectForKeyedSubscript:@"AuthenticationMethod"];
  v34 = v11;
  v12 = &stru_1F408B1A0;
  if (v11)
  {
    v12 = v11;
  }

  v49[3] = v12;
  v48[4] = @"hasRegistrationToken";
  v13 = MEMORY[0x1E696AD98];
  v33 = [*v8 pssoRegistrationToken];
  v32 = [v13 numberWithInt:{objc_msgSend(v33, "length") != 0}];
  v49[4] = v32;
  v48[5] = @"sharedDeviceKeys";
  v31 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "useSharedDeviceKeys")}];
  v49[5] = v31;
  v48[6] = @"createUsersEnabled";
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "createUsersEnabled")}];
  v49[6] = v30;
  v48[7] = @"createFirstUserDuringSetup";
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "createFirstUserDuringSetupEnabled")}];
  v49[7] = v29;
  v48[8] = @"enableAuthorization";
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "authorizationEnabled")}];
  v49[8] = v28;
  v48[9] = @"allowDeviceIdentifiersInAttestation";
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "allowDeviceIdentifiersInAttestation")}];
  v49[9] = v27;
  v48[10] = @"allowAccessKeyExpressMode";
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "allowAccessKeyExpressMode")}];
  v49[10] = v26;
  v48[11] = @"synchronizeProfilePicture";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "synchronizeProfilePicture")}];
  v49[11] = v25;
  v48[12] = @"temporarySessionQuickLogin";
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "temporarySessionQuickLogin")}];
  v49[12] = v24;
  v48[13] = @"enableRegistrationDuringSetup";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "enableRegistrationDuringSetup")}];
  v49[13] = v14;
  v48[14] = @"newUserAuthorizationMode";
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "newUserAuthorizationMode")}];
  v49[14] = v15;
  v48[15] = @"userAuthorizationMode";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "userAuthorizationMode")}];
  v49[15] = v16;
  v48[16] = @"offlineGracePeriod";
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "offlineGracePeriod")}];
  v49[16] = v17;
  v48[17] = @"authenticationGracePeriod";
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "requireAuthGracePeriod")}];
  v49[17] = v18;
  v48[18] = @"fileVaultPolicy";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "fileVaultPolicy")}];
  v49[18] = v19;
  v48[19] = @"loginPolicy";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "loginPolicy")}];
  v49[19] = v20;
  v48[20] = @"unlockPolicy";
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "unlockPolicy")}];
  v49[20] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:21];

  return v22;
}

@end