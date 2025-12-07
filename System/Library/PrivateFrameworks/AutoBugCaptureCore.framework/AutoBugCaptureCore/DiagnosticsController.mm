@interface DiagnosticsController
+ (id)loggingStateCache;
+ (void)initialize;
- (BOOL)_loadLoggingSupport;
- (BOOL)validateActionsDictionary:(id)dictionary;
- (BOOL)validateActionsDictionaryContent:(id)content identifier:(id)identifier;
- (BOOL)validateDiagnosticsConfiguration:(id)configuration;
- (BOOL)validateOSLogPreferencesProtocol:(id)protocol;
- (BOOL)validateSettingsDictionary:(id)dictionary;
- (BOOL)validateSettingsNodeContents:(id)contents identifier:(id)identifier;
- (BOOL)validateSettingsNodeDictionary:(id)dictionary identifier:(id)identifier isDefault:(BOOL)default;
- (DiagnosticsController)initWithConfiguration:(id)configuration;
- (id)actionsDictionaryForProcess:(id)process logLevel:(id)level diagnosticExtensions:(id)extensions;
- (id)consolidatedLogLevelSetsFromActions:(id)actions;
- (id)defaultsDictionaryWithAlwaysRunActions:(id)actions;
- (id)diagActionsForSignature:(id)signature commonActions:(id)actions;
- (id)diagExtensionCollector;
- (id)diagnosticExtensionsForDiagnosticCase:(id)case enableCommonActions:(id)actions;
- (unint64_t)collectDiagnosticExtensionFilesForDiagnosticCase:(id)case parameters:(id)parameters options:(id)options queue:(id)queue reply:(id)reply;
- (void)applyLogLevel:(id)level forIdentifier:(id)identifier logSettingType:(unint64_t)type;
- (void)applyLogLevelSets:(id)sets;
- (void)configureWithDiagnosticActions:(id)actions;
- (void)consolidateLoggingLevelsIntoSet:(id)set withCurrentState:(id)state;
- (void)dealloc;
- (void)lowerLoggingForDiagnosticCase:(id)case;
- (void)lowerLoggingForIdentifier:(id)identifier;
- (void)raiseLoggingForActions:(id)actions identifier:(id)identifier;
- (void)raiseLoggingForDiagnosticCase:(id)case;
@end

@implementation DiagnosticsController

+ (void)initialize
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_28537A0B0;
  v4[1] = &unk_28537A0C8;
  v5[0] = @"process";
  v5[1] = @"subsystem";
  v4[2] = &unk_28537A0E0;
  v5[2] = @"category";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v3 = LogSettingToString;
  LogSettingToString = v2;
}

- (DiagnosticsController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = DiagnosticsController;
  v5 = [(DiagnosticsController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DiagnosticsController *)v5 configureWithDiagnosticActions:configurationCopy];
  }

  return v6;
}

- (void)dealloc
{
  if (gLoggingSupportDyLibHandle)
  {
    dlclose(gLoggingSupportDyLibHandle);
    gLoggingSupportDyLibHandle = 0;
  }

  v3.receiver = self;
  v3.super_class = DiagnosticsController;
  [(DiagnosticsController *)&v3 dealloc];
}

- (BOOL)_loadLoggingSupport
{
  if (_loadLoggingSupport_symbolLoadOnce != -1)
  {
    [DiagnosticsController _loadLoggingSupport];
  }

  return _loadLoggingSupport_symbolsLoaded;
}

void __44__DiagnosticsController__loadLoggingSupport__block_invoke()
{
  gLoggingSupportDyLibHandle = dlopen("/System/Library/PrivateFrameworks/LoggingSupport.framework/LoggingSupport", 6);
  if (!gLoggingSupportDyLibHandle)
  {
    v6 = diagcollectLogHandle(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v11 = 0;
    v7 = "Failed to load LoggingSupport.framework";
    v8 = &v11;
LABEL_21:
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_22;
  }

  gOSLogPreferencesManager = objc_getClass("OSLogPreferencesManager");
  gOSLogPreferencesSubsystem = objc_getClass("OSLogPreferencesSubsystem");
  gOSLogPreferencesProcess = objc_getClass("OSLogPreferencesProcess");
  Class = objc_getClass("OSLogPreferencesCategory");
  gOSLogPreferencesCategory = Class;
  if (gOSLogPreferencesManager)
  {
    v1 = gOSLogPreferencesSubsystem == 0;
  }

  else
  {
    v1 = 1;
  }

  v4 = !v1 && gOSLogPreferencesProcess != 0 && Class != 0;
  _loadLoggingSupport_symbolsLoaded = v4;
  v5 = diagcollectLogHandle(Class);
  v6 = v5;
  if (v4 != 1)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v7 = "Failed to load OSLogPreferences* classes from LoggingSupport.framework";
    v8 = buf;
    goto LABEL_21;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 0;
    v7 = "Successfully loaded OSLogPreferences* classes from LoggingSupport.framework.";
    v8 = &v13;
    v9 = v6;
    v10 = OS_LOG_TYPE_INFO;
LABEL_22:
    _os_log_impl(&dword_241804000, v9, v10, v7, v8, 2u);
  }

LABEL_23:
}

- (void)configureWithDiagnosticActions:(id)actions
{
  actionsCopy = actions;
  v5 = +[ABCAdministrator sharedInstance];
  configurationManager = [v5 configurationManager];
  autoBugCaptureRegularPayloads = [configurationManager autoBugCaptureRegularPayloads];

  if (autoBugCaptureRegularPayloads)
  {
    if ([(DiagnosticsController *)self validateDiagnosticsConfiguration:actionsCopy])
    {
      v9 = MEMORY[0x277CBEB38];
      v10 = [actionsCopy objectForKeyedSubscript:@"DIAGNOSTIC_ACTIONS"];
      v11 = [v9 dictionaryWithDictionary:v10];
      actionsDict = self->_actionsDict;
      self->_actionsDict = v11;

      v13 = MEMORY[0x277CBEB38];
      v14 = [actionsCopy objectForKeyedSubscript:@"DIAGNOSTIC_SETTINGS"];
      v15 = [v13 dictionaryWithDictionary:v14];
      settingsDict = self->_settingsDict;
      self->_settingsDict = v15;
    }
  }

  else
  {
    v17 = diagcollectLogHandle(v8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_DEFAULT, "Not configuring for platforms without payloads", v18, 2u);
    }
  }
}

- (BOOL)validateDiagnosticsConfiguration:(id)configuration
{
  v32 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = [configurationCopy objectForKeyedSubscript:@"DIAGNOSTIC_ACTIONS"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = [(DiagnosticsController *)self validateActionsDictionary:v5];
    v8 = v7;
    v9 = diagcollectLogHandle(v7);
    v10 = v9;
    if (v8)
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      LOWORD(v28) = 0;
      v11 = "Finished validating actions dictionary.";
      v12 = v10;
      v13 = OS_LOG_TYPE_INFO;
    }

    else
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      LOWORD(v28) = 0;
      v11 = "Validation Failure: Errors detected while validating actions dictionary!";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_241804000, v12, v13, v11, &v28, 2u);
  }

  else
  {
    v10 = diagcollectLogHandle(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v28 = 138412546;
      v29 = v5;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Unexpected object %@ (%@) found for actions dictionary!", &v28, 0x16u);
    }

    LOBYTE(v8) = 0;
  }

LABEL_11:

  v16 = [configurationCopy objectForKeyedSubscript:@"DIAGNOSTIC_SETTINGS"];

  objc_opt_class();
  v17 = objc_opt_isKindOfClass();
  if (v17)
  {
    v18 = [(DiagnosticsController *)self validateSettingsDictionary:v16];
    v19 = v18;
    v20 = diagcollectLogHandle(v18);
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v28) = 0;
        v22 = "Finished validating settings dictionary.";
        v23 = v21;
        v24 = OS_LOG_TYPE_DEBUG;
LABEL_20:
        _os_log_impl(&dword_241804000, v23, v24, v22, &v28, 2u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      v22 = "Validation Failure: Errors detected while validating settings dictionary!";
      v23 = v21;
      v24 = OS_LOG_TYPE_ERROR;
      goto LABEL_20;
    }
  }

  else
  {
    v21 = diagcollectLogHandle(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v28 = 138412546;
      v29 = v16;
      v30 = 2112;
      v31 = v26;
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_ERROR, "Unexpected object %@ (%@) found for settings dictionary!", &v28, 0x16u);
    }

    LOBYTE(v19) = 0;
  }

  return v8 & v19;
}

- (BOOL)validateActionsDictionary:(id)dictionary
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  allKeys = [dictionary allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    v8 = 1;
    v9 = &dword_241804000;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v13 = v11;
          if ([v13 length])
          {
            v14 = [(NSMutableDictionary *)self->_actionsDict objectForKeyedSubscript:v13];
            objc_opt_class();
            v15 = objc_opt_isKindOfClass();
            if (v15)
            {
              [(DiagnosticsController *)self validateActionsDictionaryContent:v14 identifier:v13];
            }

            else if (v14)
            {
              v18 = allKeys;
              selfCopy = self;
              v20 = v9;
              v21 = diagcollectLogHandle(v15);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v22 = objc_opt_class();
                v23 = NSStringFromClass(v22);
                *buf = 138412290;
                v30 = v23;
                _os_log_impl(v20, v21, OS_LOG_TYPE_DEBUG, "Found unexpected class for actions value: %@ (should be NSDictionary)", buf, 0xCu);
              }

              v8 = 0;
              v9 = v20;
              self = selfCopy;
              allKeys = v18;
            }
          }

          else
          {
            v14 = diagcollectLogHandle(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(v9, v14, OS_LOG_TYPE_DEBUG, "Actions identifiers must not be empty", buf, 2u);
            }

            v8 = 0;
          }
        }

        else
        {
          if (!v11)
          {
            continue;
          }

          v13 = diagcollectLogHandle(isKindOfClass);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            *buf = 138412290;
            v30 = v17;
            _os_log_impl(v9, v13, OS_LOG_TYPE_DEBUG, "Found unexpected class for actions identifier: %@ (should be NSString)", buf, 0xCu);
          }

          v8 = 0;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (!v6)
      {
        goto LABEL_27;
      }
    }
  }

  v8 = 1;
