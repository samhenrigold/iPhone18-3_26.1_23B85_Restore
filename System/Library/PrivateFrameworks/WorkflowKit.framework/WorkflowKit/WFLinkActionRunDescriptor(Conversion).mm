@interface WFLinkActionRunDescriptor(Conversion)
- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:;
@end

@implementation WFLinkActionRunDescriptor(Conversion)

- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:
{
  v61 = *MEMORY[0x1E69E9840];
  v53 = a4;
  v8 = a5;
  action = [self action];
  identifier = [self identifier];
  selfCopy = self;
  metadata = [self metadata];
  compositeIdentifier = [identifier compositeIdentifier];
  v13 = objc_opt_new();
  shortcutsActionMetadata = [metadata shortcutsActionMetadata];
  dictionaryRepresentation = [shortcutsActionMetadata dictionaryRepresentation];

  v50 = dictionaryRepresentation;
  v51 = action;
  if (dictionaryRepresentation)
  {
    v16 = [dictionaryRepresentation objectForKeyedSubscript:@"IdentifierOverrideKey"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v44 = a3;
      v46 = metadata;
      v47 = identifier;
      v48 = v8;
      v45 = v16;

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      parameters = [action parameters];
      v18 = [parameters countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v57;
        v21 = 0x1E69AC000uLL;
        v52 = parameters;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v57 != v20)
            {
              objc_enumerationMutation(parameters);
            }

            value = [*(*(&v56 + 1) + 8 * i) value];
            v23Value = [value value];

            if (v23Value)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v25 = v21;
                v26 = v13;
                identifier2 = [(WFWorkflow *)v23Value identifier];
                instanceIdentifier = [identifier2 instanceIdentifier];
                v55 = 0;
                v29 = [v53 serializedParametersForAppEntityIdentifier:instanceIdentifier error:&v55];
                v30 = v55;

                if (v30)
                {
                  v8 = v48;
                  (v48)[2](v48, 0, v30);

                  v41 = v45;
                  metadata = v46;
                  compositeIdentifier = v45;
                  v43 = v51;
                  v40 = v52;
                  identifier = v47;
                  v13 = v26;
                  goto LABEL_27;
                }

                v13 = v26;
                if (v29)
                {
                  v31 = [MEMORY[0x1E696ACD0] unarchiveObjectWithData:v29];
                  [v26 addEntriesFromDictionary:v31];
                }

                v21 = v25;
                parameters = v52;
              }
            }
          }

          v19 = [parameters countByEnumeratingWithState:&v56 objects:v60 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      compositeIdentifier = v45;
      identifier = v47;
      v8 = v48;
      action = v51;
      metadata = v46;
      a3 = v44;
    }

    else
    {
    }
  }

  v32 = +[WFActionRegistry sharedRegistry];
  v33 = [v32 createActionWithIdentifier:compositeIdentifier serializedParameters:0 forceLocalActionsOnly:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = WFLinkActionSerializedParametersForWFAction(v33, action, metadata);
    v35 = a3;
    v36 = [v34 mutableCopy];

    v13 = v36;
    a3 = v35;
  }

  v37 = [v33 copyWithSerializedParameters:v13];

  v38 = [WFWorkflow alloc];
  v39 = objc_opt_new();
  v54 = 0;
  v23Value = [(WFWorkflow *)v38 initWithRecord:v39 reference:0 storageProvider:0 migrateIfNecessary:0 environment:a3 error:&v54];
  v40 = v54;

  if (v23Value)
  {
    v41 = v37;
    [(WFWorkflow *)v23Value addAction:v37];
    if ([selfCopy isAutoShortcut])
    {
      [(WFWorkflow *)v23Value setSource:@"ShortcutSourceAppShortcut"];
    }

    name = [selfCopy name];
    [(WFWorkflow *)v23Value setName:name];

    v8[2](v8, v23Value, 0);
  }

  else
  {
    (v8)[2](v8, 0, v40);
    v41 = v37;
  }

  v43 = v51;
LABEL_27:
}

@end