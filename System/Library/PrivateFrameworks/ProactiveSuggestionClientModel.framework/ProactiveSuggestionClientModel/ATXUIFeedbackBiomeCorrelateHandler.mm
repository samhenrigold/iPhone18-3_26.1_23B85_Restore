@interface ATXUIFeedbackBiomeCorrelateHandler
+ (id)uiFeedbackCorrelateHandler;
- (BOOL)_proactiveSuggestionsContainEqualExecutablesWithSuggestion1:(id)suggestion1 suggestion2:(id)suggestion2;
- (id)boxedExecutableHashForProactiveSuggestion:(id)suggestion;
- (id)correlateWithCurrentEvent:(id)event;
- (void)receiveCurrentEvent:(id)event;
- (void)receivePriorEvent:(id)event;
- (void)updateMostRecentlySeenBlendingUICacheUpdateUUID:(id)d;
@end

@implementation ATXUIFeedbackBiomeCorrelateHandler

+ (id)uiFeedbackCorrelateHandler
{
  v2 = objc_alloc(objc_opt_class());
  v3 = objc_opt_new();
  v4 = [v2 initWithInitialContext:v3];

  return v4;
}

- (void)updateMostRecentlySeenBlendingUICacheUpdateUUID:(id)d
{
  dCopy = d;
  context = [(BPSCorrelateHandler *)self context];
  [context updatePinnedBlendingModelUICacheUpdateUUID:dCopy];

  context2 = [(BPSCorrelateHandler *)self context];
  [context2 pruneContextStateOlderThanBlendingUUID:dCopy];
}

- (void)receivePriorEvent:(id)event
{
  eventCopy = event;
  context = [(BPSCorrelateHandler *)self context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    eventBody = [eventCopy eventBody];
    v7 = eventBody;
    if (eventBody)
    {
      if ([eventBody conformsToProtocol:&unk_1F5A51B48])
      {
        v8 = __atxlog_handle_blending_ecosystem([context addContext:v7]);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [ATXUIFeedbackBiomeCorrelateHandler receivePriorEvent:?];
        }

LABEL_13:

        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = __atxlog_handle_blending_ecosystem([context addBlendingModelUICacheUpdate:v7]);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(ATXUIFeedbackBiomeCorrelateHandler *)self receivePriorEvent:v7];
        }

        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = __atxlog_handle_blending_ecosystem([context addClientModelCacheUpdate:v7]);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(ATXUIFeedbackBiomeCorrelateHandler *)self receivePriorEvent:v7];
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_14:
}

- (void)receiveCurrentEvent:(id)event
{
  v4 = __atxlog_handle_blending_ecosystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ATXUIFeedbackBiomeCorrelateHandler receiveCurrentEvent:?];
  }
}

