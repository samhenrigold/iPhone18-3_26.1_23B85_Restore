@interface WRWorkflowEventTracker
+ (id)tailspinDirectory;
+ (uint64_t)isReservedSignpostName:(uint64_t)name;
+ (uint64_t)isReservedWorkflowName:(uint64_t)name;
+ (void)cleanupDirectory:(void *)directory ofFilesWithSuffix:(double)suffix olderThan:;
+ (void)cleanupWorkflowResponsivenessDiagnosticsDirectory;
+ (void)makeTailspinDirectory;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)stats;
- (BOOL)gatherDiagnosticsIfNeeded;
- (BOOL)handleSignpost:(id)signpost;
- (BOOL)inMiddleOfEvent;
- (NSArray)allSignpostTrackers;
- (NSMutableDictionary)environment;
- (WRWorkflowEventTracker)initWithEncodedDict:(id)dict error:(id *)error;
- (WRWorkflowEventTracker)initWithEncodedString:(id)string error:(id *)error;
- (WRWorkflowEventTracker)initWithSpindump:(id)spindump error:(id *)error;
- (WRWorkflowEventTracker)initWithTailspin:(id)tailspin error:(id *)error;
- (WRWorkflowEventTracker)initWithWorkflow:(id)workflow eventCompletionCallback:(id)callback;
- (id)debugDescription;
- (id)diagnosticsExceedingThresholds;
- (id)encodedDict;
- (id)encodedStringWithError:(id *)error;
- (id)eventIdentifierForSignpostObject:(void *)object wrSignopst:;
- (id)individuationIdentifierForSignpostEvent:(void *)event individuationFieldName:;
- (id)individuationIdentifierForSignpostObject:(void *)object individuationFieldName:;
- (id)initForLiveStreamingWithWorkflow:(id)workflow timeoutQueue:(id)queue eventCompletionCallback:(id)callback;
- (id)initForReadbackWithWorkflow:(id)workflow eventCompletionCallback:(id)callback;
- (id)initWithWorkflow:(id *)workflow;
- (id)trackerForWRSignpost:(void *)signpost individuationIdentifier:;
- (id)valueForFieldName:(void *)name inSignpostEvent:;
- (id)valueForFieldName:(void *)name inSignpostObject:;
- (uint64_t)gatherDiagnosticsWithTailspin:(int)tailspin tailspinIncludeOSLogs:;
- (uint64_t)handleSignpost:(void *)signpost wrsignpost:;
- (uint64_t)haveAnyEndSignpostsWithIndividuationFieldName:(uint64_t)name;
- (void)applySignpost:(void *)signpost toSignpostTracker:;
- (void)checkForNonPublicField:(void *)field fieldName:(void *)name messageArgument:;
- (void)doneHandlingSignpostsWithEndTimeMachContNs:(unint64_t)ns;
- (void)fillInNonDiagnosticSignpost:(void *)signpost;
- (void)gatherDiagnosticsIfNeeded;
- (void)generateTelemetry;
- (void)handleError:(void *)error atEndTime:;
- (void)initWithEncodedData:(void *)data error:;
- (void)newConcurrentEventWithIdentifier:(void *)identifier;
- (void)reportCoreAnalyticsEventForSignpost:(void *)signpost allCount:(void *)count allDurationUnionSec:(void *)sec allDurationSumSec:(void *)sumSec allDurationLongestSec:(void *)longestSec allDurationUntrackedSec:(void *)untrackedSec allDurationNonNetworkBoundSec:(void *)boundSec allTimeUntilFirstSignpost:(void *)self0 allTimeAfterLastSignpost:(void *)self1 incompleteCount:(void *)self2 completeDurationUnionSec:(void *)self3 completeDurationSumSec:(void *)self4 completeDurationLongestSec:(void *)self5 completeTimeUntilFirstSignpost:(void *)self6 environment:;
- (void)reportErrorsAndResetAtMachContNs:(void *)ns date:;
- (void)reset;
- (void)resetWithoutReportingErrors;
- (void)sawIndividuationFieldName:(void *)name withIndividuationIdentifier:;
- (void)submitCAEventName:(void *)name dict:(void *)dict forSignpost:;
@end

@implementation WRWorkflowEventTracker

- (id)initForReadbackWithWorkflow:(id)workflow eventCompletionCallback:(id)callback
{
  workflowCopy = workflow;
  callbackCopy = callback;
  v8 = [(WRWorkflowEventTracker *)&self->super.isa initWithWorkflow:workflowCopy];
  if (v8)
  {
    v9 = MEMORY[0x277C5A9A0](callbackCopy);
    v10 = v8[18];
    v8[18] = v9;

    v11 = objc_alloc(MEMORY[0x277CBEB18]);
    allSignposts = [workflowCopy allSignposts];
    v13 = [v11 initWithCapacity:{objc_msgSend(allSignposts, "count")}];
    v14 = v8[13];
    v8[13] = v13;

    v15 = objc_alloc(MEMORY[0x277CBEB18]);
    endSignpostGroups = [workflowCopy endSignpostGroups];
    v17 = [v15 initWithCapacity:{objc_msgSend(endSignpostGroups, "count")}];
    v18 = v8[19];
    v8[19] = v17;

    endSignpostGroups2 = [workflowCopy endSignpostGroups];
    v20 = [endSignpostGroups2 count];

    if (v20)
    {
      v22 = 0;
      do
      {
        Property = objc_getProperty(v8, v21, 152, 1);
        v24 = MEMORY[0x277CBEB68];
        v25 = Property;
        null = [v24 null];
        [v25 addObject:null];

        ++v22;
        endSignpostGroups3 = [workflowCopy endSignpostGroups];
        v28 = [endSignpostGroups3 count];
      }

      while (v22 < v28);
    }
  }

  return v8;
}

- (id)initForLiveStreamingWithWorkflow:(id)workflow timeoutQueue:(id)queue eventCompletionCallback:(id)callback
{
  queueCopy = queue;
  v10 = [(WRWorkflowEventTracker *)self initForReadbackWithWorkflow:workflow eventCompletionCallback:callback];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 15, queue);
  }

  return v11;
}

- (BOOL)inMiddleOfEvent
{
  eventStart = [(WRWorkflowEventTracker *)self eventStart];
  v3 = eventStart != 0;

  return v3;
}

- (id)valueForFieldName:(void *)name inSignpostObject:
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  nameCopy = name;
  v7 = 0;
  if (self && v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      beginEvent = nameCopy;
      v7 = [(WRWorkflowEventTracker *)self valueForFieldName:v5 inSignpostEvent:beginEvent];
      if (!v7)
      {
        [beginEvent name];

        workflow = [self workflow];
        [workflow name];

        [self eventIdentifier];
        eventIdentifier = [self eventIdentifier];

        v11 = __error();
        v12 = *v11;
        v13 = _wrlog(v11);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
        if (eventIdentifier)
        {
          if (v14)
          {
            workflow2 = [self workflow];
            name = [workflow2 name];
            eventIdentifier2 = [self eventIdentifier];
            name2 = [beginEvent name];
            *buf = 138544386;
            v46 = name;
            v47 = 2114;
            v48 = eventIdentifier2;
            v49 = 2114;
            v50 = name2;
            v51 = 2114;
            v52 = v5;
            v53 = 2112;
            v54 = 0;
            _os_log_fault_impl(&dword_2746E5000, v13, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: No field value", buf, 0x34u);
          }
        }

        else if (v14)
        {
          workflow3 = [self workflow];
          name3 = [workflow3 name];
          name4 = [beginEvent name];
          *buf = 138544130;
          v46 = name3;
          v47 = 2114;
          v48 = name4;
          v49 = 2114;
          v50 = v5;
          v51 = 2112;
          v52 = 0;
          _os_log_fault_impl(&dword_2746E5000, v13, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: %{public}@->%@: No field value", buf, 0x2Au);
        }

        *__error() = v12;
      }

LABEL_29:

      goto LABEL_30;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      beginEvent = [nameCopy beginEvent];
      v19 = [(WRWorkflowEventTracker *)self valueForFieldName:v5 inSignpostEvent:beginEvent];
      if (v19)
      {
        v7 = v19;
      }

      else
      {
        endEvent = [nameCopy endEvent];
        v27 = [(WRWorkflowEventTracker *)self valueForFieldName:v5 inSignpostEvent:endEvent];
        if (!v27)
        {
          [nameCopy name];

          workflow4 = [self workflow];
          [workflow4 name];

          [self eventIdentifier];
          eventIdentifier3 = [self eventIdentifier];

          v30 = __error();
          v31 = *v30;
          v32 = _wrlog(v30);
          v33 = os_log_type_enabled(v32, OS_LOG_TYPE_FAULT);
          if (eventIdentifier3)
          {
            if (v33)
            {
              workflow5 = [self workflow];
              name5 = [workflow5 name];
              eventIdentifier4 = [self eventIdentifier];
              name6 = [nameCopy name];
              *buf = 138544386;
              v46 = name5;
              v47 = 2114;
              v48 = eventIdentifier4;
              v49 = 2114;
              v50 = name6;
              v51 = 2114;
              v52 = v5;
              v53 = 2112;
              v54 = 0;
              _os_log_fault_impl(&dword_2746E5000, v32, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: No field value", buf, 0x34u);
            }
          }

          else if (v33)
          {
            workflow6 = [self workflow];
            name7 = [workflow6 name];
            name8 = [nameCopy name];
            *buf = 138544130;
            v46 = name7;
            v47 = 2114;
            v48 = name8;
            v49 = 2114;
            v50 = v5;
            v51 = 2112;
            v52 = 0;
            _os_log_fault_impl(&dword_2746E5000, v32, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: %{public}@->%@: No field value", buf, 0x2Au);
          }

          *__error() = v31;
        }

        v7 = v27;
      }

      goto LABEL_29;
    }

    workflow7 = [self workflow];
    [workflow7 name];

    [self eventIdentifier];
    eventIdentifier5 = [self eventIdentifier];

    v22 = __error();
    v23 = *v22;
    v24 = _wrlog(v22);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
    if (eventIdentifier5)
    {
      if (v25)
      {
        [WRWorkflowEventTracker valueForFieldName:inSignpostObject:];
      }
    }

    else if (v25)
    {
      [WRWorkflowEventTracker valueForFieldName:inSignpostObject:];
    }

    v7 = 0;
    *__error() = v23;
  }

LABEL_30:

  return v7;
}

- (id)valueForFieldName:(void *)name inSignpostEvent:
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2;
  nameCopy = name;
  v7 = nameCopy;
  stringValue = 0;
  if (self && v5)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [nameCopy metadataSegments];
    v9 = [obj countByEnumeratingWithState:&v50 objects:v65 count:16];
    if (v9)
    {
      v10 = v9;
      selfCopy = self;
      v43 = v7;
      v45 = v5;
      v11 = *v51;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v50 + 1) + 8 * i);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          placeholderTokens = [v13 placeholderTokens];
          v15 = [placeholderTokens countByEnumeratingWithState:&v46 objects:v64 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v47;
LABEL_10:
            v18 = 0;
            while (1)
            {
              if (*v47 != v17)
              {
                objc_enumerationMutation(placeholderTokens);
              }

              v19 = *(*(&v46 + 1) + 8 * v18);
              if ([v19 hasPrefix:@"name="])
              {
                break;
              }

              if (v16 == ++v18)
              {
                v16 = [placeholderTokens countByEnumeratingWithState:&v46 objects:v64 count:16];
                if (v16)
                {
                  goto LABEL_10;
                }

                goto LABEL_16;
              }
            }

            v20 = PlaceholderNameMatches(v19, v45);

            if (!v20)
            {
              continue;
            }

            argument = [v13 argument];
            v7 = v43;
            v5 = v45;
            [(WRWorkflowEventTracker *)selfCopy checkForNonPublicField:v43 fieldName:v45 messageArgument:argument];
            type = [argument type];
            switch(type)
            {
              case 3:
                argumentObject = [argument argumentObject];
                stringValue = [argumentObject stringValue];

                goto LABEL_38;
              case 2:
                [v43 name];

                workflow = [selfCopy workflow];
                [workflow name];

                [selfCopy eventIdentifier];
                eventIdentifier = [selfCopy eventIdentifier];

                v25 = __error();
                v26 = *v25;
                v27 = _wrlog(v25);
                v28 = os_log_type_enabled(v27, OS_LOG_TYPE_FAULT);
                if (eventIdentifier)
                {
                  if (v28)
                  {
                    workflow2 = [selfCopy workflow];
                    name = [workflow2 name];
                    eventIdentifier2 = [selfCopy eventIdentifier];
                    name2 = [v43 name];
                    *buf = 138544386;
                    v55 = name;
                    v56 = 2114;
                    v57 = eventIdentifier2;
                    v58 = 2114;
                    v59 = name2;
                    v60 = 2114;
                    v61 = v45;
                    v62 = 2112;
                    v63 = 0;
                    _os_log_fault_impl(&dword_2746E5000, v27, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: metadata is data type", buf, 0x34u);
                    goto LABEL_33;
                  }

LABEL_37:

                  stringValue = 0;
                  *__error() = v26;
                  goto LABEL_38;
                }

                if (!v28)
                {
                  goto LABEL_37;
                }

                workflow3 = [selfCopy workflow];
                name3 = [workflow3 name];
                name4 = [v43 name];
                *buf = 138544130;
                v55 = name3;
                v56 = 2114;
                v57 = name4;
                v58 = 2114;
                v59 = v45;
                v60 = 2112;
                v61 = 0;
                _os_log_fault_impl(&dword_2746E5000, v27, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: %{public}@->%@: metadata is data type", buf, 0x2Au);
                break;
              case 1:
                stringValue = [argument argumentObject];
LABEL_38:

                goto LABEL_39;
              default:
                [v43 name];

                workflow4 = [selfCopy workflow];
                [workflow4 name];

                [selfCopy eventIdentifier];
                eventIdentifier3 = [selfCopy eventIdentifier];

                v36 = __error();
                v26 = *v36;
                v27 = _wrlog(v36);
                v37 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
                if (eventIdentifier3)
                {
                  if (v37)
                  {
                    workflow2 = [selfCopy workflow];
                    name = [workflow2 name];
                    eventIdentifier2 = [selfCopy eventIdentifier];
                    name2 = [v43 name];
                    *buf = 138544386;
                    v55 = name;
                    v56 = 2114;
                    v57 = eventIdentifier2;
                    v58 = 2114;
                    v59 = name2;
                    v60 = 2114;
                    v61 = v45;
                    v62 = 2112;
                    v63 = 0;
                    _os_log_error_impl(&dword_2746E5000, v27, OS_LOG_TYPE_ERROR, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: found missing individuation identifier", buf, 0x34u);
LABEL_33:

                    v5 = v45;
                  }

                  goto LABEL_37;
                }

                if (!v37)
                {
                  goto LABEL_37;
                }

                workflow3 = [selfCopy workflow];
                name3 = [workflow3 name];
                name4 = [v43 name];
                *buf = 138544130;
                v55 = name3;
                v56 = 2114;
                v57 = name4;
                v58 = 2114;
                v59 = v45;
                v60 = 2112;
                v61 = 0;
                _os_log_error_impl(&dword_2746E5000, v27, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: %{public}@->%@: found missing individuation identifier", buf, 0x2Au);
                break;
            }

            goto LABEL_37;
          }

LABEL_16:
        }

        v10 = [obj countByEnumeratingWithState:&v50 objects:v65 count:16];
        if (!v10)
        {
          stringValue = 0;
          v5 = v45;
          v7 = v43;
          goto LABEL_39;
        }
      }
    }

    stringValue = 0;
LABEL_39:
  }

  return stringValue;
}

void __58__WRWorkflowEventTracker_applySignpost_toSignpostTracker___block_invoke(uint64_t a1, void *a2)
{
  v164 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v130 = a1;
  v129 = (a1 + 32);
  v4 = [*(a1 + 32) signpost];
  v5 = [v4 environmentFieldNames];

  if (v5)
  {
    v132 = v5;
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v128 = v3;
    obj = [v3 metadataSegments];
    v134 = [obj countByEnumeratingWithState:&v143 objects:v163 count:16];
    if (!v134)
    {
      goto LABEL_108;
    }

    v133 = *v144;
    *&v6 = 138543874;
    v114 = v6;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v144 != v133)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v143 + 1) + 8 * v7);
        v139 = 0u;
        v140 = 0u;
        v141 = 0u;
        v142 = 0u;
        v9 = [v8 placeholderTokens];
        v10 = [v9 countByEnumeratingWithState:&v139 objects:v162 count:16];
        if (!v10)
        {
          goto LABEL_25;
        }

        v11 = v10;
        v12 = *v140;
LABEL_9:
        v13 = 0;
        while (1)
        {
          if (*v140 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v139 + 1) + 8 * v13);
          if ([v14 hasPrefix:@"name="])
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v139 objects:v162 count:16];
            if (!v11)
            {
LABEL_25:

              goto LABEL_27;
            }

            goto LABEL_9;
          }
        }

        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v15 = v132;
        v16 = [v15 countByEnumeratingWithState:&v135 objects:v161 count:16];
        if (!v16)
        {
          goto LABEL_24;
        }

        v17 = v16;
        v18 = *v136;
LABEL_18:
        v19 = 0;
        while (1)
        {
          if (*v136 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v135 + 1) + 8 * v19);
          if (PlaceholderNameMatches(v14, v20))
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v15 countByEnumeratingWithState:&v135 objects:v161 count:16];
            if (!v17)
            {
LABEL_24:

              goto LABEL_25;
            }

            goto LABEL_18;
          }
        }

        v21 = v20;

        if (v21)
        {
          goto LABEL_55;
        }

LABEL_27:
        v22 = [v8 stringPrefix];
        if (!v22)
        {
          goto LABEL_49;
        }

        v21 = v22;
        v23 = [v22 length];
        v24 = [v21 UTF8String];
        if (!v24)
        {
          goto LABEL_47;
        }

        v25 = v24;
        v26 = (v24 + v23 - 1);
        if (*v26 != 61)
        {
          goto LABEL_47;
        }

        if (v26 == v24)
        {
          v27 = 0;
          goto LABEL_40;
        }

        v27 = 0;
        while (2)
        {
          v28 = v25[v23 - 1 + v27];
          if ((v28 & 0x80000000) == 0)
          {
            if ((*(MEMORY[0x277D85DE0] + 4 * v28 + 60) & 0x4000) != 0)
            {
              break;
            }

            goto LABEL_36;
          }

          if (!__maskrune(v28, 0x4000uLL))
          {
LABEL_36:
            --v27;
            if (!(v23 - 1 + v27))
            {
              goto LABEL_40;
            }

            continue;
          }

          break;
        }

        v25 = &v25[v23 - 1 + v27];
