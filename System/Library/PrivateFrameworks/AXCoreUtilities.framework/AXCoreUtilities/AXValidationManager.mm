@interface AXValidationManager
+ (id)sharedInstance;
- (AXValidationManager)init;
- (BOOL)_client:(id)_client validateClass:(id)class hasClassMethod:(id)method withFullSignature:(const char *)signature argList:(char *)list;
- (BOOL)_client:(id)_client validateClass:(id)class hasMethod:(id)method methodType:(int)type;
- (BOOL)_client:(id)_client validateClass:(id)class hasMethod:(id)method methodType:(int)type returnType:(id)returnType arguments:(id)arguments;
- (BOOL)_client:(id)_client validateClass:(id)class hasSwiftField:(id)field withTypeString:(const char *)string isAnyClass:(BOOL)anyClass;
- (BOOL)_client:(id)_client validateStruct:(id)struct hasSwiftField:(id)field withTypeString:(const char *)string isAnyClass:(BOOL)class;
- (BOOL)_client:(id)_client validateSwiftEnum:(id)enum hasCase:(id)case withTypeString:(const char *)string isAnyClass:(BOOL)class;
- (BOOL)_client:(id)_client validateType:(id)type hasSwiftField:(id)field handleSwiftValidationProblems:(id)problems;
- (BOOL)client:(id)client validateClass:(id)class;
- (BOOL)client:(id)client validateClass:(id)class conformsToProtocol:(id)protocol;
- (BOOL)client:(id)client validateClass:(id)class hasInstanceMethod:(id)method withFullSignature:(const char *)signature argList:(char *)list;
- (BOOL)client:(id)client validateClass:(id)class hasInstanceVariable:(id)variable withType:(const char *)type;
- (BOOL)client:(id)client validateClass:(id)class hasProperty:(id)property customGetter:(id)getter customSetter:(id)setter withType:(const char *)type;
- (BOOL)client:(id)client validateClass:(id)class isKindOfClass:(id)ofClass;
- (BOOL)client:(id)client validateProtocol:(id)protocol conformsToProtocol:(id)toProtocol;
- (BOOL)client:(id)client validateProtocol:(id)protocol hasMethod:(id)method isInstanceMethod:(BOOL)instanceMethod isRequired:(BOOL)required;
- (BOOL)client:(id)client validateSwiftEnum:(id)enum;
- (BOOL)client:(id)client validateSwiftEnum:(id)enum hasCase:(id)case;
- (BOOL)client:(id)client validateSwiftStruct:(id)struct;
- (BOOL)client:(id)client validateSwiftStruct:(id)struct hasSize:(int64_t)size;
- (BOOL)installSafeCategory:(id)category canInteractWithTargetClass:(BOOL)class;
- (BOOL)installSwiftDynamicReplacementUnit:(id)unit inBundle:(id)bundle withPrecondition:(id)precondition;
- (BOOL)validateClass:(id)class hasClassMethod:(id)method withReturnType:(id)type args:(id)args;
- (BOOL)validateClass:(id)class hasInstanceMethod:(id)method withReturnType:(id)type args:(id)args;
- (id)_nameForMethod:(objc_method *)method;
- (void)_clearState;
- (void)_generateWarningsForMethodType:(int)type onClass:(Class)class superclassMethods:(objc_method *)methods numberOfSuperclassMethods:(unsigned int)superclassMethods;
- (void)_generateWarningsForPrefixedMethodNames:(id)names client:(id)client methodType:(int)type methodName:(id)name className:(id)className;
- (void)_generateWarningsOnSafeCategoryClass:(Class)class;
- (void)_iterateMethodsOfType:(int)type onClass:(Class)Class block:(id)block;
- (void)_printConsoleReport:(BOOL)report isDelayed:(BOOL)delayed;
- (void)_printEncodedConsoleReportForValidationRunner:(BOOL)runner isDelayed:(BOOL)delayed;
- (void)_resetState;
- (void)installSafeCategories:(id)categories afterDelay:(double)delay validationTargetName:(id)name overrideProcessName:(id)processName;
- (void)performValidations:(id)validations withPreValidationHandler:(id)handler postValidationHandler:(id)validationHandler safeCategoryInstallationHandler:(id)installationHandler;
- (void)sendExceptionForInstallingSafeCategory:(id)category onTarget:(id)target overrideProcessName:(id)name;
- (void)sendExceptionForSafeBlock:(id)block overrideProcessName:(id)name;
- (void)sendExceptionForSafeCategoryOnWrongTarget:(id)target targetBundle:(id)bundle expectedBundle:(id)expectedBundle overrideProcessName:(id)name;
- (void)sendExceptionForSafeIVarKey:(id)key onTarget:(id)target overrideProcessName:(id)name;
- (void)sendExceptionForSafeValueKey:(id)key onTarget:(id)target overrideProcessName:(id)name;
- (void)sendFailedAssertionWithErrorMessage:(id)message overrideProcessName:(id)name;
- (void)sendFailedTestCase:(id)case withTag:(id)tag overrideProcessName:(id)name;
- (void)sendGenericReport:(id)report withTag:(id)tag overrideProcessName:(id)name;
- (void)sendValidateExceptionForClass:(id)class conformsToProtocol:(id)protocol errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForClass:(id)class errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForClass:(id)class hasClassMethod:(id)method errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForClass:(id)class hasInstanceMethod:(id)method errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForClass:(id)class hasInstanceVariable:(id)variable errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForClass:(id)class hasProperty:(id)property errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForClass:(id)class isKindOfClass:(id)ofClass errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForProtocol:(id)protocol conformsToProtocol:(id)toProtocol errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForProtocol:(id)protocol hasMethod:(id)method errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForProtocol:(id)protocol hasProperty:(id)property errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidationSuccessForProcessName:(id)name;
@end

@implementation AXValidationManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[AXValidationManager sharedInstance];
  }

  v3 = sharedInstance__shared_0;

  return v3;
}

uint64_t __37__AXValidationManager_sharedInstance__block_invoke()
{
  sharedInstance__shared_0 = objc_alloc_init(AXValidationManager);

  return MEMORY[0x1EEE66BB8]();
}

- (AXValidationManager)init
{
  v7.receiver = self;
  v7.super_class = AXValidationManager;
  v2 = [(AXValidationManager *)&v7 init];
  if (v2)
  {
    AXSetValidationErrorLoggingFunction();
    AXSetUIAXReportSenderErrorLoggerFunction();
    v3 = _AXSReportValidationErrors();
    if (v3)
    {
      AXLoadAccessibilityDebuggerIfNeeded(v3, v4);
      v5 = [NSClassFromString(&cfstr_Adtarget.isa) safeValueForKey:@"target"];
      [(AXValidationManager *)v2 setValidationReportingServices:v5];
    }
  }

  return v2;
}

- (void)performValidations:(id)validations withPreValidationHandler:(id)handler postValidationHandler:(id)validationHandler safeCategoryInstallationHandler:(id)installationHandler
{
  validationsCopy = validations;
  handlerCopy = handler;
  validationHandlerCopy = validationHandler;
  installationHandlerCopy = installationHandler;
  if ([(AXValidationManager *)self installSafeCategoriesOffMainThread])
  {
    v14 = +[AXAccessQueue backgroundAccessQueue];
    v15 = AXLogValidations(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19159B000, v15, OS_LOG_TYPE_INFO, "Processing safe categories off main thread", buf, 2u);
    }
  }

  else
  {
    v14 = +[AXAccessQueue mainAccessQueue];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __121__AXValidationManager_performValidations_withPreValidationHandler_postValidationHandler_safeCategoryInstallationHandler___block_invoke;
  v20[3] = &unk_1E735BD98;
  v20[4] = self;
  v21 = handlerCopy;
  v22 = validationsCopy;
  v23 = validationHandlerCopy;
  v24 = installationHandlerCopy;
  v16 = installationHandlerCopy;
  v17 = validationHandlerCopy;
  v18 = validationsCopy;
  v19 = handlerCopy;
  [v14 performSynchronousWritingBlock:v20];
}

