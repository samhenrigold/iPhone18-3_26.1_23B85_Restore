@interface IMAutomationGroupChat
- (id)_runChangeParticipantsQueryWithGroupID:(id)d participants:(id)participants timeOut:(double)out error:(id *)error optArguments:(id)arguments addParticipants:(BOOL)addParticipants;
- (id)changeGroupNameWithGroupID:(id)d newName:(id)name timeOut:(double)out error:(id *)error optArguments:(id)arguments;
- (id)createGroupChatWithDestinationIDs:(id)ds error:(id *)error optArguments:(id)arguments;
- (id)groupNameWithGroupID:(id)d timeOut:(double)out error:(id *)error optArguments:(id)arguments;
- (id)groupParticipantsWithGroupID:(id)d timeOut:(double)out error:(id *)error optArguments:(id)arguments;
@end

@implementation IMAutomationGroupChat

- (id)createGroupChatWithDestinationIDs:(id)ds error:(id *)error optArguments:(id)arguments
{
  v39[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  argumentsCopy = arguments;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10 = [(IMCoreAutomationHook *)self handlesFromStrings:dsCopy error:error results:dictionary];
  if (v10)
  {
    v11 = [(IMCoreAutomationHook *)self chatForHandles:v10 error:error results:dictionary];
    if (v11)
    {
      v12 = dictionary;
      goto LABEL_23;
    }

    v34[0] = *MEMORY[0x1E696A578];
    v22 = MEMORY[0x1E696AEC0];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(chat) == nil"];
    v24 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
    v25 = [v22 stringWithFormat:@"%@ (%@)", v23, v24];
    v35[0] = v25;
    v34[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 32];
    v35[1] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

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
          v37 = v30;
          _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (error && !*error)
      {
        v31 = v28;
        *error = v28;
      }
    }
  }

  else
  {
    v38[0] = *MEMORY[0x1E696A578];
    v13 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(handles) == nil"];
    v15 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
    v16 = [v13 stringWithFormat:@"%@ (%@)", v14, v15];
    v39[0] = v16;
    v38[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 29];
    v39[1] = v17;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v11];
    if (v18)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v18 description];
          *buf = 138412290;
          v37 = v20;
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

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)_runChangeParticipantsQueryWithGroupID:(id)d participants:(id)participants timeOut:(double)out error:(id *)error optArguments:(id)arguments addParticipants:(BOOL)addParticipants
{
  addParticipantsCopy = addParticipants;
  v81[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  participantsCopy = participants;
  argumentsCopy = arguments;
  if (!dCopy)
  {
    errorCopy = error;
    v80[0] = *MEMORY[0x1E696A578];
    v24 = MEMORY[0x1E696AEC0];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(groupID) == nil"];
    v26 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
    v27 = [v24 stringWithFormat:@"%@ (%@)", v25, v26];
    v81[0] = v27;
    v80[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 44];
    v81[1] = v28;
    dictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:dictionary];
    if (v17)
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [v17 description];
          *buf = 138412290;
          v79 = v30;
          _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (errorCopy && !*errorCopy)
      {
        v31 = v17;
        v32 = 0;
        *errorCopy = v17;
LABEL_25:
        v16 = v17;
        goto LABEL_57;
      }
    }

LABEL_24:
    v32 = 0;
    goto LABEL_25;
  }

  errorCopy2 = error;
  if (![participantsCopy count])
  {
    v76[0] = *MEMORY[0x1E696A578];
    v33 = MEMORY[0x1E696AEC0];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "[participants count] == 0"];
    v35 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
    v36 = [v33 stringWithFormat:@"%@ (%@)", v34, v35];
    v77[0] = v36;
    v76[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 45];
    v77[1] = v37;
    dictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:2];

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:dictionary];
    if (v17)
    {
      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = [v17 description];
          *buf = 138412290;
          v79 = v39;
          _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (errorCopy2 && !*errorCopy2)
      {
        v66 = v17;
        v32 = 0;
        *errorCopy2 = v17;
        goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v16 = [(IMCoreAutomationHook *)self handlesFromStrings:participantsCopy error:error results:dictionary];
  if (v16)
  {
    v17 = [(IMCoreAutomationHook *)self existingChatForGroupID:dCopy error:0 results:dictionary];
    if (v17 || ([(IMCoreAutomationHook *)self chatForHandles:v16 error:error results:dictionary], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = objc_alloc(MEMORY[0x1E696AAB0]);
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      v20 = [mainBundle localizedStringForKey:@"join us" value:&stru_1F1B76F98 table:0];
      v21 = [v18 initWithString:v20];
      v22 = [IMMessage instantMessageWithText:v21 messageSubject:0 fileTransferGUIDs:0 flags:5 threadIdentifier:0];

      if (v22)
      {
        if (addParticipantsCopy)
        {
          [v17 inviteParticipants:v16 reason:v22];
        }

        else
        {
          [v17 removeParticipants:v16 reason:v22];
        }

        v32 = dictionary;
        goto LABEL_56;
      }

      v70[0] = *MEMORY[0x1E696A578];
      v48 = MEMORY[0x1E696AEC0];
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(message) == nil"];
      v50 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
      v51 = [v48 stringWithFormat:@"%@ (%@)", v49, v50];
      v71[0] = v51;
      v70[1] = @"IMCoreAutomationHookParameterErrorLocation";
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 65];
      v71[1] = v52;
      v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];

      v53 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v67];
      if (v53)
      {
        if (IMOSLoggingEnabled())
        {
          v54 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            v55 = [v53 description];
            *buf = 138412290;
            v79 = v55;
            _os_log_impl(&dword_1A823F000, v54, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        if (errorCopy2 && !*errorCopy2)
        {
          v56 = v53;
          *errorCopy2 = v53;
        }
      }
    }

    else
    {
      v72[0] = *MEMORY[0x1E696A578];
      v57 = MEMORY[0x1E696AEC0];
      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(chat) == nil"];
      v59 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
      v60 = [v57 stringWithFormat:@"%@ (%@)", v58, v59];
      v73[0] = v60;
      v72[1] = @"IMCoreAutomationHookParameterErrorLocation";
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 57];
      v73[1] = v61;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];

      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v17];
      if (v22)
      {
        if (IMOSLoggingEnabled())
        {
          v62 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = [v22 description];
            *buf = 138412290;
            v79 = v63;
            _os_log_impl(&dword_1A823F000, v62, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        if (errorCopy2 && !*errorCopy2)
        {
          v64 = v22;
          *errorCopy2 = v22;
        }
      }
    }
  }

  else
  {
    v74[0] = *MEMORY[0x1E696A578];
    v40 = MEMORY[0x1E696AEC0];
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(handles) == nil"];
    v42 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
    v43 = [v40 stringWithFormat:@"%@ (%@)", v41, v42];
    v75[0] = v43;
    v74[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 50];
    v75[1] = v44;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];

    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v17];
    if (v22)
    {
      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = [v22 description];
          *buf = 138412290;
          v79 = v46;
          _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (errorCopy2 && !*errorCopy2)
      {
        v47 = v22;
        *errorCopy2 = v22;
      }
    }
  }

  v32 = 0;
