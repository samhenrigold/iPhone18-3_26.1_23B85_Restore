@interface BKHIDEventDeliveryManager
- (BKHIDEventDeliveryManager)init;
- (BKHIDEventDeliveryManager)initWithObserverService:(id)service;
- (BKSHIDEventDisplay)mainDisplay;
- (NSDictionary)currentBuffersPerDispatchTarget;
- (id)_lock_clientWithPID:(int)d createIfNeeded:;
- (id)_lock_destinationsForEvent:(void *)event sender:;
- (id)_lock_destinationsForKeyCommand:(void *)command sender:(void *)sender transcript:;
- (id)_lock_processDescriptionForPID:(uint64_t)d;
- (id)_lock_resolveDeferringChainForPID:(uint64_t)d display:(uint64_t)display environment:(void *)environment dispatchingTarget:(void *)target eventDescriptor:(void *)descriptor getTargetOrder:(void *)order;
- (id)_lock_resolveEventDescriptor:(void *)descriptor senderDescriptor:(void *)senderDescriptor transcript:;
- (id)_publishedChainFromDeliveryChain:(uint64_t)chain;
- (id)_test_deliveryRootForIdentifier:(id)identifier;
- (id)connectionDescriptionForDeferringRuleIdentity:(id)identity;
- (id)deliveryChainsDescription;
- (id)deliveryChainsForDeferringTarget:(id)target display:(id)display environment:(id)environment event:(__IOHIDEvent *)event;
- (id)deliveryGraphDescription;
- (id)descriptionOfResolutionPathForEventDescriptor:(id)descriptor senderDescriptor:(id)senderDescriptor;
- (id)descriptionOfResolutionPathForKeyCommand:(id)command senderDescriptor:(id)descriptor;
- (id)destinationsForEvent:(__IOHIDEvent *)event sender:(id)sender;
- (id)destinationsForKeyCommand:(id)command sender:(id)sender;
- (id)destinationsStartingFromPID:(int)d deferringPredicate:(id)predicate;
- (id)sequenceForFirstEvent:(__IOHIDEvent *)event sender:(id)sender processor:(id)processor dispatcher:(id)dispatcher additionalContext:(id)context;
- (id)sequenceForKeyCommand:(id)command sender:(id)sender processor:(id)processor dispatcher:(id)dispatcher additionalContext:(id)context;
- (uint64_t)_lock_verifyProvenance:(uint64_t)provenance;
- (void)_fireTimeoutForPID:(int)d bufferingPredicates:(id)predicates client:(id)client;
- (void)_lock_notifyObserversForReason:(void *)reason chainsMayUpdate:;
- (void)_lock_setDeferringRules:(int)rules forClientWithPID:;
- (void)_lock_setDispatchingRoots:(uint64_t)roots forClientWithPID:;
- (void)_lock_setEventBufferingPredicates:(uint64_t)predicates forClientWithPID:;
- (void)_lock_setKeyCommandRoots:(uint64_t)roots forClientWithPID:;
- (void)_lock_setKeyCommandsRegistrations:(uint64_t)registrations forClientWithPID:;
- (void)dealloc;
- (void)processDidTerminate:(int)terminate;
- (void)reevaluateBufferingWithContext:(id)context;
- (void)requestSelectionChanges:(id)changes forClientWithPID:(int)d;
- (void)setConstraintAssertions:(id)assertions forClientWithPID:(int)d;
- (void)setDeferringRules:(id)rules forClientWithPID:(int)d;
- (void)setDispatchingRoots:(id)roots forClientWithPID:(int)d;
- (void)setEventBufferingPredicates:(id)predicates forClientWithPID:(int)d;
- (void)setKeyCommandRoots:(id)roots forClientWithPID:(int)d;
- (void)setKeyCommandsRegistrations:(id)registrations forClientWithPID:(int)d;
- (void)setMainDisplay:(id)display;
- (void)setModalityAssertions:(id)assertions forClientWithPID:(int)d;
@end

@implementation BKHIDEventDeliveryManager

- (void)_fireTimeoutForPID:(int)d bufferingPredicates:(id)predicates client:(id)client
{
  v15 = *MEMORY[0x277D85DE8];
  predicatesCopy = predicates;
  clientCopy = client;
  os_unfair_lock_lock(&self->_lock);
  [(BSMutableIntegerMap *)self->_bufferingPredicatesByPID removeObjectForKey:d];
  [(BKHIDEventBufferingHIDSystem *)self->_bufferingDispatcher requestBufferReevaluationWithContext:0];
  os_unfair_lock_unlock(&self->_lock);
  v10 = BKLogEventDelivery();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CF0C08] descriptionForRootObject:predicatesCopy];
    v12[0] = 67109378;
    v12[1] = d;
    v13 = 2114;
    v14 = v11;
    _os_log_impl(&dword_223CBE000, v10, OS_LOG_TYPE_DEFAULT, "buffering timed out for pid:%d: %{public}@", v12, 0x12u);
  }

  [(BKHIDEventDeliveryClient *)clientCopy setBufferTimer:?];
}

- (id)_test_deliveryRootForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_deliveryRoots;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (v9)
        {
          v10 = v9[1];
        }

        else
        {
          v10 = 0;
        }

        if ([identifierCopy isEqualToString:{v10, v13}])
        {
          v6 = v9;
          goto LABEL_15;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v11 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v6 = v11;
    }

    while (v11);
  }

LABEL_15:

  return v6;
}

- (id)descriptionOfResolutionPathForKeyCommand:(id)command senderDescriptor:(id)descriptor
{
  commandCopy = command;
  descriptorCopy = descriptor;
  os_unfair_lock_lock(&self->_lock);
  v8 = objc_alloc_init(BKEventGraphDescriptionAccumulator);
  [(BKEventGraphDescriptionAccumulator *)v8 appendNode:commandCopy];
  v9 = [(BKHIDEventDeliveryManager *)self _lock_destinationsForKeyCommand:commandCopy sender:descriptorCopy transcript:v8];
  os_unfair_lock_unlock(&self->_lock);
  build = [(BKEventGraphDescriptionAccumulator *)v8 build];

  return build;
}

- (id)_lock_destinationsForKeyCommand:(void *)command sender:(void *)sender transcript:
{
  v176 = *MEMORY[0x277D85DE8];
  v124 = a2;
  commandCopy = command;
  senderCopy = sender;
  if (self)
  {
    os_unfair_lock_assert_owner((self + 8));
    v100 = commandCopy;
    associatedDisplay = [commandCopy associatedDisplay];
    if (!associatedDisplay)
    {
      associatedDisplay = [MEMORY[0x277CF0698] nullDisplay];
    }

    v9 = [MEMORY[0x277CBEB58] set];
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    obj = *(self + 96);
    v101 = [obj countByEnumeratingWithState:&v161 objects:v173 count:16];
    v102 = v9;
    if (v101)
    {
      v99 = *v162;
      selfCopy = self;
      v121 = senderCopy;
      do
      {
        v10 = 0;
        do
        {
          if (*v162 != v99)
          {
            objc_enumerationMutation(obj);
          }

          v104 = v10;
          v11 = *(*(&v161 + 1) + 8 * v10);
          v12 = BKLogEventDeliveryMatching();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *v175 = v11;
            _os_log_debug_impl(&dword_223CBE000, v12, OS_LOG_TYPE_DEBUG, "KCMD: examine root %{public}@", buf, 0xCu);
          }

          if (senderCopy)
          {
            if (v11)
            {
              v13 = *(v11 + 8);
            }

            else
            {
              v13 = 0;
            }

            [(BKEventGraphDescriptionAccumulator *)senderCopy appendSubnode:v13];
          }

          if (v11)
          {
            v14 = *(v11 + 16);
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
          predicate = [v15 predicate];
          senderDescriptors = [predicate senderDescriptors];
          v17 = _BKHIDEventSenderMatchesSenderSet(v100, senderDescriptors, *(self + 56));

          if (!v17)
          {
            goto LABEL_113;
          }

          v98 = v15;
          targets = [v15 targets];
          array = [MEMORY[0x277CBEB18] array];
          array2 = [MEMORY[0x277CBEB18] array];
          v157 = 0u;
          v158 = 0u;
          v159 = 0u;
          v160 = 0u;
          v105 = targets;
          v107 = [v105 countByEnumeratingWithState:&v157 objects:v172 count:16];
          if (!v107)
          {
            goto LABEL_105;
          }

          v106 = *v158;
          do
          {
            v19 = 0;
            do
            {
              if (*v158 != v106)
              {
                objc_enumerationMutation(v105);
              }

              v108 = v19;
              v20 = *(*(&v157 + 1) + 8 * v19);
              v21 = BKLogEventDeliveryMatching();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                *v175 = v20;
                _os_log_debug_impl(&dword_223CBE000, v21, OS_LOG_TYPE_DEBUG, "KCMD: examine key command target %{public}@", buf, 0xCu);
              }

              pushSection = [senderCopy pushSection];
              [(BKEventGraphDescriptionAccumulator *)senderCopy appendSubnode:v20];
              v22 = [v20 pid];
              deferringEnvironment = [v20 deferringEnvironment];
              v156 = 0;
              selfCopy2 = self;
              v127 = deferringEnvironment;
              v25 = [BKHIDEventDeliveryManager _lock_resolveDeferringChainForPID:self display:v22 environment:associatedDisplay dispatchingTarget:deferringEnvironment eventDescriptor:v20 getTargetOrder:&v156];
              v26 = v156;
              v152 = 0u;
              v153 = 0u;
              v154 = 0u;
              v155 = 0u;
              v109 = v26;
              reverseObjectEnumerator = [v26 reverseObjectEnumerator];
              v27 = [reverseObjectEnumerator countByEnumeratingWithState:&v152 objects:v171 count:16];
              if (!v27)
              {
                goto LABEL_102;
              }

              v28 = v27;
              v29 = *v153;
              v30 = 0xFFFFFFFFLL;
              v118 = v20;
              v112 = *v153;
LABEL_27:
              v31 = 0;
              v32 = v30;
              v113 = v28;
              while (1)
              {
                if (*v153 != v29)
                {
                  objc_enumerationMutation(reverseObjectEnumerator);
                }

                v33 = *(*(&v152 + 1) + 8 * v31);
                v34 = _BKDeferringTargetForResolutionTranscript(v33);
                [(BKEventGraphDescriptionAccumulator *)senderCopy appendSubnode:v34];

                pushSection2 = [senderCopy pushSection];
                v36 = BKLogEventDeliveryMatching();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  *v175 = v33;
                  _os_log_debug_impl(&dword_223CBE000, v36, OS_LOG_TYPE_DEBUG, "KCMD: examine deferring target %{public}@", buf, 0xCu);
                }

                v131 = v33;
                v37 = [v33 pid];
                if (v32 != v37)
                {
                  break;
                }

                v38 = BKLogEventDeliveryMatching();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  *v175 = v33;
                  _os_log_debug_impl(&dword_223CBE000, v38, OS_LOG_TYPE_DEBUG, "KCMD:  dropping prior target %{public}@", buf, 0xCu);
                }

                v30 = v32;
LABEL_96:

                ++v31;
                v32 = v30;
                if (v31 == v28)
                {
                  v87 = [reverseObjectEnumerator countByEnumeratingWithState:&v152 objects:v171 count:16];
                  v28 = v87;
                  if (!v87)
                  {
                    goto LABEL_102;
                  }

                  goto LABEL_27;
                }
              }

              v39 = v37;
              v40 = [*(selfCopy2 + 128) objectForKey:v37];
              v123 = v39;
              v115 = v40;
              if (v40)
              {
                v41 = *(v40 + 48);
              }

              else
              {
                v41 = 0;
              }

              v116 = pushSection2;
              v117 = v31;
              v42 = v41;
              keyboardFocusEnvironment = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
              v148 = 0u;
              v149 = 0u;
              v150 = 0u;
              v151 = 0u;
              v44 = v42;
              v45 = [v44 countByEnumeratingWithState:&v148 objects:v170 count:16];
              if (v45)
              {
                v46 = v45;
                v47 = 0;
                v48 = *v149;
                v49 = v131;
                do
                {
                  for (i = 0; i != v46; ++i)
                  {
                    if (*v149 != v48)
                    {
                      objc_enumerationMutation(v44);
                    }

                    deferringEnvironment2 = [*(*(&v148 + 1) + 8 * i) deferringEnvironment];
                    v52 = [deferringEnvironment2 isEqual:keyboardFocusEnvironment];

                    v47 |= v52 ^ 1;
                  }

                  v46 = [v44 countByEnumeratingWithState:&v148 objects:v170 count:16];
                }

                while (v46);
              }

              else
              {
                v47 = 0;
                v49 = v131;
              }

              v146 = 0u;
              v147 = 0u;
              v144 = 0u;
              v145 = 0u;
              v122 = v44;
              senderCopy = v121;
              v129 = [v122 countByEnumeratingWithState:&v144 objects:v169 count:16];
              if (v129)
              {
                v128 = *v145;
                do
                {
                  v53 = 0;
                  do
                  {
                    if (*v145 != v128)
                    {
                      objc_enumerationMutation(v122);
                    }

                    v54 = *(*(&v144 + 1) + 8 * v53);
                    v55 = BKLogEventDeliveryMatching();
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138543618;
                      *v175 = v54;
                      *&v175[8] = 2114;
                      *&v175[10] = v124;
                      _os_log_debug_impl(&dword_223CBE000, v55, OS_LOG_TYPE_DEBUG, "KCMD: examine registration %{public}@ looking for %{public}@", buf, 0x16u);
                    }

                    deferringEnvironment3 = [v54 deferringEnvironment];
                    if (v47)
                    {
                      v57 = [v127 isEqual:deferringEnvironment3];
                      v58 = BKLogEventDeliveryMatching();
                      v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG);
                      if (!v57)
                      {
                        if (v59)
                        {
                          *buf = 138543618;
                          *v175 = v127;
                          *&v175[8] = 2114;
                          *&v175[10] = deferringEnvironment3;
                          _os_log_debug_impl(&dword_223CBE000, v58, OS_LOG_TYPE_DEBUG, "KCMD: environment mismatch want:%{public}@ got:%{public}@", buf, 0x16u);
                        }

                        goto LABEL_89;
                      }

                      if (v59)
                      {
                        *buf = 138543362;
                        *v175 = deferringEnvironment3;
                        _os_log_debug_impl(&dword_223CBE000, v58, OS_LOG_TYPE_DEBUG, "KCMD: environment %{public}@", buf, 0xCu);
                      }

                      [(BKEventGraphDescriptionAccumulator *)senderCopy appendSubnode:deferringEnvironment3];
                    }

                    if (senderCopy)
                    {
                      v60 = _BKDeferringTargetForResolutionTranscript(v49);
                      [(BKEventGraphDescriptionAccumulator *)senderCopy appendSubnode:v60, deferringEnvironment3];
                    }

                    v132 = v53;
                    v61 = v124;
                    keyCommands = [v54 keyCommands];
                    v165 = 0u;
                    v166 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v63 = keyCommands;
                    v64 = [v63 countByEnumeratingWithState:&v165 objects:buf count:16];
                    if (v64)
                    {
                      v65 = v64;
                      v125 = v54;
                      v126 = deferringEnvironment3;
                      v66 = 0;
                      v67 = 0;
                      v68 = *v166;
                      while (2)
                      {
                        for (j = 0; j != v65; ++j)
                        {
                          if (*v166 != v68)
                          {
                            objc_enumerationMutation(v63);
                          }

                          v70 = *(*(&v165 + 1) + 8 * j);
                          v67 |= [v70 describes:v61];
                          if (v67)
                          {
                            v71 = v70;
                            v66 = v70;
                            if (v67 == 3)
                            {

                              v72 = v70;
                              senderCopy = v121;
                              v73 = BKLogEventDeliveryMatching();
                              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                              {
                                deferringEnvironment4 = [v125 deferringEnvironment];
                                *buf = 67109378;
                                *v175 = v123;
                                *&v175[4] = 2114;
                                *&v175[6] = deferringEnvironment4;
                                _os_log_impl(&dword_223CBE000, v73, OS_LOG_TYPE_DEFAULT, "KCMD: match in pid:%d %{public}@", buf, 0x12u);
                              }

                              if (v121)
                              {
                                deferringEnvironment5 = [v125 deferringEnvironment];
                                [(BKEventGraphDescriptionAccumulator *)v121 appendSubnode:v123, deferringEnvironment5, v72];
                              }

                              v76 = MEMORY[0x277CF0638];
                              v133[0] = MEMORY[0x277D85DD0];
                              v133[1] = 3221225472;
                              v133[2] = __79__BKHIDEventDeliveryManager__lock_destinationsForKeyCommand_sender_transcript___block_invoke_203;
                              v133[3] = &unk_2784F6630;
                              v134 = associatedDisplay;
                              v135 = selfCopy;
                              v136 = v127;
                              v137 = v131;
                              v138 = v118;
                              v77 = [v76 build:v133];
                              [array addObject:v77];

                              deferringEnvironment8 = v134;
                              deferringEnvironment3 = v126;
                              goto LABEL_83;
                            }
                          }
                        }

                        v65 = [v63 countByEnumeratingWithState:&v165 objects:buf count:16];
                        if (v65)
                        {
                          continue;
                        }

                        break;
                      }

                      v72 = v66;
                      senderCopy = v121;
                      v54 = v125;
                      deferringEnvironment3 = v126;
                      if (v67 == 1)
                      {
                        if (v121)
                        {
                          deferringEnvironment6 = [v125 deferringEnvironment];
                          [(BKEventGraphDescriptionAccumulator *)v121 appendSubnode:v123, deferringEnvironment6, v72];
                        }

                        v83 = MEMORY[0x277CF0638];
                        v139[0] = MEMORY[0x277D85DD0];
                        v139[1] = 3221225472;
                        v139[2] = __79__BKHIDEventDeliveryManager__lock_destinationsForKeyCommand_sender_transcript___block_invoke;
                        v139[3] = &unk_2784F69A8;
                        v140 = associatedDisplay;
                        v141 = v127;
                        v142 = v131;
                        v143 = v118;
                        v84 = [v83 build:v139];
                        [array2 addObject:v84];

                        deferringEnvironment8 = v140;
                        goto LABEL_83;
                      }

                      if (!v67)
                      {
                        goto LABEL_79;
                      }
                    }

                    else
                    {

                      v72 = 0;
LABEL_79:
                      v79 = BKLogEventDeliveryMatching();
                      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                      {
                        deferringEnvironment7 = [v54 deferringEnvironment];
                        *buf = 67109378;
                        *v175 = v123;
                        *&v175[4] = 2114;
                        *&v175[6] = deferringEnvironment7;
                        _os_log_impl(&dword_223CBE000, v79, OS_LOG_TYPE_DEFAULT, "KCMD: no match in pid:%d %{public}@", buf, 0x12u);
                      }

                      if (senderCopy)
                      {
                        deferringEnvironment8 = [v54 deferringEnvironment];
                        [(BKEventGraphDescriptionAccumulator *)senderCopy appendSubnode:v123, deferringEnvironment8];
LABEL_83:
                      }
                    }

                    v81 = [array count];

                    v49 = v131;
                    v53 = v132;
                    if (v81)
                    {

                      goto LABEL_95;
                    }

LABEL_89:

                    ++v53;
                  }

                  while (v53 != v129);
                  v85 = [v122 countByEnumeratingWithState:&v144 objects:v169 count:16];
                  v129 = v85;
                }

                while (v85);
              }

LABEL_95:

              pushSection2 = v116;
              [senderCopy popSection:v116];
              v86 = [array count];

              selfCopy2 = selfCopy;
              v29 = v112;
              v28 = v113;
              v31 = v117;
              v30 = v123;
              if (!v86)
              {
                goto LABEL_96;
              }

LABEL_102:
              [senderCopy popSection:pushSection];
              v88 = [array count];

              self = selfCopy2;
              if (v88)
              {
                goto LABEL_105;
              }

              v19 = v108 + 1;
            }

            while (v108 + 1 != v107);
            v107 = [v105 countByEnumeratingWithState:&v157 objects:v172 count:16];
          }

          while (v107);
