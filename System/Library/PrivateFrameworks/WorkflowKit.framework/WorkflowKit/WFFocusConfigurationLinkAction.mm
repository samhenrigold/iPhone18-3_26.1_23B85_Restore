@interface WFFocusConfigurationLinkAction
+ (id)genericRuntimeError;
- (BOOL)isRunningInsideFocusConfigurationExtension;
- (BOOL)requiresRemoteExecution;
- (DNDModeConfigurationService)configurationService;
- (id)currentFocusConfiguration;
- (id)disabledOnPlatforms;
- (id)dndApplicationIdentifier;
- (id)localizedAppName;
- (id)localizedCategoryWithContext:(id)context;
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (id)parameterDefinitions;
- (id)parameterSummary;
- (id)selectedFocusIdentifier;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)clearFocusConfiguration;
- (void)createAndCommitFocusConfigurationToDND;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)setFocusConfigurationEnablementStatus:(BOOL)status;
- (void)toggleFocusConfiguration;
- (void)updateParameterStatesFromCurrentDNDConfiguration;
- (void)wasAddedToWorkflowByUser:(id)user;
@end

@implementation WFFocusConfigurationLinkAction

- (BOOL)requiresRemoteExecution
{
  v3.receiver = self;
  v3.super_class = WFFocusConfigurationLinkAction;
  return [(WFAction *)&v3 requiresRemoteExecution];
}

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  nameCopy = name;
  appDescriptor = [(WFAppIntentExecutionAction *)self appDescriptor];
  localizedName = [appDescriptor localizedName];

  v9 = MEMORY[0x1E696AEC0];
  if (localizedName)
  {
    v10 = WFLocalizedString(@"Allow “%1$@” to change your Focus Filter settings for “%2$@”?");
    [v9 localizedStringWithFormat:v10, nameCopy, localizedName];
  }

  else
  {
    v10 = WFLocalizedString(@"Allow “%1$@” to change your Focus Filter settings?");
    [v9 localizedStringWithFormat:v10, nameCopy, v13];
  }
  v11 = ;

  return v11;
}

- (BOOL)isRunningInsideFocusConfigurationExtension
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (objc_msgSend_isEqualToString_(bundleIdentifier))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(bundleIdentifier);
  }

  return isEqualToString;
}

- (void)wasAddedToWorkflowByUser:(id)user
{
  v5.receiver = self;
  v5.super_class = WFFocusConfigurationLinkAction;
  [(WFAction *)&v5 wasAddedToWorkflowByUser:?];
  if (user)
  {
    [(WFFocusConfigurationLinkAction *)self updateParameterStatesFromCurrentDNDConfiguration];
  }
}

