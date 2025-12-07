id PFPosterRolesSupportedForDeviceClass(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 <= 3)
    {
      if (a1 == 2)
      {
        [MEMORY[0x1E695DFD8] setWithObjects:{@"PRPosterRoleIncomingCall", @"PRPosterRoleBackdrop", 0, v4, v5}];
      }

      else
      {
        [MEMORY[0x1E695DFD8] setWithObjects:{@"PRPosterRoleAmbient", 0, v3, v4, v5}];
      }

      goto LABEL_16;
    }

    if (a1 != 4)
    {
LABEL_12:
      v1 = [MEMORY[0x1E695DFD8] set];
      goto LABEL_17;
    }

    [MEMORY[0x1E695DFD8] setWithObjects:{@"PRPosterRoleBackdrop", 0, v3, v4, v5}];
    v1 = LABEL_16:;
    goto LABEL_17;
  }

  if (a1 == -1)
  {
    goto LABEL_12;
  }

  if (!a1)
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"PRPosterRoleLockScreen", @"PRPosterRoleAmbient", @"PRPosterRoleIncomingCall", @"PRPosterRoleBackdrop", 0}];
    goto LABEL_16;
  }

  if (a1 != 1)
  {
    goto LABEL_12;
  }

  if (PFPosterRolesSupportedForDeviceClass_onceToken != -1)
  {
    PFPosterRolesSupportedForDeviceClass_cold_1();
  }

  v1 = PFPosterRolesSupportedForDeviceClass_roles;
LABEL_17:

  return v1;
}

void __PFPosterRolesSupportedForDeviceClass_block_invoke()
{
  v2 = [MEMORY[0x1E695DFA8] set];
  if (_os_feature_enabled_impl())
  {
    [v2 addObject:@"PRPosterRoleLockScreen"];
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || PFIsRunningInUnitTest())
  {
    [v2 addObject:@"PRPosterRoleAmbient"];
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || PFIsRunningInUnitTest())
  {
    [v2 addObject:@"PRPosterRoleIncomingCall"];
  }

  [v2 addObject:@"PRPosterRoleBackdrop"];
  v0 = [v2 copy];
  v1 = PFPosterRolesSupportedForDeviceClass_roles;
  PFPosterRolesSupportedForDeviceClass_roles = v0;
}

id PFPosterRolesSupportedForCurrentDeviceClass(uint64_t a1)
{
  if (PFPosterRolesSupportedForCurrentDeviceClass_onceToken != -1)
  {
    PFPosterRolesSupportedForCurrentDeviceClass_cold_1();
  }

  v2 = PFPosterRolesSupportedForCurrentDeviceClass_appropriateForCurrentDeviceClass;

  return v2;
}

uint64_t __PFPosterRolesSupportedForCurrentDeviceClass_block_invoke()
{
  v0 = PFCurrentDeviceClass();
  PFPosterRolesSupportedForCurrentDeviceClass_appropriateForCurrentDeviceClass = PFPosterRolesSupportedForDeviceClass(v0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PFPosterRoleIsValid(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length])
  {
    if (PFPosterRoleIsValid_onceToken != -1)
    {
      PFPosterRoleIsValid_cold_1();
    }

    v3 = [PFPosterRoleIsValid_validPosterRoles containsObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __PFPosterRoleIsValid_block_invoke(uint64_t a1)
{
  PFPosterRoleIsValid_validPosterRoles = PFPosterRolesSupportedForCurrentDeviceClass(a1);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PFPosterRoleSupportsTitleStyleConfigurations(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = @"PRPosterRoleLockScreen";
  v7 = @"PRPosterRoleIncomingCall";
  v8 = @"PRPosterRoleBackdrop";
  v1 = MEMORY[0x1E695DEC8];
  v2 = a1;
  v3 = [v1 arrayWithObjects:&v6 count:3];
  v4 = [v3 containsObject:{v2, v6, v7, v8, v9}];

  return v4;
}

uint64_t PFPosterRoleSupportsDynamicRotation(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = @"PRPosterRoleLockScreen";
  v7 = @"PRPosterRoleIncomingCall";
  v8 = @"PRPosterRoleBackdrop";
  v1 = MEMORY[0x1E695DEC8];
  v2 = a1;
  v3 = [v1 arrayWithObjects:&v6 count:3];
  v4 = [v3 containsObject:{v2, v6, v7, v8, v9}];

  return v4;
}

uint64_t PFPosterRoleSupportsEditorDynamicRotation(void *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v5[0] = @"PRPosterRoleIncomingCall";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  if (PFPosterRoleSupportsDynamicRotation(v1))
  {
    v3 = [v2 containsObject:v1] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void PFPosterRoleEnumerateValidRolesForCurrentDeviceClass(void *a1)
{
  v1 = a1;
  v2 = PFPosterRolesSupportedForCurrentDeviceClass(v1);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PFPosterRoleEnumerateValidRolesForCurrentDeviceClass_block_invoke;
  v4[3] = &unk_1E8189100;
  v5 = v1;
  v3 = v1;
  [v2 enumerateObjectsUsingBlock:v4];
}

void PFPosterRoleEnumerateAllRoles(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"PRPosterRoleLockScreen", @"PRPosterRoleAmbient", @"PRPosterRoleIncomingCall", @"PRPosterRoleBackdrop", 0}];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PFPosterRoleEnumerateAllRoles_block_invoke;
  v4[3] = &unk_1E8189100;
  v5 = v1;
  v3 = v1;
  [v2 enumerateObjectsUsingBlock:v4];
}

__CFString *PFPosterRoleDefaultRoleForCurrentExtensionProcess(int a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if ([v3 isEqualToString:@"com.apple.PosterBoard"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.PosterTester"];
  }

  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 pf_defaultRole];

  if (v6 || (v4 & 1) != 0)
  {
LABEL_10:

    return v6;
  }

  if (!a1)
  {
    v8 = PFLogCommon(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      PFPosterRoleDefaultRoleForCurrentExtensionProcess_cold_1();
    }

    v6 = @"PRPosterRoleLockScreen";
    goto LABEL_10;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to determine Role for process %@ error looking up bundle: %@", v3, 0];;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    PFPosterRoleDefaultRoleForCurrentExtensionProcess_cold_2(v10);
  }

  [v10 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

id PFPosterRolesKnownAmbient(uint64_t a1)
{
  if (PFPosterRolesKnownAmbient_onceToken != -1)
  {
    PFPosterRolesKnownAmbient_cold_1();
  }

  v2 = PFPosterRolesKnownAmbient_knownBundleIdentifiers;

  return v2;
}

uint64_t __PFPosterRolesKnownAmbient_block_invoke()
{
  PFPosterRolesKnownAmbient_knownBundleIdentifiers = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4266858];

  return MEMORY[0x1EEE66BB8]();
}

id PFPosterRolesKnownIncomingCall(uint64_t a1)
{
  if (PFPosterRolesKnownIncomingCall_onceToken != -1)
  {
    PFPosterRolesKnownIncomingCall_cold_1();
  }

  v2 = PFPosterRolesKnownIncomingCall_knownBundleIdentifiers;

  return v2;
}

uint64_t __PFPosterRolesKnownIncomingCall_block_invoke()
{
  PFPosterRolesKnownIncomingCall_knownBundleIdentifiers = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4266870];

  return MEMORY[0x1EEE66BB8]();
}

id PFPosterRolesKnownLockScreen(uint64_t a1)
{
  if (PFPosterRolesKnownLockScreen_onceToken != -1)
  {
    PFPosterRolesKnownLockScreen_cold_1();
  }

  v2 = PFPosterRolesKnownLockScreen_knownBundleIdentifiers;

  return v2;
}

uint64_t __PFPosterRolesKnownLockScreen_block_invoke()
{
  PFPosterRolesKnownLockScreen_knownBundleIdentifiers = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4266888];

  return MEMORY[0x1EEE66BB8]();
}

id PFPosterRolesKnownBackdrop(uint64_t a1)
{
  if (PFPosterRolesKnownBackdrop_onceToken != -1)
  {
    PFPosterRolesKnownBackdrop_cold_1();
  }

  v2 = PFPosterRolesKnownBackdrop_knownBundleIdentifiers;

  return v2;
}

uint64_t __PFPosterRolesKnownBackdrop_block_invoke()
{
  PFPosterRolesKnownBackdrop_knownBundleIdentifiers = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F42668A0];

  return MEMORY[0x1EEE66BB8]();
}

id PFProvidersForRole(void *a1)
{
  v1 = a1;
  v2 = [v1 isEqualToString:@"PRPosterRoleAmbient"];
  if (v2)
  {
    v3 = PFPosterRolesKnownAmbient(v2);
LABEL_9:
    v7 = v3;

    return v7;
  }

  v4 = [v1 isEqualToString:@"PRPosterRoleLockScreen"];
  if (v4)
  {
    v3 = PFPosterRolesKnownLockScreen(v4);
    goto LABEL_9;
  }

  v5 = [v1 isEqualToString:@"PRPosterRoleIncomingCall"];
  if (v5)
  {
    v3 = PFPosterRolesKnownIncomingCall(v5);
    goto LABEL_9;
  }

  v6 = [v1 isEqualToString:@"PRPosterRoleBackdrop"];
  if (v6)
  {
    v3 = PFPosterRolesKnownBackdrop(v6);
    goto LABEL_9;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown role: %@", v1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    PFProvidersForRole_cold_1(v9);
  }

  [v9 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

id PFPosterRolesForBundleIdentifier(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"PRPosterRoleLockScreen", @"PRPosterRoleAmbient", @"PRPosterRoleIncomingCall", @"PRPosterRoleBackdrop", 0, 0}];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = PFProvidersForRole(v8);
        v10 = [v9 containsObject:v1];

        if (v10)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = [v2 copy];

  return v11;
}

__CFString *PFPosterDefaultRoleForBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = PFPosterRolesForBundleIdentifier(v1);
  v3 = [v2 bs_filter:&__block_literal_global_126];

  if (v3 && (v4 = [v3 count]) != 0)
  {
    v5 = @"PRPosterRoleLockScreen";
    if (([v3 containsObject:@"PRPosterRoleLockScreen"] & 1) == 0)
    {
      v5 = @"PRPosterRoleIncomingCall";
      if (([v3 containsObject:@"PRPosterRoleIncomingCall"] & 1) == 0)
      {
        v5 = [v3 firstObject];
      }
    }
  }

  else
  {
    v6 = PFPosterRolesSupportedForCurrentDeviceClass(v4);
    v5 = [v6 anyObject];

    v8 = PFLogCommon(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      PFPosterDefaultRoleForBundleIdentifier_cold_1();
    }
  }

  return v5;
}

_PFRoleManifest *PFRoleProviderForLSApplicationExtensionRecord(void *a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 bundleIdentifier];
    if (v3)
    {
      v4 = [v2 infoDictionary];
      v5 = *MEMORY[0x1E695E4F0];
      v6 = objc_opt_self();
      v7 = [v4 objectForKey:v5 ofClass:v6];
      v8 = [v7 isEqualToString:v3];

      if (v8)
      {
        v9 = v4;
      }

      else
      {
        v10 = objc_alloc(MEMORY[0x1E696AAE8]);
        v11 = [v2 URL];
        v12 = [v10 initWithURL:v11];

        v13 = [v12 pf_roleManifest];
        if (v13 || (objc_getAssociatedObject(v2, "roleManifest"), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = v13;
        }

        else
        {
          v15 = PFPosterRolesForBundleIdentifier(v3);
          v16 = PFPosterDefaultRoleForBundleIdentifier(v3);
          v17 = v16;
          v9 = 0;
          if (v15 && v16)
          {
            v18 = [_PFRoleManifest alloc];
            v21[0] = v5;
            v21[1] = @"PRSupportedRoles";
            v22[0] = v3;
            v22[1] = v15;
            v21[2] = @"PRDefaultRole";
            v22[2] = v17;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
            v20 = [(_PFRoleManifest *)v18 initWithInfoDictionary:v19];

            objc_setAssociatedObject(v2, "roleManifest", v20, 0x301);
            v9 = v20;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_3()
{

  return objc_opt_class();
}

id _NSErrorForSQLiteDatabase(sqlite3 *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(a1)];
  if (v10)
  {
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696A588]];
  }

  if (v8)
  {
    v11 = [v8 copy];
    [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A278]];
  }

  v12 = [MEMORY[0x1E696ABC0] pf_errorForDatabaseResult:a2 query:v7 userInfo:v9];

  return v12;
}

BOOL PFSQLite_checkDatabaseForWALMode(sqlite3 *a1, uint64_t a2, int ms, uint64_t a4, void *a5)
{
  v6 = a4;
  sqlite3_busy_timeout(a1, ms);
  if (sqlite3_db_readonly(a1, 0))
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v12 = 0;
    PFSQLite_prepare_and_stepThrough_withBlock(a1, @"PRAGMA journal_mode;", a2, v6, 0, 0, 0, &__block_literal_global_0, &v12);
    v9 = v12;
    v10 = v9 == 0;
    if (a5 && v9)
    {
      v9 = v9;
      v10 = 0;
      *a5 = v9;
    }
  }

  return v10;
}

uint64_t PFSQLite_prepare_and_stepThrough_withBlock(sqlite3 *a1, void *a2, uint64_t a3, signed int a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v14 = a3;
  v49[1] = *MEMORY[0x1E69E9840];
  v16 = a2;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (!a1)
  {
    if (!a9)
    {
      goto LABEL_17;
    }

    v25 = MEMORY[0x1E696ABC0];
    v48 = *MEMORY[0x1E696A578];
    v49[0] = @"Database handle is NULL";
    v26 = MEMORY[0x1E695DF20];
    v27 = v49;
    v28 = &v48;
    goto LABEL_16;
  }

  if (!v16 || ![v16 length])
  {
    if (!a9)
    {
      goto LABEL_17;
    }

    v25 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A578];
    v47 = @"SQL string is nil or empty";
    v26 = MEMORY[0x1E695DF20];
    v27 = &v47;
    v28 = &v46;
LABEL_16:
    v29 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
    *a9 = [v25 errorWithDomain:@"com.apple.PosterBoard.PFSQLiteErrorDomain" code:-1 userInfo:v29];

    goto LABEL_17;
  }

  if (v14 >= 1 && a4 > 0)
  {
    v42 = a4;
    v43 = 0;
    ppStmt = 0;
    if (v17)
    {
      [v17 objectForKey:v16];
      v21 = v39 = v18;
      v22 = [v21 pointerValue];
      ppStmt = v22;

      v18 = v39;
      if (v22)
      {
        v40 = 0;
        v23 = PFSQLite_statement_reset_withBlock(v22, v14, &v43, &v42, v39, v19, &v40);
        v24 = v40;
        if (v23)
        {

LABEL_31:
          v42 = a4;
          v43 = 0;
          v18 = v39;
          if (PFSQLite_statement_stepThrough_withBlock(v22, v14, &v43, &v42, v39, v19, v20, a9))
          {
            goto LABEL_39;
          }

          [v17 removeObjectForKey:v16];
LABEL_40:
          sqlite3_finalize(ppStmt);
          goto LABEL_17;
        }

        v32 = v24;
        sqlite3_finalize(v22);
        [v17 removeObjectForKey:v16];
        v33 = v32;
        v42 = a4;
        v43 = 0;
        ppStmt = 0;
        if (a9 && v32)
        {
          v34 = v32;
          v33 = v32;
          *a9 = v32;
        }

        v18 = v39;
      }
    }

    v42 = a4;
    v43 = 0;
    while (1)
    {
      v35 = sqlite3_prepare_v2(a1, [v16 UTF8String], -1, &ppStmt, 0);
      if (v35 != 5)
      {
        break;
      }

      usleep(v42);
      v42 *= 2;
      if (++v43 >= v14)
      {
        if (!a9)
        {
          goto LABEL_17;
        }

        v36 = a1;
        v37 = 5;
LABEL_35:
        _NSErrorForSQLiteDatabase(v36, v37, v16, 0);
        *a9 = v30 = 0;
        goto LABEL_18;
      }
    }

    v37 = v35;
    if (v35)
    {
      if (!a9)
      {
        goto LABEL_17;
      }

      v36 = a1;
      goto LABEL_35;
    }

    if (v17)
    {
      v39 = v18;
      v38 = [MEMORY[0x1E696B098] valueWithPointer:ppStmt];
      [v17 setObject:v38 forKey:v16];

      v22 = ppStmt;
      goto LABEL_31;
    }

    v42 = a4;
    v43 = 0;
    if (PFSQLite_statement_stepThrough_withBlock(ppStmt, v14, &v43, &v42, v18, v19, v20, a9))
    {
      sqlite3_finalize(ppStmt);
LABEL_39:
      v30 = 1;
      goto LABEL_18;
    }

    goto LABEL_40;
  }

  if (a9)
  {
    v25 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A578];
    v45 = @"maxRetries and initialBackoff must be positive integers";
    v26 = MEMORY[0x1E695DF20];
    v27 = &v45;
    v28 = &v44;
    goto LABEL_16;
  }