uint64_t __121__AXValidationManager_performValidations_withPreValidationHandler_postValidationHandler_safeCategoryInstallationHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _resetState];
  v2 = *(a1 + 40);
  if (v2 && !(*(v2 + 16))(v2, *(a1 + 32)))
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) shouldPerformValidationChecks];
  }

  v4 = [*(a1 + 32) validationTargetName];

  if (!v4)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = AXProcessGetName(v5);
    v8 = [v6 stringWithFormat:@"%@ (generic symbols)", v7];
    [*(a1 + 32) setValidationTargetName:v8];
  }

  if (v3)
  {
    v9 = AXLogLoading(v5);
    if (os_signpost_enabled(v9))
    {
      v10 = [*(a1 + 32) validationTargetName];
      *buf = 138412290;
      v23 = v10;
      _os_signpost_emit_with_name_impl(&dword_19159B000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Validations", "Target=%@", buf, 0xCu);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      v11 = (*(v11 + 16))(v11, *(a1 + 32));
    }

    v12 = AXLogLoading(v11);
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19159B000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Validations", &unk_19167EAFE, buf, 2u);
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      v5 = (*(v13 + 16))(v13, *(a1 + 32), [*(a1 + 32) numberOfValidationErrors]);
    }
  }

  if (*(a1 + 64))
  {
    v14 = AXLogLoading(v5);
    if (os_signpost_enabled(v14))
    {
      v15 = [*(a1 + 32) validationTargetName];
      *buf = 138412290;
      v23 = v15;
      _os_signpost_emit_with_name_impl(&dword_19159B000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "InstallSafeCategories", "Target=%@", buf, 0xCu);
    }

    v16 = (*(*(a1 + 64) + 16))();
    v17 = AXLogLoading(v16);
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19159B000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "InstallSafeCategories", &unk_19167EAFE, buf, 2u);
    }
  }

  v18 = *(a1 + 32);
  if (v3)
  {
    v19 = [*(a1 + 32) numberOfValidationErrors];
    v18 = *(a1 + 32);
    if (!v19 && v18[10] == 1 && (v18[11] & 1) == 0 && *(a1 + 64))
    {
      v20 = [*(a1 + 32) overrideProcessName];
      [v18 sendValidationSuccessForProcessName:v20];

      v18 = *(a1 + 32);
    }

    if (v18[8] == 1)
    {
      [v18 _printConsoleReport:*(a1 + 64) != 0 isDelayed:0];
      v18 = *(a1 + 32);
    }
  }

  return [v18 _clearState];
}

- (void)installSafeCategories:(id)categories afterDelay:(double)delay validationTargetName:(id)name overrideProcessName:(id)processName
{
  categoriesCopy = categories;
  nameCopy = name;
  processNameCopy = processName;
  if (categoriesCopy)
  {
    v13 = +[AXAccessQueue mainAccessQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__AXValidationManager_installSafeCategories_afterDelay_validationTargetName_overrideProcessName___block_invoke;
    v14[3] = &unk_1E735BDC0;
    v14[4] = self;
    v15 = processNameCopy;
    v16 = nameCopy;
    v17 = categoriesCopy;
    [v13 afterDelay:v14 processWritingBlock:delay];
  }
}

uint64_t __97__AXValidationManager_installSafeCategories_afterDelay_validationTargetName_overrideProcessName___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _resetState];
  v2 = [*(a1 + 32) setOverrideProcessName:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) setValidationTargetName:?];
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = AXProcessGetName(v2);
    v6 = [v4 stringWithFormat:@"%@ (generic symbols)", v5];
    [*(a1 + 32) setValidationTargetName:v6];
  }

  v7 = AXLogLoading(v3);
  if (os_signpost_enabled(v7))
  {
    v8 = [*(a1 + 32) validationTargetName];
    *buf = 138412290;
    v14 = v8;
    _os_signpost_emit_with_name_impl(&dword_19159B000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "InstallSafeCategories", "Target=%@", buf, 0xCu);
  }

  v9 = (*(*(a1 + 56) + 16))();
  v10 = AXLogLoading(v9);
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19159B000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "InstallSafeCategories", &unk_19167EAFE, buf, 2u);
  }

  [*(a1 + 32) setNumberOfCategories:{objc_msgSend(*(a1 + 32), "numberOfCategories") + 1}];
  v11 = *(a1 + 32);
  if (v11[8] == 1)
  {
    [v11 _printConsoleReport:1 isDelayed:1];
    v11 = *(a1 + 32);
  }

  return [v11 _clearState];
}

- (void)_resetState
{
  [(AXValidationManager *)self setShouldPerformValidationChecks:AXPerformValidationChecks(self, a2)];
  [(AXValidationManager *)self setNumberOfValidationErrors:0];
  [(AXValidationManager *)self setNumberOfValidationWarnings:0];
  [(AXValidationManager *)self setValidationTargetName:0];
  [(AXValidationManager *)self setForceDoNotReport:0];
  [(AXValidationManager *)self setDebugBuild:0];
  v3 = [(AXValidationManager *)self setNumberOfValidations:0];
  [(AXValidationManager *)self setShouldLogToConsole:AXShouldLogValidationErrors(v3, v4)];
  [(AXValidationManager *)self setShouldCrashOnError:AXShouldCrashOnValidationErrors()];
  [(AXValidationManager *)self setShouldReportToServer:AXShouldReportValidationErrors()];
  array = [MEMORY[0x1E695DF70] array];
  [(AXValidationManager *)self setConsoleErrorMessages:array];

  array2 = [MEMORY[0x1E695DF70] array];
  [(AXValidationManager *)self setConsoleWarningMessages:array2];
}

- (void)_clearState
{
  [(AXValidationManager *)self setConsoleErrorMessages:0];

  [(AXValidationManager *)self setConsoleWarningMessages:0];
}

- (void)_printEncodedConsoleReportForValidationRunner:(BOOL)runner isDelayed:(BOOL)delayed
{
  v31 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXValidationManager numberOfValidations](self, "numberOfValidations")}];
  [dictionary setObject:v6 forKeyedSubscript:@"validationCount"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXValidationManager numberOfCategories](self, "numberOfCategories")}];
  [dictionary setObject:v7 forKeyedSubscript:@"safeCategoryCount"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXValidationManager numberOfValidationErrors](self, "numberOfValidationErrors")}];
  [dictionary setObject:v8 forKeyedSubscript:@"validationErrorCount"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXValidationManager numberOfValidationErrors](self, "numberOfValidationErrors")}];
  [dictionary setObject:v9 forKeyedSubscript:@"validationWarningCount"];

  validationTargetName = [(AXValidationManager *)self validationTargetName];
  v11 = [validationTargetName length];

  if (v11)
  {
    validationTargetName2 = [(AXValidationManager *)self validationTargetName];
    [dictionary setObject:validationTargetName2 forKeyedSubscript:@"validationTarget"];
  }

  v14 = AXProcessGetName(v12);
  if ([v14 length])
  {
    [dictionary setObject:v14 forKeyedSubscript:@"validationProcess"];
  }

  overrideProcessName = [(AXValidationManager *)self overrideProcessName];
  if ([overrideProcessName length])
  {
    [dictionary setObject:overrideProcessName forKeyedSubscript:@"validationOverrideProcess"];
  }

  if ([(AXValidationManager *)self numberOfValidationErrors]|| [(AXValidationManager *)self numberOfValidationWarnings])
  {
    v16 = 0;
    v17 = @"failed";
  }

  else
  {
    v16 = 1;
    v17 = @"success";
  }

  [dictionary setObject:v17 forKeyedSubscript:@"validationResult"];
  consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
  v19 = [consoleErrorMessages count];

  if (v19)
  {
    consoleErrorMessages2 = [(AXValidationManager *)self consoleErrorMessages];
    [dictionary setObject:consoleErrorMessages2 forKeyedSubscript:@"validationErrors"];
  }

  consoleWarningMessages = [(AXValidationManager *)self consoleWarningMessages];
  v22 = [consoleWarningMessages count];

  if (v22)
  {
    consoleWarningMessages2 = [(AXValidationManager *)self consoleWarningMessages];
    [dictionary setObject:consoleWarningMessages2 forKeyedSubscript:@"validationWarnings"];
  }

  v24 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:8 error:0];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 base64EncodedStringWithOptions:0];
    v27 = AXLogValidationRunner(v26);
    v28 = v27;
    if (v16)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412290;
        v30 = v26;
        _os_log_impl(&dword_19159B000, v28, OS_LOG_TYPE_DEFAULT, "%@", &v29, 0xCu);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [AXValidationManager _printEncodedConsoleReportForValidationRunner:isDelayed:];
    }
  }
}