LABEL_27:

  return v8 & 1;
}

- (BOOL)validateActionsDictionaryContent:(id)content identifier:(id)identifier
{
  v105 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  identifierCopy = identifier;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  allKeys = [contentCopy allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v90 objects:v104 count:16];
  if (!v7)
  {
    v9 = 1;
    goto LABEL_121;
  }

  v8 = v7;
  v9 = 1;
  v10 = *v91;
  v75 = contentCopy;
  v76 = *v91;
  v74 = allKeys;
  do
  {
    v11 = 0;
    v77 = v8;
    do
    {
      if (*v91 != v10)
      {
        objc_enumerationMutation(allKeys);
      }

      v79 = v11;
      v12 = *(*(&v90 + 1) + 8 * v11);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v14 = v12;
        v15 = [contentCopy objectForKeyedSubscript:v14];
        v78 = v15;
        if ([v14 isEqualToString:@"oslog"])
        {
          objc_opt_class();
          v16 = objc_opt_isKindOfClass();
          if (v16)
          {
            v81 = v14;
            v17 = v15;
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            allKeys2 = [v17 allKeys];
            v19 = [allKeys2 countByEnumeratingWithState:&v86 objects:v103 count:16];
            if (!v19)
            {
              goto LABEL_54;
            }

            v20 = v19;
            v21 = *v87;
            while (1)
            {
              v22 = 0;
              do
              {
                if (*v87 != v21)
                {
                  objc_enumerationMutation(allKeys2);
                }

                v23 = *(*(&v86 + 1) + 8 * v22);
                objc_opt_class();
                v24 = objc_opt_isKindOfClass();
                if (v24)
                {
                  v25 = v23;
                  v26 = v17;
                  v27 = [v17 objectForKeyedSubscript:v25];
                  if ([v25 isEqualToString:@"level"])
                  {
                    objc_opt_class();
                    v28 = objc_opt_isKindOfClass();
                    if (v28)
                    {
                      v29 = v27;
                      if ([v29 length])
                      {
                        if (([v29 isEqualToString:@"default"]& 1) == 0 && ([v29 isEqualToString:@"info"]& 1) == 0 && ([v29 isEqualToString:@"debug"]& 1) == 0)
                        {
                          v30 = [v29 isEqualToString:@"none"];
                          if ((v30 & 1) == 0)
                          {
                            v31 = diagcollectLogHandle(v30);
                            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                            {
                              *buf = 138412290;
                              v96 = v29;
                              _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_DEBUG, "Unknown OSLog level: %@", buf, 0xCu);
                            }

                            goto LABEL_45;
                          }
                        }
                      }

                      else
                      {
                        v31 = diagcollectLogHandle(0);
                        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_DEBUG, "OSLog level setting must not be empty", buf, 2u);
                        }

                        v9 = 0;
LABEL_45:
                      }

LABEL_46:

LABEL_47:
                      v17 = v26;
                      goto LABEL_48;
                    }

                    if (!v27)
                    {
                      goto LABEL_47;
                    }

                    v29 = diagcollectLogHandle(v28);
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                    {
LABEL_40:
                      v37 = objc_opt_class();
                      v38 = NSStringFromClass(v37);
                      *buf = 138413058;
                      v96 = identifierCopy;
                      v97 = 2112;
                      v98 = v81;
                      v99 = 2112;
                      v100 = v25;
                      v101 = 2112;
                      v102 = v38;
                      _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_DEBUG, "Found unexpected class for value of oslog settings key %@.%@.%@: %@ (should be NSString)", buf, 0x2Au);
                    }
                  }

                  else if (([v25 isEqualToString:@"process"]& 1) != 0 || ([v25 isEqualToString:@"category"]& 1) != 0 || (v34 = [v25 isEqualToString:@"subsystem"], v34))
                  {
                    objc_opt_class();
                    v35 = objc_opt_isKindOfClass();
                    if (v35)
                    {
                      v29 = v27;
                      if (![v29 length])
                      {
                        v36 = diagcollectLogHandle(0);
                        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412290;
                          v96 = v25;
                          _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_DEBUG, "OSLog %@ identifier must not be empty", buf, 0xCu);
                        }

                        v9 = 0;
                      }

                      goto LABEL_46;
                    }

                    v29 = diagcollectLogHandle(v35);
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_40;
                    }
                  }

                  else
                  {
                    v29 = diagcollectLogHandle(v34);
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412802;
                      v96 = identifierCopy;
                      v97 = 2112;
                      v98 = v81;
                      v99 = 2112;
                      v100 = v25;
                      _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_DEBUG, "Found unsupported oslog settings key: %@.%@.%@", buf, 0x20u);
                    }
                  }

                  v9 = 0;
                  goto LABEL_46;
                }

                if (!v23)
                {
                  goto LABEL_49;
                }

                v25 = diagcollectLogHandle(v24);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  v32 = objc_opt_class();
                  v33 = NSStringFromClass(v32);
                  *buf = 138412802;
                  v96 = identifierCopy;
                  v97 = 2112;
                  v98 = v81;
                  v99 = 2112;
                  v100 = v33;
                  _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_DEBUG, "Found unexpected class for oslog settings key in %@.%@: %@ (should be NSString)", buf, 0x20u);
                }

                v9 = 0;
LABEL_48:

LABEL_49:
                ++v22;
              }

              while (v20 != v22);
              v39 = [allKeys2 countByEnumeratingWithState:&v86 objects:v103 count:16];
              v20 = v39;
              if (!v39)
              {
LABEL_54:

                allKeys = v74;
                contentCopy = v75;
                v10 = v76;
                v8 = v77;
                goto LABEL_55;
              }
            }
          }

          if (!v15)
          {
            goto LABEL_110;
          }

          v17 = diagcollectLogHandle(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v47 = objc_opt_class();
            NSStringFromClass(v47);
            v49 = v48 = v14;
            *buf = 138412802;
            v96 = identifierCopy;
            v97 = 2112;
            v98 = v48;
            v99 = 2112;
            v100 = v49;
            v50 = v17;
            v51 = "Found unexpected class for value of actions key %@.%@: %@ (should be NSDictionary)";
            goto LABEL_107;
          }

          goto LABEL_108;
        }

        if ([v14 isEqualToString:@"process"])
        {
          objc_opt_class();
          v43 = objc_opt_isKindOfClass();
          if (v43)
          {
            if ([v15 length])
            {
              goto LABEL_110;
            }

            v17 = diagcollectLogHandle(0);
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_108;
            }

            *buf = 0;
            v44 = v17;
            v45 = "OSLog process identifier must not be empty";
            v46 = 2;
LABEL_103:
            _os_log_impl(&dword_241804000, v44, OS_LOG_TYPE_DEBUG, v45, buf, v46);
            goto LABEL_108;
          }

          if (!v15)
          {
            goto LABEL_110;
          }

          v17 = diagcollectLogHandle(v43);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_108;
          }

LABEL_106:
          v71 = objc_opt_class();
          NSStringFromClass(v71);
          v49 = v48 = v14;
          *buf = 138412802;
          v96 = identifierCopy;
          v97 = 2112;
          v98 = v48;
          v99 = 2112;
          v100 = v49;
          v50 = v17;
          v51 = "Found unexpected class for value of actions key %@.%@: %@ (should be NSString)";
LABEL_107:
          _os_log_impl(&dword_241804000, v50, OS_LOG_TYPE_DEBUG, v51, buf, 0x20u);

          v14 = v48;
LABEL_108:
          v9 = 0;
          goto LABEL_109;
        }

        if ([v14 isEqualToString:@"level"])
        {
          objc_opt_class();
          v52 = objc_opt_isKindOfClass();
          if ((v52 & 1) == 0)
          {
            if (!v15)
            {
              goto LABEL_110;
            }

            v17 = diagcollectLogHandle(v52);
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_108;
            }

            goto LABEL_106;
          }

          v17 = v15;
          if ([v17 length])
          {
            if (([v17 isEqualToString:@"default"]& 1) != 0)
            {
              goto LABEL_109;
            }

            if (([v17 isEqualToString:@"info"]& 1) != 0)
            {
              goto LABEL_109;
            }

            if (([v17 isEqualToString:@"debug"]& 1) != 0)
            {
              goto LABEL_109;
            }

            v53 = [v17 isEqualToString:@"none"];
            if (v53)
            {
              goto LABEL_109;
            }

            v54 = v17;
            v55 = v14;
            v56 = diagcollectLogHandle(v53);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v96 = v54;
              v57 = v56;
              v58 = "Unsupported OSLog level: %@";
              v59 = 12;
              goto LABEL_116;
            }
          }

          else
          {
            v54 = v17;
            v55 = v14;
            v56 = diagcollectLogHandle(0);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              v57 = v56;
              v58 = "OSLog level setting must not be empty";
              v59 = 2;
LABEL_116:
              _os_log_impl(&dword_241804000, v57, OS_LOG_TYPE_DEBUG, v58, buf, v59);
            }
          }

          v9 = 0;
          v14 = v55;
          v17 = v54;
          goto LABEL_109;
        }

        v60 = [v14 isEqualToString:@"diagExt"];
        if (!v60)
        {
          v17 = diagcollectLogHandle(v60);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_108;
          }

          *buf = 138412546;
          v96 = identifierCopy;
          v97 = 2112;
          v98 = v14;
          v44 = v17;
          v45 = "Found unsupported actions key: %@.%@";
          v46 = 22;
          goto LABEL_103;
        }

        objc_opt_class();
        v61 = objc_opt_isKindOfClass();
        if ((v61 & 1) == 0)
        {
          if (!v15)
          {
            goto LABEL_110;
          }

          v17 = diagcollectLogHandle(v61);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_108;
          }

          goto LABEL_106;
        }

        v81 = v14;
        v17 = v15;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v62 = [v17 countByEnumeratingWithState:&v82 objects:v94 count:16];
        if (!v62)
        {
          goto LABEL_55;
        }

        v63 = v62;
        v64 = *v83;
        while (2)
        {
          v65 = 0;
LABEL_85:
          if (*v83 != v64)
          {
            objc_enumerationMutation(v17);
          }

          v66 = *(*(&v82 + 1) + 8 * v65);
          objc_opt_class();
          v67 = objc_opt_isKindOfClass();
          if (v67)
          {
            if (![v66 length])
            {
              v68 = diagcollectLogHandle(0);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_241804000, v68, OS_LOG_TYPE_DEBUG, "Diagnostic Extension identifiers must not be empty", buf, 2u);
              }

              goto LABEL_94;
            }
          }

          else if (v66)
          {
            v68 = diagcollectLogHandle(v67);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              v69 = objc_opt_class();
              v70 = NSStringFromClass(v69);
              *buf = 138412290;
              v96 = v70;
              _os_log_impl(&dword_241804000, v68, OS_LOG_TYPE_DEBUG, "Found unexpected class for Diagnostic Extension identifiers: %@ (should be NSString)", buf, 0xCu);
            }