LABEL_56:

LABEL_57:

  return v32;
}

- (id)changeGroupNameWithGroupID:(id)d newName:(id)name timeOut:(double)out error:(id *)error optArguments:(id)arguments
{
  v52[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  nameCopy = name;
  argumentsCopy = arguments;
  if (dCopy)
  {
    if (nameCopy)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v14 = [(IMCoreAutomationHook *)self existingChatForGroupID:dCopy error:error results:dictionary];
      v15 = v14;
      if (v14)
      {
        [v14 setDisplayName:nameCopy];
        [dictionary setObject:nameCopy forKeyedSubscript:@"name"];
        dictionary = dictionary;
        v16 = dictionary;
        goto LABEL_33;
      }

      v45[0] = *MEMORY[0x1E696A578];
      v33 = MEMORY[0x1E696AEC0];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(chat) == nil"];
      v35 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
      v36 = [v33 stringWithFormat:@"%@ (%@)", v34, v35];
      v46[0] = v36;
      v45[1] = @"IMCoreAutomationHookParameterErrorLocation";
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 117];
      v46[1] = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];

      v39 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v38];
      if (v39)
      {
        if (IMOSLoggingEnabled())
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = [v39 description];
            *buf = 138412290;
            v50 = v41;
            _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        if (error && !*error)
        {
          v42 = v39;
          *error = v39;
        }
      }
    }

    else
    {
      v47[0] = *MEMORY[0x1E696A578];
      v25 = MEMORY[0x1E696AEC0];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(newName) == nil"];
      v27 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
      v28 = [v25 stringWithFormat:@"%@ (%@)", v26, v27];
      v48[0] = v28;
      v47[1] = @"IMCoreAutomationHookParameterErrorLocation";
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 113];
      v48[1] = v29;
      dictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];

      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:dictionary];
      if (v15)
      {
        if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = [v15 description];
            *buf = 138412290;
            v50 = v31;
            _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        if (error && !*error)
        {
          v32 = v15;
          *error = v15;
        }
      }
    }
  }

  else
  {
    v51[0] = *MEMORY[0x1E696A578];
    v17 = MEMORY[0x1E696AEC0];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(groupID) == nil"];
    v19 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
    v20 = [v17 stringWithFormat:@"%@ (%@)", v18, v19];
    v52[0] = v20;
    v51[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 112];
    v52[1] = v21;
    dictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:dictionary];
    if (v15)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v15 description];
          *buf = 138412290;
          v50 = v23;
          _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (error && !*error)
      {
        v24 = v15;
        *error = v15;
      }
    }
  }

  v16 = 0;