LABEL_17:
  v30 = 0;
LABEL_18:

  return v30;
}

uint64_t PFSQLite_statement_reset_withBlock(sqlite3_stmt *a1, unsigned int a2, unsigned int *a3, useconds_t *a4, void *a5, void *a6, uint64_t a7)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a6;
  if (!a1)
  {
    if (!a7)
    {
      goto LABEL_23;
    }

    v19 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A578];
    v38[0] = @"Statement is NULL";
    v20 = MEMORY[0x1E695DF20];
    v21 = v38;
    v22 = &v37;
LABEL_20:
    v16 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
    v23 = [v19 errorWithDomain:@"com.apple.PosterBoard.PFSQLiteErrorDomain" code:-1 userInfo:v16];
LABEL_21:
    *a7 = v23;

LABEL_22:
    a7 = 0;
    goto LABEL_23;
  }

  if (a2 <= 0)
  {
    if (!a7)
    {
      goto LABEL_23;
    }

    v19 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v36 = @"maxRetries must be a positive integer";
    v20 = MEMORY[0x1E695DF20];
    v21 = &v36;
    v22 = &v35;
    goto LABEL_20;
  }

  if (!a3 || !a4)
  {
    if (!a7)
    {
      goto LABEL_23;
    }

    v19 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v34 = @"attempt and backoff pointers must not be NULL";
    v20 = MEMORY[0x1E695DF20];
    v21 = &v34;
    v22 = &v33;
    goto LABEL_20;
  }

  if ((*a3 & 0x80000000) != 0 || *a4 < 1)
  {
    if (!a7)
    {
      goto LABEL_23;
    }

    v19 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v32 = @"attempt must be non-negative and backoff must be positive";
    v20 = MEMORY[0x1E695DF20];
    v21 = &v32;
    v22 = &v31;
    goto LABEL_20;
  }

  if (*a3 < a2)
  {
    while (1)
    {
      v15 = sqlite3_reset(a1);
      if (v15 != 5)
      {
        break;
      }

      usleep(*a4);
      ++*a3;
      *a4 *= 2;
      if (*a3 >= a2)
      {
        goto LABEL_10;
      }
    }

    v25 = v15;
    if (!v15)
    {
      if (v14)
      {
        v30 = 0;
        v26 = v14[2](v14, a1, &v30);
        v27 = v30;
        if ((v26 & 1) == 0)
        {
LABEL_35:
          if (a7 && v27)
          {
            v27 = v27;
            *a7 = v27;
          }

          goto LABEL_22;
        }
      }

      if (!v13)
      {
LABEL_31:
        a7 = 1;
        goto LABEL_23;
      }

      v29 = 0;
      v28 = v13[2](v13, a1, &v29);
      v27 = v29;
      if (v28)
      {

        goto LABEL_31;
      }

      goto LABEL_35;
    }

    if (!a7)
    {
      goto LABEL_23;
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_sql(a1)];
    v17 = sqlite3_db_handle(a1);
    v18 = v25;
    goto LABEL_34;
  }

LABEL_10:
  if (a7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_sql(a1)];
    v17 = sqlite3_db_handle(a1);
    v18 = 5;
LABEL_34:
    v23 = _NSErrorForSQLiteDatabase(v17, v18, v16, 0);
    goto LABEL_21;
  }

LABEL_23:

  return a7;
}

uint64_t PFSQLite_statement_stepThrough_withBlock(sqlite3_stmt *a1, int a2, unsigned int *a3, useconds_t *a4, void *a5, void *a6, void *a7, void *a8)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (a1)
  {
    if (a2 <= 0)
    {
      if (!a8)
      {
        goto LABEL_28;
      }

      v23 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A578];
      v38 = @"maxRetries must be a positive integer";
      v24 = MEMORY[0x1E695DF20];
      v25 = &v38;
      v26 = &v37;
    }

    else if (a3 && a4)
    {
      if ((*a3 & 0x80000000) == 0 && *a4 > 0)
      {
        if (PFSQLite_statement_reset_withBlock(a1, a2, a3, a4, v15, v16, a8))
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_sql(a1)];
          v31 = sqlite3_db_handle(a1);
          while (1)
          {
            while (1)
            {
              v19 = sqlite3_step(a1);
              if (v19 == 5)
              {
                break;
              }

              v20 = v19;
              if (v19 != 100)
              {
                if (v19 == 101)
                {
                  v28 = 1;
                  goto LABEL_27;
                }

                if (a8)
                {
                  v30 = v31;
LABEL_36:
                  v27 = _NSErrorForSQLiteDatabase(v30, v20, v18, 0);
                  goto LABEL_26;
                }

                goto LABEL_41;
              }

              if (v17)
              {
                v32 = 0;
                v21 = v17[2](v17, a1, &v32);
                v22 = v32;
                if ((v21 & 1) == 0)
                {
                  if (a8 && v22)
                  {
                    v22 = v22;
                    *a8 = v22;
                  }

                  goto LABEL_41;
                }
              }
            }

            if (*a3 >= a2)
            {
              break;
            }

            usleep(*a4);
            ++*a3;
            *a4 *= 2;
            if ((PFSQLite_statement_reset_withBlock(a1, a2, a3, a4, v15, v16, a8) & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          if (a8)
          {
            v30 = v31;
            v20 = 5;
            goto LABEL_36;
          }

LABEL_41:
          v28 = 0;
          goto LABEL_27;
        }

LABEL_28:
        v28 = 0;
        goto LABEL_29;
      }

      if (!a8)
      {
        goto LABEL_28;
      }

      v23 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A578];
      v34 = @"attempt must be non-negative and backoff must be positive";
      v24 = MEMORY[0x1E695DF20];
      v25 = &v34;
      v26 = &v33;
    }

    else
    {
      if (!a8)
      {
        goto LABEL_28;
      }

      v23 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E696A578];
      v36 = @"attempt and backoff pointers must not be NULL";
      v24 = MEMORY[0x1E695DF20];
      v25 = &v36;
      v26 = &v35;
    }
  }

  else
  {
    if (!a8)
    {
      goto LABEL_28;
    }

    v23 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A578];
    v40[0] = @"Statement is NULL";
    v24 = MEMORY[0x1E695DF20];
    v25 = v40;
    v26 = &v39;
  }

  v18 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
  v27 = [v23 errorWithDomain:@"com.apple.PosterBoard.PFSQLiteErrorDomain" code:-1 userInfo:v18];
