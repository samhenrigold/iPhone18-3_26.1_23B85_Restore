@interface TRAArbiter
- (TRAArbiter)initWithRolesProvider:(id)provider inputsDataSource:(id)source drawingDataSource:(id)dataSource;
- (TRAArbiterDrawingDataSource)drawingDataSource;
- (TRAArbiterInputsDataSource)inputsDataSource;
- (id)_defaultUpdateContextWithReason:(id)reason animatable:(BOOL)animatable;
- (id)_newOrderedPreferencesResolutionStagesWithRolesProvider:(id)provider;
- (id)_newUniqueIdentifierForRole:(id)role;
- (id)_resolutionStageWithType:(int64_t)type;
- (id)_setupStateDump;
- (id)acquireParticipantWithRole:(id)role delegate:(id)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_addOrientationResolutionPolicySpecifierForClientContext:(id)context;
- (void)_inputsValidationStageDidUpdateValidators:(id)validators;
- (void)_invalidateParticipant:(id)participant;
- (void)_participantDidUpdatePreferences:(id)preferences;
- (void)_participantDidUpdateSettings:(id)settings;
- (void)_preferencesResolutionStageDidUpdateComponents:(id)components animate:(BOOL)animate;
- (void)_removeForceResolutionSpecifier;
- (void)_setNeedsUpdateArbitrationWithClientContext:(id)context defaultContext:(id)defaultContext;
- (void)_setNeedsUpdateArbitrationWithReason:(id)reason animated:(BOOL)animated;
- (void)_updateArbitrationWithClientContext:(id)context defaultContext:(id)defaultContext;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)noteArbiterDidCompleteTransitionWithContext:(id)context;
- (void)noteArbiterWillBeginTransitionWithContext:(id)context;
- (void)removeObserver:(id)observer;
- (void)setNeedsUpdateArbitrationWithContext:(id)context;
@end

@implementation TRAArbiter

- (void)_removeForceResolutionSpecifier
{
  if (self->_resolutionUpdateOrientationSpecifier)
  {
    orientationResolutionStage = [(TRAArbiter *)self orientationResolutionStage];
    [orientationResolutionStage removeResolutionPolicySpecifier:self->_resolutionUpdateOrientationSpecifier update:0];

    resolutionUpdateOrientationSpecifier = self->_resolutionUpdateOrientationSpecifier;
    self->_resolutionUpdateOrientationSpecifier = 0;
  }
}

- (TRAArbiter)initWithRolesProvider:(id)provider inputsDataSource:(id)source drawingDataSource:(id)dataSource
{
  providerCopy = provider;
  sourceCopy = source;
  dataSourceCopy = dataSource;
  v31.receiver = self;
  v31.super_class = TRAArbiter;
  v11 = [(TRAArbiter *)&v31 init];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:20];
    acquiredParticipantsByUniqueIdentifier = v11->_acquiredParticipantsByUniqueIdentifier;
    v11->_acquiredParticipantsByUniqueIdentifier = v12;

    v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    acquiredParticipantsByPreferencesType = v11->_acquiredParticipantsByPreferencesType;
    v11->_acquiredParticipantsByPreferencesType = v14;

    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:20];
    liveRolesCounter = v11->_liveRolesCounter;
    v11->_liveRolesCounter = v16;

    v18 = [MEMORY[0x277CBEB58] setWithCapacity:2];
    participantsNeedingUpdate = v11->_participantsNeedingUpdate;
    v11->_participantsNeedingUpdate = v18;

    v20 = [MEMORY[0x277CBEB58] setWithCapacity:2];
    updatedParticipants = v11->_updatedParticipants;
    v11->_updatedParticipants = v20;

    array = [MEMORY[0x277CBEB18] array];
    arbiterNeedsUpdateReasons = v11->_arbiterNeedsUpdateReasons;
    v11->_arbiterNeedsUpdateReasons = array;

    objc_storeWeak(&v11->_drawingDataSource, dataSourceCopy);
    objc_storeWeak(&v11->_inputsDataSource, sourceCopy);
    v24 = [[TRAArbitrationInputsValidationStage alloc] initWithValidators:0 arbiter:v11];
    inputsValidationStage = v11->_inputsValidationStage;
    v11->_inputsValidationStage = v24;

    v26 = [(TRAArbiter *)v11 _newOrderedPreferencesResolutionStagesWithRolesProvider:providerCopy];
    preferencesResolutionStages = v11->_preferencesResolutionStages;
    v11->_preferencesResolutionStages = v26;

    _setupStateDump = [(TRAArbiter *)v11 _setupStateDump];
    stateDumpHandle = v11->_stateDumpHandle;
    v11->_stateDumpHandle = _setupStateDump;
  }

  return v11;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(BSInvalidatable *)self->_stateDumpHandle invalidate];
  v4.receiver = self;
  v4.super_class = TRAArbiter;
  [(TRAArbiter *)&v4 dealloc];
}

