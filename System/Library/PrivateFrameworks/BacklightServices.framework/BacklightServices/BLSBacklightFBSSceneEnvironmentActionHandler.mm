@interface BLSBacklightFBSSceneEnvironmentActionHandler
+ (id)desiredFidelityRequestFromAction:(id)action;
+ (id)frameSpecifiersRequestFromAction:(id)action;
- (id)respondToActions:(id)actions forFBSScene:(id)scene fromTransitionContext:(id)context;
@end

@implementation BLSBacklightFBSSceneEnvironmentActionHandler

+ (id)desiredFidelityRequestFromAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    v4 = [BLSDesiredFidelityRequest alloc];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __81__BLSBacklightFBSSceneEnvironmentActionHandler_desiredFidelityRequestFromAction___block_invoke;
    v7[3] = &unk_278428768;
    v8 = actionCopy;
    v5 = [(BLSDesiredFidelityRequest *)v4 initWithCompletion:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __81__BLSBacklightFBSSceneEnvironmentActionHandler_desiredFidelityRequestFromAction___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  v4 = [*(a1 + 32) canSendResponse];
  v5 = v4;
  v6 = bls_scenes_log(v4);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __81__BLSBacklightFBSSceneEnvironmentActionHandler_desiredFidelityRequestFromAction___block_invoke_cold_2();
    }

    v8 = *v3;
    v7 = [[BLSDesiredFidelityResponse alloc] initWithDesiredFidelity:a2];
    [v8 sendResponse:v7];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __81__BLSBacklightFBSSceneEnvironmentActionHandler_desiredFidelityRequestFromAction___block_invoke_cold_1();
  }
}

+ (id)frameSpecifiersRequestFromAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    v4 = [BLSFrameSpecifiersRequest alloc];
    dateInterval = [actionCopy dateInterval];
    previousPresentationDate = [actionCopy previousPresentationDate];
    shouldReset = [actionCopy shouldReset];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __81__BLSBacklightFBSSceneEnvironmentActionHandler_frameSpecifiersRequestFromAction___block_invoke;
    v10[3] = &unk_2784291A0;
    v11 = actionCopy;
    v8 = [(BLSFrameSpecifiersRequest *)v4 initWithDateInterval:dateInterval previousPresentationDate:previousPresentationDate shouldReset:shouldReset completion:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __81__BLSBacklightFBSSceneEnvironmentActionHandler_frameSpecifiersRequestFromAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 canSendResponse];
  v7 = v6;
  v8 = bls_scenes_log(v6);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __81__BLSBacklightFBSSceneEnvironmentActionHandler_frameSpecifiersRequestFromAction___block_invoke_cold_2();
    }

    v10 = *v4;
    v9 = [[BLSFrameSpecifiersRequestResponse alloc] initWithDateSpecifiers:v3];
    [v10 sendResponse:v9];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __81__BLSBacklightFBSSceneEnvironmentActionHandler_frameSpecifiersRequestFromAction___block_invoke_cold_1();
  }
}

- (id)respondToActions:(id)actions forFBSScene:(id)scene fromTransitionContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  array = [MEMORY[0x277CBEB18] array];
  v7 = bls_scenes_log(array);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BLSBacklightFBSSceneEnvironmentActionHandler respondToActions:actionsCopy forFBSScene:? fromTransitionContext:?];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = actionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass) || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass) || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
        {
          v15 = bls_scenes_log(isKindOfClass);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v31 = v13;
            _os_log_debug_impl(&dword_21FE25000, v15, OS_LOG_TYPE_DEBUG, "respondToActions expect to handle action:%@", buf, 0xCu);
          }

          v16 = array;
        }

        else
        {
          v15 = bls_scenes_log(isKindOfClass);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v31 = v13;
            _os_log_debug_impl(&dword_21FE25000, v15, OS_LOG_TYPE_DEBUG, "respondToActions unhandled action:%@", buf, 0xCu);
          }

          v16 = v23;
        }

        [v16 addObject:v13];
        ++v12;
      }

      while (v10 != v12);
      v17 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
      v10 = v17;
    }

    while (v17);
  }

  v18 = [array count];
  if (v18)
  {
    v19 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__BLSBacklightFBSSceneEnvironmentActionHandler_respondToActions_forFBSScene_fromTransitionContext___block_invoke;
    block[3] = &unk_2784291C8;
    v25 = array;
    dispatch_after(v19, MEMORY[0x277D85CD0], block);
  }

  v20 = bls_scenes_log(v18);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [BLSBacklightFBSSceneEnvironmentActionHandler respondToActions:v23 forFBSScene:? fromTransitionContext:?];
  }

  v21 = [MEMORY[0x277CBEB98] setWithArray:v23];

  return v21;
}

void __99__BLSBacklightFBSSceneEnvironmentActionHandler_respondToActions_forFBSScene_fromTransitionContext___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = (a1 + 32);
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (!v3)
  {
    goto LABEL_16;
  }

  v5 = v3;
  v6 = 0;
  v7 = *v15;
  *&v4 = 138412290;
  v13 = v4;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v14 + 1) + 8 * i);
      if ([v9 _expectsResponse])
      {
        v10 = [v9 canSendResponse];
        if (v10)
        {
          v11 = bls_scenes_log(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = v13;
            v19 = v9;
            _os_log_debug_impl(&dword_21FE25000, v11, OS_LOG_TYPE_DEBUG, "response failed for action:%@", buf, 0xCu);
          }

          v6 = 1;
        }
      }
    }

    v5 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
  }

  while (v5);

  if (v6)
  {
    v2 = bls_scenes_log(v12);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __99__BLSBacklightFBSSceneEnvironmentActionHandler_respondToActions_forFBSScene_fromTransitionContext___block_invoke_cold_1(v1, v2);
    }

LABEL_16:
  }
}

void __81__BLSBacklightFBSSceneEnvironmentActionHandler_desiredFidelityRequestFromAction___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_3();
  NSStringFromBLSUpdateFidelity(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_4_2(&dword_21FE25000, v2, v3, "unable to send desiredFidelity:%{public}@ response to desiredFidelityAction:%{public}@", v4, v5, v6, v7);
}

void __81__BLSBacklightFBSSceneEnvironmentActionHandler_desiredFidelityRequestFromAction___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_3();
  NSStringFromBLSUpdateFidelity(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __81__BLSBacklightFBSSceneEnvironmentActionHandler_frameSpecifiersRequestFromAction___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_3();
  [v1 bls_boundedDescription];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_4_2(&dword_21FE25000, v2, v3, "unable to send specifiers:%{public}@ response to frameSpecifiersAction:%{public}@", v4, v5, v6, v7);
}

void __81__BLSBacklightFBSSceneEnvironmentActionHandler_frameSpecifiersRequestFromAction___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_3();
  [v1 bls_boundedDescription];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)respondToActions:(void *)a1 forFBSScene:fromTransitionContext:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)respondToActions:(void *)a1 forFBSScene:fromTransitionContext:.cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __99__BLSBacklightFBSSceneEnvironmentActionHandler_respondToActions_forFBSScene_fromTransitionContext___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134218242;
  v4 = 0x4014000000000000;
  v5 = 2112;
  v6 = v2;
  _os_log_fault_impl(&dword_21FE25000, a2, OS_LOG_TYPE_FAULT, "one or more actions did not respond after %lf seconds; %@", &v3, 0x16u);
}

@end