LABEL_94:

            v9 = 0;
          }

          if (v63 == ++v65)
          {
            v63 = [v17 countByEnumeratingWithState:&v82 objects:v94 count:16];
            if (!v63)
            {
              v10 = v76;
              v8 = v77;
LABEL_55:
              v14 = v81;
LABEL_109:

              v15 = v78;
LABEL_110:

LABEL_111:
              goto LABEL_112;
            }

            continue;
          }

          goto LABEL_85;
        }
      }

      if (v12)
      {
        v40 = diagcollectLogHandle(isKindOfClass);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          *buf = 138412546;
          v96 = identifierCopy;
          v97 = 2112;
          v98 = v42;
          _os_log_impl(&dword_241804000, v40, OS_LOG_TYPE_DEBUG, "Found unexpected class for actions key %@: %@ (should be NSString)", buf, 0x16u);
        }

        v9 = 0;
        v14 = v40;
        goto LABEL_111;
      }

LABEL_112:
      v11 = v79 + 1;
    }

    while (v79 + 1 != v8);
    v72 = [allKeys countByEnumeratingWithState:&v90 objects:v104 count:16];
    v8 = v72;
  }

  while (v72);
LABEL_121:

  return v9 & 1;
}

- (BOOL)validateSettingsDictionary:(id)dictionary
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [dictionary allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    v8 = 1;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v12 = v10;
          v13 = [(NSMutableDictionary *)self->_settingsDict objectForKeyedSubscript:v12];
          if ([v12 length])
          {
            objc_opt_class();
            v14 = objc_opt_isKindOfClass();
            if (v14)
            {
              v15 = v13;
              v8 = [(DiagnosticsController *)self validateSettingsNodeDictionary:v15 identifier:v12 isDefault:[v12 isEqualToString:@"DEFAULTS"]];
              goto LABEL_20;
            }

            if (v13)
            {
              v15 = diagcollectLogHandle(v14);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                v18 = objc_opt_class();
                v19 = NSStringFromClass(v18);
                *buf = 138412546;
                v26 = v12;
                v27 = 2112;
                v28 = v19;
                _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEBUG, "Found unexpected class for settings domain node %@: %@ (should be NSDictionary)", buf, 0x16u);
              }

LABEL_19:
              v8 = 0;
LABEL_20:
            }

            goto LABEL_22;
          }

          v15 = diagcollectLogHandle(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEBUG, "Settings domain identifier must not be empty", buf, 2u);
          }

          goto LABEL_19;
        }

        if (!v10)
        {
          continue;
        }

        v12 = diagcollectLogHandle(isKindOfClass);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          *buf = 138412290;
          v26 = v17;
          _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "Found unexpected class for settings domain identifier: %@ (should be NSString)", buf, 0xCu);
        }

        v8 = 0;
LABEL_22:
      }

      v6 = [allKeys countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (!v6)
      {
        goto LABEL_27;
      }
    }
  }

  v8 = 1;
LABEL_27:

  return v8;
}

- (BOOL)validateSettingsNodeDictionary:(id)dictionary identifier:(id)identifier isDefault:(BOOL)default
{
  defaultCopy = default;
  v49 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [dictionaryCopy allKeys];
  v8 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 1;
    v11 = *v39;
    v35 = dictionaryCopy;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v15 = v13;
          v16 = [dictionaryCopy objectForKeyedSubscript:v15];
          if (![v15 length])
          {
            v18 = diagcollectLogHandle(0);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v43 = identifierCopy;
              _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEBUG, "Found empty key in node %@", buf, 0xCu);
            }

            goto LABEL_31;
          }

          if (defaultCopy)
          {
            objc_opt_class();
            v17 = objc_opt_isKindOfClass();
            if ((v17 & 1) == 0)
            {
              if (v16)
              {
                v18 = diagcollectLogHandle(v17);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                {
                  v19 = objc_opt_class();
                  v20 = NSStringFromClass(v19);
                  *buf = 138412802;
                  v43 = identifierCopy;
                  v44 = 2112;
                  v45 = v15;
                  v46 = 2112;
                  v47 = v20;
                  v21 = v18;
                  v22 = "Found unexpected class for value of default node key %@.%@: %@ (should be NSArray)";
                  goto LABEL_30;
                }

                goto LABEL_31;
              }

LABEL_33:

              goto LABEL_34;
            }

LABEL_25:
            v31 = MEMORY[0x277CCACA8];
            v28 = v16;
            v18 = [v31 stringWithFormat:@"%@.%@", identifierCopy, v15];
            v29 = [(DiagnosticsController *)self validateSettingsNodeContents:v28 identifier:v18];
LABEL_26:
            v10 = v29;

            dictionaryCopy = v35;
          }

          else
          {
            v25 = [v15 isEqualToString:@"alwaysRun"];
            if (v25)
            {
              v26 = diagcollectLogHandle(v25);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v43 = @"alwaysRun";
                v44 = 2112;
                v45 = identifierCopy;
                v46 = 2112;
                v47 = v15;
                _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEBUG, "Warning: Node key %@ is reserved for default dictionaries. (Found at %@.%@)", buf, 0x20u);
              }

              v10 = 0;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = MEMORY[0x277CCACA8];
              v28 = v16;
              v18 = [v27 stringWithFormat:@"%@.%@", identifierCopy, v15];
              v29 = [(DiagnosticsController *)self validateSettingsNodeDictionary:v28 identifier:v18 isDefault:[v15 isEqualToString:@"DEFAULTS"]];
              goto LABEL_26;
            }

            objc_opt_class();
            v30 = objc_opt_isKindOfClass();
            if (v30)
            {
              goto LABEL_25;
            }

            if (!v16)
            {
              goto LABEL_33;
            }

            v18 = diagcollectLogHandle(v30);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v32 = objc_opt_class();
              v20 = NSStringFromClass(v32);
              *buf = 138412802;
              v43 = identifierCopy;
              v44 = 2112;
              v45 = v15;
              v46 = 2112;
              v47 = v20;
              v21 = v18;
              v22 = "Found unexpected class for value of node key %@.%@: %@ (should be NSArray or NSDictionary)";
LABEL_30:
              _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_DEBUG, v22, buf, 0x20u);

              dictionaryCopy = v35;
            }

LABEL_31:
            v10 = 0;
          }

          goto LABEL_33;
        }

        v15 = diagcollectLogHandle(isKindOfClass);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          *buf = 138412546;
          v43 = identifierCopy;
          v44 = 2112;
          v45 = v24;
          _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEBUG, "Found unexpected class for key in node %@: %@ (should be NSString)", buf, 0x16u);
        }

        v10 = 0;
LABEL_34:
      }

      v9 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (!v9)
      {
        goto LABEL_38;
      }
    }
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

- (BOOL)validateSettingsNodeContents:(id)contents identifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  identifierCopy = identifier;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [contentsCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = 1;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(contentsCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          if ([v12 length])
          {
            continue;
          }

          v14 = diagcollectLogHandle(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v23 = identifierCopy;
            _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Action identifiers must not be empty. (%@)", buf, 0xCu);
          }
        }

        else
        {
          v14 = diagcollectLogHandle(isKindOfClass);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = objc_opt_class();
            v16 = NSStringFromClass(v15);
            *buf = 138412546;
            v23 = identifierCopy;
            v24 = 2112;
            v25 = v16;
            _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Found unexpected class for action identifiers in node key %@: %@ (should be NSString)", buf, 0x16u);
          }
        }

        v10 = 0;
      }

      v8 = [contentsCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (!v8)
      {
        goto LABEL_17;
      }
    }
  }

  v10 = 1;
LABEL_17:

  return v10 & 1;
}

+ (id)loggingStateCache
{
  if (loggingStateCache_m_pred != -1)
  {
    +[DiagnosticsController loggingStateCache];
  }

  v3 = loggingStateCache_stateDict;

  return v3;
}