- (id)correlateWithCurrentEvent:(id)event
{
  v160 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v93 = objc_opt_new();
  v5 = eventCopy;
  context = [(BPSCorrelateHandler *)self context];
  v6Context = [context context];
  sessionEndDate = [v5 sessionEndDate];
  [v6Context updateTimeContextWithDate:sessionEndDate];

  v101 = objc_opt_new();
  v100 = objc_opt_new();
  v99 = objc_opt_new();
  blendingUICacheUpdateUUID = [v5 blendingUICacheUpdateUUID];
  v10 = [context clientModelCacheUpdatesForUICacheUpdateUUID:blendingUICacheUpdateUUID];

  v94 = v5;
  blendingUICacheUpdateUUID2 = [v5 blendingUICacheUpdateUUID];
  v92 = context;
  v12 = [context blendingModelUICacheUpdateForUUID:blendingUICacheUpdateUUID2];

  v13 = [v10 count];
  if (v13 && v12)
  {
    v91 = v12;
    v89 = v6Context;
    v14 = objc_opt_new();
    context = objc_autoreleasePoolPush();
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v88 = v10;
    obj = v10;
    v15 = [obj countByEnumeratingWithState:&v146 objects:v159 count:16];
    if (v15)
    {
      v16 = v15;
      v108 = *v147;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v147 != v108)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v146 + 1) + 8 * i);
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          suggestions = [v18 suggestions];
          v20 = [suggestions countByEnumeratingWithState:&v142 objects:v158 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v143;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v143 != v22)
                {
                  objc_enumerationMutation(suggestions);
                }

                v24 = *(*(&v142 + 1) + 8 * j);
                uuid = [v24 uuid];
                [v14 setObject:v24 forKeyedSubscript:uuid];
              }

              v21 = [suggestions countByEnumeratingWithState:&v142 objects:v158 count:16];
            }

            while (v21);
          }
        }

        v16 = [obj countByEnumeratingWithState:&v146 objects:v159 count:16];
      }

      while (v16);
    }

    objc_autoreleasePoolPop(context);
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    engagedUUIDs = [v94 engagedUUIDs];
    v27 = [engagedUUIDs countByEnumeratingWithState:&v138 objects:v157 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v139;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v139 != v29)
          {
            objc_enumerationMutation(engagedUUIDs);
          }

          v31 = [v14 objectForKeyedSubscript:*(*(&v138 + 1) + 8 * k)];
          if (v31)
          {
            [v100 addObject:v31];
          }
        }

        v28 = [engagedUUIDs countByEnumeratingWithState:&v138 objects:v157 count:16];
      }

      while (v28);
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    shownUUIDs = [v94 shownUUIDs];
    v33 = [shownUUIDs countByEnumeratingWithState:&v134 objects:v156 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v135;
      do
      {
        for (m = 0; m != v34; ++m)
        {
          if (*v135 != v35)
          {
            objc_enumerationMutation(shownUUIDs);
          }

          v37 = [v14 objectForKeyedSubscript:*(*(&v134 + 1) + 8 * m)];
          if (v37)
          {
            [v101 addObject:v37];
          }
        }

        v34 = [shownUUIDs countByEnumeratingWithState:&v134 objects:v156 count:16];
      }

      while (v34);
    }

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    rejectedUUIDs = [v94 rejectedUUIDs];
    v39 = [rejectedUUIDs countByEnumeratingWithState:&v130 objects:v155 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v131;
      do
      {
        for (n = 0; n != v40; ++n)
        {
          if (*v131 != v41)
          {
            objc_enumerationMutation(rejectedUUIDs);
          }

          v43 = [v14 objectForKeyedSubscript:*(*(&v130 + 1) + 8 * n)];
          if (v43)
          {
            [v99 addObject:v43];
          }
        }

        v40 = [rejectedUUIDs countByEnumeratingWithState:&v130 objects:v155 count:16];
      }

      while (v40);
    }

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v90 = obj;
    v96 = [v90 countByEnumeratingWithState:&v126 objects:v154 count:16];
    if (v96)
    {
      v95 = *v127;
      do
      {
        v44 = 0;
        do
        {
          if (*v127 != v95)
          {
            objc_enumerationMutation(v90);
          }

          v103 = v44;
          v45 = *(*(&v126 + 1) + 8 * v44);
          v102 = objc_autoreleasePoolPush();
          contexta = objc_opt_new();
          v46 = objc_opt_new();
          obja = objc_opt_new();
          v47 = objc_opt_new();
          v122 = 0u;
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v98 = v45;
          suggestions2 = [v45 suggestions];
          v49 = [suggestions2 countByEnumeratingWithState:&v122 objects:v153 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v123;
            do
            {
              for (ii = 0; ii != v50; ++ii)
              {
                if (*v123 != v51)
                {
                  objc_enumerationMutation(suggestions2);
                }

                v53 = *(*(&v122 + 1) + 8 * ii);
                v54 = [(ATXUIFeedbackBiomeCorrelateHandler *)self boxedExecutableHashForProactiveSuggestion:v53];
                [v47 setObject:v53 forKey:v54];
              }

              v50 = [suggestions2 countByEnumeratingWithState:&v122 objects:v153 count:16];
            }

            while (v50);
          }

          v109 = v46;

          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v55 = v101;
          v56 = [v55 countByEnumeratingWithState:&v118 objects:v152 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v119;
            do
            {
              for (jj = 0; jj != v57; ++jj)
              {
                if (*v119 != v58)
                {
                  objc_enumerationMutation(v55);
                }

                v60 = *(*(&v118 + 1) + 8 * jj);
                v61 = [(ATXUIFeedbackBiomeCorrelateHandler *)self boxedExecutableHashForProactiveSuggestion:v60];
                v62 = [v47 objectForKey:v61];
                if (v62 && [(ATXUIFeedbackBiomeCorrelateHandler *)self _proactiveSuggestionsContainEqualExecutablesWithSuggestion1:v60 suggestion2:v62])
                {
                  [contexta addObject:v62];
                }
              }

              v57 = [v55 countByEnumeratingWithState:&v118 objects:v152 count:16];
            }

            while (v57);
          }

          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v63 = v100;
          v64 = [v63 countByEnumeratingWithState:&v114 objects:v151 count:16];
          if (v64)
          {
            v65 = v64;
            v66 = *v115;
            do
            {
              for (kk = 0; kk != v65; ++kk)
              {
                if (*v115 != v66)
                {
                  objc_enumerationMutation(v63);
                }

                v68 = *(*(&v114 + 1) + 8 * kk);
                v69 = [(ATXUIFeedbackBiomeCorrelateHandler *)self boxedExecutableHashForProactiveSuggestion:v68];
                v70 = [v47 objectForKey:v69];
                if (v70 && [(ATXUIFeedbackBiomeCorrelateHandler *)self _proactiveSuggestionsContainEqualExecutablesWithSuggestion1:v68 suggestion2:v70])
                {
                  [v109 addObject:v70];
                }
              }

              v65 = [v63 countByEnumeratingWithState:&v114 objects:v151 count:16];
            }

            while (v65);
          }

          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v71 = v99;
          v72 = [v71 countByEnumeratingWithState:&v110 objects:v150 count:16];
          if (v72)
          {
            v73 = v72;
            v74 = *v111;
            do
            {
              for (mm = 0; mm != v73; ++mm)
              {
                if (*v111 != v74)
                {
                  objc_enumerationMutation(v71);
                }

                v76 = *(*(&v110 + 1) + 8 * mm);
                v77 = [(ATXUIFeedbackBiomeCorrelateHandler *)self boxedExecutableHashForProactiveSuggestion:v76];
                v78 = [v47 objectForKey:v77];
                if (v78 && [(ATXUIFeedbackBiomeCorrelateHandler *)self _proactiveSuggestionsContainEqualExecutablesWithSuggestion1:v76 suggestion2:v78])
                {
                  [obja addObject:v78];
                }
              }

              v73 = [v71 countByEnumeratingWithState:&v110 objects:v150 count:16];
            }

            while (v73);
          }

          v80 = obja;
          v79 = v109;
          if ([contexta count])
          {
            v97 = [ATXProactiveSuggestionUIFeedbackResult alloc];
            array = [contexta array];
            array2 = [v109 array];
            array3 = [obja array];
            consumerSubType = [v94 consumerSubType];
            context2 = [v92 context];
            v80 = obja;
            v86 = [(ATXProactiveSuggestionUIFeedbackResult *)v97 initWithShownSuggestions:array engagedSuggestions:array2 rejectedSuggestions:array3 session:v94 consumerSubType:consumerSubType clientCacheUpdate:v98 uiCacheUpdate:v91 context:context2];

            v79 = v109;
            [v93 addObject:v86];
          }

          objc_autoreleasePoolPop(v102);
          v44 = v103 + 1;
        }

        while (v103 + 1 != v96);
        v96 = [v90 countByEnumeratingWithState:&v126 objects:v154 count:16];
      }

      while (v96);
    }

    v10 = v88;
    v6Context = v89;
    v12 = v91;
  }

  else
  {
    v14 = __atxlog_handle_blending_ecosystem(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(ATXUIFeedbackBiomeCorrelateHandler *)self correlateWithCurrentEvent:v94, v14];
    }
  }

  return v93;
}