LABEL_33:

  return v16;
}

- (id)groupParticipantsWithGroupID:(id)d timeOut:(double)out error:(id *)error optArguments:(id)arguments
{
  v118[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  argumentsCopy = arguments;
  if (dCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v10 = [(IMCoreAutomationHook *)self existingChatForGroupID:dCopy error:error results:dictionary];
    v11 = v10;
    if (!v10)
    {
      v113[0] = *MEMORY[0x1E696A578];
      v43 = MEMORY[0x1E696AEC0];
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(chat) == nil"];
      v45 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
      v46 = [v43 stringWithFormat:@"%@ (%@)", v44, v45];
      v114[0] = v46;
      v113[1] = @"IMCoreAutomationHookParameterErrorLocation";
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 129];
      v114[1] = v47;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:2];

      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v14];
      if (v13)
      {
        if (IMOSLoggingEnabled())
        {
          v48 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v49 = [v13 description];
            *buf = 138412290;
            v116 = v49;
            _os_log_impl(&dword_1A823F000, v48, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        if (error && !*error)
        {
          v50 = v13;
          *error = v13;
        }
      }

      goto LABEL_41;
    }

    participants = [v10 participants];
    v13 = [MEMORY[0x1E695DFA8] set];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v14 = participants;
    v15 = [v14 countByEnumeratingWithState:&v99 objects:v112 count:16];
    if (v15)
    {
      v16 = *v100;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v100 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v99 + 1) + 8 * i);
          v19 = [v18 ID];
          v20 = v19 == 0;

          if (v20)
          {
            v110[0] = *MEMORY[0x1E696A578];
            v33 = MEMORY[0x1E696AEC0];
            v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "([handle ID]) == nil"];
            v35 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
            v36 = [v33 stringWithFormat:@"%@ (%@)", v34, v35];
            v111[0] = v36;
            v110[1] = @"IMCoreAutomationHookParameterErrorLocation";
            v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 135];
            v111[1] = v37;
            v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:2];

            v39 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v38];
            if (v39)
            {
              if (IMOSLoggingEnabled())
              {
                v40 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  v41 = [v39 description];
                  *buf = 138412290;
                  v116 = v41;
                  _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
                }
              }

              if (error && !*error)
              {
                v42 = v39;
                *error = v39;
              }
            }

            goto LABEL_41;
          }

          v21 = [v18 ID];
          [v13 addObject:v21];
        }

        v15 = [v14 countByEnumeratingWithState:&v99 objects:v112 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    lastAddressedHandleID = [v11 lastAddressedHandleID];
    v23 = [lastAddressedHandleID length] == 0;

    if (v23)
    {
      if ([v11 joinState] != 3)
      {
        goto LABEL_57;
      }

      account = [v11 account];
      lastAddressedHandleID2 = account;
      if (!account)
      {
        v108[0] = *MEMORY[0x1E696A578];
        v81 = MEMORY[0x1E696AEC0];
        v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(account) == nil"];
        v83 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
        v84 = [v81 stringWithFormat:@"%@ (%@)", v82, v83];
        v109[0] = v84;
        v108[1] = @"IMCoreAutomationHookParameterErrorLocation";
        v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 145];
        v109[1] = v85;
        v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:2];

        v87 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v86];
        if (v87)
        {
          if (IMOSLoggingEnabled())
          {
            v88 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
            {
              v89 = [v87 description];
              *buf = 138412290;
              v116 = v89;
              _os_log_impl(&dword_1A823F000, v88, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
            }
          }

          if (error && !*error)
          {
            v90 = v87;
            *error = v87;
          }
        }

        goto LABEL_41;
      }

      [account arrayOfAllIMHandles];
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      obj = v96 = 0u;
      v53 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
      if (v53)
      {
        v54 = *v96;
        while (2)
        {
          for (j = 0; j != v53; ++j)
          {
            if (*v96 != v54)
            {
              objc_enumerationMutation(obj);
            }

            displayID = [*(*(&v95 + 1) + 8 * j) displayID];
            if (!displayID)
            {
              v105[0] = *MEMORY[0x1E696A578];
              v72 = MEMORY[0x1E696AEC0];
              v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(handleString) == nil"];
              v73 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
              v74 = [v72 stringWithFormat:@"%@ (%@)", v91, v73];
              v106[0] = v74;
              v105[1] = @"IMCoreAutomationHookParameterErrorLocation";
              v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 150];
              v106[1] = v75;
              v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:2];

              v77 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v76];
              if (v77)
              {
                if (IMOSLoggingEnabled())
                {
                  v78 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
                  {
                    v79 = [v77 description];
                    *buf = 138412290;
                    v116 = v79;
                    _os_log_impl(&dword_1A823F000, v78, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
                  }
                }

                if (error && !*error)
                {
                  v80 = v77;
                  *error = v77;
                }
              }

              goto LABEL_41;
            }

            [v13 addObject:displayID];
          }

          v53 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
          if (v53)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      lastAddressedHandleID2 = [v11 lastAddressedHandleID];
      [v13 addObject:lastAddressedHandleID2];
    }