LABEL_40:
        v29 = *v25;
        if ((v29 & 0x80000000) != 0)
        {
          v30 = __maskrune(v29, 0x4000uLL);
        }

        else
        {
          v30 = *(MEMORY[0x277D85DE0] + 4 * v29 + 60) & 0x4000;
        }

        if (v30)
        {
          v31 = v27 + 1;
        }

        else
        {
          v31 = v27;
        }

        if ((v31 & 0x8000000000000000) == 0)
        {
LABEL_47:
          v32 = 0;
          goto LABEL_48;
        }

        v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v26[v31] length:-v31 encoding:4];
        if (!v32)
        {
          goto LABEL_48;
        }

        v33 = [v132 indexOfObject:v32];
        if (v33 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_48;
        }

        v34 = [v132 objectAtIndexedSubscript:v33];

        if (v34)
        {
          v21 = v34;
LABEL_55:
          v32 = [v8 argument];
          [(WRWorkflowEventTracker *)*(v130 + 40) checkForNonPublicField:v128 fieldName:v21 messageArgument:v32];
          Property = *(v130 + 32);
          if (Property)
          {
            Property = objc_getProperty(Property, v35, 32, 1);
          }

          if (!Property)
          {
            __58__WRWorkflowEventTracker_applySignpost_toSignpostTracker___block_invoke_cold_1(v129);
          }

          v37 = [v32 type];
          if (v37 != 3)
          {
            if (v37 == 2)
            {
              v54 = [*v129 signpost];
              v55 = [v54 individuationFieldName];

              if (v55)
              {
                v56 = [*(v130 + 32) signpost];
                [v56 individuationFieldName];

                [*(v130 + 32) individuationIdentifier];
                [v128 name];

                v57 = [*(v130 + 40) workflow];
                [v57 name];

                [*(v130 + 40) eventIdentifier];
                v58 = [*(v130 + 40) eventIdentifier];

                v59 = __error();
                v60 = *v59;
                v61 = _wrlog(v59);
                v62 = os_log_type_enabled(v61, OS_LOG_TYPE_FAULT);
                if (v58)
                {
                  if (v62)
                  {
                    v120 = [*(v130 + 40) workflow];
                    log = [v120 name];
                    v63 = [*(v130 + 40) eventIdentifier];
                    v64 = [v128 name];
                    v117 = [*(v130 + 32) signpost];
                    v65 = [v117 individuationFieldName];
                    v66 = [*(v130 + 32) individuationIdentifier];
                    *buf = 138544642;
                    v148 = log;
                    v149 = 2114;
                    v150 = v63;
                    v151 = 2114;
                    v152 = v64;
                    v153 = 2114;
                    v154 = v65;
                    v155 = 2112;
                    v156 = v66;
                    v157 = 2114;
                    v158 = v21;
                    _os_log_fault_impl(&dword_2746E5000, v61, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: contained environment %{public}@ not a number/string", buf, 0x3Eu);
                    goto LABEL_74;
                  }

                  goto LABEL_103;
                }

                if (!v62)
                {
                  goto LABEL_103;
                }

                loga = [*(v130 + 40) workflow];
                v105 = [loga name];
                v106 = [v128 name];
                v122 = [*(v130 + 32) signpost];
                v107 = [v122 individuationFieldName];
                v108 = [*(v130 + 32) individuationIdentifier];
                *buf = 138544386;
                v148 = v105;
                v149 = 2114;
                v150 = v106;
                v151 = 2114;
                v152 = v107;
                v153 = 2112;
                v154 = v108;
                v155 = 2114;
                v156 = v21;
                _os_log_fault_impl(&dword_2746E5000, v61, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: %{public}@->%@: contained environment %{public}@ not a number/string", buf, 0x34u);
                goto LABEL_95;
              }

              [v128 name];

              v89 = [*(v130 + 40) workflow];
              [v89 name];

              [*(v130 + 40) eventIdentifier];
              v90 = [*(v130 + 40) eventIdentifier];

              v91 = __error();
              v60 = *v91;
              v61 = _wrlog(v91);
              v92 = os_log_type_enabled(v61, OS_LOG_TYPE_FAULT);
              if (v90)
              {
                if (!v92)
                {
                  goto LABEL_103;
                }

                v93 = [*(v130 + 40) workflow];
                v94 = [v93 name];
                v95 = [*(v130 + 40) eventIdentifier];
                v96 = [v128 name];
                *buf = 138544130;
                v148 = v94;
                v149 = 2114;
                v150 = v95;
                v151 = 2114;
                v152 = v96;
                v153 = 2114;
                v154 = v21;
                _os_log_fault_impl(&dword_2746E5000, v61, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: contained environment %{public}@ not a number/string", buf, 0x2Au);
                goto LABEL_88;
              }

              if (!v92)
              {
                goto LABEL_103;
              }

              v93 = [*(v130 + 40) workflow];
              v109 = [v93 name];
              v110 = [v128 name];
              *buf = v114;
              v148 = v109;
              v149 = 2114;
              v150 = v110;
              v151 = 2114;
              v152 = v21;
              _os_log_fault_impl(&dword_2746E5000, v61, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: contained environment %{public}@ not a number/string", buf, 0x20u);
            }

            else
            {
              if (v37 == 1)
              {
                goto LABEL_62;
              }

              v67 = [*v129 signpost];
              v68 = [v67 individuationFieldName];

              if (v68)
              {
                v69 = [*(v130 + 32) signpost];
                [v69 individuationFieldName];

                [*(v130 + 32) individuationIdentifier];
                [v128 name];

                v70 = [*(v130 + 40) workflow];
                [v70 name];

                [*(v130 + 40) eventIdentifier];
                v71 = [*(v130 + 40) eventIdentifier];

                v72 = __error();
                v60 = *v72;
                v61 = _wrlog(v72);
                v73 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
                if (v71)
                {
                  if (v73)
                  {
                    v120 = [*(v130 + 40) workflow];
                    log = [v120 name];
                    v63 = [*(v130 + 40) eventIdentifier];
                    v64 = [v128 name];
                    v117 = [*(v130 + 32) signpost];
                    v65 = [v117 individuationFieldName];
                    v66 = [*(v130 + 32) individuationIdentifier];
                    *buf = 138544642;
                    v148 = log;
                    v149 = 2114;
                    v150 = v63;
                    v151 = 2114;
                    v152 = v64;
                    v153 = 2114;
                    v154 = v65;
                    v155 = 2112;
                    v156 = v66;
                    v157 = 2114;
                    v158 = v21;
                    _os_log_error_impl(&dword_2746E5000, v61, OS_LOG_TYPE_ERROR, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: missing environment %{public}@", buf, 0x3Eu);
LABEL_74:

                    v74 = v120;
LABEL_96:
                  }

LABEL_103:

                  *__error() = v60;
                  v87 = [MEMORY[0x277CBEB68] null];
LABEL_104:
                  v111 = v87;
                  v112 = *v129;
                  if (*v129)
                  {
                    v112 = objc_getProperty(v112, v88, 32, 1);
                  }

                  [v112 setObject:v111 forKeyedSubscript:v21];

LABEL_48:
                  goto LABEL_49;
                }

                if (!v73)
                {
                  goto LABEL_103;
                }

                loga = [*(v130 + 40) workflow];
                v105 = [loga name];
                v106 = [v128 name];
                v122 = [*(v130 + 32) signpost];
                v107 = [v122 individuationFieldName];
                v108 = [*(v130 + 32) individuationIdentifier];
                *buf = 138544386;
                v148 = v105;
                v149 = 2114;
                v150 = v106;
                v151 = 2114;
                v152 = v107;
                v153 = 2112;
                v154 = v108;
                v155 = 2114;
                v156 = v21;
                _os_log_error_impl(&dword_2746E5000, v61, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: %{public}@->%@: missing environment %{public}@", buf, 0x34u);
LABEL_95:

                v74 = loga;
                goto LABEL_96;
              }

              [v128 name];

              v97 = [*(v130 + 40) workflow];
              [v97 name];

              [*(v130 + 40) eventIdentifier];
              v98 = [*(v130 + 40) eventIdentifier];

              v99 = __error();
              v60 = *v99;
              v61 = _wrlog(v99);
              v100 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
              if (v98)
              {
                if (!v100)
                {
                  goto LABEL_103;
                }

                v93 = [*(v130 + 40) workflow];
                v94 = [v93 name];
                v95 = [*(v130 + 40) eventIdentifier];
                v96 = [v128 name];
                *buf = 138544130;
                v148 = v94;
                v149 = 2114;
                v150 = v95;
                v151 = 2114;
                v152 = v96;
                v153 = 2114;
                v154 = v21;
                _os_log_error_impl(&dword_2746E5000, v61, OS_LOG_TYPE_ERROR, "%{public}@<%{public}@>: %{public}@: missing environment %{public}@", buf, 0x2Au);
LABEL_88:

LABEL_102:
                goto LABEL_103;
              }

              if (!v100)
              {
                goto LABEL_103;
              }

              v93 = [*(v130 + 40) workflow];
              v109 = [v93 name];
              v110 = [v128 name];
              *buf = v114;
              v148 = v109;
              v149 = 2114;
              v150 = v110;
              v151 = 2114;
              v152 = v21;
              _os_log_error_impl(&dword_2746E5000, v61, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: missing environment %{public}@", buf, 0x20u);
            }

            goto LABEL_102;
          }

LABEL_62:
          v38 = [*v129 signpost];
          v39 = [v38 individuationFieldName];

          if (v39)
          {
            v40 = [*(v130 + 32) signpost];
            [v40 individuationFieldName];

            [*(v130 + 32) individuationIdentifier];
            [v128 name];

            v41 = [*(v130 + 40) workflow];
            [v41 name];

            [*(v130 + 40) eventIdentifier];
            v42 = [*(v130 + 40) eventIdentifier];

            v43 = __error();
            v44 = *v43;
            v45 = _wrlog(v43);
            v46 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
            if (v42)
            {
              if (v46)
              {
                v116 = [*(v130 + 40) workflow];
                [v116 name];
                v47 = v119 = v44;
                v48 = [*(v130 + 40) eventIdentifier];
                v49 = [v128 name];
                v115 = [*(v130 + 32) signpost];
                [v115 individuationFieldName];
                v50 = logb = v45;
                v51 = [*(v130 + 32) individuationIdentifier];
                v52 = [v32 argumentObject];
                *buf = 138544898;
                v148 = v47;
                v149 = 2114;
                v150 = v48;
                v151 = 2114;
                v152 = v49;
                v153 = 2114;
                v154 = v50;
                v155 = 2112;
                v156 = v51;
                v157 = 2114;
                v158 = v21;
                v159 = 2114;
                v160 = v52;
                _os_log_impl(&dword_2746E5000, logb, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: contained environment %{public}@->%{public}@", buf, 0x48u);

                v45 = logb;
                v44 = v119;
                v53 = v116;
                goto LABEL_80;
              }

              goto LABEL_81;
            }

            if (!v46)
            {
              goto LABEL_81;
            }

            v121 = [*(v130 + 40) workflow];
            logd = [v121 name];
            v83 = [v128 name];
            v118 = [*(v130 + 32) signpost];
            v84 = [v118 individuationFieldName];
            v85 = [*(v130 + 32) individuationIdentifier];
            v86 = [v32 argumentObject];
            *buf = 138544642;
            v148 = logd;
            v149 = 2114;
            v150 = v83;
            v151 = 2114;
            v152 = v84;
            v153 = 2112;
            v154 = v85;
            v155 = 2114;
            v156 = v21;
            v157 = 2114;
            v158 = v86;
            _os_log_impl(&dword_2746E5000, v45, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: %{public}@->%@: contained environment %{public}@->%{public}@", buf, 0x3Eu);

            v53 = v121;
          }

          else
          {
            [v128 name];

            v75 = [*(v130 + 40) workflow];
            [v75 name];

            [*(v130 + 40) eventIdentifier];
            v76 = [*(v130 + 40) eventIdentifier];

            v77 = __error();
            v44 = *v77;
            v45 = _wrlog(v77);
            v78 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
            if (!v76)
            {
              if (v78)
              {
                v101 = [*(v130 + 40) workflow];
                v102 = [v101 name];
                v103 = [v128 name];
                v104 = [v32 argumentObject];
                *buf = 138544130;
                v148 = v102;
                v149 = 2114;
                v150 = v103;
                v151 = 2114;
                v152 = v21;
                v153 = 2114;
                v154 = v104;
                _os_log_impl(&dword_2746E5000, v45, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: contained environment %{public}@->%{public}@", buf, 0x2Au);
              }

              goto LABEL_81;
            }

            if (!v78)
            {
LABEL_81:

              *__error() = v44;
              v87 = [v32 argumentObject];
              goto LABEL_104;
            }

            logc = [*(v130 + 40) workflow];
            v79 = [logc name];
            v80 = [*(v130 + 40) eventIdentifier];
            v81 = [v128 name];
            v82 = [v32 argumentObject];
            *buf = 138544386;
            v148 = v79;
            v149 = 2114;
            v150 = v80;
            v151 = 2114;
            v152 = v81;
            v153 = 2114;
            v154 = v21;
            v155 = 2114;
            v156 = v82;
            _os_log_impl(&dword_2746E5000, v45, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: contained environment %{public}@->%{public}@", buf, 0x34u);

            v53 = logc;
          }

LABEL_80:

          goto LABEL_81;
        }

LABEL_49:
        ++v7;
      }

      while (v7 != v134);
      v113 = [obj countByEnumeratingWithState:&v143 objects:v163 count:16];
      v134 = v113;
      if (!v113)
      {
LABEL_108:

        v3 = v128;
        v5 = v132;
        break;
      }
    }
  }
}

- (void)doneHandlingSignpostsWithEndTimeMachContNs:(unint64_t)ns
{
  v26 = *MEMORY[0x277D85DE8];
  if (![(WRWorkflowEventTracker *)self inMiddleOfEvent])
  {
    return;
  }

  workflow = [(WRWorkflowEventTracker *)self workflow];
  if ([workflow hasMaximumEventDuration])
  {
    workflow2 = [(WRWorkflowEventTracker *)self workflow];
    [workflow2 maximumEventDuration];
    v8 = v7;
    eventStart = [(WRWorkflowEventTracker *)self eventStart];
    if (v8 < (ns + [eventStart machContTimeNs]) / 1000000000.0)
    {
      ignoreEventTimeouts = [(WRWorkflowEventTracker *)self ignoreEventTimeouts];

      if (!ignoreEventTimeouts)
      {
        [WRWorkflowEventTracker doneHandlingSignpostsWithEndTimeMachContNs:];
        return;
      }

      goto LABEL_8;
    }
  }

LABEL_8:
  workflow3 = [(WRWorkflowEventTracker *)self workflow];
  [workflow3 name];

  [(WRWorkflowEventTracker *)self eventIdentifier];
  eventIdentifier = [(WRWorkflowEventTracker *)self eventIdentifier];

  v13 = __error();
  v14 = *v13;
  v15 = _wrlog(v13);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (eventIdentifier)
  {
    if (v16)
    {
      workflow4 = [(WRWorkflowEventTracker *)self workflow];
      name = [workflow4 name];
      eventIdentifier2 = [(WRWorkflowEventTracker *)self eventIdentifier];
      v22 = 138543618;
      v23 = name;
      v24 = 2114;
      v25 = eventIdentifier2;
      _os_log_impl(&dword_2746E5000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: Incomplete event when done handling signposts, ignoring", &v22, 0x16u);
    }
  }

  else if (v16)
  {
    workflow5 = [(WRWorkflowEventTracker *)self workflow];
    name2 = [workflow5 name];
    v22 = 138543362;
    v23 = name2;
    _os_log_impl(&dword_2746E5000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Incomplete event when done handling signposts, ignoring", &v22, 0xCu);
  }

  *__error() = v14;
}

- (BOOL)handleSignpost:(id)signpost
{
  v194 = *MEMORY[0x277D85DE8];
  signpostCopy = signpost;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = signpostCopy;
  }

  else
  {
    v5 = 0;
  }

  isSyntheticIntervalEvent = [v5 isSyntheticIntervalEvent];
  workflow = [(WRWorkflowEventTracker *)self workflow];
  v8 = [(WRWorkflow *)workflow wrsignpostForSignpostObject:signpostCopy];

  if (v8)
  {
    workflow2 = [(WRWorkflowEventTracker *)self workflow];
    workflowSupportsConcurrentEvents = [workflow2 workflowSupportsConcurrentEvents];

    if (workflowSupportsConcurrentEvents)
    {
      v169 = v8;
      selfa = self;
      if (v5)
      {
        individuationFieldName = [v8 individuationFieldName];
        if (individuationFieldName && ![v5 eventType])
        {
          v46 = isSyntheticIntervalEvent;
          workflow3 = [(WRWorkflowEventTracker *)selfa workflow];
          startSignposts = [workflow3 startSignposts];
          if ([startSignposts indexOfObjectIdenticalTo:v8] == 0x7FFFFFFFFFFFFFFFLL)
          {
            individuationFieldName2 = [v8 individuationFieldName];
            v128 = [(WRWorkflowEventTracker *)selfa haveAnyEndSignpostsWithIndividuationFieldName:individuationFieldName2];

            if (v128)
            {
              v8 = v169;
              selfCopy = selfa;
              [(WRWorkflowEventTracker *)v169 handleSignpost:v5, buf];
              v12 = *buf;
            }

            else
            {
              v12 = 0;
              v8 = v169;
              selfCopy = selfa;
            }
          }

          else
          {

            v12 = 0;
            selfCopy = selfa;
          }

          isSyntheticIntervalEvent = v46;
LABEL_11:
          eventIdentifierFieldName = [v8 eventIdentifierFieldName];
          if (eventIdentifierFieldName)
          {
          }

          else if (([v8 eventIdentifierIsSignpostID] & 1) == 0)
          {
            v178 = 0u;
            v179 = 0u;
            v176 = 0u;
            v177 = 0u;
            if (selfCopy)
            {
              Property = objc_getProperty(selfCopy, v15, 112, 1);
            }

            else
            {
              Property = 0;
            }

            v17 = [Property copy];
            v18 = [v17 countByEnumeratingWithState:&v176 objects:v193 count:16];
            if (v18)
            {
              v19 = v18;
              v159 = v5;
              v162 = v12;
              v164 = isSyntheticIntervalEvent;
              v20 = 0;
              v21 = *v177;
              v168 = v17;
              do
              {
                v22 = 0;
                do
                {
                  if (*v177 != v21)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v23 = *(*(&v176 + 1) + 8 * v22);
                  v24 = [(WRWorkflowEventTracker *)v23 handleSignpost:signpostCopy wrsignpost:v8];
                  if (([v23 inMiddleOfEvent] & 1) == 0)
                  {
                    v26 = v23 ? objc_getProperty(v23, v25, 136, 1) : 0;
                    if (![v26 count])
                    {
                      v27 = signpostCopy;
                      workflow4 = [(WRWorkflowEventTracker *)selfCopy workflow];
                      [workflow4 name];

                      [v23 eventIdentifier];
                      eventIdentifier = [v23 eventIdentifier];

                      v30 = __error();
                      v31 = *v30;
                      v32 = _wrlog(v30);
                      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
                      if (eventIdentifier)
                      {
                        if (v33)
                        {
                          workflow5 = [(WRWorkflowEventTracker *)selfa workflow];
                          name = [workflow5 name];
                          eventIdentifier2 = [v23 eventIdentifier];
                          *buf = 138543618;
                          *&buf[4] = name;
                          v183 = 2114;
                          v184 = eventIdentifier2;
                          v35 = eventIdentifier2;
                          _os_log_debug_impl(&dword_2746E5000, v32, OS_LOG_TYPE_DEBUG, "%{public}@<%{public}@>: concurrent workflow done", buf, 0x16u);
                        }
                      }

                      else if (v33)
                      {
                        [(WRWorkflowEventTracker *)v191 handleSignpost:&v192, v32];
                      }

                      *__error() = v31;
                      selfCopy = selfa;
                      if (selfa)
                      {
                        v37 = objc_getProperty(selfa, v36, 112, 1);
                      }

                      else
                      {
                        v37 = 0;
                      }

                      signpostCopy = v27;
                      v17 = v168;
                      [v37 removeObjectIdenticalTo:v23];
                      v8 = v169;
                    }
                  }

                  v20 |= v24;
                  ++v22;
                }

                while (v19 != v22);
                v38 = [v17 countByEnumeratingWithState:&v176 objects:v193 count:16];
                v19 = v38;
              }

              while (v38);

              v5 = v159;
              v12 = v162;
              isSyntheticIntervalEvent = v164;
              if (v20)
              {
                v40 = 1;
                if (!v162)
                {
LABEL_39:
                  if (isSyntheticIntervalEvent)
                  {
LABEL_140:

                    goto LABEL_141;
                  }

                  if (v40)
                  {
                    ++selfa->_numHandledSignposts;
                    goto LABEL_140;
                  }

LABEL_52:
                  ++selfa->_numOutsideSignposts;
                  goto LABEL_140;
                }

LABEL_120:
                v126 = selfa;
                if (selfa)
                {
                  v126 = objc_getProperty(selfa, v39, 136, 1);
                }

                if (v126)
                {
                  [(WRWorkflowEventTracker *)selfa == 0 handleSignpost:v12];
                }

                else
                {
                  [(WRWorkflowEventTracker *)v12 handleSignpost:?];
                }

                goto LABEL_39;
              }
            }

            else
            {
            }

            if (!v12)
            {
              [signpostCopy name];

              workflow6 = [(WRWorkflowEventTracker *)selfCopy workflow];
              [workflow6 name];

              v43 = __error();
              v44 = *v43;
              v45 = _wrlog(v43);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
              {
                [WRWorkflowEventTracker handleSignpost:];
              }

              *__error() = v44;
              if (isSyntheticIntervalEvent)
              {
                goto LABEL_140;
              }

              goto LABEL_52;
            }

            v80 = isSyntheticIntervalEvent;
            v81 = [objc_getProperty(v12 v39];

            if (v81)
            {
              [objc_getProperty(v12 v82];

              objc_getProperty(v12, v107, 16, 1);
              [signpostCopy name];

              workflow7 = [(WRWorkflowEventTracker *)selfa workflow];
              [workflow7 name];

              v109 = __error();
              v86 = *v109;
              _wrlog(v109);
              v87 = v110 = v12;
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
              {
                workflow8 = [(WRWorkflowEventTracker *)selfa workflow];
                name2 = [workflow8 name];
                name3 = [signpostCopy name];
                [objc_getProperty(v110 v114];
                v115 = v161 = v5;
                v83 = v110;
                v117 = objc_getProperty(v110, v116, 16, 1);
                startMachContinuousTime = [signpostCopy startMachContinuousTime];
                *buf = 138544386;
                *&buf[4] = name2;
                v183 = 2114;
                v184 = name3;
                v185 = 2114;
                v186 = v115;
                v187 = 2112;
                v188 = v117;
                v189 = 2048;
                v190 = startMachContinuousTime;
                _os_log_debug_impl(&dword_2746E5000, v87, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@: %{public}@->%@: outside any workflow event (%llu)", buf, 0x34u);

                v5 = v161;
                v8 = v169;
              }

              else
              {
                v83 = v110;
              }
            }

            else
            {
              v83 = v12;
              [signpostCopy name];

              workflow9 = [(WRWorkflowEventTracker *)selfa workflow];
              [workflow9 name];

              v85 = __error();
              v86 = *v85;
              v87 = _wrlog(v85);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
              {
                [WRWorkflowEventTracker handleSignpost:];
              }
            }

            isSyntheticIntervalEvent = v80;

            v40 = 0;
            *__error() = v86;
            v12 = v83;
            goto LABEL_120;
          }

          [(WRWorkflowEventTracker *)selfCopy eventIdentifierForSignpostObject:signpostCopy wrSignopst:v8];
          v51 = v49 = v8;
          v165 = isSyntheticIntervalEvent;
          v163 = v12;
          if (v51)
          {
            v173 = 0u;
            v174 = 0u;
            v171 = 0u;
            v172 = 0u;
            v160 = v5;
            v52 = signpostCopy;
            if (selfCopy)
            {
              v53 = objc_getProperty(selfCopy, v50, 112, 1);
            }

            else
            {
              v53 = 0;
            }

            v54 = [v53 copy];
            v55 = [v54 countByEnumeratingWithState:&v171 objects:v180 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v172;
              while (2)
              {
                for (i = 0; i != v56; ++i)
                {
                  if (*v172 != v57)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v59 = *(*(&v171 + 1) + 8 * i);
                  eventIdentifier3 = [v59 eventIdentifier];
                  v61 = [eventIdentifier3 isEqualToString:v51];

                  if (v61)
                  {
                    signpostCopy = v52;
                    v69 = [(WRWorkflowEventTracker *)v59 handleSignpost:v52 wrsignpost:v169];
                    v5 = v160;
                    v71 = selfa;
                    if (([v59 inMiddleOfEvent] & 1) == 0)
                    {
                      v72 = v59 ? objc_getProperty(v59, v70, 136, 1) : 0;
                      if (![v72 count])
                      {
                        workflow10 = [(WRWorkflowEventTracker *)selfa workflow];
                        [workflow10 name];

                        [v59 eventIdentifier];
                        eventIdentifier4 = [v59 eventIdentifier];

                        v75 = __error();
                        v76 = *v75;
                        v77 = _wrlog(v75);
                        v78 = os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG);
                        if (eventIdentifier4)
                        {
                          if (v78)
                          {
                            [WRWorkflowEventTracker handleSignpost:];
                          }
                        }

                        else if (v78)
                        {
                          [WRWorkflowEventTracker handleSignpost:?];
                        }

                        *__error() = v76;
                        v5 = v160;
                        v71 = selfa;
                        if (selfa)
                        {
                          v132 = objc_getProperty(selfa, v131, 112, 1);
                        }

                        else
                        {
                          v132 = 0;
                        }

                        [v132 removeObjectIdenticalTo:v59];
                      }
                    }

                    if ((v165 & 1) == 0)
                    {
                      v133 = 80;
                      if (v69)
                      {
                        v133 = 72;
                      }

                      ++*(&v71->super.isa + v133);
                    }

                    v12 = v163;
                    goto LABEL_139;
                  }
                }

                v56 = [v54 countByEnumeratingWithState:&v171 objects:v180 count:16];
                if (v56)
                {
                  continue;
                }

                break;
              }
            }

            signpostCopy = v52;
            [v52 name];

            workflow11 = [(WRWorkflowEventTracker *)selfa workflow];
            [workflow11 name];

            v63 = __error();
            v64 = *v63;
            v65 = _wrlog(v63);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
            {
              workflow12 = [(WRWorkflowEventTracker *)selfa workflow];
              name4 = [workflow12 name];
              name5 = [v52 name];
              *buf = 138543874;
              *&buf[4] = name4;
              v183 = 2114;
              v184 = v51;
              v185 = 2114;
              v186 = name5;
              _os_log_debug_impl(&dword_2746E5000, v65, OS_LOG_TYPE_DEBUG, "%{public}@<%{public}@>: %{public}@: No concurrent event with event identifier", buf, 0x20u);
            }

            *__error() = v64;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              workflow13 = [(WRWorkflowEventTracker *)selfa workflow];
              startSignposts2 = [workflow13 startSignposts];
              v68 = [startSignposts2 indexOfObjectIdenticalTo:v169] != 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v68 = 0;
            }

            v5 = v160;
            v12 = v163;
            v119 = v165;
            if (v68 || v163)
            {
              [v52 name];

              workflow14 = [(WRWorkflowEventTracker *)selfa workflow];
              [workflow14 name];

              v142 = __error();
              v143 = *v142;
              v144 = _wrlog(v142);
              if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
              {
                workflow15 = [(WRWorkflowEventTracker *)selfa workflow];
                name6 = [workflow15 name];
                name7 = [v52 name];
                *buf = 138543874;
                *&buf[4] = name6;
                v183 = 2114;
                v184 = v51;
                v185 = 2114;
                v186 = name7;
                _os_log_debug_impl(&dword_2746E5000, v144, OS_LOG_TYPE_DEBUG, "%{public}@<%{public}@>: %{public}@: Allocating new concurrent event", buf, 0x20u);

                v119 = v165;
                v12 = v163;

                v5 = v160;
              }

              *__error() = v143;
              v148 = [(WRWorkflowEventTracker *)selfa newConcurrentEventWithIdentifier:v51];
              v149 = [(WRWorkflowEventTracker *)v148 handleSignpost:v52 wrsignpost:v169];
              if ((v119 & 1) == 0)
              {
                v150 = 80;
                if (v149)
                {
                  v150 = 72;
                }

                ++*(&selfa->super.isa + v150);
              }
            }

            else if ((v165 & 1) == 0)
            {
              ++selfa->_numOutsideSignposts;
            }

            goto LABEL_139;
          }

          if ([v49 eventIdentifierIsSignpostID])
          {
            eventIdentifierFieldName2 = @"signpost id";
          }

          else
          {
            eventIdentifierFieldName2 = [v49 eventIdentifierFieldName];
            if (!eventIdentifierFieldName2)
            {
              v88 = v5;
              [signpostCopy name];

              workflow16 = [(WRWorkflowEventTracker *)selfCopy workflow];
              [workflow16 name];

              v130 = __error();
              v91 = *v130;
              v92 = _wrlog(v130);
              if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
              {
                v94 = selfa;
                [WRWorkflowEventTracker handleSignpost:];
                eventIdentifierFieldName2 = 0;
                v93 = 1;
                goto LABEL_89;
              }

              eventIdentifierFieldName2 = 0;
              v93 = 1;
              goto LABEL_88;
            }
          }

          v88 = v5;
          [signpostCopy name];

          workflow17 = [(WRWorkflowEventTracker *)selfCopy workflow];
          [workflow17 name];

          v90 = __error();
          v91 = *v90;
          v92 = _wrlog(v90);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            workflow18 = [(WRWorkflowEventTracker *)selfa workflow];
            name8 = [workflow18 name];
            name9 = [signpostCopy name];
            *buf = 138544130;
            *&buf[4] = name8;
            v183 = 2114;
            v184 = name9;
            v185 = 2114;
            v186 = eventIdentifierFieldName2;
            v187 = 2112;
            v188 = 0;
            _os_log_error_impl(&dword_2746E5000, v92, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: %{public}@->%@: Unable to get event identifier, ignoring signpost", buf, 0x2Au);

            v94 = selfa;
            v93 = 0;
            goto LABEL_89;
          }

          v93 = 0;
LABEL_88:
          v94 = selfa;
LABEL_89:

          *__error() = v91;
          [(WRWorkflowEventTracker *)v94 workflow];
          v96 = v95 = v94;
          startSignposts3 = [v96 startSignposts];
          v98 = [startSignposts3 indexOfObjectIdenticalTo:v169];

          [signpostCopy name];
          workflow19 = [(WRWorkflowEventTracker *)v95 workflow];
          [workflow19 name];

          v100 = __error();
          v101 = *v100;
          v102 = _wrlog(v100);
          v103 = os_log_type_enabled(v102, OS_LOG_TYPE_ERROR);
          v5 = v88;
          if (v98 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v104 = v165;
            if (v93)
            {
              v105 = selfa;
              if (v103)
              {
                [WRWorkflowEventTracker handleSignpost:];
              }
            }

            else
            {
              v105 = selfa;
              if (v103)
              {
                workflow20 = [(WRWorkflowEventTracker *)selfa workflow];
                [workflow20 name];
                v153 = v152 = v5;
                name10 = [signpostCopy name];
                *buf = 138544130;
                *&buf[4] = v153;
                v183 = 2114;
                v184 = name10;
                v185 = 2114;
                v186 = eventIdentifierFieldName2;
                v187 = 2112;
                v188 = 0;
                _os_log_error_impl(&dword_2746E5000, v102, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: %{public}@->%@: Unable to get event identifier, ignoring signpost", buf, 0x2Au);

                v5 = v152;
                v105 = selfa;
              }
            }

            *__error() = v101;
            v12 = v163;
          }

          else
          {
            v104 = v165;
            if (v93)
            {
              v106 = selfa;
              if (v103)
              {
                [WRWorkflowEventTracker handleSignpost:];
              }
            }

            else
            {
              v106 = selfa;
              if (v103)
              {
                workflow21 = [(WRWorkflowEventTracker *)selfa workflow];
                [workflow21 name];
                v157 = v156 = v5;
                name11 = [signpostCopy name];
                *buf = 138544130;
                *&buf[4] = v157;
                v183 = 2114;
                v184 = name11;
                v185 = 2114;
                v186 = eventIdentifierFieldName2;
                v187 = 2112;
                v188 = 0;
                _os_log_error_impl(&dword_2746E5000, v102, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: %{public}@->%@: Unable to get event identifier for start signpost, throwing out all current events in case they were incomplete events", buf, 0x2Au);

                v5 = v156;
                v106 = selfa;
              }
            }

            *__error() = v101;
            memset(v175, 0, sizeof(v175));
            if (v106)
            {
              v121 = objc_getProperty(v106, v120, 112, 1);
            }

            else
            {
              v121 = 0;
            }

            v12 = v163;
            v122 = v121;
            v123 = [v122 countByEnumeratingWithState:v175 objects:v181 count:16];
            if (v123)
            {
              [(WRWorkflowEventTracker *)v175 handleSignpost:v122, v123, v181];
            }

            v105 = selfa;
            if (selfa)
            {
              v125 = objc_getProperty(selfa, v124, 112, 1);
            }

            else
            {
              v125 = 0;
            }

            [v125 removeAllObjects];
          }

          if ((v104 & 1) == 0)
          {
            ++v105->_numOutsideSignposts;
          }

LABEL_139:
          v8 = v169;
          goto LABEL_140;
        }
      }

      v12 = 0;
      selfCopy = self;
      goto LABEL_11;
    }

    v41 = [(WRWorkflowEventTracker *)self handleSignpost:signpostCopy wrsignpost:v8];
    if ((isSyntheticIntervalEvent & 1) == 0)
    {
      if (v41)
      {
        ++self->_numHandledSignposts;
      }

      else
      {
        ++self->_numOutsideSignposts;
      }
    }
  }

  else if ((isSyntheticIntervalEvent & 1) == 0)
  {
    ++self->_numUnhandledSignposts;
  }

LABEL_141:

  return v8 != 0;
}

- (uint64_t)handleSignpost:(void *)signpost wrsignpost:
{
  v441 = *MEMORY[0x277D85DE8];
  v403 = a2;
  newValue = signpost;
  if (!self)
  {
    goto LABEL_75;
  }

  self = self;
  workflow = objc_getProperty(self, v5, 120, 1);
  if (workflow)
  {
    goto LABEL_3;
  }

  selfCopy5 = self;
  if (![self inMiddleOfEvent])
  {
    goto LABEL_9;
  }

  workflow = [self workflow];
  if (![workflow hasMaximumEventDuration])
  {
LABEL_3:
    selfCopy5 = self;
LABEL_9:

    goto LABEL_10;
  }

  selfCopy5 = self;
  ignoreEventTimeouts = [self ignoreEventTimeouts];

  if ((ignoreEventTimeouts & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      timeRecordedNanoseconds = [v403 timeRecordedNanoseconds];
    }

    else
    {
      beginEvent = [v403 beginEvent];
      timeRecordedNanoseconds = [beginEvent timeRecordedNanoseconds];

      selfCopy5 = self;
    }

    eventStart = [selfCopy5 eventStart];
    machContTimeNs = [eventStart machContTimeNs];
    workflow2 = [self workflow];
    [workflow2 maximumEventDuration];
    v149 = machContTimeNs + (v148 * 1000000000.0);

    v150 = v149 >= timeRecordedNanoseconds;
    selfCopy5 = self;
    if (!v150)
    {
      [(WRWorkflowEventTracker *)v403 handleSignpost:timeRecordedNanoseconds wrsignpost:self, buf];
      workflow = *buf;
      goto LABEL_3;
    }
  }

LABEL_10:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_76;
  }

  v385 = v403;
  workflow3 = [selfCopy5 workflow];
  startSignposts = [workflow3 startSignposts];
  v12 = [startSignposts indexOfObjectIdenticalTo:newValue];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    inMiddleOfEvent = [self inMiddleOfEvent];
    [v385 name];

    workflow4 = [self workflow];
    [workflow4 name];

    [self eventIdentifier];
    eventIdentifier = [self eventIdentifier];

    v17 = __error();
    v18 = *v17;
    v19 = _wrlog(v17);
    v20 = v19;
    if (inMiddleOfEvent)
    {
      v21 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (eventIdentifier)
      {
        if (v21)
        {
          [WRWorkflowEventTracker handleSignpost:v385 wrsignpost:?];
        }
      }

      else if (v21)
      {
        [WRWorkflowEventTracker handleSignpost:v385 wrsignpost:?];
      }
    }

    else
    {
      v22 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (eventIdentifier)
      {
        if (v22)
        {
          workflow5 = [self workflow];
          name = [workflow5 name];
          eventIdentifier2 = [self eventIdentifier];
          [v385 name];
          v26 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          [v385 beginDate];
          v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v28 = COERCE_DOUBLE([v385 startMachContinuousTime]);
          *buf = 138544386;
          *&buf[4] = name;
          v422 = 2114;
          v423 = eventIdentifier2;
          v424 = 2114;
          v425 = v26;
          v426 = 2112;
          v427 = v27;
          v428 = 2048;
          v429 = v28;
          _os_log_impl(&dword_2746E5000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: %{public}@: event start @ %@ (%llu)", buf, 0x34u);
        }
      }

      else if (v22)
      {
        workflow6 = [self workflow];
        name2 = [workflow6 name];
        name3 = [v385 name];
        [v385 beginDate];
        v32 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v33 = COERCE_DOUBLE([v385 startMachContinuousTime]);
        *buf = 138544130;
        *&buf[4] = name2;
        v422 = 2114;
        v423 = name3;
        v424 = 2112;
        v425 = v32;
        v426 = 2048;
        v427 = v33;
        _os_log_impl(&dword_2746E5000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: event start @ %@ (%llu)", buf, 0x2Au);
      }
    }

    *__error() = v18;
    v35 = objc_getProperty(self, v34, 136, 1);
    timeRecordedNanoseconds2 = [v385 timeRecordedNanoseconds];
    beginDate = [v385 beginDate];
    v38 = [beginDate dateByAddingTimeInterval:{(objc_msgSend(v385, "timeRecordedNanoseconds") - objc_msgSend(v385, "startNanoseconds")) / 1000000000.0}];
    [(WRWorkflowEventTracker *)self reportErrorsAndResetAtMachContNs:timeRecordedNanoseconds2 date:v38];

    v419 = 0u;
    v420 = 0u;
    v417 = 0u;
    v418 = 0u;
    obj = v35;
    v40 = [obj countByEnumeratingWithState:&v417 objects:v440 count:16];
    if (v40)
    {
      v41 = *v418;
      do
      {
        v42 = 0;
        do
        {
          if (*v418 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v417 + 1) + 8 * v42);
          if (v43)
          {
            Property = objc_getProperty(*(*(&v417 + 1) + 8 * v42), v39, 8, 1);
          }

          else
          {
            Property = 0;
          }

          v45 = Property;
          individuationFieldName = [v45 individuationFieldName];

          if (individuationFieldName)
          {
            if (v43)
            {
              v48 = objc_getProperty(v43, v47, 16, 1);
            }

            else
            {
              v48 = 0;
            }

            [(WRWorkflowEventTracker *)self sawIndividuationFieldName:individuationFieldName withIndividuationIdentifier:v48];
          }

          else
          {
            if (v43)
            {
              v49 = objc_getProperty(v43, v47, 8, 1);
            }

            else
            {
              v49 = 0;
            }

            v50 = v49;
            [v50 name];

            workflow7 = [self workflow];
            [workflow7 name];

            [self eventIdentifier];
            eventIdentifier3 = [self eventIdentifier];

            v53 = eventIdentifier3 == 0;
            v54 = __error();
            v55 = *v54;
            v56 = _wrlog(v54);
            v57 = os_log_type_enabled(v56, OS_LOG_TYPE_FAULT);
            if (v53)
            {
              if (v57)
              {
                workflow8 = [self workflow];
                name4 = [workflow8 name];
                if (v43)
                {
                  v66 = objc_getProperty(v43, v65, 8, 1);
                }

                else
                {
                  v66 = 0;
                }

                v67 = v66;
                name5 = [v67 name];
                if (v43)
                {
                  v70 = objc_getProperty(v43, v68, 16, 1);
                }

                else
                {
                  v70 = 0;
                }

                v71 = COERCE_DOUBLE(v70);
                *buf = 138543874;
                *&buf[4] = name4;
                v422 = 2114;
                v423 = name5;
                v424 = 2112;
                v425 = v71;
                _os_log_fault_impl(&dword_2746E5000, v56, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: No indivudation field name for identifier %@", buf, 0x20u);
              }
            }

            else if (v57)
            {
              workflow9 = [self workflow];
              name6 = [workflow9 name];
              eventIdentifier4 = [self eventIdentifier];
              if (v43)
              {
                v59 = objc_getProperty(v43, v58, 8, 1);
              }

              else
              {
                v59 = 0;
              }

              v60 = v59;
              [v60 name];
              v62 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              if (v43)
              {
                v63 = objc_getProperty(v43, v61, 16, 1);
              }

              else
              {
                v63 = 0;
              }

              v64 = COERCE_DOUBLE(v63);
              *buf = 138544130;
              *&buf[4] = name6;
              v422 = 2114;
              v423 = eventIdentifier4;
              v424 = 2114;
              v425 = v62;
              v426 = 2112;
              v427 = v64;
              _os_log_fault_impl(&dword_2746E5000, v56, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: No indivudation field name for identifier %@", buf, 0x2Au);
            }

            *__error() = v55;
          }

          ++v42;
        }

        while (v40 != v42);
        v72 = [obj countByEnumeratingWithState:&v417 objects:v440 count:16];
        v40 = v72;
      }

      while (v72);
    }

    objc_setProperty_atomic(self, v73, newValue, 40);
    v74 = [WRTimestampAndThread alloc];
    processID = [v385 processID];
    threadID = [v385 threadID];
    startNanoseconds = [v385 startNanoseconds];
    beginDate2 = [v385 beginDate];
    v79 = [(WRTimestampAndThread *)&v74->super.isa initWithPID:processID threadID:threadID machContTimeNs:startNanoseconds date:beginDate2];
    objc_setProperty_atomic(self, v80, v79, 32);

    v82 = objc_getProperty(self, v81, 120, 1);
    if (!v82)
    {
      goto LABEL_73;
    }

    workflow10 = [self workflow];
    if ([workflow10 hasMaximumEventDuration])
    {
      ignoreEventTimeouts2 = [self ignoreEventTimeouts];

      if (ignoreEventTimeouts2)
      {
LABEL_73:

        goto LABEL_74;
      }

      startNanoseconds2 = [v385 startNanoseconds];
      workflow10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v82);
      workflow11 = [self workflow];
      [workflow11 maximumEventDuration];
      v88 = v87;

      if (v88 / 100.0 >= 1.0)
      {
        v89 = v88 / 100.0;
      }

      else
      {
        v89 = 1.0;
      }

      workflow12 = [self workflow];
      [workflow12 maximumEventDuration];
      v92 = dispatch_time(0, (v91 * 1000000000.0));
      dispatch_source_set_timer(workflow10, v92, 0xFFFFFFFFFFFFFFFFLL, (v89 * 1000000000.0));

      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __52__WRWorkflowEventTracker_handleSignpost_wrsignpost___block_invoke;
      handler[3] = &unk_279EE32B8;
      handler[4] = self;
      handler[5] = startNanoseconds2;
      dispatch_source_set_event_handler(workflow10, handler);
      dispatch_activate(workflow10);
      objc_setProperty_atomic(self, v93, workflow10, 128);
    }

    goto LABEL_73;
  }

  if (![v385 eventType] && (objc_msgSend(self, "inMiddleOfEvent") & 1) == 0)
  {
    individuationFieldName2 = [newValue individuationFieldName];

    if (individuationFieldName2)
    {
      [(WRWorkflowEventTracker *)newValue handleSignpost:v385 wrsignpost:?];
    }
  }

LABEL_74:
  isSyntheticIntervalEvent = [v385 isSyntheticIntervalEvent];

  if ((isSyntheticIntervalEvent & 1) == 0)
  {
LABEL_76:
    [newValue individuationFieldName];
    obja = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [(WRWorkflowEventTracker *)self individuationIdentifierForSignpostObject:v403 individuationFieldName:*&obja];
    v402 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v399 = [(WRWorkflowEventTracker *)self trackerForWRSignpost:*&v402 individuationIdentifier:?];
    if (![self inMiddleOfEvent] || (v96 = objc_msgSend(v403, "endNanoseconds"), objc_msgSend(self, "eventStart"), v97 = objc_claimAutoreleasedReturnValue(), LODWORD(v96) = v96 < objc_msgSend(v97, "machContTimeNs"), v97, v96))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (v98 = [v403 startNanoseconds], objc_msgSend(v403, "beginEvent"), v99 = objc_claimAutoreleasedReturnValue(), v100 = objc_msgSend(v99, "threadID"), v99, objc_msgSend(objc_getProperty(self, v101, 136, 1), "count")))
      {
        [(WRWorkflowEventTracker *)self handleSignpost:v98 wrsignpost:v100, buf];
        v95 = buf[0];
      }

      else
      {
        v95 = 0;
      }

      goto LABEL_200;
    }

    if (obja != 0.0 && v402 != 0.0)
    {
      [(WRWorkflowEventTracker *)self sawIndividuationFieldName:*&v402 withIndividuationIdentifier:?];
    }

    startNanoseconds3 = [v403 startNanoseconds];
    v103 = startNanoseconds3 == [v403 endNanoseconds];
    [v403 name];

    workflow13 = [self workflow];
    [workflow13 name];

    [self eventIdentifier];
    eventIdentifier5 = [self eventIdentifier];

    v106 = __error();
    v107 = *v106;
    v108 = _wrlog(v106);
    v109 = os_log_type_enabled(v108, OS_LOG_TYPE_INFO);
    if (v103)
    {
      if (obja == 0.0)
      {
        if (eventIdentifier5)
        {
          if (v109)
          {
            workflow14 = [self workflow];
            name7 = [workflow14 name];
            eventIdentifier6 = [self eventIdentifier];
            [v403 name];
            v130 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            startNanoseconds4 = [v403 startNanoseconds];
            eventStart2 = [self eventStart];
            machContTimeNs2 = [eventStart2 machContTimeNs];
            v134 = COERCE_DOUBLE([v403 startMachContinuousTime]);
            *buf = 138544386;
            *&buf[4] = name7;
            v422 = 2114;
            v423 = eventIdentifier6;
            v424 = 2114;
            v425 = v130;
            v426 = 2048;
            v427 = (startNanoseconds4 - machContTimeNs2) / 1000000000.0;
            v428 = 2048;
            v429 = v134;
            _os_log_impl(&dword_2746E5000, v108, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: event middle %+.3fs @%llu", buf, 0x34u);
          }
        }

        else if (v109)
        {
          workflow15 = [self workflow];
          name8 = [workflow15 name];
          name9 = [v403 name];
          startNanoseconds5 = [v403 startNanoseconds];
          eventStart3 = [self eventStart];
          machContTimeNs3 = [eventStart3 machContTimeNs];
          v173 = COERCE_DOUBLE([v403 startMachContinuousTime]);
          *buf = 138544130;
          *&buf[4] = name8;
          v422 = 2114;
          v423 = name9;
          v424 = 2048;
          v425 = (startNanoseconds5 - machContTimeNs3) / 1000000000.0;
          v426 = 2048;
          v427 = v173;
          _os_log_impl(&dword_2746E5000, v108, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: event middle %+.3fs @%llu", buf, 0x2Au);
        }
      }

      else if (eventIdentifier5)
      {
        if (v109)
        {
          workflow16 = [self workflow];
          name10 = [workflow16 name];
          eventIdentifier7 = [self eventIdentifier];
          [v403 name];
          v113 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          startNanoseconds6 = [v403 startNanoseconds];
          eventStart4 = [self eventStart];
          machContTimeNs4 = [eventStart4 machContTimeNs];
          *&v117 = COERCE_DOUBLE([v403 startMachContinuousTime]);
          *buf = 138544898;
          *&buf[4] = name10;
          v422 = 2114;
          v423 = eventIdentifier7;
          v424 = 2114;
          v425 = v113;
          v426 = 2114;
          v427 = obja;
          v428 = 2112;
          v429 = v402;
          v430 = 2048;
          v431 = (startNanoseconds6 - machContTimeNs4) / 1000000000.0;
          v432 = 2048;
          v433 = *&v117;
          _os_log_impl(&dword_2746E5000, v108, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: event middle %+.3fs @%llu", buf, 0x48u);
        }
      }

      else if (v109)
      {
        workflow17 = [self workflow];
        name11 = [workflow17 name];
        name12 = [v403 name];
        startNanoseconds7 = [v403 startNanoseconds];
        eventStart5 = [self eventStart];
        machContTimeNs5 = [eventStart5 machContTimeNs];
        v157 = COERCE_DOUBLE([v403 startMachContinuousTime]);
        *buf = 138544642;
        *&buf[4] = name11;
        v422 = 2114;
        v423 = name12;
        v424 = 2114;
        v425 = obja;
        v426 = 2112;
        v427 = v402;
        v428 = 2048;
        v429 = (startNanoseconds7 - machContTimeNs5) / 1000000000.0;
        v430 = 2048;
        v431 = v157;
        _os_log_impl(&dword_2746E5000, v108, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: %{public}@->%@: event middle %+.3fs @%llu", buf, 0x3Eu);
      }
    }

    else if (obja == 0.0)
    {
      if (eventIdentifier5)
      {
        if (v109)
        {
          workflow18 = [self workflow];
          name13 = [workflow18 name];
          eventIdentifier8 = [self eventIdentifier];
          [v403 name];
          v378 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          startNanoseconds8 = [v403 startNanoseconds];
          eventStart6 = [self eventStart];
          machContTimeNs6 = [eventStart6 machContTimeNs];
          endNanoseconds = [v403 endNanoseconds];
          eventStart7 = [self eventStart];
          machContTimeNs7 = [eventStart7 machContTimeNs];
          endNanoseconds2 = [v403 endNanoseconds];
          startNanoseconds9 = [v403 startNanoseconds];
          *&v142 = COERCE_DOUBLE([v403 startMachContinuousTime]);
          v143 = COERCE_DOUBLE([v403 endMachContinuousTime]);
          *buf = 138545154;
          *&buf[4] = name13;
          v422 = 2114;
          v423 = eventIdentifier8;
          v424 = 2114;
          v425 = v378;
          v426 = 2048;
          v427 = (startNanoseconds8 - machContTimeNs6) / 1000000000.0;
          v428 = 2048;
          v429 = (endNanoseconds - machContTimeNs7) / 1000000000.0;
          v430 = 2048;
          v431 = (endNanoseconds2 - startNanoseconds9) / 1000000000.0;
          v432 = 2048;
          v433 = *&v142;
          v434 = 2048;
          v435 = v143;
          _os_log_impl(&dword_2746E5000, v108, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: event middle %+.3fs - %+.3fs (%.3fs) @%llu-%llu", buf, 0x52u);
        }
      }

      else if (v109)
      {
        workflow19 = [self workflow];
        name14 = [workflow19 name];
        name15 = [v403 name];
        startNanoseconds10 = [v403 startNanoseconds];
        eventStart8 = [self eventStart];
        machContTimeNs8 = [eventStart8 machContTimeNs];
        endNanoseconds3 = [v403 endNanoseconds];
        eventStart9 = [self eventStart];
        machContTimeNs9 = [eventStart9 machContTimeNs];
        endNanoseconds4 = [v403 endNanoseconds];
        startNanoseconds11 = [v403 startNanoseconds];
        v181 = COERCE_DOUBLE([v403 startMachContinuousTime]);
        *&v182 = COERCE_DOUBLE([v403 endMachContinuousTime]);
        *buf = 138544898;
        *&buf[4] = name14;
        v422 = 2114;
        v423 = name15;
        v424 = 2048;
        v425 = (startNanoseconds10 - machContTimeNs8) / 1000000000.0;
        v426 = 2048;
        v427 = (endNanoseconds3 - machContTimeNs9) / 1000000000.0;
        v428 = 2048;
        v429 = (endNanoseconds4 - startNanoseconds11) / 1000000000.0;
        v430 = 2048;
        v431 = v181;
        v432 = 2048;
        v433 = *&v182;
        _os_log_impl(&dword_2746E5000, v108, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: event middle %+.3fs - %+.3fs (%.3fs) @%llu-%llu", buf, 0x48u);
      }
    }

    else if (eventIdentifier5)
    {
      if (v109)
      {
        workflow20 = [self workflow];
        name16 = [workflow20 name];
        eventIdentifier9 = [self eventIdentifier];
        [v403 name];
        v377 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        startNanoseconds12 = [v403 startNanoseconds];
        eventStart10 = [self eventStart];
        machContTimeNs10 = [eventStart10 machContTimeNs];
        endNanoseconds5 = [v403 endNanoseconds];
        eventStart11 = [self eventStart];
        machContTimeNs11 = [eventStart11 machContTimeNs];
        endNanoseconds6 = [v403 endNanoseconds];
        startNanoseconds13 = [v403 startNanoseconds];
        startMachContinuousTime = [v403 startMachContinuousTime];
        endMachContinuousTime = [v403 endMachContinuousTime];
        *buf = 138545666;
        *&buf[4] = name16;
        v422 = 2114;
        v423 = eventIdentifier9;
        v424 = 2114;
        v425 = v377;
        v426 = 2114;
        v427 = obja;
        v428 = 2112;
        v429 = v402;
        v430 = 2048;
        v431 = (startNanoseconds12 - machContTimeNs10) / 1000000000.0;
        v432 = 2048;
        v433 = (endNanoseconds5 - machContTimeNs11) / 1000000000.0;
        v434 = 2048;
        v435 = (endNanoseconds6 - startNanoseconds13) / 1000000000.0;
        v436 = 2048;
        v437 = startMachContinuousTime;
        v438 = 2048;
        v439 = endMachContinuousTime;
        _os_log_impl(&dword_2746E5000, v108, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: event middle %+.3fs - %+.3fs (%.3fs) @%llu-%llu", buf, 0x66u);
      }
    }

    else if (v109)
    {
      workflow21 = [self workflow];
      name17 = [workflow21 name];
      name18 = [v403 name];
      startNanoseconds14 = [v403 startNanoseconds];
      eventStart12 = [self eventStart];
      machContTimeNs12 = [eventStart12 machContTimeNs];
      endNanoseconds7 = [v403 endNanoseconds];
      eventStart13 = [self eventStart];
      machContTimeNs13 = [eventStart13 machContTimeNs];
      endNanoseconds8 = [v403 endNanoseconds];
      startNanoseconds15 = [v403 startNanoseconds];
      v165 = COERCE_DOUBLE([v403 startMachContinuousTime]);
      endMachContinuousTime2 = [v403 endMachContinuousTime];
      *buf = 138545410;
      *&buf[4] = name17;
      v422 = 2114;
      v423 = name18;
      v424 = 2114;
      v425 = obja;
      v426 = 2112;
      v427 = v402;
      v428 = 2048;
      v429 = (startNanoseconds14 - machContTimeNs12) / 1000000000.0;
      v430 = 2048;
      v431 = (endNanoseconds7 - machContTimeNs13) / 1000000000.0;
      v432 = 2048;
      v433 = (endNanoseconds8 - startNanoseconds15) / 1000000000.0;
      v434 = 2048;
      v435 = v165;
      v436 = 2048;
      v437 = endMachContinuousTime2;
      _os_log_impl(&dword_2746E5000, v108, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: %{public}@->%@: event middle %+.3fs - %+.3fs (%.3fs) @%llu-%llu", buf, 0x5Cu);
    }

    *__error() = v107;
    [(WRWorkflowEventTracker *)self applySignpost:v403 toSignpostTracker:v399];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![v403 eventType])
    {
LABEL_199:
      v95 = 1;
LABEL_200:

      goto LABEL_201;
    }

    v184 = objc_getProperty(self, v183, 152, 1);
    v185 = [v184 count] == 0;

    if (v185)
    {
      goto LABEL_186;
    }

    v396 = 0;
    v187 = 0;
    v188 = 0;
    while (1)
    {
      v189 = objc_getProperty(self, v186, 152, 1);
      v190 = [v189 objectAtIndexedSubscript:v188];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v187)
        {
          goto LABEL_190;
        }

        workflow22 = [self workflow];
        endSignpostGroups = [workflow22 endSignpostGroups];
        v193 = [endSignpostGroups objectAtIndexedSubscript:v188];
        v194 = [v193 indexOfObjectIdenticalTo:newValue] == 0x7FFFFFFFFFFFFFFFLL;

        if (!v194)
        {
          if (v402 == 0.0)
          {
            [newValue name];

            workflow23 = [self workflow];
            [workflow23 name];

            [self eventIdentifier];
            eventIdentifier10 = [self eventIdentifier];

            v198 = __error();
            v199 = *v198;
            v200 = _wrlog(v198);
            v201 = os_log_type_enabled(v200, OS_LOG_TYPE_INFO);
            if (obja == 0.0)
            {
              if (eventIdentifier10)
              {
                if (v201)
                {
                  workflow24 = [self workflow];
                  name19 = [workflow24 name];
                  eventIdentifier11 = [self eventIdentifier];
                  [newValue name];
                  v222 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  *buf = 138543874;
                  *&buf[4] = name19;
                  v422 = 2114;
                  v423 = eventIdentifier11;
                  v424 = 2114;
                  v425 = v222;
                  _os_log_impl(&dword_2746E5000, v200, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: End signpost group candidate", buf, 0x20u);
                }
              }

              else if (v201)
              {
                workflow25 = [self workflow];
                name20 = [workflow25 name];
                name21 = [newValue name];
                *buf = 138543618;
                *&buf[4] = name20;
                v422 = 2114;
                v423 = name21;
                _os_log_impl(&dword_2746E5000, v200, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: End signpost group candidate", buf, 0x16u);
              }
            }

            else if (eventIdentifier10)
            {
              if (v201)
              {
                workflow26 = [self workflow];
                name22 = [workflow26 name];
                eventIdentifier12 = [self eventIdentifier];
                [newValue name];
                v205 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                *buf = 138544386;
                *&buf[4] = name22;
                v422 = 2114;
                v423 = eventIdentifier12;
                v424 = 2114;
                v425 = v205;
                v426 = 2114;
                v427 = obja;
                v428 = 2112;
                v429 = 0.0;
                _os_log_impl(&dword_2746E5000, v200, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: End signpost group candidate", buf, 0x34u);
              }
            }

            else if (v201)
            {
              workflow27 = [self workflow];
              name23 = [workflow27 name];
              name24 = [newValue name];
              *buf = 138544130;
              *&buf[4] = name23;
              v422 = 2114;
              v423 = name24;
              v424 = 2114;
              v425 = obja;
              v426 = 2112;
              v427 = 0.0;
              _os_log_impl(&dword_2746E5000, v200, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: %{public}@->%@: End signpost group candidate", buf, 0x2Au);
            }

            *__error() = v199;
            [objc_getProperty(self v234];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v195 = v190;
            }

            else
            {
              null = [MEMORY[0x277CBEB68] null];
              v207 = v190 == null;

              if (!v207)
              {
                [newValue name];

                workflow28 = [self workflow];
                [workflow28 name];

                [self eventIdentifier];
                eventIdentifier13 = [self eventIdentifier];

                v210 = __error();
                v211 = *v210;
                v212 = _wrlog(v210);
                v213 = os_log_type_enabled(v212, OS_LOG_TYPE_FAULT);
                if (obja == 0.0)
                {
                  if (eventIdentifier13)
                  {
                    if (v213)
                    {
                      workflow29 = [self workflow];
                      name25 = [workflow29 name];
                      eventIdentifier14 = [self eventIdentifier];
                      [newValue name];
                      v229 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                      *&v230 = COERCE_DOUBLE(object_getClassName(v190));
                      *buf = 138544130;
                      *&buf[4] = name25;
                      v422 = 2114;
                      v423 = eventIdentifier14;
                      v424 = 2114;
                      v425 = v229;
                      v426 = 2080;
                      v427 = *&v230;
                      _os_log_fault_impl(&dword_2746E5000, v212, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: candidateEndSignpostTracker is bad class %s", buf, 0x2Au);
                    }
                  }

                  else if (v213)
                  {
                    workflow30 = [self workflow];
                    name26 = [workflow30 name];
                    name27 = [newValue name];
                    *&v309 = COERCE_DOUBLE(object_getClassName(v190));
                    *buf = 138543874;
                    *&buf[4] = name26;
                    v422 = 2114;
                    v423 = name27;
                    v424 = 2080;
                    v425 = *&v309;
                    _os_log_fault_impl(&dword_2746E5000, v212, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: candidateEndSignpostTracker is bad class %s", buf, 0x20u);
                  }
                }

                else if (eventIdentifier13)
                {
                  if (v213)
                  {
                    workflow31 = [self workflow];
                    name28 = [workflow31 name];
                    eventIdentifier15 = [self eventIdentifier];
                    [newValue name];
                    v217 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    *&v218 = COERCE_DOUBLE(object_getClassName(v190));
                    *buf = 138544642;
                    *&buf[4] = name28;
                    v422 = 2114;
                    v423 = eventIdentifier15;
                    v424 = 2114;
                    v425 = v217;
                    v426 = 2114;
                    v427 = obja;
                    v428 = 2112;
                    v429 = v402;
                    v430 = 2080;
                    v431 = *&v218;
                    _os_log_fault_impl(&dword_2746E5000, v212, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: candidateEndSignpostTracker is bad class %s", buf, 0x3Eu);
                  }
                }

                else if (v213)
                {
                  workflow32 = [self workflow];
                  name29 = [workflow32 name];
                  name30 = [newValue name];
                  *&v238 = COERCE_DOUBLE(object_getClassName(v190));
                  *buf = 138544386;
                  *&buf[4] = name29;
                  v422 = 2114;
                  v423 = name30;
                  v424 = 2114;
                  v425 = obja;
                  v426 = 2112;
                  v427 = v402;
                  v428 = 2080;
                  v429 = *&v238;
                  _os_log_fault_impl(&dword_2746E5000, v212, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: %{public}@->%@: candidateEndSignpostTracker is bad class %s", buf, 0x34u);
                }

                *__error() = v211;
              }

              v195 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v240 = objc_getProperty(self, v239, 152, 1);
              [v240 setObject:v195 atIndexedSubscript:v188];
            }

            v410 = 0;
            v411 = &v410;
            v412 = 0x3032000000;
            v413 = __Block_byref_object_copy_;
            v414 = __Block_byref_object_dispose_;
            v415 = 0;
            v407[0] = MEMORY[0x277D85DD0];
            v407[1] = 3221225472;
            v407[2] = __52__WRWorkflowEventTracker_handleSignpost_wrsignpost___block_invoke_209;
            v407[3] = &unk_279EE32E0;
            v241 = *&v402;
            v408 = v241;
            v409 = &v410;
            [v195 enumerateKeysAndObjectsUsingBlock:v407];
            v242 = *(v411 + 5);
            if (v242)
            {
              [v195 setObject:v399 forKeyedSubscript:v241];
              if (obja == 0.0)
              {
                [newValue name];

                workflow33 = [self workflow];
                [workflow33 name];

                [self eventIdentifier];
                eventIdentifier16 = [self eventIdentifier];

                if (!eventIdentifier16)
                {
                  v274 = __error();
                  v261 = *v274;
                  v262 = _wrlog(v274);
                  if (os_log_type_enabled(v262, OS_LOG_TYPE_DEBUG))
                  {
                    v301 = v242;
                    workflow34 = [self workflow];
                    name31 = [workflow34 name];
                    name32 = [newValue name];
                    v305 = v411[5];
                    *buf = 138543874;
                    *&buf[4] = name31;
                    v422 = 2114;
                    v423 = name32;
                    v424 = 2112;
                    v425 = v305;
                    _os_log_debug_impl(&dword_2746E5000, v262, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@: End signpost with individuation, still needs %@", buf, 0x20u);

                    v242 = v301;
                  }

                  goto LABEL_175;
                }

                v259 = __error();
                v246 = *v259;
                v247 = _wrlog(v259);
                if (os_log_type_enabled(v247, OS_LOG_TYPE_DEBUG))
                {
                  v290 = v242;
                  workflow35 = [self workflow];
                  name33 = [workflow35 name];
                  eventIdentifier17 = [self eventIdentifier];
                  [newValue name];
                  v294 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  v295 = v411[5];
                  *buf = 138544130;
                  *&buf[4] = name33;
                  v422 = 2114;
                  v423 = eventIdentifier17;
                  v424 = 2114;
                  v425 = v294;
                  v426 = 2112;
                  v427 = v295;
                  _os_log_debug_impl(&dword_2746E5000, v247, OS_LOG_TYPE_DEBUG, "%{public}@<%{public}@>: %{public}@: End signpost with individuation, still needs %@", buf, 0x2Au);

                  v242 = v290;
                }

LABEL_162:

                *__error() = v246;
              }

              else
              {
                [newValue name];

                workflow36 = [self workflow];
                [workflow36 name];

                [self eventIdentifier];
                eventIdentifier18 = [self eventIdentifier];

                if (eventIdentifier18)
                {
                  v245 = __error();
                  v246 = *v245;
                  v247 = _wrlog(v245);
                  if (os_log_type_enabled(v247, OS_LOG_TYPE_DEBUG))
                  {
                    v284 = v242;
                    workflow37 = [self workflow];
                    name34 = [workflow37 name];
                    eventIdentifier19 = [self eventIdentifier];
                    [newValue name];
                    v288 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    v289 = v411[5];
                    *buf = 138544642;
                    *&buf[4] = name34;
                    v422 = 2114;
                    v423 = eventIdentifier19;
                    v424 = 2114;
                    v425 = v288;
                    v426 = 2114;
                    v427 = obja;
                    v428 = 2112;
                    v429 = v402;
                    v430 = 2112;
                    v431 = v289;
                    _os_log_debug_impl(&dword_2746E5000, v247, OS_LOG_TYPE_DEBUG, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: End signpost with individuation, still needs %@", buf, 0x3Eu);

                    v242 = v284;
                  }

                  goto LABEL_162;
                }

                v260 = __error();
                v261 = *v260;
                v262 = _wrlog(v260);
                if (os_log_type_enabled(v262, OS_LOG_TYPE_DEBUG))
                {
                  v296 = v242;
                  workflow38 = [self workflow];
                  name35 = [workflow38 name];
                  name36 = [newValue name];
                  v300 = v411[5];
                  *buf = 138544386;
                  *&buf[4] = name35;
                  v422 = 2114;
                  v423 = name36;
                  v424 = 2114;
                  v425 = obja;
                  v426 = 2112;
                  v427 = v402;
                  v428 = 2112;
                  v429 = v300;
                  _os_log_debug_impl(&dword_2746E5000, v262, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@: %{public}@->%@: End signpost with individuation, still needs %@", buf, 0x34u);

                  v242 = v296;
                }

LABEL_175:

                *__error() = v261;
              }

              v396 = 1;
            }

            else
            {
              if (obja == 0.0)
              {
                [newValue name];

                workflow39 = [self workflow];
                [workflow39 name];

                [self eventIdentifier];
                eventIdentifier20 = [self eventIdentifier];

                if (eventIdentifier20)
                {
                  v265 = __error();
                  v251 = *v265;
                  v252 = _wrlog(v265);
                  if (os_log_type_enabled(v252, OS_LOG_TYPE_INFO))
                  {
                    workflow40 = [self workflow];
                    name37 = [workflow40 name];
                    eventIdentifier21 = [self eventIdentifier];
                    [newValue name];
                    v269 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    *buf = 138543874;
                    *&buf[4] = name37;
                    v422 = 2114;
                    v423 = eventIdentifier21;
                    v424 = 2114;
                    v425 = v269;
                    _os_log_impl(&dword_2746E5000, v252, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: End signpost with individuation, set as candidate for group", buf, 0x20u);

                    v242 = 0;
                  }
                }

                else
                {
                  v275 = __error();
                  v251 = *v275;
                  v252 = _wrlog(v275);
                  if (os_log_type_enabled(v252, OS_LOG_TYPE_INFO))
                  {
                    workflow41 = [self workflow];
                    name38 = [workflow41 name];
                    name39 = [newValue name];
                    *buf = 138543618;
                    *&buf[4] = name38;
                    v422 = 2114;
                    v423 = name39;
                    _os_log_impl(&dword_2746E5000, v252, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: End signpost with individuation, set as candidate for group", buf, 0x16u);

                    v242 = 0;
                  }
                }
              }

              else
              {
                [newValue name];

                workflow42 = [self workflow];
                [workflow42 name];

                [self eventIdentifier];
                eventIdentifier22 = [self eventIdentifier];

                if (eventIdentifier22)
                {
                  v250 = __error();
                  v251 = *v250;
                  v252 = _wrlog(v250);
                  if (os_log_type_enabled(v252, OS_LOG_TYPE_INFO))
                  {
                    workflow43 = [self workflow];
                    name40 = [workflow43 name];
                    eventIdentifier23 = [self eventIdentifier];
                    [newValue name];
                    v256 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    *buf = 138544386;
                    *&buf[4] = name40;
                    v422 = 2114;
                    v423 = eventIdentifier23;
                    v424 = 2114;
                    v425 = v256;
                    v426 = 2114;
                    v427 = obja;
                    v428 = 2112;
                    v429 = v402;
                    _os_log_impl(&dword_2746E5000, v252, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: End signpost with individuation, set as candidate for group", buf, 0x34u);

                    v242 = 0;
                  }
                }

                else
                {
                  v270 = __error();
                  v251 = *v270;
                  v252 = _wrlog(v270);
                  if (os_log_type_enabled(v252, OS_LOG_TYPE_INFO))
                  {
                    workflow44 = [self workflow];
                    name41 = [workflow44 name];
                    name42 = [newValue name];
                    *buf = 138544130;
                    *&buf[4] = name41;
                    v422 = 2114;
                    v423 = name42;
                    v424 = 2114;
                    v425 = obja;
                    v426 = 2112;
                    v427 = v402;
                    _os_log_impl(&dword_2746E5000, v252, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: %{public}@->%@: End signpost with individuation, set as candidate for group", buf, 0x2Au);

                    v242 = 0;
                  }
                }
              }

              *__error() = v251;
              v280 = objc_getProperty(self, v279, 152, 1);
              [v280 setObject:v399 atIndexedSubscript:v188];
            }

            _Block_object_dispose(&v410, 8);
            if (v242)
            {

              if (v396)
              {
                goto LABEL_199;
              }

              goto LABEL_203;
            }
          }

          if (v396)
          {
LABEL_190:

            goto LABEL_199;
          }

          v396 = 0;
          v187 = 1;
          goto LABEL_183;
        }

        v187 = 0;
        v396 = 1;
      }

LABEL_183:

      v282 = objc_getProperty(self, v281, 152, 1);
      v283 = [v282 count];

      if (++v188 >= v283)
      {
        if (v396)
        {
          goto LABEL_199;
        }

        if ((v187 & 1) == 0)
        {
LABEL_186:
          [v403 name];

          workflow45 = [self workflow];
          [workflow45 name];

          [self eventIdentifier];
          eventIdentifier24 = [self eventIdentifier];

          v312 = __error();
          v313 = *v312;
          v314 = _wrlog(v312);
          v315 = os_log_type_enabled(v314, OS_LOG_TYPE_FAULT);
          if (obja == 0.0)
          {
            if (eventIdentifier24)
            {
              if (v315)
              {
                [WRWorkflowEventTracker handleSignpost:wrsignpost:];
              }
            }

            else if (v315)
            {
              [WRWorkflowEventTracker handleSignpost:v403 wrsignpost:?];
            }
          }

          else if (eventIdentifier24)
          {
            if (v315)
            {
              workflow46 = [self workflow];
              name43 = [workflow46 name];
              eventIdentifier25 = [self eventIdentifier];
              [v403 name];
              v319 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138544386;
              *&buf[4] = name43;
              v422 = 2114;
              v423 = eventIdentifier25;
              v424 = 2114;
              v425 = v319;
              v426 = 2114;
              v427 = obja;
              v428 = 2112;
              v429 = v402;
              _os_log_fault_impl(&dword_2746E5000, v314, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: No missing end signposts, but didn't find an end signpost tracker", buf, 0x34u);
            }
          }

          else if (v315)
          {
            workflow47 = [self workflow];
            name44 = [workflow47 name];
            name45 = [v403 name];
            *buf = 138544130;
            *&buf[4] = name44;
            v422 = 2114;
            v423 = name45;
            v424 = 2114;
            v425 = obja;
            v426 = 2112;
            v427 = v402;
            _os_log_fault_impl(&dword_2746E5000, v314, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: %{public}@->%@: No missing end signposts, but didn't find an end signpost tracker", buf, 0x2Au);
          }

          *__error() = v313;
          [(WRWorkflowEventTracker *)self resetWithoutReportingErrors];
          goto LABEL_199;
        }

LABEL_203:
        [v403 name];

        workflow48 = [self workflow];
        [workflow48 name];

        [self eventIdentifier];
        eventIdentifier26 = [self eventIdentifier];

        v327 = __error();
        v328 = *v327;
        v329 = _wrlog(v327);
        v330 = os_log_type_enabled(v329, OS_LOG_TYPE_DEFAULT);
        if (obja == 0.0)
        {
          if (eventIdentifier26)
          {
            if (v330)
            {
              workflow49 = [self workflow];
              name46 = [workflow49 name];
              eventIdentifier27 = [self eventIdentifier];
              [v403 name];
              v342 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              endNanoseconds9 = [v403 endNanoseconds];
              eventStart14 = [self eventStart];
              machContTimeNs14 = [eventStart14 machContTimeNs];
              v346 = COERCE_DOUBLE([v403 endMachContinuousTime]);
              *buf = 138544386;
              *&buf[4] = name46;
              v422 = 2114;
              v423 = eventIdentifier27;
              v424 = 2114;
              v425 = v342;
              v426 = 2048;
              v427 = (endNanoseconds9 - machContTimeNs14) / 1000000000.0;
              v428 = 2048;
              v429 = v346;
              _os_log_impl(&dword_2746E5000, v329, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: %{public}@: event end %+.3fs @%llu", buf, 0x34u);
            }
          }

          else if (v330)
          {
            workflow50 = [self workflow];
            name47 = [workflow50 name];
            name48 = [v403 name];
            endNanoseconds10 = [v403 endNanoseconds];
            eventStart15 = [self eventStart];
            machContTimeNs15 = [eventStart15 machContTimeNs];
            v360 = COERCE_DOUBLE([v403 endMachContinuousTime]);
            *buf = 138544130;
            *&buf[4] = name47;
            v422 = 2114;
            v423 = name48;
            v424 = 2048;
            v425 = (endNanoseconds10 - machContTimeNs15) / 1000000000.0;
            v426 = 2048;
            v427 = v360;
            _os_log_impl(&dword_2746E5000, v329, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: event end %+.3fs @%llu", buf, 0x2Au);
          }
        }

        else if (eventIdentifier26)
        {
          if (v330)
          {
            workflow51 = [self workflow];
            name49 = [workflow51 name];
            eventIdentifier28 = [self eventIdentifier];
            [v403 name];
            v334 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            endNanoseconds11 = [v403 endNanoseconds];
            eventStart16 = [self eventStart];
            machContTimeNs16 = [eventStart16 machContTimeNs];
            *&v338 = COERCE_DOUBLE([v403 endMachContinuousTime]);
            *buf = 138544898;
            *&buf[4] = name49;
            v422 = 2114;
            v423 = eventIdentifier28;
            v424 = 2114;
            v425 = v334;
            v426 = 2114;
            v427 = obja;
            v428 = 2112;
            v429 = v402;
            v430 = 2048;
            v431 = (endNanoseconds11 - machContTimeNs16) / 1000000000.0;
            v432 = 2048;
            v433 = *&v338;
            _os_log_impl(&dword_2746E5000, v329, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: event end %+.3fs @%llu", buf, 0x48u);
          }
        }

        else if (v330)
        {
          workflow52 = [self workflow];
          name50 = [workflow52 name];
          name51 = [v403 name];
          endNanoseconds12 = [v403 endNanoseconds];
          eventStart17 = [self eventStart];
          machContTimeNs17 = [eventStart17 machContTimeNs];
          v353 = COERCE_DOUBLE([v403 endMachContinuousTime]);
          *buf = 138544642;
          *&buf[4] = name50;
          v422 = 2114;
          v423 = name51;
          v424 = 2114;
          v425 = obja;
          v426 = 2112;
          v427 = v402;
          v428 = 2048;
          v429 = (endNanoseconds12 - machContTimeNs17) / 1000000000.0;
          v430 = 2048;
          v431 = v353;
          _os_log_impl(&dword_2746E5000, v329, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: %{public}@->%@: event end %+.3fs @%llu", buf, 0x3Eu);
        }

        *__error() = v328;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          processID2 = [v403 processID];
          threadID2 = [v403 threadID];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            endEvent = [v403 endEvent];
            processID2 = [endEvent processID];

            endEvent2 = [v403 endEvent];
            threadID2 = [endEvent2 threadID];
          }

          else
          {
            threadID2 = 0;
            processID2 = -1;
          }
        }

        v365 = [WRTimestampAndThread alloc];
        endNanoseconds13 = [v403 endNanoseconds];
        endDate = [v403 endDate];
        v368 = [(WRTimestampAndThread *)&v365->super.isa initWithPID:processID2 threadID:threadID2 machContTimeNs:endNanoseconds13 date:endDate];
        objc_setProperty_atomic(self, v369, v368, 48);

        signpost = [v399 signpost];
        objc_setProperty_atomic(self, v371, signpost, 56);

        v373 = objc_getProperty(self, v372, 144, 1);
        v373[2](v373, self);

        [(WRWorkflowEventTracker *)self resetWithoutReportingErrors];
        goto LABEL_199;
      }
    }
  }

LABEL_75:
  v95 = 0;
LABEL_201:

  return v95;
}

void __52__WRWorkflowEventTracker_handleSignpost_wrsignpost___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventStart];
  v3 = [v2 machContTimeNs];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    mach_get_times();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:0];
    if (WRMachTimebaseForLiveMachine_once != -1)
    {
      __52__WRWorkflowEventTracker_handleSignpost_wrsignpost___block_invoke_cold_1();
    }

    v6 = 0;
    if (HIDWORD(WRMachTimebaseForLiveMachine_timebase) && WRMachTimebaseForLiveMachine_timebase)
    {
      v6 = 0;
      if (WRMachTimebaseForLiveMachine_timebase != HIDWORD(WRMachTimebaseForLiveMachine_timebase))
      {
        v6 = __udivti3();
      }
    }

    [(WRWorkflowEventTracker *)*(a1 + 32) reportErrorsAndResetAtMachContNs:v6 date:v5];
  }
}

void __52__WRWorkflowEventTracker_handleSignpost_wrsignpost___block_invoke_209(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v8 = MEMORY[0x277CBEB68];
  v9 = a3;
  v10 = [v8 null];

  if (v10 == v9)
  {
    v11 = [v12 isEqualToString:*(a1 + 32)];

    if ((v11 & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
  }
}

void __37__WRWorkflowEventTracker_environment__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v9 = [*(a1 + 32) signpost];
  v10 = [v9 name];
  v11 = [v8 initWithFormat:@"%@_%@", v10, v7];

  [*(a1 + 40) setObject:v6 forKeyedSubscript:v11];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  workflow = [(WRWorkflowEventTracker *)self workflow];
  v5 = [workflow debugDescription];
  v6 = [v3 initWithFormat:@"Tracker for %@", v5];

  return v6;
}

+ (id)tailspinDirectory
{
  objc_opt_self();
  if (tailspinDirectory_onceToken != -1)
  {
    +[WRWorkflowEventTracker tailspinDirectory];
  }

  v0 = tailspinDirectory_url;

  return v0;
}

uint64_t __43__WRWorkflowEventTracker_tailspinDirectory__block_invoke()
{
  tailspinDirectory_url = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/private/var/db/WorkflowResponsiveness/Tailspins" isDirectory:1];

  return MEMORY[0x2821F96F8]();
}

+ (void)makeTailspinDirectory
{
  objc_opt_self();
  if (makeTailspinDirectory_onceToken != -1)
  {
    +[WRWorkflowEventTracker makeTailspinDirectory];
  }
}

void __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke()
{
  v31[1] = *MEMORY[0x277D85DE8];
  v0 = +[WRWorkflowEventTracker tailspinDirectory];
  v1 = [v0 path];
  if (!v1)
  {
    v9 = __error();
    v7 = *v9;
    v8 = _wrlog(v9);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_7();
    }

    goto LABEL_11;
  }

  v2 = [v0 fileSystemRepresentation];
  if (!v2)
  {
    v10 = __error();
    v7 = *v10;
    v8 = _wrlog(v10);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_6();
    }

    goto LABEL_11;
  }

  v3 = v2;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v1];

  if ((v5 & 1) == 0)
  {
    if (geteuid())
    {
      v6 = __error();
      v7 = *v6;
      v8 = _wrlog(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_1();
      }

LABEL_11:

      *__error() = v7;
      goto LABEL_12;
    }

    v30 = *MEMORY[0x277CCA180];
    v31[0] = &unk_28838A6C8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v29 = 0;
    v13 = [v12 createDirectoryAtURL:v0 withIntermediateDirectories:1 attributes:v11 error:&v29];
    v14 = v29;

    if (v13)
    {
      v15 = open(v3, 0);
      if (v15 == -1)
      {
        v25 = __error();
        v26 = *v25;
        v27 = _wrlog(v25);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_5();
        }

        *__error() = v26;
      }

      else
      {
        v16 = v15;
        v28 = 74245;
        v17 = ffsctl(v15, 0xC0084A44uLL, &v28, 0);
        v18 = __error();
        v19 = *v18;
        v20 = _wrlog(v18);
        v21 = v20;
        if (v17)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_3();
          }
        }

        else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_4();
        }

        *__error() = v19;
        close(v16);
      }
    }

    else
    {
      v22 = __error();
      v23 = *v22;
      v24 = _wrlog(v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_2();
      }

      *__error() = v23;
    }
  }

LABEL_12:
}

+ (void)cleanupWorkflowResponsivenessDiagnosticsDirectory
{
  v4 = +[WRWorkflowEventTracker tailspinDirectory];
  [(WRWorkflowEventTracker *)self cleanupDirectory:v4 ofFilesWithSuffix:@"tailspin" olderThan:259200.0];
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/private/var/db/WorkflowResponsiveness" isDirectory:1];
  [(WRWorkflowEventTracker *)self cleanupDirectory:v3 ofFilesWithSuffix:@"tailspin" olderThan:259200.0];
}

+ (void)cleanupDirectory:(void *)directory ofFilesWithSuffix:(double)suffix olderThan:
{
  v81[3] = *MEMORY[0x277D85DE8];
  v6 = a2;
  directoryCopy = directory;
  objc_opt_self();
  path = [v6 path];
  if (path)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:path])
    {
      v62 = *MEMORY[0x277CBE8A8];
      v63 = *MEMORY[0x277CBE8E8];
      v81[0] = *MEMORY[0x277CBE8E8];
      v81[1] = v62;
      v9 = *MEMORY[0x277CBE7C0];
      v81[2] = *MEMORY[0x277CBE7C0];
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:3];
      v11 = [defaultManager enumeratorAtURL:v6 includingPropertiesForKeys:v10 options:5 errorHandler:&__block_literal_global_233];

      if (v11)
      {
        v58 = defaultManager;
        v56 = path;
        v57 = v6;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v55 = v11;
        obj = v11;
        v64 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
        if (!v64)
        {
          goto LABEL_43;
        }

        v61 = *v68;
        v12 = -suffix;
        while (1)
        {
          v13 = 0;
          do
          {
            if (*v68 != v61)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v67 + 1) + 8 * v13);
            v79[0] = v63;
            v79[1] = v62;
            v79[2] = v9;
            v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:3];
            v66 = 0;
            v16 = [v14 resourceValuesForKeys:v15 error:&v66];
            v17 = v66;

            v18 = [v16 objectForKeyedSubscript:v63];
            v19 = [v16 objectForKeyedSubscript:v62];
            v20 = [v16 objectForKeyedSubscript:v9];
            v21 = v20;
            if (v18)
            {
              v22 = v19 == 0;
            }

            else
            {
              v22 = 1;
            }

            if (v22 || v20 == 0)
            {
              v24 = __error();
              v25 = *v24;
              v26 = _wrlog(v24);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 138413058;
                v72 = v14;
                v73 = 2112;
                v74 = v18;
                v75 = 2112;
                v76 = v19;
                v77 = 2112;
                v78 = v21;
                v27 = v26;
                v28 = "WR cleanup: Unable to get info about %@: filename:%@ isRegularFile:%@ creationDate:%@";
                v29 = 42;
LABEL_19:
                _os_log_error_impl(&dword_2746E5000, v27, OS_LOG_TYPE_ERROR, v28, buf, v29);
              }
            }

            else
            {
              bOOLValue = [v19 BOOLValue];
              if (bOOLValue)
              {
                if ([v18 hasSuffix:directoryCopy])
                {
                  [v21 timeIntervalSinceNow];
                  v32 = v31;
                  v33 = __error();
                  v25 = *v33;
                  v26 = _wrlog(v33);
                  v34 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
                  if (v32 <= v12)
                  {
                    if (v34)
                    {
                      *buf = 138543618;
                      v72 = v14;
                      v73 = 2114;
                      v74 = v21;
                      _os_log_impl(&dword_2746E5000, v26, OS_LOG_TYPE_INFO, "WR cleanup: %{public}@ created at %{public}@, removing", buf, 0x16u);
                    }

                    *__error() = v25;
                    v65 = 0;
                    v41 = [v58 removeItemAtURL:v14 error:&v65];
                    v42 = v65;
                    v17 = v42;
                    if ((v41 & 1) == 0)
                    {
                      v44 = __error();
                      v25 = *v44;
                      v26 = _wrlog(v44);
                      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_38;
                      }

                      *buf = 138543618;
                      v72 = v14;
                      v73 = 2114;
                      v74 = v17;
                      v27 = v26;
                      v28 = "Unable to remove %{public}@: %{public}@";
                      v29 = 22;
                      goto LABEL_19;
                    }

                    if (!v42)
                    {
                      goto LABEL_39;
                    }

                    v43 = __error();
                    v25 = *v43;
                    v26 = _wrlog(v43);
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138543618;
                      v72 = v14;
                      v73 = 2114;
                      v74 = v17;
                      v35 = v26;
                      v36 = "Removed %{public}@ successfully, but received error: %{public}@";
                      goto LABEL_36;
                    }
                  }

                  else if (v34)
                  {
                    *buf = 138543618;
                    v72 = v14;
                    v73 = 2114;
                    v74 = v21;
                    v35 = v26;
                    v36 = "WR cleanup: %{public}@ created at %{public}@, skipping";
LABEL_36:
                    _os_log_impl(&dword_2746E5000, v35, OS_LOG_TYPE_INFO, v36, buf, 0x16u);
                  }
                }

                else
                {
                  v40 = __error();
                  v25 = *v40;
                  v26 = _wrlog(v40);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v72 = v14;
                    v38 = v26;
                    v39 = "WR cleanup: %@ is not a tailspin file";
                    goto LABEL_29;
                  }
                }
              }

              else
              {
                v37 = __error();
                v25 = *v37;
                v26 = _wrlog(v37);
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v72 = v14;
                  v38 = v26;
                  v39 = "WR cleanup: %@ is not a regular file";
LABEL_29:
                  _os_log_debug_impl(&dword_2746E5000, v38, OS_LOG_TYPE_DEBUG, v39, buf, 0xCu);
                }
              }
            }

LABEL_38:

            *__error() = v25;
LABEL_39:

            ++v13;
          }

          while (v64 != v13);
          v45 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
          v64 = v45;
          if (!v45)
          {
LABEL_43:

            path = v56;
            v6 = v57;
            defaultManager = v58;
            v11 = v55;
            goto LABEL_53;
          }
        }
      }

      v52 = __error();
      v53 = *v52;
      v54 = _wrlog(v52);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
      {
        +[WRWorkflowEventTracker cleanupDirectory:ofFilesWithSuffix:olderThan:];
      }

      *__error() = v53;
LABEL_53:
    }

    else
    {
      v49 = __error();
      v50 = *v49;
      v51 = _wrlog(v49);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        [WRWorkflowEventTracker cleanupDirectory:v51 ofFilesWithSuffix:? olderThan:?];
      }

      *__error() = v50;
    }
  }

  else
  {
    v46 = __error();
    v47 = *v46;
    v48 = _wrlog(v46);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      +[WRWorkflowEventTracker cleanupDirectory:ofFilesWithSuffix:olderThan:];
    }

    *__error() = v47;
  }
}

uint64_t __71__WRWorkflowEventTracker_cleanupDirectory_ofFilesWithSuffix_olderThan___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = __error();
  v7 = *v6;
  v8 = _wrlog(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __71__WRWorkflowEventTracker_cleanupDirectory_ofFilesWithSuffix_olderThan___block_invoke_cold_1();
  }

  *__error() = v7;
  return 1;
}

- (WRWorkflowEventTracker)initWithEncodedDict:(id)dict error:(id *)error
{
  dictCopy = dict;
  v90 = 0;
  if (error)
  {
    *error = 0;
  }

  else
  {
    error = &v90;
  }

  v89.receiver = self;
  v89.super_class = WRWorkflowEventTracker;
  v13 = [(WRWorkflowEventTracker *)&v89 init];
  if (v13)
  {
    v20 = DictGetDict(dictCopy, @"wt_workflow", error);
    if (!v20)
    {
      if (*error)
      {
        v30 = 0;
      }

      else
      {
        WRMakeError(7, @"No workflow in tracker dict %@", v14, v15, v16, v17, v18, v19, dictCopy);
        *error = v30 = 0;
      }

      goto LABEL_54;
    }

    v27 = [[WRWorkflow alloc] initWithEncodedDict:v20 error:error];
    if (!v27)
    {
      if (*error)
      {
        v30 = 0;
      }

      else
      {
        WRMakeError(3, @"No such workflow, or workflow disabled", v21, v22, v23, v24, v25, v26, v74);
        *error = v30 = 0;
      }

      goto LABEL_53;
    }

    objc_storeStrong(&v13->_workflow, v27);
    v28 = DictGetNumber(dictCopy, @"wt_error_code", error);
    v29 = v28;
    if (*error)
    {
      v30 = 0;
LABEL_52:

LABEL_53:
LABEL_54:

      goto LABEL_55;
    }

    if (v28)
    {
      v31 = DictGetString(dictCopy, @"wt_error_description", error);
      if (*error)
      {
        goto LABEL_18;
      }

      integerValue = [v29 integerValue];
      v39 = WRMakeError(integerValue, @"%@", v33, v34, v35, v36, v37, v38, v31);
      error = v13->_error;
      v13->_error = v39;
    }

    v41 = DictGetString(dictCopy, @"wt_signpost_start", error);
    v31 = v41;
    if (!*error)
    {
      if (v41 && ([(WRWorkflow *)v27 wrsignpostWithName:v41], v42 = objc_claimAutoreleasedReturnValue(), startSignpost = v13->_startSignpost, v13->_startSignpost = v42, startSignpost, !v13->_startSignpost))
      {
        name = [(WRWorkflow *)v27 name];
        WRMakeError(7, @"Workflow %@ start signpost %@ doesn't exist", v50, v51, v52, v53, v54, v55, name);
        *error = v30 = 0;
      }

      else
      {
        v44 = DictGetString(dictCopy, @"wt_signpost_end", error);
        name = v44;
        if (*error)
        {
          v30 = 0;
        }

        else
        {
          if (v44 && ([(WRWorkflow *)v27 wrsignpostWithName:v44], v46 = objc_claimAutoreleasedReturnValue(), endSignpost = v13->_endSignpost, v13->_endSignpost = v46, endSignpost, !v13->_endSignpost))
          {
            name2 = [(WRWorkflow *)v27 name];
            WRMakeError(7, @"Workflow %@ end signpost %@ doesn't exist", v57, v58, v59, v60, v61, v62, name2);
            *error = v30 = 0;
          }

          else
          {
            v48 = DictGetDict(dictCopy, @"wt_event_start", error);
            name2 = v48;
            if (*error || v48 && [WRWorkflowEventTracker initWithEncodedDict:error:])
            {
              v30 = 0;
            }

            else
            {
              v56 = DictGetDict(dictCopy, @"wt_event_end", error);
              if (*error)
              {
                v30 = 0;
              }

              else
              {
                v78 = v56;
                if (v56 && [WRWorkflowEventTracker initWithEncodedDict:error:]|| (DictGetString(dictCopy, @"wt_event_identifier", error), v63 = objc_claimAutoreleasedReturnValue(), eventIdentifier = v13->_eventIdentifier, v13->_eventIdentifier = v63, eventIdentifier, *error))
                {
                  v30 = 0;
                }

                else
                {
                  v77 = DictGetDict(dictCopy, @"wt_signpost_trackers", error);
                  if (v77)
                  {
                    v83 = 0;
                    v84 = &v83;
                    v85 = 0x3032000000;
                    v86 = __Block_byref_object_copy_;
                    v87 = __Block_byref_object_dispose_;
                    v88 = 0;
                    obj = objc_alloc_init(MEMORY[0x277CBEB18]);
                    v79[0] = MEMORY[0x277D85DD0];
                    v79[1] = 3221225472;
                    v79[2] = __52__WRWorkflowEventTracker_initWithEncodedDict_error___block_invoke;
                    v79[3] = &unk_279EE3370;
                    v82 = &v83;
                    v80 = v27;
                    v71 = obj;
                    v81 = v71;
                    [v77 enumerateKeysAndObjectsUsingBlock:v79];
                    v75 = v71;
                    v72 = v84[5];
                    if (v72)
                    {
                      v30 = 0;
                      *error = v72;
                    }

                    else
                    {
                      objc_storeStrong(&v13->_allSignpostTrackersMutable, obj);
                      v30 = v13;
                    }

                    _Block_object_dispose(&v83, 8);
                  }

                  else if (*error)
                  {
                    WRMakeError(7, @"WRWorkflowEventTracker: No signpost trackers in dict", v65, v66, v67, v68, v69, v70, v74);
                    *error = v30 = 0;
                  }

                  else
                  {
                    v30 = 0;
                  }
                }

                v56 = v78;
              }
            }
          }
        }
      }

      goto LABEL_51;
    }

LABEL_18:
    v30 = 0;
LABEL_51:

    goto LABEL_52;
  }

  WRMakeError(2, @"Unable to init WRWorkflowEventTracker", v7, v8, v9, v10, v11, v12, v74);
  *error = v30 = 0;
LABEL_55:

  return v30;
}

void __52__WRWorkflowEventTracker_initWithEncodedDict_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [(WRWorkflow *)*(a1 + 32) wrsignpostWithName:v7];
    if (v9)
    {
      v49 = a4;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v52;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v52 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v51 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              ClassName = object_getClassName(v15);
              v46 = WRMakeError(6, @"Invalid type in signpostTrackerDicts (%s)", v40, v41, v42, v43, v44, v45, ClassName);
              v47 = *(*(a1 + 48) + 8);
              v48 = *(v47 + 40);
              *(v47 + 40) = v46;

LABEL_17:
              *v49 = 1;
              goto LABEL_18;
            }

            v16 = [WRSignpostTracker alloc];
            v17 = *(*(a1 + 48) + 8);
            obj = *(v17 + 40);
            v18 = [(WRSignpostTracker *)v16 initWithEncodedDict:v15 signpost:v9 error:&obj];
            objc_storeStrong((v17 + 40), obj);
            if (!v18)
            {
              goto LABEL_17;
            }

            [*(a1 + 40) addObject:v18];
          }

          v12 = [v10 countByEnumeratingWithState:&v51 objects:v55 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }

    else
    {
      v29 = [*(a1 + 32) name];
      v36 = WRMakeError(7, @"Workflow %@ signpost %@ doesn't exist", v30, v31, v32, v33, v34, v35, v29);
      v37 = *(*(a1 + 48) + 8);
      v38 = *(v37 + 40);
      *(v37 + 40) = v36;

      *a4 = 1;
    }
  }

  else
  {
    v19 = object_getClassName(v7);
    object_getClassName(v8);
    v26 = WRMakeError(6, @"Invalid type in signpostTrackerDicts (%s -> %s)", v20, v21, v22, v23, v24, v25, v19);
    v27 = *(*(a1 + 48) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    *a4 = 1;
  }
}

- (WRWorkflowEventTracker)initWithTailspin:(id)tailspin error:(id *)error
{
  tailspinCopy = tailspin;
  v7 = tailspinCopy;
  v67 = 0;
  if (error)
  {
    *error = 0;
  }

  else
  {
    error = &v67;
  }

  if ([tailspinCopy UTF8String])
  {
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = __Block_byref_object_copy_;
    v65 = __Block_byref_object_dispose_;
    v66 = 0;
    if (ktrace_file_open())
    {
      v60[1] = MEMORY[0x277D85DD0];
      v60[2] = 3221225472;
      v60[3] = __49__WRWorkflowEventTracker_initWithTailspin_error___block_invoke;
      v60[4] = &unk_279EE3398;
      v60[5] = &v61;
      v14 = ktrace_file_iterate();
      ktrace_file_close();
      if (!v14)
      {
        v36 = v62[5];
        if (v36)
        {
          v60[0] = 0;
          self = [(WRWorkflowEventTracker *)self initWithEncodedString:v36 error:v60];
          v42 = v60[0];
          if (self)
          {
            workflow = [(WRWorkflowEventTracker *)self workflow];
            allowListForDiagnostics = [workflow allowListForDiagnostics];
            workflow2 = [(WRWorkflowEventTracker *)self workflow];
            allowListForAllSignposts = [workflow2 allowListForAllSignposts];

            if (allowListForDiagnostics == allowListForAllSignposts)
            {
              selfCopy = self;
            }

            else
            {
              v47 = objc_alloc_init(MEMORY[0x277D55030]);
              workflow3 = [(WRWorkflowEventTracker *)self workflow];
              allowListForAllSignposts2 = [workflow3 allowListForAllSignposts];
              [v47 setSubsystemCategoryFilter:allowListForAllSignposts2];
              v57 = v42;

              v58[0] = MEMORY[0x277D85DD0];
              v58[1] = 3221225472;
              v58[2] = __49__WRWorkflowEventTracker_initWithTailspin_error___block_invoke_2;
              v58[3] = &unk_279EE33C0;
              selfCopy2 = self;
              v59 = selfCopy2;
              v51 = MEMORY[0x277C5A9A0](v58);
              [v47 setBeginEventProcessingBlock:v51];
              [v47 setEmitEventProcessingBlock:v51];
              [v47 setIntervalCompletionProcessingBlock:v51];
              eventStart = [(WRWorkflowEventTracker *)selfCopy2 eventStart];
              date = [eventStart date];
              eventEnd = [(WRWorkflowEventTracker *)selfCopy2 eventEnd];
              date2 = [eventEnd date];
              v56 = [v47 processTraceFileWithPath:v7 startDate:date endDate:date2 errorOut:error];

              if (v56)
              {
                selfCopy = selfCopy2;
              }

              else
              {
                selfCopy = 0;
              }

              v42 = v57;
            }
          }

          else
          {
            WRMakeErrorWithUnderlyingError(6, v42, @"Tailspin %@ is not a Workflow Responsiveness tailspin", v37, v38, v39, v40, v41, v7);
            *error = selfCopy = 0;
          }
        }

        else
        {
          WRMakeError(7, @"No reason string in tailspin file %@", 0, v15, v16, v17, v18, v19, v7);
          *error = selfCopy = 0;
        }

        goto LABEL_11;
      }

      v20 = objc_alloc(MEMORY[0x277CCA9B8]);
      v21 = [v20 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      v27 = WRMakeErrorWithUnderlyingError(2, v21, @"Error iterating over tailspin file %@", v22, v23, v24, v25, v26, v7);
    }

    else
    {
      v29 = objc_alloc(MEMORY[0x277CCA9B8]);
      v21 = [v29 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      v27 = WRMakeErrorWithUnderlyingError(2, v21, @"Could not open tailspin file %@", v30, v31, v32, v33, v34, v7);
    }

    *error = v27;

    selfCopy = 0;
LABEL_11:
    _Block_object_dispose(&v61, 8);

    goto LABEL_12;
  }

  WRMakeError(2, @"Unable to get uft8 string from %@", v8, v9, v10, v11, v12, v13, v7);
  *error = selfCopy = 0;
LABEL_12:

  return selfCopy;
}

uint64_t __49__WRWorkflowEventTracker_initWithTailspin_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = ktrace_chunk_tag();
  v4 = ktrace_chunk_version_major();
  if (ktrace_config_create())
  {
    reason = ktrace_config_get_reason();
    if (reason)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:reason];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
LABEL_8:

      return 0;
    }

    ktrace_config_destroy();
  }

  result = 1;
  if (v3 == 36867 && v4 <= 1)
  {
    v10 = ktrace_chunk_size();
    v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:ktrace_chunk_map_data() length:v10 freeWhenDone:0];
    v11 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:0];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D82D08]];
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    ktrace_chunk_unmap_data();
    goto LABEL_8;
  }

  return result;
}

uint64_t __49__WRWorkflowEventTracker_initWithTailspin_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workflow];
  v5 = [v4 allowListForDiagnostics];
  v6 = [v3 subsystem];
  v7 = [v3 category];
  v8 = [v5 passesSubsystem:v6 category:v7];

  if ((v8 & 1) == 0)
  {
    [(WRWorkflowEventTracker *)*(a1 + 32) fillInNonDiagnosticSignpost:v3];
  }

  return 1;
}