uint64_t __42__DiagnosticsController_loggingStateCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = loggingStateCache_stateDict;
  loggingStateCache_stateDict = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)diagExtensionCollector
{
  deCollector = self->deCollector;
  if (!deCollector)
  {
    v4 = +[ABCAdministrator sharedInstance];
    configurationManager = [v4 configurationManager];

    v6 = [DiagnosticExtensionController alloc];
    logArchivePath = [configurationManager logArchivePath];
    v8 = [(DiagnosticExtensionController *)v6 initWithDestinationDirectory:logArchivePath];
    v9 = self->deCollector;
    self->deCollector = v8;

    deCollector = self->deCollector;
  }

  return deCollector;
}

- (id)defaultsDictionaryWithAlwaysRunActions:(id)actions
{
  actionsCopy = actions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([actionsCopy count])
  {
    [dictionary setObject:actionsCopy forKey:@"alwaysRun"];
  }

  return dictionary;
}

- (id)actionsDictionaryForProcess:(id)process logLevel:(id)level diagnosticExtensions:(id)extensions
{
  processCopy = process;
  levelCopy = level;
  extensionsCopy = extensions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = [processCopy length];
  if (levelCopy && v11)
  {
    [dictionary setObject:processCopy forKey:@"process"];
    [dictionary setObject:levelCopy forKey:@"level"];
  }

  if ([extensionsCopy count])
  {
    [dictionary setObject:extensionsCopy forKey:@"diagExt"];
  }

  return dictionary;
}

- (id)consolidatedLogLevelSetsFromActions:(id)actions
{
  v75 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  actionsDict = [(DiagnosticsController *)self actionsDict];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = diagcollectLogHandle(dictionary);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v67 = [actionsCopy count];
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEBUG, "Consolidating log levels from %ld actions", buf, 0xCu);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = actionsCopy;
  v7 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v63;
    v56 = actionsDict;
    v58 = *v63;
    do
    {
      v10 = 0;
      v57 = v8;
      do
      {
        if (*v63 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [actionsDict objectForKeyedSubscript:*(*(&v62 + 1) + 8 * v10)];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v13 = v11;
          v14 = [v13 objectForKeyedSubscript:@"process"];
          v15 = [v13 objectForKeyedSubscript:@"level"];
          objc_opt_class();
          v16 = objc_opt_isKindOfClass();
          v61 = v15;
          if (v16)
          {
            objc_opt_class();
            v16 = objc_opt_isKindOfClass();
            if (v16)
            {
              v17 = v15;
              v18 = v14;
              dictionary2 = [dictionary objectForKeyedSubscript:@"process"];
              if (!dictionary2)
              {
                dictionary2 = [MEMORY[0x277CBEB38] dictionary];
                [dictionary setObject:dictionary2 forKeyedSubscript:@"process"];
              }

              v20 = [dictionary2 objectForKeyedSubscript:v18];
              v21 = [v17 maximumLogLevelString:v20];

              [dictionary2 setObject:v21 forKeyedSubscript:v18];
              actionsDict = v56;
              v8 = v57;
              v15 = v61;
              goto LABEL_20;
            }
          }

          if (v14 | v15)
          {
            dictionary2 = diagcollectLogHandle(v16);
            if (os_log_type_enabled(dictionary2, OS_LOG_TYPE_DEBUG))
            {
              v24 = objc_opt_class();
              v25 = NSStringFromClass(v24);
              v26 = objc_opt_class();
              v27 = NSStringFromClass(v26);
              *buf = 138413058;
              v67 = @"process";
              v68 = 2112;
              v69 = @"level";
              v70 = 2112;
              v71 = v25;
              v72 = 2112;
              v73 = v27;
              _os_log_impl(&dword_241804000, dictionary2, OS_LOG_TYPE_DEBUG, "Found unexpected class for keys %@,%@ in the action dictionary (should be NSString): %@,%@", buf, 0x2Au);

              v8 = v57;
            }

LABEL_20:
          }

          v28 = [v13 objectForKeyedSubscript:@"oslog"];
          objc_opt_class();
          v29 = objc_opt_isKindOfClass();
          if ((v29 & 1) == 0)
          {
            if (v28)
            {
              v30 = diagcollectLogHandle(v29);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                v39 = objc_opt_class();
                v40 = NSStringFromClass(v39);
                *buf = 138412546;
                v67 = @"oslog";
                v68 = 2112;
                v69 = v40;
                _os_log_impl(&dword_241804000, v30, OS_LOG_TYPE_DEBUG, "Found unexpected class for key %@ in the action dictionary (should be NSDictionary): %@", buf, 0x16u);
              }

              goto LABEL_54;
            }

LABEL_55:

            v9 = v58;
            goto LABEL_56;
          }

          v30 = v28;
          v31 = [v30 objectForKeyedSubscript:@"level"];
          v32 = [v30 objectForKeyedSubscript:@"process"];
          v33 = [v30 objectForKeyedSubscript:@"category"];
          v34 = [v30 objectForKeyedSubscript:@"subsystem"];
          v35 = v34;
          v60 = v33;
          if (!v31)
          {
            v36 = diagcollectLogHandle(v34);
            if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_53;
            }

            *buf = 0;
            v37 = v36;
            v38 = "OSLog setting requires a level to be specified.";
LABEL_36:
            _os_log_impl(&dword_241804000, v37, OS_LOG_TYPE_DEBUG, v38, buf, 2u);
            goto LABEL_53;
          }

          if (v32 && v34)
          {
            v36 = diagcollectLogHandle(v34);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              v37 = v36;
              v38 = "OSLog setting should identify a process or subsystem, not both.";
              goto LABEL_36;
            }

LABEL_53:

            actionsDict = v56;
            v8 = v57;
LABEL_54:

            v15 = v61;
            goto LABEL_55;
          }

          if (v33 && !v34)
          {
            v36 = diagcollectLogHandle(0);
            if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_53;
            }

            *buf = 0;
            v37 = v36;
            v38 = "OSLog setting requires a subsystem identifier when specifying a category.";
            goto LABEL_36;
          }

          objc_opt_class();
          v41 = objc_opt_isKindOfClass();
          if (v41)
          {
            v36 = v31;
            if (v32)
            {
              objc_opt_class();
              v42 = objc_opt_isKindOfClass();
              if (v60)
              {
                if ((v42 & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (v35)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        goto LABEL_53;
                      }
                    }
                  }
                }
              }
            }

            v50 = v32;
            v43 = v32;
            v51 = v60;
            v52 = v35;
            v54 = v43;
            if ([(__CFString *)v43 length])
            {
              dictionary3 = [dictionary objectForKeyedSubscript:@"process"];
              if (!dictionary3)
              {
                dictionary3 = [MEMORY[0x277CBEB38] dictionary];
                [dictionary setObject:? forKeyedSubscript:?];
              }

              v49 = [dictionary3 objectForKeyedSubscript:v43];
              v48 = [v36 maximumLogLevelString:?];
              [dictionary3 setObject:? forKeyedSubscript:?];
              v32 = v50;
              goto LABEL_48;
            }

            v32 = v50;
            if ([v52 length])
            {
              if ([v51 length])
              {
                dictionary3 = [dictionary objectForKeyedSubscript:@"category"];
                if (!dictionary3)
                {
                  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
                  [dictionary setObject:? forKeyedSubscript:?];
                }

                v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v51, v52];
                v48 = [dictionary3 objectForKeyedSubscript:v49];
                v47 = [v36 maximumLogLevelString:?];
                [dictionary3 setObject:v47 forKeyedSubscript:v49];
              }

              else
              {
                dictionary3 = [dictionary objectForKeyedSubscript:@"subsystem"];
                if (!dictionary3)
                {
                  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
                  [dictionary setObject:? forKeyedSubscript:?];
                }

                v49 = [dictionary3 objectForKeyedSubscript:v52];
                v48 = [v36 maximumLogLevelString:?];
                [dictionary3 setObject:? forKeyedSubscript:?];
              }

LABEL_48:
            }
          }

          else
          {
            v36 = diagcollectLogHandle(v41);
            if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_53;
            }

            v44 = objc_opt_class();
            v54 = NSStringFromClass(v44);
            *buf = 138412546;
            v67 = @"level";
            v68 = 2112;
            v69 = v54;
            _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_DEBUG, "Found unexpected class for key %@ in the oslog settings dictionary (should be NSString): %@", buf, 0x16u);
          }

          goto LABEL_53;
        }

        if (!v11)
        {
          goto LABEL_57;
        }

        v13 = diagcollectLogHandle(isKindOfClass);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          *buf = 138412290;
          v67 = v23;
          _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "Found unexpected class in actions (should be NSDictionary): %@", buf, 0xCu);
        }

LABEL_56:

LABEL_57:
        ++v10;
      }

      while (v8 != v10);
      v45 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
      v8 = v45;
    }

    while (v45);
  }

  return dictionary;
}

