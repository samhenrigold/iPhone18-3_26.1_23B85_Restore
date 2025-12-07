@interface WFSmartPromptConfiguration
- (WFSmartPromptConfiguration)initWithCoder:(id)coder;
- (WFSmartPromptConfiguration)initWithDeletionAuthorizationState:(id)state contentCollection:(id)collection action:(id)action reference:(id)reference source:(id)source;
- (WFSmartPromptConfiguration)initWithOutputContentCollection:(id)collection reference:(id)reference source:(id)source;
- (WFSmartPromptConfiguration)initWithSmartPromptStates:(id)states attributionSet:(id)set previousAttributions:(id)attributions contentItemCache:(id)cache action:(id)action contentDestination:(id)destination reference:(id)reference workflowName:(id)self0 source:(id)self1 isWebpageCoercion:(BOOL)self2;
- (id)authorizationDialogRequestWithAttribution:(id)attribution;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSmartPromptConfiguration

- (void)encodeWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = WFSmartPromptConfiguration;
  coderCopy = coder;
  [(WFWorkflowAuthorizationConfiguration *)&v14 encodeWithCoder:coderCopy];
  v5 = [(WFSmartPromptConfiguration *)self requestType:v14.receiver];
  [coderCopy encodeObject:v5 forKey:@"requestType"];

  requestSource = [(WFSmartPromptConfiguration *)self requestSource];
  [coderCopy encodeObject:requestSource forKey:@"requestSource"];

  smartPromptStates = [(WFSmartPromptConfiguration *)self smartPromptStates];
  [coderCopy encodeObject:smartPromptStates forKey:@"smartPromptStates"];

  deletionAuthorizationState = [(WFSmartPromptConfiguration *)self deletionAuthorizationState];
  [coderCopy encodeObject:deletionAuthorizationState forKey:@"deletionAuthorizationState"];

  workflowReference = [(WFSmartPromptConfiguration *)self workflowReference];
  [coderCopy encodeObject:workflowReference forKey:@"workflowReference"];

  workflowName = [(WFSmartPromptConfiguration *)self workflowName];
  [coderCopy encodeObject:workflowName forKey:@"workflowName"];

  actionUUID = [(WFSmartPromptConfiguration *)self actionUUID];
  [coderCopy encodeObject:actionUUID forKey:@"actionUUID"];

  archivedSourceContentCollection = [(WFSmartPromptConfiguration *)self archivedSourceContentCollection];
  [coderCopy encodeObject:archivedSourceContentCollection forKey:@"archivedSourceContentCollection"];

  localizedPrompt = [(WFSmartPromptConfiguration *)self localizedPrompt];
  [coderCopy encodeObject:localizedPrompt forKey:@"localizedPrompt"];
}

- (WFSmartPromptConfiguration)initWithCoder:(id)coder
{
  v30[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = WFSmartPromptConfiguration;
  v5 = [(WFWorkflowAuthorizationConfiguration *)&v29 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestType"];
    requestType = v5->_requestType;
    v5->_requestType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestSource"];
    requestSource = v5->_requestSource;
    v5->_requestSource = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"archivedSourceContentCollection"];
    archivedSourceContentCollection = v5->_archivedSourceContentCollection;
    v5->_archivedSourceContentCollection = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedPrompt"];
    localizedPrompt = v5->_localizedPrompt;
    v5->_localizedPrompt = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deletionAuthorizationState"];
    deletionAuthorizationState = v5->_deletionAuthorizationState;
    v5->_deletionAuthorizationState = v14;

    v16 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"smartPromptStates"];
    smartPromptStates = v5->_smartPromptStates;
    v5->_smartPromptStates = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workflowReference"];
    workflowReference = v5->_workflowReference;
    v5->_workflowReference = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workflowName"];
    workflowName = v5->_workflowName;
    v5->_workflowName = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionUUID"];
    actionUUID = v5->_actionUUID;
    v5->_actionUUID = v25;

    v27 = v5;
  }

  return v5;
}