- (id)_newOrderedPreferencesResolutionStagesWithRolesProvider:(id)provider
{
  v47[4] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  zOrderStageRoles = [providerCopy zOrderStageRoles];
  zOrderStageRoles = self->_zOrderStageRoles;
  self->_zOrderStageRoles = zOrderStageRoles;

  orientationStageRoles = [providerCopy orientationStageRoles];
  orientationStageRoles = self->_orientationStageRoles;
  self->_orientationStageRoles = orientationStageRoles;

  ambientPresentationStageRoles = [providerCopy ambientPresentationStageRoles];
  ambientPresentationStageRoles = self->_ambientPresentationStageRoles;
  self->_ambientPresentationStageRoles = ambientPresentationStageRoles;

  userInterfaceStyleStageRoles = [providerCopy userInterfaceStyleStageRoles];

  userInterfaceStyleStageRoles = self->_userInterfaceStyleStageRoles;
  self->_userInterfaceStyleStageRoles = userInterfaceStyleStageRoles;

  v13 = [TRAArbitrationPreferencesResolutionStage alloc];
  allObjects = [(NSSet *)self->_zOrderStageRoles allObjects];
  v15 = [(TRAArbitrationPreferencesResolutionStage *)v13 initWithParticipantsRoles:allObjects preferencesType:0 arbiter:self];

  v16 = [TRAArbitrationPreferencesResolutionStage alloc];
  allObjects2 = [(NSSet *)self->_orientationStageRoles allObjects];
  v18 = [(TRAArbitrationPreferencesResolutionStage *)v16 initWithParticipantsRoles:allObjects2 preferencesType:1 arbiter:self];

  v19 = [TRAArbitrationPreferencesResolutionStage alloc];
  allObjects3 = [(NSSet *)self->_ambientPresentationStageRoles allObjects];
  v21 = [(TRAArbitrationPreferencesResolutionStage *)v19 initWithParticipantsRoles:allObjects3 preferencesType:2 arbiter:self];

  v22 = [TRAArbitrationPreferencesResolutionStage alloc];
  allObjects4 = [(NSSet *)self->_ambientPresentationStageRoles allObjects];
  v24 = [(TRAArbitrationPreferencesResolutionStage *)v22 initWithParticipantsRoles:allObjects4 preferencesType:3 arbiter:self];

  acquiredParticipantsByPreferencesType = self->_acquiredParticipantsByPreferencesType;
  v26 = [MEMORY[0x277CBEB58] set];
  v28 = TRAStringFromTraitsPreferencesType(0, v27);
  [(NSMutableDictionary *)acquiredParticipantsByPreferencesType setObject:v26 forKey:v28];

  v29 = self->_acquiredParticipantsByPreferencesType;
  v30 = [MEMORY[0x277CBEB58] set];
  v32 = TRAStringFromTraitsPreferencesType(1uLL, v31);
  [(NSMutableDictionary *)v29 setObject:v30 forKey:v32];

  v33 = self->_acquiredParticipantsByPreferencesType;
  v34 = [MEMORY[0x277CBEB58] set];
  v36 = TRAStringFromTraitsPreferencesType(2uLL, v35);
  [(NSMutableDictionary *)v33 setObject:v34 forKey:v36];

  v37 = self->_acquiredParticipantsByPreferencesType;
  v38 = [MEMORY[0x277CBEB58] set];
  v40 = TRAStringFromTraitsPreferencesType(3uLL, v39);
  [(NSMutableDictionary *)v37 setObject:v38 forKey:v40];

  v41 = [(NSSet *)self->_zOrderStageRoles setByAddingObjectsFromSet:self->_ambientPresentationStageRoles];
  v42 = [v41 setByAddingObjectsFromSet:self->_userInterfaceStyleStageRoles];
  v43 = [v42 setByAddingObjectsFromSet:self->_orientationStageRoles];
  allStagesRoles = self->_allStagesRoles;
  self->_allStagesRoles = v43;

  v47[0] = v15;
  v47[1] = v18;
  v47[2] = v21;
  v47[3] = v24;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];

  return v45;
}

