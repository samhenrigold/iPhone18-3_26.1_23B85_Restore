@interface RBAssertionResolutionContext
- (RBAttributeContext)_createContextForAssertion:(void *)assertion;
- (id)_assertionGraphFromAssertion:(id)assertion;
- (id)_inheritancesForOriginator:(id)originator;
- (id)_latestStateForIdentity:(id)identity;
- (id)_originatorInheritancesForAssertion:(id)assertion;
- (void)_assertionGraphFromAssertion:(id)assertion graph:(id)graph;
- (void)_checkForSuspendableAssertionCycle:(id)cycle newState:(id)state;
- (void)_finalizeStateChangeSet;
- (void)_resolveProcessStateForTarget:(id)target ofType:(unint64_t)type viaAssertion:(id)assertion;
- (void)_resolveSystemState;
- (void)_suspendAssertionsForTarget:(id)target;
- (void)_suspendOrResumeAssertionsForTarget:(id)target oldState:(id)state newState:(id)newState;
- (void)_updateStatesForAssertion:(id)assertion;
- (void)initWithAssertions:(void *)assertions;
- (void)resolve;
- (void)setAssertionCollection:(uint64_t)collection;
- (void)setBundlePropertiesManager:(uint64_t)manager;
- (void)setDomainAttributeManager:(uint64_t)manager;
- (void)setEntitlementManager:(uint64_t)manager;
- (void)setProcessIndex:(uint64_t)index;
- (void)setSavedEndowments:(uint64_t)endowments;
- (void)setStateMap:(uint64_t)map;
- (void)setSystemState:(uint64_t)state;
@end

@implementation RBAssertionResolutionContext

- (void)resolve
{
  v15 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    [*(self + 64) setDomainAttributeManager:*(self + 104)];
    [*(self + 64) setBundlePropertiesManager:*(self + 112)];
    [*(self + 64) setEntitlementManager:*(self + 120)];
    [*(self + 64) setSystemState:*(self + 136)];
    while ([*(self + 8) count])
    {
      while ([*(self + 8) count])
      {
        anyObject = [*(self + 8) anyObject];
        [*(self + 8) removeObject:anyObject];
        [self _updateStatesForAssertion:anyObject];
      }

      allObjects = [*(self + 40) allObjects];
      [*(self + 40) removeAllObjects];
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = allObjects;
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [self _resolveProcessStateForTarget:*(*(&v10 + 1) + 8 * v9++) ofType:0 viaAssertion:0];
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }

    [self _finalizeStateChangeSet];
    [self _resolveSystemState];
    objc_autoreleasePoolPop(v2);
  }
}

- (void)_finalizeStateChangeSet
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(RBProcessMap *)self->_resolvedState allIdentities];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [RBProcessStateChange alloc];
        v10 = [(RBProcessMap *)self->_stateMap valueForIdentity:v8];
        v11 = [(RBProcessMap *)self->_resolvedState valueForIdentity:v8];
        v12 = [(RBProcessStateChange *)v9 initWithIdentity:v8 originalState:v10 updatedState:v11];

        [array addObject:v12];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [[RBProcessStateChangeSet alloc] initWithChanges:array];
  changeSet = self->_changeSet;
  self->_changeSet = v13;
}

- (void)_resolveSystemState
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(RBMutableSystemState);
  assertionCollection = self->_assertionCollection;
  v5 = +[RBConcreteTarget systemTarget];
  v6 = [(RBAssertionCollection *)assertionCollection assertionsForTarget:v5];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([v12 isActive])
        {
          [(RBAttributeContext *)self->_attributeContext setAssertion:v12];
          attributeContext = self->_attributeContext;
          v14 = [(RBAssertionResolutionContext *)self _originatorInheritancesForAssertion:v12];
          [(RBAttributeContext *)attributeContext setAvailableInheritances:v14];

          v15 = self->_attributeContext;
          savedEndowments = self->_savedEndowments;
          originator = [v12 originator];
          v18 = [(NSMapTable *)savedEndowments objectForKey:originator];
          [(RBAttributeContext *)v15 setSavedEndowments:v18];

          [(RBAttributeContext *)self->_attributeContext setSystemState:self->_systemState];
          [v12 applyToSystemState:v3 withAttributeContext:self->_attributeContext];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v19 = [(RBMutableSystemState *)v3 copy];
  systemState = self->_systemState;
  self->_systemState = v19;
}