- (void)_printConsoleReport:(BOOL)report isDelayed:(BOOL)delayed
{
  delayedCopy = delayed;
  reportCopy = report;
  v53 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v7 = getAXSettingsClass_softClass_3;
  v46 = getAXSettingsClass_softClass_3;
  if (!getAXSettingsClass_softClass_3)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v50 = __getAXSettingsClass_block_invoke_3;
    v51 = &unk_1E735AD40;
    v52 = &v43;
    __getAXSettingsClass_block_invoke_3(&buf);
    v7 = v44[3];
  }

  v8 = v7;
  _Block_object_dispose(&v43, 8);
  sharedInstance = [v7 sharedInstance];
  isAXValidationRunnerCollectingValidations = [sharedInstance isAXValidationRunnerCollectingValidations];

  if (isAXValidationRunnerCollectingValidations)
  {
    [(AXValidationManager *)self _printEncodedConsoleReportForValidationRunner:reportCopy isDelayed:delayedCopy];
  }

  else
  {
    string = [MEMORY[0x1E696AD60] string];
    v12 = string;
    if (delayedCopy)
    {
      [string appendString:@"(DELAYED) "];
    }

    if ([(AXValidationManager *)self isDebugBuild])
    {
      [v12 appendString:@"(Build as DEBUG) "];
    }

    if (reportCopy)
    {
      v13 = MEMORY[0x1E696AEC0];
      numberOfValidations = [(AXValidationManager *)self numberOfValidations];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXValidationManager numberOfCategories](self, "numberOfCategories")}];
      v16 = [v13 stringWithFormat:@"validating (%d) items and installing (%@) AX Safe Categories on ", numberOfValidations, v15];
      [v12 appendString:v16];
    }

    else
    {
      [v12 appendString:@"validating "];
    }

    validationTargetName = [(AXValidationManager *)self validationTargetName];
    [v12 appendString:validationTargetName];

    v19 = AXProcessGetName(v18);
    [v12 appendFormat:@", In process: %@", v19];

    if ([(AXValidationManager *)self numberOfValidationErrors])
    {
      v20 = [MEMORY[0x1E696AD60] stringWithString:@"\n********************************************************************\n"];
      [v20 appendFormat:@"* AX: Failed %@. %lu errors:\n", v12, -[AXValidationManager numberOfValidationErrors](self, "numberOfValidationErrors")];
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      v22 = [consoleErrorMessages countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (v22)
      {
        v23 = *v40;
        do
        {
          v24 = 0;
          do
          {
            if (*v40 != v23)
            {
              objc_enumerationMutation(consoleErrorMessages);
            }

            [v20 appendFormat:@"*\t%@\n", *(*(&v39 + 1) + 8 * v24++)];
          }

          while (v22 != v24);
          v22 = [consoleErrorMessages countByEnumeratingWithState:&v39 objects:v48 count:16];
        }

        while (v22);
      }

      v25 = AXLogValidations([v20 appendString:@"********************************************************************\n"]);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [AXValidationManager _printConsoleReport:isDelayed:];
      }
    }

    else
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"****************** Finished %@. Success! *****************", v12];
      v25 = AXLogValidations(v20);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v20;
        _os_log_impl(&dword_19159B000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
      }
    }

    if ([(AXValidationManager *)self numberOfValidationWarnings])
    {
      v26 = [MEMORY[0x1E696AD60] stringWithString:@"\n********************************************************************\n"];
      numberOfValidationWarnings = [(AXValidationManager *)self numberOfValidationWarnings];
      numberOfValidationWarnings2 = [(AXValidationManager *)self numberOfValidationWarnings];
      v29 = "s";
      if (numberOfValidationWarnings2 == 1)
      {
        v29 = "";
      }

      [v26 appendFormat:@"* AX: %lu warning%s generated while %@:\n", numberOfValidationWarnings, v29, v12];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      consoleWarningMessages = [(AXValidationManager *)self consoleWarningMessages];
      v31 = [consoleWarningMessages countByEnumeratingWithState:&v35 objects:v47 count:16];
      if (v31)
      {
        v32 = *v36;
        do
        {
          v33 = 0;
          do
          {
            if (*v36 != v32)
            {
              objc_enumerationMutation(consoleWarningMessages);
            }

            [v26 appendFormat:@"* %@\n", *(*(&v35 + 1) + 8 * v33++)];
          }

          while (v31 != v33);
          v31 = [consoleWarningMessages countByEnumeratingWithState:&v35 objects:v47 count:16];
        }

        while (v31);
      }

      v34 = AXLogValidations([v26 appendString:@"********************************************************************\n"]);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_19159B000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
      }
    }
  }
}

- (BOOL)client:(id)client validateClass:(id)class
{
  clientCopy = client;
  classCopy = class;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v8 = _AXClassFromStringWithFallback(classCopy);
  Name = class_getName(v8);
  v10 = strcmp(Name, "nil");
  if (!v10)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    classCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Class Not Present: %@", classCopy];
    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:classCopy];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:classCopy errorMessage:classCopy overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v10 != 0;
}

- (BOOL)client:(id)client validateClass:(id)class isKindOfClass:(id)ofClass
{
  clientCopy = client;
  classCopy = class;
  ofClassCopy = ofClass;
  Superclass = _AXClassFromStringWithFallback(classCopy);
  v12 = _AXClassFromStringWithFallback(ofClassCopy);
  while (1)
  {
    v13 = Superclass;
    if (!Superclass)
    {
      break;
    }

    Superclass = class_getSuperclass(Superclass);
    if (Superclass == v12)
    {
      [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
      goto LABEL_12;
    }
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
  ofClassCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ is not a kind of %@", clientCopy, classCopy, ofClassCopy];
  if (self->_shouldLogToConsole)
  {
    consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
    [consoleErrorMessages addObject:ofClassCopy];
  }

  if (self->_shouldReportToServer && !self->_forceDoNotReport)
  {
    overrideProcessName = [(AXValidationManager *)self overrideProcessName];
    [(AXValidationManager *)self sendValidateExceptionForClass:classCopy isKindOfClass:ofClassCopy errorMessage:ofClassCopy overrideProcessName:overrideProcessName];
  }

  if (self->_shouldCrashOnError)
  {
    abort();
  }

LABEL_12:
  return v13 != 0;
}

- (BOOL)client:(id)client validateSwiftStruct:(id)struct
{
  clientCopy = client;
  structCopy = struct;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v8 = _AXSwiftValidateStruct(structCopy);
  if ((v8 & 1) == 0)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    structCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Struct Not Present: %@", structCopy];
    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:structCopy];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:structCopy errorMessage:structCopy overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v8;
}

- (BOOL)client:(id)client validateSwiftStruct:(id)struct hasSize:(int64_t)size
{
  v29 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  structCopy = struct;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  array = [MEMORY[0x1E695DF70] array];
  if ((_AXSwiftValidateStruct(structCopy) & 1) == 0)
  {
    [array addObject:@"Swift field doesn't exist"];
    if (!_AXSwiftValidateStructHasSize(structCopy, size))
    {
      [array addObject:@"Swift field isn't class type"];
    }
  }

  v11 = [array count];
  if (v11)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v12 = MEMORY[0x1E696AD60];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:size];
    v23 = clientCopy;
    v14 = [v12 stringWithFormat:@"%@: Swift enum %@ doesn't match size: %@", clientCopy, structCopy, v13];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = array;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        v19 = 0;
        do
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [v14 appendFormat:@" %@", *(*(&v24 + 1) + 8 * v19++)];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:v14];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:structCopy errorMessage:v14 overrideProcessName:overrideProcessName];
    }

    clientCopy = v23;
    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v11 == 0;
}

