@interface CAFGroupRequest
- (CAFCar)car;
- (CAFGroupRequest)initWithCar:(id)car;
- (NSString)description;
- (NSString)fullDescription;
- (id)_currentDescriptionForFull;
- (id)_currentDescriptionForRequests;
- (id)currentDescriptionForCache:(id)cache;
- (unint64_t)count;
- (void)_addRequest:(id)request;
- (void)_lockedPerformBlock:(id)block;
- (void)addCharacteristic:(id)characteristic;
- (void)addCharacteristics:(id)characteristics;
- (void)performWithCompletion:(id)completion;
@end

@implementation CAFGroupRequest

- (CAFGroupRequest)initWithCar:(id)car
{
  carCopy = car;
  v22.receiver = self;
  v22.super_class = CAFGroupRequest;
  v5 = [(CAFGroupRequest *)&v22 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = uUID;

    objc_storeWeak(&v6->_car, carCopy);
    v9 = objc_opt_new();
    requests = v6->_requests;
    v6->_requests = v9;

    v11 = objc_opt_new();
    errors = v6->_errors;
    v6->_errors = v11;

    v13 = [[CAFCachedDescription alloc] initWithCacheable:v6];
    cachedDescription = v6->_cachedDescription;
    v6->_cachedDescription = v13;

    v15 = [[CAFCachedDescription alloc] initWithCacheable:v6 lazyRefreshDescription:1];
    cachedRequestsDescription = v6->_cachedRequestsDescription;
    v6->_cachedRequestsDescription = v15;

    v17 = [[CAFCachedDescription alloc] initWithCacheable:v6 lazyRefreshDescription:1];
    cachedFullDescription = v6->_cachedFullDescription;
    v6->_cachedFullDescription = v17;

    v20 = CAFGroupRequestLogging(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [CAFGroupRequest initWithCar:];
    }
  }

  return v6;
}

- (unint64_t)count
{
  requests = [(CAFGroupRequest *)self requests];
  v3 = [requests count];

  return v3;
}

- (void)addCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __37__CAFGroupRequest_addCharacteristic___block_invoke;
  v11 = &unk_27890D548;
  selfCopy = self;
  v13 = characteristicCopy;
  v5 = characteristicCopy;
  [(CAFGroupRequest *)self _lockedPerformBlock:&v8];
  v6 = [(CAFGroupRequest *)self cachedRequestsDescription:v8];
  [v6 setNeedsRefreshDescription];

  cachedFullDescription = [(CAFGroupRequest *)self cachedFullDescription];
  [cachedFullDescription setNeedsRefreshDescription];
}

uint64_t __37__CAFGroupRequest_addCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requestForCharacteristic:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _addRequest:v2];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)addCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __38__CAFGroupRequest_addCharacteristics___block_invoke;
  v11 = &unk_27890D548;
  v12 = characteristicsCopy;
  selfCopy = self;
  v5 = characteristicsCopy;
  [(CAFGroupRequest *)self _lockedPerformBlock:&v8];
  v6 = [(CAFGroupRequest *)self cachedRequestsDescription:v8];
  [v6 setNeedsRefreshDescription];

  cachedFullDescription = [(CAFGroupRequest *)self cachedFullDescription];
  [cachedFullDescription setNeedsRefreshDescription];
}