- (id)_assertionGraphFromAssertion:(id)assertion
{
  v4 = MEMORY[0x277CBEB38];
  assertionCopy = assertion;
  dictionary = [v4 dictionary];
  [(RBAssertionResolutionContext *)self _assertionGraphFromAssertion:assertionCopy graph:dictionary];

  return dictionary;
}

- (void)_assertionGraphFromAssertion:(id)assertion graph:(id)graph
{
  v39 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  graphCopy = graph;
  identifier = [assertionCopy identifier];
  v9 = [graphCopy objectForKey:identifier];

  if (!v9)
  {
    v33 = [MEMORY[0x277CBEB58] set];
    [graphCopy setObject:? forKeyedSubscript:?];
    if (![assertionCopy hasHereditaryGrant])
    {
LABEL_17:

      goto LABEL_18;
    }

    target = [assertionCopy target];
    process = [target process];
    if (process)
    {
      v12 = process;
    }

    else
    {
      processIndex = self->_processIndex;
      identity = [target identity];
      v12 = [(RBProcessIndex *)processIndex processForIdentity:identity];

      if (!v12)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    v31 = identifier;
    v32 = assertionCopy;
    v30 = target;
    environment = [target environment];
    selfCopy = self;
    assertionCollection = self->_assertionCollection;
    v29 = v12;
    identifier2 = [v12 identifier];
    v19 = [(RBAssertionCollection *)assertionCollection assertionsForOriginator:identifier2];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v34 + 1) + 8 * i);
          sourceEnvironments = [v25 sourceEnvironments];
          v27 = [sourceEnvironments containsObject:environment];

          if (v27)
          {
            identifier3 = [v25 identifier];
            [v33 addObject:identifier3];

            [(RBAssertionResolutionContext *)selfCopy _assertionGraphFromAssertion:v25 graph:graphCopy];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v22);
    }

    identifier = v31;
    assertionCopy = v32;
    target = v30;
    goto LABEL_16;
  }

LABEL_18:
}

- (void)_updateStatesForAssertion:(id)assertion
{
  v37 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  v5 = [(RBAssertionResolutionContext *)self _assertionGraphFromAssertion:assertionCopy];
  v6 = MEMORY[0x277CBEB40];
  v28 = assertionCopy;
  identifier = [assertionCopy identifier];
  v8 = [v6 orderedSetWithObject:identifier];

  v9 = [MEMORY[0x277CBEB58] set];
  if ([v8 count])
  {
    v29 = v5;
    do
    {
      v10 = objc_autoreleasePoolPush();
      firstObject = [v8 firstObject];
      [v8 removeObjectAtIndex:0];
      [v9 addObject:firstObject];
      v12 = [(RBAssertionCollection *)self->_assertionCollection assertionWithIdentifier:firstObject];
      originator = [v12 originator];
      if (v12)
      {
        [(NSMutableSet *)self->_touchedAssertions addObject:v12];
        [(RBAttributeContext *)self->_attributeContext setAssertion:v12];
        attributeContext = self->_attributeContext;
        v31 = originator;
        v15 = [(RBAssertionResolutionContext *)self _inheritancesForOriginator:originator];
        [(RBAttributeContext *)attributeContext setAvailableInheritances:v15];

        v16 = self->_attributeContext;
        savedEndowments = self->_savedEndowments;
        originator2 = [v12 originator];
        v19 = [(NSMapTable *)savedEndowments objectForKey:originator2];
        [(RBAttributeContext *)v16 setSavedEndowments:v19];

        [(RBAttributeContext *)self->_attributeContext setSystemState:self->_systemState];
        if ([v12 resolveStateWithContext:self->_attributeContext])
        {
          if ([(RBAssertionCollection *)self->_assertionCollection hasResolvedAssertion:v12])
          {
            if ([v12 invalidationReason])
            {
              v20 = 3;
            }

            else
            {
              v20 = 2;
            }
          }

          else
          {
            v20 = 1;
          }

          target = [v12 target];
          [(RBAssertionResolutionContext *)self _resolveProcessStateForTarget:target ofType:v20 viaAssertion:v12];

          v21 = [v5 objectForKeyedSubscript:firstObject];
          [v8 unionSet:v21];
        }

        else
        {
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v21 = [v5 objectForKeyedSubscript:firstObject];
          v22 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v22)
          {
            v23 = v22;
            v30 = v10;
            v24 = *v33;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v33 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v32 + 1) + 8 * i);
                if (([v9 containsObject:v26] & 1) == 0)
                {
                  [v8 addObject:v26];
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
            }

            while (v23);
            v5 = v29;
            v10 = v30;
          }
        }

        [(RBAssertionCollection *)self->_assertionCollection noteResolvedAssertion:v12];
        originator = v31;
      }

      objc_autoreleasePoolPop(v10);
    }

    while ([v8 count]);
  }
}