- (void)updateParameterStatesFromCurrentDNDConfiguration
{
  v51 = *MEMORY[0x1E69E9840];
  currentFocusConfiguration = [(WFFocusConfigurationLinkAction *)self currentFocusConfiguration];
  action = [currentFocusConfiguration action];

  v36 = action;
  parameters = [action parameters];
  v6 = [parameters count];

  if (v6)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    metadata = [(WFAppIntentExecutionAction *)self metadata];
    parameters2 = [metadata parameters];

    v9 = [parameters2 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v38;
      *&v10 = 136315394;
      v35 = v10;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(parameters2);
          }

          v14 = *(*(&v37 + 1) + 8 * i);
          valueType = [v14 valueType];
          v16 = [valueType wf_parameterDefinitionWithParameterMetadata:v14];

          if (v16)
          {
            parameters3 = [v36 parameters];
            name = [v14 name];
            v19 = [parameters3 if_firstObjectWithValue:name forKey:@"identifier"];

            if (v19)
            {
              value = [v19 value];
              v21 = [v16 parameterStateFromLinkValue:value];

              if (v21)
              {
                name2 = [v14 name];
                [(WFLinkAction *)self setParameterState:v21 forKey:name2];
              }

              else
              {
                name2 = getWFAppIntentsLogObject();
                if (os_log_type_enabled(name2, OS_LOG_TYPE_ERROR))
                {
                  *buf = v35;
                  v47 = "[WFFocusConfigurationLinkAction updateParameterStatesFromCurrentDNDConfiguration]";
                  v48 = 2112;
                  v49 = v16;
                  _os_log_impl(&dword_1CA256000, name2, OS_LOG_TYPE_ERROR, "%s Could not create parameter state from parameter definition %@.", buf, 0x16u);
                }
              }
            }

            else
            {
              v21 = getWFAppIntentsLogObject();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                name3 = [v14 name];
                *buf = v35;
                v47 = "[WFFocusConfigurationLinkAction updateParameterStatesFromCurrentDNDConfiguration]";
                v48 = 2112;
                v49 = name3;
                _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_ERROR, "%s Could not find a property with identifier %@ in the DND LNAction, it will be ignored.", buf, 0x16u);
              }
            }
          }

          else
          {
            v19 = getWFAppIntentsLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              name4 = [v14 name];
              *buf = v35;
              v47 = "[WFFocusConfigurationLinkAction updateParameterStatesFromCurrentDNDConfiguration]";
              v48 = 2112;
              v49 = name4;
              _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Failed to create parameter definition for %@, it will be ignored.", buf, 0x16u);
            }
          }
        }

        v11 = [parameters2 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v25 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v47 = "[WFFocusConfigurationLinkAction updateParameterStatesFromCurrentDNDConfiguration]";
      _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_INFO, "%s No parameters to configure, will clear parameter states.", buf, 0xCu);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    metadata2 = [(WFAppIntentExecutionAction *)self metadata];
    parameters2 = [metadata2 parameters];

    v27 = [parameters2 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v42;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(parameters2);
          }

          v31 = *(*(&v41 + 1) + 8 * j);
          v32 = getWFAppIntentsLogObject();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            name5 = [v31 name];
            *buf = 136315394;
            v47 = "[WFFocusConfigurationLinkAction updateParameterStatesFromCurrentDNDConfiguration]";
            v48 = 2112;
            v49 = name5;
            _os_log_impl(&dword_1CA256000, v32, OS_LOG_TYPE_DEBUG, "%s Clearing parameter state for %@", buf, 0x16u);
          }

          name6 = [v31 name];
          [(WFLinkAction *)self setParameterState:0 forKey:name6];
        }

        v28 = [parameters2 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v28);
    }
  }
}

- (void)clearFocusConfiguration
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    selectedFocusIdentifier = [(WFFocusConfigurationLinkAction *)self selectedFocusIdentifier];
    *buf = 136315394;
    v15 = "[WFFocusConfigurationLinkAction clearFocusConfiguration]";
    v16 = 2112;
    v17 = selectedFocusIdentifier;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEBUG, "%s Clearing Focus Filter configuration from focus with identifier %@", buf, 0x16u);
  }

  configurationService = [(WFFocusConfigurationLinkAction *)self configurationService];
  metadata = [(WFAppIntentExecutionAction *)self metadata];
  identifier = [metadata identifier];
  dndApplicationIdentifier = [(WFFocusConfigurationLinkAction *)self dndApplicationIdentifier];
  selectedFocusIdentifier2 = [(WFFocusConfigurationLinkAction *)self selectedFocusIdentifier];
  v13 = 0;
  [configurationService clearAppActionWithIdentifier:identifier forApplicationIdentifier:dndApplicationIdentifier modeIdentifier:selectedFocusIdentifier2 error:&v13];
  v10 = v13;

  [(WFFocusConfigurationLinkAction *)self updateParameterStatesFromCurrentDNDConfiguration];
  if (v10)
  {
    v11 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[WFFocusConfigurationLinkAction clearFocusConfiguration]";
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Error clearing DNDAppAction: %@", buf, 0x16u);
    }

    genericRuntimeError = [objc_opt_class() genericRuntimeError];
    [(WFAppIntentExecutionAction *)self finishRunningWithError:genericRuntimeError];
  }

  else
  {
    [(WFAppIntentExecutionAction *)self finishRunningWithError:0];
  }
}

- (void)toggleFocusConfiguration
{
  currentFocusConfiguration = [(WFFocusConfigurationLinkAction *)self currentFocusConfiguration];
  -[WFFocusConfigurationLinkAction setFocusConfigurationEnablementStatus:](self, "setFocusConfigurationEnablementStatus:", [currentFocusConfiguration isEnabled] ^ 1);
}

- (void)setFocusConfigurationEnablementStatus:(BOOL)status
{
  statusCopy = status;
  v25 = *MEMORY[0x1E69E9840];
  currentFocusConfiguration = [(WFFocusConfigurationLinkAction *)self currentFocusConfiguration];
  v6 = currentFocusConfiguration;
  if (!currentFocusConfiguration)
  {
    v9 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "[WFFocusConfigurationLinkAction setFocusConfigurationEnablementStatus:]";
      v17 = "%s Could not find a current configuration, won't update status.";
      v18 = v9;
      v19 = 12;
LABEL_13:
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_INFO, v17, buf, v19);
    }

