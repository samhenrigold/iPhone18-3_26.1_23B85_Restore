@interface ATXModeConfigurationUIFlowLogging
- (ATXModeConfigurationUIFlowLogging)init;
- (ATXModeConfigurationUIFlowLogging)initWithModeConfigurationUIFlowLoggingBiomeStream:(id)stream;
- (void)logModeConfigurationChangesForModeUUID:(id)d modeConfigurationUI:(int)i modeConfigurationEntityType:(int)type modeConfigurationType:(int64_t)configurationType previousEntityIdentifiers:(id)identifiers suggestedEntityIdentifiers:(id)entityIdentifiers candidateEntityIdentifiers:(id)candidateEntityIdentifiers currentEntityIdentifiers:(id)self0;
- (void)logModeConfigurationChangesOnboardingDismissedForModeUUID:(id)d;
@end

@implementation ATXModeConfigurationUIFlowLogging

- (ATXModeConfigurationUIFlowLogging)initWithModeConfigurationUIFlowLoggingBiomeStream:(id)stream
{
  streamCopy = stream;
  v12.receiver = self;
  v12.super_class = ATXModeConfigurationUIFlowLogging;
  v6 = [(ATXModeConfigurationUIFlowLogging *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modeConfigurationUIFlowLoggingBiomeStream, stream);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("ATXModeConfigurationUIFlowLogging.queue", v8);
    queue = v7->_queue;
    v7->_queue = v9;
  }

  return v7;
}

- (ATXModeConfigurationUIFlowLogging)init
{
  v3 = objc_opt_new();
  v4 = [(ATXModeConfigurationUIFlowLogging *)self initWithModeConfigurationUIFlowLoggingBiomeStream:v3];

  return v4;
}

- (void)logModeConfigurationChangesForModeUUID:(id)d modeConfigurationUI:(int)i modeConfigurationEntityType:(int)type modeConfigurationType:(int64_t)configurationType previousEntityIdentifiers:(id)identifiers suggestedEntityIdentifiers:(id)entityIdentifiers candidateEntityIdentifiers:(id)candidateEntityIdentifiers currentEntityIdentifiers:(id)self0
{
  v37 = *&i;
  v38 = *&type;
  v55 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifiersCopy = identifiers;
  entityIdentifiersCopy = entityIdentifiers;
  candidateEntityIdentifiersCopy = candidateEntityIdentifiers;
  currentEntityIdentifiersCopy = currentEntityIdentifiers;
  v19 = __atxlog_handle_notification_management(currentEntityIdentifiersCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    uUIDString = [dCopy UUIDString];
    if (v37 >= 4)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v37];
    }

    else
    {
      v21 = off_1E80C0E30[v37];
    }

    v22 = v21;
    v35 = dCopy;
    if (v38 >= 3)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v38];
    }

    else
    {
      v23 = off_1E80C0E50[v38];
    }

    NSStringForATXModeConfigurationType(configurationType);
    v25 = v24 = configurationType;
    *buf = 138414082;
    v40 = uUIDString;
    v41 = 2112;
    v42 = v22;
    v43 = 2112;
    v44 = v23;
    v45 = 2112;
    v46 = identifiersCopy;
    v47 = 2112;
    v48 = entityIdentifiersCopy;
    v49 = 2112;
    v50 = candidateEntityIdentifiersCopy;
    v51 = 2112;
    v52 = currentEntityIdentifiersCopy;
    v53 = 2112;
    v54 = v25;
    _os_log_impl(&dword_1BF549000, v19, OS_LOG_TYPE_DEFAULT, "ModeConfigurationUIFlow logging returned from preferences: dndModeUUID: %@ modeConfigurationUI: %@ modeConfigurationEntityType: %@ previousEntityIdentifiers: %@ suggestedEntityIdentifiers: %@ candidateEntityIdentifiers: %@ currentEntityIdentifiers: %@ modeConfigurationType: %@", buf, 0x52u);

    configurationType = v24;
    dCopy = v35;
    self = selfCopy;
  }

  if (entityIdentifiersCopy)
  {
    if (candidateEntityIdentifiersCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v27 = __atxlog_handle_notification_management(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      [ATXModeConfigurationUIFlowLogging logModeConfigurationChangesForModeUUID:modeConfigurationUI:modeConfigurationEntityType:modeConfigurationType:previousEntityIdentifiers:suggestedEntityIdentifiers:candidateEntityIdentifiers:currentEntityIdentifiers:];
    }

    if (candidateEntityIdentifiersCopy)
    {
LABEL_11:
      if (identifiersCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  v28 = __atxlog_handle_notification_management(v26);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
  {
    [ATXModeConfigurationUIFlowLogging logModeConfigurationChangesForModeUUID:modeConfigurationUI:modeConfigurationEntityType:modeConfigurationType:previousEntityIdentifiers:suggestedEntityIdentifiers:candidateEntityIdentifiers:currentEntityIdentifiers:];
  }

  if (identifiersCopy)
  {
LABEL_12:
    if (currentEntityIdentifiersCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_20:
  v29 = __atxlog_handle_notification_management(v26);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    [ATXModeConfigurationUIFlowLogging logModeConfigurationChangesForModeUUID:modeConfigurationUI:modeConfigurationEntityType:modeConfigurationType:previousEntityIdentifiers:suggestedEntityIdentifiers:candidateEntityIdentifiers:currentEntityIdentifiers:];
  }

  if (!currentEntityIdentifiersCopy)
  {
LABEL_23:
    v30 = __atxlog_handle_notification_management(v26);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      [ATXModeConfigurationUIFlowLogging logModeConfigurationChangesForModeUUID:modeConfigurationUI:modeConfigurationEntityType:modeConfigurationType:previousEntityIdentifiers:suggestedEntityIdentifiers:candidateEntityIdentifiers:currentEntityIdentifiers:];
    }
  }

LABEL_26:
  v31 = [ATXModeConfigurationUIFlowLoggingEvent alloc];
  v32 = [MEMORY[0x1E695DF00] now];
  v33 = [(ATXModeConfigurationUIFlowLoggingEvent *)v31 initWithDndModeUUID:dCopy modeConfigurationUI:v37 modeConfigurationEntityType:v38 modeConfigurationType:configurationType suggestedEntityIdentifiers:entityIdentifiersCopy candidateEntityIdentifiers:candidateEntityIdentifiersCopy previousEntityIdentifiers:identifiersCopy currentEntityIdentifiers:currentEntityIdentifiersCopy eventDate:v32];

  source = [(ATXModeConfigurationUIFlowLoggingBiomeStream *)self->_modeConfigurationUIFlowLoggingBiomeStream source];
  [source sendEvent:v33];
}

- (void)logModeConfigurationChangesOnboardingDismissedForModeUUID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__ATXModeConfigurationUIFlowLogging_logModeConfigurationChangesOnboardingDismissedForModeUUID___block_invoke;
  block[3] = &unk_1E80C0C90;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, block);
}

void __95__ATXModeConfigurationUIFlowLogging_logModeConfigurationChangesOnboardingDismissedForModeUUID___block_invoke(uint64_t a1)
{
  v5 = +[ATXDNDModeConfigurationClient sharedInstance];
  v2 = [v5 dndModeForDNDModeWithUUID:*(a1 + 32)];
  v3 = objc_opt_new();
  [v3 setOnboardingOutcome:2];
  [v2 semanticType];
  v4 = DNDModeSemanticTypeToString();
  [v3 setModeSemanticType:v4];

  [v3 sendToCoreAnalytics];
}

@end