void __38__CAFGroupRequest_addCharacteristics___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) requestForCharacteristic:{*(*(&v8 + 1) + 8 * v6), v8}];
        if (v7)
        {
          [*(a1 + 40) _addRequest:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)performWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  performed = [(CAFGroupRequest *)self performed];
  if (performed)
  {
    v6 = CAFGroupRequestLogging(performed);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CAFGroupRequest performWithCompletion:?];
    }

    if (completionCopy)
    {
      cAF_groupRequestAlreadyPerformed = [MEMORY[0x277CCA9B8] CAF_groupRequestAlreadyPerformed];
      completionCopy[2](completionCopy, cAF_groupRequestAlreadyPerformed);
    }

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_21;
  }

  [(CAFGroupRequest *)self setPerformed:1];
  os_unfair_lock_unlock(&self->_lock);
  cachedFullDescription = [(CAFGroupRequest *)self cachedFullDescription];
  [cachedFullDescription setNeedsRefreshDescription];

  requests = [(CAFGroupRequest *)self requests];
  -[CAFGroupRequest setPendingGroups:](self, "setPendingGroups:", [requests count]);

  requests2 = [(CAFGroupRequest *)self requests];
  v11 = [requests2 count];

  if (v11)
  {
    v13 = CAFGeneralLogging(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [CAFGroupRequest performWithCompletion:?];
    }

    v14 = CARSignpostLogForCategory();
    if (self)
    {
      v15 = CARSignpostLogForCategory();
      v16 = os_signpost_id_make_with_pointer(v15, self);

      if (v16 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_20:

        requests3 = [(CAFGroupRequest *)self requests];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __41__CAFGroupRequest_performWithCompletion___block_invoke;
        v20[3] = &unk_27890F2B0;
        v20[4] = self;
        v21 = completionCopy;
        [requests3 enumerateKeysAndObjectsUsingBlock:v20];

        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0xEEEEB0B5B2B2EEEELL;
    }

    if (os_signpost_enabled(v14))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_signpost_emit_with_name_impl(&dword_231618000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Perform", "GroupRequest %@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v17 = CAFGroupRequestLogging(v12);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [CAFGroupRequest performWithCompletion:?];
  }

  if (completionCopy)
  {
    cAF_groupRequestWithNoCharacteristics = [MEMORY[0x277CCA9B8] CAF_groupRequestWithNoCharacteristics];
    completionCopy[2](completionCopy, cAF_groupRequestWithNoCharacteristics);
  }

LABEL_21:
}

void __41__CAFGroupRequest_performWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CAFGeneralLogging(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __41__CAFGroupRequest_performWithCompletion___block_invoke_cold_1();
  }

  v8 = CARSignpostLogForCategory();
  if (v5)
  {
    v9 = CARSignpostLogForCategory();
    v10 = os_signpost_id_make_with_pointer(v9, v5);

    if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0xEEEEB0B5B2B2EEEELL;
  }

  if (os_signpost_enabled(v8))
  {
    v11 = *(a1 + 32);
    *buf = 138412546;
    v30 = v5;
    v31 = 2112;
    v32 = v11;
    _os_signpost_emit_with_name_impl(&dword_231618000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Perform", "Request %@ from %@", buf, 0x16u);
  }

LABEL_9:

  v12 = (a1 + 32);
  v13 = [*(a1 + 32) groupRequestValueForRequests:v6];
  if (v13)
  {
    v14 = [*(a1 + 32) car];
    v15 = *(a1 + 32);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __41__CAFGroupRequest_performWithCompletion___block_invoke_26;
    v24[3] = &unk_27890F288;
    v16 = v5;
    v17 = *(a1 + 32);
    v25 = v16;
    v26 = v17;
    v27 = v6;
    v28 = *(a1 + 40);
    [v14 performGroupedRequest:v15 key:v16 value:v13 withResponse:v24];

    v18 = v25;
  }

  else
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = [v6 valueForKey:@"characteristic"];
    v21 = [v19 CAF_groupRequestNilForCharacteristics:v20];
    v22 = [*v12 errors];
    [v22 setObject:v21 forKeyedSubscript:v5];

    v18 = CAFGroupRequestLogging(v23);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __41__CAFGroupRequest_performWithCompletion___block_invoke_cold_2();
    }
  }
}