- (id)_inheritancesForOriginator:(id)originator
{
  v30 = *MEMORY[0x277D85DE8];
  originatorCopy = originator;
  v5 = originatorCopy;
  if (!originatorCopy)
  {
    inheritances = 0;
    goto LABEL_27;
  }

  identity = [originatorCopy identity];
  if (![(RBProcessMap *)self->_originatorInheritances containsIdentity:identity])
  {
    if ([(RBProcessMap *)self->_resolvedState containsIdentity:identity])
    {
      v8 = [(RBProcessMap *)self->_resolvedState valueForIdentity:identity];
      inheritances = [v8 inheritances];

      v9 = [(RBProcessMap *)self->_originatorInheritances setValue:inheritances forIdentity:identity];
      goto LABEL_26;
    }

    v10 = [(RBProcessMap *)self->_stateMap valueForIdentity:identity];
    inheritances2 = [v10 inheritances];
    if (inheritances2)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      inheritances = inheritances2;
      v12 = [inheritances countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v23 = v10;
        v24 = identity;
        v14 = 0;
        v15 = *v26;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(inheritances);
            }

            v17 = *(*(&v25 + 1) + 8 * i);
            originatingIdentifier = [v17 originatingIdentifier];
            v19 = [(RBAssertionCollection *)self->_assertionCollection assertionWithIdentifier:originatingIdentifier];
            if (([v19 isActive] & 1) == 0)
            {
              if (!v14)
              {
                v14 = [inheritances mutableCopy];
              }

              [v14 removeInheritance:v17];
            }
          }

          v13 = [inheritances countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v13);

        v10 = v23;
        if (!v14)
        {
          identity = v24;
          goto LABEL_25;
        }

        v20 = [v14 copy];

        inheritances = v20;
        identity = v24;
      }

      else
      {
        v14 = inheritances;
      }
    }

    else
    {
      inheritances = 0;
    }

LABEL_25:
    v21 = [(RBProcessMap *)self->_originatorInheritances setValue:inheritances forIdentity:identity];

    goto LABEL_26;
  }

  inheritances = [(RBProcessMap *)self->_originatorInheritances valueForIdentity:identity];
LABEL_26:

LABEL_27:

  return inheritances;
}