- (BOOL)_client:(id)_client validateStruct:(id)struct hasSwiftField:(id)field withTypeString:(const char *)string isAnyClass:(BOOL)class
{
  classCopy = class;
  structCopy = struct;
  fieldCopy = field;
  v14 = MEMORY[0x1E695DF70];
  _clientCopy = _client;
  array = [v14 array];
  if ((_AXSwiftValidateStructHasField(structCopy, fieldCopy) & 1) == 0)
  {
    v17 = @"Swift field doesn't exist";
    goto LABEL_6;
  }

  if (classCopy)
  {
    if ((_AXSwiftValidateStructHasFieldOfAnyClass(structCopy, fieldCopy) & 1) == 0)
    {
      v17 = @"Swift field isn't class type";
LABEL_6:
      [array addObject:v17];
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    if ((_AXSwiftValidateStructHasFieldWithTypeString(structCopy, fieldCopy, v18) & 1) == 0)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = _AXSwiftValidateStructGetFieldTypeString(structCopy, fieldCopy);
      v21 = [v19 stringWithFormat:@"Swift field doesn't match: (%@) expected: (%@)", v18, v20];
      [array addObject:v21];
    }
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v22 = [(AXValidationManager *)self _client:_clientCopy validateType:structCopy hasSwiftField:fieldCopy handleSwiftValidationProblems:array];

  return v22;
}

- (BOOL)client:(id)client validateSwiftEnum:(id)enum
{
  clientCopy = client;
  enumCopy = enum;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v8 = _AXSwiftValidateEnum(enumCopy);
  if ((v8 & 1) == 0)
  {
    enumCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Enum Not Present: %@", enumCopy];
    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:enumCopy];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:enumCopy errorMessage:enumCopy overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v8;
}

- (BOOL)client:(id)client validateSwiftEnum:(id)enum hasCase:(id)case
{
  enumCopy = enum;
  caseCopy = case;
  v10 = MEMORY[0x1E695DF70];
  clientCopy = client;
  array = [v10 array];
  if ((_AXSwiftValidateEnumHasCase(enumCopy, caseCopy) & 1) == 0)
  {
    [array addObject:@"Swift case doesn't exist"];
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v13 = [(AXValidationManager *)self _client:clientCopy validateType:enumCopy hasSwiftField:caseCopy handleSwiftValidationProblems:array];

  return v13;
}

- (BOOL)_client:(id)_client validateSwiftEnum:(id)enum hasCase:(id)case withTypeString:(const char *)string isAnyClass:(BOOL)class
{
  classCopy = class;
  enumCopy = enum;
  caseCopy = case;
  v14 = MEMORY[0x1E695DF70];
  _clientCopy = _client;
  array = [v14 array];
  if ((_AXSwiftValidateEnumHasCase(enumCopy, caseCopy) & 1) == 0)
  {
    v17 = @"Swift case doesn't exist";
    goto LABEL_6;
  }

  if (classCopy)
  {
    if ((_AXSwiftValidateEnumHasCaseOfAnyClass(enumCopy, caseCopy) & 1) == 0)
    {
      v17 = @"Swift case isn't class type";
LABEL_6:
      [array addObject:v17];
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    if ((_AXSwiftValidateEnumHasCaseWithTypeString(enumCopy, caseCopy, v18) & 1) == 0)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = _AXSwiftValidateEnumGetCaseTypeString(enumCopy, caseCopy);
      v21 = [v19 stringWithFormat:@"Swift case doesn't match: (%@) expected: (%@)", v18, v20];
      [array addObject:v21];
    }
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v22 = [(AXValidationManager *)self _client:_clientCopy validateType:enumCopy hasSwiftField:caseCopy handleSwiftValidationProblems:array];

  return v22;
}

- (BOOL)_client:(id)_client validateClass:(id)class hasSwiftField:(id)field withTypeString:(const char *)string isAnyClass:(BOOL)anyClass
{
  anyClassCopy = anyClass;
  classCopy = class;
  fieldCopy = field;
  v14 = MEMORY[0x1E695DF70];
  _clientCopy = _client;
  array = [v14 array];
  v17 = _AXClassFromStringWithFallback(classCopy);
  if (!v17)
  {
    v19 = @"Class doesn't exist";
    goto LABEL_8;
  }

  v18 = v17;
  if ((_AXSwiftValidateClassHasField(v17, fieldCopy) & 1) == 0)
  {
    v19 = @"Swift field doesn't exist";
    goto LABEL_8;
  }

  if (anyClassCopy)
  {
    if ((_AXSwiftValidateClassHasFieldOfAnyClass(v18, fieldCopy) & 1) == 0)
    {
      v19 = @"Swift field isn't class type";
LABEL_8:
      [array addObject:v19];
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    if ((_AXSwiftValidateClassHasFieldWithTypeString(v18, fieldCopy, v22) & 1) == 0)
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = _AXSwiftValidateClassGetFieldTypeString(v18, fieldCopy);
      v25 = [v23 stringWithFormat:@"Swift field doesn't match: (%@) expected: (%@)", v22, v24];
      [array addObject:v25];
    }
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v20 = [(AXValidationManager *)self _client:_clientCopy validateType:classCopy hasSwiftField:fieldCopy handleSwiftValidationProblems:array];

  return v20;
}

- (BOOL)_client:(id)_client validateType:(id)type hasSwiftField:(id)field handleSwiftValidationProblems:(id)problems
{
  v31 = *MEMORY[0x1E69E9840];
  _clientCopy = _client;
  typeCopy = type;
  fieldCopy = field;
  problemsCopy = problems;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v14 = [problemsCopy count];
  if (v14)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v24 = _clientCopy;
    v25 = typeCopy;
    typeCopy = [MEMORY[0x1E696AD60] stringWithFormat:@"%@: Swift field: (%@) on type: %@.", _clientCopy, fieldCopy, typeCopy];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = problemsCopy;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [typeCopy appendFormat:@" %@", *(*(&v26 + 1) + 8 * i)];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:typeCopy];
    }

    typeCopy = v25;
    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:v25 hasInstanceVariable:fieldCopy errorMessage:typeCopy overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }

    _clientCopy = v24;
  }

  return v14 == 0;
}

- (BOOL)client:(id)client validateClass:(id)class hasInstanceVariable:(id)variable withType:(const char *)type
{
  clientCopy = client;
  classCopy = class;
  variableCopy = variable;
  v13 = _AXClassFromStringWithFallback(classCopy);
  InstanceVariable = class_getInstanceVariable(v13, [variableCopy UTF8String]);
  TypeEncoding = ivar_getTypeEncoding(InstanceVariable);
  if (!type)
  {
    v18 = 0;
    goto LABEL_24;
  }

  v16 = TypeEncoding;
  if (strlen(type) >= 2)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:type];
    if ([v17 isEqualToString:@"NSInteger"])
    {
      type = "q";
    }

    else if ([v17 isEqualToString:@"NSUInteger"])
    {
      type = "Q";
    }

    else if ([v17 isEqualToString:@"int"])
    {
      type = "i";
    }

    else if ([v17 isEqualToString:@"BOOL"])
    {
      type = "B";
    }

    else if ([v17 isEqualToString:@"CGFloat"])
    {
      type = "d";
    }
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:type];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@%@", v19];

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:type];
  type = v20;
  if (v16 && *v16 == 66 && !v16[1] && [v20 isEqualToString:@"c"])
  {

    type = @"B";
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  if (!v16)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ : Ivar does not exist: %@", clientCopy, classCopy, variableCopy, v26, v27];
    goto LABEL_26;
  }

  if (!strcmp(v16, [v18 UTF8String]) || !strcmp(v16, objc_msgSend(type, "UTF8String")))
  {
LABEL_24:
    v21 = 1;
    goto LABEL_33;
  }

  [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ : Ivar is not the right type: %@ [AX: %@ MAINLINE: %s]", clientCopy, classCopy, variableCopy, v18, v16];
  v22 = LABEL_26:;
  if (self->_shouldLogToConsole)
  {
    consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
    [consoleErrorMessages addObject:v22];
  }

  if (self->_shouldReportToServer && !self->_forceDoNotReport)
  {
    overrideProcessName = [(AXValidationManager *)self overrideProcessName];
    [(AXValidationManager *)self sendValidateExceptionForClass:classCopy hasInstanceVariable:variableCopy errorMessage:v22 overrideProcessName:overrideProcessName];
  }

  if (self->_shouldCrashOnError)
  {
    abort();
  }

  v21 = 0;
LABEL_33:

  return v21;
}