- (WRWorkflowEventTracker)initWithSpindump:(id)spindump error:(id *)error
{
  spindumpCopy = spindump;
  v7 = spindumpCopy;
  v76 = 0;
  if (error)
  {
    *error = 0;
  }

  else
  {
    error = &v76;
  }

  uTF8String = [spindumpCopy UTF8String];
  if (!uTF8String)
  {
    WRMakeError(2, @"Unable to get uft8 string from %@", v9, v10, v11, v12, v13, v14, v7);
    *error = selfCopy = 0;
    goto LABEL_24;
  }

  v15 = open(uTF8String, 0);
  if (v15 == -1)
  {
    v29 = objc_alloc(MEMORY[0x277CCA9B8]);
    v30 = [v29 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    *error = WRMakeErrorWithUnderlyingError(7, v30, @"Unable to open %@", v31, v32, v33, v34, v35, v7);

LABEL_23:
    selfCopy = 0;
    goto LABEL_24;
  }

  v16 = v15;
  v17 = fdopen(v15, "r");
  if (!v17)
  {
    v36 = objc_alloc(MEMORY[0x277CCA9B8]);
    v37 = [v36 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    *error = WRMakeErrorWithUnderlyingError(7, v37, @"Unable to fdopen %@", v38, v39, v40, v41, v42, v7);

    close(v16);
    goto LABEL_23;
  }

  v18 = v17;
  v19 = malloc_type_malloc(0x800uLL, 0xDC81CD91uLL);
  do
  {
    if (!fgets(v19, 2048, v18))
    {
      free(v19);
      *error = WRMakeError(7, @"Spindump has no custom output", v43, v44, v45, v46, v47, v48, v74);
      goto LABEL_22;
    }
  }

  while (strncmp("Custom Output:", v19, 0xEuLL));
  free(v19);
  v20 = MEMORY[0x277C5A650](v18);
  memset(&v75, 0, sizeof(v75));
  if (fstat(v16, &v75))
  {
    v21 = objc_alloc(MEMORY[0x277CCA9B8]);
    v22 = [v21 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    WRMakeErrorWithUnderlyingError(7, v22, @"Unable to fstat %@", v23, v24, v25, v26, v27, v7);
    goto LABEL_21;
  }

  v49 = v75.st_size - v20;
  if (v75.st_size <= v20)
  {
    v59 = objc_alloc(MEMORY[0x277CCA9B8]);
    v22 = [v59 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    WRMakeErrorWithUnderlyingError(7, v22, @"Spindump custom output is empty", v60, v61, v62, v63, v64, v74);
    *error = LABEL_21:;

LABEL_22:
    fclose(v18);
    goto LABEL_23;
  }

  v50 = malloc_type_malloc(v75.st_size - v20, 0xB423B514uLL);
  if (!v50)
  {
    v66 = objc_alloc(MEMORY[0x277CCA9B8]);
    v67 = [v66 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    *error = WRMakeErrorWithUnderlyingError(2, v67, @"Unable to malloc %lu buffer", v68, v69, v70, v71, v72, v49);

    goto LABEL_22;
  }

  v51 = v50;
  v52 = fread(v50, v49, 1uLL, v18);
  fclose(v18);
  if (v52 != 1)
  {
    *error = WRMakeError(2, @"Unable to fread custom output from %@", v53, v54, v55, v56, v57, v58, v7);
    free(v51);
    goto LABEL_23;
  }

  v73 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v51 length:v49 freeWhenDone:1];
  self = [(WRWorkflowEventTracker *)self initWithEncodedData:v73 error:error];

  selfCopy = self;
LABEL_24:

  return selfCopy;
}

- (id)encodedStringWithError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  encodedDict = [(WRWorkflowEventTracker *)self encodedDict];
  v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:encodedDict options:3 error:error];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
    v19 = v12;
    if (v12)
    {
      v20 = v12;
    }

    else if (error)
    {
      *error = WRMakeError(2, @"Failed to create encoded string, unable to create UTF8 string from JSON data (%@)\n", v13, v14, v15, v16, v17, v18, encodedDict);
    }
  }

  else if (error && !*error)
  {
    WRMakeError(2, @"Failed to create encoded string, unable to serialize into JSON (%@)\n", v5, v6, v7, v8, v9, v10, encodedDict);
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (WRWorkflowEventTracker)initWithEncodedString:(id)string error:(id *)error
{
  v12 = [string dataUsingEncoding:4];
  if (v12)
  {
    self = [(WRWorkflowEventTracker *)self initWithEncodedData:v12 error:error];
    selfCopy = self;
  }

  else if (error)
  {
    WRMakeError(2, @"Unable to create data with encoded string", v6, v7, v8, v9, v10, v11, v15);
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)gatherDiagnosticsIfNeeded
{
  selfCopy = self;
  v206 = *MEMORY[0x277D85DE8];
  eventStart = [(WRWorkflowEventTracker *)self eventStart];
  if (!eventStart)
  {
    goto LABEL_8;
  }

  v4 = eventStart;
  startSignpost = [(WRWorkflowEventTracker *)selfCopy startSignpost];
  if (!startSignpost)
  {
LABEL_7:

    goto LABEL_8;
  }

  v6 = startSignpost;
  eventEnd = [(WRWorkflowEventTracker *)selfCopy eventEnd];
  if (!eventEnd)
  {

    goto LABEL_7;
  }

  v8 = eventEnd;
  error = [(WRWorkflowEventTracker *)selfCopy error];
  if (error)
  {

    goto LABEL_16;
  }

  endSignpost = [(WRWorkflowEventTracker *)selfCopy endSignpost];

  if (!endSignpost)
  {
LABEL_8:
    workflow = [(WRWorkflowEventTracker *)selfCopy workflow];
    [workflow name];

    [(WRWorkflowEventTracker *)selfCopy eventIdentifier];
    eventIdentifier = [(WRWorkflowEventTracker *)selfCopy eventIdentifier];

    v12 = __error();
    v13 = *v12;
    v14 = _wrlog(v12);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
    if (eventIdentifier)
    {
      if (v15)
      {
        [WRWorkflowEventTracker gatherDiagnosticsIfNeeded];
      }
    }

    else if (v15)
    {
      [(WRWorkflowEventTracker *)selfCopy gatherDiagnosticsIfNeeded];
    }

    goto LABEL_13;
  }

LABEL_16:
  workflow2 = [(WRWorkflowEventTracker *)selfCopy workflow];
  workflowDiagnostics = [workflow2 workflowDiagnostics];
  v21 = [workflowDiagnostics count];

  if (!v21)
  {
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    workflow3 = [(WRWorkflowEventTracker *)selfCopy workflow];
    allSignposts = [workflow3 allSignposts];

    v24 = [allSignposts countByEnumeratingWithState:&v188 objects:v205 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v189;
LABEL_19:
      v27 = 0;
      while (1)
      {
        if (*v189 != v26)
        {
          objc_enumerationMutation(allSignposts);
        }

        diagnostics = [*(*(&v188 + 1) + 8 * v27) diagnostics];
        v29 = [diagnostics count];

        if (v29)
        {
          break;
        }

        if (v25 == ++v27)
        {
          v25 = [allSignposts countByEnumeratingWithState:&v188 objects:v205 count:16];
          if (!v25)
          {
            goto LABEL_25;
          }

          goto LABEL_19;
        }
      }

      goto LABEL_29;
    }

LABEL_25:

    workflow4 = [(WRWorkflowEventTracker *)selfCopy workflow];
    [workflow4 name];

    [(WRWorkflowEventTracker *)selfCopy eventIdentifier];
    eventIdentifier2 = [(WRWorkflowEventTracker *)selfCopy eventIdentifier];

    v32 = __error();
    v13 = *v32;
    v14 = _wrlog(v32);
    v33 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (eventIdentifier2)
    {
      if (v33)
      {
        [WRWorkflowEventTracker gatherDiagnosticsIfNeeded];
      }
    }

    else if (v33)
    {
      [(WRWorkflowEventTracker *)selfCopy gatherDiagnosticsIfNeeded];
    }

LABEL_13:

    v16 = 0;
    *__error() = v13;
    return v16;
  }

LABEL_29:
  v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  allSignpostTrackers = [(WRWorkflowEventTracker *)selfCopy allSignpostTrackers];
  v150 = [allSignpostTrackers countByEnumeratingWithState:&v184 objects:v204 count:16];
  if (!v150)
  {
    goto LABEL_69;
  }

  v36 = *v185;
  v158 = allSignpostTrackers;
  do
  {
    v37 = 0;
    do
    {
      if (*v185 != v36)
      {
        objc_enumerationMutation(allSignpostTrackers);
      }

      obj = v37;
      v38 = *(*(&v184 + 1) + 8 * v37);
      v180 = 0u;
      v181 = 0u;
      v182 = 0u;
      v183 = 0u;
      v156 = v38;
      emits = [v38 emits];
      v40 = [emits countByEnumeratingWithState:&v180 objects:v203 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v181;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v181 != v42)
            {
              objc_enumerationMutation(emits);
            }

            v44 = *(*(&v180 + 1) + 8 * i);
            v45 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v44, "pid")}];
            if (([v34 containsObject:v45] & 1) == 0)
            {
              if (WRProcessIsBeingDebugged([v44 pid]))
              {
                workflow5 = [(WRWorkflowEventTracker *)selfCopy workflow];
                [workflow5 name];

                [(WRWorkflowEventTracker *)selfCopy eventIdentifier];
                v78 = selfCopy;
                eventIdentifier3 = [(WRWorkflowEventTracker *)selfCopy eventIdentifier];

                v80 = __error();
                v81 = *v80;
                v82 = _wrlog(v80);
                v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
                if (!eventIdentifier3)
                {
                  if (v83)
                  {
                    workflow6 = [(WRWorkflowEventTracker *)v78 workflow];
                    name = [workflow6 name];
                    v90 = [v44 pid];
                    *buf = 138543618;
                    v198 = name;
                    v199 = 1024;
                    LODWORD(v200) = v90;
                    _os_log_impl(&dword_2746E5000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@: Process [%d] is being debugged, not saving diagnostics", buf, 0x12u);

                    goto LABEL_108;
                  }

LABEL_109:

                  *__error() = v81;
                  v16 = 0;
                  goto LABEL_110;
                }

                if (!v83)
                {
                  goto LABEL_109;
                }

                workflow7 = [(WRWorkflowEventTracker *)v78 workflow];
                name2 = [workflow7 name];
                eventIdentifier4 = [(WRWorkflowEventTracker *)v78 eventIdentifier];
                v87 = [v44 pid];
                *buf = 138543874;
                v198 = name2;
                v199 = 2114;
                v200 = eventIdentifier4;
                v201 = 1024;
                v202 = v87;
                _os_log_impl(&dword_2746E5000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: Process [%d] is being debugged, not saving diagnostics", buf, 0x1Cu);
LABEL_94:

                goto LABEL_109;
              }

              [v34 addObject:v45];
            }
          }

          v41 = [emits countByEnumeratingWithState:&v180 objects:v203 count:16];
        }

        while (v41);
      }

      v149 = v36;
      v154 = selfCopy;

      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      emits = [v156 intervals];
      v46 = [emits countByEnumeratingWithState:&v176 objects:v196 count:16];
      if (!v46)
      {
        goto LABEL_57;
      }

      v47 = v46;
      v48 = *v177;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v177 != v48)
          {
            objc_enumerationMutation(emits);
          }

          v50 = *(*(&v176 + 1) + 8 * j);
          v51 = MEMORY[0x277CCABB0];
          start = [v50 start];
          v45 = [v51 numberWithInt:{objc_msgSend(start, "pid")}];

          if (([v34 containsObject:v45] & 1) == 0)
          {
            start2 = [v50 start];
            IsBeingDebugged = WRProcessIsBeingDebugged([start2 pid]);

            if (IsBeingDebugged)
            {
              workflow8 = [(WRWorkflowEventTracker *)v154 workflow];
              [workflow8 name];

              [(WRWorkflowEventTracker *)v154 eventIdentifier];
              eventIdentifier5 = [(WRWorkflowEventTracker *)v154 eventIdentifier];

              v93 = __error();
              v81 = *v93;
              v82 = _wrlog(v93);
              v94 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
              if (eventIdentifier5)
              {
                if (!v94)
                {
                  goto LABEL_109;
                }

                workflow7 = [(WRWorkflowEventTracker *)v154 workflow];
                name2 = [workflow7 name];
                eventIdentifier4 = [(WRWorkflowEventTracker *)v154 eventIdentifier];
                start3 = [v50 start];
                v96 = [start3 pid];
                *buf = 138543874;
                v198 = name2;
                v199 = 2114;
                v200 = eventIdentifier4;
                v201 = 1024;
                v202 = v96;
LABEL_93:
                _os_log_impl(&dword_2746E5000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: Process [%d] is being debugged, not saving diagnostics", buf, 0x1Cu);

                goto LABEL_94;
              }

              if (!v94)
              {
                goto LABEL_109;
              }

              workflow6 = [(WRWorkflowEventTracker *)v154 workflow];
              name3 = [workflow6 name];
              start4 = [v50 start];
              v112 = [start4 pid];
              *buf = 138543618;
              v198 = name3;
              v199 = 1024;
              LODWORD(v200) = v112;
LABEL_104:
              _os_log_impl(&dword_2746E5000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@: Process [%d] is being debugged, not saving diagnostics", buf, 0x12u);

              goto LABEL_107;
            }

            [v34 addObject:v45];
          }

          v55 = MEMORY[0x277CCABB0];
          v56 = [v50 end];
          v45 = [v55 numberWithInt:{objc_msgSend(v56, "pid")}];

          if ([v34 containsObject:v45])
          {
            goto LABEL_55;
          }

          v57 = [v50 end];
          v58 = WRProcessIsBeingDebugged([v57 pid]);

          if (v58)
          {
            workflow9 = [(WRWorkflowEventTracker *)v154 workflow];
            [workflow9 name];

            [(WRWorkflowEventTracker *)v154 eventIdentifier];
            eventIdentifier6 = [(WRWorkflowEventTracker *)v154 eventIdentifier];

            v99 = __error();
            v81 = *v99;
            v82 = _wrlog(v99);
            v100 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
            if (eventIdentifier6)
            {
              if (!v100)
              {
                goto LABEL_109;
              }

              workflow7 = [(WRWorkflowEventTracker *)v154 workflow];
              name2 = [workflow7 name];
              eventIdentifier4 = [(WRWorkflowEventTracker *)v154 eventIdentifier];
              start3 = [v50 end];
              v101 = [start3 pid];
              *buf = 138543874;
              v198 = name2;
              v199 = 2114;
              v200 = eventIdentifier4;
              v201 = 1024;
              v202 = v101;
              goto LABEL_93;
            }

            if (!v100)
            {
              goto LABEL_109;
            }

            workflow6 = [(WRWorkflowEventTracker *)v154 workflow];
            name3 = [workflow6 name];
            start4 = [v50 end];
            v113 = [start4 pid];
            *buf = 138543618;
            v198 = name3;
            v199 = 1024;
            LODWORD(v200) = v113;
            goto LABEL_104;
          }

          [v34 addObject:v45];
LABEL_55:
        }

        v47 = [emits countByEnumeratingWithState:&v176 objects:v196 count:16];
      }

      while (v47);
LABEL_57:

      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      emits = [v156 incompleteIntervalStarts];
      v59 = [emits countByEnumeratingWithState:&v172 objects:v195 count:16];
      v36 = v149;
      if (v59)
      {
        v60 = v59;
        v61 = *v173;
LABEL_59:
        v62 = 0;
        while (1)
        {
          if (*v173 != v61)
          {
            objc_enumerationMutation(emits);
          }

          v63 = *(*(&v172 + 1) + 8 * v62);
          v45 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v63, "pid", v149)}];
          if (([v34 containsObject:v45] & 1) == 0)
          {
            if (WRProcessIsBeingDebugged([v63 pid]))
            {
              workflow10 = [(WRWorkflowEventTracker *)v154 workflow];
              [workflow10 name];

              [(WRWorkflowEventTracker *)v154 eventIdentifier];
              eventIdentifier7 = [(WRWorkflowEventTracker *)v154 eventIdentifier];

              v104 = __error();
              v81 = *v104;
              v82 = _wrlog(v104);
              v105 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
              if (eventIdentifier7)
              {
                if (v105)
                {
                  workflow11 = [(WRWorkflowEventTracker *)v154 workflow];
                  name4 = [workflow11 name];
                  eventIdentifier8 = [(WRWorkflowEventTracker *)v154 eventIdentifier];
                  v109 = [v63 pid];
                  *buf = 138543874;
                  v198 = name4;
                  v199 = 2114;
                  v200 = eventIdentifier8;
                  v201 = 1024;
                  v202 = v109;
                  _os_log_impl(&dword_2746E5000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: Process [%d] is being debugged, not saving diagnostics", buf, 0x1Cu);
                }

                goto LABEL_109;
              }

              if (!v105)
              {
                goto LABEL_109;
              }

              workflow6 = [(WRWorkflowEventTracker *)v154 workflow];
              name3 = [workflow6 name];
              v114 = [v63 pid];
              *buf = 138543618;
              v198 = name3;
              v199 = 1024;
              LODWORD(v200) = v114;
              _os_log_impl(&dword_2746E5000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@: Process [%d] is being debugged, not saving diagnostics", buf, 0x12u);
LABEL_107:

LABEL_108:
              goto LABEL_109;
            }

            [v34 addObject:v45];
          }

          if (v60 == ++v62)
          {
            v60 = [emits countByEnumeratingWithState:&v172 objects:v195 count:16];
            if (v60)
            {
              goto LABEL_59;
            }

            break;
          }
        }
      }

      v37 = obj + 1;
      selfCopy = v154;
      allSignpostTrackers = v158;
    }

    while (obj + 1 != v150);
    v150 = [v158 countByEnumeratingWithState:&v184 objects:v204 count:16];
  }

  while (v150);