LABEL_26:
  v28 = 0;
  *a8 = v27;
LABEL_27:

LABEL_29:
  return v28;
}

void sub_1C26A459C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    if (a2 == 2)
    {
      objc_end_catch();
      JUMPOUT(0x1C26A456CLL);
    }

    JUMPOUT(0x1C26A457CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C26A4948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C26A5670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C26A653C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C26A6A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C26A7008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C26A7354(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

__CFString *NSStringForPFSQLPredicateOperator(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E81895A0[a1];
  }
}

void sub_1C26A9DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

id *__NSStringFromPFSQLiteColumnAttributes_block_invoke(id *result, unint64_t a2)
{
  if (a2 <= 2)
  {
    return [result[4] addObject:off_1E8189760[a2]];
  }

  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

void sub_1C26B0908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return objc_opt_class();
}

void sub_1C26B1028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C26B3954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PFAppleArchiveCompressDirectory(void *a1, void *a2)
{
  v11 = a1;
  v3 = AAFileStreamOpenWithPath([a2 fileSystemRepresentation], 514, 0x1A4u);
  if (v3)
  {
    v4 = v3;
    v5 = AAEncodeArchiveOutputStreamOpen(v3, 0, 0, 0, 0);
    if (v5)
    {
      v6 = v5;
      v7 = AAPathListCreateWithDirectoryContents([v11 fileSystemRepresentation], 0, 0, 0, 0, 0);
      if (v7)
      {
        v8 = v7;
        v9 = AAFieldKeySetCreateWithString("TYP,PAT,LNK,DEV,DAT,MOD,FLG,MTM,BTM,CTM,HLC,CLC");
        if (v9)
        {
          v10 = v9;
          AAArchiveStreamWritePathList(v6, v8, v9, [v11 fileSystemRepresentation], 0, 0, 0, 0);
          AAFieldKeySetDestroy(v10);
        }

        AAPathListDestroy(v8);
      }

      AAArchiveStreamClose(v6);
    }

    AAByteStreamClose(v4);
  }
}

uint64_t PFZipArchiverCompressDirectory(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = PFArchiverZipData(v5, v7);
  if (!v8)
  {
    v12 = PFLogArchiver(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      PFZipArchiverCompressDirectory_cold_3();
    }

    goto LABEL_11;
  }

  v9 = [v6 URLByDeletingLastPathComponent];
  v10 = PFPosterPathFileAttributes(v9);
  v18 = 0;
  v11 = [(NSFileManager *)v7 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:v10 error:&v18];
  v12 = v18;

  if (!v11)
  {
    v16 = PFLogArchiver(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      PFZipArchiverCompressDirectory_cold_1();
    }

    goto LABEL_10;
  }

  v14 = 1;
  v15 = [v8 writeToURL:v6 atomically:1];
  if ((v15 & 1) == 0)
  {
    v16 = PFLogArchiver(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      PFZipArchiverCompressDirectory_cold_2();
    }

LABEL_10:

LABEL_11:
    v14 = 0;
  }

  return v14;
}

uint64_t PFUnarchiverZip(NSURL *a1, NSURL *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (!v3 || !v4)
  {
    goto LABEL_14;
  }

  v7 = [(NSURL *)v3 isFileURL];
  if ((v7 & 1) == 0)
  {
    v11 = PFLogArchiver(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      PFUnarchiverZip();
    }

    goto LABEL_12;
  }

  v8 = open([(NSURL *)v3 fileSystemRepresentation], 4);
  if ((v8 & 0x80000000) != 0)
  {
    v11 = PFLogArchiver(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      PFUnarchiverZip();
    }

LABEL_12:
    v6 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v9 = v8;
  v6 = PFUnarchiverZip(v8, v5, 0);
  v10 = close(v9);
  if (v10)
  {
    v11 = PFLogArchiver(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      PFUnarchiverZip();
    }

    goto LABEL_13;
  }

LABEL_14:

  return v6;
}

uint64_t PFUnarchiverZip(NSData *a1, NSURL *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v4 = a1;
  v5 = a2;
  v6 = a1;
  v7 = [(NSData *)v6 bytes];
  v8 = [(NSData *)v6 length];

  v9 = PFUnarchiverZip(v7, v8, v5, 0);
  return v9;
}

id PFArchiverZipData(NSURL *a1, NSFileManager *a2)
{
  v113 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v6 = 0;
LABEL_8:
    v11 = 0;
    goto LABEL_66;
  }

  v5 = [(NSURL *)v3 isFileURL];
  if ((v5 & 1) == 0)
  {
    v12 = PFLogArchiver(v5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      PFUnarchiverZip();
    }

    v11 = 0;
    goto LABEL_65;
  }

  v6 = [(NSURL *)v3 URLByStandardizingPath];

  disk_new = archive_read_disk_new();
  if (!disk_new)
  {
    goto LABEL_8;
  }

  v8 = disk_new;
  disk_set_standard_lookup = archive_read_disk_set_standard_lookup();
  if (disk_set_standard_lookup)
  {
    v10 = PFLogArchiver(disk_set_standard_lookup);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      PFArchiverZipData(v8);
    }

    goto LABEL_15;
  }

  disk_set_symlink_physical = archive_read_disk_set_symlink_physical();
  if (disk_set_symlink_physical)
  {
    v10 = PFLogArchiver(disk_set_symlink_physical);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      PFArchiverZipData(v8);
    }

LABEL_15:

    free = archive_read_free();
    if (free)
    {
      v12 = PFLogArchiver(free);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        PFArchiverZipData();
      }

      v11 = 0;
      goto LABEL_64;
    }

    goto LABEL_8;
  }

  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{-[NSURL fileSystemRepresentation](v6, "fileSystemRepresentation")}];
  v15 = [MEMORY[0x1E696AFB0] UUID];
  [v12 UTF8String];
  disk_open = archive_read_disk_open();
  if (disk_open)
  {
    v17 = PFLogArchiver(disk_open);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      PFArchiverZipData(v8);
    }

    v11 = 0;
    goto LABEL_59;
  }

  v18 = MEMORY[0x1E696AEC0];
  v19 = [v15 UUIDString];
  v17 = [v18 stringWithFormat:@"%@.zip", v19];

  v20 = [(NSFileManager *)v4 temporaryDirectory];
  v21 = [v20 URLByAppendingPathComponent:@"com.apple.PosterFoundation" isDirectory:1];

  v22 = [v21 URLByAppendingPathComponent:v17 isDirectory:0];
  v109 = *MEMORY[0x1E696A370];
  v110 = &unk_1F42668E8;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
  v107[0] = 0;
  v24 = [(NSFileManager *)v4 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:v23 error:v107];
  v105 = v107[0];

  if (!v24)
  {
    v26 = PFLogArchiver(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      PFArchiverZipData();
    }
  }

  v27 = open([v22 fileSystemRepresentation], 2566, 384);
  if ((v27 & 0x80000000) != 0)
  {
    v36 = PFLogArchiver(v27);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      PFArchiverZipData();
    }

    v11 = 0;
    goto LABEL_54;
  }

  v28 = v27;
  v104 = v21;
  v29 = v12;
  if (!v29 || (v30 = NSPageSize(), (v31 = malloc_type_malloc(v30, 0x33C568A1uLL)) == 0))
  {
LABEL_48:

    v11 = 0;
    v21 = v104;
    goto LABEL_49;
  }

  v99 = v30;
  v103 = v31;
  v32 = archive_write_new();
  if (!v32)
  {
LABEL_47:
    ::free(v103);
    goto LABEL_48;
  }

  v33 = v32;
  v34 = archive_write_set_format_zip();
  v102 = v29;
  v100 = v33;
  if (v34)
  {
    v35 = PFLogArchiver(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      PFArchiverZipData(v33);
    }

LABEL_43:

    v39 = archive_write_free();
    v29 = v102;
    if (v39)
    {
      v40 = PFLogArchiver(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        PFArchiverZipData();
      }

      v29 = v102;
    }

    goto LABEL_47;
  }

  v37 = archive_write_set_format_option();
  if (v37)
  {
    v35 = PFLogArchiver(v37);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      PFArchiverZipData(v33);
    }

    goto LABEL_43;
  }

  v38 = archive_write_open_fd();
  if (v38)
  {
    v35 = PFLogArchiver(v38);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      PFArchiverZipData(v33);
    }

    goto LABEL_43;
  }

  v94 = v15;
  v95 = v17;
  v96 = v22;
  v101 = v28;
  v48 = [v29 pathComponents];
  v49 = [v48 count];

  for (i = v49; ; v49 = i)
  {
    v107[1] = 0;
    next_header = archive_read_next_header();
    if (next_header)
    {
      v51 = next_header;
      if (next_header == 1)
      {
        v82 = 1;
        goto LABEL_122;
      }

      v52 = PFLogArchiver(next_header);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        PFArchiverZipData(v112, v8);
      }

      if (v51 != -20)
      {
        goto LABEL_121;
      }
    }

    archive_read_disk_descend();
    v53 = archive_entry_filetype();
    context = objc_autoreleasePoolPush();
    v54 = archive_entry_pathname_utf8();
    if (!v54)
    {
      break;
    }

    v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v54];
    v56 = [v55 pathComponents];
    v57 = [v56 count];
    v58 = v55;
    if (![v55 hasPrefix:v102] || v57 < v49)
    {
      PFArchiverZipData();
    }

    v59 = v56;
    v60 = [v56 subarrayWithRange:{v49, v57 - v49}];
    if ([v60 count])
    {
      v61 = [MEMORY[0x1E696AEC0] pathWithComponents:v60];
      if ([v61 length])
      {
        if (v61)
        {
          [v61 fileSystemRepresentation];
          archive_entry_update_pathname_utf8();
          v62 = 1;
          goto LABEL_88;
        }
      }

      else
      {
      }
    }

    updated = archive_entry_update_pathname_utf8();
    if (v53 == 0x4000)
    {
      v64 = 1;
      v62 = 1;
      goto LABEL_89;
    }

    v61 = PFLogArchiver(updated);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 138412290;
      *&buf.st_mode = v102;
      _os_log_error_impl(&dword_1C269D000, v61, OS_LOG_TYPE_ERROR, "PRSPosterArchiver: non-directory archive target path %@.", &buf, 0xCu);
    }

    v62 = 0;