- (id)acquireParticipantWithRole:(id)role delegate:(id)delegate
{
  v47 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  delegateCopy = delegate;
  v9 = delegateCopy;
  if (roleCopy)
  {
    if (delegateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [TRAArbiter acquireParticipantWithRole:delegate:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [TRAArbiter acquireParticipantWithRole:delegate:];
LABEL_3:
  if (![(NSSet *)self->_allStagesRoles containsObject:roleCopy])
  {
    v33 = MEMORY[0x277CBEAD8];
    v34 = MEMORY[0x277CCACA8];
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = NSStringFromSelector(a2);
    roleCopy = [v34 stringWithFormat:@"*** -[%@ %@] called for unknown role: %@", v36, v37, roleCopy];
    v39 = [v33 exceptionWithName:@"TRAArbiterUnknownRoleException" reason:roleCopy userInfo:0];
    v40 = v39;

    objc_exception_throw(v39);
  }

  v10 = [TRAParticipant alloc];
  v11 = [(TRAArbiter *)self _newUniqueIdentifierForRole:roleCopy];
  v41 = v9;
  v12 = [(TRAParticipant *)v10 initWithRole:roleCopy uniqueIdentifier:v11 delegate:v9 arbiter:self];

  liveRolesCounter = self->_liveRolesCounter;
  v14 = MEMORY[0x277CCABB0];
  v15 = [(NSMutableDictionary *)liveRolesCounter objectForKeyedSubscript:roleCopy];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "unsignedIntegerValue") + 1}];
  [(NSMutableDictionary *)liveRolesCounter setObject:v16 forKey:roleCopy];

  acquiredParticipantsByUniqueIdentifier = self->_acquiredParticipantsByUniqueIdentifier;
  uniqueIdentifier = [(TRAParticipant *)v12 uniqueIdentifier];
  [(NSMutableDictionary *)acquiredParticipantsByUniqueIdentifier setObject:v12 forKey:uniqueIdentifier];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = self->_preferencesResolutionStages;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v42 + 1) + 8 * i);
        participantsRoles = [v24 participantsRoles];
        v26 = [participantsRoles containsObject:roleCopy];

        if (v26)
        {
          acquiredParticipantsByPreferencesType = self->_acquiredParticipantsByPreferencesType;
          preferencesType = [v24 preferencesType];
          v30 = TRAStringFromTraitsPreferencesType(preferencesType, v29);
          v31 = [(NSMutableDictionary *)acquiredParticipantsByPreferencesType objectForKey:v30];

          [v31 addObject:v12];
        }
      }

      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v21);
  }

  return v12;
}

- (id)_newUniqueIdentifierForRole:(id)role
{
  v5 = 0;
  v6 = &stru_287F70690;
  do
  {
    v7 = v6;
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%ld", role, v5];

    ++v5;
    v8 = [(NSMutableDictionary *)self->_acquiredParticipantsByUniqueIdentifier objectForKey:v6];
  }

  while (v8);
  return v6;
}

- (void)setNeedsUpdateArbitrationWithContext:(id)context
{
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_drawingDataSource);
  [contextCopy _setDrawingConfigurationProvider:WeakRetained];

  requestingParticipantsUniqueIdentifiers = [contextCopy requestingParticipantsUniqueIdentifiers];
  v6 = [requestingParticipantsUniqueIdentifiers count];

  if (v6)
  {
    reason = [contextCopy reason];
    v8 = [(TRAArbiter *)self _defaultUpdateContextWithReason:reason animatable:1];

    [(TRAArbiter *)self _setNeedsUpdateArbitrationWithClientContext:contextCopy defaultContext:v8];
  }

  else
  {
    [(NSMutableArray *)self->_arbiterNeedsUpdateReasons addObject:@"Broadcast update requested"];
    [(TRAArbiter *)self _setNeedsUpdateArbitrationWithClientContext:0 defaultContext:contextCopy];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v8 = observerCopy;
  if (!observerCopy)
  {
    [TRAArbiter addObserver:];
    observerCopy = 0;
  }

  observers = self->_observers;
  if (!observers)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:2];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  if (![(NSHashTable *)observers containsObject:observerCopy])
  {
    [(NSHashTable *)self->_observers addObject:v8];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (!observerCopy)
  {
    [TRAArbiter removeObserver:];
    observerCopy = 0;
  }

  if ([(NSHashTable *)self->_observers containsObject:observerCopy])
  {
    [(NSHashTable *)self->_observers removeObject:v5];
  }
}