LABEL_69:

  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v155 = selfCopy;
  diagnosticsExceedingThresholds = [(WRWorkflowEventTracker *)selfCopy diagnosticsExceedingThresholds];
  v65 = [diagnosticsExceedingThresholds countByEnumeratingWithState:&v168 objects:v194 count:16];
  v66 = v65;
  v67 = v65 != 0;
  v68 = 0;
  if (v65)
  {
    v69 = *v169;
    v70 = v65;
    while (2)
    {
      for (k = 0; k != v70; ++k)
      {
        if (*v169 != v69)
        {
          objc_enumerationMutation(diagnosticsExceedingThresholds);
        }

        v72 = *(*(&v168 + 1) + 8 * k);
        if ([v72 gatherTailspin])
        {
          if ([v72 tailspinIncludeOSLogs])
          {

            LOBYTE(v76) = 1;
            v73 = v155;
            goto LABEL_112;
          }

          v68 = 1;
        }
      }

      v70 = [diagnosticsExceedingThresholds countByEnumeratingWithState:&v168 objects:v194 count:16];
      if (v70)
      {
        continue;
      }

      break;
    }
  }

  v73 = v155;
  error2 = [(WRWorkflowEventTracker *)v155 error];

  if (!error2)
  {
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    if (v155)
    {
      Property = objc_getProperty(v155, v75, 104, 1);
    }

    else
    {
      Property = 0;
    }

    obja = Property;
    v159 = [obja countByEnumeratingWithState:&v164 objects:v193 count:16];
    v76 = 0;
    if (v159)
    {
      v157 = *v165;
      while (2)
      {
        v122 = 0;
        v123 = v76;
        do
        {
          if (*v165 != v157)
          {
            objc_enumerationMutation(obja);
          }

          v124 = *(*(&v164 + 1) + 8 * v122);
          v160 = 0u;
          v161 = 0u;
          v162 = 0u;
          v163 = 0u;
          eventStart2 = [(WRWorkflowEventTracker *)v73 eventStart];
          [eventStart2 machContTimeNs];
          eventEnd2 = [(WRWorkflowEventTracker *)v73 eventEnd];
          [eventEnd2 machContTimeNs];
          v128 = [WRSignpostTracker diagnosticsExceedingThresholdsWithEventStartNs:v124 eventEndNs:v127];

          v129 = [v128 countByEnumeratingWithState:&v160 objects:v192 count:16];
          if (v129)
          {
            v130 = v129;
            v151 = v123;
            v131 = *v161;
LABEL_127:
            v132 = 0;
            while (1)
            {
              if (*v161 != v131)
              {
                objc_enumerationMutation(v128);
              }

              v133 = *(*(&v160 + 1) + 8 * v132);
              if ([v133 gatherTailspin])
              {
                v68 = 1;
                v76 = 1;
                v67 = 1;
                if ([v133 tailspinIncludeOSLogs])
                {
                  break;
                }
              }

              if (v130 == ++v132)
              {
                v130 = [v128 countByEnumeratingWithState:&v160 objects:v192 count:16];
                if (v130)
                {
                  goto LABEL_127;
                }

                v67 = 1;
                v76 = v151;
                break;
              }
            }
          }

          else
          {
            v76 = v123;
          }

          if (v68 & 1) != 0 && (v76)
          {
            LOBYTE(v76) = 1;
            v68 = 1;
            v73 = v155;
            goto LABEL_142;
          }

          ++v122;
          v123 = v76;
          v73 = v155;
        }

        while (v122 != v159);
        v159 = [obja countByEnumeratingWithState:&v164 objects:v193 count:16];
        if (v159)
        {
          continue;
        }

        break;
      }
    }

LABEL_142:

    if (!v67)
    {
      goto LABEL_147;
    }

LABEL_143:
    if (v68)
    {
LABEL_112:
      if (MEMORY[0x2822399D0])
      {
        v16 = [(WRWorkflowEventTracker *)v73 gatherDiagnosticsWithTailspin:v76 & 1 tailspinIncludeOSLogs:?];
        goto LABEL_110;
      }

      workflow12 = [(WRWorkflowEventTracker *)v73 workflow];
      [workflow12 name];

      [(WRWorkflowEventTracker *)v73 eventIdentifier];
      eventIdentifier9 = [(WRWorkflowEventTracker *)v73 eventIdentifier];

      v117 = __error();
      v118 = *v117;
      v119 = _wrlog(v117);
      v120 = os_log_type_enabled(v119, OS_LOG_TYPE_ERROR);
      if (eventIdentifier9)
      {
        if (v120)
        {
          [WRWorkflowEventTracker gatherDiagnosticsIfNeeded];
        }
      }

      else if (v120)
      {
        [(WRWorkflowEventTracker *)v73 gatherDiagnosticsIfNeeded];
      }
    }

    else
    {
      workflow13 = [(WRWorkflowEventTracker *)v73 workflow];
      [workflow13 name];

      [(WRWorkflowEventTracker *)v73 eventIdentifier];
      eventIdentifier10 = [(WRWorkflowEventTracker *)v73 eventIdentifier];

      v136 = __error();
      v118 = *v136;
      v119 = _wrlog(v136);
      v137 = os_log_type_enabled(v119, OS_LOG_TYPE_ERROR);
      if (eventIdentifier10)
      {
        if (v137)
        {
          [WRWorkflowEventTracker gatherDiagnosticsIfNeeded];
        }
      }

      else if (v137)
      {
        [(WRWorkflowEventTracker *)v73 gatherDiagnosticsIfNeeded];
      }
    }

    v16 = 0;
    *__error() = v118;
    goto LABEL_110;
  }

  if (v66)
  {
    LOBYTE(v76) = 0;
    goto LABEL_143;
  }