LABEL_57:
    if (v13)
    {
      if (IMOSLoggingEnabled())
      {
        v57 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v116 = dCopy;
          _os_log_impl(&dword_1A823F000, v57, OS_LOG_TYPE_INFO, "groupParticipantsWithGroupID incoming ID %@ ", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v58 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v116 = v13;
          _os_log_impl(&dword_1A823F000, v58, OS_LOG_TYPE_INFO, "groupParticipantsWithGroupID resulting participants %@ ", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v116 = v11;
          _os_log_impl(&dword_1A823F000, v59, OS_LOG_TYPE_INFO, "groupParticipantsWithGroupID resulting chat %@ ", buf, 0xCu);
        }
      }

      [dictionary setObject:dCopy forKey:@"group_id"];
      allObjects = [v13 allObjects];
      [dictionary setObject:allObjects forKey:@"members"];

      v32 = dictionary;
      goto LABEL_42;
    }

    v103[0] = *MEMORY[0x1E696A578];
    v62 = MEMORY[0x1E696AEC0];
    v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(outList) == nil"];
    v64 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
    v65 = [v62 stringWithFormat:@"%@ (%@)", v63, v64];
    v104[0] = v65;
    v103[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 156];
    v104[1] = v66;
    v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:2];

    v68 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v67];
    if (v68)
    {
      if (IMOSLoggingEnabled())
      {
        v69 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v70 = [v68 description];
          *buf = 138412290;
          v116 = v70;
          _os_log_impl(&dword_1A823F000, v69, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (error && !*error)
      {
        v71 = v68;
        *error = v68;
      }
    }

LABEL_41:
    v32 = 0;
LABEL_42:

    goto LABEL_43;
  }

  v117[0] = *MEMORY[0x1E696A578];
  v25 = MEMORY[0x1E696AEC0];
  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(groupID) == nil"];
  v27 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
  v28 = [v25 stringWithFormat:@"%@ (%@)", v26, v27];
  v118[0] = v28;
  v117[1] = @"IMCoreAutomationHookParameterErrorLocation";
  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 126];
  v118[1] = v29;
  dictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:2];

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:dictionary];
  if (!v14)
  {
    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = [v14 description];
      *buf = 138412290;
      v116 = v31;
      _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  if (error && !*error)
  {
    v61 = v14;
    v32 = 0;
    *error = v14;
  }

  else
  {
LABEL_21:
    v32 = 0;
  }

  v11 = v14;
LABEL_43:

  return v32;
}