- (id)_resolutionStageWithType:(int64_t)type
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_preferencesResolutionStages;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 preferencesType] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)noteArbiterWillBeginTransitionWithContext:(id)context
{
  contextCopy = context;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__TRAArbiter_noteArbiterWillBeginTransitionWithContext___block_invoke;
  v7[3] = &unk_279DD49F0;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  [allObjects enumerateObjectsUsingBlock:v7];
}

void __56__TRAArbiter_noteArbiterWillBeginTransitionWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 arbiter:*(a1 + 32) willBeginUpdateWithContext:*(a1 + 40)];
  }
}

- (void)noteArbiterDidCompleteTransitionWithContext:(id)context
{
  contextCopy = context;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__TRAArbiter_noteArbiterDidCompleteTransitionWithContext___block_invoke;
  v7[3] = &unk_279DD49F0;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  [allObjects enumerateObjectsUsingBlock:v7];
}

void __58__TRAArbiter_noteArbiterDidCompleteTransitionWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 arbiter:*(a1 + 32) didCompleteUpdateWithContext:*(a1 + 40)];
  }
}

- (void)_setNeedsUpdateArbitrationWithReason:(id)reason animated:(BOOL)animated
{
  v5 = [(TRAArbiter *)self _defaultUpdateContextWithReason:reason animatable:animated];
  [(TRAArbiter *)self _setNeedsUpdateArbitrationWithClientContext:0 defaultContext:v5];
}

- (void)_setNeedsUpdateArbitrationWithClientContext:(id)context defaultContext:(id)defaultContext
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  defaultContextCopy = defaultContext;
  if (!defaultContextCopy)
  {
    [TRAArbiter _setNeedsUpdateArbitrationWithClientContext:defaultContext:];
  }

  if (contextCopy)
  {
    v8 = contextCopy;
  }

  else
  {
    v8 = defaultContextCopy;
  }

  v20 = v8;
  requestingParticipantsUniqueIdentifiers = [v20 requestingParticipantsUniqueIdentifiers];
  v10 = requestingParticipantsUniqueIdentifiers;
  v21 = defaultContextCopy;
  if (requestingParticipantsUniqueIdentifiers)
  {
    allKeys = requestingParticipantsUniqueIdentifiers;
  }

  else
  {
    allKeys = [(NSMutableDictionary *)self->_acquiredParticipantsByUniqueIdentifier allKeys];
  }

  v12 = allKeys;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(NSMutableDictionary *)self->_acquiredParticipantsByUniqueIdentifier objectForKey:*(*(&v22 + 1) + 8 * i)];
        if (v18)
        {
          [(NSMutableSet *)self->_participantsNeedingUpdate addObject:v18];
        }

        else
        {
          v19 = TRALogCommon(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v27 = 0;
            v28 = 2114;
            v29 = contextCopy;
            _os_log_error_impl(&dword_26F353000, v19, OS_LOG_TYPE_ERROR, "An update was requested for an unknown participant: %{public}@, with client context: %{public}@", buf, 0x16u);
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  if (contextCopy && (![contextCopy _hasDefaultOrientationActuationContext] || objc_msgSend(contextCopy, "forceOrientationResolution")))
  {
    [(TRAArbiter *)self _addOrientationResolutionPolicySpecifierForClientContext:contextCopy];
  }

  [(TRAArbiter *)self _updateArbitrationWithClientContext:contextCopy defaultContext:v21];
  [(TRAArbiter *)self _removeForceResolutionSpecifier];
}

- (void)_invalidateParticipant:(id)participant
{
  v25 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  if (!participantCopy)
  {
    [TRAArbiter _invalidateParticipant:];
  }

  delegate = [participantCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate participantWillInvalidate:participantCopy];
  }

  role = [participantCopy role];
  acquiredParticipantsByUniqueIdentifier = self->_acquiredParticipantsByUniqueIdentifier;
  uniqueIdentifier = [participantCopy uniqueIdentifier];
  [(NSMutableDictionary *)acquiredParticipantsByUniqueIdentifier removeObjectForKey:uniqueIdentifier];

  [(NSMutableSet *)self->_participantsNeedingUpdate removeObject:participantCopy];
  [(NSMutableSet *)self->_updatedParticipants removeObject:participantCopy];
  v9 = [(NSMutableDictionary *)self->_liveRolesCounter objectForKeyedSubscript:role];
  v10 = [v9 unsignedIntegerValue] - 1;

  liveRolesCounter = self->_liveRolesCounter;
  if (v10)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    [(NSMutableDictionary *)liveRolesCounter setObject:v12 forKey:role];
  }

  else
  {
    [(NSMutableDictionary *)self->_liveRolesCounter removeObjectForKey:role];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [(NSMutableDictionary *)self->_acquiredParticipantsByPreferencesType allKeys];
  v14 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(allKeys);
        }

        v18 = [(NSMutableDictionary *)self->_acquiredParticipantsByPreferencesType objectForKey:*(*(&v20 + 1) + 8 * i)];
        [v18 removeObject:participantCopy];
      }

      v15 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Participant(%p) with role %@ was invalidated", participantCopy, role];
  [(NSMutableArray *)self->_arbiterNeedsUpdateReasons addObject:v19];
  [(TRAArbiter *)self _setNeedsUpdateArbitrationWithReason:v19 animated:1];
}