LABEL_147:
  workflow14 = [(WRWorkflowEventTracker *)v73 workflow];
  [workflow14 name];

  [(WRWorkflowEventTracker *)v73 eventIdentifier];
  eventIdentifier11 = [(WRWorkflowEventTracker *)v73 eventIdentifier];

  v140 = __error();
  v141 = *v140;
  v142 = _wrlog(v140);
  v143 = os_log_type_enabled(v142, OS_LOG_TYPE_INFO);
  if (eventIdentifier11)
  {
    if (v143)
    {
      workflow15 = [(WRWorkflowEventTracker *)v73 workflow];
      name5 = [workflow15 name];
      eventIdentifier12 = [(WRWorkflowEventTracker *)v73 eventIdentifier];
      *buf = 138543618;
      v198 = name5;
      v199 = 2114;
      v200 = eventIdentifier12;
      _os_log_impl(&dword_2746E5000, v142, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: No diagnostic thresholds were exceeded", buf, 0x16u);
    }
  }

  else if (v143)
  {
    workflow16 = [(WRWorkflowEventTracker *)v73 workflow];
    name6 = [workflow16 name];
    *buf = 138543362;
    v198 = name6;
    _os_log_impl(&dword_2746E5000, v142, OS_LOG_TYPE_INFO, "%{public}@: No diagnostic thresholds were exceeded", buf, 0xCu);
  }

  v16 = 0;
  *__error() = v141;
LABEL_110:

  return v16;
}

uint64_t __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke(uint64_t a1, char a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v11 = (a1 + 32);
    v12 = [*(a1 + 32) workflow];
    [v12 name];

    [*v11 eventIdentifier];
    v13 = [*v11 eventIdentifier];

    v14 = __error();
    v15 = *v14;
    v16 = _wrlog(v14);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v17)
      {
        __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_1();
      }
    }

    else if (v17)
    {
      __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_2();
    }

    *__error() = v15;
    return close(*(a1 + 56));
  }

  v3 = [*(a1 + 40) fileSystemRepresentation];
  if (!v3)
  {
    v18 = [*(a1 + 32) workflow];
    [v18 name];

    [*(a1 + 32) eventIdentifier];
    v19 = [*(a1 + 32) eventIdentifier];

    v20 = __error();
    v8 = *v20;
    v9 = _wrlog(v20);
    v21 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_5();
      }
    }

    else if (v21)
    {
      __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_6();
    }

    goto LABEL_23;
  }

  v4 = v3;
  if (fclonefileat(*(a1 + 56), -1, v3, 0))
  {
    v5 = [*(a1 + 32) workflow];
    [v5 name];

    [*(a1 + 32) eventIdentifier];
    v6 = [*(a1 + 32) eventIdentifier];

    v7 = __error();
    v8 = *v7;
    v9 = _wrlog(v7);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v10)
      {
        __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_3();
      }
    }

    else if (v10)
    {
      __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_4();
    }