- (id)diagActionsForSignature:(id)signature commonActions:(id)actions
{
  v91 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  actionsCopy = actions;
  v7 = [(__CFString *)signatureCopy objectForKeyedSubscript:@"domain"];
  v79 = [(__CFString *)signatureCopy objectForKeyedSubscript:@"type"];
  v77 = [(__CFString *)signatureCopy objectForKeyedSubscript:@"subtype"];
  v8 = @"additional";
  v76 = [(__CFString *)signatureCopy objectForKeyedSubscript:@"additional"];
  v9 = [(__CFString *)signatureCopy objectForKeyedSubscript:@"detected"];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_285368168;
  }

  v11 = [v7 isEqualToString:@"UIPerformance"];
  v78 = v7;
  if ((v11 & 1) != 0 || [v7 isEqualToString:@"Performance"] && (v11 = objc_msgSend(v79, "isEqualToString:", @"MemoryResourceException"), v11))
  {
    v12 = diagcollectLogHandle(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "Will skip evaluating common diagnostic extension actions based on signature match", buf, 2u);
    }

    LOBYTE(v13) = 0;
    v7 = v78;
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  if (actionsCopy)
  {
    bOOLValue = [actionsCopy BOOLValue];
    LODWORD(v13) = bOOLValue;
    v15 = diagcollectLogHandle(bOOLValue);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = "not ";
      if (v13)
      {
        v16 = "";
      }

      *buf = 136315138;
      v86 = v16;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEBUG, "Will %sevaluate common diagnostic extension actions based on client request", buf, 0xCu);
    }

    v7 = v78;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([v7 length] && objc_msgSend(v79, "length"))
  {
    [dictionary setObject:@"type" forKeyedSubscript:@"domain"];
    if ([v79 length] && objc_msgSend(v77, "length"))
    {
      [dictionary setObject:@"subtype" forKeyedSubscript:@"type"];
      if (![v77 length])
      {
        goto LABEL_32;
      }

      if (![v76 length])
      {
        goto LABEL_32;
      }

      [dictionary setObject:@"additional" forKeyedSubscript:@"subtype"];
      if (![v76 length] || !-[__CFString length](v10, "length"))
      {
        goto LABEL_32;
      }

LABEL_31:
      [dictionary setObject:@"detected" forKeyedSubscript:v8];
      goto LABEL_32;
    }

    if ([v79 length])
    {
      v8 = @"type";
      if ([(__CFString *)v10 length])
      {
        goto LABEL_31;
      }
    }
  }

  else if ([v7 length])
  {
    v8 = @"domain";
    if ([(__CFString *)v10 length])
    {
      goto LABEL_31;
    }
  }

LABEL_32:
  v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
  settingsDict = [(DiagnosticsController *)self settingsDict];
  v18 = @"domain";
  v20 = v18;
  v21 = "ghtStatus";
  if (settingsDict)
  {
    v22 = 0;
    *&v19 = 134218242;
    v75 = v19;
    v81 = v10;
    v83 = v13;
    while (1)
    {
      v23 = diagcollectLogHandle(v18);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = @"Top Level";
        if (v22)
        {
          v24 = v22;
        }

        *buf = 138412290;
        v86 = v24;
        _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_DEBUG, "Processing actions for [%@]", buf, 0xCu);
      }

      if ((v22 != 0) | v13 & 1)
      {
        break;
      }

      v26 = diagcollectLogHandle(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v86 = signatureCopy;
        _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_INFO, "Skipped evaluating common diagnostic extension actions for signature: %@", buf, 0xCu);
      }

LABEL_69:

      v48 = [(__CFString *)signatureCopy objectForKeyedSubscript:v20];

      if ([(__CFString *)v48 length])
      {
        v49 = [settingsDict objectForKeyedSubscript:v48];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v50 = v49;

          v52 = diagcollectLogHandle(v51);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v52, OS_LOG_TYPE_DEBUG, "We have another level to look into.", buf, 2u);
          }

          goto LABEL_85;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          v52 = v49;
          if ([v52 count])
          {
            v53 = diagcollectLogHandle([v82 addObjectsFromArray:v52]);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              v54 = [v52 count];
              *buf = 134218498;
              v86 = v54;
              v87 = 2112;
              v88 = v10;
              v89 = 2112;
              v90 = v52;
              v55 = v53;
              v56 = OS_LOG_TYPE_DEBUG;
              v57 = "Added %ld actions for %@: %@";
              v58 = 32;
              goto LABEL_82;
            }

            goto LABEL_83;
          }

          goto LABEL_84;
        }

        if (v49)
        {

          v52 = diagcollectLogHandle(v59);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_84;
          }

          v60 = objc_opt_class();
          v53 = NSStringFromClass(v60);
          *buf = 138412290;
          v86 = v53;
          v55 = v52;
          v56 = OS_LOG_TYPE_ERROR;
          v57 = "Found unexpected class: %@";
          goto LABEL_81;
        }

        v50 = [settingsDict objectForKeyedSubscript:v10];

        if (!v50)
        {
          v52 = settingsDict;
          goto LABEL_85;
        }

        v52 = [settingsDict objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          v53 = diagcollectLogHandle(v62);
          if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_83;
          }

          *buf = 138412290;
          v86 = v52;
          v55 = v53;
          v56 = OS_LOG_TYPE_ERROR;
          v57 = "Unexpectedly found a dictionary instead of an array: %@";
LABEL_81:
          v58 = 12;
LABEL_82:
          _os_log_impl(&dword_241804000, v55, v56, v57, buf, v58);
LABEL_83:

LABEL_84:
          v50 = 0;
LABEL_85:

          goto LABEL_86;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v53 = v52;
          if (![v53 count])
          {
            goto LABEL_83;
          }

          v65 = diagcollectLogHandle([v82 addObjectsFromArray:v53]);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            v66 = [v53 count];
            *buf = 134218498;
            v86 = v66;
            v87 = 2112;
            v88 = v10;
            v89 = 2112;
            v90 = v53;
            v67 = v65;
            v68 = OS_LOG_TYPE_DEBUG;
            v69 = "Added %ld actions for %@: %@";
            v70 = 32;
            goto LABEL_100;
          }
        }

        else
        {
          if (!v52)
          {
            goto LABEL_84;
          }

          v53 = diagcollectLogHandle(v64);
          if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_83;
          }

          v71 = objc_opt_class();
          v65 = NSStringFromClass(v71);
          *buf = 138412290;
          v86 = v65;
          v67 = v53;
          v68 = OS_LOG_TYPE_ERROR;
          v69 = "Found unexpected class: %@";
          v70 = 12;
LABEL_100:
          _os_log_impl(&dword_241804000, v67, v68, v69, buf, v70);
        }

        goto LABEL_83;
      }

      v50 = 0;
      v49 = settingsDict;
LABEL_86:

      v61 = [dictionary objectForKeyedSubscript:v20];

      settingsDict = v50;
      v20 = v61;
      v22 = v48;
      if (!v50)
      {

        v7 = v78;
        v21 = "preflightStatus" + 6;
        goto LABEL_103;
      }
    }

    v26 = [settingsDict objectForKeyedSubscript:@"DEFAULTS"];
    objc_opt_class();
    v27 = objc_opt_isKindOfClass();
    if ((v27 & 1) == 0)
    {
      if (!v26)
      {
        goto LABEL_69;
      }

      v13 = diagcollectLogHandle(v27);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        *buf = 138412546;
        v86 = @"DEFAULTS";
        v87 = 2112;
        v88 = v37;
        _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "Found unexpected class for key %@ (should be NSDictionary): %@", buf, 0x16u);
      }

      goto LABEL_68;
    }

    v13 = v26;
    v28 = diagcollectLogHandle(v13);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_DEBUG, "Evaluating default actions.", buf, 2u);
    }

    v29 = [v13 objectForKeyedSubscript:@"alwaysRun"];
    objc_opt_class();
    v30 = objc_opt_isKindOfClass();
    if (v30)
    {
      v31 = v29;
      if ([v31 count])
      {
        v32 = diagcollectLogHandle([v82 addObjectsFromArray:v31]);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
LABEL_55:

          goto LABEL_56;
        }

        v33 = [v31 count];
        *buf = v75;
        v86 = v33;
        v87 = 2112;
        v88 = v31;
        v34 = v32;
        v35 = "Added %ld always run actions: %@";
LABEL_54:
        _os_log_impl(&dword_241804000, v34, OS_LOG_TYPE_DEBUG, v35, buf, 0x16u);
        goto LABEL_55;
      }
    }

    else
    {
      if (!v29)
      {
        goto LABEL_57;
      }

      v31 = diagcollectLogHandle(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v38 = objc_opt_class();
        v32 = NSStringFromClass(v38);
        *buf = 138412546;
        v86 = @"alwaysRun";
        v87 = 2112;
        v88 = v32;
        v34 = v31;
        v35 = "Found unexpected class for key %@ (should be NSArray): %@";
        goto LABEL_54;
      }
    }

LABEL_56:

LABEL_57:
    v39 = [v13 objectForKeyedSubscript:{v10, v75}];
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();
    if (v40)
    {
      v41 = v39;
      if ([v41 count])
      {
        v42 = diagcollectLogHandle([v82 addObjectsFromArray:v41]);
        if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
LABEL_65:

          v10 = v81;
          goto LABEL_66;
        }

        v43 = [v41 count];
        *buf = 134218498;
        v86 = v43;
        v87 = 2112;
        v88 = v81;
        v89 = 2112;
        v90 = v41;
        v44 = v42;
        v45 = "Added %ld default actions for %@: %@";
        v46 = 32;
LABEL_64:
        _os_log_impl(&dword_241804000, v44, OS_LOG_TYPE_DEBUG, v45, buf, v46);
        goto LABEL_65;
      }
    }

    else
    {
      if (!v39)
      {
LABEL_67:

LABEL_68:
        LOBYTE(v13) = v83;
        goto LABEL_69;
      }

      v41 = diagcollectLogHandle(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v47 = objc_opt_class();
        v42 = NSStringFromClass(v47);
        *buf = 138412546;
        v86 = v81;
        v87 = 2112;
        v88 = v42;
        v44 = v41;
        v45 = "Found unexpected class for key %@ (should be NSArray): %@";
        v46 = 22;
        goto LABEL_64;
      }
    }

LABEL_66:

    goto LABEL_67;
  }

  v61 = v18;
LABEL_103:
  v72 = diagcollectLogHandle(v18);
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    v73 = [v82 count];
    *buf = *(v21 + 384);
    v86 = v73;
    v87 = 2112;
    v88 = v82;
    _os_log_impl(&dword_241804000, v72, OS_LOG_TYPE_DEBUG, "Result: Found %ld actions: %@", buf, 0x16u);
  }

  return v82;
}