LABEL_105:

          if ([array count])
          {
            v89 = BKLogEventDeliveryMatching();
            if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              v90 = array;
              goto LABEL_111;
            }

            v90 = array;
            v91 = _BKResolutionDescriptionForLogging(array, 0);
            *buf = 138543362;
            *v175 = v91;
            v92 = v89;
            v93 = "  ->completeDestinations:%{public}@";
LABEL_117:
            _os_log_debug_impl(&dword_223CBE000, v92, OS_LOG_TYPE_DEBUG, v93, buf, 0xCu);

            goto LABEL_111;
          }

          if ([array2 count])
          {
            v89 = BKLogEventDeliveryMatching();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              v90 = array2;
              v91 = _BKResolutionDescriptionForLogging(array2, 0);
              *buf = 138543362;
              *v175 = v91;
              v92 = v89;
              v93 = "  ->partialDestinations:%{public}@";
              goto LABEL_117;
            }

            v90 = array2;
LABEL_111:

            [v102 addObjectsFromArray:v90];
          }

          v15 = v98;
LABEL_113:

          v10 = v104 + 1;
          v9 = v102;
        }

        while (v104 + 1 != v101);
        v94 = [obj countByEnumeratingWithState:&v161 objects:v173 count:16];
        v101 = v94;
      }

      while (v94);
    }

    commandCopy = v100;
    if (senderCopy)
    {
      if ([v9 count])
      {
        v95 = _BKResolutionDescriptionForLogging(v9, 1);
        [(BKEventGraphDescriptionAccumulator *)senderCopy appendNode:v95];

        v9 = v102;
      }

      else
      {
        [(BKEventGraphDescriptionAccumulator *)senderCopy appendNode:?];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_lock_resolveDeferringChainForPID:(uint64_t)d display:(uint64_t)display environment:(void *)environment dispatchingTarget:(void *)target eventDescriptor:(void *)descriptor getTargetOrder:(void *)order
{
  v36[1] = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  targetCopy = target;
  if (d)
  {
    descriptorCopy = descriptor;
    os_unfair_lock_assert_owner((d + 8));
    v14 = [(BKEventDeferringGraph *)*(d + 112) deferringPathForPID:display environment:targetCopy display:environmentCopy dispatchTarget:descriptorCopy returnModalities:0];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __132__BKHIDEventDeliveryManager__lock_resolveDeferringChainForPID_display_environment_dispatchingTarget_eventDescriptor_getTargetOrder___block_invoke;
    v34[3] = &unk_2784F6658;
    v35 = 0;
    v15 = [v14 indexOfObjectPassingTest:v34];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [v14 subarrayWithRange:{0, v15}];

      v14 = v16;
    }

    lastObject = [v14 lastObject];
    v18 = 0x277CF0000uLL;
    if (!lastObject)
    {
      goto LABEL_12;
    }

    v19 = lastObject;
    orderCopy = order;
    v33 = targetCopy;
    v20 = *(lastObject + 16);
    v21 = objc_alloc_init(MEMORY[0x277CF0738]);
    predicate = [v20 predicate];
    environment = [predicate environment];
    [v21 setEnvironment:environment];

    if (v20)
    {
      target = [v20 target];
      predicate2 = [v20 predicate];
      display = [predicate2 display];

      if (!display)
      {
        display = [MEMORY[0x277CF0698] nullDisplay];
      }

      v27 = [target pid];
      [v21 setDisplay:display];
      [v21 setPid:v27];
      token = [target token];
      [v21 setToken:token];

      v18 = 0x277CF0000;
    }

    order = orderCopy;
    targetCopy = v33;
    if (v21)
    {
      if (orderCopy)
      {
        *orderCopy = [v14 bs_compactMap:&__block_literal_global_216];
      }
    }

    else
    {
LABEL_12:
      v21 = objc_alloc_init(*(v18 + 1848));
      if (!environmentCopy)
      {
        environmentCopy = [MEMORY[0x277CF0698] nullDisplay];
      }

      [v21 setEnvironment:targetCopy];
      [v21 setDisplay:environmentCopy];
      [v21 setPid:display];
      [v21 setToken:0];
      if (order)
      {
        v29 = objc_opt_new();
        [v29 setPid:display];
        v36[0] = v29;
        *order = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
      }
    }

    v30 = -[BKHIDEventDeliveryManager _lock_processDescriptionForPID:](d, [v21 pid]);
    [v21 setProcessDescription:v30];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __79__BKHIDEventDeliveryManager__lock_destinationsForKeyCommand_sender_transcript___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setDisplay:v3];
  [v5 setEnvironment:*(a1 + 40)];
  [v5 setPid:{objc_msgSend(*(a1 + 48), "pid")}];
  v4 = [*(a1 + 48) token];
  [v5 setToken:v4];

  [v5 setDispatchingTarget:*(a1 + 56)];
}

void __79__BKHIDEventDeliveryManager__lock_destinationsForKeyCommand_sender_transcript___block_invoke_203(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    v3 = *(*(a1 + 40) + 56);
  }

  v5 = a2;
  [v5 setDisplay:v3];
  [v5 setEnvironment:*(a1 + 48)];
  [v5 setPid:{objc_msgSend(*(a1 + 56), "pid")}];
  v4 = [*(a1 + 56) token];
  [v5 setToken:v4];

  [v5 setDispatchingTarget:*(a1 + 64)];
}

uint64_t __132__BKHIDEventDeliveryManager__lock_resolveDeferringChainForPID_display_environment_dispatchingTarget_eventDescriptor_getTargetOrder___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 eventDescriptorIsRestricted:*(a1 + 32)];

  return v5;
}

- (id)_lock_processDescriptionForPID:(uint64_t)d
{
  if (d)
  {
    v2 = a2;
    os_unfair_lock_assert_owner((d + 8));
    v4 = [*(d + 128) objectForKey:v2];
    v5 = v4;
    if (!v4 || (v6 = *(v4 + 16)) == 0)
    {
      v6 = BSProcessDescriptionForPID();
      [(BKHIDEventDeliveryClient *)v5 setProcessDescription:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __132__BKHIDEventDeliveryManager__lock_resolveDeferringChainForPID_display_environment_dispatchingTarget_eventDescriptor_getTargetOrder___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = [v3 target];

  return v4;
}

- (id)connectionDescriptionForDeferringRuleIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_alloc_init(BKStringTranscriptTarget);
  deferringGraph = self->_deferringGraph;
  v7 = identityCopy;
  v8 = v5;
  if (deferringGraph)
  {
    _dictionaryWithGraphToIdentityMapping = [(BKEventDeferringGraph *)deferringGraph _dictionaryWithGraphToIdentityMapping];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__BKEventDeferringGraph_logConnectionDescriptionForDeferringRuleIdentity_toTarget___block_invoke;
    v12[3] = &unk_2784F6D68;
    v13 = v7;
    v14 = v8;
    v15 = deferringGraph;
    [_dictionaryWithGraphToIdentityMapping enumerateKeysAndObjectsUsingBlock:v12];
  }

  os_unfair_lock_unlock(&self->_lock);
  build = [(BKStringTranscriptTarget *)v8 build];

  return build;
}

- (id)deliveryChainsDescription
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    v3 = objc_alloc_init(BKStringTranscriptTarget);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = self->_deliveryRoots;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * v8);
          deferringGraph = self->_deferringGraph;
          if (v9)
          {
            v11 = *(v9 + 32);
            v12 = *(v9 + 8);
          }

          else
          {
            v11 = 0;
            v12 = 0;
          }

          v13 = [(BKEventDeferringGraph *)deferringGraph describeDeliveryChains:v11 identifier:v12, v17];

          [(BKStringTranscriptTarget *)v3 writeString:@"\n"];
          [(BKStringTranscriptTarget *)v3 writeString:v13];

          ++v8;
        }

        while (v6 != v8);
        v14 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v6 = v14;
      }

      while (v14);
    }

    [(BKStringTranscriptTarget *)v3 writeString:@"\n"];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  build = [(BKStringTranscriptTarget *)v3 build];

  return build;
}

- (id)deliveryGraphDescription
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    v3 = objc_alloc_init(BKStringTranscriptTarget);
    [(BKEventDeferringGraph *)self->_deferringGraph logGraphToTarget:v3];
    v4 = objc_alloc_init(MEMORY[0x277CF0C08]);
    deliveryRoots = self->_deliveryRoots;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__BKHIDEventDeliveryManager__lock_deliveryGraphDescriptionTarget__block_invoke;
    v10[3] = &unk_2784F65B8;
    v11 = v4;
    v6 = v4;
    [v6 appendCollection:deliveryRoots withName:0 itemBlock:v10];
    v7 = [v6 description];
    [(BKStringTranscriptTarget *)v3 writeString:v7];

    [(BKStringTranscriptTarget *)v3 writeString:@"\n"];
    [(BKEventDeferringGraph *)self->_deferringGraph logRulesToTarget:v3];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  build = [(BKStringTranscriptTarget *)v3 build];

  return build;
}