LABEL_23:

    *__error() = v8;
    return close(*(a1 + 56));
  }

  close(*(a1 + 56));
  v22 = [*(a1 + 32) workflow];
  [v22 name];

  [*(a1 + 32) eventIdentifier];
  v23 = [*(a1 + 32) eventIdentifier];

  v24 = __error();
  v25 = *v24;
  v26 = _wrlog(v24);
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v27)
    {
      v28 = [*(a1 + 32) workflow];
      v29 = [v28 name];
      v30 = [*(a1 + 32) eventIdentifier];
      v34 = 138543874;
      v35 = v29;
      v36 = 2114;
      v37 = v30;
      v38 = 2082;
      v39 = v4;
      _os_log_impl(&dword_2746E5000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: saved tailspin file %{public}s for slow workflow, notifying spindump", &v34, 0x20u);
    }
  }

  else if (v27)
  {
    v32 = [*(a1 + 32) workflow];
    v33 = [v32 name];
    v34 = 138543618;
    v35 = v33;
    v36 = 2082;
    v37 = v4;
    _os_log_impl(&dword_2746E5000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: saved tailspin file %{public}s for slow workflow, notifying spindump", &v34, 0x16u);
  }

  *__error() = v25;
  SPReportWorkflowResponsivenessDelay();
  return +[WRWorkflowEventTracker cleanupWorkflowResponsivenessDiagnosticsDirectory];
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)stats
{
  v4 = retstr;
  v164 = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v149 = 0;
  v150 = 0;
  v147 = 0;
  v148 = 0;
  v145 = 0;
  v146 = 0;
  eventStart = [(WRWorkflowEventTracker *)self eventStart];
  machContTimeNs = [eventStart machContTimeNs];

  selfCopy = self;
  eventEnd = [(WRWorkflowEventTracker *)self eventEnd];
  machContTimeNs2 = [eventEnd machContTimeNs];

  if (!machContTimeNs || !machContTimeNs2 || machContTimeNs2 <= machContTimeNs)
  {
    return result;
  }

  v112 = machContTimeNs2 - machContTimeNs;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  obj = [(WRWorkflowEventTracker *)self allSignpostTrackers];
  v126 = [obj countByEnumeratingWithState:&v141 objects:v163 count:16];
  if (v126)
  {
    v134 = 0;
    v135 = 0;
    v10 = 0;
    v137 = 0;
    v11 = 0;
    v12 = 0;
    v125 = *v142;
    v124 = v4;
    while (1)
    {
      for (i = 0; i != v126; ++i)
      {
        if (*v142 != v125)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v141 + 1) + 8 * i);
        signpost = [v14 signpost];
        networkBound = [signpost networkBound];

        intervals = [v14 intervals];
        v17 = [intervals count];
        v136 = v14;
        incompleteIntervalStarts = [v14 incompleteIntervalStarts];
        v138 = [incompleteIntervalStarts count];
        if (!(v17 + v138))
        {
          goto LABEL_52;
        }

        v129 = v12;
        v128 = i;
        v127 = networkBound;
        if (v17)
        {
          __ptr = v10;
          v18 = 0;
          while (1)
          {
            v19 = v17;
            v20 = [intervals objectAtIndexedSubscript:v18];
            start = [v20 start];
            machContTimeNs3 = [start machContTimeNs];

            if (machContTimeNs3 <= machContTimeNs)
            {
              v23 = machContTimeNs;
            }

            else
            {
              v23 = machContTimeNs3;
            }

            v24 = [intervals objectAtIndexedSubscript:v18];
            v25 = [v24 end];
            machContTimeNs4 = [v25 machContTimeNs];

            if (machContTimeNs4 >= machContTimeNs2)
            {
              v27 = machContTimeNs2;
            }

            else
            {
              v27 = machContTimeNs4;
            }

            if (v27 >= v23)
            {
              __ptr = reallocf(__ptr, 16 * (v11 + 1));
              v37 = &__ptr[16 * v11];
              *v37 = v23;
              v37[1] = v27;
              signpost2 = [v136 signpost];
              networkBound2 = [signpost2 networkBound];

              if (networkBound2)
              {
                v135 = reallocf(v135, 16 * (HIDWORD(v137) + 1));
                v40 = &v135[16 * HIDWORD(v137)];
                *v40 = v23;
                v40[1] = v27;
                ++HIDWORD(v137);
              }

              else
              {
                v134 = reallocf(v134, 16 * (v137 + 1));
                v41 = &v134[16 * v137];
                *v41 = v23;
                v41[1] = v27;
                LODWORD(v137) = v137 + 1;
              }

              ++v11;
              v17 = v19;
              goto LABEL_28;
            }

            workflow = [(WRWorkflowEventTracker *)selfCopy workflow];
            [workflow name];

            [(WRWorkflowEventTracker *)selfCopy eventIdentifier];
            eventIdentifier = [(WRWorkflowEventTracker *)selfCopy eventIdentifier];

            v30 = __error();
            v31 = *v30;
            v32 = _wrlog(v30);
            v33 = os_log_type_enabled(v32, OS_LOG_TYPE_FAULT);
            v17 = v19;
            if (eventIdentifier)
            {
              if (v33)
              {
                workflow2 = [(WRWorkflowEventTracker *)selfCopy workflow];
                name = [workflow2 name];
                eventIdentifier2 = [(WRWorkflowEventTracker *)selfCopy eventIdentifier];
                v119 = [intervals objectAtIndexedSubscript:v18];
                start2 = [v119 start];
                machContTimeNs5 = [start2 machContTimeNs];
                v17 = v19;
                v115 = [intervals objectAtIndexedSubscript:v18];
                v35 = [v115 end];
                machContTimeNs6 = [v35 machContTimeNs];
                *buf = 138544642;
                v152 = name;
                v153 = 2114;
                v154 = eventIdentifier2;
                v155 = 2048;
                v156 = machContTimeNs5;
                v157 = 2048;
                v158 = machContTimeNs6;
                v159 = 2048;
                v160 = machContTimeNs;
                v161 = 2048;
                v162 = machContTimeNs2;
                _os_log_fault_impl(&dword_2746E5000, v32, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: signpost interval %llu-%llu outside event time range %llu-%llu", buf, 0x3Eu);

LABEL_31:
              }
            }

            else if (v33)
            {
              workflow2 = [(WRWorkflowEventTracker *)selfCopy workflow];
              name = [workflow2 name];
              v120 = [intervals objectAtIndexedSubscript:v18];
              start3 = [v120 start];
              machContTimeNs7 = [start3 machContTimeNs];
              v17 = v19;
              v42 = [intervals objectAtIndexedSubscript:v18];
              v43 = [v42 end];
              machContTimeNs8 = [v43 machContTimeNs];
              *buf = 138544386;
              v152 = name;
              v153 = 2048;
              v154 = machContTimeNs7;
              v155 = 2048;
              v156 = machContTimeNs8;
              v157 = 2048;
              v158 = machContTimeNs;
              v159 = 2048;
              v160 = machContTimeNs2;
              _os_log_fault_impl(&dword_2746E5000, v32, OS_LOG_TYPE_FAULT, "%{public}@: signpost interval %llu-%llu outside event time range %llu-%llu", buf, 0x34u);

              goto LABEL_31;
            }

            *__error() = v31;
LABEL_28:
            if (v17 == ++v18)
            {
              v10 = __ptr;
              v150 = __ptr;
              v146 = v134;
              v148 = v135;
              v4 = v124;
              v12 = v129;
              i = v128;
              networkBound = v127;
              break;
            }
          }
        }

        LODWORD(v149) = v11;
        LODWORD(v147) = HIDWORD(v137);
        LODWORD(v145) = v137;
        if (!v138)
        {
          goto LABEL_51;
        }

        v45 = 0;
        var2 = v4->var2;
        do
        {
          v47 = [incompleteIntervalStarts objectAtIndexedSubscript:v45];
          machContTimeNs9 = [v47 machContTimeNs];

          if (machContTimeNs9 <= machContTimeNs)
          {
            v49 = machContTimeNs;
          }

          else
          {
            v49 = machContTimeNs9;
          }

          if (machContTimeNs2 < v49)
          {
            workflow3 = [(WRWorkflowEventTracker *)selfCopy workflow];
            [workflow3 name];

            [(WRWorkflowEventTracker *)selfCopy eventIdentifier];
            eventIdentifier3 = [(WRWorkflowEventTracker *)selfCopy eventIdentifier];

            v52 = __error();
            v53 = *v52;
            v54 = _wrlog(v52);
            v55 = os_log_type_enabled(v54, OS_LOG_TYPE_FAULT);
            if (eventIdentifier3)
            {
              if (v55)
              {
                workflow4 = [(WRWorkflowEventTracker *)selfCopy workflow];
                __ptra = [workflow4 name];
                eventIdentifier4 = [(WRWorkflowEventTracker *)selfCopy eventIdentifier];
                v57 = [incompleteIntervalStarts objectAtIndexedSubscript:v45];
                machContTimeNs10 = [v57 machContTimeNs];
                *buf = 138544130;
                v152 = __ptra;
                v153 = 2114;
                v154 = eventIdentifier4;
                v155 = 2048;
                v156 = machContTimeNs10;
                v157 = 2048;
                v158 = machContTimeNs2;
                _os_log_fault_impl(&dword_2746E5000, v54, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: incomplete interval %llu after event end %llu", buf, 0x2Au);

                v59 = workflow4;
                goto LABEL_50;
              }
            }

            else if (v55)
            {
              __ptrb = [(WRWorkflowEventTracker *)selfCopy workflow];
              name2 = [__ptrb name];
              v66 = [incompleteIntervalStarts objectAtIndexedSubscript:v45];
              machContTimeNs11 = [v66 machContTimeNs];
              *buf = 138543874;
              v152 = name2;
              v153 = 2048;
              v154 = machContTimeNs11;
              v155 = 2048;
              v156 = machContTimeNs2;
              _os_log_fault_impl(&dword_2746E5000, v54, OS_LOG_TYPE_FAULT, "%{public}@: incomplete interval %llu after event end %llu", buf, 0x20u);

              v59 = __ptrb;
LABEL_50:
            }

            *__error() = v53;
            goto LABEL_47;
          }

          ++var2;
          v10 = reallocf(v10, 16 * (v11 + 1));
          v60 = &v10[16 * v11];
          *v60 = v49;
          v60[1] = machContTimeNs2;
          signpost3 = [v136 signpost];
          networkBound3 = [signpost3 networkBound];

          if (networkBound3)
          {
            v135 = reallocf(v135, 16 * (HIDWORD(v137) + 1));
            v63 = &v135[16 * HIDWORD(v137)];
            *v63 = v49;
            v63[1] = machContTimeNs2;
            ++HIDWORD(v137);
          }

          else
          {
            v134 = reallocf(v134, 16 * (v137 + 1));
            v64 = &v134[16 * v137];
            *v64 = v49;
            v64[1] = machContTimeNs2;
            LODWORD(v137) = v137 + 1;
          }

          ++v11;
LABEL_47:
          ++v45;
        }

        while (v138 != v45);
        v4 = v124;
        v124->var2 = var2;
        v150 = v10;
        v146 = v134;
        v148 = v135;
        v12 = v129;
        i = v128;
        networkBound = v127;
LABEL_51:
        LODWORD(v149) = v11;
        LODWORD(v147) = HIDWORD(v137);
        LODWORD(v145) = v137;
LABEL_52:
        v12 |= networkBound;
      }

      v126 = [obj countByEnumeratingWithState:&v141 objects:v163 count:16];
      if (!v126)
      {
        goto LABEL_56;
      }
    }
  }

  LOBYTE(v12) = 0;
LABEL_56:

  WRRangesSortAndCoalesce(&v149);
  v68 = v149;
  v69 = 0;
  if (v149)
  {
    v70 = v150 + 8;
    do
    {
      v69 = &v69[*v70 - *(v70 - 1)];
      v70 += 2;
      --v68;
    }

    while (v68);
    if (v69 > v112)
    {
      workflow5 = [(WRWorkflowEventTracker *)selfCopy workflow];
      [workflow5 name];

      [(WRWorkflowEventTracker *)selfCopy eventIdentifier];
      eventIdentifier5 = [(WRWorkflowEventTracker *)selfCopy eventIdentifier];

      v73 = __error();
      v74 = *v73;
      v75 = _wrlog(v73);
      v76 = os_log_type_enabled(v75, OS_LOG_TYPE_FAULT);
      if (eventIdentifier5)
      {
        if (v76)
        {
          workflow6 = [(WRWorkflowEventTracker *)selfCopy workflow];
          name3 = [workflow6 name];
          eventIdentifier6 = [(WRWorkflowEventTracker *)selfCopy eventIdentifier];
          *buf = 138544130;
          v152 = name3;
          v153 = 2114;
          v154 = eventIdentifier6;
          v155 = 2048;
          v156 = v69;
          v157 = 2048;
          v158 = v112;
          _os_log_fault_impl(&dword_2746E5000, v75, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: union of all signposts duration %llu > workflow event duration %llu", buf, 0x2Au);

LABEL_102:
        }
      }

      else if (v76)
      {
        workflow6 = [(WRWorkflowEventTracker *)selfCopy workflow];
        name3 = [workflow6 name];
        *buf = 138543874;
        v152 = name3;
        v153 = 2048;
        v154 = v69;
        v155 = 2048;
        v156 = v112;
        _os_log_fault_impl(&dword_2746E5000, v75, OS_LOG_TYPE_FAULT, "%{public}@: union of all signposts duration %llu > workflow event duration %llu", buf, 0x20u);
        goto LABEL_102;
      }

      v81 = __error();
      v80 = 0;
      *v81 = v74;
      goto LABEL_66;
    }
  }

  v80 = v112 - v69;
LABEL_66:
  v4->var0 = v80;
  LODWORD(v149) = 0;
  free(v150);
  v150 = 0;
  if (v12)
  {
    WRRangesSortAndCoalesce(&v147);
    WRRangesSortAndCoalesce(&v145);
    v82 = v147;
    if (!v147)
    {
      goto LABEL_90;
    }

    v83 = v145;
    if (!v145)
    {
      goto LABEL_86;
    }

    v84 = 0;
    v85 = 0;
    do
    {
      if (v85 < v83)
      {
        v86 = v148;
        v87 = 16 * v85;
        do
        {
          v88 = *(v146 + v87 + 8);
          v89 = &v86[2 * v84];
          if (v88 > *v89)
          {
            v90 = *(v146 + v87);
            v91 = v89[1];
            if (v90 >= v91)
            {
              break;
            }

            if (*v89 >= v90)
            {
              if (v88 >= v91)
              {
                *v89 = v91;
              }

              else
              {
                *v89 = v88;
                v86[2 * v84 + 1] = v91;
              }
            }

            else
            {
              v89[1] = v90;
              if (v88 < v91)
              {
                v92 = v147 + ~v84;
                LODWORD(v147) = v147 + 1;
                v93 = reallocf(v86, 16 * v147);
                v86 = v93;
                v148 = v93;
                if (v92)
                {
                  memmove(&v93[16 * v84 + 32], &v93[16 * v84 + 16], v92);
                }

                v94 = &v86[2 * ++v84];
                *v94 = v88;
                v94[1] = v91;
                v83 = v145;
              }
            }
          }

          ++v85;
          v87 += 16;
        }

        while (v85 < v83);
        v85 = v85;
        v82 = v147;
      }

      ++v84;
    }

    while (v84 < v82);
    WRRangesSortAndCoalesce(&v147);
    v82 = v147;
    if (v147)
    {
LABEL_86:
      v95 = 0;
      v96 = v82;
      v97 = v148 + 8;
      do
      {
        v95 = &v95[*v97 - *(v97 - 1)];
        v97 += 2;
        --v96;
      }

      while (v96);
    }

    else
    {
LABEL_90:
      v95 = 0;
    }

    if (v112 <= v95)
    {
      workflow7 = [(WRWorkflowEventTracker *)selfCopy workflow];
      [workflow7 name];

      [(WRWorkflowEventTracker *)selfCopy eventIdentifier];
      eventIdentifier7 = [(WRWorkflowEventTracker *)selfCopy eventIdentifier];

      v103 = __error();
      v104 = *v103;
      v105 = _wrlog(v103);
      v106 = os_log_type_enabled(v105, OS_LOG_TYPE_FAULT);
      if (eventIdentifier7)
      {
        if (v106)
        {
          workflow8 = [(WRWorkflowEventTracker *)selfCopy workflow];
          name4 = [workflow8 name];
          eventIdentifier8 = [(WRWorkflowEventTracker *)selfCopy eventIdentifier];
          *buf = 138544130;
          v152 = name4;
          v153 = 2114;
          v154 = eventIdentifier8;
          v155 = 2048;
          v156 = v95;
          v157 = 2048;
          v158 = v112;
          _os_log_fault_impl(&dword_2746E5000, v105, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: network-bound duration %llu > workflow event duration %llu", buf, 0x2Au);
        }
      }

      else if (v106)
      {
        workflow9 = [(WRWorkflowEventTracker *)selfCopy workflow];
        name5 = [workflow9 name];
        *buf = 138543874;
        v152 = name5;
        v153 = 2048;
        v154 = v95;
        v155 = 2048;
        v156 = v112;
        _os_log_fault_impl(&dword_2746E5000, v105, OS_LOG_TYPE_FAULT, "%{public}@: network-bound duration %llu > workflow event duration %llu", buf, 0x20u);
      }

      *__error() = v104;
    }

    else
    {
      v4->var1 = v112 - v95;
    }
  }

  else
  {
    eventEnd2 = [(WRWorkflowEventTracker *)selfCopy eventEnd];
    machContTimeNs12 = [eventEnd2 machContTimeNs];
    eventStart2 = [(WRWorkflowEventTracker *)selfCopy eventStart];
    v4->var1 = machContTimeNs12 - [eventStart2 machContTimeNs];
  }

  free(v146);
  free(v148);
  return result;
}

- (void)generateTelemetry
{
  workflow = [self workflow];
  name = [workflow name];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)reportCoreAnalyticsEventForSignpost:(void *)signpost allCount:(void *)count allDurationUnionSec:(void *)sec allDurationSumSec:(void *)sumSec allDurationLongestSec:(void *)longestSec allDurationUntrackedSec:(void *)untrackedSec allDurationNonNetworkBoundSec:(void *)boundSec allTimeUntilFirstSignpost:(void *)self0 allTimeAfterLastSignpost:(void *)self1 incompleteCount:(void *)self2 completeDurationUnionSec:(void *)self3 completeDurationSumSec:(void *)self4 completeDurationLongestSec:(void *)self5 completeTimeUntilFirstSignpost:(void *)self6 environment:
{
  v22 = a2;
  signpostCopy = signpost;
  countCopy = count;
  secCopy = sec;
  sumSecCopy = sumSec;
  longestSecCopy = longestSec;
  untrackedSecCopy = untrackedSec;
  boundSecCopy = boundSec;
  firstSignpostCopy = firstSignpost;
  lastSignpostCopy = lastSignpost;
  incompleteCountCopy = incompleteCount;
  unionSecCopy = unionSec;
  durationSumSecCopy = durationSumSec;
  durationLongestSecCopy = durationLongestSec;
  untilFirstSignpostCopy = untilFirstSignpost;
  if (self)
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    workflow = [self workflow];
    name = [workflow name];
    v28 = WRSanitizeForCA(name, 0);

    if (v22)
    {
      v29 = WRSanitizeForCA(v22, 0);
    }

    else
    {
      v29 = 0;
    }

    error = [self error];
    [v25 setObject:v28 forKeyedSubscript:@"workflowName"];
    v59 = v29;
    if (error)
    {
      v31 = sumSecCopy;
      domain = [error domain];
      v33 = [domain isEqualToString:@"WorkflowResponsivenessError"];

      if (v33)
      {
        v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(error, "code")}];
        [v25 setObject:v34 forKeyedSubscript:@"error"];

        sumSecCopy = v31;
      }

      else
      {
        v35 = v28;
        v36 = secCopy;
        v37 = v22;
        workflow2 = [self workflow];
        [workflow2 name];

        [self eventIdentifier];
        eventIdentifier = [self eventIdentifier];

        v40 = __error();
        v41 = *v40;
        v42 = _wrlog(v40);
        v43 = os_log_type_enabled(v42, OS_LOG_TYPE_FAULT);
        if (eventIdentifier)
        {
          if (v43)
          {
            [WRWorkflowEventTracker reportCoreAnalyticsEventForSignpost:allCount:allDurationUnionSec:allDurationSumSec:allDurationLongestSec:allDurationUntrackedSec:allDurationNonNetworkBoundSec:allTimeUntilFirstSignpost:allTimeAfterLastSignpost:incompleteCount:completeDurationUnionSec:completeDurationSumSec:completeDurationLongestSec:completeTimeUntilFirstSignpost:environment:];
          }
        }

        else if (v43)
        {
          [WRWorkflowEventTracker reportCoreAnalyticsEventForSignpost:self allCount:error allDurationUnionSec:? allDurationSumSec:? allDurationLongestSec:? allDurationUntrackedSec:? allDurationNonNetworkBoundSec:? allTimeUntilFirstSignpost:? allTimeAfterLastSignpost:? incompleteCount:? completeDurationUnionSec:? completeDurationSumSec:? completeDurationLongestSec:? completeTimeUntilFirstSignpost:? environment:?];
        }

        *__error() = v41;
        [v25 setObject:&unk_28838A6E0 forKeyedSubscript:@"error"];
        v22 = v37;
        secCopy = v36;
        sumSecCopy = v31;
        v28 = v35;
      }

      v29 = v59;
    }

    [v25 setObject:v29 forKeyedSubscript:@"signpostName"];
    [v25 setObject:signpostCopy forKeyedSubscript:@"occurrencesCount"];
    [v25 setObject:boundSecCopy forKeyedSubscript:@"delaySec"];
    [v25 setObject:firstSignpostCopy forKeyedSubscript:@"delayAfterSec"];
    [v25 setObject:secCopy forKeyedSubscript:@"durationSec"];
    [v25 setObject:countCopy forKeyedSubscript:@"durationUnionSec"];
    v55 = sumSecCopy;
    [v25 setObject:sumSecCopy forKeyedSubscript:@"durationLongestSec"];
    [v25 setObject:longestSecCopy forKeyedSubscript:@"durationUntrackedSec"];
    [v25 setObject:untrackedSecCopy forKeyedSubscript:@"durationNonNetworkBoundSec"];
    [v25 setObject:lastSignpostCopy forKeyedSubscript:@"incompleteOccurrencesCount"];
    [v25 setObject:durationLongestSecCopy forKeyedSubscript:@"completeDelaySec"];
    [v25 setObject:unionSecCopy forKeyedSubscript:@"completeDurationSec"];
    [v25 setObject:incompleteCountCopy forKeyedSubscript:@"completeDurationUnionSec"];
    [v25 setObject:durationSumSecCopy forKeyedSubscript:@"completeDurationLongestSec"];
    v56 = secCopy;
    v58 = v28;
    if (error)
    {
      v44 = [@"com.apple.workflow-responsiveness" stringByAppendingString:@"-error"];
    }

    else
    {
      v44 = @"com.apple.workflow-responsiveness";
    }

    v45 = [(__CFString *)v44 stringByAppendingString:@"-generic"];
    [(WRWorkflowEventTracker *)self submitCAEventName:v45 dict:v25 forSignpost:v22];
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = 0;
    if (untilFirstSignpostCopy)
    {
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __370__WRWorkflowEventTracker_reportCoreAnalyticsEventForSignpost_allCount_allDurationUnionSec_allDurationSumSec_allDurationLongestSec_allDurationUntrackedSec_allDurationNonNetworkBoundSec_allTimeUntilFirstSignpost_allTimeAfterLastSignpost_incompleteCount_completeDurationUnionSec_completeDurationSumSec_completeDurationLongestSec_completeTimeUntilFirstSignpost_environment___block_invoke;
      v72[3] = &unk_279EE3438;
      v76 = &v77;
      v46 = v25;
      v73 = v46;
      v47 = v22;
      v74 = v47;
      selfCopy = self;
      [untilFirstSignpostCopy enumerateKeysAndObjectsUsingBlock:v72];

      if (v78[3])
      {
        if (v59)
        {
          [(__CFString *)v44 stringByAppendingFormat:@"-%@-%@", v58, v59];
        }

        else
        {
          [(__CFString *)v44 stringByAppendingFormat:@"-%@", v58];
        }
        v48 = ;
        v49 = v48;
        if (v22)
        {
          v54 = v48;
          workflow3 = [self workflow];
          v51 = [(WRWorkflow *)workflow3 wrsignpostWithName:v47];

          if (v51)
          {
            customEnvironmentCoreAnalyticsEventName = [v51 customEnvironmentCoreAnalyticsEventName];

            if (customEnvironmentCoreAnalyticsEventName)
            {
              customEnvironmentCoreAnalyticsEventName2 = [v51 customEnvironmentCoreAnalyticsEventName];

              v54 = customEnvironmentCoreAnalyticsEventName2;
            }
          }

          v49 = v54;
        }

        [(WRWorkflowEventTracker *)self submitCAEventName:v49 dict:v46 forSignpost:v47];
      }
    }

    _Block_object_dispose(&v77, 8);

    sumSecCopy = v55;
    secCopy = v56;
  }
}

void __43__WRWorkflowEventTracker_generateTelemetry__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    objc_msgSend_statsWithEventEndNs_(v3);
  }

  v5 = [v4 signpost];
  [v5 name];

  v7 = a1[4];
  v6 = (a1 + 4);
  v8 = [v7 workflow];
  [v8 name];

  [*v6 eventIdentifier];
  v9 = [*v6 eventIdentifier];

  v10 = __error();
  v11 = *v10;
  v12 = _wrlog(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v13)
    {
      __43__WRWorkflowEventTracker_generateTelemetry__block_invoke_cold_1();
    }
  }

  else if (v13)
  {
    __43__WRWorkflowEventTracker_generateTelemetry__block_invoke_cold_2(v6);
  }

  *__error() = v11;
}

void __370__WRWorkflowEventTracker_reportCoreAnalyticsEventForSignpost_allCount_allDurationUnionSec_allDurationSumSec_allDurationLongestSec_allDurationUntrackedSec_allDurationNonNetworkBoundSec_allTimeUntilFirstSignpost_allTimeAfterLastSignpost_incompleteCount_completeDurationUnionSec_completeDurationSumSec_completeDurationLongestSec_completeTimeUntilFirstSignpost_environment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = WRSanitizeForCA(v5, 1);
    v9 = [v7 initWithFormat:@"env_%@", v8];

    v10 = [*(a1 + 32) objectForKeyedSubscript:v9];

    if (!v10)
    {
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v9];
LABEL_9:

      goto LABEL_10;
    }

    v11 = [*(a1 + 48) workflow];
    [v11 name];

    [*(a1 + 48) eventIdentifier];
    v12 = [*(a1 + 48) eventIdentifier];

    v13 = __error();
    v14 = *v13;
    v15 = _wrlog(v13);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v16)
      {
        v17 = [*(a1 + 48) workflow];
        v18 = [v17 name];
        v19 = [*(a1 + 48) eventIdentifier];
        v20 = *(a1 + 40);
        *buf = 138544386;
        v23 = v18;
        v24 = 2114;
        v25 = v19;
        v26 = 2114;
        v27 = v20;
        v28 = 2114;
        v29 = v5;
        v30 = 2112;
        v31 = v6;
        _os_log_error_impl(&dword_2746E5000, v15, OS_LOG_TYPE_ERROR, "%{public}@<%{public}@>: %{public}@: Cannot log telemetry for %{public}@ -> %@, conflicts with existing entry", buf, 0x34u);

LABEL_12:
      }
    }

    else if (v16)
    {
      v17 = [*(a1 + 48) workflow];
      v18 = [v17 name];
      v21 = *(a1 + 40);
      *buf = 138544130;
      v23 = v18;
      v24 = 2114;
      v25 = v21;
      v26 = 2114;
      v27 = v5;
      v28 = 2112;
      v29 = v6;
      _os_log_error_impl(&dword_2746E5000, v15, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: Cannot log telemetry for %{public}@ -> %@, conflicts with existing entry", buf, 0x2Au);
      goto LABEL_12;
    }

    *__error() = v14;
    goto LABEL_9;
  }

LABEL_10:
}

+ (uint64_t)isReservedWorkflowName:(uint64_t)name
{
  v2 = a2;
  objc_opt_self();
  v3 = [&unk_28838A698 containsObject:v2];

  return v3;
}

+ (uint64_t)isReservedSignpostName:(uint64_t)name
{
  v2 = a2;
  objc_opt_self();
  v3 = [&unk_28838A6B0 containsObject:v2];

  return v3;
}

- (WRWorkflowEventTracker)initWithWorkflow:(id)workflow eventCompletionCallback:(id)callback
{
  callbackCopy = callback;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__WRWorkflowEventTracker_initWithWorkflow_eventCompletionCallback___block_invoke;
  v10[3] = &unk_279EE3460;
  v11 = callbackCopy;
  v7 = callbackCopy;
  v8 = [(WRWorkflowEventTracker *)self initForReadbackWithWorkflow:workflow eventCompletionCallback:v10];

  return v8;
}

void __67__WRWorkflowEventTracker_initWithWorkflow_eventCompletionCallback___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = [v3 eventStart];
  v4 = [v3 eventEnd];
  v5 = [v3 startSignpost];
  v6 = [v3 endSignpost];
  (*(v2 + 16))(v2, v3, v7, v4, v5, v6);
}

- (id)initWithWorkflow:(id *)workflow
{
  v4 = a2;
  if (workflow)
  {
    v7.receiver = workflow;
    v7.super_class = WRWorkflowEventTracker;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    workflow = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
    }
  }

  return workflow;
}

- (NSArray)allSignpostTrackers
{
  if (self)
  {
    self = OUTLINED_FUNCTION_69(self, a2);
  }

  v2 = [(WRWorkflowEventTracker *)self copy];

  return v2;
}

- (void)reset
{
  [(WRWorkflowEventTracker *)self reportErrorsAndResetAtMachContNs:0 date:?];
  OUTLINED_FUNCTION_52();
  if (self)
  {
    Property = objc_getProperty(self, v3, 112, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  OUTLINED_FUNCTION_76();
  v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [(WRWorkflowEventTracker *)*(v15 + 8 * v10++) reportErrorsAndResetAtMachContNs:0 date:?];
      }

      while (v8 != v10);
      OUTLINED_FUNCTION_76();
      v8 = OUTLINED_FUNCTION_75(v11, v12, v13, v14);
    }

    while (v8);
  }
}

- (void)reportErrorsAndResetAtMachContNs:(void *)ns date:
{
  v50 = *MEMORY[0x277D85DE8];
  nsCopy = ns;
  if (self)
  {
    if (![self inMiddleOfEvent])
    {
LABEL_19:
      [(WRWorkflowEventTracker *)self resetWithoutReportingErrors];
      goto LABEL_20;
    }

    workflow = [self workflow];
    [workflow name];

    [self eventIdentifier];
    eventIdentifier = [self eventIdentifier];

    v10 = __error();
    v11 = *v10;
    v12 = _wrlog(v10);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (eventIdentifier)
    {
      if (v13)
      {
        workflow2 = [self workflow];
        [workflow2 name];
        objc_claimAutoreleasedReturnValue();
        eventIdentifier2 = [OUTLINED_FUNCTION_68() eventIdentifier];
        *buf = 138543618;
        v47 = name;
        v48 = 2114;
        v49 = eventIdentifier2;
        _os_log_error_impl(&dword_2746E5000, v12, OS_LOG_TYPE_ERROR, "%{public}@<%{public}@>: reset in middle of event, reporting error", buf, 0x16u);

        goto LABEL_8;
      }
    }

    else if (v13)
    {
      workflow2 = [self workflow];
      name = [workflow2 name];
      *buf = 138543362;
      v47 = name;
      _os_log_error_impl(&dword_2746E5000, v12, OS_LOG_TYPE_ERROR, "%{public}@: reset in middle of event, reporting error", buf, 0xCu);
LABEL_8:
    }

    *__error() = v11;
    if (!a2 || !nsCopy)
    {
      v33 = WRMakeError(5, @"Workflow event incomplete", v16, v17, v18, v19, v20, v21, v44);
      [(WRWorkflowEventTracker *)self handleError:v33 atEndTime:0];
      goto LABEL_18;
    }

    workflow3 = [self workflow];
    if ([workflow3 hasMaximumEventDuration])
    {
      eventStart = [self eventStart];
      machContTimeNs = [eventStart machContTimeNs];
      workflow4 = [self workflow];
      [workflow4 maximumEventDuration];
      if (machContTimeNs + (v26 * 1000000000.0) <= a2)
      {
        ignoreEventTimeouts = [self ignoreEventTimeouts];

        if ((ignoreEventTimeouts & 1) == 0)
        {
          v45 = [WRTimestampAndThread alloc];
          workflow3 = [self eventStart];
          [workflow3 machContTimeNs];
          workflow5 = [OUTLINED_FUNCTION_68() workflow];
          [workflow5 maximumEventDuration];
          v40 = (v39 * 1000000000.0);
          eventStart2 = [self eventStart];
          [eventStart2 date];
          objc_claimAutoreleasedReturnValue();
          workflow6 = [OUTLINED_FUNCTION_34() workflow];
          [workflow6 maximumEventDuration];
          v43 = [v11 dateByAddingTimeInterval:?];
          v33 = [(WRTimestampAndThread *)&v45->super.isa initWithPID:0 threadID:&workflow4[v40] machContTimeNs:v43 date:?];

          v34 = @"Workflow event timed out";
          v35 = 4;
          goto LABEL_16;
        }

LABEL_15:
        v33 = [[WRTimestampAndThread alloc] initWithPID:0 threadID:a2 machContTimeNs:nsCopy date:?];
        v34 = @"Workflow event incomplete";
        v35 = 5;
LABEL_16:
        WRMakeError(v35, v34, v27, v28, v29, v30, v31, v32, v44);
        objc_claimAutoreleasedReturnValue();
        v36 = OUTLINED_FUNCTION_87();
        [(WRWorkflowEventTracker *)v36 handleError:workflow3 atEndTime:v33];

LABEL_18:
        goto LABEL_19;
      }
    }

    goto LABEL_15;
  }

LABEL_20:
}

- (void)handleError:(void *)error atEndTime:
{
  if (result)
  {
    v3 = result;
    errorCopy = error;
    v5 = OUTLINED_FUNCTION_49();
    objc_setProperty_atomic(v5, v6, v7, 64);
    v8 = OUTLINED_FUNCTION_48();
    objc_setProperty_atomic(v8, v9, v10, 48);

    v12 = *(objc_getProperty(v3, v11, 144, 1) + 2);

    return v12();
  }

  return result;
}

- (void)resetWithoutReportingErrors
{
  if (self)
  {
    if (objc_getProperty(self, a2, 128, 1))
    {
      Property = objc_getProperty(self, v3, 128, 1);
      dispatch_source_cancel(Property);
      v5 = OUTLINED_FUNCTION_21();
      objc_setProperty_atomic(v5, v6, v7, 128);
    }

    v8 = OUTLINED_FUNCTION_21();
    objc_setProperty_atomic(v8, v9, v10, 32);
    v11 = OUTLINED_FUNCTION_21();
    objc_setProperty_atomic(v11, v12, v13, 40);
    v14 = OUTLINED_FUNCTION_21();
    objc_setProperty_atomic(v14, v15, v16, 48);
    v17 = OUTLINED_FUNCTION_21();
    objc_setProperty_atomic(v17, v18, v19, 56);
    v20 = OUTLINED_FUNCTION_21();
    objc_setProperty_atomic(v20, v21, v22, 64);
    [OUTLINED_FUNCTION_96(self v23)];
    workflow = [self workflow];
    endSignpostGroups = [workflow endSignpostGroups];
    v26 = [endSignpostGroups count];

    if (v26)
    {
      v28 = 0;
      do
      {
        v29 = OUTLINED_FUNCTION_96(self, v27);
        null = [OUTLINED_FUNCTION_43() null];
        [endSignpostGroups addObject:null];

        ++v28;
        workflow2 = [self workflow];
        endSignpostGroups = [workflow2 endSignpostGroups];
        v32 = [endSignpostGroups count];
      }

      while (v28 < v32);
    }

    v33 = objc_alloc(MEMORY[0x277CBEB18]);
    workflow3 = [self workflow];
    allSignposts = [workflow3 allSignposts];
    v36 = [v33 initWithCapacity:{objc_msgSend(allSignposts, "count")}];
    v37 = OUTLINED_FUNCTION_49();
    objc_setProperty_atomic(v37, v38, v39, 104);

    v40 = OUTLINED_FUNCTION_21();

    objc_setProperty_atomic(v40, v41, v42, 136);
  }
}

- (id)individuationIdentifierForSignpostObject:(void *)object individuationFieldName:
{
  if (self)
  {
    self = [(WRWorkflowEventTracker *)self valueForFieldName:object inSignpostObject:a2];
    v3 = vars8;
  }

  return self;
}

- (id)eventIdentifierForSignpostObject:(void *)object wrSignopst:
{
  v8 = a2;
  objectCopy = object;
  v10 = objectCopy;
  if (self)
  {
    if ([objectCopy eventIdentifierIsSignpostID])
    {
      v11 = objc_opt_class();
      if (OUTLINED_FUNCTION_73(v11))
      {
        endEvent = v8;
LABEL_8:
        v16 = endEvent;
        scope = [endEvent scope];
        v18 = objc_alloc(MEMORY[0x277CCACA8]);
        [OUTLINED_FUNCTION_65() scope];
        v19 = OUTLINED_FUNCTION_33();
        if (scope == 2)
        {
          [v19 threadID];
          v20 = [v3 initWithFormat:@"%lu-%llu-%llu", v4, 2, objc_msgSend(OUTLINED_FUNCTION_90(), "signpostId")];
        }

        else if (scope == 1)
        {
          v20 = [v3 initWithFormat:@"%lu-%d-%llu", v4, objc_msgSend(v19, "processID"), objc_msgSend(v16, "signpostId")];
        }

        else
        {
          v20 = [v3 initWithFormat:@"%lu-%llu", v4, objc_msgSend(v19, "signpostId"), v40];
        }

        v14 = v20;

        goto LABEL_20;
      }

      v15 = objc_opt_class();
      if (OUTLINED_FUNCTION_73(v15))
      {
        endEvent = [v8 endEvent];
        goto LABEL_8;
      }

      workflow = [self workflow];
      [workflow name];

      [self eventIdentifier];
      eventIdentifier = [self eventIdentifier];

      v23 = __error();
      v24 = *v23;
      v25 = _wrlog(v23);
      v26 = OUTLINED_FUNCTION_99(v25);
      if (eventIdentifier)
      {
        if (v26)
        {
          workflow2 = [self workflow];
          [workflow2 name];
          objc_claimAutoreleasedReturnValue();
          eventIdentifier2 = [OUTLINED_FUNCTION_90() eventIdentifier];
          object_getClassName(v8);
          OUTLINED_FUNCTION_37();
          _os_log_fault_impl(v28, v29, v30, v31, v32, 0x20u);
        }
      }

      else if (v26)
      {
        workflow3 = [self workflow];
        name = [workflow3 name];
        object_getClassName(v8);
        OUTLINED_FUNCTION_37();
        _os_log_fault_impl(v35, v36, v37, v38, v39, 0x16u);
      }

      v14 = 0;
      *__error() = v24;
    }

    else
    {
      [v10 eventIdentifierFieldName];
      objc_claimAutoreleasedReturnValue();
      v13 = OUTLINED_FUNCTION_33();
      v14 = [(WRWorkflowEventTracker *)v13 valueForFieldName:v4 inSignpostObject:v8];
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_20:

  return v14;
}

- (void)checkForNonPublicField:(void *)field fieldName:(void *)name messageArgument:
{
  v12 = a2;
  fieldCopy = field;
  nameCopy = name;
  v10 = nameCopy;
  if (self && nameCopy && *(self + 96) && [nameCopy privacyLevel] != 2)
  {
    [v12 name];
    objc_claimAutoreleasedReturnValue();
    v11 = [OUTLINED_FUNCTION_50() objectForKeyedSubscript:v4];

    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v12 name];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_33() setObject:v11 forKeyedSubscript:v4];
    }

    if (([v11 containsObject:fieldCopy] & 1) == 0)
    {
      [v11 addObject:fieldCopy];
    }
  }
}

- (id)individuationIdentifierForSignpostEvent:(void *)event individuationFieldName:
{
  if (self)
  {
    self = [(WRWorkflowEventTracker *)self valueForFieldName:event inSignpostEvent:a2];
    v3 = vars8;
  }

  return self;
}

- (id)trackerForWRSignpost:(void *)signpost individuationIdentifier:
{
  v6 = a2;
  signpostCopy = signpost;
  if (self)
  {
    OUTLINED_FUNCTION_52();
    v9 = OUTLINED_FUNCTION_69(self, v8);
    OUTLINED_FUNCTION_76();
    v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
    if (v11)
    {
      v3 = v11;
LABEL_4:
      v12 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_91();
        if (!v13)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(v26 + 8 * v12);
        signpost = [v14 signpost];

        if (signpost == v6)
        {
          break;
        }

        if (v3 == ++v12)
        {
          OUTLINED_FUNCTION_76();
          v3 = OUTLINED_FUNCTION_100(v16, v17, v18, v19);
          if (v3)
          {
            goto LABEL_4;
          }

          goto LABEL_20;
        }
      }

      individuationIdentifier = [v14 individuationIdentifier];
      v21 = individuationIdentifier;
      if (individuationIdentifier == signpostCopy || signpostCopy && individuationIdentifier && ([signpostCopy isEqualToString:individuationIdentifier] & 1) != 0)
      {
        v3 = v14;

        goto LABEL_16;
      }
    }

LABEL_20:

    v23 = [WRSignpostTracker alloc];
    [WRSignpostTracker initWithSignpost:individuationIdentifier:];
    v24 = OUTLINED_FUNCTION_33();
    [OUTLINED_FUNCTION_69(v24 v25)];
  }

  else
  {
    v3 = 0;
  }

