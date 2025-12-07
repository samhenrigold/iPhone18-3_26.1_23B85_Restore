@interface DADiagnosticsRemoteViewControllerHostToServiceAction
+ (id)actionToString:(int64_t)string;
+ (id)actionWithType:(int64_t)type object:(id)object;
- (void)performActionForHostedWindowScene:(id)scene;
@end

@implementation DADiagnosticsRemoteViewControllerHostToServiceAction

+ (id)actionWithType:(int64_t)type object:(id)object
{
  v19 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [v7 setObject:v8 forSetting:0];

  [v7 setObject:objectCopy forSetting:1];
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [self actionToString:type];
    v13 = 136315650;
    v14 = "+[DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:object:]";
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = objectCopy;
    _os_log_impl(&dword_275BB3000, v9, OS_LOG_TYPE_DEFAULT, "%s Created %@ action with object %@", &v13, 0x20u);
  }

  v11 = [[self alloc] initWithInfo:v7 responder:0];

  return v11;
}

- (void)performActionForHostedWindowScene:(id)scene
{
  v23 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  info = [(DADiagnosticsRemoteViewControllerHostToServiceAction *)self info];
  v6 = [info objectForSetting:0];
  integerValue = [v6 integerValue];

  info2 = [(DADiagnosticsRemoteViewControllerHostToServiceAction *)self info];
  v9 = [info2 objectForSetting:1];

  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionToString:integerValue];
    v17 = 136315650;
    v18 = "[DADiagnosticsRemoteViewControllerHostToServiceAction performActionForHostedWindowScene:]";
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_275BB3000, v10, OS_LOG_TYPE_DEFAULT, "%s Received %@ action with object %@", &v17, 0x20u);
  }

  delegate = [sceneCopy delegate];
  v13 = [delegate conformsToProtocol:&unk_2884C1558];

  if (v13)
  {
    delegate2 = [sceneCopy delegate];
    v15 = delegate2;
    if (integerValue <= 2)
    {
      if (integerValue)
      {
        if (integerValue == 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 remoteViewControllerDidSetStartingFlow:v9];
            goto LABEL_33;
          }

          v16 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [DADiagnosticsRemoteViewControllerHostToServiceAction performActionForHostedWindowScene:v9];
          }
        }

        else
        {
          if (integerValue != 2)
          {
LABEL_33:

            goto LABEL_34;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 remoteViewControllerDidSetSessionToken:v9];
            goto LABEL_33;
          }

          v16 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 remoteViewControllerDidSetHostBundleIdentifier:v9];
          goto LABEL_33;
        }

        v16 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
LABEL_23:
          [DADiagnosticsRemoteViewControllerHostToServiceAction performActionForHostedWindowScene:v9];
        }
      }

LABEL_32:

      goto LABEL_33;
    }

    if (integerValue == 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v15 remoteViewControllerDidSetSelectableSerialNumbers:v9];
        goto LABEL_33;
      }

      v16 = DiagnosticLogHandleForCategory();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (integerValue != 4)
      {
        if (integerValue == 5)
        {
          [delegate2 remoteViewControllerDidDisappear];
        }

        goto LABEL_33;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v15 remoteViewControllerDidSetRequiredSerialNumbers:v9];
        goto LABEL_33;
      }

      v16 = DiagnosticLogHandleForCategory();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

    [DADiagnosticsRemoteViewControllerHostToServiceAction performActionForHostedWindowScene:v9];
    goto LABEL_32;
  }

LABEL_34:
}

+ (id)actionToString:(int64_t)string
{
  if ((string - 1) > 4)
  {
    return @"HostToServiceActionTypeSetHostBundleIdentifier";
  }

  else
  {
    return off_27A66EC48[string - 1];
  }
}

- (void)performActionForHostedWindowScene:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_2();
  v11 = 136315650;
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_275BB3000, v5, v6, "%s Action object type is incorrect, received: %@, expected: %@. Ignoring action", v7, v8, v9, v10, v11);
}

- (void)performActionForHostedWindowScene:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_2();
  v11 = 136315650;
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_275BB3000, v5, v6, "%s Action object type is incorrect, received: %@, expected: %@. Ignoring action", v7, v8, v9, v10, v11);
}

- (void)performActionForHostedWindowScene:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_2();
  v11 = 136315650;
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_275BB3000, v5, v6, "%s Action object type is incorrect, received: %@, expected: %@. Ignoring action", v7, v8, v9, v10, v11);
}

@end