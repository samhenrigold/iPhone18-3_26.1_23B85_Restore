@interface IMAutomation
- (BOOL)checkArgumentValidity:(id)validity forExpectedNumberOfArguments:(int)arguments;
- (id)IMCoreAutomationPerformOperationWithDictionary:(id)dictionary;
- (id)callIMCoreMethodWithDictionary:(id)dictionary;
- (id)startConversationFrom:(id)from andReceiveAt:(id)at;
@end

@implementation IMAutomation

- (BOOL)checkArgumentValidity:(id)validity forExpectedNumberOfArguments:(int)arguments
{
  validityCopy = validity;
  if (arguments < 1)
  {
    v12 = 1;
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"arg%d", 1];
    v7 = [validityCopy objectForKey:v6];

    if (v7)
    {
      v8 = 1;
      do
      {
        v9 = v8;
        if (arguments == v8)
        {
          break;
        }

        ++v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"arg%d", (v9 + 1)];
        v11 = [validityCopy objectForKey:v10];
      }

      while (v11);
      v12 = v9 >= arguments;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)callIMCoreMethodWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v8 = 0;
    goto LABEL_34;
  }

  v6 = [dictionaryCopy objectForKey:@"methodName"];
  v7 = v6;
  if (v6 && ![v6 isEqualToString:&stru_1F1B76F98])
  {
    if ([v7 isEqualToString:@"clearAttachmentsUploadedToCloudkit"])
    {
      v9 = objc_opt_new();
      clearAttachmentsUploadedToCloudkit = [v9 clearAttachmentsUploadedToCloudkit];
LABEL_10:
      v8 = clearAttachmentsUploadedToCloudkit;
LABEL_32:

      goto LABEL_33;
    }

    if ([v7 isEqualToString:@"deleteAttachmentWithMessageGUID"] && -[IMAutomation checkArgumentValidity:forExpectedNumberOfArguments:](self, "checkArgumentValidity:forExpectedNumberOfArguments:", v5, 2))
    {
      v9 = objc_opt_new();
      v11 = [v5 objectForKeyedSubscript:@"arg1"];
      v12 = [v5 objectForKeyedSubscript:@"arg2"];
      v13 = -[NSObject deleteAttachmentWithMessageGUID:andFilePathIndex:](v9, "deleteAttachmentWithMessageGUID:andFilePathIndex:", v11, [v12 integerValue]);
LABEL_30:
      v8 = v13;

      goto LABEL_31;
    }

    if ([v7 isEqualToString:@"dictionaryFromGUID"] && -[IMAutomation checkArgumentValidity:forExpectedNumberOfArguments:](self, "checkArgumentValidity:forExpectedNumberOfArguments:", v5, 1))
    {
      v9 = objc_opt_new();
      v11 = [v5 objectForKeyedSubscript:@"arg1"];
      v14 = [v9 dictionaryFromGUID:v11];
    }

    else
    {
      if ([v7 isEqualToString:@"fileSizeForMessageGUID"] && -[IMAutomation checkArgumentValidity:forExpectedNumberOfArguments:](self, "checkArgumentValidity:forExpectedNumberOfArguments:", v5, 2))
      {
        v9 = objc_opt_new();
        v11 = [v5 objectForKeyedSubscript:@"arg1"];
        v12 = [v5 objectForKeyedSubscript:@"arg2"];
        v13 = -[NSObject fileSizeForMessageGUID:withFilePathIndex:](v9, "fileSizeForMessageGUID:withFilePathIndex:", v11, [v12 integerValue]);
        goto LABEL_30;
      }

      if ([v7 isEqualToString:@"loadHighResolutionFileForMessageGUID"] && -[IMAutomation checkArgumentValidity:forExpectedNumberOfArguments:](self, "checkArgumentValidity:forExpectedNumberOfArguments:", v5, 2))
      {
        v9 = objc_opt_new();
        v11 = [v5 objectForKeyedSubscript:@"arg1"];
        v12 = [v5 objectForKeyedSubscript:@"arg2"];
        v13 = -[NSObject loadHighResolutionFileForMessageGUID:withFilePathIndex:](v9, "loadHighResolutionFileForMessageGUID:withFilePathIndex:", v11, [v12 integerValue]);
        goto LABEL_30;
      }

      if (![v7 isEqualToString:@"startConversationFrom"] || !-[IMAutomation checkArgumentValidity:forExpectedNumberOfArguments:](self, "checkArgumentValidity:forExpectedNumberOfArguments:", v5, 2))
      {
        if (![v7 isEqualToString:@"uploadAttachmentToCloudkitWithMessageGUID"] || !-[IMAutomation checkArgumentValidity:forExpectedNumberOfArguments:](self, "checkArgumentValidity:forExpectedNumberOfArguments:", v5, 2))
        {
          v16 = objc_alloc(MEMORY[0x1E695DF20]);
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find method %@", v7];
          clearAttachmentsUploadedToCloudkit = [v16 initWithObjectsAndKeys:{v9, @"error", 0}];
          goto LABEL_10;
        }

        v9 = objc_opt_new();
        v11 = [v5 objectForKeyedSubscript:@"arg1"];
        v12 = [v5 objectForKeyedSubscript:@"arg2"];
        v13 = -[NSObject uploadAttachmentToCloudkitWithMessageGUID:andFilePathIndex:](v9, "uploadAttachmentToCloudkitWithMessageGUID:andFilePathIndex:", v11, [v12 integerValue]);
        goto LABEL_30;
      }

      v9 = [v5 objectForKeyedSubscript:@"arg1"];
      v11 = [v5 objectForKeyedSubscript:@"arg2"];
      v14 = [(IMAutomation *)self startConversationFrom:v9 andReceiveAt:v11];
    }

    v8 = v14;
LABEL_31:

    goto LABEL_32;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"No method name was passed in", @"error", 0}];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "No method name was passed in", buf, 2u);
    }

    goto LABEL_32;
  }