LABEL_88:

    v64 = 0;
LABEL_89:

    objc_autoreleasePoolPop(context);
    if (!v62)
    {
      goto LABEL_121;
    }

    if ((v64 & 1) == 0)
    {
      v65 = archive_write_header();
      if (v65)
      {
        v83 = PFLogArchiver(v65);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          PFArchiverZipData(v100);
        }

        goto LABEL_120;
      }

      v66 = 0;
      if (v53 != 0x4000 && v53 != 40960)
      {
        v67 = archive_entry_sourcepath();
        v68 = open(v67, 0x200000);
        v69 = v68;
        v70 = v103;
        if ((v68 & 0x80000000) != 0)
        {
          v83 = PFLogArchiver(v68);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            PFArchiverZipData();
          }

          goto LABEL_120;
        }

        while (1)
        {
          v71 = read(v69, v70, v99);
          v66 = v71 != 0;
          if (!v71)
          {
            break;
          }

          if (v71 < 0)
          {
            v73 = PFLogArchiver(v71);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              v79 = __error();
              v80 = strerror(*v79);
              buf.st_dev = 67240450;
              *&buf.st_mode = v69;
              LOWORD(buf.st_ino) = 2082;
              *(&buf.st_ino + 2) = v80;
              _os_log_error_impl(&dword_1C269D000, v73, OS_LOG_TYPE_ERROR, "PRSPosterArchiver: unable to read file data from descriptor %{public}d for header - %{public}s.", &buf, 0x12u);
            }

            goto LABEL_102;
          }

          v70 = v103;
          v72 = archive_write_data();
          if (v72 < 0)
          {
            v73 = PFLogArchiver(v72);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              PFArchiverZipData(v111, v100);
            }

LABEL_102:

            break;
          }
        }

        v74 = ::close(v69);
        if (v74)
        {
          v75 = PFLogArchiver(v74);
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            v77 = __error();
            v78 = strerror(*v77);
            buf.st_dev = 67240450;
            *&buf.st_mode = v69;
            LOWORD(buf.st_ino) = 2082;
            *(&buf.st_ino + 2) = v78;
            _os_log_error_impl(&dword_1C269D000, v75, OS_LOG_TYPE_ERROR, "PRSPosterArchiver: unable to close file descriptor %{public}d for header (leaking) - %{public}s.", &buf, 0x12u);
          }
        }
      }

      v76 = archive_write_finish_entry();
      if (v76)
      {
        v83 = PFLogArchiver(v76);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          PFArchiverZipData(v100);
        }

LABEL_120:

        goto LABEL_121;
      }

      if (v66)
      {
        goto LABEL_121;
      }
    }
  }

  v81 = PFLogArchiver(0);
  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
  {
    PFArchiverZipData();
  }

  objc_autoreleasePoolPop(context);
LABEL_121:
  v82 = 0;
LABEL_122:
  ::free(v103);
  v84 = archive_write_close();
  if (v84)
  {
    v85 = PFLogArchiver(v84);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      PFArchiverZipData(v100);
    }

    v82 = 0;
  }

  v86 = archive_write_free();
  if (v86)
  {
    v87 = PFLogArchiver(v86);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      PFArchiverZipData();
    }

    if ((v82 & 1) == 0)
    {
LABEL_136:
      v11 = 0;
      goto LABEL_137;
    }
  }

  else
  {

    if (!v82)
    {
      goto LABEL_136;
    }
  }

  memset(&buf, 0, sizeof(buf));
  v88 = fstat(v101, &buf);
  if (v88)
  {
    v89 = PFLogArchiver(v88);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      PFArchiverZipData();
    }

LABEL_135:

    goto LABEL_136;
  }

  if (buf.st_size < 1)
  {
    goto LABEL_136;
  }

  v90 = buf.st_size & ~(buf.st_size >> 63);
  v91 = mmap(0, v90, 1, 2, v101, 0);
  if (v91 == -1)
  {
    v89 = PFLogArchiver(-1);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      PFArchiverZipData();
    }

    goto LABEL_135;
  }

  v92 = v91;
  v93 = objc_alloc(MEMORY[0x1E695DEF0]);
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = ___Z17PFArchiverZipDataP5NSURLP13NSFileManager_block_invoke;
  v106[3] = &__block_descriptor_48_e12_v24__0_v8Q16l;
  v106[4] = v92;
  v106[5] = v90;
  v11 = [v93 initWithBytesNoCopy:v92 length:v90 deallocator:v106];
LABEL_137:
  v28 = v101;
  v21 = v104;
  v17 = v95;
  v22 = v96;
  v15 = v94;
LABEL_49:
  v41 = ::close(v28);
  if (v41)
  {
    v42 = PFLogArchiver(v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      PFUnarchiverZip();
    }
  }

  unlink([v22 fileSystemRepresentation]);
LABEL_54:
  close = archive_read_close();
  if (close)
  {
    v44 = PFLogArchiver(close);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      PFArchiverZipData(v8);
    }
  }

LABEL_59:
  v45 = archive_read_free();
  if (v45)
  {
    v46 = PFLogArchiver(v45);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      PFArchiverZipData();
    }
  }

LABEL_64:
  v3 = v6;
LABEL_65:

  v6 = v3;
LABEL_66:

  return v11;
}

uint64_t ___Z17PFArchiverZipDataP5NSURLP13NSFileManager_block_invoke(uint64_t a1)
{
  result = munmap(*(a1 + 32), *(a1 + 40));
  if (result)
  {
    ___Z17PFArchiverZipDataP5NSURLP13NSFileManager_block_invoke_cold_1();
  }

  return result;
}

uint64_t PFUnarchiverZip(uint64_t a1, NSURL *a2, unint64_t a3)
{
  v4 = a1;
  v5 = a2;
  v6 = v5;
  v7 = 0;
  if (v4 < 0 || !v5)
  {
    goto LABEL_17;
  }

  Archive = PFZipCreateReadArchive();
  if (!Archive)
  {
    v7 = 0;
    goto LABEL_17;
  }

  v9 = Archive;
  NSPageSize();
  open_fd = archive_read_open_fd();
  if (open_fd)
  {
    v11 = PFLogArchiver(open_fd);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      PFUnarchiverZip(v9);
    }

    v7 = 0;
  }

  else
  {
    v7 = PFZipUnarchive(v9, v6, a3);
    close = archive_read_close();
    if (!close)
    {
      goto LABEL_13;
    }

    v11 = PFLogArchiver(close);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      PFUnarchiverZip(v9);
    }
  }

LABEL_13:
  free = archive_read_free();
  if (free)
  {
    v14 = PFLogArchiver(free);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      PFUnarchiverZip();
    }
  }

LABEL_17:

  return v7;
}

uint64_t PFZipCreateReadArchive()
{
  v0 = archive_read_new();
  if (!v0)
  {
    return v0;
  }

  support_format_zip = archive_read_support_format_zip();
  if (support_format_zip)
  {
    v2 = PFLogArchiver(support_format_zip);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      PFZipCreateReadArchive_cold_1(v0);
    }

LABEL_6:
    free = archive_read_free();
    if (free)
    {
      v4 = PFLogArchiver(free);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        PFUnarchiverZip();
      }
    }

    return 0;
  }

  support_filter_all = archive_read_support_filter_all();
  if (support_filter_all != -20)
  {
    v7 = support_filter_all;
    if (support_filter_all)
    {
      v8 = PFLogArchiver(support_filter_all);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        PFZipCreateReadArchive_cold_2(v0);
      }

      if (v7)
      {
        goto LABEL_6;
      }
    }
  }

  return v0;
}

uint64_t PFZipUnarchive(uint64_t a1, void *a2, unint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 isFileURL];
  if ((v6 & 1) == 0)
  {
    v10 = PFLogArchiver(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      PFZipUnarchive_cold_1();
    }

    goto LABEL_22;
  }

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v63 = *MEMORY[0x1E696A370];
  v64[0] = &unk_1F42668E8;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
  v59[0] = 0;
  v9 = [v7 createDirectoryAtURL:v5 withIntermediateDirectories:0 attributes:v8 error:v59];
  v10 = v59[0];

  if (v9)
  {
    goto LABEL_3;
  }

  v15 = [v10 domain];
  if (![v15 isEqualToString:*MEMORY[0x1E696A250]])
  {

LABEL_13:
    v18 = PFLogArchiver(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      PFZipUnarchive_cold_2();
    }

    goto LABEL_22;
  }

  v16 = [v10 code];

  if (v16 != 516)
  {
    goto LABEL_13;
  }

LABEL_3:

  v11 = archive_write_disk_new();
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v11;
  v13 = archive_write_disk_set_standard_lookup();
  if (v13)
  {
    v14 = PFLogArchiver(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      PFZipUnarchive_cold_3(v12);
    }
  }

  else
  {
    v19 = archive_write_disk_set_options();
    if (!v19)
    {
      v23 = [v5 path];
      v10 = v23;
      if (v23)
      {
        v25 = realpath_DARWIN_EXTSN([v23 fileSystemRepresentation], 0);
        if (v25)
        {
          v26 = v25;
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v25];

          free(v26);
          v10 = v27;
        }

        else
        {
          v28 = PFLogArchiver(0);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            PFZipUnarchive_cold_6();
          }
        }
      }

      *&v24 = 134218240;
      v58 = v24;
      while (1)
      {
        next_header = archive_read_next_header();
        if (next_header)
        {
          if (next_header == 1)
          {
            v21 = 1;
            goto LABEL_82;
          }

          v48 = PFLogArchiver(next_header);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            PFZipUnarchive_cold_14(a1);
          }

          goto LABEL_66;
        }

        v30 = archive_entry_filetype();
        v31 = objc_autoreleasePoolPush();
        v32 = archive_entry_pathname_utf8();
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v34 = -1;
        do
        {
          v35 = *(v32 + v34++ + 1);
        }

        while (v35 == 47);
        if (v34)
        {
          v36 = PFLogArchiver(v32);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v47 = strlen(v33);
            *buf = v58;
            *&buf[4] = v34;
            v61 = 2048;
            v62 = v47;
            _os_log_error_impl(&dword_1C269D000, v36, OS_LOG_TYPE_ERROR, "PRSPosterArchiver: archive_entry with absolute path encountered...ignoring leading %zu of %zu bytes.", buf, 0x16u);
          }
        }

        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:&v33[v34]];
        v38 = [v37 length];
        if (!v38 && v30 != 0x4000)
        {
          v51 = PFLogArchiver(0);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            PFZipUnarchive_cold_7();
          }

          goto LABEL_73;
        }

        v39 = [v10 stringByAppendingPathComponent:v37, v58, 0];

        [v39 fileSystemRepresentation];
        archive_entry_update_pathname_utf8();

        objc_autoreleasePoolPop(v31);
        archive_entry_perm();
        archive_entry_set_perm();
        if (v38)
        {
          v40 = archive_write_header();
          if (v40)
          {
            v52 = PFLogArchiver(v40);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              PFArchiverZipData(v12);
            }

LABEL_80:

            goto LABEL_81;
          }

          v41 = archive_entry_size();
          is_set = archive_entry_size_is_set();
          if (is_set)
          {
            if (v41 >= 1)
            {
              if (!a3 || v41 <= a3)
              {
                while (1)
                {
                  v59[2] = 0;
                  *buf = 0;
                  v59[1] = 0;
                  data_block = archive_read_data_block();
                  if (data_block)
                  {
                    break;
                  }

                  v44 = archive_write_data_block();
                  if (v44 < 0)
                  {
                    v48 = PFLogArchiver(v44);
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      PFZipUnarchive_cold_9(v12);
                    }

                    goto LABEL_66;
                  }
                }

                if (data_block == 1)
                {
                  goto LABEL_56;
                }

                v48 = PFLogArchiver(data_block);
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  PFZipUnarchive_cold_10(a1);
                }

LABEL_66:

                goto LABEL_81;
              }

              v52 = PFLogArchiver(is_set);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                PFZipUnarchive_cold_11();
              }

              goto LABEL_80;
            }
          }

          else
          {
            v45 = PFLogArchiver(is_set);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1C269D000, v45, OS_LOG_TYPE_INFO, "PRSPosterArchiver: not writing archive_entry with unknown size", buf, 2u);
            }
          }

