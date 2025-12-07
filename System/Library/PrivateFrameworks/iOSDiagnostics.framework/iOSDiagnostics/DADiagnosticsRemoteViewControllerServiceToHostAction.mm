@interface DADiagnosticsRemoteViewControllerServiceToHostAction
+ (id)actionToString:(int64_t)string;
+ (id)actionWithType:(int64_t)type object:(id)object;
- (void)performActionForSceneController:(id)controller;
@end

@implementation DADiagnosticsRemoteViewControllerServiceToHostAction

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
    v14 = "+[DADiagnosticsRemoteViewControllerServiceToHostAction actionWithType:object:]";
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = objectCopy;
    _os_log_impl(&dword_275BB3000, v9, OS_LOG_TYPE_DEFAULT, "%s Created %@ action with object %@", &v13, 0x20u);
  }

  v11 = [[self alloc] initWithInfo:v7 responder:0];

  return v11;
}

- (void)performActionForSceneController:(id)controller
{
  v33 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  info = [(DADiagnosticsRemoteViewControllerServiceToHostAction *)self info];
  v6 = [info objectForSetting:0];
  integerValue = [v6 integerValue];

  info2 = [(DADiagnosticsRemoteViewControllerServiceToHostAction *)self info];
  v9 = [info2 objectForSetting:1];

  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [DADiagnosticsRemoteViewControllerServiceToHostAction actionToString:integerValue];
    v29 = 136315394;
    v30 = "[DADiagnosticsRemoteViewControllerServiceToHostAction performActionForSceneController:]";
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&dword_275BB3000, v10, OS_LOG_TYPE_DEFAULT, "%s Received %@ action", &v29, 0x16u);
  }

  delegate = [controllerCopy delegate];
  v13 = [delegate conformsToProtocol:&unk_2884BD9F8];

  if (v13)
  {
    delegate2 = [controllerCopy delegate];
    v15 = delegate2;
    if (integerValue > 1)
    {
      if (integerValue == 2)
      {
        [delegate2 viewServiceDidSuspend];
        goto LABEL_31;
      }

      if (integerValue == 3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 viewServiceDidFinishWithReason:{objc_msgSend(v9, "integerValue")}];
          goto LABEL_31;
        }

        v16 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
LABEL_25:
          [DADiagnosticsRemoteViewControllerServiceToHostAction performActionForSceneController:v9];
        }

LABEL_30:
      }
    }

    else
    {
      if (!integerValue)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v9;
          v17 = [v16 objectForKeyedSubscript:@"brightness"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v19 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [DADiagnosticsRemoteViewControllerServiceToHostAction performActionForSceneController:v16];
            }
          }

          v20 = [v16 objectForKeyedSubscript:@"animate"];
          objc_opt_class();
          v21 = objc_opt_isKindOfClass();

          if ((v21 & 1) == 0)
          {
            v22 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [DADiagnosticsRemoteViewControllerServiceToHostAction performActionForSceneController:v16];
            }
          }

          v23 = [v16 objectForKeyedSubscript:@"brightness"];
          [v23 floatValue];
          v25 = v24;

          v26 = [v16 objectForKeyedSubscript:@"animate"];
          bOOLValue = [v26 BOOLValue];

          LODWORD(v28) = v25;
          [v15 viewServiceDidSetScreenToBrightness:bOOLValue animate:v28];
        }

        else
        {
          v16 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [DADiagnosticsRemoteViewControllerServiceToHostAction performActionForSceneController:v9];
          }
        }

        goto LABEL_30;
      }

      if (integerValue == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 viewServiceDidEnableVolumeHUD:{objc_msgSend(v9, "BOOLValue")}];
          goto LABEL_31;
        }

        v16 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        goto LABEL_30;
      }
    }

LABEL_31:
  }
}

+ (id)actionToString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"ServiceToHostActionTypeDidSetScreenToBrightness";
  }

  else
  {
    return off_27A66EBB8[string - 1];
  }
}

- (void)performActionForSceneController:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_2();
  v11 = 136315650;
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_275BB3000, v5, v6, "%s Action object type is incorrect, received: %@, expected: %@. Ignoring action", v7, v8, v9, v10, v11);
}

- (void)performActionForSceneController:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_2();
  v11 = 136315650;
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_275BB3000, v5, v6, "%s Action object type is incorrect, received: %@, expected: %@. Ignoring action", v7, v8, v9, v10, v11);
}

- (void)performActionForSceneController:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_2();
  v11 = 136315650;
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_275BB3000, v5, v6, "%s Action object brightness type is incorrect, received: %@, expected: %@. Ignoring action", v7, v8, v9, v10, v11);
}

- (void)performActionForSceneController:(uint64_t)a1 .cold.5(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_2();
  v11 = 136315650;
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_275BB3000, v5, v6, "%s Action object animate type is incorrect, received: %@, expected: %@. Ignoring action", v7, v8, v9, v10, v11);
}

@end