void __65__BKHIDEventDeliveryManager__lock_deliveryGraphDescriptionTarget__block_invoke(uint64_t a1, id *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = a2;
    a2 = a2[2];
    v4 = v3[1];
  }

  else
  {
    v4 = 0;
  }

  v6 = a2;
  v5 = [v2 appendObject:a2 withName:v4];
}

- (id)descriptionOfResolutionPathForEventDescriptor:(id)descriptor senderDescriptor:(id)senderDescriptor
{
  descriptorCopy = descriptor;
  senderDescriptorCopy = senderDescriptor;
  os_unfair_lock_lock(&self->_lock);
  v8 = objc_alloc_init(BKStringTranscriptTarget);
  v9 = [(BKHIDEventDeliveryManager *)self _lock_resolveEventDescriptor:descriptorCopy senderDescriptor:senderDescriptorCopy transcript:v8];
  os_unfair_lock_unlock(&self->_lock);
  build = [(BKStringTranscriptTarget *)v8 build];

  return build;
}

- (id)_lock_resolveEventDescriptor:(void *)descriptor senderDescriptor:(void *)senderDescriptor transcript:
{
  v94 = *MEMORY[0x277D85DE8];
  v7 = a2;
  descriptorCopy = descriptor;
  senderDescriptorCopy = senderDescriptor;
  if (self)
  {
    os_unfair_lock_assert_owner((self + 8));
    v60 = [MEMORY[0x277CBEB58] set];
    hidEventType = [v7 hidEventType];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    selfCopy = self;
    obj = *(self + 80);
    v72 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
    if (v72)
    {
      v67 = 0;
      v69 = *v84;
      v70 = 1 << hidEventType;
      v63 = senderDescriptorCopy;
      v64 = v7;
      do
      {
        v10 = 0;
        do
        {
          if (*v84 != v69)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v83 + 1) + 8 * v10);
          if (v11)
          {
            v12 = v11[6];
          }

          else
          {
            v12 = 0;
          }

          if ((v12 & v70) != 0)
          {
            v75 = v10;
            v13 = v11;
            v14 = v7;
            v15 = descriptorCopy;
            v76 = v14;
            hidEventType2 = [v14 hidEventType];
            v71 = v11;
            if (v11)
            {
              v17 = v13[2];
            }

            else
            {
              v17 = 0;
            }

            v18 = v17;
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            v90 = 0u;
            v19 = v18;
            v20 = [v19 countByEnumeratingWithState:&v87 objects:v93 count:16];
            v73 = v13;
            if (v20)
            {
              v21 = v20;
              v22 = 1 << hidEventType2;
              v23 = *v88;
              while (2)
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v88 != v23)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v25 = *(*(&v87 + 1) + 8 * i);
                  predicateEventTypeMask = [v25 predicateEventTypeMask];
                  if (predicateEventTypeMask == 1 || (predicateEventTypeMask & v22) != 0)
                  {
                    predicate = [v25 predicate];
                    senderDescriptors = [predicate senderDescriptors];
                    v30 = _BKHIDEventSenderMatchesSenderSet(v15, senderDescriptors, *(selfCopy + 56));

                    if (v30 && ([predicate specifiesDescriptor:v76] & 1) != 0)
                    {
                      v31 = v25;

                      goto LABEL_28;
                    }
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v87 objects:v93 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }

              v31 = 0;
LABEL_28:
              senderDescriptorCopy = v63;
              v7 = v64;
              v13 = v73;
            }

            else
            {
              v31 = 0;
            }

            if (v31)
            {
              associatedDisplay = [v15 associatedDisplay];
              if (!associatedDisplay)
              {
                associatedDisplay = [MEMORY[0x277CF0698] nullDisplay];
              }

              target = [v31 target];
              deferringEnvironment = [target deferringEnvironment];
              v34 = [objc_alloc(MEMORY[0x277CF05F8]) initWithDisplay:associatedDisplay environment:deferringEnvironment];
              if (v71)
              {
                v35 = v13[4];
              }

              else
              {
                v35 = 0;
              }

              v36 = v35;
              v37 = [v36 objectForKey:v34];
              v66 = v36;
              if (v37)
              {
                v38 = v37;
              }

              else
              {
                v39 = objc_alloc(MEMORY[0x277CF05F8]);
                nullDisplay = [MEMORY[0x277CF0698] nullDisplay];
                v41 = [v39 initWithDisplay:nullDisplay environment:deferringEnvironment];

                v38 = [v36 objectForKey:v41];
                v34 = v41;
              }

              v42 = [(BKEventDeliveryChain *)v38 resolutionPathForEventDescriptor:v76];
              lastObject = [v42 lastObject];

              if (lastObject)
              {
                [v60 addObject:lastObject];
                if (senderDescriptorCopy)
                {
                  if (v71)
                  {
                    v44 = v73[1];
                  }

                  else
                  {
                    v44 = 0;
                  }

                  v45 = v44;
                  if (v38)
                  {
                    v46 = v38[2];
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v47 = v46;
                  v48 = [v47 describeDeliveryChain:v38 identifier:v45];

                  v74 = v48;
                  [senderDescriptorCopy writeString:v48];
                  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v45, v31];
                  [v49 addObject:v50];

                  v81 = 0u;
                  v82 = 0u;
                  v79 = 0u;
                  v80 = 0u;
                  v61 = target;
                  v77 = v45;
                  if (v38)
                  {
                    v51 = v38[5];
                  }

                  else
                  {
                    v51 = 0;
                  }

                  v52 = v51;
                  v53 = [v52 countByEnumeratingWithState:&v79 objects:v91 count:16];
                  if (v53)
                  {
                    v54 = v53;
                    v55 = *v80;
                    do
                    {
                      for (j = 0; j != v54; ++j)
                      {
                        if (*v80 != v55)
                        {
                          objc_enumerationMutation(v52);
                        }

                        [v49 addObject:*(*(&v79 + 1) + 8 * j)];
                      }

                      v54 = [v52 countByEnumeratingWithState:&v79 objects:v91 count:16];
                    }

                    while (v54);
                  }

                  senderDescriptorCopy = v63;
                  [v63 writeString:@"\nRules: "];
                  v57 = [MEMORY[0x277CF0C08] descriptionForRootObject:v49];
                  [v63 writeString:v57];

                  [v63 writeString:@"\n\n"];
                  v7 = v64;
                  target = v61;
                }
              }

              v67 = 1;
            }

            v10 = v75;
          }

          ++v10;
        }

        while (v10 != v72);
        v58 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
        v72 = v58;
      }

      while (v58);
    }

    else
    {
      v67 = 0;
    }

    if (senderDescriptorCopy && (v67 & 1) == 0)
    {
      [senderDescriptorCopy writeString:@"no matching dispatch rules"];
    }
  }

  else
  {
    v60 = 0;
  }

  return v60;
}

- (id)destinationsForKeyCommand:(id)command sender:(id)sender
{
  v18 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  senderCopy = sender;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = [(BKHIDEventDeliveryManager *)self _lock_destinationsForKeyCommand:commandCopy sender:senderCopy transcript:0];
  os_unfair_lock_unlock(&self->_lock);
  v9 = BKLogEventDelivery();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _BKResolutionDescriptionForLogging(v8, 1);
    v12 = 138543874;
    v13 = commandCopy;
    v14 = 2114;
    v15 = senderCopy;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_223CBE000, v9, OS_LOG_TYPE_DEFAULT, "destinationsForKeyCommand:%{public}@ sender:%{public}@: %{public}@", &v12, 0x20u);
  }

  return v8;
}

- (id)destinationsStartingFromPID:(int)d deferringPredicate:(id)predicate
{
  v70 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  dCopy = d;
  if (d <= 0)
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"pid > 0"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(a2);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138544642;
      *v65 = v37;
      *&v65[8] = 2114;
      *&v65[10] = v39;
      *&v65[18] = 2048;
      *&v65[20] = self;
      *&v65[28] = 2114;
      *&v65[30] = @"BKHIDEventDeliveryManager.m";
      v66 = 1024;
      v67 = 895;
      v68 = 2114;
      v69 = v36;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CCD6E8);
  }

  v8 = predicateCopy;
  if (!predicateCopy)
  {
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"predicate != ((void*)0)"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v41 = NSStringFromSelector(a2);
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      *buf = 138544642;
      *v65 = v41;
      *&v65[8] = 2114;
      *&v65[10] = v43;
      *&v65[18] = 2048;
      *&v65[20] = self;
      *&v65[28] = 2114;
      *&v65[30] = @"BKHIDEventDeliveryManager.m";
      v66 = 1024;
      v67 = 896;
      v68 = 2114;
      v69 = v40;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v40 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CCD7E8);
  }

  v9 = dCopy;
  v49 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  environment = [v8 environment];
  display = [v8 display];
  v45 = v9;
  v10 = [(BSMutableIntegerMap *)self->_clientsByPID objectForKey:v9];
  v11 = v10;
  if (v10 && (v12 = *(v10 + 24)) != 0)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v13 = v12;
    v52 = [v13 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v52)
    {
      obj = v13;
      v50 = *v59;
      v51 = v11;
      do
      {
        v14 = 0;
        do
        {
          if (*v59 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v58 + 1) + 8 * v14);
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v53 = v14;
          if (v15)
          {
            v15 = v15[5];
          }

          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v54 objects:v62 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v55;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v55 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                lastObject = [*(*(&v54 + 1) + 8 * i) lastObject];
                environment2 = [lastObject environment];
                environment3 = [v8 environment];
                v24 = [environment2 isEqual:environment3];

                if (v24)
                {
                  token = [v8 token];
                  if (!token || (v26 = token, [v8 token], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lastObject, "token"), v28 = objc_claimAutoreleasedReturnValue(), v29 = BSEqualObjects(), v28, v27, v26, v29))
                  {
                    [v49 addObject:lastObject];

                    goto LABEL_24;
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v54 objects:v62 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:

          v14 = v53 + 1;
          v11 = v51;
        }

        while (v53 + 1 != v52);
        v52 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v52);
      v13 = obj;
    }

    v30 = v13;
  }

  else
  {
    v13 = [BKHIDEventDeliveryManager _lock_resolveDeferringChainForPID:v9 display:display environment:environment dispatchingTarget:0 eventDescriptor:0 getTargetOrder:?];
    if (v13)
    {
      [v49 addObject:v13];
    }

    v31 = BKLogEventDeliveryMatching();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *v65 = v13;
      _os_log_debug_impl(&dword_223CBE000, v31, OS_LOG_TYPE_DEBUG, " resolved directly: %{public}@", buf, 0xCu);
    }

    v30 = 0;
  }

  v32 = [(BKHIDEventDeliveryManager *)self _lock_processDescriptionForPID:v45];
  os_unfair_lock_unlock(&self->_lock);
  v33 = BKLogEventDelivery();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = _BKResolutionDescriptionForLogging(v49, 1);
    *buf = 67109890;
    *v65 = v45;
    *&v65[4] = 2114;
    *&v65[6] = v32;
    *&v65[14] = 2114;
    *&v65[16] = v8;
    *&v65[24] = 2114;
    *&v65[26] = v34;
    _os_log_impl(&dword_223CBE000, v33, OS_LOG_TYPE_DEFAULT, "destinations startingFromPID:%d (%{public}@) predicate:%{public}@: %{public}@", buf, 0x26u);
  }

  return v49;
}

- (id)deliveryChainsForDeferringTarget:(id)target display:(id)display environment:(id)environment event:(__IOHIDEvent *)event
{
  v71 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  displayCopy = display;
  environmentCopy = environment;
  if (!targetCopy)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"target != ((void*)0)"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(a2);
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      *buf = 138544642;
      v60 = v34;
      v61 = 2114;
      v62 = v36;
      v63 = 2048;
      selfCopy2 = self;
      v65 = 2114;
      v66 = @"BKHIDEventDeliveryManager.m";
      v67 = 1024;
      v68 = 860;
      v69 = 2114;
      v70 = v33;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v33 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CCDC40);
  }

  if (!event)
  {
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"event != ((void*)0)"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(a2);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138544642;
      v60 = v38;
      v61 = 2114;
      v62 = v40;
      v63 = 2048;
      selfCopy2 = self;
      v65 = 2114;
      v66 = @"BKHIDEventDeliveryManager.m";
      v67 = 1024;
      v68 = 861;
      v69 = 2114;
      v70 = v37;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v37 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CCDD38);
  }

  v47 = [objc_alloc(MEMORY[0x277CF05F8]) initWithDisplay:displayCopy environment:environmentCopy];
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  os_unfair_lock_lock(&self->_lock);
  deliveryRootsEventTypeMask = self->_deliveryRootsEventTypeMask;
  if ((deliveryRootsEventTypeMask >> IOHIDEventGetType()))
  {
    v41 = displayCopy;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    selfCopy3 = self;
    obj = self->_deliveryRoots;
    v48 = [(NSMutableArray *)obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v48)
    {
      v46 = *v54;
      do
      {
        v14 = 0;
        do
        {
          if (*v54 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v53 + 1) + 8 * v14);
          if (v15)
          {
            v16 = *(v15 + 32);
          }

          else
          {
            v16 = 0;
          }

          v17 = [v16 objectForKey:v47];
          v18 = v17;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          if (v17)
          {
            v19 = *(v17 + 40);
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;
          v21 = [v20 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v50;
            while (2)
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v50 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v49 + 1) + 8 * i);
                if (v25)
                {
                  v25 = v25[2];
                }

                v26 = v25;
                target = [v26 target];
                v28 = [target isEqual:targetCopy];

                if (v28)
                {
                  v29 = [(BKHIDEventDeliveryManager *)selfCopy3 _publishedChainFromDeliveryChain:v18];
                  [v45 addObject:v29];

                  goto LABEL_25;
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v49 objects:v57 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

LABEL_25:

          ++v14;
        }

        while (v14 != v48);
        v30 = [(NSMutableArray *)obj countByEnumeratingWithState:&v53 objects:v58 count:16];
        v48 = v30;
      }

      while (v30);
    }

    os_unfair_lock_unlock(&selfCopy3->_lock);
    displayCopy = v41;
    if (![v45 count])
    {
      v31 = BKLogEventDelivery();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v60 = targetCopy;
        v61 = 2114;
        v62 = v47;
        _os_log_impl(&dword_223CBE000, v31, OS_LOG_TYPE_DEFAULT, "Unable to find delivery chains for target: %{public}@, chainId: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return v45;
}

- (id)_publishedChainFromDeliveryChain:(uint64_t)chain
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (chain && v3)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = v4[5];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          if (v12)
          {
            v12 = v12[2];
          }

          v13 = v12;
          target = [v13 target];
          [v6 addObject:target];
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v9);
    }

    v15 = v4[3];
    selectionPathIdentifier = [v15 selectionPathIdentifier];

    lastObject = [v7 lastObject];
    v18 = lastObject;
    if (lastObject)
    {
      v19 = *(lastObject + 16);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    predicate = [v20 predicate];
    display = [predicate display];

    v23 = objc_alloc(MEMORY[0x277CF0660]);
    v24 = v4[1];
    v25 = v4[6];
    v5 = [v23 initWithIdentity:v24 compatibilityDisplay:display selectionPath:selectionPathIdentifier path:v6 modalities:v25];
  }

  return v5;
}