LABEL_16:

  return v3;
}

- (uint64_t)haveAnyEndSignpostsWithIndividuationFieldName:(uint64_t)name
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (name)
  {
    workflow = [OUTLINED_FUNCTION_77() workflow];
    endSignpostGroups = [workflow endSignpostGroups];

    v8 = OUTLINED_FUNCTION_74(v6, v7, v30, v33);
    if (v8)
    {
      v9 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          OUTLINED_FUNCTION_92();
          if (!v11)
          {
            objc_enumerationMutation(endSignpostGroups);
          }

          v12 = *(v31 + 8 * i);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                individuationFieldName = [*(*(&v26 + 1) + 8 * j) individuationFieldName];
                v19 = [individuationFieldName isEqualToString:v3];

                if (v19)
                {

                  v24 = 1;
                  goto LABEL_20;
                }
              }

              v15 = OUTLINED_FUNCTION_100(v20, v21, &v26, v32);
              if (v15)
              {
                continue;
              }

              break;
            }
          }
        }

        v9 = OUTLINED_FUNCTION_74(v22, v23, v30, v33);
        v24 = 0;
      }

      while (v9);
    }

    else
    {
      v24 = 0;
    }

LABEL_20:
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)sawIndividuationFieldName:(void *)name withIndividuationIdentifier:
{
  v92 = *MEMORY[0x277D85DE8];
  v5 = a2;
  nameCopy = name;
  if (self)
  {
    workflow = [self workflow];
    endSignpostGroups = [workflow endSignpostGroups];

    if (![endSignpostGroups count])
    {
      goto LABEL_44;
    }

    v8 = 0;
    v66 = endSignpostGroups;
    while (1)
    {
      v9 = [endSignpostGroups objectAtIndexedSubscript:v8];
      memset(v78, 0, sizeof(v78));
      obj = v9;
      v10 = [v9 countByEnumeratingWithState:v78 objects:v91 count:16];
      if (!v10)
      {
        goto LABEL_43;
      }

      v11 = v10;
      v76 = v8;
      do
      {
        v12 = 0;
        do
        {
          OUTLINED_FUNCTION_92();
          if (!v13)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v78[0] + 1) + 8 * v12);
          individuationFieldName = [v14 individuationFieldName];
          v16 = [individuationFieldName isEqualToString:v5];

          if (v16)
          {
            v18 = [OUTLINED_FUNCTION_96(self v17)];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_37;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
              goto LABEL_20;
            }

            null = [MEMORY[0x277CBEB68] null];

            if (v18 != null)
            {
              workflow2 = [self workflow];
              [workflow2 name];

              [self eventIdentifier];
              eventIdentifier = [self eventIdentifier];

              v23 = __error();
              v24 = *v23;
              v25 = _wrlog(v23);
              v26 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);
              if (eventIdentifier)
              {
                if (v26)
                {
                  loga = [self workflow];
                  name = [loga name];
                  eventIdentifier2 = [self eventIdentifier];
                  object_getClassName(v18);
                  *buf = 138543874;
                  OUTLINED_FUNCTION_85();
                  v83 = 2080;
                  v84 = v28;
                  OUTLINED_FUNCTION_78();
                  _os_log_fault_impl(v29, v30, v31, "%{public}@<%{public}@>: candidateEndSignpostTracker is bad class %s", v32, 0x20u);

                  v33 = loga;
                  goto LABEL_41;
                }
              }

              else if (v26)
              {
                workflow3 = [self workflow];
                name2 = [workflow3 name];
                ClassName = object_getClassName(v18);
                *buf = 138543618;
                v80 = name2;
                v81 = 2080;
                v82 = ClassName;
                OUTLINED_FUNCTION_78();
                _os_log_fault_impl(v61, v62, v63, "%{public}@: candidateEndSignpostTracker is bad class %s", v64, 0x16u);

                v33 = workflow3;
LABEL_41:
              }

              *__error() = v24;
            }

            v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [OUTLINED_FUNCTION_96(self v34)];
LABEL_20:
            v35 = [v19 objectForKeyedSubscript:nameCopy];

            if (v35)
            {
              goto LABEL_36;
            }

            workflow4 = [self workflow];
            [workflow4 name];

            [self eventIdentifier];
            eventIdentifier3 = [self eventIdentifier];

            v38 = __error();
            v73 = *v38;
            v39 = _wrlog(v38);
            v40 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);
            if (v5)
            {
              if (eventIdentifier3)
              {
                if (v40)
                {
                  workflow5 = [self workflow];
                  [workflow5 name];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_43() eventIdentifier];
                  v41 = logb = v39;
                  name3 = [v14 name];
                  OUTLINED_FUNCTION_28();
                  v82 = v41;
                  v83 = v43;
                  v84 = @"<signpost>";
                  v85 = v43;
                  v86 = v5;
                  v87 = 2112;
                  v88 = nameCopy;
                  v89 = 2112;
                  v90 = v44;
                  _os_log_impl(&dword_2746E5000, logb, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: Saw new individuation identifier needed for end signpost %@", buf, 0x3Eu);

                  v39 = logb;
                  goto LABEL_28;
                }

LABEL_35:

                *__error() = v73;
                null2 = [MEMORY[0x277CBEB68] null];
                [v19 setObject:null2 forKeyedSubscript:nameCopy];

LABEL_36:
                v8 = v76;
LABEL_37:

                goto LABEL_38;
              }

              if (!v40)
              {
                goto LABEL_35;
              }

              log = [self workflow];
              name4 = [log name];
              name5 = [v14 name];
              OUTLINED_FUNCTION_28();
              v82 = @"<signpost>";
              v83 = v52;
              v84 = v5;
              v85 = 2112;
              v86 = nameCopy;
              v87 = 2112;
              v88 = v53;
              v54 = v39;
              v55 = "%{public}@: %{public}@: %{public}@->%@: Saw new individuation identifier needed for end signpost %@";
              v56 = 52;
LABEL_33:
              _os_log_impl(&dword_2746E5000, v54, OS_LOG_TYPE_INFO, v55, buf, v56);

              v49 = log;
            }

            else
            {
              if (!eventIdentifier3)
              {
                if (!v40)
                {
                  goto LABEL_35;
                }

                log = [self workflow];
                name4 = [log name];
                name5 = [v14 name];
                OUTLINED_FUNCTION_28();
                v82 = @"<signpost>";
                v83 = 2112;
                v84 = v57;
                v54 = v39;
                v55 = "%{public}@: %{public}@: Saw new individuation identifier needed for end signpost %@";
                v56 = 32;
                goto LABEL_33;
              }

              if (!v40)
              {
                goto LABEL_35;
              }

              workflow5 = [self workflow];
              logc = [workflow5 name];
              eventIdentifier4 = [self eventIdentifier];
              name6 = [v14 name];
              *buf = 138544130;
              OUTLINED_FUNCTION_85();
              v83 = v47;
              v84 = @"<signpost>";
              v85 = 2112;
              v86 = v48;
              _os_log_impl(&dword_2746E5000, v39, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: Saw new individuation identifier needed for end signpost %@", buf, 0x2Au);

LABEL_28:
              v49 = workflow5;
            }

            goto LABEL_35;
          }

LABEL_38:
          ++v12;
        }

        while (v11 != v12);
        v65 = [obj countByEnumeratingWithState:v78 objects:v91 count:16];
        v11 = v65;
      }

      while (v65);
LABEL_43:

      ++v8;
      endSignpostGroups = v66;
      if (v8 >= [v66 count])
      {
LABEL_44:

        break;
      }
    }
  }
}

- (void)applySignpost:(void *)signpost toSignpostTracker:
{
  v195 = *MEMORY[0x277D85DE8];
  v7 = a2;
  signpostCopy = signpost;
  v9 = signpostCopy;
  if (self)
  {
    v184[0] = MEMORY[0x277D85DD0];
    v184[1] = 3221225472;
    v184[2] = __58__WRWorkflowEventTracker_applySignpost_toSignpostTracker___block_invoke;
    v184[3] = &unk_279EE3290;
    v10 = signpostCopy;
    v185 = v10;
    selfCopy = self;
    v11 = MEMORY[0x277C5A9A0](v184);
    v12 = objc_opt_class();
    if (OUTLINED_FUNCTION_73(v12))
    {
      beginEvent = v7;
      if ([beginEvent isSyntheticIntervalEvent])
      {
        signpost = [v10 signpost];
        individuationFieldName = [signpost individuationFieldName];

        if (individuationFieldName)
        {
          signpost2 = [v10 signpost];
          [signpost2 individuationFieldName];

          [v10 individuationIdentifier];
          [beginEvent name];

          workflow = [self workflow];
          [workflow name];

          [self eventIdentifier];
          eventIdentifier = [self eventIdentifier];

          v19 = __error();
          v20 = *v19;
          v21 = _wrlog(v19);
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_FAULT);
          if (eventIdentifier)
          {
            if (v22)
            {
              workflow2 = [self workflow];
              name = [workflow2 name];
              eventIdentifier2 = [self eventIdentifier];
              name2 = [beginEvent name];
              signpost3 = [v10 signpost];
              individuationFieldName2 = [signpost3 individuationFieldName];
              individuationIdentifier = [v10 individuationIdentifier];
              OUTLINED_FUNCTION_25();
              v190 = eventIdentifier2;
              v191 = v26;
              *v192 = name2;
              *&v192[8] = v26;
              *&v192[10] = individuationFieldName2;
              *&v192[18] = 2112;
              *&v192[20] = v27;
              OUTLINED_FUNCTION_78();
              _os_log_fault_impl(v28, v29, v30, v31, v32, 0x34u);

LABEL_71:
            }
          }

          else if (v22)
          {
            workflow2 = [self workflow];
            [workflow2 name];
            objc_claimAutoreleasedReturnValue();
            name3 = [OUTLINED_FUNCTION_84() name];
            signpost4 = [v10 signpost];
            individuationFieldName3 = [signpost4 individuationFieldName];
            individuationIdentifier2 = [v10 individuationIdentifier];
            *buf = 138544130;
            v188 = v4;
            OUTLINED_FUNCTION_10();
            *v192 = individuationFieldName3;
            *&v192[8] = 2112;
            *&v192[10] = v128;
            OUTLINED_FUNCTION_78();
            _os_log_fault_impl(v129, v130, v131, v132, v133, 0x2Au);

            goto LABEL_71;
          }

LABEL_21:
          *__error() = v20;
LABEL_22:

          goto LABEL_23;
        }

        [beginEvent name];

        workflow3 = [self workflow];
        [workflow3 name];

        [self eventIdentifier];
        eventIdentifier3 = [self eventIdentifier];

        v50 = __error();
        v20 = *v50;
        v51 = _wrlog(v50);
        v52 = OUTLINED_FUNCTION_99(v51);
        if (eventIdentifier3)
        {
          if (v52)
          {
            workflow4 = [self workflow];
            individuationFieldName = [workflow4 name];
            eventIdentifier4 = [self eventIdentifier];
            name4 = [beginEvent name];
            *buf = 138543874;
            v188 = individuationFieldName;
            OUTLINED_FUNCTION_10();
            *v192 = v56;
            OUTLINED_FUNCTION_23();
            _os_log_fault_impl(v57, v58, v59, v60, v61, 0x20u);

LABEL_90:
          }
        }

        else if (v52)
        {
          workflow4 = [self workflow];
          [workflow4 name];
          objc_claimAutoreleasedReturnValue();
          eventIdentifier4 = [OUTLINED_FUNCTION_64() name];
          OUTLINED_FUNCTION_25();
          v190 = v157;
          OUTLINED_FUNCTION_23();
          _os_log_fault_impl(v158, v159, v160, v161, v162, 0x16u);
          goto LABEL_90;
        }

        goto LABEL_21;
      }

      v62 = OUTLINED_FUNCTION_53();
      v63(v62, beginEvent);
      v64 = [WRTimestampAndThread alloc];
      processID = [OUTLINED_FUNCTION_67() processID];
      threadID = [beginEvent threadID];
      [beginEvent endNanoseconds];
      endDate = [OUTLINED_FUNCTION_84() endDate];
      v68 = [(WRTimestampAndThread *)name5 initWithPID:processID threadID:threadID machContTimeNs:v4 date:endDate];

      if ([beginEvent eventType])
      {
        if (!v10 || (v70 = OUTLINED_FUNCTION_94(v10, v69)) == 0)
        {
          v72 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if (v10)
          {
            v73 = v10;
            v74 = v72;
            v75 = 48;
            goto LABEL_45;
          }

LABEL_47:
          [(WRTimestampAndThread *)v68 insertIntoSortedArray:v72];

          goto LABEL_22;
        }
      }

      else if (!v10 || (v70 = OUTLINED_FUNCTION_94(v10, v69)) == 0)
      {
        v72 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (v10)
        {
          v73 = v10;
          v74 = v72;
          v75 = 56;
LABEL_45:
          objc_setProperty_atomic(v73, v71, v74, v75);
          goto LABEL_47;
        }

        goto LABEL_47;
      }

      v72 = v70;
      goto LABEL_47;
    }

    v33 = objc_opt_class();
    if ((OUTLINED_FUNCTION_73(v33) & 1) == 0)
    {
      workflow5 = [self workflow];
      [workflow5 name];

      [self eventIdentifier];
      eventIdentifier5 = [self eventIdentifier];

      v36 = __error();
      v37 = *v36;
      v38 = _wrlog(v36);
      v39 = OUTLINED_FUNCTION_99(v38);
      if (eventIdentifier5)
      {
        if (v39)
        {
          workflow6 = [self workflow];
          name5 = [workflow6 name];
          eventIdentifier6 = [self eventIdentifier];
          object_getClassName(v7);
          OUTLINED_FUNCTION_24();
          v190 = eventIdentifier6;
          v191 = 2082;
          *v192 = v42;
          OUTLINED_FUNCTION_23();
          _os_log_fault_impl(v43, v44, v45, v46, v47, 0x20u);

LABEL_49:
        }
      }

      else if (v39)
      {
        workflow6 = [self workflow];
        [workflow6 name];
        objc_claimAutoreleasedReturnValue();
        v87 = OUTLINED_FUNCTION_68();
        ClassName = object_getClassName(v87);
        *buf = 138543618;
        v188 = name5;
        v189 = 2082;
        v190 = ClassName;
        OUTLINED_FUNCTION_23();
        _os_log_fault_impl(v89, v90, v91, v92, v93, 0x16u);
        goto LABEL_49;
      }

      *__error() = v37;
LABEL_23:

      goto LABEL_24;
    }

    beginEvent = [v7 beginEvent];
    endEvent = [v7 endEvent];
    v78 = endEvent;
    beginDate = 0;
    if (!v10)
    {
      goto LABEL_38;
    }

LABEL_31:
    for (i = OUTLINED_FUNCTION_71(endEvent, v77); ; i = 0)
    {
      v81 = [i count];
      if (beginDate >= v81)
      {
        v84 = 0;
        goto LABEL_53;
      }

      v83 = v10 ? OUTLINED_FUNCTION_71(v81, v82) : 0;
      v84 = [v83 objectAtIndexedSubscript:beginDate];
      [v84 machContTimeNs];
      if (name5 == [OUTLINED_FUNCTION_67() startNanoseconds])
      {
        [v84 threadID];
        threadID2 = [OUTLINED_FUNCTION_67() threadID];
        if (name5 == threadID2)
        {
          break;
        }
      }

      beginDate = (beginDate + 1);
      if (v10)
      {
        goto LABEL_31;
      }

LABEL_38:
      ;
    }

    if (v10)
    {
      v94 = OUTLINED_FUNCTION_71(threadID2, v86);
    }

    else
    {
      v94 = 0;
    }

    [v94 removeObjectAtIndex:beginDate];
LABEL_53:
    if (([beginEvent isSyntheticIntervalEvent] & 1) == 0 && !v84)
    {
      v95 = OUTLINED_FUNCTION_53();
      v96(v95, beginEvent);
    }

    v97 = OUTLINED_FUNCTION_53();
    v98(v97, v78);
    processID2 = [beginEvent processID];
    threadID3 = [beginEvent threadID];
    processID3 = [v78 processID];
    threadID4 = [v78 threadID];
    v178 = v78;
    if (([beginEvent overridesBeginTime] & 1) == 0 && !objc_msgSend(v78, "overridesBeginTime"))
    {
      if (([beginEvent overridesEndTime] & 1) != 0 || objc_msgSend(v78, "overridesEndTime"))
      {
        threadID4 = 0;
        processID3 = -1;
      }

      goto LABEL_81;
    }

    if (([beginEvent overridesEndTime] & 1) == 0 && !objc_msgSend(v78, "overridesEndTime"))
    {
      threadID3 = 0;
      processID2 = -1;
LABEL_81:
      if (v84)
      {
        v146 = v84;
      }

      else
      {
        v147 = [WRTimestampAndThread alloc];
        startNanoseconds = [OUTLINED_FUNCTION_67() startNanoseconds];
        beginDate = [beginEvent beginDate];
        v146 = [(WRTimestampAndThread *)name5 initWithPID:processID2 threadID:threadID3 machContTimeNs:startNanoseconds date:beginDate];
      }

      v149 = [WRTimestampAndThread alloc];
      [OUTLINED_FUNCTION_68() endNanoseconds];
      endDate2 = [OUTLINED_FUNCTION_27() endDate];
      v151 = [(WRTimestampAndThread *)name5 initWithPID:processID3 threadID:threadID4 machContTimeNs:beginDate date:endDate2];

      v152 = [WRIntervalAndThreads alloc];
      v154 = [WRIntervalAndThreads initWithStart:end:];
      if (!v10 || (v155 = objc_getProperty(v10, v153, 40, 1)) == 0)
      {
        v155 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (v10)
        {
          objc_setProperty_atomic(v10, v156, v155, 40);
        }
      }

      [(WRIntervalAndThreads *)v154 insertIntoSortedArray:v155];

      goto LABEL_22;
    }

    signpost5 = [v10 signpost];
    individuationFieldName4 = [signpost5 individuationFieldName];

    if (!individuationFieldName4)
    {
      [v78 name];

      workflow7 = [self workflow];
      [workflow7 name];

      [self eventIdentifier];
      name5 = [self eventIdentifier];

      v102 = __error();
      v103 = *v102;
      beginDate = _wrlog(v102);
      v104 = os_log_type_enabled(beginDate, OS_LOG_TYPE_INFO);
      if (name5)
      {
        if (v104)
        {
          workflow8 = [self workflow];
          [workflow8 name];
          v134 = loga = v103;
          name5 = [self eventIdentifier];
          name6 = [v178 name];
          *buf = 138544898;
          v188 = v134;
          v189 = 2114;
          v190 = name5;
          v191 = 2114;
          *v192 = name6;
          *&v192[8] = 1024;
          *&v192[10] = processID2;
          *&v192[14] = 2048;
          *&v192[16] = threadID3;
          *&v192[24] = 1024;
          *&v192[26] = processID3;
          *&v192[30] = 2048;
          *&v192[32] = threadID4;
          OUTLINED_FUNCTION_54();
          _os_log_impl(v136, v137, v138, v139, v140, 0x40u);

          v103 = loga;
        }
      }

      else if (v104)
      {
        workflow9 = [self workflow];
        name5 = [workflow9 name];
        name7 = [v178 name];
        OUTLINED_FUNCTION_24();
        v190 = v106;
        v191 = 1024;
        *v192 = processID2;
        *&v192[4] = 2048;
        *&v192[6] = threadID3;
        *&v192[14] = 1024;
        *&v192[16] = processID3;
        *&v192[20] = 2048;
        *&v192[22] = threadID4;
        OUTLINED_FUNCTION_54();
        _os_log_impl(v107, v108, v109, v110, v111, 0x36u);
      }

      *__error() = v103;
      goto LABEL_81;
    }

    signpost6 = [v10 signpost];
    [signpost6 individuationFieldName];

    [v10 individuationIdentifier];
    [v78 name];

    workflow10 = [self workflow];
    [workflow10 name];

    [self eventIdentifier];
    name5 = [self eventIdentifier];

    v114 = __error();
    v172 = *v114;
    beginDate = _wrlog(v114);
    v115 = os_log_type_enabled(beginDate, OS_LOG_TYPE_INFO);
    if (name5)
    {
      if (v115)
      {
        workflow11 = [self workflow];
        name8 = [workflow11 name];
        eventIdentifier7 = [self eventIdentifier];
        name5 = [v78 name];
        signpost7 = [v10 signpost];
        [signpost7 individuationFieldName];
        v142 = logb = beginDate;
        [v10 individuationIdentifier];
        objc_claimAutoreleasedReturnValue();
        *buf = 138545410;
        v188 = name8;
        OUTLINED_FUNCTION_10();
        *v192 = name5;
        *&v192[8] = v143;
        *&v192[10] = v142;
        *&v192[18] = 2112;
        *&v192[20] = v144;
        v145 = v144;
        *&v192[28] = 1024;
        *&v192[30] = processID2;
        *&v192[34] = 2048;
        *&v192[36] = threadID3;
        *&v192[44] = 1024;
        *&v192[46] = processID3;
        v193 = 2048;
        v194 = threadID4;
        _os_log_impl(&dword_2746E5000, logb, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: Both begin and end times are overridden - assuming they occurred on [%d] thread 0x%#llx and [%d] thread 0x%#llx", buf, 0x54u);

        beginDate = logb;
        v124 = workflow11;
        goto LABEL_79;
      }
    }

    else if (v115)
    {
      log = [self workflow];
      name9 = [log name];
      name10 = [v78 name];
      signpost8 = [v10 signpost];
      individuationFieldName5 = [signpost8 individuationFieldName];
      [v10 individuationIdentifier];
      objc_claimAutoreleasedReturnValue();
      *buf = 138545154;
      v188 = name9;
      OUTLINED_FUNCTION_10();
      *v192 = individuationFieldName5;
      *&v192[8] = 2112;
      *&v192[10] = v118;
      name5 = v118;
      *&v192[18] = 1024;
      *&v192[20] = processID2;
      *&v192[24] = 2048;
      *&v192[26] = threadID3;
      *&v192[34] = 1024;
      *&v192[36] = processID3;
      *&v192[40] = 2048;
      *&v192[42] = threadID4;
      OUTLINED_FUNCTION_54();
      _os_log_impl(v119, v120, v121, v122, v123, 0x4Au);

      v124 = log;
LABEL_79:
    }

    *__error() = v172;
    goto LABEL_81;
  }

LABEL_24:
}

- (void)newConcurrentEventWithIdentifier:(void *)identifier
{
  v6 = a2;
  if (identifier)
  {
    Property = objc_getProperty(identifier, v5, 120, 1);
    v8 = [WRWorkflowEventTracker alloc];
    [OUTLINED_FUNCTION_43() workflow];
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_13();
    if (Property)
    {
      v11 = objc_getProperty(v9, v10, 120, 1);
      v12 = OUTLINED_FUNCTION_66();
      v14 = [v2 initForLiveStreamingWithWorkflow:v3 timeoutQueue:Property eventCompletionCallback:{objc_getProperty(v12, v13, 144, 1)}];
    }

    else
    {
      v14 = [v2 initForReadbackWithWorkflow:v3 eventCompletionCallback:{objc_getProperty(v9, v10, 144, 1)}];
    }

    if (v14)
    {
      objc_setProperty_atomic(v14, v15, v6, 24);
    }

    if (objc_getProperty(identifier, v15, 112, 1))
    {
      [objc_getProperty(identifier v16];
    }

    else
    {
      [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v14, 0}];
      v17 = OUTLINED_FUNCTION_13();
      objc_setProperty_atomic(v17, v18, v3, 112);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)fillInNonDiagnosticSignpost:(void *)signpost
{
  v7 = a2;
  if (signpost)
  {
    workflow = [signpost workflow];
    v9 = [(WRWorkflow *)workflow wrsignpostForSignpostObject:v7];

    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = objc_opt_class();
    if (OUTLINED_FUNCTION_73(v10) & 1) != 0 && ([v7 isSyntheticIntervalEvent])
    {
      goto LABEL_5;
    }

    [v9 individuationFieldName];
    objc_claimAutoreleasedReturnValue();
    v11 = OUTLINED_FUNCTION_13();
    [(WRWorkflowEventTracker *)v11 individuationIdentifierForSignpostObject:v7 individuationFieldName:workflow];
    objc_claimAutoreleasedReturnValue();
    v12 = OUTLINED_FUNCTION_66();
    [(WRWorkflowEventTracker *)v12 trackerForWRSignpost:v9 individuationIdentifier:v2];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_68() startNanoseconds];
    [OUTLINED_FUNCTION_34() endNanoseconds];
    [OUTLINED_FUNCTION_27() name];

    workflow2 = [signpost workflow];
    [workflow2 name];

    [signpost eventIdentifier];
    eventIdentifier = [signpost eventIdentifier];

    v15 = __error();
    v58 = *v15;
    v16 = _wrlog(v15);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (eventStart == name2)
    {
      if (workflow)
      {
        if (!eventIdentifier)
        {
          if (v17)
          {
            workflow3 = [signpost workflow];
            [workflow3 name];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_27() name];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_45() startNanoseconds];
            eventStart = [OUTLINED_FUNCTION_39() eventStart];
            OUTLINED_FUNCTION_16([eventStart machContTimeNs]);
            OUTLINED_FUNCTION_98();
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_42();
            OUTLINED_FUNCTION_6();
            v23 = 62;
            goto LABEL_19;
          }

LABEL_36:

          *__error() = v58;
          [(WRWorkflowEventTracker *)signpost applySignpost:v7 toSignpostTracker:v3];

LABEL_5:
          goto LABEL_6;
        }

        if (!v17)
        {
          goto LABEL_36;
        }

        workflow3 = [signpost workflow];
        name = [workflow3 name];
        [signpost eventIdentifier];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_34() name];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_27() startNanoseconds];
        eventStart2 = [OUTLINED_FUNCTION_39() eventStart];
        OUTLINED_FUNCTION_16([eventStart2 machContTimeNs]);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_41();
        OUTLINED_FUNCTION_6();
        v36 = 72;
      }

      else
      {
        if (!eventIdentifier)
        {
          if (v17)
          {
            workflow3 = [signpost workflow];
            [workflow3 name];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_27() name];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_45() startNanoseconds];
            eventStart = [OUTLINED_FUNCTION_39() eventStart];
            OUTLINED_FUNCTION_16([eventStart machContTimeNs]);
            OUTLINED_FUNCTION_98();
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_6();
            v23 = 42;
LABEL_19:
            _os_log_impl(v18, v19, v20, v21, v22, v23);
LABEL_33:

            goto LABEL_34;
          }

          goto LABEL_36;
        }

        if (!v17)
        {
          goto LABEL_36;
        }

        workflow3 = [signpost workflow];
        name = [workflow3 name];
        [signpost eventIdentifier];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_34() name];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_27() startNanoseconds];
        eventStart2 = [OUTLINED_FUNCTION_39() eventStart];
        OUTLINED_FUNCTION_16([eventStart2 machContTimeNs]);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_6();
        v36 = 52;
      }

      _os_log_impl(v31, v32, v33, v34, v35, v36);
    }

    else
    {
      if (workflow)
      {
        if (eventIdentifier)
        {
          if (v17)
          {
            workflow3 = [signpost workflow];
            name2 = [workflow3 name];
            [signpost eventIdentifier];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_45() name];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_34() startNanoseconds];
            eventStart3 = [OUTLINED_FUNCTION_39() eventStart];
            OUTLINED_FUNCTION_16([eventStart3 machContTimeNs]);
            OUTLINED_FUNCTION_97();
            eventStart4 = [OUTLINED_FUNCTION_82() eventStart];
            [eventStart4 machContTimeNs];
            OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_95();
            OUTLINED_FUNCTION_19();
            [v7 endMachContinuousTime];
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_41();
            OUTLINED_FUNCTION_6();
            _os_log_impl(v43, v44, v45, v46, v47, 0x66u);

            goto LABEL_33;
          }

          goto LABEL_36;
        }

        if (!v17)
        {
          goto LABEL_36;
        }

        workflow3 = [signpost workflow];
        [workflow3 name];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_34() name];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_27() startNanoseconds];
        eventStart5 = [OUTLINED_FUNCTION_39() eventStart];
        OUTLINED_FUNCTION_16([eventStart5 machContTimeNs]);
        OUTLINED_FUNCTION_97();
        eventStart6 = [OUTLINED_FUNCTION_82() eventStart];
        [eventStart6 machContTimeNs];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_19();
        [OUTLINED_FUNCTION_45() endMachContinuousTime];
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_6();
        v29 = 92;
      }

      else
      {
        if (eventIdentifier)
        {
          if (v17)
          {
            workflow4 = [signpost workflow];
            name3 = [workflow4 name];
            [signpost eventIdentifier];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_45() name];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_27() startNanoseconds];
            eventStart7 = [OUTLINED_FUNCTION_39() eventStart];
            OUTLINED_FUNCTION_16([eventStart7 machContTimeNs]);
            OUTLINED_FUNCTION_97();
            eventStart8 = [OUTLINED_FUNCTION_82() eventStart];
            [eventStart8 machContTimeNs];
            OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_95();
            OUTLINED_FUNCTION_19();
            [OUTLINED_FUNCTION_34() endMachContinuousTime];
            OUTLINED_FUNCTION_36();
            OUTLINED_FUNCTION_83();
            OUTLINED_FUNCTION_6();
            _os_log_impl(v37, v38, v39, v40, v41, 0x52u);

            v42 = workflow4;
LABEL_35:

            goto LABEL_36;
          }

          goto LABEL_36;
        }

        if (!v17)
        {
          goto LABEL_36;
        }

        workflow3 = [signpost workflow];
        [workflow3 name];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_34() name];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_27() startNanoseconds];
        eventStart5 = [OUTLINED_FUNCTION_39() eventStart];
        OUTLINED_FUNCTION_16([eventStart5 machContTimeNs]);
        OUTLINED_FUNCTION_97();
        eventStart6 = [OUTLINED_FUNCTION_82() eventStart];
        [eventStart6 machContTimeNs];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_19();
        [OUTLINED_FUNCTION_45() endMachContinuousTime];
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_6();
        v29 = 72;
      }

      _os_log_impl(v24, v25, v26, v27, v28, v29);
    }

LABEL_34:
    v42 = workflow3;
    goto LABEL_35;
  }

LABEL_6:
}

- (NSMutableDictionary)environment
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (self)
  {
    v5 = OUTLINED_FUNCTION_69(self, v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        environment = [v11 environment];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __37__WRWorkflowEventTracker_environment__block_invoke;
        v16[3] = &unk_279EE3308;
        v16[4] = v11;
        v17 = v4;
        [environment enumerateKeysAndObjectsUsingBlock:v16];
      }

      v8 = OUTLINED_FUNCTION_74(v13, v14, &v18, v22);
    }

    while (v8);
  }

  return v4;
}