LABEL_56:
          v46 = archive_write_finish_entry();
          if (v46)
          {
            v52 = PFLogArchiver(v46);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              PFZipUnarchive_cold_12(v12);
            }

            goto LABEL_80;
          }
        }
      }

      v50 = PFLogArchiver(0);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        PFArchiverZipData();
      }

LABEL_73:
      objc_autoreleasePoolPop(v31);
LABEL_81:
      v21 = 0;
LABEL_82:
      v54 = archive_write_close();
      if (v54)
      {
        v55 = PFLogArchiver(v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          PFZipUnarchive_cold_15(v12);
        }

        v21 = 0;
      }

      v56 = archive_write_free();
      if (v56)
      {
        v57 = PFLogArchiver(v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          PFZipUnarchive_cold_5();
        }
      }

      goto LABEL_23;
    }

    v14 = PFLogArchiver(v19);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      PFZipUnarchive_cold_4(v12);
    }
  }

  v20 = archive_write_free();
  if (!v20)
  {
LABEL_25:
    v21 = 0;
    goto LABEL_24;
  }

  v10 = PFLogArchiver(v20);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    PFZipUnarchive_cold_5();
  }

LABEL_22:
  v21 = 0;
LABEL_23:

LABEL_24:
  return v21;
}

uint64_t PFUnarchiverZip(const void *a1, uint64_t a2, NSURL *a3, unint64_t a4)
{
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (!a1 || !v6)
  {
    goto LABEL_17;
  }

  Archive = PFZipCreateReadArchive();
  if (!Archive)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v10 = Archive;
  open_memory = archive_read_open_memory();
  if (open_memory)
  {
    v12 = PFLogArchiver(open_memory);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      PFUnarchiverZip(v10);
    }

    v8 = 0;
  }

  else
  {
    v8 = PFZipUnarchive(v10, v7, a4);
    close = archive_read_close();
    if (!close)
    {
      goto LABEL_13;
    }

    v12 = PFLogArchiver(close);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      PFUnarchiverZip(v10);
    }
  }

LABEL_13:
  free = archive_read_free();
  if (free)
  {
    v15 = PFLogArchiver(free);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      PFUnarchiverZip();
    }
  }

LABEL_17:

  return v8;
}

AAArchiveStream_impl *PFAppleArchiveDecompressStream(AAByteStream_impl *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = AADecompressionInputStreamOpen(a1, 0, 0);
    if (v4)
    {
      v5 = v4;
      v6 = AADecodeArchiveInputStreamOpen(v4, 0, 0, 0, 0);
      if (v6)
      {
        v7 = v6;
        v8 = AAExtractArchiveOutputStreamOpen([v3 fileSystemRepresentation], 0, 0, 0, 0);
        if (v8)
        {
          v9 = AAArchiveStreamProcess(v7, v8, 0, 0, 0, 0);
          AAArchiveStreamClose(v8);
          v8 = (v9 >= 0);
        }

        AAArchiveStreamClose(v7);
      }

      else
      {
        v8 = 0;
      }

      AAByteStreamClose(v5);
    }

    else
    {
      v8 = 0;
    }

    AAByteStreamClose(a1);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2)
{

  return archive_error_string();
}

void *__BSSafeCast(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    if (objc_opt_isKindOfClass())
    {
      a2 = v3;
    }

    else
    {
      a2 = 0;
    }
  }

  v4 = a2;

  return a2;
}

id PFTemporaryDirectoryCreatingIfItDoesntExistWithSubdirectoryNamed(void *a1)
{
  v1 = a1;
  if (PFTemporaryDirectoryCreatingIfItDoesntExistWithSubdirectoryNamed_onceToken != -1)
  {
    PFTemporaryDirectoryCreatingIfItDoesntExistWithSubdirectoryNamed_cold_1();
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v2 = PFTemporaryDirectoryCreatingIfItDoesntExistWithSubdirectoryNamed_tempDirectoryLock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __PFTemporaryDirectoryCreatingIfItDoesntExistWithSubdirectoryNamed_block_invoke_85;
  v6[3] = &unk_1E8189B80;
  v8 = &v9;
  v3 = v1;
  v7 = v3;
  [v2 performBlock:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

void sub_1C26BC53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PFTemporaryDirectoryCreatingIfItDoesntExistWithSubdirectoryNamed_block_invoke()
{
  PFTemporaryDirectoryCreatingIfItDoesntExistWithSubdirectoryNamed_tempDirectoryLock = [[PFOSUnfairLock alloc] initWithLockIdentifier:@"PFTemporaryDirectoryLock"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PFTemporaryDirectoryCreatingIfItDoesntExistWithSubdirectoryNamed_block_invoke_85(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = NSTemporaryDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"PFTemporaryDirectory"];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if ([*(a1 + 32) length])
  {
    v7 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingPathComponent:*(a1 + 32)];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = [v2 fileExistsAtPath:*(*(*(a1 + 40) + 8) + 40)];
  if (v10)
  {
    v11 = PFLogCommon(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __PFTemporaryDirectoryCreatingIfItDoesntExistWithSubdirectoryNamed_block_invoke_85_cold_2(v11);
    }
  }

  else
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v13 = PFFileProtectionNoneAttributes(v10);
    v19 = 0;
    v14 = [v2 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:v13 error:&v19];
    v11 = v19;

    v16 = PFLogCommon(v15);
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1C269D000, v17, OS_LOG_TYPE_DEFAULT, "CREATED POSTERBOARD TEMPORARY DIRECTORY", v18, 2u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      __PFTemporaryDirectoryCreatingIfItDoesntExistWithSubdirectoryNamed_block_invoke_85_cold_1();
    }
  }
}

id PFTemporaryDirectory(uint64_t a1)
{
  if (PFTemporaryDirectory_onceToken != -1)
  {
    PFTemporaryDirectory_cold_1();
  }

  v2 = PFTemporaryDirectory_temporaryDirectory;

  return v2;
}

uint64_t __PFTemporaryDirectory_block_invoke()
{
  PFTemporaryDirectory_temporaryDirectory = PFTemporaryDirectoryCreatingIfItDoesntExistWithSubdirectoryNamed(0);

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_9_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

uint64_t OUTLINED_FUNCTION_12()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{

  return objc_opt_isKindOfClass();
}

void sub_1C26C0BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_end_catch();
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PFIsRunningInUnitTest()
{
  result = MEMORY[0x1C691BCD0]("BOOL PFIsRunningInUnitTest(void)");
  if (result)
  {
    return getenv("RUNNING_IN_UNIT_TEST") != 0;
  }

  return result;
}

uint64_t PFSetRunningInUnitTest(int a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.PosterBoard"];

  if (v4)
  {
    PFSetRunningInUnitTest_cold_1();
  }

  v5 = MEMORY[0x1C691BCD0]("BOOL PFSetRunningInUnitTest(BOOL)");
  if (v5)
  {
    if (a1)
    {
      v6 = "1";
    }

    else
    {
      v6 = "0";
    }

    setenv("RUNNING_IN_UNIT_TEST", v6, a1);
  }

  return v5;
}

uint64_t PFCurrentDeviceClass()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue] - 1;
  if (v1 > 0xA)
  {
    v2 = -1;
  }

  else
  {
    v2 = qword_1C26E69B8[v1];
  }

  return v2;
}

uint64_t PFIsPhotosPosterProviderBundleId(void *a1)
{
  v1 = PFIsPhotosPosterProviderBundleId_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    PFIsPhotosPosterProviderBundleId_cold_1();
  }

  v3 = [PFIsPhotosPosterProviderBundleId_photosBundleIdentifiers containsObject:v2];

  return v3;
}

uint64_t __PFIsPhotosPosterProviderBundleId_block_invoke()
{
  PFIsPhotosPosterProviderBundleId_photosBundleIdentifiers = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.PhotosUIPrivate.PhotosPosterProvider", @"com.apple.PhotosUIPrivate.PhotosAmbientPosterProvider", 0}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PFBundleIdentifierRequiresMemoryHogAssertion(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.PaperBoard.LegacyPoster"])
  {
    v2 = 1;
  }

  else
  {
    v2 = PFIsPhotosPosterProviderBundleId(v1);
  }

  return v2;
}

uint64_t PF_IS_PAD_DEVICE(uint64_t a1, uint64_t a2)
{
  if (PF_IS_PAD_DEVICE_onceToken != -1)
  {
    PF_IS_PAD_DEVICE_cold_1();
  }

  return PF_IS_PAD_DEVICE_isPad;
}

void sub_1C26C1490(void *a1)
{
  objc_begin_catch(a1);

  objc_exception_rethrow();
}

__CFString *PFObjectFromXPCObject(void *a1)
{
  v1 = a1;
  Class = object_getClass(v1);
  if (Class == MEMORY[0x1E69E9EB0])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:xpc_int64_get_value(v1)];
    goto LABEL_30;
  }

  v3 = Class;
  if (Class == MEMORY[0x1E69E9F18])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:xpc_uint64_get_value(v1)];
    goto LABEL_30;
  }

  if (Class == MEMORY[0x1E69E9E58])
  {
    value = xpc_BOOL_get_value(v1);
    v8 = MEMORY[0x1E695E110];
    if (value)
    {
      v8 = MEMORY[0x1E695E118];
    }

    v6 = v8;
    goto LABEL_30;
  }

  if (Class != MEMORY[0x1E69E9F10])
  {
    if (Class == MEMORY[0x1E69E9E70])
    {
      v12 = objc_alloc(MEMORY[0x1E695DEF0]);
      bytes_ptr = xpc_data_get_bytes_ptr(v1);
      v6 = [v12 initWithBytes:bytes_ptr length:xpc_data_get_length(v1)];
    }

    else if (Class == MEMORY[0x1E69E9F20])
    {
      v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:xpc_uuid_get_bytes(v1)];
    }

    else if (Class == MEMORY[0x1E69E9E50])
    {
      v6 = PFNSArrayFromXPCArray(v1);
    }

    else if (Class == MEMORY[0x1E69E9E80])
    {
      v6 = PFNSDictionaryFromXPCDictionary(v1);
    }

    else if (Class == MEMORY[0x1E69E9EA0])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:xpc_fd_dup(v1)];
    }

    else if (Class == MEMORY[0x1E69E9E88])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:xpc_double_get_value(v1)];
    }

    else
    {
      if (Class != MEMORY[0x1E69E9ED0])
      {
        v4 = PFLogCommon(Class);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          [NSObject(PosterFoundation) pf_secureDecodedFromData:v3 ofClasses:v4 classReplacementMap:?];
        }

        v5 = 0;
        goto LABEL_31;
      }

      v6 = [MEMORY[0x1E695DFB0] null];
    }