- (id)destinationsForEvent:(__IOHIDEvent *)event sender:(id)sender
{
  v33 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  if (!senderCopy)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Must have a valid senderDescriptor"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = 138544642;
      v22 = v18;
      v23 = 2114;
      v24 = v20;
      v25 = 2048;
      selfCopy = self;
      v27 = 2114;
      v28 = @"BKHIDEventDeliveryManager.m";
      v29 = 1024;
      v30 = 844;
      v31 = 2114;
      v32 = v17;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v21, 0x3Au);
    }

    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CCE1FCLL);
  }

  v8 = senderCopy;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(BKHIDEventDeliveryManager *)self _lock_destinationsForEvent:event sender:v8];
  os_unfair_lock_unlock(&self->_lock);
  Type = IOHIDEventGetType();
  if (Type > 0x1F || ((1 << Type) & 0x82309000) == 0 && (Type != 1 || (IntegerValue = IOHIDEventGetIntegerValue(), v13 = IOHIDEventGetIntegerValue(), IntegerValue != 65292) && (IntegerValue != 65280 || v13 != 59)))
  {
    v14 = BKLogEventDelivery();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      IOHIDEventGetType();
      Name = IOHIDEventTypeGetName();
      v16 = _BKResolutionDescriptionForLogging(v9, 1);
      v21 = 138543618;
      v22 = Name;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&dword_223CBE000, v14, OS_LOG_TYPE_DEFAULT, "destinations for %{public}@ event: %{public}@", &v21, 0x16u);
    }
  }

  return v9;
}

- (id)_lock_destinationsForEvent:(void *)event sender:
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (self)
  {
    os_unfair_lock_assert_owner((self + 8));
    v6 = *(self + 88);
    if ((v6 >> IOHIDEventGetType()))
    {
      v7 = [MEMORY[0x277CF0680] descriptorForHIDEvent:a2];
      v8 = [*(self + 144) objectForKey:eventCopy];
      v9 = [v8 objectForKey:v7];
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v11 = BKLogEventDeliveryMatching();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          IOHIDEventGetType();
          v15 = 138543362;
          Name = IOHIDEventTypeGetName();
          _os_log_impl(&dword_223CBE000, v11, OS_LOG_TYPE_DEFAULT, "cache miss for %{public}@ event", &v15, 0xCu);
        }

        v12 = [(BKHIDEventDeliveryManager *)self _lock_resolveEventDescriptor:v7 senderDescriptor:eventCopy transcript:0];
        if ([v12 count])
        {
          v13 = v12;
        }

        else
        {
          v13 = [MEMORY[0x277CBEB98] set];
        }

        v10 = v13;
        if (!v8)
        {
          v8 = objc_opt_new();
          [*(self + 144) setObject:v8 forKey:eventCopy];
        }

        [v8 setObject:v12 forKey:v7];
      }
    }

    else
    {
      v10 = [MEMORY[0x277CBEB98] set];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)requestSelectionChanges:(id)changes forClientWithPID:(int)d
{
  changesCopy = changes;
  os_unfair_lock_lock(&self->_lock);
  v9 = [changesCopy bs_filter:&__block_literal_global_133];

  if ([v9 count])
  {
    v7 = v9;
    v8 = v7;
    if (self)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __76__BKHIDEventDeliveryManager__lock_requestSelectionChanges_forClientWithPID___block_invoke;
      v10[3] = &unk_2784F6608;
      v11 = v7;
      selfCopy = self;
      dCopy = d;
      [(BKHIDEventDeliveryManager *)self _lock_notifyObserversForReason:v10 chainsMayUpdate:?];
      [(NSMutableDictionary *)self->_destinationCacheBySender removeAllObjects];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __76__BKHIDEventDeliveryManager__lock_requestSelectionChanges_forClientWithPID___block_invoke(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v20;
    *&v3 = 67109378;
    v17 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [v7 basis];
        v9 = [v8 eventProvenance];

        if (v9 && ([(BKHIDEventDeliveryManager *)*(a1 + 40) _lock_verifyProvenance:v9]& 1) == 0)
        {
          v15 = BKLogEventDelivery();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = *(a1 + 48);
            *buf = v17;
            *&buf[4] = v16;
            LOWORD(v25) = 2114;
            *(&v25 + 2) = v7;
            _os_log_error_impl(&dword_223CBE000, v15, OS_LOG_TYPE_ERROR, "dropping request from pid:%d (%{public}@)", buf, 0x12u);
          }
        }

        else
        {
          v10 = *(*(a1 + 40) + 112);
          v11 = *(a1 + 48);
          v12 = v7;
          v13 = v12;
          if (v10)
          {
            v29[0] = v12;
            v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
            *buf = MEMORY[0x277D85DD0];
            *&v25 = 3221225472;
            *(&v25 + 1) = __65__BKEventDeferringGraph_requestSelectionChange_forClientWithPID___block_invoke;
            v26 = &unk_2784F6E28;
            v27 = v13;
            v28 = v11;
            [(BKEventDeferringGraph *)v10 _mapSelectionTargetablesByEnvironment:v14 block:buf];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }
}

- (void)_lock_notifyObserversForReason:(void *)reason chainsMayUpdate:
{
  v85 = *MEMORY[0x277D85DE8];
  v40 = a2;
  reasonCopy = reason;
  os_unfair_lock_assert_owner((self + 8));
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  selfCopy = self;
  v7 = *(self + 80);
  v8 = [v7 countByEnumeratingWithState:&v66 objects:v82 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v67;
    do
    {
      v11 = 0;
      do
      {
        if (*v67 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v66 + 1) + 8 * v11);
        if (v12)
        {
          v13 = *(v12 + 32);
        }

        else
        {
          v13 = 0;
        }

        [v5 addEntriesFromDictionary:v13];
        ++v11;
      }

      while (v9 != v11);
      v14 = [v7 countByEnumeratingWithState:&v66 objects:v82 count:16];
      v9 = v14;
    }

    while (v14);
  }

  reasonCopy[2]();
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = *(selfCopy + 80);
  v47 = [obj countByEnumeratingWithState:&v62 objects:v81 count:16];
  if (v47)
  {
    v43 = *v63;
    v44 = v6;
    v45 = v5;
    do
    {
      v15 = 0;
      do
      {
        if (*v63 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v62 + 1) + 8 * v15);
        v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __60__BKHIDEventDeliveryManager__lock_rebuildRootDeliveryPaths___block_invoke;
        v78[3] = &unk_2784F6758;
        v78[4] = selfCopy;
        v49 = v17;
        v51 = v17;
        v79 = v51;
        v48 = v18;
        v50 = v18;
        v80 = v50;
        v19 = MEMORY[0x223DF7D60](v78);
        v52 = v15;
        if (v16)
        {
          v20 = *(v16 + 2);
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v55 = v21;
        v22 = [v21 countByEnumeratingWithState:&v74 objects:v84 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v75;
          v53 = *v75;
          do
          {
            v25 = 0;
            v54 = v23;
            do
            {
              if (*v75 != v24)
              {
                objc_enumerationMutation(v55);
              }

              v26 = *(*(&v74 + 1) + 8 * v25);
              predicate = [v26 predicate];
              senderDescriptors = [predicate senderDescriptors];
              target = [v26 target];
              if (target)
              {
                if (senderDescriptors)
                {
                  v72 = 0u;
                  v73 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  v30 = senderDescriptors;
                  v31 = [v30 countByEnumeratingWithState:&v70 objects:v83 count:16];
                  if (v31)
                  {
                    v32 = v31;
                    v33 = *v71;
                    do
                    {
                      for (i = 0; i != v32; ++i)
                      {
                        if (*v71 != v33)
                        {
                          objc_enumerationMutation(v30);
                        }

                        (v19)[2](v19, *(*(&v70 + 1) + 8 * i), target);
                      }

                      v32 = [v30 countByEnumeratingWithState:&v70 objects:v83 count:16];
                    }

                    while (v32);
                  }

                  v24 = v53;
                  v23 = v54;
                }

                else
                {
                  (v19)[2](v19, 0, target);
                }
              }

              ++v25;
            }

            while (v25 != v23);
            v23 = [v55 countByEnumeratingWithState:&v74 objects:v84 count:16];
          }

          while (v23);
        }

        if (v16)
        {
          objc_storeStrong(v16 + 4, v49);
          objc_storeStrong(v16 + 5, v48);
        }

        v6 = v44;
        v5 = v45;
        if (v16)
        {
          v35 = *(v16 + 4);
        }

        else
        {
          v35 = 0;
        }

        [v44 addEntriesFromDictionary:v35];
        v15 = v52 + 1;
      }

      while (v52 + 1 != v47);
      v36 = [obj countByEnumeratingWithState:&v62 objects:v81 count:16];
      v47 = v36;
    }

    while (v36);
  }

  if (([v5 isEqual:v6] & 1) == 0)
  {
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __76__BKHIDEventDeliveryManager__lock_notifyObserversForReason_chainsMayUpdate___block_invoke;
    v58[3] = &unk_2784F6780;
    v37 = v5;
    v59 = v37;
    v60 = selfCopy;
    v38 = v40;
    v61 = v38;
    [v6 enumerateKeysAndObjectsUsingBlock:v58];
    allKeys = [v6 allKeys];
    [v37 removeObjectsForKeys:allKeys];

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __76__BKHIDEventDeliveryManager__lock_notifyObserversForReason_chainsMayUpdate___block_invoke_2;
    v56[3] = &unk_2784F67A8;
    v56[4] = selfCopy;
    v57 = v38;
    [v37 enumerateKeysAndObjectsUsingBlock:v56];
  }
}

void __76__BKHIDEventDeliveryManager__lock_notifyObserversForReason_chainsMayUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v8];
  if ((BSEqualObjects() & 1) == 0)
  {
    v7 = [(BKHIDEventDeliveryManager *)*(a1 + 40) _publishedChainFromDeliveryChain:v5];
    [*(*(a1 + 40) + 152) deliveryChainDidUpdate:v7 forIdentity:v8 reason:*(a1 + 48)];
  }
}

void __60__BKHIDEventDeliveryManager__lock_rebuildRootDeliveryPaths___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = a2;
  obj = a3;
  v5 = a3;
  v6 = [v5 deferringEnvironment];
  v7 = [v5 pid];
  v8 = [v44 associatedDisplay];
  if (!v8)
  {
    v8 = [MEMORY[0x277CF0698] nullDisplay];
  }

  v43 = a1;
  v9 = *(*(a1 + 32) + 112);
  if (!v9)
  {
    v25 = 0;
    v31 = 0;
    v32 = a1;
    v33 = *(a1 + 40);
    goto LABEL_15;
  }

  v10 = MEMORY[0x277CF05F8];
  v42 = v5;
  v11 = v5;
  v40 = v8;
  v12 = v8;
  v41 = v6;
  v13 = v6;
  v14 = v44;
  v39 = [[v10 alloc] initWithDisplay:v12 environment:v13];
  v15 = [*(v9 + 8) objectForKey:?];
  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = [(BKEventDeferringGraph *)v9 deferringPathForPID:v7 environment:v13 display:v12 dispatchTarget:v11 returnModalities:v16];
  v18 = [BKEventDeliveryChain alloc];
  v38 = v15;
  v19 = v12;
  v20 = v13;
  v21 = v11;
  v22 = v14;
  v23 = v17;
  v24 = v16;
  if (v18)
  {
    v45.receiver = v18;
    v45.super_class = BKEventDeliveryChain;
    v25 = objc_msgSendSuper2(&v45, sel_init);
    if (v25)
    {
      v26 = v19;
      if (!v19)
      {
        v26 = [MEMORY[0x277CF0698] nullDisplay];
      }

      objc_storeStrong(v25 + 2, v15);
      v27 = [objc_alloc(MEMORY[0x277CF05F8]) initWithDisplay:v26 environment:v20];
      v28 = v25[1];
      v25[1] = v27;

      objc_storeStrong(v25 + 3, obj);
      objc_storeStrong(v25 + 4, a2);
      objc_storeStrong(v25 + 5, v17);
      v29 = [v24 copy];
      v30 = v25[6];
      v25[6] = v29;

      goto LABEL_12;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = v19;
LABEL_12:

  v32 = v43;
  v33 = *(v43 + 40);
  if (v25)
  {
    v31 = v25[1];
  }

  else
  {
    v31 = 0;
  }

  v6 = v41;
  v5 = v42;
  v8 = v40;
LABEL_15:
  v34 = v31;
  [v33 setObject:v25 forKey:v34];

  if (v25)
  {
    v35 = [(BKEventDeliveryChain *)v25 resolutionPathForEventDescriptor:?];
  }

  else
  {
    v35 = 0;
  }

  [*(v32 + 48) addObject:v35];
}

- (uint64_t)_lock_verifyProvenance:(uint64_t)provenance
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (provenance)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (([*(provenance + 72) verifyAuthentic:v3] & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = BKLogEventDelivery();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v11 = 138543362;
          v12 = v3;
          _os_log_error_impl(&dword_223CBE000, v6, OS_LOG_TYPE_ERROR, "verifyProvenance: unfamiliar class %{public}@", &v11, 0xCu);
        }

        goto LABEL_12;
      }

      if ([*(provenance + 64) validateMessage:v3] < 2)
      {
LABEL_12:
        v7 = BKLogEventDelivery();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v11) = 0;
          _os_log_error_impl(&dword_223CBE000, v7, OS_LOG_TYPE_ERROR, "verifyProvenance: corrupt provenance", &v11, 2u);
        }