LABEL_33:

LABEL_34:

  return v8;
}

- (id)IMCoreAutomationPerformOperationWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1A8259BB0;
  v18 = sub_1A825AF04;
  v19 = 0;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "IMCoreAutomationPerformOperationWithDictionary method call already on main queue", buf, 2u);
      }
    }

    v6 = [(IMAutomation *)self callIMCoreMethodWithDictionary:dictionaryCopy];
    v7 = v15[5];
    v15[5] = v6;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A830EF44;
    block[3] = &unk_1E7810CE0;
    v12 = &v14;
    block[4] = self;
    v11 = dictionaryCopy;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

- (id)startConversationFrom:(id)from andReceiveAt:(id)at
{
  v93 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  atCopy = at;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [fromCopy length];
  if (!atCopy || !v8)
  {
    [v7 setObject:@"Did not pass in a valid set of arguments" forKeyedSubscript:@"error"];
    v23 = v7;
    goto LABEL_70;
  }

  v77 = v7;
  v78 = atCopy;
  v9 = +[IMAccountController sharedInstance];
  v10 = +[IMServiceImpl iMessageService];
  v11 = [v9 accountsForService:v10];

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v87 objects:v92 count:16];
  if (!v13)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_17;
  }

  v14 = v13;
  v15 = 0;
  v16 = 0;
  v17 = *v88;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v88 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v87 + 1) + 8 * i);
      if ([v19 accountType] == 2)
      {
        v20 = v16;
        v21 = v15;
        v16 = v19;
      }

      else
      {
        v20 = v15;
        v21 = v19;
        if ([v19 accountType] != 1)
        {
          continue;
        }
      }

      v22 = v19;

      v15 = v21;
    }

    v14 = [v12 countByEnumeratingWithState:&v87 objects:v92 count:16];
  }

  while (v14);