LABEL_30:
    v5 = v6;
    goto LABEL_31;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_string_get_string_ptr(v1)];
  v10 = v9;
  v11 = &stru_1F425B6D8;
  if (v9)
  {
    v11 = v9;
  }

  v5 = v11;

LABEL_31:

  return v5;
}

id PFNSArrayFromXPCArray(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:xpc_array_get_count(v1)];
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __PFNSArrayFromXPCArray_block_invoke;
  applier[3] = &unk_1E8189E20;
  v7 = v2;
  v3 = v2;
  xpc_array_apply(v1, applier);

  v4 = [v3 copy];

  return v4;
}

id PFNSDictionaryFromXPCDictionary(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:xpc_dictionary_get_count(v1)];
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __PFNSDictionaryFromXPCDictionary_block_invoke;
  applier[3] = &unk_1E8189E48;
  v7 = v2;
  v3 = v2;
  xpc_dictionary_apply(v1, applier);

  v4 = [v3 copy];

  return v4;
}

uint64_t __PFNSArrayFromXPCArray_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = PFObjectFromXPCObject(a3);
  [v3 bs_safeAddObject:v4];

  return 1;
}

uint64_t __PFNSDictionaryFromXPCDictionary_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [v5 stringWithUTF8String:a2];
  v8 = PFObjectFromXPCObject(v6);

  [*(a1 + 32) bs_setSafeObject:v8 forKey:v7];
  return 1;
}

id PFXPCArrayFromNSArray(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  empty = xpc_array_create_empty();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = PFXPCObjectFromNSObject(*(*(&v10 + 1) + 8 * i));
        if (v8)
        {
          xpc_array_append_value(empty, v8);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return empty;
}

id PFXPCObjectFromNSObject(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 isNSNumber])
  {
    v2 = v1;
    if (CFNumberIsFloatType(v2))
    {
      [v2 doubleValue];
      v4 = xpc_double_create(v3);
    }

    else
    {
      v4 = xpc_int64_create([v2 longLongValue]);
    }

    v6 = v4;

    if (v6)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ([v1 isNSString])
  {
    v5 = xpc_string_create([v1 UTF8String]);
    goto LABEL_19;
  }

  if ([v1 isNSData])
  {
    v5 = xpc_data_create([v1 bytes], objc_msgSend(v1, "length"));
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *uuid = 0;
    v9 = 0;
    [v1 getUUIDBytes:uuid];
    v5 = xpc_uuid_create(uuid);
    goto LABEL_19;
  }

  if ([v1 isNSArray])
  {
    v5 = PFXPCArrayFromNSArray(v1);
    goto LABEL_19;
  }

  if ([v1 isNSDictionary])
  {
    v5 = PFXPCDictionaryFromNSDictionary(v1);
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = xpc_null_create();
LABEL_19:
    v6 = v5;
    if (v5)
    {
      goto LABEL_21;
    }
  }

LABEL_20:
  [MEMORY[0x1E695DF30] raise:@"Invalid Object" format:{@"Object %@ is invalid", v1}];
  v6 = 0;
LABEL_21:

  return v6;
}

id PFXPCDictionaryFromNSDictionary(void *a1)
{
  v1 = a1;
  empty = xpc_dictionary_create_empty();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PFXPCDictionaryFromNSDictionary_block_invoke;
  v5[3] = &unk_1E8189E70;
  v3 = empty;
  v6 = v3;
  [v1 enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

void __PFXPCDictionaryFromNSDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([v8 isNSString] & 1) == 0)
  {
    __PFXPCDictionaryFromNSDictionary_block_invoke_cold_1();
  }

  if ([v8 isNSString])
  {
    v6 = [v8 UTF8String];
    v7 = PFXPCObjectFromNSObject(v5);
    if (v7)
    {
      xpc_dictionary_set_value(*(a1 + 32), v6, v7);
    }
  }
}

uint64_t PFValidateDictionaryForClasses(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  if (a4)
  {
    v14 = [MEMORY[0x1E695DFA8] set];
    *a4 = v14;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    if (a5)
    {
LABEL_3:
      v15 = [MEMORY[0x1E695DFA8] set];
      *a5 = v15;
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_20:
      v16 = 1;
      goto LABEL_32;
    }
  }

  v15 = 0;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_4:
  if (([v11 isNSDictionary] & 1) == 0)
  {
    if (!a6)
    {
LABEL_31:
      v16 = 0;
      goto LABEL_32;
    }

    v20 = *MEMORY[0x1E696A588];
    v37[0] = *MEMORY[0x1E696A578];
    v37[1] = v20;
    v38[0] = @"Input is not an NSDictionary.";
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v21 stringWithFormat:@"Expected an NSDictionary, but received an object of type %@", v23];
    v38[1] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];

    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFValidationUtilitiesErrorDomain" code:1 userInfo:v25];
LABEL_30:

    goto LABEL_31;
  }

  v33 = v15;
  v34 = v14;
  v16 = _PFValidateDictionaryRecursive(v11, v12, v13, &v34, &v33, a6);
  v17 = v34;

  v18 = v33;
  if (a4 && ![v17 count])
  {
    *a4 = 0;
  }

  if (a5 && ![v18 count])
  {
    *a5 = 0;
  }

  if (a6)
  {
    v19 = v16;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    goto LABEL_17;
  }

  if (!*a6)
  {
    v25 = [MEMORY[0x1E696AD60] string];
    if ([v17 count])
    {
      v26 = [v17 allObjects];
      v27 = [v26 componentsJoinedByString:{@", "}];
      [v25 appendFormat:@"Invalid keys found: %@. ", v27];
    }

    if ([v18 count])
    {
      v28 = [v18 allObjects];
      v29 = [v28 componentsJoinedByString:{@", "}];
      [v25 appendFormat:@"Invalid objects found: %@.", v29];
    }

    if (![v25 length])
    {
      [v25 appendString:@"Unknown validation failure."];
    }

    v30 = *MEMORY[0x1E696A588];
    v35[0] = *MEMORY[0x1E696A578];
    v35[1] = v30;
    v36[0] = @"Dictionary validation failed.";
    v36[1] = v25;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFValidationUtilitiesErrorDomain" code:3 userInfo:v31];

    v15 = v18;
    v14 = v17;
    goto LABEL_30;
  }

  v16 = 0;
LABEL_17:
  v15 = v18;
  v14 = v17;
LABEL_32:

  return v16;
}

uint64_t _PFValidateDictionaryRecursive(void *a1, void *a2, void *a3, id *a4, id *a5, void *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    LODWORD(v15) = 1;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = _PFValidateObjectForClasses(v17, v10, a4, 1, a6);
        v19 = [v9 objectForKeyedSubscript:v17];
        v15 = _PFValidateObjectForClasses(v19, v11, a5, 0, a6) & v18 & v15;
      }

      v13 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

uint64_t PFValidateDictionaryForPropertyListTypes(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a1;
  v5 = [v3 setWithObject:objc_opt_class()];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = PFValidateDictionaryForClasses(v4, v5, v12, 0, 0, a2);

  return v13;
}

uint64_t _PFValidateObjectForClasses(void *a1, void *a2, id *a3, int a4, void *a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = v10;
  v12 = 1;
  if (v9 && v10)
  {
    v46 = a4;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (!v14)
    {
      goto LABEL_11;
    }

    v15 = v14;
    v16 = *v48;
LABEL_5:
    v17 = 0;
    while (1)
    {
      if (*v48 != v16)
      {
        objc_enumerationMutation(v13);
      }

      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v15)
        {
          goto LABEL_5;
        }

LABEL_11:

LABEL_33:
        if (a3)
        {
          [*a3 addObject:v9];
        }

        if (!a5 || *a5)
        {
          v12 = 0;
          goto LABEL_47;
        }

        v31 = @"Invalid dictionary object type.";
        if (v46)
        {
          v31 = @"Invalid dictionary key type.";
        }

        v32 = MEMORY[0x1E696AD60];
        v33 = v31;
        v21 = [v32 string];
        if ([v13 count])
        {
          [v21 appendString:@"Expected types: "];
          v34 = [v13 allObjects];
          v35 = [v34 componentsJoinedByString:{@", "}];
          [v21 appendString:v35];
        }

        else
        {
          [v21 appendString:@"No specific types allowed."];
        }

        v36 = *MEMORY[0x1E696A588];
        v55[0] = *MEMORY[0x1E696A578];
        v55[1] = v36;
        v56[0] = v33;
        v37 = MEMORY[0x1E696AEC0];
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = [v37 stringWithFormat:@"Object of type '%@' is not allowed. %{public}@", v39, v21];
        v56[1] = v40;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];

        v42 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFValidationUtilitiesErrorDomain" code:2 userInfo:v41];

        v43 = v42;
        *a5 = v42;

        v12 = 0;
LABEL_46:

        goto LABEL_47;
      }
    }

    if ([v9 isNSDictionary])
    {
      v18 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
      v19 = _PFValidateDictionaryRecursive(v9, v18, v13, a3, a3, a5);

      if ((v19 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_14;
    }

    if ([v9 isNSArray])
    {
      v45 = v11;
      v20 = v9;
      v21 = v13;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v22 = [v20 countByEnumeratingWithState:&v51 objects:v58 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v52;
        v25 = 1;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v52 != v24)
            {
              objc_enumerationMutation(v20);
            }

            v25 &= _PFValidateObjectForClasses(*(*(&v51 + 1) + 8 * i), v21, a3, 0, a5);
          }

          v23 = [v20 countByEnumeratingWithState:&v51 objects:v58 count:16];
        }

        while (v23);
        goto LABEL_32;
      }
    }

    else
    {
      if (![v9 conformsToProtocol:&unk_1F426A9C8])
      {
        v12 = 1;
        v21 = v13;
        goto LABEL_46;
      }

      v45 = v11;
      v20 = v9;
      v21 = v13;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v27 = [v20 countByEnumeratingWithState:&v51 objects:v58 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v52;
        v25 = 1;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v52 != v29)
            {
              objc_enumerationMutation(v20);
            }

            v25 &= _PFValidateObjectForClasses(*(*(&v51 + 1) + 8 * j), v21, a3, 0, a5);
          }

          v28 = [v20 countByEnumeratingWithState:&v51 objects:v58 count:16];
        }

        while (v28);
LABEL_32:

        v11 = v45;
        if ((v25 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_14:
        v12 = 1;
        goto LABEL_47;
      }
    }

    v12 = 1;
    v11 = v45;
    goto LABEL_46;
  }

LABEL_47:

  return v12;
}