LABEL_18:
        provenance = 0;
        goto LABEL_19;
      }
    }

    timestamp = [v3 timestamp];
    v5 = timestamp;
    if (timestamp <= *(provenance + 16))
    {
      v8 = BKLogEventDelivery();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(provenance + 16);
        v11 = 134218240;
        v12 = v5;
        v13 = 2048;
        v14 = v10;
        _os_log_error_impl(&dword_223CBE000, v8, OS_LOG_TYPE_ERROR, "verifyProvenance: event too old (expected %llu > %llu)", &v11, 0x16u);
      }

      goto LABEL_18;
    }

    *(provenance + 16) = timestamp;
    provenance = 1;
  }

LABEL_19:

  return provenance;
}

BOOL __70__BKHIDEventDeliveryManager_requestSelectionChanges_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 selectionTarget];
  v4 = v3 != 0;

  if (!v3)
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v2;
      _os_log_error_impl(&dword_223CBE000, v5, OS_LOG_TYPE_ERROR, "requestSelectionChanges: missing selection target: %{public}@", &v14, 0xCu);
    }
  }

  v6 = [v2 selectionTarget];
  v7 = [v6 target];

  if (!v7)
  {
    v8 = BKLogEventDelivery();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v2;
      _os_log_error_impl(&dword_223CBE000, v8, OS_LOG_TYPE_ERROR, "requestSelectionChanges: missing deferring target: %{public}@", &v14, 0xCu);
    }

    v4 = 0;
  }

  v9 = [v2 pathIdentifier];

  if (!v9)
  {
    v10 = BKLogEventDelivery();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v2;
      _os_log_error_impl(&dword_223CBE000, v10, OS_LOG_TYPE_ERROR, "requestSelectionChanges: missing selection path: %{public}@", &v14, 0xCu);
    }

    v4 = 0;
  }

  v11 = [v2 basis];

  if (!v11)
  {
    v12 = BKLogEventDelivery();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v2;
      _os_log_error_impl(&dword_223CBE000, v12, OS_LOG_TYPE_ERROR, "requestSelectionChanges: missing basis: %{public}@", &v14, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (void)setConstraintAssertions:(id)assertions forClientWithPID:(int)d
{
  assertionsCopy = assertions;
  os_unfair_lock_lock(&self->_lock);
  v9 = [assertionsCopy bs_filter:&__block_literal_global_130];

  if ([v9 count])
  {
    v7 = v9;
    v8 = v7;
    if (self)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __76__BKHIDEventDeliveryManager__lock_setConstraintAssertions_forClientWithPID___block_invoke;
      v10[3] = &unk_2784F6608;
      v10[4] = self;
      v11 = v7;
      dCopy = d;
      [(BKHIDEventDeliveryManager *)self _lock_notifyObserversForReason:v10 chainsMayUpdate:?];
      [(NSMutableDictionary *)self->_destinationCacheBySender removeAllObjects];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __76__BKHIDEventDeliveryManager__lock_setConstraintAssertions_forClientWithPID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __66__BKEventDeferringGraph_setConstraintAssertions_forClientWithPID___block_invoke;
    v5[3] = &__block_descriptor_36_e54_v24__0__BKEventDeferringEnvironmentGraph_8__NSArray_16l;
    v6 = v4;
    [(BKEventDeferringGraph *)v2 _mapSelectionTargetablesByEnvironment:v3 block:v5];
  }
}

BOOL __70__BKHIDEventDeliveryManager_setConstraintAssertions_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 selectionTarget];
  v4 = v3 != 0;

  if (!v3)
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v2;
      _os_log_error_impl(&dword_223CBE000, v5, OS_LOG_TYPE_ERROR, "setConstraintAssertions: missing selection target: %{public}@", &v12, 0xCu);
    }
  }

  v6 = [v2 selectionTarget];
  v7 = [v6 target];

  if (!v7)
  {
    v8 = BKLogEventDelivery();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v2;
      _os_log_error_impl(&dword_223CBE000, v8, OS_LOG_TYPE_ERROR, "setConstraintAssertions: missing deferring target: %{public}@", &v12, 0xCu);
    }

    v4 = 0;
  }

  v9 = [v2 pathIdentifier];

  if (!v9)
  {
    v10 = BKLogEventDelivery();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v2;
      _os_log_error_impl(&dword_223CBE000, v10, OS_LOG_TYPE_ERROR, "setConstraintAssertions: missing selection path: %{public}@", &v12, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (void)setModalityAssertions:(id)assertions forClientWithPID:(int)d
{
  assertionsCopy = assertions;
  os_unfair_lock_lock(&self->_lock);
  v9 = [assertionsCopy bs_filter:&__block_literal_global_127];

  if ([v9 count])
  {
    v7 = v9;
    v8 = v7;
    if (self)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __74__BKHIDEventDeliveryManager__lock_setModalityAssertions_forClientWithPID___block_invoke;
      v10[3] = &unk_2784F6608;
      v11 = v7;
      selfCopy = self;
      dCopy = d;
      [(BKHIDEventDeliveryManager *)self _lock_notifyObserversForReason:v10 chainsMayUpdate:?];
      [(NSMutableDictionary *)self->_destinationCacheBySender removeAllObjects];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __74__BKHIDEventDeliveryManager__lock_setModalityAssertions_forClientWithPID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__BKHIDEventDeliveryManager__lock_setModalityAssertions_forClientWithPID___block_invoke_2;
  v6[3] = &unk_2784F65E0;
  v6[4] = *(a1 + 40);
  v7 = *(a1 + 48);
  v3 = [v2 bs_map:v6];
  v4 = *(*(a1 + 40) + 112);
  if (v4)
  {
    v5 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__BKEventDeferringGraph_setModalityAssertions_forClientWithPID___block_invoke;
    v8[3] = &__block_descriptor_36_e54_v24__0__BKEventDeferringEnvironmentGraph_8__NSArray_16l;
    v9 = v5;
    [(BKEventDeferringGraph *)v4 _mapSelectionTargetablesByEnvironment:v3 block:v8];
  }
}

id __74__BKHIDEventDeliveryManager__lock_setModalityAssertions_forClientWithPID___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 basis];
  v5 = [v4 eventProvenance];
  if (v5 && ([(BKHIDEventDeliveryManager *)*(a1 + 32) _lock_verifyProvenance:v5]& 1) == 0)
  {
    v7 = BKLogEventDelivery();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11[0] = 67109378;
      v11[1] = v10;
      v12 = 2114;
      v13 = v3;
      _os_log_error_impl(&dword_223CBE000, v7, OS_LOG_TYPE_ERROR, "basis decaying pid:%d (%{public}@)", v11, 0x12u);
    }

    v6 = [v3 mutableCopy];
    v8 = [MEMORY[0x277CF0618] ruleOriginatorBasis];
    [v6 setBasis:v8];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

BOOL __68__BKHIDEventDeliveryManager_setModalityAssertions_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 selectionTarget];
  v4 = v3 != 0;

  if (!v3)
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v2;
      _os_log_error_impl(&dword_223CBE000, v5, OS_LOG_TYPE_ERROR, "setModalityAssertions: missing selection target: %{public}@", &v14, 0xCu);
    }
  }

  v6 = [v2 selectionTarget];
  v7 = [v6 target];

  if (!v7)
  {
    v8 = BKLogEventDelivery();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v2;
      _os_log_error_impl(&dword_223CBE000, v8, OS_LOG_TYPE_ERROR, "setModalityAssertions: missing deferring target: %{public}@", &v14, 0xCu);
    }

    v4 = 0;
  }

  v9 = [v2 pathIdentifier];

  if (!v9)
  {
    v10 = BKLogEventDelivery();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v2;
      _os_log_error_impl(&dword_223CBE000, v10, OS_LOG_TYPE_ERROR, "setModalityAssertions: missing selection path: %{public}@", &v14, 0xCu);
    }

    v4 = 0;
  }

  v11 = [v2 basis];

  if (!v11)
  {
    v12 = BKLogEventDelivery();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v2;
      _os_log_error_impl(&dword_223CBE000, v12, OS_LOG_TYPE_ERROR, "setModalityAssertions: missing basis: %{public}@", &v14, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (id)sequenceForFirstEvent:(__IOHIDEvent *)event sender:(id)sender processor:(id)processor dispatcher:(id)dispatcher additionalContext:(id)context
{
  v44 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  processorCopy = processor;
  dispatcherCopy = dispatcher;
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  v34 = senderCopy;
  v13 = [senderCopy senderDescriptorForEventType:IOHIDEventGetType()];
  v14 = [(BKHIDEventDeliveryManager *)self _lock_destinationsForEvent:event sender:v13];

  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v35 + 1) + 8 * i);
        dispatchingTarget = [v22 dispatchingTarget];
        v24 = [(NSMutableDictionary *)self->_buffersByDispatchTarget objectForKey:dispatchingTarget];
        if (v24)
        {
          v25 = v16;
          v26 = v24;
        }

        else
        {
          v25 = v15;
          v26 = v22;
        }

        [v25 addObject:v26];
      }

      v19 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v19);
  }

  v27 = [[BKHIDEventDeliverySequence alloc] initWithProcessor:processorCopy dispatcher:dispatcherCopy senderInfo:v34 additionalContext:contextCopy keyCommand:0 deliveryManager:self resolutions:v15 buffers:v16];
  os_unfair_lock_unlock(&self->_lock);
  v28 = BKLogEventDelivery();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    IOHIDEventGetType();
    Name = IOHIDEventTypeGetName();
    *buf = 138543618;
    v40 = Name;
    v41 = 2114;
    v42 = v27;
    _os_log_impl(&dword_223CBE000, v28, OS_LOG_TYPE_DEFAULT, "sequence starting with %{public}@ event: %{public}@", buf, 0x16u);
  }

  return v27;
}

- (id)sequenceForKeyCommand:(id)command sender:(id)sender processor:(id)processor dispatcher:(id)dispatcher additionalContext:(id)context
{
  v49 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  senderCopy = sender;
  processorCopy = processor;
  dispatcherCopy = dispatcher;
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  v17 = [senderCopy senderDescriptorForEventType:3];
  v18 = [(BKHIDEventDeliveryManager *)self _lock_destinationsForKeyCommand:commandCopy sender:v17 transcript:0];

  v39 = v18;
  if ([v18 count])
  {
    v37 = commandCopy;
    v38 = contextCopy;
    v34 = dispatcherCopy;
    v35 = processorCopy;
    v36 = senderCopy;
    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v41;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v40 + 1) + 8 * i);
          dispatchingTarget = [v26 dispatchingTarget];
          v28 = [(NSMutableDictionary *)self->_buffersByDispatchTarget objectForKey:dispatchingTarget];
          if (v28)
          {
            v29 = v20;
            v30 = v28;
          }

          else
          {
            v29 = v19;
            v30 = v26;
          }

          [v29 addObject:v30];
        }

        v23 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v23);
    }

    dispatcherCopy = v34;
    processorCopy = v35;
    senderCopy = v36;
    commandCopy = v37;
    v31 = [[BKHIDEventDeliverySequence alloc] initWithProcessor:v35 dispatcher:v34 senderInfo:v36 additionalContext:v38 keyCommand:v37 deliveryManager:self resolutions:v19 buffers:v20];
    os_unfair_lock_unlock(&self->_lock);
    v32 = BKLogEventDelivery();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v45 = v37;
      v46 = 2114;
      v47 = v31;
      _os_log_impl(&dword_223CBE000, v32, OS_LOG_TYPE_DEFAULT, "sequence starting with key command %{public}@: %{public}@", buf, 0x16u);
    }

    contextCopy = v38;
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v31 = 0;
  }

  return v31;
}