void __41__CAFGroupRequest_performWithCompletion___block_invoke_26(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CAFGeneralLogging(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __41__CAFGroupRequest_performWithCompletion___block_invoke_26_cold_1();
  }

  v5 = (a1 + 40);
  [*(a1 + 40) setPendingGroups:{objc_msgSend(*(a1 + 40), "pendingGroups") - 1}];
  v6 = [*(a1 + 40) cachedFullDescription];
  [v6 setNeedsRefreshDescription];

  v8 = CAFGroupRequestLogging(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v38 = [*(a1 + 40) description];
    v39 = *(a1 + 32);
    v40 = [v3 error];
    *buf = 138412802;
    v47 = v38;
    v48 = 2112;
    v49 = v39;
    v50 = 2112;
    v51 = v40;
    _os_log_debug_impl(&dword_231618000, v8, OS_LOG_TYPE_DEBUG, "%@ completed request %@ error=%@", buf, 0x20u);
  }

  v9 = 0xEEEEB0B5B2B2EEEELL;

  v10 = CARSignpostLogForCategory();
  v11 = 0xEEEEB0B5B2B2EEEELL;
  if (!*(a1 + 32) || (CARSignpostLogForCategory(), v12 = objc_claimAutoreleasedReturnValue(), v11 = os_signpost_id_make_with_pointer(v12, *(a1 + 32)), v12, v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
  {
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231618000, v10, OS_SIGNPOST_INTERVAL_END, v11, "Perform", &unk_231733279, buf, 2u);
    }
  }

  [*(a1 + 40) completedRequests:*(a1 + 48) withResponse:v3];
  v13 = [v3 error];

  if (v13)
  {
    v14 = [v3 error];
    v15 = [*(a1 + 40) errors];
    [v15 setObject:v14 forKeyedSubscript:*(a1 + 32)];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = *(a1 + 48);
    v17 = [v16 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v42;
      do
      {
        v20 = 0;
        do
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v41 + 1) + 8 * v20);
          v22 = [v3 error];
          v23 = [v21 characteristic];
          [v23 setError:v22];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v18);
    }
  }

  if (![*v5 pendingGroups])
  {
    v24 = [*v5 errors];
    v25 = [v24 count];

    v26 = [*v5 errors];
    v27 = v26;
    if (v25 == 1)
    {
      v28 = [v26 allValues];
      v29 = [v28 firstObject];
    }

    else
    {
      v30 = [v26 count];

      if (v30 < 2)
      {
        v33 = 0;
        goto LABEL_25;
      }

      v32 = MEMORY[0x277CCA9B8];
      v27 = [*v5 errors];
      v28 = [v27 allValues];
      v29 = [v32 CAF_groupRequestErrors:v28];
    }

    v33 = v29;

LABEL_25:
    v34 = CAFGeneralLogging(v31);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      __41__CAFGroupRequest_performWithCompletion___block_invoke_26_cold_2();
    }

    v35 = CARSignpostLogForCategory();
    if (!*v5 || (CARSignpostLogForCategory(), v36 = objc_claimAutoreleasedReturnValue(), v9 = os_signpost_id_make_with_pointer(v36, *v5), v36, v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
    {
      if (os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_231618000, v35, OS_SIGNPOST_INTERVAL_END, v9, "Perform", &unk_231733279, buf, 2u);
      }
    }

    v37 = *(a1 + 56);
    if (v37)
    {
      (*(v37 + 16))(v37, v33);
    }
  }
}

- (NSString)description
{
  cachedDescription = [(CAFGroupRequest *)self cachedDescription];
  v3 = [cachedDescription description];

  return v3;
}

- (NSString)fullDescription
{
  cachedFullDescription = [(CAFGroupRequest *)self cachedFullDescription];
  v3 = [cachedFullDescription description];

  return v3;
}

