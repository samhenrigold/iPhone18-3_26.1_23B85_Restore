@interface AAPersonaUtility
+ (BOOL)personaConsistencyCheck:(id)check;
+ (id)findEnterprisePersonaIdentifier;
+ (void)findEnterprisePersonaIdentifier;
+ (void)verifyAndFixPersonaIfNeeded:(id)needed desiredContext:(id)context;
@end

@implementation AAPersonaUtility

+ (id)findEnterprisePersonaIdentifier
{
  v26 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  listAllPersonaWithAttributes = [mEMORY[0x1E69DF068] listAllPersonaWithAttributes];

  v5 = _AALogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[(AAPersonaUtility *)listAllPersonaWithAttributes];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = listAllPersonaWithAttributes;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v20;
    *&v8 = 138412290;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 isEnterprisePersona])
        {
          userPersonaUniqueString = [v13 userPersonaUniqueString];

          v16 = _AALogSystem(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = v18;
            v24 = userPersonaUniqueString;
            _os_log_debug_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEBUG, "Found the enterprise persona (%@)!", buf, 0xCu);
          }

          v10 = userPersonaUniqueString;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)personaConsistencyCheck:(id)check
{
  checkCopy = check;
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v6 = [checkCopy isEqualToPersona:currentPersona];
  v7 = _AALogSystem(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[AAPersonaUtility personaConsistencyCheck:];
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    +[AAPersonaUtility personaConsistencyCheck:];
  }

  return v6;
}

+ (void)verifyAndFixPersonaIfNeeded:(id)needed desiredContext:(id)context
{
  neededCopy = needed;
  contextCopy = context;
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v10 = [neededCopy isEqualToPersona:currentPersona];
  v11 = v10;
  v12 = _AALogSystem(v10);
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[AAPersonaUtility verifyAndFixPersonaIfNeeded:desiredContext:];
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[AAPersonaUtility verifyAndFixPersonaIfNeeded:desiredContext:];
    }

    mEMORY[0x1E69DF068]2 = [MEMORY[0x1E69DF068] sharedManager];
    currentPersona2 = [mEMORY[0x1E69DF068]2 currentPersona];
    v16 = [currentPersona2 restorePersonaWithSavedPersonaContext:contextCopy];

    mEMORY[0x1E69DF068]3 = [MEMORY[0x1E69DF068] sharedManager];
    currentPersona3 = [mEMORY[0x1E69DF068]3 currentPersona];

    [self personaConsistencyCheck:neededCopy];
    currentPersona = currentPersona3;
  }
}

+ (void)findEnterprisePersonaIdentifier
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "personaAttributes: %@", &v2, 0xCu);
}

+ (void)personaConsistencyCheck:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [v3 userPersonaNickName];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_3_1() userPersonaUniqueString];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() userPersonaNickName];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_0() userPersonaUniqueString];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x34u);
}

+ (void)personaConsistencyCheck:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  [v3 userPersonaNickName];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_3_1() userPersonaUniqueString];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() userPersonaNickName];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_0() userPersonaUniqueString];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x34u);
}

+ (void)verifyAndFixPersonaIfNeeded:desiredContext:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [v3 userPersonaUniqueString];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_3_1() userPersonaNickName];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() userPersonaUniqueString];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_0() userPersonaNickName];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v5, v6, OS_LOG_TYPE_ERROR, v7, v8, 0x34u);
}

+ (void)verifyAndFixPersonaIfNeeded:desiredContext:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  [v3 userPersonaUniqueString];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_3_1() userPersonaNickName];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() userPersonaUniqueString];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_0() userPersonaNickName];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x34u);
}

@end