- (id)_originatorInheritancesForAssertion:(id)assertion
{
  originator = [assertion originator];
  if (originator)
  {
    v5 = [(RBAssertionResolutionContext *)self _inheritancesForOriginator:originator];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_latestStateForIdentity:(id)identity
{
  identityCopy = identity;
  if (identityCopy)
  {
    v5 = [(RBProcessMap *)self->_resolvedState valueForIdentity:identityCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(RBProcessMap *)self->_stateMap valueForIdentity:identityCopy];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_suspendAssertionsForTarget:(id)target
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  assertionCollection = self->_assertionCollection;
  identifier = [target identifier];
  v6 = [(RBAssertionCollection *)assertionCollection assertionsForOriginator:identifier];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 suspendsOnOriginatorSuspension])
        {
          if (([v11 isSuspended] & 1) == 0)
          {
            [v11 suspend];
            [(NSMutableSet *)self->_assertions addObject:v11];
            if ([v11 definesRelativeStartTime])
            {
              target = [v11 target];
              identity = [target identity];

              if (identity)
              {
                [(NSMutableSet *)self->_lostStartTimeDefining addObject:identity];
              }
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)_checkForSuspendableAssertionCycle:(id)cycle newState:(id)state
{
  v78 = *MEMORY[0x277D85DE8];
  cycleCopy = cycle;
  v6 = [(RBProcessIndex *)self->_processIndex processForIdentity:cycleCopy];
  if (([v6 isLifecycleManaged] & 1) == 0)
  {
    array = rbs_assertion_log();
    if (!os_log_type_enabled(array, OS_LOG_TYPE_INFO))
    {
      goto LABEL_57;
    }

    *buf = 138543362;
    v72 = cycleCopy;
    v44 = "_checkForSuspendableAssertionCycle for %{public}@ bailing out since it's not managed";
LABEL_50:
    _os_log_impl(&dword_262485000, array, OS_LOG_TYPE_INFO, v44, buf, 0xCu);
    goto LABEL_57;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  assertionCollection = self->_assertionCollection;
  identifier = [v6 identifier];
  v9 = [(RBAssertionCollection *)assertionCollection assertionsForOriginator:identifier];

  v10 = [v9 countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (!v10)
  {

LABEL_48:
    array = rbs_assertion_log();
    if (!os_log_type_enabled(array, OS_LOG_TYPE_INFO))
    {
      goto LABEL_57;
    }

    *buf = 138543362;
    v72 = cycleCopy;
    v44 = "_checkForSuspendableAssertionCycle for %{public}@ bailing out since it's not holding a suspendable assertion";
    goto LABEL_50;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v67;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v67 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v12 |= [*(*(&v66 + 1) + 8 * i) suspendsOnOriginatorSuspension];
    }

    v11 = [v9 countByEnumeratingWithState:&v66 objects:v77 count:16];
  }

  while (v11);

  if ((v12 & 1) == 0)
  {
    goto LABEL_48;
  }

  v52 = cycleCopy;
  v15 = 0x277CBE000uLL;
  array = [MEMORY[0x277CBEB18] array];
  [array addObject:v6];
  v53 = [MEMORY[0x277CBEB58] set];
  while ([array count])
  {
    v17 = array;
    v18 = [array copy];
    [v53 addObjectsFromArray:array];
    array = [*(v15 + 2840) array];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v19 = v18;
    v49 = [v19 countByEnumeratingWithState:&v62 objects:v76 count:16];
    if (!v49)
    {
      goto LABEL_34;
    }

    v20 = *v63;
    v51 = v6;
    v47 = *v63;
    do
    {
      v21 = 0;
      do
      {
        if (*v63 != v20)
        {
          objc_enumerationMutation(v19);
        }

        v50 = v21;
        v22 = *(*(&v62 + 1) + 8 * v21);
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v23 = self->_assertionCollection;
        v48 = v22;
        identity = [v22 identity];
        v25 = [(RBAssertionCollection *)v23 assertionsForTargetIdentity:identity];

        v26 = [v25 countByEnumeratingWithState:&v58 objects:v75 count:16];
        if (!v26)
        {
          goto LABEL_32;
        }

        v27 = v26;
        v28 = *v59;
        while (2)
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v59 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v58 + 1) + 8 * j);
            intransientState = [v30 intransientState];
            if (![intransientState preventsSuspension])
            {
              goto LABEL_29;
            }

            isActive = [v30 isActive];

            if (isActive)
            {
              originator = [v30 originator];
              isLifecycleManaged = [originator isLifecycleManaged];

              if ((isLifecycleManaged & 1) == 0)
              {
                v45 = rbs_assertion_log();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                {
                  originator2 = [v30 originator];
                  *buf = 138543618;
                  v72 = originator2;
                  v73 = 2114;
                  v74 = v48;
                  _os_log_impl(&dword_262485000, v45, OS_LOG_TYPE_INFO, "_checkForSuspendableAssertionCycle bailing out for not-manged-process (originator: %{public}@ target: %{public}@)", buf, 0x16u);
                }

                goto LABEL_55;
              }

              if (([v30 suspendsOnOriginatorSuspension] & 1) == 0)
              {
                v45 = rbs_assertion_log();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543362;
                  v72 = v30;
                  _os_log_impl(&dword_262485000, v45, OS_LOG_TYPE_INFO, "_checkForSuspendableAssertionCycle bailing out for not-suspendable assertion %{public}@", buf, 0xCu);
                }

LABEL_55:
                v6 = v51;
                cycleCopy = v52;

                goto LABEL_56;
              }

              originator3 = [v30 originator];
              v36 = [v53 containsObject:originator3];

              if ((v36 & 1) == 0)
              {
                v37 = rbs_assertion_log();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  originator4 = [v30 originator];
                  *buf = 138543362;
                  v72 = originator4;
                  _os_log_impl(&dword_262485000, v37, OS_LOG_TYPE_DEFAULT, "found a new process to check %{public}@", buf, 0xCu);
                }

                intransientState = [v30 originator];
                [array addObject:intransientState];
LABEL_29:

                continue;
              }
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v58 objects:v75 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }

LABEL_32:

        v21 = v50 + 1;
        v6 = v51;
        v15 = 0x277CBE000;
        v20 = v47;
      }

      while (v50 + 1 != v49);
      v49 = [v19 countByEnumeratingWithState:&v62 objects:v76 count:16];
    }

    while (v49);
LABEL_34:
  }

  v39 = rbs_assertion_log();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v72 = v53;
    _os_log_impl(&dword_262485000, v39, OS_LOG_TYPE_DEFAULT, "Detected apparent loop in suspendable assertions with: %{public}@", buf, 0xCu);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v19 = v53;
  v40 = [v19 countByEnumeratingWithState:&v54 objects:v70 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v55;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v55 != v42)
        {
          objc_enumerationMutation(v19);
        }

        [(RBAssertionResolutionContext *)self _suspendAssertionsForTarget:*(*(&v54 + 1) + 8 * k)];
      }

      v41 = [v19 countByEnumeratingWithState:&v54 objects:v70 count:16];
    }

    while (v41);
  }

  cycleCopy = v52;