- (void)_lockedPerformBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  performed = [(CAFGroupRequest *)self performed];
  if (performed)
  {
    v6 = CAFGroupRequestLogging(performed);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CAFGroupRequest _lockedPerformBlock:];
    }
  }

  else
  {
    blockCopy[2](blockCopy);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_addRequest:(id)request
{
  requestCopy = request;
  requestKey = [requestCopy requestKey];
  forced = [(CAFGroupRequest *)self forced];
  if (forced)
  {
    v7 = CAFGroupRequestLogging(forced);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CAFGroupRequest _addRequest:];
    }

    v8 = [requestKey copyWithPriority:0x284683558];
    requestKey = v8;
  }

  requests = [(CAFGroupRequest *)self requests];
  v10 = [requests objectForKeyedSubscript:requestKey];

  if (!v10)
  {
    v10 = objc_opt_new();
    requests2 = [(CAFGroupRequest *)self requests];
    [requests2 setObject:v10 forKeyedSubscript:requestKey];
  }

  [v10 addObject:requestCopy];
}

- (id)currentDescriptionForCache:(id)cache
{
  cacheCopy = cache;
  cachedFullDescription = [(CAFGroupRequest *)self cachedFullDescription];

  if (cachedFullDescription == cacheCopy)
  {
    _currentDescriptionForFull = [(CAFGroupRequest *)self _currentDescriptionForFull];
  }

  else
  {
    cachedRequestsDescription = [(CAFGroupRequest *)self cachedRequestsDescription];

    if (cachedRequestsDescription != cacheCopy)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = objc_opt_class();
      uniqueIdentifier = [(CAFGroupRequest *)self uniqueIdentifier];
      v10 = [v7 stringWithFormat:@"<%@: %p %@>", v8, self, uniqueIdentifier];

      goto LABEL_7;
    }

    _currentDescriptionForFull = [(CAFGroupRequest *)self _currentDescriptionForRequests];
  }

  v10 = _currentDescriptionForFull;
LABEL_7:

  return v10;
}

- (id)_currentDescriptionForFull
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uniqueIdentifier = [(CAFGroupRequest *)self uniqueIdentifier];
  performed = [(CAFGroupRequest *)self performed];
  if (performed)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" Pending=%lu", -[CAFGroupRequest pendingGroups](self, "pendingGroups")];
  }

  else
  {
    v7 = &stru_284626CA8;
  }

  cachedRequestsDescription = [(CAFGroupRequest *)self cachedRequestsDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p %@%@ {%@}>", v4, self, uniqueIdentifier, v7, cachedRequestsDescription];

  if (performed)
  {
  }

  return v9;
}

- (id)_currentDescriptionForRequests
{
  v3 = objc_opt_new();
  requests = [(CAFGroupRequest *)self requests];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__CAFGroupRequest__currentDescriptionForRequests__block_invoke;
  v8[3] = &unk_27890F2D8;
  v9 = v3;
  v5 = v3;
  [requests enumerateKeysAndObjectsUsingBlock:v8];

  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

void __49__CAFGroupRequest__currentDescriptionForRequests__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [v5 stringWithFormat:@"%@: %lu", v6, objc_msgSend(a3, "count")];

  [v4 addObject:v7];
}

- (CAFCar)car
{
  WeakRetained = objc_loadWeakRetained(&self->_car);

  return WeakRetained;
}

- (void)initWithCar:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_231618000, v0, OS_LOG_TYPE_DEBUG, "%@", v1, 0xCu);
}

- (void)performWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 fullDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)performWithCompletion:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)performWithCompletion:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __41__CAFGroupRequest_performWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  v1 = [*(v0 + 32) description];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __41__CAFGroupRequest_performWithCompletion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_2();
  v1 = [*v0 description];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __41__CAFGroupRequest_performWithCompletion___block_invoke_26_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [v1 error];
  v3 = [v0 values];
  [v3 count];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __41__CAFGroupRequest_performWithCompletion___block_invoke_26_cold_2()
{
  OUTLINED_FUNCTION_3_2();
  v1 = [*v0 fullDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_lockedPerformBlock:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_231618000, v0, OS_LOG_TYPE_DEBUG, "%@ already performed", v1, 0xCu);
}

- (void)_addRequest:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  v3 = v0;
  _os_log_debug_impl(&dword_231618000, v1, OS_LOG_TYPE_DEBUG, "%@ forcing priority to %@", v2, 0x16u);
}

@end