id PFFileProtectionNoneAttributes(uint64_t a1)
{
  if (PFFileProtectionNoneAttributes_onceToken != -1)
  {
    PFFileProtectionNoneAttributes_cold_1();
  }

  v2 = PFFileProtectionNoneAttributes___sharedInstance;

  return v2;
}

void __PFFileProtectionNoneAttributes_block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696A3A0];
  v4[0] = *MEMORY[0x1E696A370];
  v4[1] = v0;
  v1 = *MEMORY[0x1E696A3A8];
  v5[0] = &unk_1F4266900;
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = PFFileProtectionNoneAttributes___sharedInstance;
  PFFileProtectionNoneAttributes___sharedInstance = v2;
}

void sub_1C26C3B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v40 - 192), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t PFServerPosterTypeFromDirectoryName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"staticdescriptors"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"descriptors"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"configurations"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PFServerPosterTypeToDirectoryName(unint64_t a1)
{
  if (a1 - 1 >= 4)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = NSStringFromPFServerPosterType(a1);
    v4 = [v2 stringWithFormat:@"cannot map PFServerPosterType %@ to a directoryName", v3];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      PFServerPosterTypeToDirectoryName_cold_1(v4);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1C26C3D94);
  }

  return *(&off_1E8189EE8 + a1 - 1);
}

id NSStringFromPFServerPosterType(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(lli)", a1];
  }

  else
  {
    v2 = *(&off_1E8189F08 + a1);
  }

  return v2;
}

void PFServerPosterTypeEnumerate(void *a1)
{
  v1 = a1;
  v2 = 0;
  v1[2](v1, 1, &v2);
  if ((v2 & 1) == 0)
  {
    v1[2](v1, 2, &v2);
    if ((v2 & 1) == 0)
    {
      v1[2](v1, 3, &v2);
    }
  }
}

__CFString *PFErrorCodeToDebugDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown error.";
  }

  else
  {
    return *(&off_1E8189F38 + a1 - 1);
  }
}

id PFGeneralErrorFromObjectWithLocalizedFailureReason(void *a1, void *a2, void *a3, void *a4, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = v18;
  if (!a5)
  {
    v20 = v18;
LABEL_5:
    v21 = v20;
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_9:
    v17 = objc_opt_new();
    if (v14)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (v18)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v18 arguments:&a9];
    goto LABEL_5;
  }

  v21 = 0;
  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v14)
  {
LABEL_7:
    v22 = objc_opt_class();
    v23 = [MEMORY[0x1E696AAE8] bundleForClass:v22];
    v24 = [v23 bundleIdentifier];

    v25 = NSStringFromClass(v22);
    v26 = [v24 stringByAppendingPathExtension:v25];

    goto LABEL_11;
  }

LABEL_10:
  v26 = @"com.apple.PosterFoundation";
LABEL_11:
  [v17 bs_setSafeObject:v21 forKey:*MEMORY[0x1E696A588]];
  [v17 bs_setSafeObject:v15 forKey:*MEMORY[0x1E696A578]];
  v27 = [MEMORY[0x1E696ABC0] errorWithDomain:v26 code:-1 userInfo:v17];

  return v27;
}

__CFString *PFFunctionNameForAddress(const void *a1)
{
  memset(&v4, 0, sizeof(v4));
  v1 = dladdr(a1, &v4);
  v2 = @"(Unknown location)";
  if (v1 && v4.dli_sname)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithCString:v4.dli_sname encoding:4];
  }

  return v2;
}

id PFLogCommon(uint64_t a1)
{
  if (PFLogCommon_onceToken != -1)
  {
    PFLogCommon_cold_1();
  }

  v2 = PFLogCommon___logObj;

  return v2;
}

uint64_t __PFLogCommon_block_invoke()
{
  PFLogCommon___logObj = os_log_create("com.apple.PosterFoundation", "Common");

  return MEMORY[0x1EEE66BB8]();
}

id PFLogArchiver(uint64_t a1)
{
  if (PFLogArchiver_onceToken != -1)
  {
    PFLogArchiver_cold_1();
  }

  v2 = PFLogArchiver___logObj;

  return v2;
}

uint64_t __PFLogArchiver_block_invoke()
{
  PFLogArchiver___logObj = os_log_create("com.apple.PosterFoundation", "Archiver");

  return MEMORY[0x1EEE66BB8]();
}

id PFLogPosterContents(uint64_t a1)
{
  if (PFLogPosterContents_onceToken != -1)
  {
    PFLogPosterContents_cold_1();
  }

  v2 = PFLogPosterContents___logObj;

  return v2;
}

uint64_t __PFLogPosterContents_block_invoke()
{
  PFLogPosterContents___logObj = os_log_create("com.apple.PosterFoundation", "PosterContents");

  return MEMORY[0x1EEE66BB8]();
}

id PFLogHosting(uint64_t a1)
{
  if (PFLogHosting_onceToken != -1)
  {
    PFLogHosting_cold_1();
  }

  v2 = PFLogHosting___logObj;

  return v2;
}

uint64_t __PFLogHosting_block_invoke()
{
  PFLogHosting___logObj = os_log_create("com.apple.PosterFoundation", "Hosting");

  return MEMORY[0x1EEE66BB8]();
}

id PFLogExtensions(uint64_t a1)
{
  if (PFLogExtensions_onceToken != -1)
  {
    PFLogExtensions_cold_1();
  }

  v2 = PFLogExtensions___logObj;

  return v2;
}

uint64_t __PFLogExtensions_block_invoke()
{
  PFLogExtensions___logObj = os_log_create("com.apple.PosterFoundation", "Extensions");

  return MEMORY[0x1EEE66BB8]();
}

id PFLogExtensionInstance(uint64_t a1)
{
  if (PFLogExtensionInstance_onceToken != -1)
  {
    PFLogExtensionInstance_cold_1();
  }

  v2 = PFLogExtensionInstance___logObj;

  return v2;
}

uint64_t __PFLogExtensionInstance_block_invoke()
{
  PFLogExtensionInstance___logObj = os_log_create("com.apple.PosterFoundation", "ExtensionInstance");

  return MEMORY[0x1EEE66BB8]();
}

id PFLogExtensionInstancePool(uint64_t a1)
{
  if (PFLogExtensionInstancePool_onceToken != -1)
  {
    PFLogExtensionInstancePool_cold_1();
  }

  v2 = PFLogExtensionInstancePool___logObj;

  return v2;
}

uint64_t __PFLogExtensionInstancePool_block_invoke()
{
  PFLogExtensionInstancePool___logObj = os_log_create("com.apple.PosterFoundation", "ExtensionInstancePool");

  return MEMORY[0x1EEE66BB8]();
}

id PFLogSQLite(uint64_t a1)
{
  if (PFLogSQLite_onceToken != -1)
  {
    PFLogSQLite_cold_1();
  }

  v2 = PFLogSQLite___logObj;

  return v2;
}

uint64_t __PFLogSQLite_block_invoke()
{
  PFLogSQLite___logObj = os_log_create("com.apple.PosterFoundation", "SQLite");

  return MEMORY[0x1EEE66BB8]();
}

id PFLogLayout(uint64_t a1)
{
  if (PFLogLayout_onceToken != -1)
  {
    PFLogLayout_cold_1();
  }

  v2 = PFLogLayout___logObj;

  return v2;
}

uint64_t __PFLogLayout_block_invoke()
{
  PFLogLayout___logObj = os_log_create("com.apple.PosterFoundation", "Layout");

  return MEMORY[0x1EEE66BB8]();
}

BOOL PFSQLiteDatabaseConnectionSharedInit(void *a1, void *a2, int a3, uint64_t a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  objc_opt_self();
  if ((a4 - 1) >= 3)
  {
    v11 = 0x100000;
  }

  else
  {
    v11 = 0x400000 - ((a4 - 1) << 20);
  }

  v12 = BSLogCommon();
  [v9 setLoggingCategory:v12];

  v13 = sqlite3_open_v2([v10 UTF8String], v9 + 3, v11 | a3, 0);
  if (v13)
  {
    v21 = [v9 loggingCategory];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v24 = 134218498;
      v25 = v9;
      v26 = 2114;
      v27 = v10;
      v28 = 1024;
      v29 = v13;
      _os_log_impl(&dword_1C269D000, v21, OS_LOG_TYPE_INFO, "[%p/'%{public}@'] Failed to open database due to result %d", &v24, 0x1Cu);
    }

    if (a5)
    {
      v22 = [MEMORY[0x1E696ABC0] pbf_sqliteDatabaseErrorWithCode:v13 errorMessage:@"PFSQLiteDatabaseConnectionSharedInit"];
      *a5 = v22;
    }

    v23 = PFLogSQLite(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = 134217984;
      v25 = v9;
      _os_log_impl(&dword_1C269D000, v23, OS_LOG_TYPE_INFO, "<%p> Closing connection from shared PFSQLiteDatabaseConnectionSharedInit", &v24, 0xCu);
    }

    [(PFSQLiteDatabaseConnection *)v9 _closeConnection];
  }

  else
  {
    Serial = BSDispatchQueueCreateSerial();
    v15 = v9[2];
    v9[2] = Serial;

    v16 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v17 = v9[4];
    v9[4] = v16;

    v18 = [v10 copy];
    v19 = v9[1];
    v9[1] = v18;
  }

  return v13 == 0;
}

void sub_1C26C93A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_6_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _Block_object_dispose(va, 8);
}

void OUTLINED_FUNCTION_7_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_1_5(void *a1, const char *a2)
{
  v5 = *(v2 + *(v3 + 2936));

  return [a1 initWithCapacity:v5];
}

void OUTLINED_FUNCTION_2_6(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

void *OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, void *a3)
{

  return [(PFSQLiteResultRow *)a1 _indexForKey:a3];
}

void sub_1C26CA8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C26CAD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C26CB198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

void sub_1C26CD37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C26CD630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_sync_exit(v14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PFFeatureEnabled(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 <= 8)
    {
      if (a1 == 6)
      {
      }

      else if (a1 == 7)
      {
      }

      return _os_feature_enabled_impl();
    }

    switch(a1)
    {
      case 9:
        if (_os_feature_enabled_impl())
        {

          return _os_feature_enabled_impl();
        }

        break;
      case 10:

        return _os_feature_enabled_impl();
      case 11:

        return _os_feature_enabled_impl();
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
      }

      else if (a1 == 4)
      {
      }

      return _os_feature_enabled_impl();
    }

    switch(a1)
    {
      case 0:

        return _os_feature_enabled_impl();
      case 1:

        return _os_feature_enabled_impl();
      case 2:

        return _os_feature_enabled_impl();
    }
  }

  return 0;
}

id PFPosterPathFileAttributes(uint64_t a1)
{
  if (PFPosterPathFileAttributes_onceToken != -1)
  {
    PFPosterPathFileAttributes_cold_1();
  }

  v2 = PFPosterPathFileAttributes___sharedInstance;

  return v2;
}

void __PFPosterPathFileAttributes_block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696A3A0];
  v4[0] = *MEMORY[0x1E696A370];
  v4[1] = v0;
  v1 = *MEMORY[0x1E696A3A8];
  v5[0] = &unk_1F4266918;
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = PFPosterPathFileAttributes___sharedInstance;
  PFPosterPathFileAttributes___sharedInstance = v2;
}