LABEL_14:

    [(WFAppIntentExecutionAction *)self finishRunningWithError:0];
    goto LABEL_17;
  }

  isEnabled = [currentFocusConfiguration isEnabled];
  v8 = getWFAppIntentsLogObject();
  v9 = v8;
  if (isEnabled == statusCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[WFFocusConfigurationLinkAction setFocusConfigurationEnablementStatus:]";
      v23 = 1024;
      LODWORD(v24) = statusCopy;
      v17 = "%s Won't update status because it is already set to %d";
      v18 = v9;
      v19 = 18;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "[WFFocusConfigurationLinkAction setFocusConfigurationEnablementStatus:]";
    v23 = 1024;
    LODWORD(v24) = statusCopy;
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEBUG, "%s Setting Focus Filter status to %d", buf, 0x12u);
  }

  v10 = [v6 mutableCopy];
  [v10 setEnabled:statusCopy];
  configurationService = [(WFFocusConfigurationLinkAction *)self configurationService];
  dndApplicationIdentifier = [(WFFocusConfigurationLinkAction *)self dndApplicationIdentifier];
  selectedFocusIdentifier = [(WFFocusConfigurationLinkAction *)self selectedFocusIdentifier];
  v20 = 0;
  [configurationService setAppAction:v10 forApplicationIdentifier:dndApplicationIdentifier modeIdentifier:selectedFocusIdentifier error:&v20];
  v14 = v20;

  if (v14)
  {
    v15 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[WFFocusConfigurationLinkAction setFocusConfigurationEnablementStatus:]";
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s Error committing DNDAppAction enablement status: %@", buf, 0x16u);
    }

    genericRuntimeError = [objc_opt_class() genericRuntimeError];
    [(WFAppIntentExecutionAction *)self finishRunningWithError:genericRuntimeError];
  }

  else
  {
    [(WFAppIntentExecutionAction *)self finishRunningWithError:0];
  }

LABEL_17:
}

- (id)currentFocusConfiguration
{
  v22 = *MEMORY[0x1E69E9840];
  configurationService = [(WFFocusConfigurationLinkAction *)self configurationService];
  selectedFocusIdentifier = [(WFFocusConfigurationLinkAction *)self selectedFocusIdentifier];
  v17 = 0;
  v5 = [configurationService getAppActionsForModeIdentifier:selectedFocusIdentifier error:&v17];
  v6 = v17;
  dndApplicationIdentifier = [(WFFocusConfigurationLinkAction *)self dndApplicationIdentifier];
  v8 = [v5 objectForKey:dndApplicationIdentifier];

  if (v6)
  {
    v9 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[WFFocusConfigurationLinkAction currentFocusConfiguration]";
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Error fetching current focus configuration: %@", buf, 0x16u);
    }
  }

  if ([v8 count])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__WFFocusConfigurationLinkAction_currentFocusConfiguration__block_invoke;
    v16[3] = &unk_1E837B450;
    v16[4] = self;
    v10 = [v8 objectsPassingTest:v16];
    anyObject = [v10 anyObject];
  }

  else
  {
    v12 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      appDescriptor = [(WFAppIntentExecutionAction *)self appDescriptor];
      bundleIdentifier = [appDescriptor bundleIdentifier];
      *buf = 136315394;
      v19 = "[WFFocusConfigurationLinkAction currentFocusConfiguration]";
      v20 = 2112;
      v21 = bundleIdentifier;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s No Focus configurations were found for %@", buf, 0x16u);
    }

    anyObject = 0;
  }

  return anyObject;
}

uint64_t __59__WFFocusConfigurationLinkAction_currentFocusConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) metadata];
  v5 = [v4 identifier];
  isEqualToString = objc_msgSend_isEqualToString_(v3);

  return isEqualToString;
}

- (void)createAndCommitFocusConfigurationToDND
{
  v10 = *MEMORY[0x1E69E9840];
  processedParameters = [(WFAction *)self processedParameters];
  v4 = processedParameters;
  if (processedParameters)
  {
    genericRuntimeError = [processedParameters mutableCopy];
    [genericRuntimeError removeObjectForKey:@"Mode"];
    [genericRuntimeError removeObjectForKey:@"FocusMode"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__WFFocusConfigurationLinkAction_createAndCommitFocusConfigurationToDND__block_invoke;
    v7[3] = &unk_1E837B428;
    v7[4] = self;
    [(WFAppIntentExecutionAction *)self getLinkActionWithProcessedParameters:genericRuntimeError completionHandler:v7];
  }

  else
  {
    v6 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v9 = "[WFFocusConfigurationLinkAction createAndCommitFocusConfigurationToDND]";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_FAULT, "%s Could not get processedParameters.", buf, 0xCu);
    }

    genericRuntimeError = [objc_opt_class() genericRuntimeError];
    [(WFAppIntentExecutionAction *)self finishRunningWithError:genericRuntimeError];
  }
}

