@interface LSSCAService
- (LSSCAService)initWithTargetQueue:(id)queue subscriber:(id)subscriber;
- (LSSSubscriptionProvider)subscriber;
- (void)_requestGlobalFrom:(int)from enabled:;
- (void)_setExtendedDisplayLighting;
- (void)_updateDisplays;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setLightForDynamicDisplays:(id)displays;
- (void)setLightForExtendedDisplays:(id)displays;
@end

@implementation LSSCAService

- (LSSCAService)initWithTargetQueue:(id)queue subscriber:(id)subscriber
{
  queueCopy = queue;
  subscriberCopy = subscriber;
  v29.receiver = self;
  v29.super_class = LSSCAService;
  v9 = [(LSSCAService *)&v29 init];
  if (v9)
  {
    if (qword_280D2F570 == -1)
    {
      v10 = _MergedGlobals_9;
      if (!os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }
    }

    else
    {
      [LSSCAService initWithTargetQueue:subscriber:];
      v10 = _MergedGlobals_9;
      if (!os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_5:
        serverIfRunning = [MEMORY[0x277CDA018] serverIfRunning];
        if (serverIfRunning)
        {
          v12 = serverIfRunning;
          objc_storeWeak(v9 + 11, subscriberCopy);
          objc_storeStrong(v9 + 10, queue);
          array = [MEMORY[0x277CBEB18] array];
          v14 = *(v9 + 1);
          *(v9 + 1) = array;

          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v16 = *(v9 + 2);
          *(v9 + 2) = dictionary;

          objc_initWeak(buf, v9);
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __47__LSSCAService_initWithTargetQueue_subscriber___block_invoke;
          v26[3] = &unk_2798128C0;
          objc_copyWeak(&v27, buf);
          v17 = MEMORY[0x259C50010](v26);
          v18 = *(v9 + 6);
          *(v9 + 6) = v17;

          v19 = +[LSSSettings currentSettings];
          v20 = *(v9 + 7);
          *(v9 + 7) = v19;

          if ([(LSSSettings *)*(v9 + 7) dynamic])
          {
            defaults = [(LSSSettings *)*(v9 + 7) defaults];
            [defaults addObserver:v9 forKeyPath:@"lightDefaultAltitude" options:1 context:0];
          }

          *(v9 + 5) = 0x7FF8000000000000;
          [v12 addObserver:v9 forKeyPath:@"displays" options:1 context:0];
          [(LSSCAService *)v9 _updateDisplays];
          tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
          [tVOutDisplay addObserver:v9 forKeyPath:@"availableModes" options:5 context:0];

          objc_destroyWeak(&v27);
          objc_destroyWeak(buf);

          goto LABEL_9;
        }

        if (qword_280D2F570 == -1)
        {
          v24 = _MergedGlobals_9;
          if (!os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_FAULT))
          {
LABEL_12:
            v23 = 0;
            goto LABEL_13;
          }
        }

        else
        {
          [LSSCAService initWithTargetQueue:subscriber:];
          v24 = _MergedGlobals_9;
          if (!os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_12;
          }
        }

        [LSSCAService initWithTargetQueue:v24 subscriber:?];
        goto LABEL_12;
      }
    }

    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_255E8B000, v10, OS_LOG_TYPE_DEFAULT, "start", buf, 2u);
    goto LABEL_5;
  }

LABEL_9:
  v23 = v9;
LABEL_13:

  return v23;
}

void __47__LSSCAService_initWithTargetQueue_subscriber___block_invoke(uint64_t a1, int a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__LSSCAService_initWithTargetQueue_subscriber___block_invoke_2;
    v8[3] = &unk_279812898;
    v9 = v6;
    v10 = a2;
    v11 = a3;
    dispatch_async(v7, v8);
  }
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  serverIfRunning = [MEMORY[0x277CDA018] serverIfRunning];
  [serverIfRunning removeObserver:self forKeyPath:@"displays"];

  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  [tVOutDisplay removeObserver:self forKeyPath:@"availableModes"];

  globalLightRequests = self->_globalLightRequests;
  if (globalLightRequests)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = globalLightRequests;
    v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(NSMutableDictionary *)self->_globalLightRequests objectForKey:*(*(&v13 + 1) + 8 * v10)];
          [v11 invalidate];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v12.receiver = self;
  v12.super_class = LSSCAService;
  [(LSSCAService *)&v12 dealloc];
}