- (void)_participantDidUpdatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = preferencesCopy;
  if (!preferencesCopy)
  {
    [TRAArbiter _participantDidUpdatePreferences:];
    preferencesCopy = 0;
  }

  [(NSMutableSet *)self->_updatedParticipants addObject:preferencesCopy];
}

- (void)_participantDidUpdateSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (!settingsCopy)
  {
    [TRAArbiter _participantDidUpdateSettings:];
    settingsCopy = 0;
  }

  [(NSMutableSet *)self->_updatedParticipants addObject:settingsCopy];
}

- (void)_inputsValidationStageDidUpdateValidators:(id)validators
{
  validatorsCopy = validators;
  v8 = validatorsCopy;
  if (!validatorsCopy)
  {
    [TRAArbiter _inputsValidationStageDidUpdateValidators:];
    validatorsCopy = 0;
  }

  v5 = MEMORY[0x277CCACA8];
  succinctDescription = [validatorsCopy succinctDescription];
  v7 = [v5 stringWithFormat:@"Stage[%@] did update specifiers.", succinctDescription];

  [(NSMutableArray *)self->_arbiterNeedsUpdateReasons addObject:v7];
  [(TRAArbiter *)self _setNeedsUpdateArbitrationWithReason:v7 animated:1];
}

- (void)_preferencesResolutionStageDidUpdateComponents:(id)components animate:(BOOL)animate
{
  animateCopy = animate;
  componentsCopy = components;
  v10 = componentsCopy;
  if (!componentsCopy)
  {
    [TRAArbiter _preferencesResolutionStageDidUpdateComponents:animate:];
    componentsCopy = 0;
  }

  v7 = MEMORY[0x277CCACA8];
  succinctDescription = [componentsCopy succinctDescription];
  v9 = [v7 stringWithFormat:@"Stage[%@] did update specifiers.", succinctDescription];

  [(NSMutableArray *)self->_arbiterNeedsUpdateReasons addObject:v9];
  [(TRAArbiter *)self _setNeedsUpdateArbitrationWithReason:v9 animated:animateCopy];
}