- (void)consolidateLoggingLevelsIntoSet:(id)set withCurrentState:(id)state
{
  v23 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [state allValues];
  v7 = [allValues countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v13 = diagcollectLogHandle(isKindOfClass);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v21 = v11;
            _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "sesstionState: %@", buf, 0xCu);
          }

          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __74__DiagnosticsController_consolidateLoggingLevelsIntoSet_withCurrentState___block_invoke;
          v14[3] = &unk_278CF0C68;
          v15 = setCopy;
          [v11 enumerateKeysAndObjectsUsingBlock:v14];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }
}

void __74__DiagnosticsController_consolidateLoggingLevelsIntoSet_withCurrentState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = diagcollectLogHandle(isKindOfClass);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v19 = v5;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEBUG, "key: %@ object: %@", buf, 0x16u);
      }

      v9 = v6;
      if (([v5 isEqualToString:@"process"]& 1) != 0 || ([v5 isEqualToString:@"subsystem"]& 1) != 0 || (v10 = [v5 isEqualToString:@"category"], v10))
      {
        v11 = [*(a1 + 32) objectForKeyedSubscript:v5];
        if (!v11)
        {
          v11 = [MEMORY[0x277CBEB38] dictionary];
          [*(a1 + 32) setObject:v11 forKeyedSubscript:v5];
        }

        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __74__DiagnosticsController_consolidateLoggingLevelsIntoSet_withCurrentState___block_invoke_155;
        v16[3] = &unk_278CF0C68;
        v17 = v11;
        v12 = v11;
        [v9 enumerateKeysAndObjectsUsingBlock:v16];
      }

      else
      {
        v12 = diagcollectLogHandle(v10);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v19 = v5;
          _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "Found unsupported log set key %@", buf, 0xCu);
        }
      }

      goto LABEL_13;
    }
  }

  v9 = diagcollectLogHandle(isKindOfClass);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138412546;
    v19 = v12;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "Found unexpected class %@/%@ for consolidated action set (should be NSString/NSDictionary).", buf, 0x16u);

LABEL_13:
  }
}

void __74__DiagnosticsController_consolidateLoggingLevelsIntoSet_withCurrentState___block_invoke_155(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
  {
    v8 = *(a1 + 32);
    v9 = v6;
    v10 = [v8 objectForKeyedSubscript:v5];
    v11 = [v9 maximumLogLevelString:v10];

    [*(a1 + 32) setObject:v11 forKeyedSubscript:v5];
  }

  else
  {
    v12 = diagcollectLogHandle(isKindOfClass);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "Found unexpected class %@/%@ for log level setting (should be NSString/NSString).", &v17, 0x16u);
    }
  }
}

- (void)raiseLoggingForActions:(id)actions identifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    v8 = diagcollectLogHandle(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v16) = 0;
    v15 = "A valid identifier is required when raising log levels!";
LABEL_16:
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEBUG, v15, &v16, 2u);
    goto LABEL_17;
  }

  if (![actionsCopy count])
  {
    v8 = diagcollectLogHandle(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v16) = 0;
    v15 = "No actions to raise log levels for.";
    goto LABEL_16;
  }

  v8 = +[DiagnosticsController loggingStateCache];
  v9 = [(DiagnosticsController *)self consolidatedLogLevelSetsFromActions:actionsCopy];
  v10 = diagcollectLogHandle(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134217984;
    v17 = [v9 count];
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "Consolidated actions to %ld set(s) of log level adjustments", &v16, 0xCu);
  }

  v11 = [v9 count];
  if (v11)
  {
    v12 = diagcollectLogHandle(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = identifierCopy;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "Storing logging state for session: %@", &v16, 0xCu);
    }

    [v8 setObject:v9 forKeyedSubscript:identifierCopy];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v14 = diagcollectLogHandle([(DiagnosticsController *)self consolidateLoggingLevelsIntoSet:dictionary withCurrentState:v8]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Applying the consolidated log levels", &v16, 2u);
    }

    [(DiagnosticsController *)self applyLogLevelSets:dictionary];
  }

LABEL_17:
}

- (void)lowerLoggingForIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v5 = +[DiagnosticsController loggingStateCache];
    v6 = [v5 objectForKeyedSubscript:identifierCopy];
    if ([v6 count])
    {
      v7 = diagcollectLogHandle([v5 setObject:0 forKeyedSubscript:identifierCopy]);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v14 = identifierCopy;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "Removed logging state for session: %@", buf, 0xCu);
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(DiagnosticsController *)self consolidateLoggingLevelsIntoSet:dictionary withCurrentState:v5];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __51__DiagnosticsController_lowerLoggingForIdentifier___block_invoke;
      v11[3] = &unk_278CF0C68;
      v12 = dictionary;
      v9 = dictionary;
      v10 = diagcollectLogHandle([v6 enumerateKeysAndObjectsUsingBlock:v11]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "Apply the consolidated log levels", buf, 2u);
      }

      [(DiagnosticsController *)self applyLogLevelSets:v9];
    }

    else
    {
      v9 = diagcollectLogHandle(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v14 = identifierCopy;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "No logging state for session: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = diagcollectLogHandle(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "A valid identifier is required when lowering log levels!", buf, 2u);
    }
  }
}

void __51__DiagnosticsController_lowerLoggingForIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([v5 isEqualToString:@"process"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"subsystem") & 1) != 0 || (v7 = objc_msgSend(v5, "isEqualToString:", @"category"), v7))
  {
    v20 = v6;
    v8 = v6;
    v9 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (!v9)
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
      [*(a1 + 32) setObject:v9 forKeyedSubscript:v5];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v8 allKeys];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
            v17 = [v9 objectForKeyedSubscript:v16];
            if (!v17)
            {
              [v9 setObject:@"reset" forKeyedSubscript:v16];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v12);
    }

    v18 = v19;
    v6 = v20;
  }

  else
  {
    v18 = diagcollectLogHandle(v7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEBUG, "Unsupported log setting type: %@", buf, 0xCu);
    }
  }
}

- (void)applyLogLevelSets:(id)sets
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__DiagnosticsController_applyLogLevelSets___block_invoke;
  v3[3] = &unk_278CF0C68;
  v3[4] = self;
  [sets enumerateKeysAndObjectsUsingBlock:v3];
}

void __43__DiagnosticsController_applyLogLevelSets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"process"])
  {
    v7 = 1;
  }

  else if ([v5 isEqualToString:@"subsystem"])
  {
    v7 = 2;
  }

  else
  {
    v8 = [v5 isEqualToString:@"category"];
    v7 = 3;
    if (!v8)
    {
      v7 = 0;
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__DiagnosticsController_applyLogLevelSets___block_invoke_2;
  v9[3] = &unk_278CF0C90;
  v9[4] = *(a1 + 32);
  v9[5] = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
}

- (BOOL)validateOSLogPreferencesProtocol:(id)protocol
{
  protocolCopy = protocol;
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0;

  return v4;
}

- (void)applyLogLevel:(id)level forIdentifier:(id)identifier logSettingType:(unint64_t)type
{
  v64 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  identifierCopy = identifier;
  _loadLoggingSupport = [(DiagnosticsController *)self _loadLoggingSupport];
  v11 = _loadLoggingSupport;
  v12 = diagcollectLogHandle(_loadLoggingSupport);
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = LogSettingToString;
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      v16 = [v14 objectForKeyedSubscript:v15];
      v52 = 138412546;
      typeCopy = v16;
      v54 = 2112;
      v55 = identifierCopy;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, " - %@ identifier: %@", &v52, 0x16u);
    }

    switch(type)
    {
      case 3uLL:
        v19 = [identifierCopy componentsSeparatedByString:@":"];
        if ([v19 count] == 2)
        {
          v20 = [v19 objectAtIndexedSubscript:0];
          v21 = [v19 objectAtIndexedSubscript:1];
          v22 = [[gOSLogPreferencesSubsystem alloc] initWithName:v20];
          v13 = [[gOSLogPreferencesCategory alloc] initWithName:v21 subsystem:v22];
        }

        else
        {
          v13 = 0;
        }

        break;
      case 2uLL:
        v18 = [[gOSLogPreferencesSubsystem alloc] initWithName:identifierCopy];
        goto LABEL_11;
      case 1uLL:
        v18 = [[gOSLogPreferencesProcess alloc] initWithBundleID:identifierCopy];
LABEL_11:
        v13 = v18;
        break;
      default:
        v23 = diagcollectLogHandle(v17);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v52 = 134217984;
          typeCopy = type;
          _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_DEBUG, "Unsupported log setting type: %ld", &v52, 0xCu);
        }

        v13 = 0;
        break;
    }

    v24 = [(DiagnosticsController *)self validateOSLogPreferencesProtocol:v13];
    v25 = v24;
    v26 = diagcollectLogHandle(v24);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
    if (!v25)
    {
      if (v27)
      {
        v52 = 138412290;
        typeCopy = v13;
        v36 = "OSLogPreferences object %@ no longer conforms to our expected definition!";
        v37 = v26;
        v38 = 12;
LABEL_53:
        _os_log_impl(&dword_241804000, v37, OS_LOG_TYPE_DEBUG, v36, &v52, v38);
      }

LABEL_54:

      goto LABEL_55;
    }

    if (v27)
    {
      if ([v13 isLocked])
      {
        v28 = @"On";
      }

      else
      {
        v28 = @"Off";
      }

      effectiveEnabledLevel = [v13 effectiveEnabledLevel];
      enabledLevel = [v13 enabledLevel];
      effectivePersistedLevel = [v13 effectivePersistedLevel];
      persistedLevel = [v13 persistedLevel];
      v52 = 138413570;
      typeCopy = v13;
      v54 = 2112;
      v55 = v28;
      v56 = 2048;
      v57 = effectiveEnabledLevel;
      v58 = 2048;
      v59 = enabledLevel;
      v60 = 2048;
      v61 = effectivePersistedLevel;
      v62 = 2048;
      v63 = persistedLevel;
      _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEBUG, "(Before) OSLogPreferences: %@, isLocked: %@, effectiveEnabled:%ld, enabled:%ld effectivePersisted: %ld, persisted: %ld", &v52, 0x3Eu);
    }

    isLocked = [v13 isLocked];
    if (isLocked)
    {
      v26 = diagcollectLogHandle(isLocked);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v52 = 138412290;
        typeCopy = v35;
        _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEBUG, "No means to adjust log levels!! (%@ is locked)", &v52, 0xCu);
      }

      goto LABEL_54;
    }

    v39 = [levelCopy isEqualToString:@"info"];
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v39 = [levelCopy isEqualToString:@"debug"];
      if (v39)
      {
        v40 = 4;
      }

      else
      {
        v39 = [levelCopy isEqualToString:@"none"];
        if (v39)
        {
          v40 = 0;
        }

        else
        {
          v39 = [levelCopy isEqualToString:@"reset"];
          if (v39)
          {
            v41 = diagcollectLogHandle(v39);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(v52) = 0;
              _os_log_impl(&dword_241804000, v41, OS_LOG_TYPE_DEBUG, "Resetting log level", &v52, 2u);
            }

            reset = [v13 reset];
LABEL_48:
            v26 = diagcollectLogHandle(reset);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              if ([v13 isLocked])
              {
                v47 = @"On";
              }

              else
              {
                v47 = @"Off";
              }

              effectiveEnabledLevel2 = [v13 effectiveEnabledLevel];
              enabledLevel2 = [v13 enabledLevel];
              effectivePersistedLevel2 = [v13 effectivePersistedLevel];
              persistedLevel2 = [v13 persistedLevel];
              v52 = 138413570;
              typeCopy = v13;
              v54 = 2112;
              v55 = v47;
              v56 = 2048;
              v57 = effectiveEnabledLevel2;
              v58 = 2048;
              v59 = enabledLevel2;
              v60 = 2048;
              v61 = effectivePersistedLevel2;
              v62 = 2048;
              v63 = persistedLevel2;
              v36 = "(After) OSLogPreferences: %@, isLocked: %@, effectiveEnabled: %ld, enabled: %ld effectivePersisted: %ld, persisted: %ld";
              v37 = v26;
              v38 = 62;
              goto LABEL_53;
            }

            goto LABEL_54;
          }

          v40 = 1;
        }
      }
    }

    v43 = diagcollectLogHandle(v39);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v52 = 138412546;
      typeCopy = levelCopy;
      v54 = 2048;
      v55 = v40;
      _os_log_impl(&dword_241804000, v43, OS_LOG_TYPE_DEBUG, "Requesting log level change to: %@ (%ld)", &v52, 0x16u);
    }

    if ([v13 enabledLevel]< v40 || (reset = [v13 persistedLevel], reset < v40))
    {
      [v13 setEnabledLevel:v40];
      v44 = diagcollectLogHandle([v13 setPersistedLevel:v40]);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        persistedLevel3 = [v13 persistedLevel];
        enabledLevel3 = [v13 enabledLevel];
        v52 = 138413058;
        typeCopy = levelCopy;
        v54 = 2048;
        v55 = v40;
        v56 = 2048;
        v57 = persistedLevel3;
        v58 = 2048;
        v59 = enabledLevel3;
        _os_log_impl(&dword_241804000, v44, OS_LOG_TYPE_DEBUG, "Adjusted log level to: %@ (%ld) - p:%ld | e:%ld", &v52, 0x2Au);
      }
    }

    goto LABEL_48;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v52) = 0;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "The dynamic loading of LoggingSupport failed", &v52, 2u);
  }

