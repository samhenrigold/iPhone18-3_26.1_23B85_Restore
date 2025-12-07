@interface TRAArbitrationPreferencesResolutionStage
- (TRAArbiter)arbiter;
- (TRAArbitrationPreferencesResolutionStage)initWithParticipantsRoles:(id)roles preferencesType:(int64_t)type arbiter:(id)arbiter;
- (id)_setupStateDump;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_addStageComponent:(id)component toArray:(id)array update:(BOOL)update animate:(BOOL)animate;
- (void)_removeComponent:(id)component fromArray:(id)array update:(BOOL)update animate:(BOOL)animate;
- (void)dealloc;
- (void)updateResolutionWithContext:(id)context;
@end

@implementation TRAArbitrationPreferencesResolutionStage

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAArbitrationPreferencesResolutionStage *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = TRAStringFromTraitsPreferencesType(self->_preferencesType, v4);
  [v3 appendString:v5 withName:@"preferencesType"];

  return v3;
}

- (TRAArbitrationPreferencesResolutionStage)initWithParticipantsRoles:(id)roles preferencesType:(int64_t)type arbiter:(id)arbiter
{
  rolesCopy = roles;
  arbiterCopy = arbiter;
  v10 = arbiterCopy;
  if (rolesCopy)
  {
    if (arbiterCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [TRAArbitrationPreferencesResolutionStage initWithParticipantsRoles:preferencesType:arbiter:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [TRAArbitrationPreferencesResolutionStage initWithParticipantsRoles:preferencesType:arbiter:];
LABEL_3:
  v24.receiver = self;
  v24.super_class = TRAArbitrationPreferencesResolutionStage;
  v11 = [(TRAArbitrationPreferencesResolutionStage *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_arbiter, v10);
    v12->_preferencesType = type;
    v13 = [rolesCopy copy];
    participantsRoles = v12->_participantsRoles;
    v12->_participantsRoles = v13;

    array = [MEMORY[0x277CBEB18] array];
    resolutionPolicySpecifiers = v12->_resolutionPolicySpecifiers;
    v12->_resolutionPolicySpecifiers = array;

    array2 = [MEMORY[0x277CBEB18] array];
    nodesSpecsSpecifiers = v12->_nodesSpecsSpecifiers;
    v12->_nodesSpecsSpecifiers = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    stageResolvers = v12->_stageResolvers;
    v12->_stageResolvers = array3;

    _setupStateDump = [(TRAArbitrationPreferencesResolutionStage *)v12 _setupStateDump];
    stateDumpHandle = v12->_stateDumpHandle;
    v12->_stateDumpHandle = _setupStateDump;
  }

  return v12;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateDumpHandle invalidate];
  v3.receiver = self;
  v3.super_class = TRAArbitrationPreferencesResolutionStage;
  [(TRAArbitrationPreferencesResolutionStage *)&v3 dealloc];
}

- (void)updateResolutionWithContext:(id)context
{
  v55 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = self->_resolutionPolicySpecifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v45;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v44 + 1) + 8 * i);
        acquiredParticipants = [contextCopy acquiredParticipants];
        [v10 updateStageParticipantsResolutionPolicies:acquiredParticipants context:contextCopy];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v7);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = self->_nodesSpecsSpecifiers;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (!v13)
  {
    v15 = v12;
    goto LABEL_18;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v41;
  do
  {
    v17 = 0;
    v18 = v15;
    do
    {
      if (*v41 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v15 = [*(*(&v40 + 1) + 8 * v17) updateStageTreeNodesSpecifications:v18 stageParticipantsRoles:self->_participantsRoles context:contextCopy];

      ++v17;
      v18 = v15;
    }

    while (v14 != v17);
    v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v40 objects:v53 count:16];
  }

  while (v14);

  if (v15)
  {
    v19 = [(TRAArbitrationPreferencesResolutionStage *)self preferencesType]== 1;
    preferencesType = [(TRAArbitrationPreferencesResolutionStage *)self preferencesType];
    v22 = TRAStringFromTraitsPreferencesType(preferencesType, v21);
    v23 = [TRAPreferencesTree treeWithNodesSpecifications:v15 traversalType:v19 debugName:v22];
    stagePreferencesTree = self->_stagePreferencesTree;
    self->_stagePreferencesTree = v23;

LABEL_18:
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v25 = self->_stageResolvers;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v36 objects:v52 count:16];
  if (v26)
  {
    v28 = v26;
    v29 = *v37;
    *&v27 = 138543618;
    v35 = v27;
    do
    {
      v30 = 0;
      do
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = TRALogCommon([*(*(&v36 + 1) + 8 * v30) resolveStagePreferencesWithContext:contextCopy preferencesTree:{self->_stagePreferencesTree, v35, v36}]);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v33 = TRAStringFromTraitsPreferencesType(self->_preferencesType, v32);
          recursiveDescription = [(TRAPreferencesTree *)self->_stagePreferencesTree recursiveDescription];
          *buf = v35;
          v49 = v33;
          v50 = 2114;
          v51 = recursiveDescription;
          _os_log_debug_impl(&dword_26F353000, v31, OS_LOG_TYPE_DEBUG, "Current stage tree %{public}@: %{public}@", buf, 0x16u);
        }

        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v36 objects:v52 count:16];
    }

    while (v28);
  }
}

