@interface WFLocationParameterMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFLocationParameterMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"900"))
  {
    if (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.gettraveltime", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.weather.currentconditions", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.weather.forecast", migrationCopy))
    {
      HasActionsWithIdentifier = 1;
    }

    else
    {
      HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.getdistance", migrationCopy);
    }
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  actions = [(WFWorkflowMigration *)self actions];
  v4 = [actions countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(actions);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKeyedSubscript:actionIdentifierKey];

        if (objc_msgSend_isEqualToString_(v10))
        {
LABEL_7:
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v8 objectForKeyedSubscript:actionParametersKey];

          v13 = [v12 wf_popObjectForKey:@"WFGetDirectionsFrom"];
          if ([v13 isEqual:@"Current Location"])
          {
            initWithCurrentLocation = [[WFLocationValue alloc] initWithCurrentLocation];
            serializedRepresentation = [(WFLocationValue *)initWithCurrentLocation serializedRepresentation];
            v16 = v12;
            v17 = serializedRepresentation;
            v18 = @"WFGetDirectionsCustomLocation";
            goto LABEL_13;
          }

          goto LABEL_14;
        }

        if ((objc_msgSend_isEqualToString_(v10) & 1) != 0 || objc_msgSend_isEqualToString_(v10))
        {
          actionParametersKey2 = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v8 objectForKeyedSubscript:actionParametersKey2];

          v13 = [v12 wf_popObjectForKey:@"WFWeatherLocation"];
          if ([v13 isEqual:@"Current Location"])
          {
            initWithCurrentLocation = [[WFLocationValue alloc] initWithCurrentLocation];
            serializedRepresentation = [(WFLocationValue *)initWithCurrentLocation serializedRepresentation];
            v16 = v12;
            v17 = serializedRepresentation;
            v18 = @"WFWeatherCustomLocation";
LABEL_13:
            [v16 setValue:v17 forKey:v18];
          }

LABEL_14:

          goto LABEL_15;
        }

        if (objc_msgSend_isEqualToString_(v10))
        {
          goto LABEL_7;
        }

LABEL_15:

        ++v7;
      }

      while (v5 != v7);
      v20 = [actions countByEnumeratingWithState:&v21 objects:v25 count:16];
      v5 = v20;
    }

    while (v20);
  }

  [(WFWorkflowMigration *)self finish];
}

@end