- (id)groupNameWithGroupID:(id)d timeOut:(double)out error:(id *)error optArguments:(id)arguments
{
  v41[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  argumentsCopy = arguments;
  if (dCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v12 = [(IMCoreAutomationHook *)self existingChatForGroupID:dCopy error:error results:dictionary];
    v13 = v12;
    if (v12)
    {
      displayName = [v12 displayName];
      if (displayName)
      {
        v15 = displayName;
      }

      else
      {
        v15 = &stru_1F1B76F98;
      }

      [dictionary setObject:v15 forKey:@"name"];
      dictionary = dictionary;

      v16 = dictionary;
      goto LABEL_26;
    }

    v36[0] = *MEMORY[0x1E696A578];
    v25 = MEMORY[0x1E696AEC0];
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(chat) == nil"];
    v27 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
    v28 = [v25 stringWithFormat:@"%@ (%@)", v26, v27];
    v37[0] = v28;
    v36[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 171];
    v37[1] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

    v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:v30];
    if (v31)
    {
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [v31 description];
          *buf = 138412290;
          v39 = v33;
          _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (error && !*error)
      {
        v34 = v31;
        *error = v31;
      }
    }
  }

  else
  {
    v40[0] = *MEMORY[0x1E696A578];
    v17 = MEMORY[0x1E696AEC0];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Condition failed : '%s'", "(groupID) == nil"];
    v19 = [IMCoreAutomationHook stringFromAutomationErrorCode:5];
    v20 = [v17 stringWithFormat:@"%@ (%@)", v18, v19];
    v41[0] = v20;
    v40[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 168];
    v41[1] = v21;
    dictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMCoreAutomationHookErrorDomain" code:5 userInfo:dictionary];
    if (v13)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v13 description];
          *buf = 138412290;
          v39 = v23;
          _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (error && !*error)
      {
        v24 = v13;
        *error = v13;
      }
    }
  }

  v16 = 0;
LABEL_26:

  return v16;
}

@end