LABEL_17:

  if (!(v15 | v16))
  {
    v7 = v77;
    [v77 setObject:@"No usable iMessageAccounts found" forKeyedSubscript:@"error"];
    v45 = v77;
    goto LABEL_69;
  }

  v24 = v15;
  fromCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"P:%@", fromCopy];
  if (v15 || (v26 = v16) == 0)
  {
    if (!v24 || (v26 = v24, v16))
    {
      if (!v16 || ([v16 login], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(fromCopy, "isEqualToString:", v27), v27, v26 = v16, (v28 & 1) == 0))
      {
        v26 = v24;
      }
    }
  }

  v75 = fromCopy;
  v82 = v24;
  v76 = v26;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v78;
  v29 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (!v29)
  {
    v81 = &stru_1F1B76F98;
    v31 = 1;
    goto LABEL_48;
  }

  v30 = v29;
  v80 = *v84;
  v81 = &stru_1F1B76F98;
  LOBYTE(v31) = 1;
  while (2)
  {
    v32 = 0;
    while (2)
    {
      if (*v84 != v80)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(*(&v83 + 1) + 8 * v32);
      if (![v33 length])
      {
        v7 = v77;
        [v77 setObject:@"Did not pass in valid alias" forKeyedSubscript:@"error"];
        v46 = v77;

        goto LABEL_46;
      }

      vettedAliases = [v82 vettedAliases];
      v35 = [vettedAliases containsObject:v33];

      if (v35)
      {
        if ((v31 & 1) == 0)
        {
          v31 = 0;
          goto LABEL_41;
        }

LABEL_36:
        aliases = [v82 aliases];
        v39 = [aliases containsObject:v33];

        if (v39 & 1) != 0 || ([v82 addAlias:v33], objc_msgSend(v82, "aliases"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "containsObject:", v33), v40, v42 = @"Failed to add alias to alias array | ", v43 = v81, (v41))
        {
          v31 = 1;
          goto LABEL_41;
        }
      }

      else
      {
        if ([v82 validateAlias:v33])
        {
          vettedAliases2 = [v82 vettedAliases];
          v37 = [vettedAliases2 containsObject:v33];

          if (v37)
          {
            goto LABEL_36;
          }
        }

        v42 = @"Failed to validate alias | ";
        v43 = v81;
      }

      v44 = [(__CFString *)v43 stringByAppendingString:v42];

      v31 = 0;
      v81 = v44;
LABEL_41:
      if (v30 != ++v32)
      {
        continue;
      }

      break;
    }

    v30 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_48:

  if (v76 == v82 && ([v82 aliases], v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "containsObject:", fromCopy), v50, (v51 & 1) == 0))
  {
    v7 = v77;
    [v77 setObject:@"Cannot set apple id caller id if this alias is not in alias list" forKeyedSubscript:@"error"];
    v68 = v77;
LABEL_46:
    v48 = v81;
    v47 = v82;
    v49 = v75;
  }

  else
  {
    vettedAliases3 = [v76 vettedAliases];
    v53 = [vettedAliases3 containsObject:fromCopy];

    v7 = v77;
    if ((v53 & 1) == 0)
    {
      if ([v76 validateAlias:fromCopy] && (objc_msgSend(v76, "vettedAliases"), v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "containsObject:", fromCopy), v54, (v55 & 1) != 0))
      {
        v31 = 1;
      }

      else
      {
        v56 = [(__CFString *)v81 stringByAppendingString:@"Failed to validate callerID | "];

        v31 = 0;
        v81 = v56;
      }
    }

    v57 = +[IMServiceImpl iMessageService];
    v58 = IMPreferredAccountForService(v57);

    if (v58 == v76)
    {
      if (v31)
      {
        goto LABEL_59;
      }

      v48 = v81;
      v47 = v82;
      v49 = v75;
LABEL_66:
      [v77 setObject:v48 forKeyedSubscript:@"error"];
    }

    else
    {
      service = [v76 service];
      v60 = IMSetPreferredAccountForService(v76, service);

      if ((v60 & 1) == 0)
      {
        v61 = @"Preferred account was not set to specified login account";
        v48 = v81;
        v47 = v82;
        v49 = v75;
        goto LABEL_63;
      }

LABEL_59:
      displayName = [v76 displayName];
      v63 = [displayName isEqualToString:fromCopy];

      if (v63)
      {
        v48 = v81;
        v47 = v82;
        v49 = v75;
        goto LABEL_67;
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.ft.CallerID.changed", 0, 0, 1u);
      [v76 setDisplayName:fromCopy];
      displayName2 = [v76 displayName];
      v66 = [displayName2 isEqualToString:fromCopy];

      v48 = v81;
      v47 = v82;
      v49 = v75;
      if ((v66 & 1) == 0)
      {
        v61 = @"Failed to change display name | ";
LABEL_63:
        v67 = [v48 stringByAppendingString:v61];

        v48 = v67;
        goto LABEL_66;
      }
    }

LABEL_67:
    aliases2 = [v47 aliases];
    [v77 setObject:aliases2 forKeyedSubscript:@"receivingAliases"];

    vettedAliases4 = [v47 vettedAliases];
    [v77 setObject:vettedAliases4 forKeyedSubscript:@"receivingVettedAliases"];

    displayName3 = [v76 displayName];
    [v77 setObject:displayName3 forKeyedSubscript:@"sendingDisplayName"];

    login = [v76 login];
    [v77 setObject:login forKeyedSubscript:@"sendingLogin"];

    v73 = v77;
  }

LABEL_69:
  atCopy = v78;
LABEL_70:

  return v7;
}

@end