void __72__WFFocusConfigurationLinkAction_createAndCommitFocusConfigurationToDND__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = getWFAppIntentsLogObject();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[WFFocusConfigurationLinkAction createAndCommitFocusConfigurationToDND]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEBUG, "%s Will send configured LNAction to DNDModeConfigurationService: %@", buf, 0x16u);
    }

    v9 = [*(a1 + 32) currentFocusConfiguration];
    v10 = getWFAppIntentsLogObject();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      if (v11)
      {
        *buf = 136315138;
        *&buf[4] = "[WFFocusConfigurationLinkAction createAndCommitFocusConfigurationToDND]_block_invoke";
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEBUG, "%s Updating a pre-existing DNDAppAction", buf, 0xCu);
      }

      v12 = [v9 mutableCopy];
      [v12 setAction:v5];
    }

    else
    {
      if (v11)
      {
        *buf = 136315138;
        *&buf[4] = "[WFFocusConfigurationLinkAction createAndCommitFocusConfigurationToDND]_block_invoke";
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEBUG, "%s Creating a new DNDAppAction", buf, 0xCu);
      }

      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v13 = getDNDAppActionClass_softClass;
      v26 = getDNDAppActionClass_softClass;
      if (!getDNDAppActionClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getDNDAppActionClass_block_invoke;
        v28 = &unk_1E837FAC0;
        v29 = &v23;
        __getDNDAppActionClass_block_invoke(buf);
        v13 = v24[3];
      }

      v14 = v13;
      _Block_object_dispose(&v23, 8);
      v12 = [[v13 alloc] initWithAction:v5 enabled:1];
    }

    v15 = [*(a1 + 32) configurationService];
    v16 = [*(a1 + 32) dndApplicationIdentifier];
    v17 = [*(a1 + 32) selectedFocusIdentifier];
    v22 = 0;
    [v15 setAppAction:v12 forApplicationIdentifier:v16 modeIdentifier:v17 error:&v22];
    v18 = v22;

    if (v18)
    {
      v19 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[WFFocusConfigurationLinkAction createAndCommitFocusConfigurationToDND]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Error committing DNDAppAction: %@", buf, 0x16u);
      }

      v20 = *(a1 + 32);
      v21 = [objc_opt_class() genericRuntimeError];
      [v20 finishRunningWithError:v21];
    }

    else
    {
      [*(a1 + 32) finishRunningWithError:0];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[WFFocusConfigurationLinkAction createAndCommitFocusConfigurationToDND]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Could not get LNAction with error: %@", buf, 0x16u);
    }

    [*(a1 + 32) finishRunningWithError:v6];
  }
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [(WFAction *)self parameterValueForKey:@"Mode" ofClass:objc_opt_class()];
  if (objc_msgSend_isEqualToString_(v4))
  {
    [(WFFocusConfigurationLinkAction *)self createAndCommitFocusConfigurationToDND];
  }

  else if (objc_msgSend_isEqualToString_(v4))
  {
    [(WFFocusConfigurationLinkAction *)self enableFocusConfiguration];
  }

  else if (objc_msgSend_isEqualToString_(v4))
  {
    [(WFFocusConfigurationLinkAction *)self disableFocusConfiguration];
  }

  else if (objc_msgSend_isEqualToString_(v4))
  {
    [(WFFocusConfigurationLinkAction *)self toggleFocusConfiguration];
  }

  else if (objc_msgSend_isEqualToString_(v4))
  {
    [(WFFocusConfigurationLinkAction *)self clearFocusConfiguration];
  }

  else
  {
    v5 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "[WFFocusConfigurationLinkAction runAsynchronouslyWithInput:]";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Programming error: Unexpected action mode.", &v7, 0xCu);
    }

    genericRuntimeError = [objc_opt_class() genericRuntimeError];
    [(WFAppIntentExecutionAction *)self finishRunningWithError:genericRuntimeError];
  }
}