- (BOOL)_client:(id)_client validateClass:(id)class hasMethod:(id)method methodType:(int)type
{
  v6 = *&type;
  _clientCopy = _client;
  classCopy = class;
  methodCopy = method;
  v13 = _AXClassFromStringWithFallback(classCopy);
  v14 = [methodCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_1F0579798];

  v15 = NSSelectorFromString(v14);
  if (v6)
  {
    InstanceMethod = class_getInstanceMethod(v13, v15);
  }

  else
  {
    InstanceMethod = class_getClassMethod(v13, v15);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__AXValidationManager__client_validateClass_hasMethod_methodType___block_invoke;
  v23[3] = &unk_1E735BDE8;
  v23[4] = &v24;
  v23[5] = InstanceMethod;
  [(AXValidationManager *)self _iterateMethodsOfType:v6 onClass:v13 block:v23];
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v17 = *(v25 + 24);
  if ((v17 & 1) == 0)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v18 = @"Instance";
    if (!v6)
    {
      v18 = @"Class";
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ %@ method not present: %@", _clientCopy, classCopy, v18, v14];
    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:v19];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:classCopy hasInstanceMethod:v14 errorMessage:v19 overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  _Block_object_dispose(&v24, 8);

  return v17;
}

uint64_t __66__AXValidationManager__client_validateClass_hasMethod_methodType___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 40) == a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)_client:(id)_client validateClass:(id)class hasMethod:(id)method methodType:(int)type returnType:(id)returnType arguments:(id)arguments
{
  v57 = *MEMORY[0x1E69E9840];
  _clientCopy = _client;
  classCopy = class;
  returnTypeCopy = returnType;
  argumentsCopy = arguments;
  v14 = MEMORY[0x1E695DF70];
  methodCopy = method;
  array = [v14 array];
  v17 = _AXClassFromStringWithFallback(classCopy);
  aSelectorName = [methodCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_1F0579798];

  v18 = NSSelectorFromString(aSelectorName);
  if (type)
  {
    InstanceMethod = class_getInstanceMethod(v17, v18);
  }

  else
  {
    InstanceMethod = class_getClassMethod(v17, v18);
  }

  v20 = InstanceMethod;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __87__AXValidationManager__client_validateClass_hasMethod_methodType_returnType_arguments___block_invoke;
  v51[3] = &unk_1E735BDE8;
  v51[4] = &v52;
  v51[5] = InstanceMethod;
  [(AXValidationManager *)self _iterateMethodsOfType:type onClass:v17 block:v51];
  if (v53[3])
  {
    v21 = method_copyReturnType(v20);
    if (v21)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];
      if (([v22 isEqualToString:returnTypeCopy] & 1) == 0)
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Incorrect return type: expected:%@ actual:%@", returnTypeCopy, v22];
        [array addObject:v23];
      }

      free(v21);
    }

    else
    {
      [array addObject:@"Unable to determine return type."];
    }

    v24 = method_getNumberOfArguments(v20) - 2;
    if (v24 != [argumentsCopy count])
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(argumentsCopy, "count")}];
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
      v28 = [v25 stringWithFormat:@"Incorrect argument count: expected:%@ actual:%@", v26, v27];
      [array addObject:v28];
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __87__AXValidationManager__client_validateClass_hasMethod_methodType_returnType_arguments___block_invoke_2;
    v48[3] = &unk_1E735BE10;
    v50 = v20;
    v49 = array;
    [argumentsCopy enumerateObjectsUsingBlock:v48];
  }

  else
  {
    [array addObject:@"Method does not exist"];
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v29 = [array count];
  if (v29)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v30 = @"Instance";
    if (!type)
    {
      v30 = @"Class";
    }

    classCopy = [MEMORY[0x1E696AD60] stringWithFormat:@"%@: %@ method: (%@) on class: %@.", _clientCopy, v30, aSelectorName, classCopy];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v32 = array;
    v33 = [v32 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v33)
    {
      v34 = *v45;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v45 != v34)
          {
            objc_enumerationMutation(v32);
          }

          [classCopy appendFormat:@" %@", *(*(&v44 + 1) + 8 * i)];
        }

        v33 = [v32 countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v33);
    }

    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:classCopy];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      if (type)
      {
        [(AXValidationManager *)self sendValidateExceptionForClass:classCopy hasInstanceMethod:aSelectorName errorMessage:classCopy overrideProcessName:overrideProcessName];
      }

      else
      {
        [(AXValidationManager *)self sendValidateExceptionForClass:classCopy hasClassMethod:aSelectorName errorMessage:classCopy overrideProcessName:overrideProcessName];
      }
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  _Block_object_dispose(&v52, 8);

  return v29 == 0;
}

uint64_t __87__AXValidationManager__client_validateClass_hasMethod_methodType_returnType_arguments___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 40) == a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __87__AXValidationManager__client_validateClass_hasMethod_methodType_returnType_arguments___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  v5 = method_copyArgumentType(*(a1 + 40), a3 + 2);
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    if (([v7 isEqualToString:v15] & 1) == 0)
    {
      v8 = *(a1 + 32);
      v9 = MEMORY[0x1E696AEC0];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v11 = [v9 stringWithFormat:@"Incorrect argument at position:%@\n expected:%@\n actual:%@", v10, v15, v7];
      [v8 addObject:v11];
    }

    free(v6);
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v14 = [v13 stringWithFormat:@"Actual arg not found at position:%@ expected:%@", v7, v15];
    [v12 addObject:v14];
  }
}

- (BOOL)validateClass:(id)class hasClassMethod:(id)method withReturnType:(id)type args:(id)args
{
  if (args)
  {
    argsCopy = args;
  }

  else
  {
    argsCopy = MEMORY[0x1E695E0F0];
  }

  v11 = AXValidationClientAccessibility;
  argsCopy2 = args;
  v13 = [(AXValidationManager *)self _client:v11 validateClass:class hasMethod:method methodType:0 returnType:type arguments:argsCopy];

  return v13;
}

- (BOOL)_client:(id)_client validateClass:(id)class hasClassMethod:(id)method withFullSignature:(const char *)signature argList:(char *)list
{
  _clientCopy = _client;
  classCopy = class;
  methodCopy = method;
  listCopy = list;
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:signature];
  array = [MEMORY[0x1E695DF70] array];
  while (1)
  {
    v17 = listCopy;
    listCopy += 8;
    if (!*v17)
    {
      break;
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [array addObject:v18];
  }

  v19 = [(AXValidationManager *)self _client:_clientCopy validateClass:classCopy hasMethod:methodCopy methodType:0 returnType:v15 arguments:array];

  return v19;
}

- (BOOL)client:(id)client validateClass:(id)class hasInstanceMethod:(id)method withFullSignature:(const char *)signature argList:(char *)list
{
  clientCopy = client;
  classCopy = class;
  methodCopy = method;
  listCopy = list;
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:signature];
  array = [MEMORY[0x1E695DF70] array];
  while (1)
  {
    v17 = listCopy;
    listCopy += 8;
    if (!*v17)
    {
      break;
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [array addObject:v18];
  }

  v19 = [(AXValidationManager *)self _client:clientCopy validateClass:classCopy hasMethod:methodCopy methodType:1 returnType:v15 arguments:array];

  return v19;
}

- (BOOL)validateClass:(id)class hasInstanceMethod:(id)method withReturnType:(id)type args:(id)args
{
  if (args)
  {
    argsCopy = args;
  }

  else
  {
    argsCopy = MEMORY[0x1E695E0F0];
  }

  v11 = AXValidationClientAccessibility;
  argsCopy2 = args;
  v13 = [(AXValidationManager *)self _client:v11 validateClass:class hasMethod:method methodType:1 returnType:type arguments:argsCopy];

  return v13;
}

- (BOOL)client:(id)client validateClass:(id)class hasProperty:(id)property customGetter:(id)getter customSetter:(id)setter withType:(const char *)type
{
  clientCopy = client;
  classCopy = class;
  propertyCopy = property;
  getterCopy = getter;
  setterCopy = setter;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__AXValidationManager_client_validateClass_hasProperty_customGetter_customSetter_withType___block_invoke;
  aBlock[3] = &unk_1E735BE38;
  aBlock[4] = self;
  v19 = classCopy;
  v38 = v19;
  v20 = propertyCopy;
  v39 = v20;
  v40 = &v41;
  v21 = _Block_copy(aBlock);
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v22 = _AXClassFromStringWithFallback(v19);
  Property = class_getProperty(v22, [v20 UTF8String]);
  v24 = Property;
  if (Property)
  {
    if (type)
    {
      v25 = property_copyAttributeValue(Property, "T");
      v26 = v25;
      if (v25)
      {
        if (strcmp(v25, type) && (*v26 != 64 || *type != 64))
        {
          type = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) had wrong type:(%s) expected: (%s)", clientCopy, v19, v20, v26, type];
          v21[2](v21, type);

LABEL_33:
          free(v26);
          goto LABEL_34;
        }

        v27 = property_copyAttributeValue(v24, "G");
        v28 = property_copyAttributeValue(v24, "S");
        if (!getterCopy && v27)
        {
          v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) has unexpected custom getter: (%s)", clientCopy, v19, v20, v27];
          v21[2](v21, v29);
        }

        if (!setterCopy && v28)
        {
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) has unexpected custom setter: (%s)", clientCopy, v19, v20, v28];
          v21[2](v21, v30);
        }

        if (getterCopy)
        {
          if (v27)
          {
            if (!strcmp(v27, [getterCopy UTF8String]))
            {
              goto LABEL_23;
            }

            getterCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) has unexpected custom getter: (%s) expected:(%@)", clientCopy, v19, v20, v27, getterCopy];
            v21[2](v21, getterCopy);
          }

          else
          {
            getterCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) does not have custom getter: (%@)", clientCopy, v19, v20, getterCopy];
            v21[2](v21, getterCopy);
          }
        }

LABEL_23:
        if (setterCopy)
        {
          if (!v28)
          {
            setterCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) does not have custom setter: (%@)", clientCopy, v19, v20, setterCopy];
            v21[2](v21, setterCopy);
            goto LABEL_28;
          }

          if (strcmp(v28, [setterCopy UTF8String]))
          {
            setterCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) has unexpected custom setter: (%s) expected:(%@)", clientCopy, v19, v20, v28, setterCopy];
            v21[2](v21, setterCopy);