LABEL_56:

LABEL_57:
}

- (void)_suspendOrResumeAssertionsForTarget:(id)target oldState:(id)state newState:(id)newState
{
  v29 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  newStateCopy = newState;
  preventSuspend = [state preventSuspend];
  preventSuspend2 = [newStateCopy preventSuspend];
  if (preventSuspend != preventSuspend2)
  {
    v12 = preventSuspend2;
    v13 = [(RBProcessIndex *)self->_processIndex processForIdentity:targetCopy];
    if ([v13 isLifecycleManaged])
    {
      if (v12)
      {
        if ((preventSuspend & 1) == 0)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          assertionCollection = self->_assertionCollection;
          identifier = [v13 identifier];
          v16 = [(RBAssertionCollection *)assertionCollection assertionsForOriginator:identifier];

          v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v25;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v25 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v24 + 1) + 8 * i);
                if ([v21 suspendsOnOriginatorSuspension])
                {
                  if ([v21 isSuspended])
                  {
                    if ([v21 isValid])
                    {
                      [v21 resume];
                      [(NSMutableSet *)self->_assertions addObject:v21];
                      if ([v21 definesRelativeStartTime])
                      {
                        target = [v21 target];
                        identity = [target identity];

                        if (identity)
                        {
                          [(NSMutableSet *)self->_gainedStartTimeDefining addObject:identity];
                        }
                      }
                    }
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
            }

            while (v18);
          }
        }
      }

      else
      {
        [(RBAssertionResolutionContext *)self _suspendAssertionsForTarget:v13];
      }
    }
  }
}

- (void)_resolveProcessStateForTarget:(id)target ofType:(unint64_t)type viaAssertion:(id)assertion
{
  v47 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  assertionCopy = assertion;
  if ([targetCopy isSystem])
  {
    goto LABEL_27;
  }

  targetsPendingResolution = self->_targetsPendingResolution;
  if (type == 3)
  {
    if (!targetsPendingResolution)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v13 = self->_targetsPendingResolution;
      self->_targetsPendingResolution = v12;

      targetsPendingResolution = self->_targetsPendingResolution;
    }

    [(NSMutableSet *)targetsPendingResolution addObject:targetCopy];
    goto LABEL_27;
  }

  [(NSMutableSet *)targetsPendingResolution removeObject:targetCopy];
  identity = [targetCopy identity];
  v15 = [(RBAssertionResolutionContext *)self _latestStateForIdentity:identity];
  v16 = v15;
  if (type == 1)
  {
    v17 = [v15 mutableCopy];
    if (v17)
    {
      v18 = v17;
      processState = [assertionCopy processState];
      [(RBMutableProcessState *)v18 unionState:processState];

      if (!v16)
      {
        goto LABEL_22;
      }

LABEL_21:
      if ([(RBProcessState *)v18 isEqualToProcessStateIgnoringIdentity:v16])
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  v37 = a2;
  v38 = v16;
  v40 = assertionCopy;
  v41 = targetCopy;
  v18 = [(RBProcessState *)[RBMutableProcessState alloc] initWithIdentity:identity];
  v39 = identity;
  v20 = [(RBAssertionCollection *)self->_assertionCollection assertionsForTargetIdentity:identity];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v43;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v42 + 1) + 8 * i);
        if ([v25 isActive])
        {
          [(RBAttributeContext *)self->_attributeContext setAssertion:v25];
          attributeContext = self->_attributeContext;
          v27 = [(RBAssertionResolutionContext *)self _originatorInheritancesForAssertion:v25];
          [(RBAttributeContext *)attributeContext setAvailableInheritances:v27];

          v28 = self->_attributeContext;
          savedEndowments = self->_savedEndowments;
          originator = [v25 originator];
          v31 = [(NSMapTable *)savedEndowments objectForKey:originator];
          [(RBAttributeContext *)v28 setSavedEndowments:v31];

          [(RBAttributeContext *)self->_attributeContext setSystemState:self->_systemState];
          [v25 applyToProcessState:v18 withAttributeContext:self->_attributeContext];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v22);
  }

  assertionCopy = v40;
  targetCopy = v41;
  v16 = v38;
  identity = v39;
  if (!v18)
  {
    [RBAssertionResolutionContext _resolveProcessStateForTarget:v37 ofType:self viaAssertion:?];
    if (!v38)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v38)
  {
    goto LABEL_21;
  }