- (void)setLightForDynamicDisplays:(id)displays
{
  var0 = displays.var0;
  v59 = *MEMORY[0x277D85DE8];
  v5 = self->_requestedUpdateCount + 1;
  self->_requestedUpdateCount = v5;
  if ((v5 & 0x1FF) == 0)
  {
    if (qword_280D2F570 != -1)
    {
      [LSSCAService setLightForDynamicDisplays:];
      v6 = _MergedGlobals_9;
      if (!os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v6 = _MergedGlobals_9;
    if (os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_INFO))
    {
LABEL_4:
      requestedUpdateCount = self->_requestedUpdateCount;
      actualUpdateCount = self->_actualUpdateCount;
      *buf = 134218496;
      *&buf[4] = requestedUpdateCount;
      *&buf[12] = 2048;
      *&buf[14] = actualUpdateCount;
      *&buf[22] = 2048;
      *&buf[24] = actualUpdateCount / requestedUpdateCount;
      _os_log_impl(&dword_255E8B000, v6, OS_LOG_TYPE_INFO, "update filter. requested: %lu. actual: %lu. percentage: %g", buf, 0x20u);
    }
  }

LABEL_5:
  if (([(LSSSettings *)self->_settings dynamic]& 1) != 0 || (*&self->_alignmentRange & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v9 = [(LSSSettings *)self->_settings doubleForKey:?];
    self->_alignmentRange = sin(v9 * 3.14159265 / 180.0);
  }

  v10 = *(*&var0 + 48);
  v55 = *(*&var0 + 32);
  v56 = v10;
  v11 = *(*&var0 + 80);
  v57 = *(*&var0 + 64);
  v58 = v11;
  v12 = *(*&var0 + 16);
  *buf = **&var0;
  *&buf[16] = v12;
  v13 = LSSCAParamsMake(buf);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  params = self->_params;
  if (!params)
  {
    v21 = objc_alloc_init(LSSCAParamsDictionary);
    v22 = self->_params;
    self->_params = v21;

    params = self->_params;
  }

  [(LSSCAParamsDictionary *)params params];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = *(*&var0 + 84);
  if (v30)
  {
    if (v30 == 1)
    {
      v31 = 0.06;
      v32 = 0.02;
      *&v33 = 0.05;
    }

    else
    {
      v31 = 0.0065;
      v32 = 0.003;
      *&v33 = 0.008;
    }

    v34 = *&v33;
  }

  else
  {
    v34 = 0.0;
    v32 = 0.0;
    v31 = 0.0;
  }

  if (!LSSCAParamsAlmostEqual(v13, v15, v17, v19, v25, v27, v29, v23, v31, v32, v34, 0.0))
  {
    *&v35 = v13;
    *&v36 = v15;
    *&v37 = v17;
    *&v38 = v19;
    [(LSSCAParamsDictionary *)self->_params setParams:v35, v36, v37, v38];
    ++self->_actualUpdateCount;
    serverIfRunning = [MEMORY[0x277CDA018] serverIfRunning];
    v40 = serverIfRunning;
    if (!serverIfRunning)
    {
      goto LABEL_33;
    }

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __43__LSSCAService_setLightForDynamicDisplays___block_invoke;
    v52[3] = &unk_2798128E8;
    v52[4] = self;
    [serverIfRunning lss_filterDisplays:v52 into:self->_displaysToUpdate];
    if (![(NSMutableArray *)self->_displaysToUpdate count])
    {
      goto LABEL_33;
    }

    if (qword_280D2F570 == -1)
    {
      v41 = _MergedGlobals_9;
      if (!os_signpost_enabled(_MergedGlobals_9))
      {
        goto LABEL_22;
      }
    }

    else
    {
      [LSSCAService initWithTargetQueue:subscriber:];
      v41 = _MergedGlobals_9;
      if (!os_signpost_enabled(_MergedGlobals_9))
      {
LABEL_22:
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v42 = self->_displaysToUpdate;
        v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v49;
          do
          {
            for (i = 0; i != v44; ++i)
            {
              if (*v49 != v45)
              {
                objc_enumerationMutation(v42);
              }

              [*(*(&v48 + 1) + 8 * i) setGlobalLightParameters:self->_params];
            }

            v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v48 objects:v53 count:16];
          }

          while (v44);
        }

        if (qword_280D2F570 == -1)
        {
          v47 = _MergedGlobals_9;
          if (!os_signpost_enabled(_MergedGlobals_9))
          {
LABEL_32:
            [(NSMutableArray *)self->_displaysToUpdate removeAllObjects];
LABEL_33:

            return;
          }
        }

        else
        {
          [LSSCAService initWithTargetQueue:subscriber:];
          v47 = _MergedGlobals_9;
          if (!os_signpost_enabled(_MergedGlobals_9))
          {
            goto LABEL_32;
          }
        }

        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_255E8B000, v47, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ca update", &unk_255E9DB2B, buf, 2u);
        goto LABEL_32;
      }
    }

    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_255E8B000, v41, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ca update", &unk_255E9DB2B, buf, 2u);
    goto LABEL_22;
  }
}