- (id)boxedExecutableHashForProactiveSuggestion:(id)suggestion
{
  executableSpecification = [suggestion executableSpecification];
  executableObjectHash = [executableSpecification executableObjectHash];

  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:executableObjectHash];

  return v5;
}

- (BOOL)_proactiveSuggestionsContainEqualExecutablesWithSuggestion1:(id)suggestion1 suggestion2:(id)suggestion2
{
  suggestion2Copy = suggestion2;
  executableSpecification = [suggestion1 executableSpecification];
  executableSpecification2 = [suggestion2Copy executableSpecification];

  LOBYTE(suggestion2Copy) = [executableSpecification fuzzyIsEqualToExecutableSpecification:executableSpecification2];
  return suggestion2Copy;
}

- (void)receivePriorEvent:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 clientModelId];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)receivePriorEvent:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 uuid];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)receivePriorEvent:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v7 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)receiveCurrentEvent:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v7 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)correlateWithCurrentEvent:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [MEMORY[0x1E698B028] stringForConsumerSubtype:{objc_msgSend(a2, "consumerSubType")}];
  OUTLINED_FUNCTION_0_8();
  _os_log_fault_impl(&dword_1DEFC4000, a3, OS_LOG_TYPE_FAULT, "%@ - could not find any client caches for session with consumerSubType: %@", v8, 0x16u);
}

@end