LABEL_55:
}

- (void)raiseLoggingForDiagnosticCase:(id)case
{
  v13 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  v5 = diagcollectLogHandle(caseCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    caseId = [caseCopy caseId];
    v11 = 138412290;
    v12 = caseId;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "raiseLoggingForDiagnosticCase: %@", &v11, 0xCu);
  }

  caseId2 = [caseCopy caseId];
  uUIDString = [caseId2 UUIDString];

  signature = [caseCopy signature];
  if ([uUIDString length] && objc_msgSend(signature, "count"))
  {
    v10 = [(DiagnosticsController *)self diagActionsForSignature:signature];
    [(DiagnosticsController *)self raiseLoggingForActions:v10 identifier:uUIDString];
  }
}

- (void)lowerLoggingForDiagnosticCase:(id)case
{
  v11 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  v5 = diagcollectLogHandle(caseCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    caseId = [caseCopy caseId];
    v9 = 138412290;
    v10 = caseId;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "lowerLoggingForDiagnosticCase: %@", &v9, 0xCu);
  }

  caseId2 = [caseCopy caseId];
  uUIDString = [caseId2 UUIDString];

  if ([uUIDString length])
  {
    [(DiagnosticsController *)self lowerLoggingForIdentifier:uUIDString];
  }
}

- (id)diagnosticExtensionsForDiagnosticCase:(id)case enableCommonActions:(id)actions
{
  v79 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  actionsCopy = actions;
  v6 = diagcollectLogHandle(actionsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    caseId = [caseCopy caseId];
    *buf = 138412290;
    *&buf[4] = caseId;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEBUG, "diagnosticExtensionsForDiagnosticCase: %@", buf, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
  signature = [caseCopy signature];
  actionsDict = [(DiagnosticsController *)self actionsDict];
  if ([signature count])
  {
    v9 = [(DiagnosticsController *)self diagActionsForSignature:signature commonActions:actionsCopy];
    v10 = diagcollectLogHandle(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v9 count];
      *buf = 134218242;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "Looking up diagnostic extensions in %ld actions: %@", buf, 0x16u);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v9;
    v54 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (v54)
    {
      v53 = *v67;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v67 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v66 + 1) + 8 * i);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v15 = v13;
            v56 = [actionsDict objectForKeyedSubscript:v15];
            objc_opt_class();
            v16 = objc_opt_isKindOfClass();
            if (v16)
            {
              v17 = v56;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              LOBYTE(v71) = 1;
              oslog = v17;
              v52 = [v17 objectForKeyedSubscript:@"matchFilter"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = v52;
                *&v75 = 0;
                *(&v75 + 1) = &v75;
                v76 = 0x2020000000;
                v77 = 1;
                v62[0] = MEMORY[0x277D85DD0];
                v62[1] = 3221225472;
                v62[2] = __83__DiagnosticsController_diagnosticExtensionsForDiagnosticCase_enableCommonActions___block_invoke;
                v62[3] = &unk_278CF0CB8;
                v63 = signature;
                v64 = buf;
                v65 = &v75;
                [v18 enumerateKeysAndObjectsUsingBlock:v62];
                if ((*(*(&v75 + 1) + 24) & 1) == 0)
                {
                  *(*&buf[8] + 24) = 1;
                }

                _Block_object_dispose(&v75, 8);
              }

              if (*(*&buf[8] + 24))
              {
                v51 = [oslog objectForKeyedSubscript:@"diagExt"];
                objc_opt_class();
                v19 = objc_opt_isKindOfClass();
                if (v19)
                {
                  v20 = v51;
                  v58 = 0u;
                  v59 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v21 = v20;
                  v22 = [v21 countByEnumeratingWithState:&v58 objects:v74 count:16];
                  if (!v22)
                  {
                    goto LABEL_32;
                  }

                  v23 = *v59;
                  while (1)
                  {
                    for (j = 0; j != v22; ++j)
                    {
                      if (*v59 != v23)
                      {
                        objc_enumerationMutation(v21);
                      }

                      v25 = *(*(&v58 + 1) + 8 * j);
                      objc_opt_class();
                      v26 = objc_opt_isKindOfClass();
                      if (v26)
                      {
                        v27 = v25;
                        [v8 addObject:v27];
                      }

                      else
                      {
                        if (!v25)
                        {
                          continue;
                        }

                        v27 = diagcollectLogHandle(v26);
                        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                        {
                          v28 = objc_opt_class();
                          v29 = NSStringFromClass(v28);
                          LODWORD(v75) = 138412290;
                          *(&v75 + 4) = v29;
                          _os_log_impl(&dword_241804000, v27, OS_LOG_TYPE_DEBUG, "Found unexpected class: %@ (expected NSString)", &v75, 0xCu);
                        }
                      }
                    }

                    v22 = [v21 countByEnumeratingWithState:&v58 objects:v74 count:16];
                    if (!v22)
                    {
LABEL_32:

                      goto LABEL_42;
                    }
                  }
                }

                if (v51)
                {
                  v21 = diagcollectLogHandle(v19);
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                  {
                    v34 = objc_opt_class();
                    v35 = NSStringFromClass(v34);
                    LODWORD(v75) = 138412290;
                    *(&v75 + 4) = v35;
                    _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_DEBUG, "Found unexpected class: %@ (expected NSArray)", &v75, 0xCu);
                  }

LABEL_42:
                }
              }

              else
              {
              }

              _Block_object_dispose(buf, 8);
LABEL_45:
            }

            else if (v56)
            {
              oslog = diagcollectLogHandle(v16);
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
              {
                v32 = objc_opt_class();
                v33 = NSStringFromClass(v32);
                *buf = 138412290;
                *&buf[4] = v33;
                _os_log_impl(&dword_241804000, oslog, OS_LOG_TYPE_DEBUG, "Found unexpected class: %@ (expected NSDictionary)", buf, 0xCu);
              }

              goto LABEL_45;
            }

            goto LABEL_47;
          }

          v15 = diagcollectLogHandle(isKindOfClass);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            *buf = 138412290;
            *&buf[4] = v31;
            _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEBUG, "Found unexpected class: %@ (expected NSString)", buf, 0xCu);
          }