- (void)_addStageComponent:(id)component toArray:(id)array update:(BOOL)update animate:(BOOL)animate
{
  animateCopy = animate;
  updateCopy = update;
  componentCopy = component;
  arrayCopy = array;
  v12 = componentCopy;
  if (!componentCopy)
  {
    [TRAArbitrationPreferencesResolutionStage _addStageComponent:toArray:update:animate:];
    v12 = 0;
  }

  preferencesType = [v12 preferencesType];
  if (preferencesType != [(TRAArbitrationPreferencesResolutionStage *)self preferencesType])
  {
    [TRAArbitrationPreferencesResolutionStage _addStageComponent:componentCopy toArray:self update:a2 animate:?];
  }

  if ([arrayCopy containsObject:componentCopy])
  {
    WeakRetained = [MEMORY[0x277CCA890] currentHandler];
    [WeakRetained handleFailureInMethod:a2 object:self file:@"TRAArbitration.m" lineNumber:296 description:{@"[%@] already added to the stage[%@]", componentCopy, self}];
    v15 = arrayCopy;
  }

  else
  {
    [arrayCopy addObject:componentCopy];
    v16 = [arrayCopy sortedArrayUsingComparator:&__block_literal_global_167];
    v15 = [v16 mutableCopy];

    if (!updateCopy)
    {
      goto LABEL_10;
    }

    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [WeakRetained _preferencesResolutionStageDidUpdateComponents:self animate:animateCopy];
  }

LABEL_10:
}

