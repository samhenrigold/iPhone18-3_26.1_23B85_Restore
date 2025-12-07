@interface IMCoreAutomationHook
+ (id)stringFromAutomationErrorCode:(int64_t)code;
- (IMAccount)bestiMessageAccount;
- (id)chatForHandles:(id)handles error:(id *)error results:(id)results;
- (id)existingChatForGroupID:(id)d error:(id *)error results:(id)results;
- (id)handlesFromStrings:(id)strings error:(id *)error results:(id)results;
@end

@implementation IMCoreAutomationHook

- (IMAccount)bestiMessageAccount
{
  imessageAccount = self->_imessageAccount;
  if (!imessageAccount)
  {
    v4 = +[IMAccountController sharedInstance];
    v5 = +[IMServiceImpl iMessageService];
    v6 = [v4 bestAccountForService:v5];
    v7 = self->_imessageAccount;
    self->_imessageAccount = v6;

    imessageAccount = self->_imessageAccount;
  }

  return imessageAccount;
}

- (id)chatForHandles:(id)handles error:(id *)error results:(id)results
{
  v38[2] = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  resultsCopy = results;
  if ([handlesCopy count])
  {
    v9 = +[IMChatRegistry sharedRegistry];
    v10 = [v9 chatWithHandles:handlesCopy];

    if (v10)
    {
      groupID = [v10 groupID];
      [resultsCopy setValue:groupID forKey:@"group_id"];

      v10 = v10;
      v12 = v10;
    }

    else
    {
      v33[0] = *MEMORY[0x1E696A578];
      v22 = MEMORY[0x1E696AEC0];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(chat) == nil"];
      v24 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
      v25 = [v22 stringWithFormat:@"%@ (%@)", v23, v24];
      v33[1] = @"IMCoreAutomationHookParameterErrorLocation";
      v34[0] = v25;
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMCoreAutomationHook.m", 49];
      v34[1] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

      v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v27];
      if (v28)
      {
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = [v28 description];
            *buf = 138412290;
            v36 = v30;
            _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        if (error && !*error)
        {
          v31 = v28;
          *error = v28;
        }
      }

      v12 = 0;
    }
  }

  else
  {
    v37[0] = *MEMORY[0x1E696A578];
    v13 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "[handles count] == 0"];
    v15 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
    v16 = [v13 stringWithFormat:@"%@ (%@)", v14, v15];
    v37[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v38[0] = v16;
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMCoreAutomationHook.m", 47];
    v38[1] = v17;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v10];
    if (v18)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v18 description];
          *buf = 138412290;
          v36 = v20;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (error && !*error)
      {
        v21 = v18;
        *error = v18;
      }
    }

    v12 = 0;
  }

  return v12;
}

- (id)handlesFromStrings:(id)strings error:(id *)error results:(id)results
{
  v50[2] = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  resultsCopy = results;
  if ([stringsCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = stringsCopy;
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v11)
    {
      v12 = *v41;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v40 + 1) + 8 * i);
          bestiMessageAccount = [(IMCoreAutomationHook *)self bestiMessageAccount];
          v16 = [bestiMessageAccount imHandleWithID:v14];

          if (v16)
          {
            [array addObject:v16];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v11);
    }

    v17 = [v10 count];
    if (v17 == [array count])
    {
      [resultsCopy setObject:v10 forKey:@"members"];
      array = array;
      v18 = array;
      goto LABEL_32;
    }

    v44[0] = *MEMORY[0x1E696A578];
    v28 = MEMORY[0x1E696AEC0];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "[handleStrings count] != [outArray count]"];
    v30 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
    v31 = [v28 stringWithFormat:@"%@ (%@)", v29, v30];
    v44[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v45[0] = v31;
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMCoreAutomationHook.m", 68];
    v45[1] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];

    v34 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v33];
    if (v34)
    {
      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = [v34 description];
          *buf = 138412290;
          v48 = v36;
          _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (error && !*error)
      {
        v37 = v34;
        *error = v34;
      }
    }
  }

  else
  {
    v49[0] = *MEMORY[0x1E696A578];
    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "[handleStrings count] == 0"];
    v21 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
    v22 = [v19 stringWithFormat:@"%@ (%@)", v20, v21];
    v49[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v50[0] = v22;
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMCoreAutomationHook.m", 58];
    v50[1] = v23;
    array = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];

    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:array];
    if (v24)
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [v24 description];
          *buf = 138412290;
          v48 = v26;
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (error && !*error)
      {
        v27 = v24;
        *error = v24;
      }
    }
  }

  v18 = 0;
LABEL_32:

  return v18;
}

- (id)existingChatForGroupID:(id)d error:(id *)error results:(id)results
{
  v26[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  resultsCopy = results;
  v9 = +[IMChatRegistry sharedRegistry];
  v10 = [v9 existingChatWithGroupID:dCopy];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v25[0] = *MEMORY[0x1E696A578];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(chat) == nil"];
    v14 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
    v15 = [v12 stringWithFormat:@"%@ (%@)", v13, v14];
    v25[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v26[0] = v15;
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMCoreAutomationHook.m", 78];
    v26[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v17];
    if (v18)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v18 description];
          *buf = 138412290;
          v24 = v20;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (error && !*error)
      {
        v21 = v18;
        *error = v18;
      }
    }
  }

  return v10;
}

+ (id)stringFromAutomationErrorCode:(int64_t)code
{
  if (code <= 2)
  {
    if (code == 1)
    {
      v3 = MEMORY[0x1E696AEC0];
      v4 = 1;
      v5 = "IMCoreAutomationHookErrorCodeDomainTimeOut";
    }

    else
    {
      if (code != 2)
      {
        goto LABEL_13;
      }

      v3 = MEMORY[0x1E696AEC0];
      v4 = 2;
      v5 = "IMCoreAutomationHookErrorCodeInvalidParameters";
    }
  }

  else
  {
    switch(code)
    {
      case 3:
        v3 = MEMORY[0x1E696AEC0];
        v4 = 3;
        v5 = "IMCoreAutomationHookErrorCodeGroupCreationFailure";
        break;
      case 4:
        v3 = MEMORY[0x1E696AEC0];
        v4 = 4;
        v5 = "IMCoreAutomationHookErrorCodeChatNotFound";
        break;
      case 5:
        v3 = MEMORY[0x1E696AEC0];
        v4 = 5;
        v5 = "IMCoreAutomationHookErrorCodeConditionFailed";
        break;
      default:
        goto LABEL_13;
    }
  }

  self = [v3 stringWithFormat:@"%s:%ld", v5, v4];
LABEL_13:

  return self;
}

@end