BOOL __43__LSSCAService_setLightForDynamicDisplays___block_invoke(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a2, "displayId")}];
  v4 = [*(*(a1 + 32) + 16) objectForKey:v3];
  v5 = v4 != 0;

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"availableModes"])
  {
    v10 = [changeCopy valueForKeyPath:*MEMORY[0x277CCA2F0]];
    if ([v10 count])
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__LSSCAService_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_279812748;
      block[4] = self;
      dispatch_async(queue, block);
LABEL_9:

      goto LABEL_10;
    }

    if (qword_280D2F570 == -1)
    {
      v13 = _MergedGlobals_9;
      if (!os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    else
    {
      [LSSCAService setLightForDynamicDisplays:];
      v13 = _MergedGlobals_9;
      if (!os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_255E8B000, v13, OS_LOG_TYPE_DEFAULT, "display extension disabled", buf, 2u);
    goto LABEL_9;
  }

  if ([pathCopy isEqualToString:@"displays"])
  {
    v12 = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__LSSCAService_observeValueForKeyPath_ofObject_change_context___block_invoke_18;
    v14[3] = &unk_279812748;
    v14[4] = self;
    dispatch_async(v12, v14);
  }

LABEL_10:
}

- (LSSSubscriptionProvider)subscriber
{
  WeakRetained = objc_loadWeakRetained(&self->_subscriber);

  return WeakRetained;
}

- (void)_requestGlobalFrom:(int)from enabled:
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (qword_280D2F570 != -1)
    {
      dispatch_once(&qword_280D2F570, &__block_literal_global_9);
    }

    v6 = _MergedGlobals_9;
    if (os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109376;
      v13[1] = a2;
      v14 = 1024;
      fromCopy = from;
      _os_log_impl(&dword_255E8B000, v6, OS_LOG_TYPE_DEFAULT, "changing global light: %u, %d", v13, 0xEu);
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    v8 = [*(self + 16) objectForKey:v7];
    v9 = v8;
    v10 = from ^ 1;
    if (((from ^ 1) & 1) != 0 || v8)
    {
      if (!v8)
      {
        v10 = 0;
      }

      if (v10 == 1)
      {
        [*(self + 16) removeObjectForKey:v7];
        [v9 invalidate];
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((self + 88));
      v12 = [WeakRetained addAssertion:100 reason:@"CoreAnimation"];

      [*(self + 16) setObject:v12 forKey:v7];
    }
  }
}

- (void)_updateDisplays
{
  v34 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (qword_280D2F570 != -1)
    {
      dispatch_once(&qword_280D2F570, &__block_literal_global_9);
    }

    v2 = _MergedGlobals_9;
    if (os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255E8B000, v2, OS_LOG_TYPE_DEFAULT, "displays changed", buf, 2u);
    }

    serverIfRunning = [MEMORY[0x277CDA018] serverIfRunning];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    displays = [serverIfRunning displays];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = [displays countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(displays);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          if (([v10 displayType] | 2) == 2)
          {
            [v10 setNeedsGlobalLightCallback:*(self + 48)];
            v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "displayId")}];
            v12 = [*(self + 16) objectForKey:v11];
            if (v12)
            {
              [dictionary setObject:v12 forKey:v11];
            }
          }
        }

        v7 = [displays countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v7);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = *(self + 16);
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * j);
          v19 = [dictionary objectForKey:{v18, v23}];

          if (!v19)
          {
            v20 = [*(self + 16) objectForKey:v18];
            [v20 invalidate];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v15);
    }

    v21 = *(self + 16);
    *(self + 16) = dictionary;
    v22 = dictionary;

    [*(self + 24) setParams:{0.0, 0.0, 0.0, 0.0}];
  }
}