LABEL_28:
          }
        }

        if (v27)
        {
          free(v27);
        }

        if (v28)
        {
          free(v28);
        }

        goto LABEL_33;
      }
    }

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property missing type information: %@", clientCopy, v19, v20];
    v21[2](v21, v32);
  }

  else
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property not present: %@", clientCopy, v19, v20];
    v21[2](v21, v32);
  }

LABEL_34:
  v35 = *(v42 + 24);

  _Block_object_dispose(&v41, 8);
  return (v35 & 1) == 0;
}

void __91__AXValidationManager_client_validateClass_hasProperty_customGetter_customSetter_withType___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  [*(a1 + 32) setNumberOfValidationErrors:{objc_msgSend(*(a1 + 32), "numberOfValidationErrors") + 1}];
  v3 = *(a1 + 32);
  if (v3[8] == 1)
  {
    v4 = [*(a1 + 32) consoleErrorMessages];
    [v4 addObject:v8];

    v3 = *(a1 + 32);
  }

  if (v3[10] == 1 && (v3[11] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = [v3 overrideProcessName];
    [v3 sendValidateExceptionForClass:v5 hasProperty:v6 errorMessage:v8 overrideProcessName:v7];

    v3 = *(a1 + 32);
  }

  if (v3[9] == 1)
  {
    abort();
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
}

- (BOOL)client:(id)client validateClass:(id)class conformsToProtocol:(id)protocol
{
  clientCopy = client;
  classCopy = class;
  protocolCopy = protocol;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v11 = _AXClassFromStringWithFallback(classCopy);
  v12 = NSProtocolFromString(protocolCopy);
  v13 = class_conformsToProtocol(v11, v12);

  if (!v13)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    protocolCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Class:%@ Does not conform to Protocol:%@", clientCopy, classCopy, protocolCopy];
    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:protocolCopy];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:classCopy conformsToProtocol:protocolCopy errorMessage:protocolCopy overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v13;
}

- (BOOL)client:(id)client validateProtocol:(id)protocol conformsToProtocol:(id)toProtocol
{
  clientCopy = client;
  protocolCopy = protocol;
  toProtocolCopy = toProtocol;
  v11 = NSProtocolFromString(protocolCopy);
  v12 = NSProtocolFromString(toProtocolCopy);
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v13 = protocol_conformsToProtocol(v11, v12);
  if (!v13)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    toProtocolCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Protocol does not conform to protocol: %@", clientCopy, protocolCopy, toProtocolCopy];
    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:toProtocolCopy];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForProtocol:protocolCopy conformsToProtocol:toProtocolCopy errorMessage:toProtocolCopy overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v13;
}

- (BOOL)client:(id)client validateProtocol:(id)protocol hasMethod:(id)method isInstanceMethod:(BOOL)instanceMethod isRequired:(BOOL)required
{
  requiredCopy = required;
  instanceMethodCopy = instanceMethod;
  clientCopy = client;
  protocolCopy = protocol;
  methodCopy = method;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v15 = NSProtocolFromString(protocolCopy);
  v16 = [methodCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_1F0579798];

  v17 = NSSelectorFromString(v16);
  name = protocol_getMethodDescription(v15, v17, requiredCopy, instanceMethodCopy).name;
  if (!name)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v19 = @"optional";
    if (requiredCopy)
    {
      v19 = @"required";
    }

    v20 = @"class";
    if (instanceMethodCopy)
    {
      v20 = @"instance";
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Protocol %@ %@ method not present: %@", clientCopy, protocolCopy, v19, v20, v16];
    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:v21];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForProtocol:protocolCopy hasMethod:v16 errorMessage:v21 overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return name != 0;
}

- (void)_iterateMethodsOfType:(int)type onClass:(Class)Class block:(id)block
{
  blockCopy = block;
  if (!type)
  {
    Class = object_getClass(Class);
  }

  outCount = 0;
  v8 = class_copyMethodList(Class, &outCount);
  if (v8 && outCount)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    do
    {
      blockCopy[2](blockCopy, v9[v10], &v11);
      if (v11 == 1)
      {
        break;
      }

      ++v10;
    }

    while (v10 < outCount);
    free(v9);
  }
}

- (id)_nameForMethod:(objc_method *)method
{
  if (method)
  {
    Name = method_getName(method);
    if (Name && (v5 = sel_getName(Name)) != 0)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    }

    else
    {
      v6 = @"(null)";
    }
  }

  else
  {
    v6 = @"(null)";
  }

  return v6;
}

- (void)_generateWarningsForPrefixedMethodNames:(id)names client:(id)client methodType:(int)type methodName:(id)name className:(id)className
{
  v34 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  clientCopy = client;
  nameCopy = name;
  classNameCopy = className;
  if ([namesCopy count])
  {
    [(AXValidationManager *)self setNumberOfValidationWarnings:[(AXValidationManager *)self numberOfValidationWarnings]+ 1];
    array = [MEMORY[0x1E695DF70] array];
    v17 = @"Instance";
    if (!type)
    {
      v17 = @"Class";
    }

    v26 = classNameCopy;
    v27 = nameCopy;
    v28 = clientCopy;
    classNameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ method: (%@) on class: %@ has the following more specific variants:", clientCopy, v17, nameCopy, classNameCopy];
    [array addObject:?];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = namesCopy;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@", *(*(&v29 + 1) + 8 * i)];
          [array addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v20);
    }

    if (self->_shouldLogToConsole)
    {
      consoleWarningMessages = [(AXValidationManager *)self consoleWarningMessages];
      [consoleWarningMessages addObjectsFromArray:array];
    }

    nameCopy = v27;
    clientCopy = v28;
    classNameCopy = v26;
  }
}

- (void)_generateWarningsOnSafeCategoryClass:(Class)class
{
  Superclass = class_getSuperclass(class);
  Class = object_getClass(Superclass);
  outCount = 0;
  v7 = class_copyMethodList(Class, &outCount);
  [(AXValidationManager *)self _generateWarningsForMethodType:0 onClass:class superclassMethods:v7 numberOfSuperclassMethods:outCount];
  if (v7 && outCount)
  {
    free(v7);
  }

  v9 = 0;
  v8 = class_copyMethodList(Superclass, &v9);
  [(AXValidationManager *)self _generateWarningsForMethodType:1 onClass:class superclassMethods:v8 numberOfSuperclassMethods:v9];
  if (v8)
  {
    if (v9)
    {
      free(v8);
    }
  }
}

- (void)_generateWarningsForMethodType:(int)type onClass:(Class)class superclassMethods:(objc_method *)methods numberOfSuperclassMethods:(unsigned int)superclassMethods
{
  if (methods)
  {
    if (superclassMethods)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:class_getName(class)];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __106__AXValidationManager__generateWarningsForMethodType_onClass_superclassMethods_numberOfSuperclassMethods___block_invoke_2;
      v13[3] = &unk_1E735BE80;
      v15 = &__block_literal_global_274_0;
      methodsCopy = methods;
      superclassMethodsCopy = superclassMethods;
      typeCopy = type;
      v13[4] = self;
      v14 = v11;
      v12 = v11;
      [(AXValidationManager *)self _iterateMethodsOfType:0 onClass:class block:v13];
    }
  }
}

uint64_t __106__AXValidationManager__generateWarningsForMethodType_onClass_superclassMethods_numberOfSuperclassMethods___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 length];
  v7 = [v4 length];
  v8 = [v5 hasPrefix:v4];
  v9 = 0;
  if (v6 > v7 && v8)
  {
    v10 = [v5 substringFromIndex:{objc_msgSend(v4, "length")}];
    if ([v4 hasSuffix:@":"])
    {
      v9 = [v10 containsString:@":"];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

void __106__AXValidationManager__generateWarningsForMethodType_onClass_superclassMethods_numberOfSuperclassMethods___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) _nameForMethod:a2];
  v3 = [MEMORY[0x1E695DF70] array];
  if (*(a1 + 64))
  {
    v4 = 0;
    do
    {
      v5 = [*(a1 + 32) _nameForMethod:*(*(a1 + 56) + 8 * v4)];
      if ((*(*(a1 + 48) + 16))())
      {
        [v3 addObject:v5];
      }

      ++v4;
    }

    while (v4 < *(a1 + 64));
  }

  [*(a1 + 32) _generateWarningsForPrefixedMethodNames:v3 client:AXValidationClientAccessibility methodType:*(a1 + 68) methodName:v6 className:*(a1 + 40)];
}