- (id)authorizationDialogRequestWithAttribution:(id)attribution
{
  attributionCopy = attribution;
  v5 = [[WFSmartPromptDialogRequest alloc] initWithConfiguration:self attribution:attributionCopy];

  return v5;
}

- (WFSmartPromptConfiguration)initWithOutputContentCollection:(id)collection reference:(id)reference source:(id)source
{
  v33 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  referenceCopy = reference;
  sourceCopy = source;
  v30.receiver = self;
  v30.super_class = WFSmartPromptConfiguration;
  v11 = [(WFWorkflowAuthorizationConfiguration *)&v30 init];
  v12 = v11;
  if (v11)
  {
    requestType = v11->_requestType;
    v11->_requestType = @"SmartPrompt";

    objc_storeStrong(&v12->_requestSource, source);
    deletionAuthorizationState = v12->_deletionAuthorizationState;
    v12->_deletionAuthorizationState = 0;

    objc_storeStrong(&v12->_workflowReference, reference);
    smartPromptStates = v12->_smartPromptStates;
    v12->_smartPromptStates = 0;

    v16 = [WFSmartPromptStringGenerator localizedOutputContentDescriptionWithContentCollection:collectionCopy];
    v17 = MEMORY[0x1E696AEC0];
    v18 = WFLocalizedString(@"Allow “%1$@” to output %2$@?");
    name = [referenceCopy name];
    localizedLowercaseString = [v16 localizedLowercaseString];
    v21 = [v17 localizedStringWithFormat:v18, name, localizedLowercaseString];
    localizedPrompt = v12->_localizedPrompt;
    v12->_localizedPrompt = v21;

    v23 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:collectionCopy];
    archivedSourceContentCollection = v12->_archivedSourceContentCollection;
    v12->_archivedSourceContentCollection = v23;

    if (v12->_archivedSourceContentCollection)
    {
      v25 = [collectionCopy copy];
      cachedSourceContentCollection = v12->_cachedSourceContentCollection;
      v12->_cachedSourceContentCollection = v25;

      v12->_isSpecialRequest = 0;
      v27 = v12;
    }

    else
    {
      v28 = getWFGeneralLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v32 = "[WFSmartPromptConfiguration initWithOutputContentCollection:reference:source:]";
        _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_FAULT, "%s Unable to archive output smart prompt content collection", buf, 0xCu);
      }

      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (WFSmartPromptConfiguration)initWithDeletionAuthorizationState:(id)state contentCollection:(id)collection action:(id)action reference:(id)reference source:(id)source
{
  v49 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  collectionCopy = collection;
  actionCopy = action;
  referenceCopy = reference;
  sourceCopy = source;
  v46.receiver = self;
  v46.super_class = WFSmartPromptConfiguration;
  v18 = [(WFWorkflowAuthorizationConfiguration *)&v46 init];
  v19 = v18;
  if (v18)
  {
    requestType = v18->_requestType;
    v18->_requestType = @"DeletionAuthorization";

    objc_storeStrong(&v19->_requestSource, source);
    uUID = [actionCopy UUID];
    actionUUID = v19->_actionUUID;
    v19->_actionUUID = uUID;

    objc_storeStrong(&v19->_deletionAuthorizationState, state);
    objc_storeStrong(&v19->_workflowReference, reference);
    smartPromptStates = v19->_smartPromptStates;
    v19->_smartPromptStates = 0;

    contentItemClassName = [stateCopy contentItemClassName];
    if ([(NSString *)contentItemClassName length])
    {
      v25 = NSClassFromString(contentItemClassName);
      if (v25)
      {
        v26 = v25;
        v44 = sourceCopy;
        if (objc_opt_respondsToSelector())
        {
          v27 = -[objc_class localizedCountDescriptionWithValue:](v26, "localizedCountDescriptionWithValue:", [collectionCopy numberOfItems]);
        }

        else
        {
          v30 = MEMORY[0x1E696AEC0];
          countDescription = [(objc_class *)v26 countDescription];
          v27 = [v30 localizedStringWithFormat:countDescription, objc_msgSend(collectionCopy, "numberOfItems")];
        }

        v32 = MEMORY[0x1E696AEC0];
        v33 = WFLocalizedString(@"Allow “%1$@” to delete %2$@?");
        v45 = referenceCopy;
        name = [referenceCopy name];
        localizedLowercaseString = [v27 localizedLowercaseString];
        v36 = [v32 localizedStringWithFormat:v33, name, localizedLowercaseString];
        localizedPrompt = v19->_localizedPrompt;
        v19->_localizedPrompt = v36;

        v38 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:collectionCopy];
        archivedSourceContentCollection = v19->_archivedSourceContentCollection;
        v19->_archivedSourceContentCollection = v38;

        if (v19->_archivedSourceContentCollection)
        {
          v40 = [collectionCopy copy];
          cachedSourceContentCollection = v19->_cachedSourceContentCollection;
          v19->_cachedSourceContentCollection = v40;

          v19->_isSpecialRequest = 0;
          v28 = v19;
          sourceCopy = v44;
          referenceCopy = v45;
        }

        else
        {
          v42 = getWFGeneralLogObject();
          sourceCopy = v44;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            v48 = "[WFSmartPromptConfiguration initWithDeletionAuthorizationState:contentCollection:action:reference:source:]";
            _os_log_impl(&dword_1CA256000, v42, OS_LOG_TYPE_FAULT, "%s Unable to archive deletion prompt content collection", buf, 0xCu);
          }

          v28 = 0;
          referenceCopy = v45;
        }

        goto LABEL_19;
      }

      v27 = getWFSecurityLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v48 = "[WFSmartPromptConfiguration initWithDeletionAuthorizationState:contentCollection:action:reference:source:]";
        v29 = "%s Failed to init contentItemClass from name";
        goto LABEL_11;
      }
    }

    else
    {
      v27 = getWFSecurityLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v48 = "[WFSmartPromptConfiguration initWithDeletionAuthorizationState:contentCollection:action:reference:source:]";
        v29 = "%s No contentItemClassName in WFDeletionAuthorizationState";
LABEL_11:
        _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_FAULT, v29, buf, 0xCu);
      }
    }

    v28 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v28 = 0;