- (void)_addOrientationResolutionPolicySpecifierForClientContext:(id)context
{
  contextCopy = context;
  forceOrientationResolution = [contextCopy forceOrientationResolution];
  _hasDefaultOrientationActuationContext = [contextCopy _hasDefaultOrientationActuationContext];
  if (((forceOrientationResolution & 1) != 0 || !_hasDefaultOrientationActuationContext) && !self->_resolutionUpdateOrientationSpecifier)
  {
    v6 = [[TRAArbiterUpdateOrientationResolutionPolicySpecifier alloc] initWithComponentOrder:&unk_287F76890];
    resolutionUpdateOrientationSpecifier = self->_resolutionUpdateOrientationSpecifier;
    self->_resolutionUpdateOrientationSpecifier = v6;

    [(TRAArbiterUpdateOrientationResolutionPolicySpecifier *)self->_resolutionUpdateOrientationSpecifier setForceResolution:forceOrientationResolution];
    v8 = self->_resolutionUpdateOrientationSpecifier;
    orientationActuationContext = [contextCopy orientationActuationContext];
    [(TRAArbiterUpdateOrientationResolutionPolicySpecifier *)v8 setActuationContext:orientationActuationContext];

    v10 = self->_resolutionUpdateOrientationSpecifier;
    requestingParticipantsUniqueIdentifiers = [contextCopy requestingParticipantsUniqueIdentifiers];
    [(TRAArbiterUpdateOrientationResolutionPolicySpecifier *)v10 setParticipantsUniqueIdentifiers:requestingParticipantsUniqueIdentifiers];

    orientationResolutionStage = [(TRAArbiter *)self orientationResolutionStage];
    [orientationResolutionStage addResolutionPolicySpecifier:self->_resolutionUpdateOrientationSpecifier update:0];
  }
}

- (id)_defaultUpdateContextWithReason:(id)reason animatable:(BOOL)animatable
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [TRAArbiter _defaultUpdateContextWithReason:animatable:];
  }

  v7 = [TRAArbiterUpdateContext alloc];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__TRAArbiter__defaultUpdateContextWithReason_animatable___block_invoke;
  v11[3] = &unk_279DD4A18;
  animatableCopy = animatable;
  v11[4] = self;
  v12 = reasonCopy;
  v8 = reasonCopy;
  v9 = [(TRAArbiterUpdateContext *)v7 initWithBuilder:v11];

  return v9;
}

void __57__TRAArbiter__defaultUpdateContextWithReason_animatable___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
    v4 = [WeakRetained defaultOrientationAnimationSettingsAnimatable:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [[TRASettingsActuationContext alloc] initWithAnimationSettings:v4 drawingFence:0];
  [v6 setReason:*(a1 + 40)];
  [v6 setRequestingParticipantsUniqueIdentifiers:MEMORY[0x277CBEBF8]];
  [v6 setOrientationActuationContext:v5];
}