- (BOOL)installSafeCategory:(id)category canInteractWithTargetClass:(BOOL)class
{
  classCopy = class;
  v58 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  v7 = objc_autoreleasePoolPush();
  v8 = NSClassFromString(categoryCopy);
  v9 = [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  if (!v8)
  {
    v24 = AXLogValidations(v9);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [AXValidationManager installSafeCategory:canInteractWithTargetClass:];
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    categoryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"AX Safe Category class not found: %@", categoryCopy];
    v51 = 0;
    bundlePath4 = 0;
    bundlePath3 = 0;
    v10 = 0;
    LOBYTE(v26) = 0;
    goto LABEL_35;
  }

  if (!classCopy || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v20 = categoryCopy;
    v21 = v7;
    v22 = 0;
    bundlePath3 = 0;
    bundlePath4 = 0;
    v51 = 0;
    v10 = 0;
LABEL_28:
    if (objc_opt_respondsToSelector())
    {
      [(objc_class *)v8 performSelector:sel__initializeSafeCategoryFromValidationManager];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not an accessibility class!", v8];
    }
    categoryCopy = ;

    if (categoryCopy)
    {
      [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
      LOBYTE(v26) = 0;
    }

    else
    {
      LOBYTE(v26) = 1;
    }

    v7 = v21;
    categoryCopy = v20;
    goto LABEL_35;
  }

  v10 = [(objc_class *)v8 performSelector:sel_safeCategoryTargetClassName];
  bundlePath3 = NSClassFromString(v10);
  if (!bundlePath3)
  {
    v20 = categoryCopy;
    v21 = v7;
    v22 = 0;
LABEL_27:
    bundlePath4 = 0;
    v51 = 0;
    goto LABEL_28;
  }

  shouldPerformValidationChecks = [(AXValidationManager *)self shouldPerformValidationChecks];
  if (!shouldPerformValidationChecks)
  {
    v20 = categoryCopy;
    v21 = v7;
LABEL_26:
    v22 = 0;
    bundlePath3 = 0;
    goto LABEL_27;
  }

  v13 = AXLogLoading(shouldPerformValidationChecks);
  if (os_signpost_enabled(v13))
  {
    v14 = MEMORY[0x1E696AEC0];
    NSStringFromClass(bundlePath3);
    v16 = v15 = v7;
    v17 = [v14 stringWithFormat:@"Class=%@", v16];
    *buf = 138412290;
    v53 = v17;
    _os_signpost_emit_with_name_impl(&dword_19159B000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Validations", "Target=%@", buf, 0xCu);

    v7 = v15;
  }

  v18 = [(objc_class *)v8 performSelector:sel__installSafeCategoryValidationMethod];
  v50 = v18;
  if (!v18)
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = [(objc_class *)bundlePath3 axTrampolineForClass:bundlePath3];
      [v19 _accessibilityPerformValidations:self];
    }

    else
    {
      v18 = [(objc_class *)bundlePath3 _accessibilityPerformValidations:self];
    }
  }

  v27 = AXLogLoading(v18);
  if (os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19159B000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Validations", &unk_19167EAFE, buf, 2u);
  }

  v28 = [MEMORY[0x1E696AAE8] bundleForClass:v8];
  bundlePath = [v28 bundlePath];
  v30 = [bundlePath hasSuffix:@"axbundle"];

  if ((v30 & 1) == 0)
  {
    v41 = v28;
    v20 = categoryCopy;
    v21 = v7;

    goto LABEL_26;
  }

  v31 = [MEMORY[0x1E696AAE8] bundleForClass:bundlePath3];
  v32 = +[AXCodeLoader defaultLoader];
  v33 = [v32 codeItemForBundle:v31];

  v49 = v33;
  associatedAccessibilityCodeItem = [v33 associatedAccessibilityCodeItem];
  v47 = associatedAccessibilityCodeItem;
  v48 = v31;
  if (associatedAccessibilityCodeItem)
  {
    v35 = associatedAccessibilityCodeItem;
    v46 = v7;
    bundlePath2 = [v28 bundlePath];
    path = [v35 path];
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
    LOBYTE(v35) = [bundlePath2 isEqualToString:stringByDeletingLastPathComponent];

    if ((v35 & 1) != 0 || ([v49 name], v39 = objc_claimAutoreleasedReturnValue(), v40 = -[NSString hasSuffix:](categoryCopy, "hasSuffix:", v39), v39, v40))
    {
      v51 = 0;
      bundlePath4 = 0;
      bundlePath3 = 0;
      categoryCopy = 0;
      v26 = 1;
    }

    else
    {
      bundlePath3 = [v28 bundlePath];
      bundlePath4 = [v31 bundlePath];
      v45 = AXLogValidations(bundlePath4);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v53 = categoryCopy;
        v54 = 2112;
        v55 = v28;
        v56 = 2112;
        v57 = v31;
        _os_log_error_impl(&dword_19159B000, v45, OS_LOG_TYPE_ERROR, "AX Safe category class:%@ in wrong AX bundle '%@' should be with '%@'!", buf, 0x20u);
      }

      [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
      categoryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"AX Safe category class:%@ in wrong AX bundle '%@' should be with '%@'", categoryCopy, v28, v31];
      v26 = 0;
      v51 = 1;
    }

    v7 = v46;
  }

  else
  {
    v51 = 0;
    bundlePath4 = 0;
    bundlePath3 = 0;
    categoryCopy = 0;
    v26 = 1;
  }

  if (v26)
  {
    v20 = categoryCopy;
    v21 = v7;
    v22 = categoryCopy;
    goto LABEL_28;
  }

LABEL_35:
  if ([(AXValidationManager *)self shouldPerformValidationChecks])
  {
    [(AXValidationManager *)self _generateWarningsOnSafeCategoryClass:v8];
  }

  if (!v26)
  {
    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      if (v51)
      {
        [(AXValidationManager *)self sendExceptionForSafeCategoryOnWrongTarget:categoryCopy targetBundle:bundlePath3 expectedBundle:bundlePath4 overrideProcessName:overrideProcessName];
      }

      else
      {
        [(AXValidationManager *)self sendExceptionForInstallingSafeCategory:categoryCopy onTarget:v10 overrideProcessName:overrideProcessName];
      }
    }

    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:categoryCopy];
    }
  }

  objc_autoreleasePoolPop(v7);
  return v26;
}

- (BOOL)installSwiftDynamicReplacementUnit:(id)unit inBundle:(id)bundle withPrecondition:(id)precondition
{
  v43 = *MEMORY[0x1E69E9840];
  unitCopy = unit;
  bundleCopy = bundle;
  preconditionCopy = precondition;
  v11 = objc_autoreleasePoolPush();
  v12 = [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  if (!bundleCopy)
  {
    v22 = AXLogValidations(v12);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [AXValidationManager installSwiftDynamicReplacementUnit:inBundle:withPrecondition:];
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"AX Container bundle was not found when installing Swift dynamic replacement unit %@", unitCopy];
    goto LABEL_17;
  }

  if (![unitCopy length])
  {
    v23 = AXLogValidations(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [AXValidationManager installSwiftDynamicReplacementUnit:v23 inBundle:? withPrecondition:?];
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v24 = MEMORY[0x1E696AEC0];
    v25 = @"AX Swift dynamic replacement name empty";
    goto LABEL_16;
  }

  v13 = preconditionCopy[2](preconditionCopy);
  if ((v13 & 1) == 0)
  {
    v26 = AXLogValidations(v13);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [AXValidationManager installSwiftDynamicReplacementUnit:inBundle:withPrecondition:];
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v24 = MEMORY[0x1E696AEC0];
    v34 = unitCopy;
    v25 = @"AX Swift dynamic replacement %@ installation's condition not met";
LABEL_16:
    [v24 stringWithFormat:v25, v34];
    v20 = LABEL_17:;
    goto LABEL_18;
  }

  builtInPlugInsPath = [bundleCopy builtInPlugInsPath];
  v15 = [unitCopy stringByAppendingPathExtension:@"axbundlefile"];
  v16 = [builtInPlugInsPath stringByAppendingPathComponent:v15];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v18 = [defaultManager fileExistsAtPath:v16 isDirectory:0];

  if (v18)
  {
    if (dlopen([v16 UTF8String], 1))
    {

      v20 = 0;
      v21 = 1;
      goto LABEL_24;
    }

    v32 = dlerror();
    v33 = AXLogValidations(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v38 = unitCopy;
      v39 = 2112;
      v40 = bundleCopy;
      v41 = 2080;
      v42 = v32;
      _os_log_error_impl(&dword_19159B000, v33, OS_LOG_TYPE_ERROR, "AX Swift dynamic replacement %@ from bundle %@ not successfully installed: %s", buf, 0x20u);
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"AX Swift dynamic replacement %@ from bundle %@ not successfully installed: %s", unitCopy, bundleCopy, v32];
  }

  else
  {
    v31 = AXLogValidations(v19);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [AXValidationManager installSwiftDynamicReplacementUnit:inBundle:withPrecondition:];
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"AX Swift dynamic replacement file not found at path %@", v16, v35, v36];
  }
  v20 = ;

LABEL_18:
  if (self->_shouldReportToServer && !self->_forceDoNotReport)
  {
    unitCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Swift Dynamic Replacement: %@", unitCopy];
    overrideProcessName = [(AXValidationManager *)self overrideProcessName];
    [(AXValidationManager *)self sendExceptionForInstallingSafeCategory:unitCopy onTarget:&stru_1F0579798 overrideProcessName:overrideProcessName];
  }

  if (self->_shouldLogToConsole)
  {
    consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
    [consoleErrorMessages addObject:v20];
  }

  v21 = 0;
LABEL_24:

  objc_autoreleasePoolPop(v11);
  return v21;
}