id PFPosterPathURLResourceValues(uint64_t a1)
{
  if (PFPosterPathURLResourceValues_onceToken != -1)
  {
    PFPosterPathURLResourceValues_cold_1();
  }

  v2 = PFPosterPathURLResourceValues___sharedInstance;

  return v2;
}

void __PFPosterPathURLResourceValues_block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695DAF0];
  v4[0] = *MEMORY[0x1E695DBB0];
  v4[1] = v0;
  v1 = *MEMORY[0x1E695DAF8];
  v5[0] = MEMORY[0x1E695E118];
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = PFPosterPathURLResourceValues___sharedInstance;
  PFPosterPathURLResourceValues___sharedInstance = v2;
}

void sub_1C26CFF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _consumeSandboxExtensionHandleForXPCObject(void *a1, void *a2, void *a3, objc_class *a4, void *a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = v12;
  if (!v9)
  {
    v16 = PFLogPosterContents(v12);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_23:
      v14 = -1;
      goto LABEL_24;
    }

    v22 = NSStringFromClass(a4);
    v39 = 138544130;
    v40 = v13;
    v41 = 2114;
    v42 = v22;
    v43 = 2114;
    *v44 = v10;
    *&v44[8] = 2114;
    *&v44[10] = v11;
    _os_log_impl(&dword_1C269D000, v16, OS_LOG_TYPE_DEFAULT, "found no sandboxToken from %{public}@ : <%{public}@ %{public}@ path=%{public}@>", &v39, 0x2Au);
LABEL_9:

    goto LABEL_23;
  }

  if (!xpc_string_get_string_ptr(v9))
  {
    Class = object_getClass(v9);
    name = xpc_type_get_name(Class);
    v16 = PFLogPosterContents(name);
    v25 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (!v25)
      {
        goto LABEL_23;
      }

      v26 = *__error();
      v27 = NSStringFromClass(a4);
      v39 = 136316674;
      v40 = name;
      v41 = 2112;
      v42 = v9;
      v43 = 2114;
      *v44 = v13;
      *&v44[8] = 1024;
      *&v44[10] = v26;
      *&v44[14] = 2114;
      *&v44[16] = v27;
      *&v44[24] = 2114;
      *&v44[26] = v10;
      v45 = 2114;
      v46 = v11;
      v28 = "sandboxToken was invalid XPC type %s in %@ from %{public}@ with %{darwin.errno}d : <%{public}@ %{public}@ path=%{public}@>";
      v29 = v16;
      v30 = 68;
    }

    else
    {
      if (!v25)
      {
        goto LABEL_23;
      }

      v36 = *__error();
      v27 = NSStringFromClass(a4);
      v39 = 136316418;
      v40 = name;
      v41 = 2112;
      v42 = v9;
      v43 = 2114;
      *v44 = v13;
      *&v44[8] = 1024;
      *&v44[10] = v36;
      *&v44[14] = 2114;
      *&v44[16] = v27;
      *&v44[24] = 2114;
      *&v44[26] = v11;
      v28 = "sandboxToken was invalid XPC type %s in %@ from %{public}@ with %{darwin.errno}d : <%{public}@ path=%{public}@>";
      v29 = v16;
      v30 = 58;
    }

    _os_log_error_impl(&dword_1C269D000, v29, OS_LOG_TYPE_ERROR, v28, &v39, v30);

    goto LABEL_23;
  }

  *__error() = 0;
  v14 = sandbox_extension_consume();
  v15 = PFLogPosterContents(v14);
  v16 = v15;
  if (v14 == -1)
  {
    v31 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (!v31)
      {
        goto LABEL_23;
      }

      v32 = *__error();
      v22 = NSStringFromClass(a4);
      v39 = 138413570;
      v40 = v9;
      v41 = 2114;
      v42 = v13;
      v43 = 1024;
      *v44 = v32;
      *&v44[4] = 2114;
      *&v44[6] = v22;
      *&v44[14] = 2114;
      *&v44[16] = v10;
      *&v44[24] = 2114;
      *&v44[26] = v11;
      v33 = "failed to consume sandboxToken %@ from %{public}@ with %{darwin.errno}d : <%{public}@ %{public}@ path=%{public}@>";
      v34 = v16;
      v35 = 58;
    }

    else
    {
      if (!v31)
      {
        goto LABEL_23;
      }

      v38 = *__error();
      v22 = NSStringFromClass(a4);
      v39 = 138413314;
      v40 = v9;
      v41 = 2114;
      v42 = v13;
      v43 = 1024;
      *v44 = v38;
      *&v44[4] = 2114;
      *&v44[6] = v22;
      *&v44[14] = 2114;
      *&v44[16] = v11;
      v33 = "failed to consume sandboxToken %@ from %{public}@ with %{darwin.errno}d : <%{public}@ path=%{public}@>";
      v34 = v16;
      v35 = 48;
    }

    _os_log_error_impl(&dword_1C269D000, v34, OS_LOG_TYPE_ERROR, v33, &v39, v35);
    goto LABEL_9;
  }

  v17 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v17)
    {
      v18 = NSStringFromClass(a4);
      v39 = 138544386;
      v40 = v9;
      v41 = 2112;
      v42 = v13;
      v43 = 2114;
      *v44 = v18;
      *&v44[8] = 2114;
      *&v44[10] = v10;
      *&v44[18] = 2114;
      *&v44[20] = v11;
      v19 = "consumed %{public}@ decoded sandboxToken %@ : <%{public}@ %{public}@ path=%{public}@>";
      v20 = v16;
      v21 = 52;
LABEL_18:
      _os_log_debug_impl(&dword_1C269D000, v20, OS_LOG_TYPE_DEBUG, v19, &v39, v21);
    }
  }

  else if (v17)
  {
    v18 = NSStringFromClass(a4);
    v39 = 138544130;
    v40 = v9;
    v41 = 2112;
    v42 = v13;
    v43 = 2114;
    *v44 = v18;
    *&v44[8] = 2114;
    *&v44[10] = v11;
    v19 = "consumed %{public}@ decoded sandboxToken %@ : <%{public}@ path=%{public}@>";
    v20 = v16;
    v21 = 42;
    goto LABEL_18;
  }

LABEL_24:

  return v14;
}

void OUTLINED_FUNCTION_5_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t Error.pf_description.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_1C26E2678();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_1C26E2658();

  v11 = [v10 pf_description];
  v12 = sub_1C26E2668();

  return v12;
}

void PFPosterRoleDefaultRoleForCurrentExtensionProcess_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v2 = 0;
  _os_log_fault_impl(&dword_1C269D000, v0, OS_LOG_TYPE_FAULT, "Unable to determine Role for process %{public}@; error looking up bundle: %{public}@", v1, 0x16u);
}

void PFPosterRoleDefaultRoleForCurrentExtensionProcess_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PFPosterRole  _Nonnull PFPosterRoleDefaultRoleForCurrentExtensionProcess(BOOL)"];
  OUTLINED_FUNCTION_1();
  v5 = @"PFPosterRole.m";
  v6 = 1024;
  v7 = 149;
  v8 = v3;
  v9 = a1;
  _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4, 0x26u);
}

void PFProvidersForRole_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSSet<NSString *> * _Nonnull PFProvidersForRole(__strong PFPosterRole _Nonnull)"];
  OUTLINED_FUNCTION_1();
  v5 = @"PFPosterRole.m";
  v6 = 1024;
  v7 = 243;
  v8 = v3;
  v9 = a1;
  _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4, 0x26u);
}

void PFPosterDefaultRoleForBundleIdentifier_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = v0;
  _os_log_error_impl(&dword_1C269D000, v1, OS_LOG_TYPE_ERROR, "No known role for bundle identifier: %{public}@, Recovering with %{public}@", v2, 0x16u);
}

void PFZipArchiverCompressDirectory_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PFZipArchiverCompressDirectory_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PFZipArchiverCompressDirectory_cold_3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PFUnarchiverZip()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_8();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PFArchiverZipData(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  archive_error_string();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void PFArchiverZipData()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0(&dword_1C269D000, v0, v1, "PRSPosterArchiver: failed to create temporary directory at %{public}@ - %@.");
}

{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  __assert_rtn("PFZipArchive", "PFPosterArchiver.m", 660, "NO");
}

{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_8();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

{
  OUTLINED_FUNCTION_8();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PFArchiverZipData(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11(a1, a2);
  *v3 = 136446210;
  *v2 = v4;
  OUTLINED_FUNCTION_10(&dword_1C269D000, v5, v6, "PRSPosterArchiver: archive_read_next_header failed - %{public}s.");
}

{
  v4 = OUTLINED_FUNCTION_11(a1, a2);
  *v3 = 136446210;
  *v2 = v4;
  OUTLINED_FUNCTION_10(&dword_1C269D000, v5, v6, "PRSPosterArchiver: archive_write_data failed - %{public}s.");
}

void PFUnarchiverZip(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void PFZipCreateReadArchive_cold_1(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void PFZipCreateReadArchive_cold_2(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void PFZipUnarchive_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PFZipUnarchive_cold_3(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void PFZipUnarchive_cold_4(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void PFZipUnarchive_cold_5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PFZipUnarchive_cold_6()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void PFZipUnarchive_cold_7()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PFZipUnarchive_cold_9(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void PFZipUnarchive_cold_10(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void PFZipUnarchive_cold_11()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void PFZipUnarchive_cold_12(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void PFZipUnarchive_cold_14(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void PFZipUnarchive_cold_15(uint64_t a1)
{
  archive_error_string();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __PFTemporaryDirectoryCreatingIfItDoesntExistWithSubdirectoryNamed_block_invoke_85_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(&dword_1C269D000, v0, OS_LOG_TYPE_FAULT, "ERROR CREATING POSTERBOARD TEMPORARY DIRECTORY: %{public}@", v1, 0xCu);
}

void PFSetRunningInUnitTest_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"NO == [[[NSBundle mainBundle] bundleIdentifier] isEqualToString:@com.apple.PosterBoard]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL PFSetRunningInUnitTest(BOOL)"];
    *buf = 138544130;
    v3 = v1;
    v4 = 2114;
    v5 = @"PFUtilities.m";
    v6 = 1024;
    v7 = 32;
    v8 = 2114;
    v9 = v0;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __PFXPCDictionaryFromNSDictionary_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PFXPCDictionaryFromNSDictionary expects NSString keys"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"xpc_object_t  _Nonnull PFXPCDictionaryFromNSDictionary(NSDictionary *__strong _Nonnull)_block_invoke"];
    v2 = 138544130;
    v3 = v1;
    v4 = 2114;
    v5 = @"PFUtilities.m";
    v6 = 1024;
    v7 = 399;
    v8 = 2114;
    v9 = v0;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v2, 0x26u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void PFServerPosterTypeToDirectoryName_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PFServerPosterTypeToDirectoryName(PFServerPosterType)"];
  OUTLINED_FUNCTION_1();
  v5 = @"PFServerPosterIdentity.m";
  v6 = 1024;
  v7 = 45;
  v8 = v3;
  v9 = a1;
  _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4, 0x26u);
}

void sub_1C26DD870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}