- (void)_setExtendedDisplayLighting
{
  v29 = *MEMORY[0x277D85DE8];
  if (self)
  {
    serverIfRunning = [MEMORY[0x277CDA018] serverIfRunning];
    v3 = serverIfRunning;
    if (serverIfRunning && *(self + 32))
    {
      lss_extendedDisplays = [serverIfRunning lss_extendedDisplays];
      if ([lss_extendedDisplays count])
      {
        if (qword_280D2F570 != -1)
        {
          dispatch_once(&qword_280D2F570, &__block_literal_global_9);
        }

        v5 = _MergedGlobals_9;
        if (os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_255E8B000, v5, OS_LOG_TYPE_DEFAULT, "extended display update", buf, 2u);
        }

        if (qword_280D2F570 != -1)
        {
          dispatch_once(&qword_280D2F570, &__block_literal_global_9);
        }

        v6 = _MergedGlobals_9;
        if (os_signpost_enabled(_MergedGlobals_9))
        {
          *buf = 0;
          OUTLINED_FUNCTION_1_2();
          _os_signpost_emit_with_name_impl(v7, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, v9, v10, v11, 2u);
        }

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v12 = lss_extendedDisplays;
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(&v23 + 1) + 8 * i) setGlobalLightParameters:{*(self + 32), v23}];
            }

            v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
          }

          while (v14);
        }

        if (qword_280D2F570 != -1)
        {
          dispatch_once(&qword_280D2F570, &__block_literal_global_9);
        }

        v17 = _MergedGlobals_9;
        if (os_signpost_enabled(_MergedGlobals_9))
        {
          *buf = 0;
          OUTLINED_FUNCTION_1_2();
          _os_signpost_emit_with_name_impl(v18, v17, OS_SIGNPOST_INTERVAL_END, v19, v20, v21, v22, 2u);
        }
      }
    }
  }
}

- (void)setLightForExtendedDisplays:(id)displays
{
  var0 = displays.var0;
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_extendedParams)
  {
    v5 = objc_alloc_init(LSSCAParamsDictionary);
    extendedParams = self->_extendedParams;
    self->_extendedParams = v5;
  }

  if (([(LSSSettings *)self->_settings dynamic]& 1) != 0 || (OUTLINED_FUNCTION_0_2(), v7 == v8))
  {
    v9 = [(LSSSettings *)self->_settings doubleForKey:?];
    self->_alignmentRange = sin(v9 * 3.14159265 / 180.0);
  }

  memcpy(v11, *&var0, 0x60uLL);
  *&v10 = LSSCAParamsMake(v11);
  [(LSSCAParamsDictionary *)self->_extendedParams setParams:v10];
  [(LSSCAService *)self _setExtendedDisplayLighting];
}

@end