LABEL_47:
        }

        v54 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
      }

      while (v54);
    }
  }

  v36 = +[SystemProperties sharedInstance];
  customerSeedBuild = [v36 customerSeedBuild];

  if (customerSeedBuild)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v71 = __Block_byref_object_copy__2;
    v72 = __Block_byref_object_dispose__2;
    v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __83__DiagnosticsController_diagnosticExtensionsForDiagnosticCase_enableCommonActions___block_invoke_192;
    v57[3] = &unk_278CF0CE0;
    v57[4] = buf;
    [v8 enumerateObjectsUsingBlock:v57];
    if ([*(*&buf[8] + 40) count])
    {
      v39 = diagcollectLogHandle([v8 removeObjectsInArray:*(*&buf[8] + 40)]);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = [*(*&buf[8] + 40) count];
        LODWORD(v75) = 134217984;
        *(&v75 + 4) = v40;
        _os_log_impl(&dword_241804000, v39, OS_LOG_TYPE_INFO, "Removed %ld diagnostic extensions that were not privacy approved for CustomerSeed", &v75, 0xCu);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  v41 = diagcollectLogHandle(v38);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = [v8 count];
    *buf = 134218242;
    *&buf[4] = v42;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_241804000, v41, OS_LOG_TYPE_INFO, "Found %ld diagnostic extensions: %@", buf, 0x16u);
  }

  array = [v8 array];

  return array;
}

void __83__DiagnosticsController_diagnosticExtensionsForDiagnosticCase_enableCommonActions___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v10 = v7;
      v11 = v8;
      v12 = [*(a1 + 32) objectForKeyedSubscript:v10];
      v13 = diagcollectLogHandle(v12);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      if (v12)
      {
        if (v14)
        {
          v20 = 138412802;
          v21 = v10;
          v22 = 2112;
          v23 = v12;
          v24 = 2112;
          v25 = v11;
          _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "Found filter key '%@' with value '%@' in signature dictionary. (Expecting to match '%@')", &v20, 0x20u);
        }

        if ([v12 isEqualToString:v11])
        {
          goto LABEL_14;
        }

        v15 = 40;
      }

      else
      {
        if (v14)
        {
          v20 = 138412290;
          v21 = v10;
          _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "Did not find applicable filter key '%@' in signature dictionary. Allowing.", &v20, 0xCu);
        }

        v15 = 48;
      }

      *(*(*(a1 + v15) + 8) + 24) = 0;
      *a4 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  v10 = diagcollectLogHandle(isKindOfClass);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = 138413058;
    v21 = v7;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v19;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Found unexpected class in actions filter dictionary! key: %@ (%@) value: %@ (%@)", &v20, 0x2Au);
  }

LABEL_15:
}

void __83__DiagnosticsController_diagnosticExtensionsForDiagnosticCase_enableCommonActions___block_invoke_192(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isEqualToString:@"com.apple.DiagnosticExtensions.tailspin"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.osx-tailspin") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.DiagnosticExtensions.Microstackshot") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.PowerlogCore.diagnosticextension") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.DiagnosticExtensions.Cellular") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.Search.framework.SpotlightDiagnostic") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.diagnosticextensions.osx.spotlight") & 1) == 0)
  {
    v4 = diagcollectLogHandle([*(*(*(a1 + 32) + 8) + 40) addObject:v3]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_ERROR, "Flagging DiagnosticExtension %@ as not privacy approved for CustomerSeed", &v5, 0xCu);
    }
  }
}

- (unint64_t)collectDiagnosticExtensionFilesForDiagnosticCase:(id)case parameters:(id)parameters options:(id)options queue:(id)queue reply:(id)reply
{
  v81 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  parametersCopy = parameters;
  optionsCopy = options;
  queueCopy = queue;
  replyCopy = reply;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v17 = diagcollectLogHandle(isKindOfClass);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v76 = optionsCopy;
      _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_DEBUG, "Found diagnostic extensions options dictionary: %@", buf, 0xCu);
    }

    v18 = [optionsCopy objectForKeyedSubscript:@"diagextcommon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
      v20 = diagcollectLogHandle(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v76 = v19;
        _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_DEBUG, "Enable common diagnostic extensions: %@", buf, 0xCu);
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = [(DiagnosticsController *)self diagnosticExtensionsForDiagnosticCase:caseCopy enableCommonActions:v19];
  v22 = [v21 count];
  v23 = diagcollectLogHandle(v22);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
  if (v22)
  {
    selfCopy = self;
    v56 = replyCopy;
    v57 = queueCopy;
    if (v24)
    {
      v25 = [v21 count];
      *buf = 134218498;
      v76 = v25;
      v77 = 2112;
      v78 = v21;
      v79 = 2112;
      v80 = parametersCopy;
      _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_DEBUG, "Ready to collect from %ld diagnostic extensions (%@) with parameters: %@", buf, 0x20u);
    }

    v58 = optionsCopy;

    v55 = v21;
    v26 = [MEMORY[0x277CBEB98] setWithArray:v21];
    v53 = [v26 count];
    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __105__DiagnosticsController_collectDiagnosticExtensionFilesForDiagnosticCase_parameters_options_queue_reply___block_invoke;
    v72[3] = &unk_278CF0C68;
    v61 = v27;
    v73 = v61;
    v59 = parametersCopy;
    [parametersCopy enumerateKeysAndObjectsUsingBlock:v72];
    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v29 = v26;
    v30 = [v29 countByEnumeratingWithState:&v68 objects:v74 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v69;
      obj = v29;
      do
      {
        v33 = 0;
        do
        {
          if (*v69 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v68 + 1) + 8 * v33);
          v35 = diagcollectLogHandle(v30);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v76 = v34;
            _os_log_impl(&dword_241804000, v35, OS_LOG_TYPE_DEBUG, "Will call Diag Extension: %@", buf, 0xCu);
          }

          v36 = [v61 objectForKeyedSubscript:v34];
          objc_opt_class();
          v37 = objc_opt_isKindOfClass();
          if (v37)
          {
            dictionary = [v36 mutableCopy];
          }

          else
          {
            if (v36)
            {
              v39 = diagcollectLogHandle(v37);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v40 = objc_opt_class();
                v41 = NSStringFromClass(v40);
                *buf = 138412546;
                v76 = v41;
                v77 = 2112;
                v78 = v36;
                _os_log_impl(&dword_241804000, v39, OS_LOG_TYPE_ERROR, "Expected NSDictionary, but found unexpected class %@ as a DE parameter: %@", buf, 0x16u);
              }
            }

            dictionary = [MEMORY[0x277CBEB38] dictionary];
          }

          v42 = dictionary;

          [v42 setObject:@"com.apple.symptomsd" forKeyedSubscript:@"DEExtensionHostAppKey"];
          if (([v34 isEqualToString:@"com.apple.DiagnosticExtensions.WiFi"] & 1) != 0 || objc_msgSend(v34, "isEqualToString:", @"com.apple.diagnosticextensions.osx.wifi"))
          {
            signature = [caseCopy signature];
            v44 = [signature objectForKeyedSubscript:@"subtype"];

            [v42 setObject:v44 forKeyedSubscript:@"trigger"];
          }

          if ([v42 count])
          {
            [v28 setValue:v42 forKey:v34];
          }

          else
          {
            null = [MEMORY[0x277CBEB68] null];
            [v28 setValue:null forKey:v34];
          }

          [caseCopy addRequiredAttachmentType:@"diagext" pattern:v34];

          ++v33;
        }

        while (v31 != v33);
        v29 = obj;
        v30 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
        v31 = v30;
      }

      while (v30);
    }

    diagExtensionCollector = [(DiagnosticsController *)selfCopy diagExtensionCollector];
    caseId = [caseCopy caseId];
    uUIDString = [caseId UUIDString];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __105__DiagnosticsController_collectDiagnosticExtensionFilesForDiagnosticCase_parameters_options_queue_reply___block_invoke_226;
    v65[3] = &unk_278CF0D08;
    replyCopy = v56;
    v67 = v56;
    queueCopy = v57;
    v66 = v57;
    [diagExtensionCollector collectDEPayloadsWithIdentifier:uUIDString diagnosticExtensionsWithParameters:v28 queue:v66 reply:v65];

    optionsCopy = v58;
    parametersCopy = v59;
    v21 = v55;
    v49 = v53;
  }

  else
  {
    if (v24)
    {
      caseId2 = [caseCopy caseId];
      uUIDString2 = [caseId2 UUIDString];
      *buf = 138412290;
      v76 = uUIDString2;
      _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_DEBUG, "No matching diagnostic extensions found for the case ID %@", buf, 0xCu);
    }

    if (!replyCopy)
    {
      v49 = 0;
      goto LABEL_42;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__DiagnosticsController_collectDiagnosticExtensionFilesForDiagnosticCase_parameters_options_queue_reply___block_invoke_229;
    block[3] = &unk_278CF0A58;
    v64 = replyCopy;
    dispatch_async(queueCopy, block);
    v49 = 0;
    v29 = v64;
  }

LABEL_42:
  return v49;
}

void __105__DiagnosticsController_collectDiagnosticExtensionFilesForDiagnosticCase_parameters_options_queue_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  else
  {
    v8 = diagcollectLogHandle(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138413058;
      v14 = v5;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "Dropping unexpected content from DE parameters. key (%@): %@, value (%@): %@", &v13, 0x2Au);
    }
  }
}

void __105__DiagnosticsController_collectDiagnosticExtensionFilesForDiagnosticCase_parameters_options_queue_reply___block_invoke_226(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = diagcollectLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "Collecting Diagnostic Extension payloads failed with error: %@", buf, 0xCu);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __105__DiagnosticsController_collectDiagnosticExtensionFilesForDiagnosticCase_parameters_options_queue_reply___block_invoke_227;
    v11[3] = &unk_278CEFF50;
    v13 = v9;
    v12 = v5;
    dispatch_async(v10, v11);
  }
}

@end