- (DNDModeConfigurationService)configurationService
{
  v18 = *MEMORY[0x1E69E9840];
  configurationService = self->_configurationService;
  if (!configurationService)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getDNDModeConfigurationServiceClass_softClass;
    v13 = getDNDModeConfigurationServiceClass_softClass;
    if (!getDNDModeConfigurationServiceClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v15 = __getDNDModeConfigurationServiceClass_block_invoke;
      v16 = &unk_1E837FAC0;
      v17 = &v10;
      __getDNDModeConfigurationServiceClass_block_invoke(&buf);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [v4 serviceForClientIdentifier:{@"com.apple.focus.activity-manager", v10}];
    v7 = self->_configurationService;
    self->_configurationService = v6;

    configurationService = self->_configurationService;
    if (!configurationService)
    {
      v8 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[WFFocusConfigurationLinkAction configurationService]";
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Could not obtain a DNDModeConfigurationService instance.", &buf, 0xCu);
      }

      configurationService = self->_configurationService;
    }
  }

  return configurationService;
}

- (id)dndApplicationIdentifier
{
  v18 = *MEMORY[0x1E69E9840];
  appDescriptor = [(WFAppIntentExecutionAction *)self appDescriptor];
  bundleIdentifier = [appDescriptor bundleIdentifier];

  if (!bundleIdentifier)
  {
    v4 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[WFFocusConfigurationLinkAction dndApplicationIdentifier]";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_FAULT, "%s Could not get bundle identifier for action owner.", &buf, 0xCu);
    }
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = getDNDApplicationIdentifierClass_softClass;
  v13 = getDNDApplicationIdentifierClass_softClass;
  if (!getDNDApplicationIdentifierClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v15 = __getDNDApplicationIdentifierClass_block_invoke;
    v16 = &unk_1E837FAC0;
    v17 = &v10;
    __getDNDApplicationIdentifierClass_block_invoke(&buf);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [v5 alloc];
  v8 = [v7 initWithBundleID:{bundleIdentifier, v10}];

  return v8;
}

- (id)selectedFocusIdentifier
{
  v2 = [(WFAction *)self parameterValueForKey:@"FocusMode" ofClass:objc_opt_class()];
  identifier = [v2 identifier];
  v4 = identifier;
  if (!identifier)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v5 = getDNDDefaultModeIdentifierSymbolLoc_ptr;
    v14 = getDNDDefaultModeIdentifierSymbolLoc_ptr;
    if (!getDNDDefaultModeIdentifierSymbolLoc_ptr)
    {
      v6 = DoNotDisturbLibrary();
      v12[3] = dlsym(v6, "DNDDefaultModeIdentifier");
      getDNDDefaultModeIdentifierSymbolLoc_ptr = v12[3];
      v5 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getDNDDefaultModeIdentifier(void)"];
      [currentHandler handleFailureInFunction:v10 file:@"WFFocusConfigurationLinkAction.m" lineNumber:29 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v4 = *v5;
  }

  v7 = v4;

  return v7;
}

- (id)parameterDefinitions
{
  v33[6] = *MEMORY[0x1E69E9840];
  if ([(WFFocusConfigurationLinkAction *)self isRunningInsideFocusConfigurationExtension])
  {
    v26.receiver = self;
    v26.super_class = WFFocusConfigurationLinkAction;
    parameterDefinitions = [(WFLinkAction *)&v26 parameterDefinitions];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = WFFocusConfigurationLinkAction;
    parameterDefinitions2 = [(WFLinkAction *)&v25 parameterDefinitions];
    v24 = [parameterDefinitions2 if_compactMap:&__block_literal_global_49802];

    v5 = [WFParameterDefinition alloc];
    v32[0] = @"Class";
    v6 = objc_opt_class();
    v23 = NSStringFromClass(v6);
    v33[0] = v23;
    v33[1] = @"Set";
    v32[1] = @"DefaultValue";
    v32[2] = @"Items";
    v31[0] = @"Set";
    v31[1] = @"Turn On";
    v31[2] = @"Turn Off";
    v31[3] = @"Toggle";
    v31[4] = @"Clear";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:5];
    v33[2] = v7;
    v32[3] = @"ItemDisplayNames";
    v8 = WFLocalizedStringResourceWithKey(@"Set", @"Set");
    v30[0] = v8;
    v9 = WFLocalizedStringResourceWithKey(@"Turn On", @"Turn On");
    v30[1] = v9;
    v10 = WFLocalizedStringResourceWithKey(@"Turn Off", @"Turn Off");
    v30[2] = v10;
    v11 = WFLocalizedStringResourceWithKey(@"Toggle", @"Toggle");
    v30[3] = v11;
    v12 = WFLocalizedStringResourceWithKey(@"Clear", @"Clear");
    v30[4] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:5];
    v33[3] = v13;
    v33[4] = @"Mode";
    v32[4] = @"Key";
    v32[5] = @"Label";
    v14 = WFLocalizedStringResourceWithKey(@"Mode", @"Mode");
    v33[5] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:6];
    v16 = [(WFParameterDefinition *)v5 initWithDictionary:v15];

    v17 = [WFParameterDefinition alloc];
    v28[0] = @"Class";
    v28[1] = @"Key";
    v29[0] = @"WFFocusModesPickerParameter";
    v29[1] = @"FocusMode";
    v28[2] = @"Label";
    v18 = WFLocalizedStringResourceWithKey(@"Focus", @"Focus");
    v29[2] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
    v20 = [(WFParameterDefinition *)v17 initWithDictionary:v19];

    v27[0] = v16;
    v27[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    parameterDefinitions = [v21 arrayByAddingObjectsFromArray:v24];
  }

  return parameterDefinitions;
}