- (void)_updateArbitrationWithClientContext:(id)context defaultContext:(id)defaultContext
{
  v74 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  defaultContextCopy = defaultContext;
  if (!defaultContextCopy)
  {
    [TRAArbiter _updateArbitrationWithClientContext:defaultContext:];
  }

  if ([(NSMutableDictionary *)self->_acquiredParticipantsByPreferencesType count])
  {
    if (contextCopy)
    {
      v8 = contextCopy;
    }

    else
    {
      v8 = defaultContextCopy;
    }

    v9 = v8;
    v10 = TRALogCommon([(TRAArbiter *)self noteArbiterWillBeginTransitionWithContext:v9]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(TRAArbiter *)self _updateArbitrationWithClientContext:v9 defaultContext:v10];
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v11 = self->_participantsNeedingUpdate;
    v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v67 objects:v73 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v68;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v68 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v67 + 1) + 8 * i);
          delegate = [v16 delegate];
          [delegate updatePreferencesForParticipant:v16 updater:v16];

          if ([v9 forceOrientationResolution])
          {
            [(NSMutableSet *)self->_updatedParticipants addObject:v16];
          }
        }

        v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v67 objects:v73 count:16];
      }

      while (v13);
    }

    v57 = v9;

    if ([(NSMutableSet *)self->_updatedParticipants count]|| [(NSMutableArray *)self->_arbiterNeedsUpdateReasons count])
    {
      [(NSMutableSet *)self->_updatedParticipants removeAllObjects:defaultContextCopy];
      WeakRetained = objc_loadWeakRetained(&self->_inputsDataSource);
      inputs = [WeakRetained inputs];
      lastRawInputs = self->_lastRawInputs;
      self->_lastRawInputs = inputs;

      inputsValidationStage = self->_inputsValidationStage;
      v22 = self->_lastRawInputs;
      v23 = [TRAInputsValidationContext alloc];
      allValues = [(NSMutableDictionary *)self->_acquiredParticipantsByUniqueIdentifier allValues];
      v25 = [(TRAInputsValidationContext *)v23 initWithAcquiredParticipants:allValues];
      v26 = [(TRAArbitrationInputsValidationStage *)inputsValidationStage validateInputs:v22 withContext:v25];
      lastValidatedInputs = self->_lastValidatedInputs;
      self->_lastValidatedInputs = v26;

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = self->_preferencesResolutionStages;
      v28 = [(NSArray *)obj countByEnumeratingWithState:&v63 objects:v72 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v64;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v64 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v63 + 1) + 8 * j);
            participantsRoles = [v32 participantsRoles];
            acquiredParticipantsByPreferencesType = self->_acquiredParticipantsByPreferencesType;
            preferencesType = [v32 preferencesType];
            v37 = TRAStringFromTraitsPreferencesType(preferencesType, v36);
            v38 = [(NSMutableDictionary *)acquiredParticipantsByPreferencesType objectForKey:v37];

            v39 = [TRAPreferencesResolutionContext alloc];
            allObjects = [v38 allObjects];
            v41 = [(TRAPreferencesResolutionContext *)v39 initWithAcquiredParticipants:allObjects stageParticipantsRoles:participantsRoles validatedInputs:self->_lastValidatedInputs rawInputs:self->_lastRawInputs];

            [v32 updateResolutionWithContext:v41];
          }

          v29 = [(NSArray *)obj countByEnumeratingWithState:&v63 objects:v72 count:16];
        }

        while (v29);
      }

      v43 = TRALogCommon(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        [TRAArbiter _updateArbitrationWithClientContext:v43 defaultContext:?];
      }

      defaultContextCopy = v55;
      contextCopy = v56;
    }

    v44 = [(NSMutableSet *)self->_updatedParticipants copy];
    [(NSMutableSet *)self->_updatedParticipants removeAllObjects];
    [(NSMutableSet *)self->_participantsNeedingUpdate removeAllObjects];
    [(NSMutableArray *)self->_arbiterNeedsUpdateReasons removeAllObjects];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v45 = v44;
    v46 = [v45 countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v60;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v60 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v59 + 1) + 8 * k);
          if ([v50 hasAnyActuationContext])
          {
            v51 = v50;
          }

          else
          {
            v51 = defaultContextCopy;
          }

          v52 = v51;
          delegate2 = [v50 delegate];
          [delegate2 didChangeSettingsForParticipant:v50 context:v52];
        }

        v47 = [v45 countByEnumeratingWithState:&v59 objects:v71 count:16];
      }

      while (v47);
    }

    v54 = TRALogCommon([(TRAArbiter *)self noteArbiterDidCompleteTransitionWithContext:v57]);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [(TRAArbiter *)self _updateArbitrationWithClientContext:v57 defaultContext:v54];
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAArbiter *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAArbiter *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v33 = *MEMORY[0x277D85DE8];
  succinctDescriptionBuilder = [(TRAArbiter *)self succinctDescriptionBuilder];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_acquiredParticipantsByUniqueIdentifier, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  allValues = [(NSMutableDictionary *)self->_acquiredParticipantsByUniqueIdentifier allValues];
  v7 = [allValues countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        succinctDescription = [*(*(&v28 + 1) + 8 * v10) succinctDescription];
        [v5 addObject:succinctDescription];

        ++v10;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __52__TRAArbiter_descriptionBuilderWithMultilinePrefix___block_invoke;
  v24[3] = &unk_279DD4940;
  v12 = succinctDescriptionBuilder;
  v25 = v12;
  v26 = v5;
  selfCopy = self;
  v13 = v5;
  [v12 appendBodySectionWithName:@"Acquired Participants" multilinePrefix:0 block:v24];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__TRAArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v21[3] = &unk_279DD48D0;
  v14 = v12;
  v22 = v14;
  selfCopy2 = self;
  [v14 appendBodySectionWithName:@"Inputs" multilinePrefix:0 block:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__TRAArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_5;
  v19[3] = &unk_279DD48D0;
  v19[4] = self;
  v15 = v14;
  v20 = v15;
  [v15 appendBodySectionWithName:@"Preferences Resolution Stages" multilinePrefix:0 block:v19];
  v16 = v20;
  v17 = v15;

  return v15;
}

uint64_t __52__TRAArbiter_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendArraySection:*(a1 + 40) withName:0 skipIfEmpty:0];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 48);

  return [v2 appendDictionarySection:v3 withName:@"Acquired Participants by Roles Counter" skipIfEmpty:0];
}