LABEL_22:
  v32 = [(RBMutableProcessState *)v18 copy];

  v33 = [(RBProcessMap *)self->_resolvedState setValue:v32 forIdentity:identity];
  originatorInheritances = self->_originatorInheritances;
  inheritances = [(RBProcessState *)v32 inheritances];
  v36 = [(RBProcessMap *)originatorInheritances setValue:inheritances forIdentity:identity];

  [(RBAssertionResolutionContext *)self _suspendOrResumeAssertionsForTarget:identity oldState:v16 newState:v32];
  v18 = v32;
LABEL_23:
  if ([(RBProcessState *)v18 preventSuspend]&& [(RBProcessState *)v18 targetedBySuspendableAssertion])
  {
    [(RBAssertionResolutionContext *)self _checkForSuspendableAssertionCycle:identity newState:v18];
  }

LABEL_27:
}

- (void)initWithAssertions:(void *)assertions
{
  v3 = a2;
  if (assertions)
  {
    v19.receiver = assertions;
    v19.super_class = RBAssertionResolutionContext;
    assertions = objc_msgSendSuper2(&v19, sel_init);
    if (assertions)
    {
      v4 = [v3 mutableCopy];
      v5 = assertions[1];
      assertions[1] = v4;

      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = assertions[2];
      assertions[2] = v6;

      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v9 = assertions[3];
      assertions[3] = v8;

      v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v11 = assertions[4];
      assertions[4] = v10;

      v12 = objc_alloc_init(RBProcessMap);
      v13 = assertions[6];
      assertions[6] = v12;

      v14 = objc_alloc_init(RBProcessMap);
      v15 = assertions[7];
      assertions[7] = v14;

      v16 = objc_alloc_init(RBAttributeContext);
      v17 = assertions[8];
      assertions[8] = v16;
    }
  }

  return assertions;
}

- (void)setAssertionCollection:(uint64_t)collection
{
  if (collection)
  {
    objc_storeStrong((collection + 80), a2);
  }
}

- (void)setProcessIndex:(uint64_t)index
{
  if (index)
  {
    objc_storeStrong((index + 88), a2);
  }
}

- (void)setStateMap:(uint64_t)map
{
  if (map)
  {
    objc_storeStrong((map + 96), a2);
  }
}

- (void)setDomainAttributeManager:(uint64_t)manager
{
  if (manager)
  {
    objc_storeStrong((manager + 104), a2);
  }
}

- (void)setBundlePropertiesManager:(uint64_t)manager
{
  if (manager)
  {
    objc_storeStrong((manager + 112), a2);
  }
}

- (void)setEntitlementManager:(uint64_t)manager
{
  if (manager)
  {
    objc_storeStrong((manager + 120), a2);
  }
}

- (void)setSavedEndowments:(uint64_t)endowments
{
  if (endowments)
  {
    objc_storeStrong((endowments + 128), a2);
  }
}

- (void)setSystemState:(uint64_t)state
{
  if (state)
  {
    objc_storeStrong((state + 136), a2);
  }
}

- (RBAttributeContext)_createContextForAssertion:(void *)assertion
{
  if (assertion)
  {
    v3 = a2;
    v4 = objc_alloc_init(RBAttributeContext);
    [(RBAttributeContext *)v4 setDomainAttributeManager:assertion[13]];
    [(RBAttributeContext *)v4 setBundlePropertiesManager:assertion[14]];
    [(RBAttributeContext *)v4 setEntitlementManager:assertion[15]];
    [(RBAttributeContext *)v4 setAssertion:v3];
    v5 = [assertion _originatorInheritancesForAssertion:v3];

    [(RBAttributeContext *)v4 setAvailableInheritances:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_resolveProcessStateForTarget:(uint64_t)a1 ofType:(uint64_t)a2 viaAssertion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBAssertionStateResolver.m" lineNumber:537 description:@"cannot get this far without state"];
}

@end