uint64_t __86__TRAArbitrationPreferencesResolutionStage__addStageComponent_toArray_update_animate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 componentOrder];
  v6 = [v4 componentOrder];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_removeComponent:(id)component fromArray:(id)array update:(BOOL)update animate:(BOOL)animate
{
  animateCopy = animate;
  updateCopy = update;
  componentCopy = component;
  arrayCopy = array;
  v12 = componentCopy;
  v13 = arrayCopy;
  if (!componentCopy)
  {
    [TRAArbitrationPreferencesResolutionStage _removeComponent:fromArray:update:animate:];
    v12 = 0;
  }

  if ([v13 containsObject:v12])
  {
    [v13 removeObject:componentCopy];
    if (!updateCopy)
    {
      goto LABEL_8;
    }

    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [WeakRetained _preferencesResolutionStageDidUpdateComponents:self animate:animateCopy];
  }

  else
  {
    WeakRetained = [MEMORY[0x277CCA890] currentHandler];
    [WeakRetained handleFailureInMethod:a2 object:self file:@"TRAArbitration.m" lineNumber:308 description:{@"[%@] already removed from the stage[%@]", componentCopy, self}];
  }

LABEL_8:
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAArbitrationPreferencesResolutionStage *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(TRAArbitrationPreferencesResolutionStage *)self succinctDescriptionBuilder];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[NSMutableArray count](self->_resolutionPolicySpecifiers, "count")];
  [succinctDescriptionBuilder appendString:v5 withName:@"resolutionPolicySpecifiers count"];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[NSMutableArray count](self->_nodesSpecsSpecifiers, "count")];
  [succinctDescriptionBuilder appendString:v6 withName:@"nodesSpecificationSpecifiers count"];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[NSMutableArray count](self->_stageResolvers, "count")];
  [succinctDescriptionBuilder appendString:v7 withName:@"stageResolvers count"];

  v8 = [succinctDescriptionBuilder appendUnsignedInteger:-[NSMutableArray count](self->_participantsRoles withName:{"count"), @"participantsRoles count"}];
  if (self->_stagePreferencesTree)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__TRAArbitrationPreferencesResolutionStage_descriptionBuilderWithMultilinePrefix___block_invoke;
    v12[3] = &unk_279DD48D0;
    v13 = succinctDescriptionBuilder;
    selfCopy = self;
    [v13 appendBodySectionWithName:@"Preference Tree" multilinePrefix:0 block:v12];
  }

  else
  {
    recursiveDescription = [0 recursiveDescription];
    [succinctDescriptionBuilder appendString:recursiveDescription withName:@"Preference Tree"];
  }

  [succinctDescriptionBuilder appendArraySection:self->_resolutionPolicySpecifiers withName:@"Resolution Policy Specifiers" skipIfEmpty:0];
  [succinctDescriptionBuilder appendArraySection:self->_stageResolvers withName:@"Resolvers" skipIfEmpty:0];
  v10 = [succinctDescriptionBuilder appendUnsignedInteger:-[NSMutableArray count](self->_participantsRoles withName:{"count"), @"Managed Roles"}];

  return succinctDescriptionBuilder;
}

void __82__TRAArbitrationPreferencesResolutionStage_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 40) recursiveDescription];
  [v1 appendString:v2 withName:0];
}

- (id)_setupStateDump
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);
  v7 = TRAStringFromTraitsPreferencesType(self->_preferencesType, v6);
  v8 = [v4 stringWithFormat:@"TraitsArbiter - %p - Arbitration Pipeline - Preferences Resolution Stages - %@", WeakRetained, v7];
  objc_copyWeak(&v11, &location);
  v9 = BSLogAddStateCaptureBlockWithTitle();

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v9;
}

__CFString *__59__TRAArbitrationPreferencesResolutionStage__setupStateDump__block_invoke(uint64_t a1)
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

- (TRAArbiter)arbiter
{
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);

  return WeakRetained;
}

- (void)initWithParticipantsRoles:preferencesType:arbiter:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"participantsRoles" object:? file:? lineNumber:? description:?];
}

- (void)initWithParticipantsRoles:preferencesType:arbiter:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"arbiter" object:? file:? lineNumber:? description:?];
}

- (void)_addStageComponent:toArray:update:animate:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"component" object:? file:? lineNumber:? description:?];
}

- (void)_addStageComponent:(uint64_t)a3 toArray:update:animate:.cold.2(void *a1, void *a2, uint64_t a3)
{
  v12 = [MEMORY[0x277CCA890] currentHandler];
  v6 = [a1 preferencesType];
  v8 = TRAStringFromTraitsPreferencesType(v6, v7);
  v9 = [a2 preferencesType];
  v11 = TRAStringFromTraitsPreferencesType(v9, v10);
  [v12 handleFailureInMethod:a3 object:a2 file:@"TRAArbitration.m" lineNumber:284 description:{@"Preferences stage component[%@] preferences type[%@], doesn't match stage[%@] preferences type[%@]", a1, v8, a2, v11}];
}

- (void)_removeComponent:fromArray:update:animate:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"component" object:? file:? lineNumber:? description:?];
}

@end