LABEL_20:

  return v28;
}

- (WFSmartPromptConfiguration)initWithSmartPromptStates:(id)states attributionSet:(id)set previousAttributions:(id)attributions contentItemCache:(id)cache action:(id)action contentDestination:(id)destination reference:(id)reference workflowName:(id)self0 source:(id)self1 isWebpageCoercion:(BOOL)self2
{
  v64 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  setCopy = set;
  attributionsCopy = attributions;
  cacheCopy = cache;
  actionCopy = action;
  destinationCopy = destination;
  referenceCopy = reference;
  nameCopy = name;
  sourceCopy = source;
  v60.receiver = self;
  v60.super_class = WFSmartPromptConfiguration;
  v23 = [(WFWorkflowAuthorizationConfiguration *)&v60 init];
  v24 = v23;
  if (v23)
  {
    requestType = v23->_requestType;
    v23->_requestType = @"SmartPrompt";

    objc_storeStrong(&v24->_requestSource, source);
    uUID = [actionCopy UUID];
    actionUUID = v24->_actionUUID;
    v24->_actionUUID = uUID;

    objc_storeStrong(&v24->_smartPromptStates, states);
    deletionAuthorizationState = v24->_deletionAuthorizationState;
    v24->_deletionAuthorizationState = 0;

    objc_storeStrong(&v24->_workflowReference, reference);
    name = nameCopy;
    if (!nameCopy)
    {
      name = [referenceCopy name];
    }

    objc_storeStrong(&v24->_workflowName, name);
    if (!nameCopy)
    {
    }

    if ([destinationCopy promptingBehaviour] == 2 && (objc_msgSend(actionCopy, "identifier"), v30 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v30), v30, (isEqualToString & 1) == 0))
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    else
    {
      v32 = MEMORY[0x1E695DFB8];
      attributions = [setCopy attributions];
      v34 = [attributions if_flatMap:&__block_literal_global_41238];
      v35 = [v32 orderedSetWithArray:v34];

      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __183__WFSmartPromptConfiguration_initWithSmartPromptStates_attributionSet_previousAttributions_contentItemCache_action_contentDestination_reference_workflowName_source_isWebpageCoercion___block_invoke_2;
      v58[3] = &unk_1E8379A58;
      v59 = cacheCopy;
      v36 = [v35 if_compactMap:v58];
      array = [v36 array];
    }

    v39 = [MEMORY[0x1E6996D40] collectionWithItems:array];
    v40 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:v39];
    archivedSourceContentCollection = v24->_archivedSourceContentCollection;
    v24->_archivedSourceContentCollection = v40;

    if (v24->_archivedSourceContentCollection)
    {
      v42 = [v39 copy];
      cachedSourceContentCollection = v24->_cachedSourceContentCollection;
      v24->_cachedSourceContentCollection = v42;

      LOBYTE(v50) = coercion;
      v44 = [WFSmartPromptStringGenerator localizedPromptForWorkflowName:nameCopy attributionSet:setCopy contentCollection:v24->_cachedSourceContentCollection contentItemCache:cacheCopy contentDestination:destinationCopy action:actionCopy isWebpageCoercion:v50];
      localizedPrompt = v24->_localizedPrompt;
      v24->_localizedPrompt = v44;

      LOBYTE(v51) = coercion;
      v46 = [WFSmartPromptStringGenerator localizedSubtitleForWorkflowName:nameCopy attributionSet:setCopy previousAttributions:attributionsCopy contentItemCache:cacheCopy contentDestination:destinationCopy action:actionCopy isWebpageCoercion:v51];
      localizedSubtitle = v24->_localizedSubtitle;
      v24->_localizedSubtitle = v46;

      if ([v39 numberOfItems] < 1)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v62 = 0x2020000000;
        v63 = 1;
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __183__WFSmartPromptConfiguration_initWithSmartPromptStates_attributionSet_previousAttributions_contentItemCache_action_contentDestination_reference_workflowName_source_isWebpageCoercion___block_invoke_205;
        v57[3] = &unk_1E8379A80;
        v57[4] = &buf;
        [statesCopy enumerateObjectsUsingBlock:v57];
        v24->_isSpecialRequest = *(*(&buf + 1) + 24);
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v24->_isSpecialRequest = 0;
      }

      v38 = v24;
    }

    else
    {
      v48 = getWFGeneralLogObject();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[WFSmartPromptConfiguration initWithSmartPromptStates:attributionSet:previousAttributions:contentItemCache:action:contentDestination:reference:workflowName:source:isWebpageCoercion:]";
        _os_log_impl(&dword_1CA256000, v48, OS_LOG_TYPE_FAULT, "%s Unable to archive smart prompt source content collection", &buf, 0xCu);
      }

      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

void __183__WFSmartPromptConfiguration_initWithSmartPromptStates_attributionSet_previousAttributions_contentItemCache_action_contentDestination_reference_workflowName_source_isWebpageCoercion___block_invoke_205(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 mode];
  if (objc_msgSend_isEqualToString_(v6))
  {
  }

  else
  {
    v7 = [v9 mode];
    isEqualToString = objc_msgSend_isEqualToString_(v7);

    if ((isEqualToString & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

void *__183__WFSmartPromptConfiguration_initWithSmartPromptStates_attributionSet_previousAttributions_contentItemCache_action_contentDestination_reference_workflowName_source_isWebpageCoercion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 privateItemIdentifiers];
  v3 = [v2 array];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

@end