void __52__TRAArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 112) withName:@"validation stage" skipIfNil:0];
  v3 = *(a1 + 32);
  v4 = [v3 activeMultilinePrefix];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__TRAArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v14[3] = &unk_279DD48D0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v15 = v5;
  v16 = v6;
  [v3 appendBodySectionWithName:@"last raw" multilinePrefix:v4 block:v14];

  v7 = *(a1 + 32);
  v8 = [v7 activeMultilinePrefix];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__TRAArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_4;
  v11[3] = &unk_279DD48D0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = v9;
  v13 = v10;
  [v7 appendBodySectionWithName:@"last validated" multilinePrefix:v8 block:v11];
}

void __52__TRAArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_5(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(*(a1 + 32) + 120);
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [v6 preferencesType];
        v10 = TRAStringFromTraitsPreferencesType(v8, v9);
        v11 = [*(a1 + 40) activeMultilinePrefix];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __52__TRAArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_6;
        v13[3] = &unk_279DD48D0;
        v14 = *(a1 + 40);
        v15 = v6;
        [v7 appendBodySectionWithName:v10 multilinePrefix:v11 block:v13];
      }

      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }
}

void __52__TRAArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) debugDescription];
  [v1 appendString:v2 withName:0];
}

- (id)_setupStateDump
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_loadWeakRetained(&location);
  v5 = [v3 stringWithFormat:@"TraitsArbiter - %p - Arbiter", v4];
  objc_copyWeak(&v8, &location);
  v6 = BSLogAddStateCaptureBlockWithTitle();

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v6;
}

__CFString *__29__TRAArbiter__setupStateDump__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained debugDescription];
  }

  else
  {
    v3 = &stru_287F70690;
  }

  return v3;
}

- (TRAArbiterInputsDataSource)inputsDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_inputsDataSource);

  return WeakRetained;
}

- (TRAArbiterDrawingDataSource)drawingDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_drawingDataSource);

  return WeakRetained;
}

- (void)acquireParticipantWithRole:delegate:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"role" object:? file:? lineNumber:? description:?];
}

- (void)acquireParticipantWithRole:delegate:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)addObserver:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"observer" object:? file:? lineNumber:? description:?];
}

- (void)removeObserver:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"observer" object:? file:? lineNumber:? description:?];
}

- (void)_setNeedsUpdateArbitrationWithClientContext:defaultContext:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"defaultContext" object:? file:? lineNumber:? description:?];
}

- (void)_invalidateParticipant:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"participant" object:? file:? lineNumber:? description:?];
}

- (void)_participantDidUpdatePreferences:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"participant" object:? file:? lineNumber:? description:?];
}

- (void)_participantDidUpdateSettings:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"participant" object:? file:? lineNumber:? description:?];
}

- (void)_inputsValidationStageDidUpdateValidators:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"inputsValidationStage" object:? file:? lineNumber:? description:?];
}

- (void)_preferencesResolutionStageDidUpdateComponents:animate:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"preferencesResolutionStage" object:? file:? lineNumber:? description:?];
}

- (void)_defaultUpdateContextWithReason:animatable:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_updateArbitrationWithClientContext:defaultContext:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"defaultContext" object:? file:? lineNumber:? description:?];
}

- (void)_updateArbitrationWithClientContext:(NSObject *)a3 defaultContext:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2(&dword_26F353000, a2, a3, "Arbiter[%p] will update with context: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)_updateArbitrationWithClientContext:(void *)a1 defaultContext:(NSObject *)a2 .cold.3(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 debugDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_26F353000, a2, OS_LOG_TYPE_DEBUG, "current resolution:\n%{public}@", &v4, 0xCu);
}

- (void)_updateArbitrationWithClientContext:(NSObject *)a3 defaultContext:.cold.4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 134218240;
  *(&v3 + 4) = a1;
  WORD6(v3) = 2048;
  HIWORD(v3) = a2;
  OUTLINED_FUNCTION_2(&dword_26F353000, a2, a3, "Arbiter[%p] did update with context: %p.", v3, *(&v3 + 1));
}

@end