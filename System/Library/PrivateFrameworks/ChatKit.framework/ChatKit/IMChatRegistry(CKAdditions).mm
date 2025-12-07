@interface IMChatRegistry(CKAdditions)
- (id)_ck_chatForHandles:()CKAdditions displayName:lastAddressedHandle:lastAddressedSIMID:joinedChatsOnly:findMatchingNamedGroups:createIfNecessary:;
@end

@implementation IMChatRegistry(CKAdditions)

- (id)_ck_chatForHandles:()CKAdditions displayName:lastAddressedHandle:lastAddressedSIMID:joinedChatsOnly:findMatchingNamedGroups:createIfNecessary:
{
  v75 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v51 = a4;
  v49 = a5;
  v50 = a6;
  v52 = v15;
  if (CKIsRunningUITests(v50, v16))
  {
    array = [MEMORY[0x1E695DF70] array];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v19)
    {
      v20 = *v65;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v65 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = [*(*(&v64 + 1) + 8 * i) ID];
          if ([v22 _appearsToBePhoneNumber])
          {
            v23 = IMInternationalForPhoneNumberWithOptions();

            v22 = v23;
          }

          v24 = IMStripFormattingFromAddress();
          [array addObject:v24];
        }

        v19 = [v18 countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v19);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    obj = [mEMORY[0x1E69A5AF8] simulatedChats];

    v55 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
    if (v55)
    {
      v54 = *v61;
      while (2)
      {
        for (j = 0; j != v55; ++j)
        {
          if (*v61 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v60 + 1) + 8 * j);
          v28 = [MEMORY[0x1E695DFA8] set];
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          participants = [v27 participants];
          v30 = [participants countByEnumeratingWithState:&v56 objects:v72 count:16];
          if (v30)
          {
            v31 = *v57;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v57 != v31)
                {
                  objc_enumerationMutation(participants);
                }

                v33 = [*(*(&v56 + 1) + 8 * k) ID];
                v34 = IMStripFormattingFromAddress();
                [v28 addObject:v34];
              }

              v30 = [participants countByEnumeratingWithState:&v56 objects:v72 count:16];
            }

            while (v30);
          }

          v35 = [MEMORY[0x1E695DFD8] setWithArray:array];
          v36 = [v28 isEqualToSet:v35];

          if (v36)
          {
            v37 = v27;

            goto LABEL_32;
          }
        }

        v55 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
        if (v55)
        {
          continue;
        }

        break;
      }
    }

    v37 = 0;
LABEL_32:
  }

  else if ([v15 count] < 2)
  {
    if ([v15 count] == 1)
    {
      v39 = [v15 objectAtIndex:0];
      v37 = [self existingChatWithHandle:v39 allowAlternativeService:0];
      if (!v37 && a9)
      {
        if (IMOSLoggingEnabled())
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v69 = v49;
            v70 = 2112;
            v71 = v50;
            _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "Creating chat with last addressed handle %@ last addressed sim ID %@", buf, 0x16u);
          }
        }

        v37 = [self chatWithHandle:v39 lastAddressedHandle:v49 lastAddressedSIMID:v50];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(19);
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v69 = v15;
          _os_log_impl(&dword_19020E000, v42, OS_LOG_TYPE_DEBUG, "Bad recipients for conversation request. %@", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        _CKLog(0x13u, @"Bad recipients for conversation request. %@", v43, v44, v45, v46, v47, v48, v15);
      }

      v37 = 0;
    }
  }

  else
  {
    if (a8)
    {
      v37 = [self existingChatWithHandles:v15 allowAlternativeService:0 groupID:0 displayName:v51 joinedChatsOnly:a7];
      if (v37)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v37 = 0;
    }

    if (a9)
    {
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v69 = v49;
          v70 = 2112;
          v71 = v50;
          _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "Creating group chat with last addressed handle %@ last addressed sim ID %@", buf, 0x16u);
        }
      }

      v37 = [self chatWithHandles:v52 displayName:v51 joinedChatsOnly:a7 findMatchingNamedGroups:a8 lastAddressedHandle:v49 lastAddressedSIMID:v50];
    }
  }

LABEL_33:

  return v37;
}

@end