- (void)sendExceptionForInstallingSafeCategory:(id)category onTarget:(id)target overrideProcessName:(id)name
{
  categoryCopy = category;
  targetCopy = target;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v11 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendExceptionForInstallingSafeCategory:categoryCopy onTarget:targetCopy overrideProcessName:nameCopy];
  }

  else
  {
    v12 = AXProcessGetName(validationReportingServices);
    [v11 sendExceptionForInstallingSafeCategory:categoryCopy onTarget:targetCopy overrideProcessName:v12];
  }
}

- (void)sendExceptionForSafeCategoryOnWrongTarget:(id)target targetBundle:(id)bundle expectedBundle:(id)expectedBundle overrideProcessName:(id)name
{
  targetCopy = target;
  bundleCopy = bundle;
  expectedBundleCopy = expectedBundle;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendExceptionForSafeCategoryOnWrongTarget:targetCopy targetBundle:bundleCopy expectedBundle:expectedBundleCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName(validationReportingServices);
    [v14 sendExceptionForSafeCategoryOnWrongTarget:targetCopy targetBundle:bundleCopy expectedBundle:expectedBundleCopy overrideProcessName:v15];
  }
}

- (void)sendExceptionForSafeValueKey:(id)key onTarget:(id)target overrideProcessName:(id)name
{
  nameCopy = name;
  targetCopy = target;
  keyCopy = key;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v15 = validationReportingServices;
  v12 = nameCopy;
  if (!nameCopy)
  {
    v12 = AXProcessGetName(validationReportingServices);
  }

  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  v14 = [callStackSymbols componentsJoinedByString:@"\n"];
  [v15 sendExceptionForSafeValueKey:keyCopy onTarget:targetCopy overrideProcessName:v12 backtrace:v14];

  if (!nameCopy)
  {
  }
}

- (void)sendExceptionForSafeIVarKey:(id)key onTarget:(id)target overrideProcessName:(id)name
{
  keyCopy = key;
  targetCopy = target;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v11 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendExceptionForSafeIVarKey:keyCopy onTarget:targetCopy overrideProcessName:nameCopy];
  }

  else
  {
    v12 = AXProcessGetName(validationReportingServices);
    [v11 sendExceptionForSafeIVarKey:keyCopy onTarget:targetCopy overrideProcessName:v12];
  }
}

- (void)sendExceptionForSafeBlock:(id)block overrideProcessName:(id)name
{
  blockCopy = block;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v8 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendExceptionForSafeBlock:blockCopy overrideProcessName:nameCopy];
  }

  else
  {
    v9 = AXProcessGetName(validationReportingServices);
    [v8 sendExceptionForSafeBlock:blockCopy overrideProcessName:v9];
  }
}

- (void)sendGenericReport:(id)report withTag:(id)tag overrideProcessName:(id)name
{
  reportCopy = report;
  tagCopy = tag;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v11 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendGenericReport:reportCopy withTag:tagCopy overrideProcessName:nameCopy];
  }

  else
  {
    v12 = AXProcessGetName(validationReportingServices);
    [v11 sendGenericReport:reportCopy withTag:tagCopy overrideProcessName:v12];
  }
}

- (void)sendValidateExceptionForClass:(id)class errorMessage:(id)message overrideProcessName:(id)name
{
  classCopy = class;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v11 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForClass:classCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v12 = AXProcessGetName(validationReportingServices);
    [v11 sendValidateExceptionForClass:classCopy errorMessage:messageCopy overrideProcessName:v12];
  }
}

- (void)sendValidateExceptionForClass:(id)class isKindOfClass:(id)ofClass errorMessage:(id)message overrideProcessName:(id)name
{
  classCopy = class;
  ofClassCopy = ofClass;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForClass:classCopy isKindOfClass:ofClassCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName(validationReportingServices);
    [v14 sendValidateExceptionForClass:classCopy isKindOfClass:ofClassCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)class conformsToProtocol:(id)protocol errorMessage:(id)message overrideProcessName:(id)name
{
  classCopy = class;
  protocolCopy = protocol;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForClass:classCopy conformsToProtocol:protocolCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName(validationReportingServices);
    [v14 sendValidateExceptionForClass:classCopy conformsToProtocol:protocolCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)class hasInstanceVariable:(id)variable errorMessage:(id)message overrideProcessName:(id)name
{
  classCopy = class;
  variableCopy = variable;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForClass:classCopy hasInstanceVariable:variableCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName(validationReportingServices);
    [v14 sendValidateExceptionForClass:classCopy hasInstanceVariable:variableCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)class hasInstanceMethod:(id)method errorMessage:(id)message overrideProcessName:(id)name
{
  classCopy = class;
  methodCopy = method;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForClass:classCopy hasInstanceMethod:methodCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName(validationReportingServices);
    [v14 sendValidateExceptionForClass:classCopy hasInstanceMethod:methodCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)class hasClassMethod:(id)method errorMessage:(id)message overrideProcessName:(id)name
{
  classCopy = class;
  methodCopy = method;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForClass:classCopy hasClassMethod:methodCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName(validationReportingServices);
    [v14 sendValidateExceptionForClass:classCopy hasClassMethod:methodCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)class hasProperty:(id)property errorMessage:(id)message overrideProcessName:(id)name
{
  classCopy = class;
  propertyCopy = property;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForClass:classCopy hasProperty:propertyCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName(validationReportingServices);
    [v14 sendValidateExceptionForClass:classCopy hasProperty:propertyCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForProtocol:(id)protocol conformsToProtocol:(id)toProtocol errorMessage:(id)message overrideProcessName:(id)name
{
  protocolCopy = protocol;
  toProtocolCopy = toProtocol;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForProtocol:protocolCopy conformsToProtocol:toProtocolCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName(validationReportingServices);
    [v14 sendValidateExceptionForProtocol:protocolCopy conformsToProtocol:toProtocolCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForProtocol:(id)protocol hasMethod:(id)method errorMessage:(id)message overrideProcessName:(id)name
{
  protocolCopy = protocol;
  methodCopy = method;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForProtocol:protocolCopy hasMethod:methodCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName(validationReportingServices);
    [v14 sendValidateExceptionForProtocol:protocolCopy hasMethod:methodCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForProtocol:(id)protocol hasProperty:(id)property errorMessage:(id)message overrideProcessName:(id)name
{
  protocolCopy = protocol;
  propertyCopy = property;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForProtocol:protocolCopy hasProperty:propertyCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName(validationReportingServices);
    [v14 sendValidateExceptionForProtocol:protocolCopy hasProperty:propertyCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendFailedAssertionWithErrorMessage:(id)message overrideProcessName:(id)name
{
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v8 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendFailedAssertionWithErrorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v9 = AXProcessGetName(validationReportingServices);
    [v8 sendFailedAssertionWithErrorMessage:messageCopy overrideProcessName:v9];
  }
}

- (void)sendFailedTestCase:(id)case withTag:(id)tag overrideProcessName:(id)name
{
  caseCopy = case;
  tagCopy = tag;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v11 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendFailedTestCase:caseCopy withTag:tagCopy overrideProcessName:nameCopy];
  }

  else
  {
    v12 = AXProcessGetName(validationReportingServices);
    [v11 sendFailedTestCase:caseCopy withTag:tagCopy overrideProcessName:v12];
  }
}

- (void)sendValidationSuccessForProcessName:(id)name
{
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v5 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidationSuccessForProcessName:nameCopy];
  }

  else
  {
    v6 = AXProcessGetName(validationReportingServices);
    [v5 sendValidationSuccessForProcessName:v6];
  }
}

- (void)installSwiftDynamicReplacementUnit:inBundle:withPrecondition:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_19159B000, v1, OS_LOG_TYPE_ERROR, "AX Swift dynamic replacement %@ not found in bundle %@", v2, 0x16u);
}

@end