- (void)reevaluateBufferingWithContext:(id)context
{
  v199 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  selfCopy = self;
  if (self)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    v127 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v130 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v132 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v136 = objc_alloc_init(MEMORY[0x277CBEB58]);
    *v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    v188 = 0u;
    obj = self->_deliveryRoots;
    v128 = [(NSMutableArray *)obj countByEnumeratingWithState:v185 objects:v189 count:16];
    if (!v128)
    {
      goto LABEL_67;
    }

    v126 = *v186;
    do
    {
      v4 = 0;
      do
      {
        v129 = v4;
        if (*v186 != v126)
        {
          objc_enumerationMutation(obj);
          v4 = v129;
        }

        v5 = *(*&v185[8] + 8 * v4);
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        if (v5)
        {
          v6 = *(v5 + 32);
        }

        else
        {
          v6 = 0;
        }

        allValues = [v6 allValues];
        v138 = [allValues countByEnumeratingWithState:&v169 objects:&v181 count:16];
        if (v138)
        {
          v7 = 0;
          v134 = *v170;
          while (1)
          {
            v8 = 0;
            do
            {
              if (*v170 != v134)
              {
                objc_enumerationMutation(allValues);
              }

              v9 = *(*(&v169 + 1) + 8 * v8);
              v10 = v136;
              v11 = v9;
              v150 = v10;
              v141 = v8;
              v140 = v9;
              if (v9)
              {
                v11 = v9[5];
              }

              v12 = v11;
              firstObject = [v12 firstObject];
              v143 = v7;
              if (firstObject)
              {
                v14 = firstObject[2];
              }

              else
              {
                v14 = 0;
              }

              v15 = [MEMORY[0x277CCABB0] numberWithInt:v14];
              [v150 addObject:v15];

              v16 = [(BSMutableIntegerMap *)self->_bufferingPredicatesByPID objectForKey:v14];
              v173 = 0u;
              v174 = 0u;
              v175 = 0u;
              v176 = 0u;
              v145 = v12;
              v152 = [v145 countByEnumeratingWithState:&v173 objects:v197 count:16];
              v17 = 0;
              if (!v152)
              {
                v159 = 0;
                goto LABEL_49;
              }

              v159 = 0;
              log = *v174;
              do
              {
                v18 = 0;
                do
                {
                  if (*v174 != log)
                  {
                    objc_enumerationMutation(v145);
                  }

                  v19 = *(*(&v173 + 1) + 8 * v18);
                  v156 = v18;
                  if (v19)
                  {
                    v19 = v19[2];
                  }

                  v154 = v19;
                  predicate = [v154 predicate];
                  *v190 = 0u;
                  v191 = 0u;
                  v192 = 0u;
                  v193 = 0u;
                  v166 = v16;
                  v21 = [v166 countByEnumeratingWithState:v190 objects:v194 count:16];
                  v163 = v17;
                  if (v21)
                  {
                    v22 = v21;
                    v161 = v14;
                    v23 = *v191;
                    do
                    {
                      for (i = 0; i != v22; ++i)
                      {
                        if (*v191 != v23)
                        {
                          objc_enumerationMutation(v166);
                        }

                        v25 = *(*&v190[8] + 8 * i);
                        environment = [predicate environment];
                        display = [predicate display];
                        token = [predicate token];
                        v29 = v25;
                        v30 = display;
                        v31 = token;
                        v32 = environment;
                        environment2 = [v29 environment];
                        v34 = [v32 isEqual:environment2];

                        if (v34)
                        {
                          display2 = [v29 display];
                          if (_BKHIDEventDeferringDisplayMatch(display2, v30))
                          {
                            token2 = [v29 token];
                            if (!token2 || BSEqualObjects())
                            {

                              v37 = BKLogEventDeliveryBuffering();
                              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                              {
                                *buf = 138543618;
                                v178 = predicate;
                                v179 = 2114;
                                *v180 = v29;
                                _os_log_debug_impl(&dword_223CBE000, v37, OS_LOG_TYPE_DEBUG, "  BUFFER: rule:%{public}@ is match with bufferingPredicate:%{public}@", buf, 0x16u);
                              }

                              v38 = v163;
                              if (!v163)
                              {
                                v38 = [MEMORY[0x277CBEB58] set];
                                v39 = v38;
                              }

                              v40 = [MEMORY[0x277CCABB0] numberWithInt:v161];
                              v41 = v38;
                              v42 = v40;
                              v163 = v41;
                              [v41 addObject:v40];
                              v159 = 1;
                              goto LABEL_43;
                            }
                          }
                        }

                        v42 = BKLogEventDeliveryBuffering();
                        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138543618;
                          v178 = predicate;
                          v179 = 2114;
                          *v180 = v29;
                          _os_log_debug_impl(&dword_223CBE000, v42, OS_LOG_TYPE_DEBUG, "  BUFFER: rule:%{public}@ is NO match with bufferingPredicate:%{public}@", buf, 0x16u);
                        }

LABEL_43:
                      }

                      v22 = [v166 countByEnumeratingWithState:v190 objects:v194 count:16];
                    }

                    while (v22);
                  }

                  target = [v154 target];
                  v14 = [target pid];

                  v44 = [MEMORY[0x277CCABB0] numberWithInt:v14];
                  [v150 addObject:v44];

                  self = selfCopy;
                  v16 = [(BSMutableIntegerMap *)selfCopy->_bufferingPredicatesByPID objectForKey:v14];

                  v18 = v156 + 1;
                  v17 = v163;
                }

                while (v156 + 1 != v152);
                v152 = [v145 countByEnumeratingWithState:&v173 objects:v197 count:16];
              }

              while (v152);
LABEL_49:

              v7 = v17;
              v45 = v140;
              if (v140)
              {
                v45 = v140[3];
              }

              v46 = v45;
              if ([v7 count])
              {
                [v132 setObject:v7 forKey:v46];
              }

              if (v159)
              {
                [v130 addObject:v46];
                v47 = BKLogEventDeliveryBuffering();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  [MEMORY[0x277CF0C08] descriptionForRootObject:v7];
                  v49 = v48 = v7;
                  *v197 = 138543618;
                  *v198 = v49;
                  *&v198[8] = 2114;
                  *&v198[10] = v46;
                  _os_log_debug_impl(&dword_223CBE000, v47, OS_LOG_TYPE_DEBUG, "  BUFFER: --> we should buffer this target at the request of %{public}@: %{public}@", v197, 0x16u);

                  v7 = v48;
                }
              }

              else
              {
                v47 = BKLogEventDeliveryBuffering();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  *v197 = 138543362;
                  *v198 = v46;
                  _os_log_debug_impl(&dword_223CBE000, v47, OS_LOG_TYPE_DEBUG, "  BUFFER: --> we should NOT buffer this target: %{public}@", v197, 0xCu);
                }
              }

              v8 = v141 + 1;
            }

            while (v141 + 1 != v138);
            v50 = [allValues countByEnumeratingWithState:&v169 objects:&v181 count:16];
            v138 = v50;
            if (!v50)
            {

              break;
            }
          }
        }

        v4 = v129 + 1;
      }

      while (v129 + 1 != v128);
      v51 = [(NSMutableArray *)obj countByEnumeratingWithState:v185 objects:v189 count:16];
      v128 = v51;
    }

    while (v51);
LABEL_67:

    v52 = [v130 mutableCopy];
    buffersByDispatchTarget = self->_buffersByDispatchTarget;
    if (buffersByDispatchTarget)
    {
      allKeys = [(NSMutableDictionary *)buffersByDispatchTarget allKeys];
      [v52 addObjectsFromArray:allKeys];
    }

    v167 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v164 = v52;
    v55 = [v164 countByEnumeratingWithState:&v173 objects:v197 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v174;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v174 != v57)
          {
            objc_enumerationMutation(v164);
          }

          v59 = *(*(&v173 + 1) + 8 * j);
          v60 = BKLogEventDeliveryBuffering();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            v78 = [v130 containsObject:v59];
            *v194 = 138543618;
            *&v194[4] = v59;
            *&v194[12] = 1024;
            *&v194[14] = v78;
            _os_log_debug_impl(&dword_223CBE000, v60, OS_LOG_TYPE_DEBUG, "  BUFFER: --> eval target: %{public}@ enable:%{BOOL}u", v194, 0x12u);
          }

          v61 = [v130 containsObject:v59];
          v62 = [v132 objectForKey:v59];
          v63 = v59;
          v64 = v62;
          v65 = v127;
          v66 = v167;
          v67 = [(NSMutableDictionary *)selfCopy->_buffersByDispatchTarget objectForKey:v63];
          if (v61)
          {
            v68 = v67 == 0;
          }

          else
          {
            v68 = 0;
          }

          if (v68)
          {
            if (!selfCopy->_buffersByDispatchTarget)
            {
              v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v72 = selfCopy->_buffersByDispatchTarget;
              selfCopy->_buffersByDispatchTarget = v71;
            }

            v69 = [[BKHIDEventBuffer alloc] initWithDispatchTarget:v63];
            [(NSMutableDictionary *)selfCopy->_buffersByDispatchTarget setObject:v69 forKey:v63];
            [(BKHIDEventBuffer *)v69 setBufferingPIDs:v64];
            v73 = BKLogEventDeliveryBuffering();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              *v190 = 138543362;
              *&v190[4] = v69;
              _os_log_impl(&dword_223CBE000, v73, OS_LOG_TYPE_DEFAULT, "adding buffer %{public}@", v190, 0xCu);
            }

            [v66 setObject:v69 forKey:v63];
          }

          else
          {
            v69 = v67;
            if (v67)
            {
              v70 = v61;
            }

            else
            {
              v70 = 1;
            }

            if (v70)
            {
              if (!v67)
              {
                goto LABEL_99;
              }

              [(BKHIDEventBuffer *)v67 setBufferingPIDs:v64];
            }

            else
            {
              [v65 addObject:v67];
              [(NSMutableDictionary *)selfCopy->_buffersByDispatchTarget removeObjectForKey:v63];
              bufferingPIDs = [(BKHIDEventBuffer *)v69 bufferingPIDs];
              *v194 = MEMORY[0x277D85DD0];
              *&v194[8] = 3221225472;
              *&v194[16] = __109__BKHIDEventDeliveryManager__lock_enableBuffering_dispatchTarget_ownerPIDs_buffersToDrain_targetToNewBuffer___block_invoke;
              v195 = &unk_2784F6708;
              v196 = selfCopy;
              v75 = [bufferingPIDs bs_containsObjectPassingTest:v194];

              if ((v75 & 1) == 0)
              {
                [(BKHIDEventBuffer *)v69 setAllBufferingClientsTerminated:1];
                v76 = BKLogEventDeliveryBuffering();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                {
                  *v190 = 0;
                  _os_log_debug_impl(&dword_223CBE000, v76, OS_LOG_TYPE_DEBUG, "  BUFFER: all clients terminated", v190, 2u);
                }
              }

              v77 = BKLogEventDeliveryBuffering();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *v190 = 138543362;
                *&v190[4] = v69;
                _os_log_impl(&dword_223CBE000, v77, OS_LOG_TYPE_DEFAULT, "removing buffer %{public}@", v190, 0xCu);
              }
            }
          }

LABEL_99:
        }

        v56 = [v164 countByEnumeratingWithState:&v173 objects:v197 count:16];
      }

      while (v56);
    }

    v192 = 0u;
    v193 = 0u;
    *v190 = 0u;
    v191 = 0u;
    v79 = v127;
    v80 = [v79 countByEnumeratingWithState:v190 objects:v194 count:16];
    self = selfCopy;
    if (v80)
    {
      v81 = v80;
      v82 = *v191;
      do
      {
        for (k = 0; k != v81; ++k)
        {
          if (*v191 != v82)
          {
            objc_enumerationMutation(v79);
          }

          v84 = *(*&v190[8] + 8 * k);
          bufferingPIDs2 = [v84 bufferingPIDs];
          v86 = [bufferingPIDs2 intersectsSet:v136];

          v87 = BKLogEventDeliveryBuffering();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
          {
            v88 = MEMORY[0x277CF0C08];
            bufferingPIDs3 = [v84 bufferingPIDs];
            v90 = [v88 descriptionForRootObject:bufferingPIDs3];
            v91 = [MEMORY[0x277CF0C08] descriptionForRootObject:v136];
            *buf = 138543874;
            v178 = v90;
            v179 = 1024;
            *v180 = v86;
            *&v180[4] = 2114;
            *&v180[6] = v91;
            _os_log_debug_impl(&dword_223CBE000, v87, OS_LOG_TYPE_DEBUG, "  BUFFER: --> %{public}@ intersects:(%{BOOL}u) %{public}@", buf, 0x1Cu);

            self = selfCopy;
          }

          if ((v86 & 1) == 0)
          {
            [v84 setAllBufferingClientsTerminated:1];
          }
        }

        v81 = [v79 countByEnumeratingWithState:v190 objects:v194 count:16];
      }

      while (v81);
    }

    if ([v167 count])
    {
      v92 = v167;
      v93 = v167;
    }

    else
    {
      v93 = 0;
    }
  }

  else
  {
    v93 = 0;
    v79 = 0;
  }

  v94 = v93;
  os_unfair_lock_unlock(&self->_lock);
  contextCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"reevaluate (%@)", contextCopy];

  v135 = v79;
  v96 = v94;
  v133 = contextCopy;
  if (self)
  {
    os_unfair_lock_assert_not_owner(&self->_lock);
    v160 = self->_bufferingDispatcher;
    v97 = 0x277CBE000uLL;
    if ([v135 count])
    {
      v98 = BKLogEventDeliveryBuffering();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        v99 = [v135 count];
        *v197 = 67109378;
        *v198 = v99;
        *&v198[4] = 2114;
        *&v198[6] = v133;
        _os_log_impl(&dword_223CBE000, v98, OS_LOG_TYPE_DEFAULT, "draining %d buffers (%{public}@)", v197, 0x12u);
      }
    }

    if ([v96 count])
    {
      [(BKHIDEventBufferingHIDSystem *)v160 bufferingDidAddNewBuffers:v96];
    }

    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v144 = v135;
    v100 = [v144 countByEnumeratingWithState:&v181 objects:v197 count:16];
    if (v100)
    {
      v101 = v100;
      v102 = *v182;
      v137 = *v182;
      v139 = v96;
      do
      {
        v103 = 0;
        v142 = v101;
        do
        {
          if (*v182 != v102)
          {
            objc_enumerationMutation(v144);
          }

          v104 = *(*(&v181 + 1) + 8 * v103);
          [(BKHIDEventBufferingHIDSystem *)v160 bufferWillBeginDraining:v104];
          v162 = v104;
          LOBYTE(v104) = [v104 hasEvents];
          loga = BKLogEventDeliveryBuffering();
          v105 = os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT);
          if (v104)
          {
            v146 = v103;
            if (v105)
            {
              *v185 = 134217984;
              *&v185[4] = v162;
              _os_log_impl(&dword_223CBE000, loga, OS_LOG_TYPE_DEFAULT, "BUFFER: --> will drain %p ", v185, 0xCu);
            }

            drainAllEvents = [v162 drainAllEvents];
            dispatchTarget = [v162 dispatchTarget];
            v155 = objc_alloc_init(*(v97 + 2872));
            v173 = 0u;
            v174 = 0u;
            v175 = 0u;
            v176 = 0u;
            loga = drainAllEvents;
            v153 = [loga countByEnumeratingWithState:&v173 objects:v194 count:16];
            if (v153)
            {
              v151 = *v174;
              do
              {
                v108 = 0;
                do
                {
                  if (*v174 != v151)
                  {
                    objc_enumerationMutation(loga);
                  }

                  v158 = v108;
                  v109 = *(*(&v173 + 1) + 8 * v108);
                  event = [v109 event];
                  additionalContext = [v109 additionalContext];
                  sender = [v109 sender];
                  sequence = [v109 sequence];
                  keyCommand = [sequence keyCommand];
                  v113 = [v155 objectForKey:sequence];
                  if (!v113)
                  {
                    senderDescriptor = [sender senderDescriptor];
                    if (keyCommand)
                    {
                      [(BKHIDEventDeliveryManager *)selfCopy destinationsForKeyCommand:keyCommand sender:senderDescriptor];
                    }

                    else
                    {
                      [(BKHIDEventDeliveryManager *)selfCopy destinationsForEvent:event sender:senderDescriptor];
                    }
                    v113 = ;

                    [v155 setObject:v113 forKey:sequence];
                  }

                  v157 = keyCommand;
                  v192 = 0u;
                  v193 = 0u;
                  *v190 = 0u;
                  v191 = 0u;
                  v115 = v113;
                  v116 = [v115 countByEnumeratingWithState:v190 objects:v189 count:16];
                  if (v116)
                  {
                    v117 = v116;
                    v118 = *v191;
                    do
                    {
                      for (m = 0; m != v117; ++m)
                      {
                        if (*v191 != v118)
                        {
                          objc_enumerationMutation(v115);
                        }

                        v120 = *(*&v190[8] + 8 * m);
                        dispatchingTarget = [v120 dispatchingTarget];
                        v122 = [dispatchingTarget isEqual:dispatchTarget];

                        if (v122)
                        {
                          [(BKHIDEventBufferingHIDSystem *)v160 buffer:v162 drainEvent:event withContext:additionalContext sender:sender sequence:sequence toResolution:v120];
                        }
                      }

                      v117 = [v115 countByEnumeratingWithState:v190 objects:v189 count:16];
                    }

                    while (v117);
                  }

                  v108 = v158 + 1;
                }

                while (v158 + 1 != v153);
                v153 = [loga countByEnumeratingWithState:&v173 objects:v194 count:16];
              }

              while (v153);
            }

            v123 = BKLogEventDeliveryBuffering();
            if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
            {
              *v185 = 134217984;
              *&v185[4] = v162;
              _os_log_debug_impl(&dword_223CBE000, v123, OS_LOG_TYPE_DEBUG, "BUFFER: --> did drain %p", v185, 0xCu);
            }

            v97 = 0x277CBE000;
            v102 = v137;
            v96 = v139;
            v101 = v142;
            v103 = v146;
          }

          else if (v105)
          {
            *v185 = 134217984;
            *&v185[4] = v162;
            _os_log_impl(&dword_223CBE000, loga, OS_LOG_TYPE_DEFAULT, "BUFFER: --> %p empty", v185, 0xCu);
          }

          [(BKHIDEventBufferingHIDSystem *)v160 bufferDidFinishDraining:v162];
          [v162 invalidate];
          v103 = v103 + 1;
        }

        while (v103 != v101);
        v101 = [v144 countByEnumeratingWithState:&v181 objects:v197 count:16];
      }

      while (v101);
    }
  }
}