- (id)diagnosticsExceedingThresholds
{
  v35 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    workflow = [self workflow];
    workflowDiagnostics = [workflow workflowDiagnostics];

    v6 = OUTLINED_FUNCTION_75(v4, v5, &v30, v34);
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(workflowDiagnostics);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          if ([v10 hasTriggerThresholdDurationSingle])
          {
            eventEnd = [self eventEnd];
            if (eventEnd)
            {
              v12 = eventEnd;
              eventStart = [self eventStart];
              if (eventStart)
              {
                v14 = eventStart;
                error = [self error];

                if (!error)
                {
                  if ([v10 reportOmittingNetworkBoundIntervals])
                  {
                    objc_msgSend_stats(self);
                    v16 = 0;
                  }

                  else
                  {
                    eventEnd2 = [self eventEnd];
                    machContTimeNs = [eventEnd2 machContTimeNs];
                    eventStart2 = [self eventStart];
                    v16 = machContTimeNs - [eventStart2 machContTimeNs];
                  }

                  [v10 triggerThresholdDurationSingle];
                  if (v20 <= v16 / 1000000000.0)
                  {
                    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    [v27 addObject:v10];
                    goto LABEL_27;
                  }
                }
              }

              else
              {
              }
            }
          }

          triggerEventTimeout = [v10 triggerEventTimeout];
          if (triggerEventTimeout)
          {
            error2 = [self error];
            v24 = error2;
            if (error2)
            {
              domain = [error2 domain];
              if ([domain isEqualToString:@"WorkflowResponsivenessError"])
              {
                code = [v24 code];

                if (code == 4)
                {
                  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  [v27 addObject:v10];

                  goto LABEL_27;
                }
              }

              else
              {
              }
            }
          }
        }

        v7 = OUTLINED_FUNCTION_75(triggerEventTimeout, v22, &v30, v34);
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0;
LABEL_27:

    v28 = [v27 copy];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)encodedDict
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  workflow = [(WRWorkflowEventTracker *)self workflow];
  encodedDict = [workflow encodedDict];
  v6 = [OUTLINED_FUNCTION_40() initWithObjectsAndKeys:{@"wt_workflow", 0}];

  startSignpost = [(WRWorkflowEventTracker *)self startSignpost];
  name = [startSignpost name];
  [OUTLINED_FUNCTION_40() setObject:? forKeyedSubscript:?];

  endSignpost = [(WRWorkflowEventTracker *)self endSignpost];
  name2 = [endSignpost name];
  [OUTLINED_FUNCTION_40() setObject:? forKeyedSubscript:?];

  error = [(WRWorkflowEventTracker *)self error];

  if (error)
  {
    error2 = [(WRWorkflowEventTracker *)self error];
    domain = [error2 domain];
    v14 = [domain isEqualToString:@"WorkflowResponsivenessError"];

    if (v14)
    {
LABEL_10:
      error3 = [(WRWorkflowEventTracker *)self error];
      [error3 code];
      v28 = [OUTLINED_FUNCTION_88() numberWithInteger:?];
      [OUTLINED_FUNCTION_48() setObject:? forKeyedSubscript:?];

      error4 = [(WRWorkflowEventTracker *)self error];
      userInfo = [error4 userInfo];
      v31 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA068]];
      [v6 setObject:v31 forKeyedSubscript:@"wt_error_description"];

      goto LABEL_11;
    }

    workflow2 = [(WRWorkflowEventTracker *)self workflow];
    [workflow2 name];

    [(WRWorkflowEventTracker *)self eventIdentifier];
    eventIdentifier = [(WRWorkflowEventTracker *)self eventIdentifier];

    v17 = __error();
    v18 = *v17;
    v19 = _wrlog(v17);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
    if (eventIdentifier)
    {
      if (v20)
      {
        workflow3 = [(WRWorkflowEventTracker *)self workflow];
        [workflow3 name];
        objc_claimAutoreleasedReturnValue();
        eventIdentifier2 = [OUTLINED_FUNCTION_66() eventIdentifier];
        error5 = [(WRWorkflowEventTracker *)self error];
        v55 = 138543874;
        v56 = v14;
        OUTLINED_FUNCTION_35();
        v58 = eventIdentifier2;
        v59 = 2112;
        v60 = v25;
        OUTLINED_FUNCTION_56(&dword_2746E5000, v19, v26, "%{public}@<%{public}@>: Have error with bad domain %@", &v55);

        goto LABEL_8;
      }
    }

    else if (v20)
    {
      workflow3 = [(WRWorkflowEventTracker *)self workflow];
      [workflow3 name];
      objc_claimAutoreleasedReturnValue();
      eventIdentifier2 = [OUTLINED_FUNCTION_66() error];
      v55 = 138543618;
      v56 = v14;
      v57 = 2112;
      v58 = eventIdentifier2;
      OUTLINED_FUNCTION_44(&dword_2746E5000, v19, v23, "%{public}@: Have error with bad domain %@", &v55);
LABEL_8:
    }

    *__error() = v18;
    goto LABEL_10;
  }

LABEL_11:
  eventStart = [(WRWorkflowEventTracker *)self eventStart];
  encodedDict2 = [(WRTimestampAndThread *)eventStart encodedDict];
  [OUTLINED_FUNCTION_40() setObject:? forKeyedSubscript:?];

  eventEnd = [(WRWorkflowEventTracker *)self eventEnd];
  encodedDict3 = [(WRTimestampAndThread *)eventEnd encodedDict];
  [OUTLINED_FUNCTION_40() setObject:? forKeyedSubscript:?];

  eventIdentifier3 = [(WRWorkflowEventTracker *)self eventIdentifier];
  [OUTLINED_FUNCTION_48() setObject:? forKeyedSubscript:?];

  v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(v53, 0, sizeof(v53));
  allSignpostTrackers = [(WRWorkflowEventTracker *)self allSignpostTrackers];
  v39 = [allSignpostTrackers countByEnumeratingWithState:v53 objects:v54 count:16];
  if (v39)
  {
    v40 = v39;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        OUTLINED_FUNCTION_91();
        if (!v42)
        {
          objc_enumerationMutation(allSignpostTrackers);
        }

        v43 = *(*(&v53[0] + 1) + 8 * i);
        signpost = [v43 signpost];
        name3 = [signpost name];

        v46 = [v37 objectForKeyedSubscript:name3];
        if (!v46)
        {
          v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v37 setObject:v46 forKeyedSubscript:name3];
        }

        encodedDict4 = [(WRSignpostTracker *)v43 encodedDict];
        [v46 addObject:encodedDict4];
      }

      v40 = OUTLINED_FUNCTION_74(v48, v49, v53, v54);
    }

    while (v40);
  }

  v50 = [v37 copy];
  [OUTLINED_FUNCTION_49() setObject:? forKeyedSubscript:?];

  v51 = [v6 copy];

  return v51;
}

- (void)initWithEncodedData:(void *)data error:
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:0 error:0];
  if (v11)
  {
    selfCopy = [OUTLINED_FUNCTION_49() initWithEncodedDict:? error:?];
    v17 = 0;
    if (selfCopy)
    {
      v18 = selfCopy;
    }

    else if (data)
    {
      *data = WRMakeErrorWithUnderlyingError(6, v17, @"Encoded string does not contain a workflow event", v12, v13, v14, v15, v16, v21);
    }

    v19 = selfCopy;
  }

  else if (data)
  {
    WRMakeError(6, @"String is not an encoded dictionary", v5, v6, v7, v8, v9, v10, v21);
    *data = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (uint64_t)gatherDiagnosticsWithTailspin:(int)tailspin tailspinIncludeOSLogs:
{
  selfCopy = self;
  v171 = *MEMORY[0x277D85DE8];
  if (self)
  {
    workflow = [self workflow];
    [workflow name];

    [selfCopy eventIdentifier];
    eventIdentifier = [selfCopy eventIdentifier];

    v6 = __error();
    v7 = *v6;
    v8 = _wrlog(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (eventIdentifier)
    {
      if (!v9)
      {
        goto LABEL_8;
      }

      workflow2 = [selfCopy workflow];
      name = [workflow2 name];
      eventIdentifier2 = [selfCopy eventIdentifier];
      *buf = 138543618;
      *&buf[4] = name;
      OUTLINED_FUNCTION_35();
      v168 = v13;
      _os_log_impl(&dword_2746E5000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: Generating diagnostics", buf, 0x16u);
    }

    else
    {
      if (!v9)
      {
        goto LABEL_8;
      }

      workflow2 = [selfCopy workflow];
      name = [workflow2 name];
      *buf = 138543362;
      *&buf[4] = name;
      _os_log_impl(&dword_2746E5000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Generating diagnostics", buf, 0xCu);
    }

LABEL_8:
    *__error() = v7;
    +[WRWorkflowEventTracker makeTailspinDirectory];
    v14 = MEMORY[0x277CCACA8];
    workflow3 = [selfCopy workflow];
    name2 = [workflow3 name];
    eventStart = [selfCopy eventStart];
    date = [eventStart date];
    date2 = date;
    if (!date)
    {
      date2 = [MEMORY[0x277CBEAA8] date];
    }

    v20 = _MergedGlobals;
    v21 = date2;
    if (v20 != -1)
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global_538);
    }

    v22 = [qword_28159D110 stringFromDate:v21];

    v23 = [v14 stringWithFormat:@"%@-%@.%@", name2, v22, @"tailspin"];

    if (!date)
    {
    }

    v24 = +[WRWorkflowEventTracker tailspinDirectory];
    v162 = v23;
    v25 = [v24 URLByAppendingPathComponent:v23];

    v164 = 0;
    v26 = [selfCopy encodedStringWithError:&v164];
    v27 = v164;
    if (v26)
    {
LABEL_20:
      v48 = [v25 URLByAppendingPathExtension:@"temp"];
      v49 = v48;
      if (v48)
      {
        fileSystemRepresentation = [v48 fileSystemRepresentation];
        if (fileSystemRepresentation)
        {
          v51 = fileSystemRepresentation;
          v52 = open(fileSystemRepresentation, 3586, 420);
          if (v52 != -1)
          {
            v53 = v52;
            v158 = v27;
            if (unlink(v51))
            {
              workflow4 = [selfCopy workflow];
              [workflow4 name];

              [selfCopy eventIdentifier];
              eventIdentifier3 = [selfCopy eventIdentifier];

              v56 = __error();
              v57 = *v56;
              v58 = _wrlog(v56);
              v59 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
              if (eventIdentifier3)
              {
                if (v59)
                {
                  workflow5 = [selfCopy workflow];
                  name3 = [workflow5 name];
                  eventIdentifier4 = [selfCopy eventIdentifier];
                  v63 = __error();
                  OUTLINED_FUNCTION_15(*v63, 5.8384e-34);
                  OUTLINED_FUNCTION_8();
                  _os_log_error_impl(v64, v65, v66, v67, v68, 0x26u);
                }
              }

              else if (v59)
              {
                workflow6 = [selfCopy workflow];
                name4 = [workflow6 name];
                v144 = *__error();
                *buf = 138543874;
                *&buf[4] = name4;
                OUTLINED_FUNCTION_47(v144);
                OUTLINED_FUNCTION_8();
                _os_log_error_impl(v145, v146, v147, v148, v149, 0x1Cu);
              }

              *__error() = v57;
              close(v53);
              selfCopy = 0;
            }

            else
            {
              *buf = 0;
              times = mach_get_times();
              v120 = *MEMORY[0x277D82D28];
              v165[0] = *MEMORY[0x277D82CC8];
              v165[1] = v120;
              v166[0] = MEMORY[0x277CBEC38];
              v166[1] = MEMORY[0x277CBEC28];
              v165[2] = *MEMORY[0x277D82D18];
              v122 = [MEMORY[0x277CCABB0] numberWithInt:{WRIsAppleInternal(times, v121) ^ 1}];
              v165[3] = *MEMORY[0x277D82D08];
              v166[2] = v122;
              v166[3] = v26;
              v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v166 forKeys:v165 count:4];
              v124 = [v123 mutableCopy];

              if (tailspin)
              {
                [v124 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D82CC0]];
              }

              dispatch_get_global_queue(0, 0);
              objc_claimAutoreleasedReturnValue();
              workflow7 = [OUTLINED_FUNCTION_64() workflow];
              name5 = [workflow7 name];
              v127 = WRCreateOSTransaction("Gathering tailspin for workflow %s", [name5 UTF8String]);

              v163 = v25;
              v128 = v127;
              tailspin_dump_output_with_options();

              selfCopy = 1;
            }

            v23 = v162;
            v27 = v158;
            goto LABEL_52;
          }

          workflow8 = [selfCopy workflow];
          [workflow8 name];

          [selfCopy eventIdentifier];
          eventIdentifier5 = [selfCopy eventIdentifier];

          v97 = __error();
          v72 = *v97;
          v73 = _wrlog(v97);
          v98 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);
          if (eventIdentifier5)
          {
            if (v98)
            {
              workflow9 = [selfCopy workflow];
              [workflow9 name];
              v100 = v160 = v27;
              eventIdentifier6 = [selfCopy eventIdentifier];
              v102 = __error();
              OUTLINED_FUNCTION_15(*v102, 5.8384e-34);
              OUTLINED_FUNCTION_8();
              _os_log_error_impl(v103, v104, v105, v106, v107, 0x26u);

              v27 = v160;
            }
          }

          else if (v98)
          {
            workflow10 = [selfCopy workflow];
            name6 = [workflow10 name];
            v152 = *__error();
            *buf = 138543874;
            *&buf[4] = name6;
            OUTLINED_FUNCTION_47(v152);
            OUTLINED_FUNCTION_8();
            _os_log_error_impl(v153, v154, v155, v156, v157, 0x1Cu);
          }

LABEL_41:

          selfCopy = 0;
          *__error() = v72;
LABEL_52:

          return selfCopy;
        }

        workflow11 = [selfCopy workflow];
        [workflow11 name];

        [selfCopy eventIdentifier];
        eventIdentifier7 = [selfCopy eventIdentifier];

        v88 = __error();
        v72 = *v88;
        v73 = _wrlog(v88);
        v89 = os_log_type_enabled(v73, OS_LOG_TYPE_FAULT);
        if (eventIdentifier7)
        {
          if (!v89)
          {
            goto LABEL_41;
          }

          workflow12 = [selfCopy workflow];
          [workflow12 name];
          objc_claimAutoreleasedReturnValue();
          selfCopy = [OUTLINED_FUNCTION_84() eventIdentifier];
          OUTLINED_FUNCTION_51(5.8383e-34);
          *(v90 + 4) = v22;
          OUTLINED_FUNCTION_35();
          *(v92 + 14) = v91;
          v169 = v93;
          v170 = v49;
          OUTLINED_FUNCTION_56(&dword_2746E5000, v73, v94, "%{public}@<%{public}@>: Unable to get fileSystemRepresentation for %{public}@", buf);
LABEL_33:

          goto LABEL_41;
        }

        if (!v89)
        {
          goto LABEL_41;
        }

        workflow13 = [selfCopy workflow];
        name7 = [workflow13 name];
        OUTLINED_FUNCTION_51(5.8382e-34);
        *(v139 + 4) = v138;
        OUTLINED_FUNCTION_35();
        *(v140 + 14) = v49;
        OUTLINED_FUNCTION_44(&dword_2746E5000, v73, v141, "%{public}@: Unable to get fileSystemRepresentation for %{public}@", buf);
      }

      else
      {
        workflow14 = [selfCopy workflow];
        [workflow14 name];

        [selfCopy eventIdentifier];
        eventIdentifier8 = [selfCopy eventIdentifier];

        v71 = __error();
        v72 = *v71;
        v73 = _wrlog(v71);
        v74 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);
        if (eventIdentifier8)
        {
          if (!v74)
          {
            goto LABEL_41;
          }

          workflow12 = [selfCopy workflow];
          [workflow12 name];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_84() eventIdentifier];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_66() path];
          v76 = v159 = v27;
          OUTLINED_FUNCTION_51(5.8383e-34);
          *(v77 + 4) = v22;
          OUTLINED_FUNCTION_35();
          *(v78 + 14) = selfCopy;
          v169 = v79;
          v170 = v80;
          OUTLINED_FUNCTION_8();
          _os_log_error_impl(v81, v82, v83, v84, v85, 0x20u);

          v27 = v159;
          goto LABEL_33;
        }

        if (!v74)
        {
          goto LABEL_41;
        }

        workflow13 = [selfCopy workflow];
        name7 = [workflow13 name];
        path = [v25 path];
        OUTLINED_FUNCTION_51(5.8382e-34);
        *(v111 + 4) = name7;
        OUTLINED_FUNCTION_35();
        *(v113 + 14) = v112;
        OUTLINED_FUNCTION_8();
        _os_log_error_impl(v114, v115, v116, v117, v118, 0x16u);
      }

      goto LABEL_41;
    }

    workflow15 = [selfCopy workflow];
    [workflow15 name];

    [selfCopy eventIdentifier];
    eventIdentifier9 = [selfCopy eventIdentifier];

    v30 = __error();
    v31 = *v30;
    v32 = _wrlog(v30);
    v33 = OUTLINED_FUNCTION_99(v32);
    if (eventIdentifier9)
    {
      if (v33)
      {
        workflow16 = [selfCopy workflow];
        [workflow16 name];
        objc_claimAutoreleasedReturnValue();
        eventIdentifier10 = [OUTLINED_FUNCTION_64() eventIdentifier];
        OUTLINED_FUNCTION_51(5.8383e-34);
        *(v36 + 4) = date2;
        OUTLINED_FUNCTION_35();
        *(v38 + 14) = v37;
        v169 = v39;
        v170 = v27;
        OUTLINED_FUNCTION_37();
        _os_log_fault_impl(v40, v41, v42, v43, v44, 0x20u);

LABEL_55:
      }
    }

    else if (v33)
    {
      workflow16 = [selfCopy workflow];
      date2 = [workflow16 name];
      OUTLINED_FUNCTION_51(5.8382e-34);
      *(v131 + 4) = v130;
      OUTLINED_FUNCTION_35();
      *(v132 + 14) = v27;
      OUTLINED_FUNCTION_37();
      _os_log_fault_impl(v133, v134, v135, v136, v137, 0x16u);
      goto LABEL_55;
    }

    *__error() = v31;
    v45 = objc_alloc(MEMORY[0x277CCACA8]);
    workflow17 = [selfCopy workflow];
    name8 = [workflow17 name];
    v26 = [v45 initWithFormat:@"Workflow responsiveness delay detected in %@", name8];

    goto LABEL_20;
  }

  return selfCopy;
}

- (void)submitCAEventName:(void *)name dict:(void *)dict forSignpost:
{
  v8 = a2;
  nameCopy = name;
  dictCopy = dict;
  if (self)
  {
    workflow = [self workflow];
    [workflow name];

    [self eventIdentifier];
    eventIdentifier = [self eventIdentifier];

    v13 = __error();
    v14 = *v13;
    v15 = _wrlog(v13);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (dictCopy)
    {
      if (eventIdentifier)
      {
        if (v16)
        {
          workflow2 = [self workflow];
          [workflow2 name];
          objc_claimAutoreleasedReturnValue();
          eventIdentifier2 = [OUTLINED_FUNCTION_64() eventIdentifier];
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_26();
          v24 = 52;
LABEL_9:
          _os_log_debug_impl(v19, v20, v21, v22, v23, v24);

          goto LABEL_13;
        }

        goto LABEL_13;
      }

      if (!v16)
      {
        goto LABEL_13;
      }

      workflow3 = [self workflow];
      name = [workflow3 name];
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_26();
      v32 = 42;
    }

    else
    {
      if (eventIdentifier)
      {
        if (v16)
        {
          workflow2 = [self workflow];
          [workflow2 name];
          objc_claimAutoreleasedReturnValue();
          eventIdentifier2 = [OUTLINED_FUNCTION_64() eventIdentifier];
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_63();
          OUTLINED_FUNCTION_26();
          v24 = 42;
          goto LABEL_9;
        }

LABEL_13:

        *__error() = v14;
        AnalyticsSendEvent();
        goto LABEL_14;
      }

      if (!v16)
      {
        goto LABEL_13;
      }

      workflow3 = [self workflow];
      name = [workflow3 name];
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_26();
      v32 = 32;
    }

    _os_log_debug_impl(v27, v28, v29, v30, v31, v32);

    goto LABEL_13;
  }

LABEL_14:
}

- (void)valueForFieldName:inSignpostObject:.cold.1()
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_22();
  v3 = [v2 workflow];
  [v3 name];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_50() eventIdentifier];
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_65();
  object_getClassName(v4);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_56(v5, v6, v7, v8, v9);

  OUTLINED_FUNCTION_81();
}

- (void)valueForFieldName:inSignpostObject:.cold.2()
{
  OUTLINED_FUNCTION_14();
  v2 = [v1 workflow];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_13();
  object_getClassName(v3);
  OUTLINED_FUNCTION_5();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __58__WRWorkflowEventTracker_applySignpost_toSignpostTracker___block_invoke_cold_1(id *a1)
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (*a1)
  {
    objc_setProperty_atomic(*a1, v2, v3, 32);
  }
}

- (void)doneHandlingSignpostsWithEndTimeMachContNs:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v8 = WRMakeError(4, @"Workflow event timed out", v2, v3, v4, v5, v6, v7, v11);
  v9 = [[WRTimestampAndThread alloc] initWithPID:0 threadID:v1 machContTimeNs:0 date:?];
  [(WRWorkflowEventTracker *)v0 handleError:v8 atEndTime:v9];

  [(WRWorkflowEventTracker *)v0 resetWithoutReportingErrors];
}

- (void)handleSignpost:(void *)a3 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 workflow];
  v8 = [v7 name];
  *a1 = 138543362;
  *a3 = v8;
  _os_log_debug_impl(&dword_2746E5000, a4, OS_LOG_TYPE_DEBUG, "%{public}@: concurrent workflow done", a1, 0xCu);
}

- (void)handleSignpost:.cold.3()
{
  OUTLINED_FUNCTION_86();
  v3 = [v2 workflow];
  [v3 name];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_65() name];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_33() startMachContinuousTime];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x20u);

  OUTLINED_FUNCTION_81();
}

- (uint64_t)handleSignpost:(uint64_t)a3 .cold.4(char a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_70(a2, a2);
  }

  return [v4 addObject:a3];
}

- (void)handleSignpost:(uint64_t)a1 .cold.5(uint64_t a1, char a2)
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{a1, 0}];
  if ((a2 & 1) == 0)
  {
    v4 = OUTLINED_FUNCTION_49();
    objc_setProperty_atomic(v4, v5, v6, 136);
  }
}

- (void)handleSignpost:.cold.7()
{
  OUTLINED_FUNCTION_14();
  v2 = [v1 workflow];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_13() eventIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

- (void)handleSignpost:(void *)a1 .cold.8(void *a1)
{
  v1 = [a1 workflow];
  v2 = [v1 name];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
}

- (void)handleSignpost:.cold.9()
{
  OUTLINED_FUNCTION_14();
  v2 = [v1 workflow];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_13() name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)handleSignpost:.cold.10()
{
  OUTLINED_FUNCTION_14();
  v2 = [v1 workflow];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_13() name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)handleSignpost:(void *)a3 .cold.11(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  do
  {
    v8 = 0;
    do
    {
      OUTLINED_FUNCTION_92();
      if (!v10)
      {
        objc_enumerationMutation(a2);
      }

      [(WRWorkflowEventTracker *)*(*(a1 + 8) + 8 * v8) resetWithoutReportingErrors];
      v8 = v8 + 1;
    }

    while (a3 != v8);
    result = [a2 countByEnumeratingWithState:a1 objects:a4 count:16];
    a3 = result;
  }

  while (result);
  return result;
}

- (void)handleSignpost:(uint64_t)a3 wrsignpost:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_22();
  v9 = [v8 beginDate];
  *a4 = v9;
  v10 = [v9 dateByAddingTimeInterval:{OUTLINED_FUNCTION_16(objc_msgSend(v6, "startNanoseconds")) / 1000000000.0}];
  [(WRWorkflowEventTracker *)v4 reportErrorsAndResetAtMachContNs:v5 date:v10];
}

- (void)handleSignpost:(void *)a1 wrsignpost:(void *)a2 .cold.2(void *a1, void *a2)
{
  v4 = [a1 workflow];
  v5 = [v4 name];
  v6 = [a1 eventIdentifier];
  v7 = [a2 name];
  [a2 startMachContinuousTime];
  [a2 startNanoseconds];
  v8 = [a1 eventStart];
  OUTLINED_FUNCTION_16([v8 machContTimeNs]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_59();
  _os_log_error_impl(v9, v10, OS_LOG_TYPE_ERROR, v11, v12, 0x34u);
}

- (void)handleSignpost:(void *)a1 wrsignpost:(void *)a2 .cold.3(void *a1, void *a2)
{
  v4 = [a1 workflow];
  v5 = [v4 name];
  v6 = [a2 name];
  [a2 startMachContinuousTime];
  [a2 startNanoseconds];
  v7 = [a1 eventStart];
  OUTLINED_FUNCTION_16([v7 machContTimeNs]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_59();
  _os_log_error_impl(v8, v9, OS_LOG_TYPE_ERROR, v10, v11, 0x2Au);
}

- (void)handleSignpost:wrsignpost:.cold.5()
{
  OUTLINED_FUNCTION_86();
  v1 = v0;
  v3 = v2;
  v4 = [v2 workflow];
  v5 = [v4 name];
  v6 = [v3 eventIdentifier];
  v7 = [v1 name];
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_56(v8, v9, v10, v11, v12);

  OUTLINED_FUNCTION_81();
}

- (void)handleSignpost:(void *)a1 wrsignpost:(void *)a2 .cold.6(void *a1, void *a2)
{
  v3 = [a1 workflow];
  v4 = [v3 name];
  v5 = [a2 name];
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44(v6, v7, v8, v9, v10);
}

- (void)handleSignpost:(void *)a3 wrsignpost:(_BYTE *)a4 .cold.7(void *a1, const char *a2, void *a3, _BYTE *a4)
{
  v8 = 0;
  while (1)
  {
    Property = [OUTLINED_FUNCTION_70(a1 a2)];
    v11 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v10, 24, 1);
    }

    if ([Property machContTimeNs] == a2)
    {
      v13 = v11 ? objc_getProperty(v11, v12, 24, 1) : 0;
      if ([v13 threadID] == a3)
      {
        break;
      }
    }

    if (++v8 >= [OUTLINED_FUNCTION_70(a1 v15)])
    {
      goto LABEL_12;
    }
  }

  [OUTLINED_FUNCTION_70(a1 v14)];

LABEL_12:
  *a4 = 0;
}

void __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_17();
  geteuid();
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_5();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  v3 = 2112;
  v4 = v0;
  OUTLINED_FUNCTION_44(&dword_2746E5000, v1, v1, "Unable to create folder at %{public}@: %@", v2);
}

void __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_3()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  v3 = 1024;
  v4 = v0;
  _os_log_fault_impl(&dword_2746E5000, v1, OS_LOG_TYPE_FAULT, "Failed to mark %{public}@ with purgeable children: %{errno}d", v2, 0x12u);
}

void __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_4()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(&dword_2746E5000, v0, OS_LOG_TYPE_DEBUG, "Marked %{public}@ with purgeable children", v1, 0xCu);
}

void __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_5()
{
  OUTLINED_FUNCTION_17();
  __error();
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_5();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __71__WRWorkflowEventTracker_cleanupDirectory_ofFilesWithSuffix_olderThan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  [v1 path];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_43() debugDescription];
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (BOOL)initWithEncodedDict:error:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v3 = [[WRTimestampAndThread alloc] initWithEncodedDict:v2 error:v1];
  v4 = *(v0 + 32);
  *(v0 + 32) = v3;

  return *(v0 + 32) == 0;
}

- (BOOL)initWithEncodedDict:error:.cold.2()
{
  OUTLINED_FUNCTION_14();
  v3 = [[WRTimestampAndThread alloc] initWithEncodedDict:v2 error:v1];
  v4 = *(v0 + 48);
  *(v0 + 48) = v3;

  return *(v0 + 48) == 0;
}

- (void)gatherDiagnosticsIfNeeded
{
  workflow = [self workflow];
  name = [workflow name];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_22();
  v3 = [OUTLINED_FUNCTION_60(v2) workflow];
  v4 = [v3 name];
  v5 = [*v1 eventIdentifier];
  v6 = [*(v0 + 40) path];
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18();
  _os_log_error_impl(v7, v8, OS_LOG_TYPE_ERROR, v9, v10, 0x20u);

  OUTLINED_FUNCTION_81();
}

void __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  v2 = [*v1 workflow];
  v3 = [v2 name];
  v4 = [*(v0 + 40) path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_22();
  v2 = [OUTLINED_FUNCTION_60(v1) workflow];
  v3 = [v2 name];
  v4 = [*v0 eventIdentifier];
  __error();
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_18();
  _os_log_error_impl(v5, v6, OS_LOG_TYPE_ERROR, v7, v8, 0x26u);

  OUTLINED_FUNCTION_81();
}

void __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_14();
  v1 = [OUTLINED_FUNCTION_60(v0) workflow];
  v7 = [v1 name];
  __error();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_14();
  v1 = v0;
  v2 = [OUTLINED_FUNCTION_60(v0) workflow];
  v3 = [v2 name];
  v4 = [*v1 eventIdentifier];
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  OUTLINED_FUNCTION_81();
}

void __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_14();
  v1 = [*v0 workflow];
  v2 = [v1 name];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)reportCoreAnalyticsEventForSignpost:allCount:allDurationUnionSec:allDurationSumSec:allDurationLongestSec:allDurationUntrackedSec:allDurationNonNetworkBoundSec:allTimeUntilFirstSignpost:allTimeAfterLastSignpost:incompleteCount:completeDurationUnionSec:completeDurationSumSec:completeDurationLongestSec:completeTimeUntilFirstSignpost:environment:.cold.1()
{
  OUTLINED_FUNCTION_86();
  v1 = v0;
  v3 = v2;
  v4 = [v2 workflow];
  v5 = [v4 name];
  v6 = [v3 eventIdentifier];
  v7 = [v1 domain];
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_56(v8, v9, v10, v11, v12);

  OUTLINED_FUNCTION_81();
}

- (void)reportCoreAnalyticsEventForSignpost:(void *)a1 allCount:(void *)a2 allDurationUnionSec:allDurationSumSec:allDurationLongestSec:allDurationUntrackedSec:allDurationNonNetworkBoundSec:allTimeUntilFirstSignpost:allTimeAfterLastSignpost:incompleteCount:completeDurationUnionSec:completeDurationSumSec:completeDurationLongestSec:completeTimeUntilFirstSignpost:environment:.cold.2(void *a1, void *a2)
{
  v3 = [a1 workflow];
  v4 = [v3 name];
  v5 = [a2 domain];
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44(v6, v7, v8, v9, v10);
}

void __43__WRWorkflowEventTracker_generateTelemetry__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_55();
  v2 = [OUTLINED_FUNCTION_60(v1) workflow];
  v3 = [v2 name];
  [*v0 eventIdentifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_50() signpost];
  v5 = [v4 name];
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_59();
  _os_log_debug_impl(v6, v7, OS_LOG_TYPE_DEBUG, v8, v9, 0x20u);

  OUTLINED_FUNCTION_81();
}

void __43__WRWorkflowEventTracker_generateTelemetry__block_invoke_cold_2(id *a1)
{
  v2 = [*a1 workflow];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_65() signpost];
  v4 = [v3 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x16u);
}

@end