id __54__WFFocusConfigurationLinkAction_parameterDefinitions__block_invoke(uint64_t a1, void *a2)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 objectForKey:@"Key"];
  if (objc_msgSend_isEqualToString_(v3) & 1) != 0 || (objc_msgSend_isEqualToString_(v3))
  {
    v4 = 0;
  }

  else
  {
    v18[0] = @"WFParameterKey";
    v18[1] = @"WFParameterValue";
    v19[0] = @"Mode";
    v19[1] = @"Set";
    v18[2] = @"WFResourceClass";
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v19[2] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

    v8 = [v2 objectForKey:@"RequiredResources"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
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

    v10 = v9;

    v11 = [v10 mutableCopy];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = [MEMORY[0x1E695DF70] array];
    }

    v13 = v12;

    [v13 addObject:v7];
    v16 = @"RequiredResources";
    v17 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v4 = [v2 definitionByAddingEntriesInDictionary:v14];
  }

  return v4;
}

- (id)parameterSummary
{
  v3 = [WFActionParameterSummary alloc];
  v4 = MEMORY[0x1E696AEC0];
  v5 = WFLocalizedString(@"${Mode} %@ Focus Filter while in ${FocusMode}");
  localizedAppName = [(WFFocusConfigurationLinkAction *)self localizedAppName];
  v7 = [v4 localizedStringWithFormat:v5, localizedAppName];
  v8 = [(WFActionParameterSummary *)v3 initWithLocalizedString:v7];

  return v8;
}

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Focus (action category)", @"Focus");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  v4 = MEMORY[0x1E696AEC0];
  contextCopy = context;
  v6 = WFLocalizedStringResourceWithKey(@"Sets the behavior of the %@ app when the given Focus is enabled.", @"Sets the behavior of the %@ app when the given Focus is enabled.");
  v7 = [contextCopy localize:v6];

  localizedAppName = [(WFFocusConfigurationLinkAction *)self localizedAppName];
  v9 = [v4 localizedStringWithFormat:v7, localizedAppName];

  return v9;
}

- (id)localizedNameWithContext:(id)context
{
  v4 = MEMORY[0x1E696AEC0];
  contextCopy = context;
  v6 = WFLocalizedStringResourceWithKey(@"Set %@ Focus Filter", @"Set %@ Focus Filter");
  v7 = [contextCopy localize:v6];

  localizedAppName = [(WFFocusConfigurationLinkAction *)self localizedAppName];
  v9 = [v4 localizedStringWithFormat:v7, localizedAppName];

  return v9;
}

- (id)localizedAppName
{
  appDescriptor = [(WFAppIntentExecutionAction *)self appDescriptor];
  localizedName = [appDescriptor localizedName];

  return localizedName;
}

- (id)disabledOnPlatforms
{
  v4.receiver = self;
  v4.super_class = WFFocusConfigurationLinkAction;
  disabledOnPlatforms = [(WFAction *)&v4 disabledOnPlatforms];

  return disabledOnPlatforms;
}

+ (id)genericRuntimeError
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v3 = WFLocalizedString(@"An error occurred while configuring the Focus Filter.");
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:@"WFFocusConfigurationLinkActionErrorDomain" code:1 userInfo:v4];

  return v5;
}

@end