uint64_t __109__BKHIDEventDeliveryManager__lock_enableBuffering_dispatchTarget_ownerPIDs_buffersToDrain_targetToNewBuffer___block_invoke(uint64_t a1, void *a2)
{
  v2 = [*(*(a1 + 32) + 128) objectForKey:{objc_msgSend(a2, "intValue")}];
  if (v2)
  {
    v3 = v2[8] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)setEventBufferingPredicates:(id)predicates forClientWithPID:(int)d
{
  v4 = *&d;
  predicatesCopy = predicates;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(BKHIDEventDeliveryManager *)self _lock_setEventBufferingPredicates:predicatesCopy forClientWithPID:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setEventBufferingPredicates:(uint64_t)predicates forClientWithPID:
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    os_unfair_lock_assert_owner((self + 8));
    v6 = BKLogEventDelivery();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CF0C08] descriptionForRootObject:v5];
      *buf = 67109378;
      predicatesCopy3 = predicates;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&dword_223CBE000, v6, OS_LOG_TYPE_DEFAULT, "new buffering predicates for pid:%d: %{public}@", buf, 0x12u);
    }

    v8 = [*(self + 120) objectForKey:predicates];
    v9 = BSEqualSets();
    v10 = BKLogEventDelivery();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 67109378;
        predicatesCopy3 = predicates;
        v26 = 2114;
        v27 = v5;
        _os_log_impl(&dword_223CBE000, v10, OS_LOG_TYPE_DEFAULT, "pid:%d no change to buffering predicates: %{public}@", buf, 0x12u);
      }
    }

    else
    {
      if (v11)
      {
        *buf = 67109378;
        predicatesCopy3 = predicates;
        v26 = 2114;
        v27 = v5;
        _os_log_impl(&dword_223CBE000, v10, OS_LOG_TYPE_DEFAULT, "pid:%d new buffering predicates: %{public}@", buf, 0x12u);
      }

      v12 = [v5 count];
      v13 = [(BKHIDEventDeliveryManager *)self _lock_clientWithPID:predicates createIfNeeded:v12 != 0];
      v10 = v13;
      if (v13)
      {
        v14 = *(v13 + 64);
        [v14 invalidate];
        isa = v10[8].isa;
        v10[8].isa = 0;
      }

      v16 = *(self + 120);
      if (v12)
      {
        [v16 setObject:v5 forKey:predicates];
        v17 = objc_alloc(MEMORY[0x277CF0BD8]);
        predicates = [MEMORY[0x277CCACA8] stringWithFormat:@"BKHIDEventDeliveryManager buffer predicate pid:%d", predicates];
        v19 = [v17 initWithIdentifier:predicates];

        [(BKHIDEventDeliveryClient *)v10 setBufferTimer:v19];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __80__BKHIDEventDeliveryManager__lock_setEventBufferingPredicates_forClientWithPID___block_invoke;
        v20[3] = &unk_2784F6730;
        v20[4] = self;
        predicatesCopy4 = predicates;
        v21 = v5;
        v22 = v10;
        [v19 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v20 queue:8.0 handler:1.0];
      }

      else
      {
        [v16 removeObjectForKey:predicates];
      }

      [*(self + 160) requestBufferReevaluationWithContext:0];
    }
  }
}

- (id)_lock_clientWithPID:(int)d createIfNeeded:
{
  if (self)
  {
    v4 = a2;
    os_unfair_lock_assert_owner((self + 8));
    v6 = v4;
    p_isa = [*(self + 128) objectForKey:v4];
    if (p_isa)
    {
      v8 = 1;
    }

    else
    {
      v8 = d == 0;
    }

    if (!v8)
    {
      v9 = objc_alloc_init(BKHIDEventDeliveryClient);
      p_isa = &v9->super.isa;
      if (v9)
      {
        v9->_pid = v4;
        v10 = BSProcessDescriptionForPID();
        objc_storeStrong(p_isa + 2, v10);
      }

      else
      {
        v10 = BSProcessDescriptionForPID();
      }

      [*(self + 128) setObject:p_isa forKey:v6];
    }
  }

  else
  {
    p_isa = 0;
  }

  return p_isa;
}

void __80__BKHIDEventDeliveryManager__lock_setEventBufferingPredicates_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  [v3 _fireTimeoutForPID:v2 bufferingPredicates:v4 client:v5];
  [v6 invalidate];
}

- (void)setKeyCommandsRegistrations:(id)registrations forClientWithPID:(int)d
{
  v41 = *MEMORY[0x277D85DE8];
  registrationsCopy = registrations;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v23 = [registrationsCopy mutableCopy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = registrationsCopy;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v26 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        keyCommands = [v9 keyCommands];
        v11 = v9;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v12 = [keyCommands countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v28;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(keyCommands);
              }

              v17 = *(*(&v27 + 1) + 8 * j);
              if (([v17 isRoutableKeyCommand] & 1) == 0)
              {
                if (!v14)
                {
                  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
                }

                [v14 addObject:v17];
              }
            }

            v13 = [keyCommands countByEnumeratingWithState:&v27 objects:v39 count:16];
          }

          while (v13);
          if (v14)
          {
            [v23 removeObject:v11];
            v18 = [keyCommands mutableCopy];
            [v18 minusSet:v14];
            v19 = [v11 mutableCopy];
            [v19 setKeyCommands:v18];
            [v23 addObject:v19];

            v11 = v19;
          }
        }

        else
        {
          v14 = 0;
        }

        if ([v14 count])
        {
          v20 = BKLogEventDelivery();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v22 = [MEMORY[0x277CF06A8] _descriptionForKeyCommandCollection:v14];
            *buf = 67109378;
            dCopy2 = d;
            v37 = 2114;
            v38 = v22;
            _os_log_error_impl(&dword_223CBE000, v20, OS_LOG_TYPE_ERROR, "ignoring non-routable key commands for pid:%d %{public}@", buf, 0x12u);
          }
        }

        v21 = BKLogEventDelivery();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          dCopy2 = d;
          v37 = 2114;
          v38 = v11;
          _os_log_impl(&dword_223CBE000, v21, OS_LOG_TYPE_DEFAULT, "new key command registrations for pid:%d %{public}@", buf, 0x12u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v7);
  }

  [(BKHIDEventDeliveryManager *)self _lock_setKeyCommandsRegistrations:v23 forClientWithPID:d];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setKeyCommandsRegistrations:(uint64_t)registrations forClientWithPID:
{
  if (self)
  {
    v6 = a2;
    os_unfair_lock_assert_owner(self + 2);
    v7 = [(BKHIDEventDeliveryManager *)self _lock_clientWithPID:registrations createIfNeeded:1];
    if (v7)
    {
      objc_storeStrong(v7 + 6, a2);
    }
  }
}

- (void)setDeferringRules:(id)rules forClientWithPID:(int)d
{
  rulesCopy = rules;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(BKHIDEventDeliveryManager *)self _lock_setDeferringRules:rulesCopy forClientWithPID:d];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setDeferringRules:(int)rules forClientWithPID:
{
  v5 = a2;
  if (self)
  {
    os_unfair_lock_assert_owner((self + 8));
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__BKHIDEventDeliveryManager__lock_setDeferringRules_forClientWithPID___block_invoke;
    v6[3] = &unk_2784F6608;
    rulesCopy = rules;
    v7 = v5;
    selfCopy = self;
    [(BKHIDEventDeliveryManager *)self _lock_notifyObserversForReason:v6 chainsMayUpdate:?];
    if ([*(self + 120) count])
    {
      [*(self + 160) requestBufferReevaluationWithContext:0];
    }
  }
}

void __70__BKHIDEventDeliveryManager__lock_setDeferringRules_forClientWithPID___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sortedArrayUsingSelector:sel_weightedDeferringRuleCompare_];
  v3 = [v2 bs_reverse];
  v4 = [MEMORY[0x277CF0C10] build:&__block_literal_global_247];
  v5 = BKLogEventDelivery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x277CF0C08] descriptionForRootObject:v3 withStyle:v4];
    *buf = 67109378;
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEFAULT, "new deferring rules for pid:%d: %{public}@", buf, 0x12u);
  }

  v8 = [(BKHIDEventDeliveryManager *)*(a1 + 40) _lock_clientWithPID:1 createIfNeeded:?];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 40), v3);
  }

  [*(*(a1 + 40) + 144) removeAllObjects];
  v10 = *(*(a1 + 40) + 112);
  v11 = *(a1 + 48);
  v12 = v3;
  if (v10)
  {
    v13 = *(v10 + 16);
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    [v13 setObject:v12 forKey:v14];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = *(v10 + 24);
    v16 = [v15 countByEnumeratingWithState:&v20 objects:buf count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(BKEventDeferringGraph *)v10 _setRules:v12 forPID:v11 toDisplay:*(*(&v20 + 1) + 8 * v19++)];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v20 objects:buf count:16];
      }

      while (v17);
    }
  }
}

void __70__BKHIDEventDeliveryManager__lock_setDeferringRules_forClientWithPID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValueTruncation:2];
  [v2 setMaximumValueLengthBeforeTruncation:60];
}

- (void)setKeyCommandRoots:(id)roots forClientWithPID:(int)d
{
  v4 = *&d;
  v16 = *MEMORY[0x277D85DE8];
  rootsCopy = roots;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__BKHIDEventDeliveryManager_setKeyCommandRoots_forClientWithPID___block_invoke;
  v10[3] = &unk_2784F6530;
  v8 = v7;
  v11 = v8;
  [v8 appendCollection:rootsCopy withName:0 itemBlock:v10];
  v9 = BKLogEventDelivery();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v13 = v4;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_223CBE000, v9, OS_LOG_TYPE_DEFAULT, "new key command dispatching rules for pid:%d: %{public}@", buf, 0x12u);
  }

  [(BKHIDEventDeliveryManager *)self _lock_setKeyCommandRoots:rootsCopy forClientWithPID:v4];
  os_unfair_lock_unlock(&self->_lock);
}

void __65__BKHIDEventDeliveryManager_setKeyCommandRoots_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 reason];
  v6 = [v5 _stringRepresentation];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__BKHIDEventDeliveryManager_setKeyCommandRoots_forClientWithPID___block_invoke_2;
  v8[3] = &unk_2784F6508;
  v9 = v3;
  v10 = *(a1 + 32);
  v7 = v3;
  [v4 appendCustomFormatWithName:v6 block:v8];
}

- (void)_lock_setKeyCommandRoots:(uint64_t)roots forClientWithPID:
{
  if (self)
  {
    v5 = a2;
    os_unfair_lock_assert_owner((self + 8));
    obj = [v5 bs_map:&__block_literal_global_250];

    v6 = [(BKHIDEventDeliveryManager *)self _lock_clientWithPID:roots createIfNeeded:1];
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 32);
      if (v8)
      {
        [*(self + 96) removeObjectsInArray:v8];
      }

      objc_storeStrong(v7 + 4, obj);
    }

    else
    {
      v8 = 0;
    }

    if ([obj count])
    {
      [*(self + 96) addObjectsFromArray:obj];
    }
  }
}

_BKHIDKeyCommandDeliveryRoot *__71__BKHIDEventDeliveryManager__lock_setKeyCommandRoots_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(_BKHIDKeyCommandDeliveryRoot);
  v4 = MEMORY[0x277CCACA8];
  v5 = [v2 seed];
  v6 = [v2 reason];
  v8 = [v4 stringWithFormat:@"%u-%@", v5, v6];
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v7, v8, 8);
  }

  v9 = [v2 rule];
  if (v3)
  {
    objc_storeStrong(&v3->_dispatchingRule, v9);
  }

  return v3;
}

void __65__BKHIDEventDeliveryManager_setKeyCommandRoots_forClientWithPID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) rule];
  v3 = [v2 predicate];

  v4 = [v3 senderDescriptors];
  _BKDescribeSenderSet(*(a1 + 40), v4);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) rule];
  v7 = [v6 targets];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__BKHIDEventDeliveryManager_setKeyCommandRoots_forClientWithPID___block_invoke_3;
  v8[3] = &unk_2784F64E0;
  v9 = *(a1 + 40);
  [v5 appendCollection:v7 withName:@"targets" itemBlock:v8];
}

- (void)setDispatchingRoots:(id)roots forClientWithPID:(int)d
{
  v4 = *&d;
  v16 = *MEMORY[0x277D85DE8];
  rootsCopy = roots;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__BKHIDEventDeliveryManager_setDispatchingRoots_forClientWithPID___block_invoke;
  v10[3] = &unk_2784F64B8;
  v8 = v7;
  v11 = v8;
  [v8 appendCollection:rootsCopy withName:0 itemBlock:v10];
  v9 = BKLogEventDelivery();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v13 = v4;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_223CBE000, v9, OS_LOG_TYPE_DEFAULT, "new dispatching rulesets for pid:%d: %{public}@", buf, 0x12u);
  }

  [(BKHIDEventDeliveryManager *)self _lock_setDispatchingRoots:rootsCopy forClientWithPID:v4];
  os_unfair_lock_unlock(&self->_lock);
}

void __66__BKHIDEventDeliveryManager_setDispatchingRoots_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 rules];
  v6 = [v4 reason];

  v7 = [v6 _stringRepresentation];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__BKHIDEventDeliveryManager_setDispatchingRoots_forClientWithPID___block_invoke_2;
  v8[3] = &unk_2784F6490;
  v9 = *(a1 + 32);
  [v3 appendCollection:v5 withName:v7 itemBlock:v8];
}

- (void)_lock_setDispatchingRoots:(uint64_t)roots forClientWithPID:
{
  if (self)
  {
    v5 = a2;
    os_unfair_lock_assert_owner((self + 8));
    v6 = [v5 bs_map:&__block_literal_global_231];

    v7 = [(BKHIDEventDeliveryManager *)self _lock_clientWithPID:roots createIfNeeded:1];
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 24);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __72__BKHIDEventDeliveryManager__lock_setDispatchingRoots_forClientWithPID___block_invoke_2;
    v17 = &unk_2784F66A0;
    v11 = v10;
    v18 = v11;
    selfCopy = self;
    v12 = v8;
    v20 = v12;
    v13 = v6;
    v21 = v13;
    [(BKHIDEventDeliveryManager *)self _lock_notifyObserversForReason:&v14 chainsMayUpdate:?];
    [*(self + 144) removeAllObjects];
    if ([*(self + 120) count])
    {
      [*(self + 160) requestBufferReevaluationWithContext:0];
    }
  }
}

void __72__BKHIDEventDeliveryManager__lock_setDispatchingRoots_forClientWithPID___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v79 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 80) removeObjectsInArray:?];
  }

  v2 = *(v1 + 48);
  if (v2)
  {
    objc_storeStrong((v2 + 24), *(v1 + 56));
  }

  if ([*(v1 + 56) count])
  {
    [*(*(v1 + 40) + 80) addObjectsFromArray:*(v1 + 56)];
  }

  *(*(v1 + 40) + 88) = 0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = *(*(v1 + 40) + 80);
  v44 = [obj countByEnumeratingWithState:&v61 objects:v76 count:16];
  if (v44)
  {
    v42 = *v62;
    v43 = v1;
    do
    {
      v4 = 0;
      do
      {
        if (*v62 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v61 + 1) + 8 * v4);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v45 = v5;
        if (v5)
        {
          v5 = v5[2];
        }

        v46 = v4;
        v49 = v5;
        v6 = [v49 countByEnumeratingWithState:&v57 objects:v75 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = 0;
          v9 = *v58;
          v47 = *v58;
          do
          {
            v10 = 0;
            location = v7;
            do
            {
              if (*v58 != v9)
              {
                objc_enumerationMutation(v49);
              }

              v11 = *(*(&v57 + 1) + 8 * v10);
              v12 = [v11 predicate];
              v13 = [v12 senderDescriptors];

              if ([v13 count])
              {
                v51 = v11;
                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                v14 = v13;
                v15 = [v14 countByEnumeratingWithState:&v53 objects:v74 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v54;
                  do
                  {
                    for (i = 0; i != v16; ++i)
                    {
                      if (*v54 != v17)
                      {
                        objc_enumerationMutation(v14);
                      }

                      v19 = [*(*(&v53 + 1) + 8 * i) associatedDisplay];
                      if (!v19)
                      {
                        v19 = [MEMORY[0x277CF0698] nullDisplay];
                      }

                      [v3 addObject:v19];
                    }

                    v16 = [v14 countByEnumeratingWithState:&v53 objects:v74 count:16];
                  }

                  while (v16);
                  v9 = v47;
                  v7 = location;
                }

                v11 = v51;
              }

              else
              {
                v14 = [MEMORY[0x277CF0698] nullDisplay];
                [v3 addObject:v14];
              }

              v8 |= [v11 predicateEventTypeMask];
              ++v10;
            }

            while (v10 != v7);
            v7 = [v49 countByEnumeratingWithState:&v57 objects:v75 count:16];
          }

          while (v7);
        }

        else
        {
          v8 = 0;
        }

        if (v8)
        {
          v20 = -1;
        }

        else
        {
          v20 = v8;
        }

        if (v45)
        {
          v45[6] = v20;
        }

        v1 = v43;
        *(*(v43 + 40) + 88) |= v20;
        v4 = v46 + 1;
      }

      while (v46 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v61 objects:v76 count:16];
    }

    while (v44);
  }

  v21 = *(*(v1 + 40) + 112);
  v50 = v3;
  if (v21)
  {
    v22 = [*(v21 + 24) mutableCopy];
    v23 = v22;
    if (v22)
    {
      [v22 minusSet:v50];
    }

    v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v24 = *(v21 + 8);
    v25 = [v24 countByEnumeratingWithState:&v70 objects:v78 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v71;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v71 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v70 + 1) + 8 * j);
          v30 = [v29 display];
          v31 = [v23 containsObject:v30];

          if (v31)
          {
            [v52 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v70 objects:v78 count:16];
      }

      while (v26);
    }

    [*(v21 + 8) removeObjectsForKeys:v52];
    v32 = [v50 mutableCopy];
    v33 = v32;
    if (*(v21 + 24))
    {
      [v32 minusSet:?];
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v34 = v33;
    v35 = [v34 countByEnumeratingWithState:&v66 objects:v77 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v67;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v67 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v66 + 1) + 8 * k);
          v40 = *(v21 + 16);
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __43__BKEventDeferringGraph_setSenderDisplays___block_invoke;
          v65[3] = &unk_2784F7168;
          v65[4] = v21;
          v65[5] = v39;
          [v40 enumerateKeysAndObjectsUsingBlock:v65];
        }

        v36 = [v34 countByEnumeratingWithState:&v66 objects:v77 count:16];
      }

      while (v36);
    }

    objc_storeStrong((v21 + 24), v3);
  }
}

_BKHIDEventDeliveryRoot *__72__BKHIDEventDeliveryManager__lock_setDispatchingRoots_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(_BKHIDEventDeliveryRoot);
  v4 = MEMORY[0x277CCACA8];
  v5 = [v2 seed];
  v6 = [v2 reason];
  v8 = [v4 stringWithFormat:@"%u-%@", v5, v6];
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v7, v8, 8);
  }

  v9 = [v2 rules];
  if (v3)
  {
    objc_storeStrong(&v3->_dispatchingRules, v9);
  }

  return v3;
}

void __66__BKHIDEventDeliveryManager_setDispatchingRoots_forClientWithPID___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 predicate];
  v5 = [v4 senderDescriptors];
  _BKDescribeSenderSet(*(a1 + 32), v5);
  v6 = *(a1 + 32);
  v7 = [v4 descriptors];
  v8 = v6;
  v9 = v7;
  if ([v9 count])
  {
    v21 = v8;
    v22 = v5;
    v23 = v3;
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        v15 = 0;
        do
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(*(&v27 + 1) + 8 * v15), "hidEventType")}];
          [v10 addObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___BKDescribeEventDescriptors_block_invoke;
    v24[3] = &unk_2784F7270;
    v8 = v21;
    v25 = v21;
    v26 = v10;
    v17 = v10;
    [v25 sameLine:v24];

    v5 = v22;
    v3 = v23;
  }

  [*(a1 + 32) appendRightArrow];
  v18 = *(a1 + 32);
  v19 = [v3 target];
  v20 = [v18 appendObject:v19 withName:0 skipIfNil:0];
}

- (void)processDidTerminate:(int)terminate
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v9 = [(BSMutableIntegerMap *)self->_clientsByPID objectForKey:terminate];
  if (v9)
  {
    v5 = v9;
    os_unfair_lock_assert_owner(&self->_lock);
    v6 = *(v5 + 3);
    v7 = BKLogEventDelivery();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v6;
      _os_log_impl(&dword_223CBE000, v7, OS_LOG_TYPE_DEFAULT, "pid:%d terminated", buf, 8u);
    }

    v5[8] = 1;
    v8 = MEMORY[0x277CBEBF8];
    [(BKHIDEventDeliveryManager *)self _lock_setDispatchingRoots:v6 forClientWithPID:?];
    [(BKHIDEventDeliveryManager *)self _lock_setKeyCommandRoots:v8 forClientWithPID:v6];
    [(BKHIDEventDeliveryManager *)self _lock_setDeferringRules:v8 forClientWithPID:v6];
    [(BKHIDEventDeliveryManager *)self _lock_setKeyCommandsRegistrations:v6 forClientWithPID:?];
    [(BKHIDEventDeliveryManager *)self _lock_setEventBufferingPredicates:v6 forClientWithPID:?];
    [v5 invalidate];
    [(BSMutableIntegerMap *)self->_clientsByPID removeObjectForKey:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BKSHIDEventDisplay)mainDisplay
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_mainDisplay;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMainDisplay:(id)display
{
  v8 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (!displayCopy)
  {
    displayCopy = [MEMORY[0x277CF0698] builtinDisplay];
  }

  if (self->_mainDisplay != displayCopy)
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = displayCopy;
      _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEFAULT, "main display is now: %{public}@", &v6, 0xCu);
    }

    objc_storeStrong(&self->_mainDisplay, displayCopy);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)currentBuffersPerDispatchTarget
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_buffersByDispatchTarget copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_chainsStateCapture invalidate];
  chainsStateCapture = self->_chainsStateCapture;
  self->_chainsStateCapture = 0;

  [(BSInvalidatable *)self->_deferringRulesStateCapture invalidate];
  deferringRulesStateCapture = self->_deferringRulesStateCapture;
  self->_deferringRulesStateCapture = 0;

  [(BSInvalidatable *)self->_dispatchRootsStateCapture invalidate];
  dispatchRootsStateCapture = self->_dispatchRootsStateCapture;
  self->_dispatchRootsStateCapture = 0;

  [(BSInvalidatable *)self->_graphStateCapture invalidate];
  graphStateCapture = self->_graphStateCapture;
  self->_graphStateCapture = 0;

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(BSMutableIntegerMap *)self->_clientsByPID enumerateWithBlock:&__block_literal_global_360];
  os_unfair_lock_unlock(&self->_lock);
  v7.receiver = self;
  v7.super_class = BKHIDEventDeliveryManager;
  [(BKHIDEventDeliveryManager *)&v7 dealloc];
}

- (BKHIDEventDeliveryManager)initWithObserverService:(id)service
{
  serviceCopy = service;
  v39.receiver = self;
  v39.super_class = BKHIDEventDeliveryManager;
  v6 = [(BKHIDEventDeliveryManager *)&v39 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(BKEventDeferringGraph);
    deferringGraph = v7->_deferringGraph;
    v7->_deferringGraph = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deliveryRoots = v7->_deliveryRoots;
    v7->_deliveryRoots = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keyCommandDeliveryRoots = v7->_keyCommandDeliveryRoots;
    v7->_keyCommandDeliveryRoots = v12;

    v14 = objc_alloc_init(MEMORY[0x277CF0C68]);
    clientsByPID = v7->_clientsByPID;
    v7->_clientsByPID = v14;

    v16 = objc_alloc_init(MEMORY[0x277CF0C68]);
    bufferingPredicatesByPID = v7->_bufferingPredicatesByPID;
    v7->_bufferingPredicatesByPID = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    destinationCacheBySender = v7->_destinationCacheBySender;
    v7->_destinationCacheBySender = v18;

    objc_storeStrong(&v7->_resolutionObserver, service);
    builtinDisplay = [MEMORY[0x277CF0698] builtinDisplay];
    mainDisplay = v7->_mainDisplay;
    v7->_mainDisplay = builtinDisplay;

    v22 = objc_alloc_init(MEMORY[0x277CF0608]);
    authenticationOriginator = v7->_authenticationOriginator;
    v7->_authenticationOriginator = v22;

    v24 = objc_alloc_init(MEMORY[0x277CF06E0]);
    simpleProvenanceOriginator = v7->_simpleProvenanceOriginator;
    v7->_simpleProvenanceOriginator = v24;

    objc_initWeak(&location, v7);
    v26 = MEMORY[0x277D85CD0];
    v27 = MEMORY[0x277D85CD0];
    v36[1] = MEMORY[0x277D85DD0];
    v36[2] = 3221225472;
    v36[3] = __53__BKHIDEventDeliveryManager_initWithObserverService___block_invoke;
    v36[4] = &unk_2784F6448;
    objc_copyWeak(&v37, &location);
    v28 = BSLogAddStateCaptureBlock();
    chainsStateCapture = v7->_chainsStateCapture;
    v7->_chainsStateCapture = v28;

    v35[1] = MEMORY[0x277D85DD0];
    v35[2] = 3221225472;
    v35[3] = __53__BKHIDEventDeliveryManager_initWithObserverService___block_invoke_2;
    v35[4] = &unk_2784F6448;
    objc_copyWeak(v36, &location);
    v30 = BSLogAddStateCaptureBlock();
    deferringRulesStateCapture = v7->_deferringRulesStateCapture;
    v7->_deferringRulesStateCapture = v30;

    objc_copyWeak(v35, &location);
    v32 = BSLogAddStateCaptureBlock();
    dispatchRootsStateCapture = v7->_dispatchRootsStateCapture;
    v7->_dispatchRootsStateCapture = v32;

    objc_destroyWeak(v35);
    objc_destroyWeak(v36);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v7;
}

id __53__BKHIDEventDeliveryManager_initWithObserverService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained deliveryChainsDescription];

  return v2;
}

id __53__BKHIDEventDeliveryManager_initWithObserverService___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v3 = objc_alloc_init(BKStringTranscriptTarget);
    [(BKEventDeferringGraph *)*&v2[28]._os_unfair_lock_opaque logRulesToTarget:v3];
    os_unfair_lock_unlock(v2 + 2);
    v4 = [(BKStringTranscriptTarget *)v3 build];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __53__BKHIDEventDeliveryManager_initWithObserverService___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v3 = objc_alloc_init(BKStringTranscriptTarget);
    v4 = objc_alloc_init(MEMORY[0x277CF0C08]);
    v5 = *&v2[20]._os_unfair_lock_opaque;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__BKHIDEventDeliveryManager__dispatchRootsDescription__block_invoke;
    v9[3] = &unk_2784F65B8;
    v10 = v4;
    v6 = v4;
    [v6 appendCollection:v5 withName:0 itemBlock:v9];
    os_unfair_lock_unlock(v2 + 2);
    v7 = [(BKStringTranscriptTarget *)v3 build];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __54__BKHIDEventDeliveryManager__dispatchRootsDescription__block_invoke(uint64_t a1, id *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = a2;
    a2 = a2[2];
    v4 = v3[1];
  }

  else
  {
    v4 = 0;
  }

  v6 = a2;
  v5 = [v2 appendObject:a2 withName:v4];
}

- (BKHIDEventDeliveryManager)init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Use initWithObserverService:"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKHIDEventDeliveryManager.m";
    v17 = 1024;
    v18 = 295;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end