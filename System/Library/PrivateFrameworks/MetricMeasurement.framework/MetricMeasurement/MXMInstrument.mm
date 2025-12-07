@interface MXMInstrument
+ (MXMInstrument)activeInstrument;
+ (MXMInstrument)instrumentWithInstrumentals:(id)instrumentals;
- (BOOL)active;
- (BOOL)startWithError:(id *)error;
- (MXMInstrument)initWithInstrumentals:(id)instrumentals;
- (id)_defaultValueWithOption:(id)option;
- (id)_makeInstrumentalsForIteration:(id)iteration shouldCopy:(BOOL)copy;
- (id)_transitionWithState:(unint64_t)state iteration:(id *)iteration instrumentals:(id)instrumentals;
- (id)_validOptionKeys;
- (id)_valueWithOption:(id)option userOptions:(id)options;
- (id)measureAutomatically:(unint64_t)automatically options:(id)options block:(id)block;
- (id)stopWithError:(id *)error;
- (void)_makePerfDataFromMXMResults:(id)results testName:(id)name;
- (void)_prepareIteration:(id *)iteration options:(id)options instrumentals:(id)instrumentals errors:(id)errors;
- (void)_setupAndRunWithIteration:(id *)iteration spawnThread:(BOOL)thread attrs:(_opaque_pthread_attr_t *)attrs pthread:(_opaque_pthread_t *)pthread returnCode:(unint64_t *)code;
- (void)dealloc;
- (void)setActive:(BOOL)active;
@end

@implementation MXMInstrument

+ (MXMInstrument)activeInstrument
{
  WeakRetained = objc_loadWeakRetained(&_activeInstrument);

  return WeakRetained;
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  obj = objc_loadWeakRetained(&_activeInstrument);
  objc_sync_enter(obj);
  WeakRetained = objc_loadWeakRetained(&_activeInstrument);

  if (activeCopy)
  {
    if (!WeakRetained)
    {
      goto LABEL_6;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MXMInstrument.m" lineNumber:101 description:@"Cannot activate instrument while another is already active."];
  }

  else
  {
    if (WeakRetained == self)
    {
      self = 0;
      goto LABEL_6;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MXMInstrument.m" lineNumber:105 description:@"Cannot deactivate the instrument if the active instrument is not self."];
    self = 0;
  }

LABEL_6:
  objc_storeWeak(&_activeInstrument, self);
  objc_sync_exit(obj);
}

- (BOOL)active
{
  WeakRetained = objc_loadWeakRetained(&_activeInstrument);
  objc_sync_enter(WeakRetained);
  v4 = objc_loadWeakRetained(&_activeInstrument);
  LOBYTE(self) = v4 == self;

  objc_sync_exit(WeakRetained);
  return self;
}

+ (MXMInstrument)instrumentWithInstrumentals:(id)instrumentals
{
  instrumentalsCopy = instrumentals;
  v5 = [[self alloc] initWithInstrumentals:instrumentalsCopy];

  return v5;
}

- (MXMInstrument)initWithInstrumentals:(id)instrumentals
{
  instrumentalsCopy = instrumentals;
  v13.receiver = self;
  v13.super_class = MXMInstrument;
  v6 = [(MXMInstrument *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_instrumentals, instrumentals);
    v8 = dispatch_queue_create("com.apple.metricmeasurement.instrument.instrumentals", MEMORY[0x277D85CD8]);
    instrumentalsQueue = v7->_instrumentalsQueue;
    v7->_instrumentalsQueue = v8;
  }

  instrumentals = [(MXMInstrument *)v7 instrumentals];
  v11 = [instrumentals count];

  if (!v11)
  {
    [MXMInstrument initWithInstrumentals:];
  }

  return v7;
}

- (void)_prepareIteration:(id *)iteration options:(id)options instrumentals:(id)instrumentals errors:(id)errors
{
  v34 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  instrumentalsCopy = instrumentals;
  val = errors;
  v9 = dispatch_group_create();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = instrumentalsCopy;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = objc_initWeak(&location, v14);
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          objc_initWeak(&from, val);
          instrumentalsQueue = [(MXMInstrument *)self instrumentalsQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __64__MXMInstrument__prepareIteration_options_instrumentals_errors___block_invoke;
          block[3] = &unk_2798C98B0;
          objc_copyWeak(&v25, &location);
          v24 = optionsCopy;
          objc_copyWeak(&v26, &from);
          dispatch_group_async(v9, instrumentalsQueue, block);

          objc_destroyWeak(&v26);
          objc_destroyWeak(&v25);
          objc_destroyWeak(&from);
        }

        objc_destroyWeak(&location);
      }

      v11 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v18 = dispatch_time(0, 10000000000);
  dispatch_group_wait(v9, v18);
  iteration->var4 = 1;
}

void __64__MXMInstrument__prepareIteration_options_instrumentals_errors___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v6 = 0;
  [WeakRetained prepareWithOptions:v3 error:&v6];
  v4 = v6;

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    [v5 addObject:v4];
  }
}

- (void)_setupAndRunWithIteration:(id *)iteration spawnThread:(BOOL)thread attrs:(_opaque_pthread_attr_t *)attrs pthread:(_opaque_pthread_t *)pthread returnCode:(unint64_t *)code
{
  threadCopy = thread;
  v69 = *MEMORY[0x277D85DE8];
  if (!iteration)
  {
    [MXMInstrument _setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:];
  }

  if (iteration->var3)
  {
    if (iteration->var4)
    {
LABEL_5:
      [MXMInstrument _setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:];
      goto LABEL_8;
    }
  }

  else
  {
    if (!iteration->var4)
    {
      v52 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MXMInstrumentErrorDomain" reason:@"Iteration is uninitialized." userInfo:0];
      objc_exception_throw(v52);
    }

    if (iteration->var4)
    {
      goto LABEL_8;
    }
  }

  if (![MXMInstrument _setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:])
  {
    goto LABEL_5;
  }

LABEL_8:
  iteration->var4 = 1;
  iteration->var3 = 1;
  if (!threadCopy)
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v12 = iteration->var14;
    if (iteration->var20 != 0.0 && iteration->var21 != 0.0)
    {
      v13 = +[MXMProxyServiceManager shared];
      var20 = iteration->var20;
      var21 = iteration->var21;
      *&v63 = MEMORY[0x277D85DD0];
      *(&v63 + 1) = 3221225472;
      v64 = __MXMQuiesceBeforeIteration_block_invoke;
      v65 = &unk_2798C9900;
      v66 = v12;
      v67 = &v59;
      [v13 _quiesceBeforeIteration:&v63 timeout:var20 response:var21];
    }

    v16 = v60[3];
    _Block_object_dispose(&v59, 8);
    if (v16 == 6)
    {
      *code = 6;
      return;
    }

    v54 = iteration->var22;
    v18 = _MXMGetLog(v54, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v63) = 138412290;
      *(&v63 + 4) = v54;
      _os_log_impl(&dword_258DAA000, v18, OS_LOG_TYPE_DEBUG, "Attempting to uncache before iteration with config: %@", &v63, 0xCu);
    }

    if (iteration->var22 && [v54 count])
    {
      v18 = +[MXMProxyServiceManager shared];
      [v18 _uncacheBeforeIteration:v54 response:&__block_literal_global_5];
    }

    v53 = iteration->var23;
    v20 = _MXMGetLog(v53, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v63) = 138412290;
      *(&v63 + 4) = v53;
      _os_log_impl(&dword_258DAA000, v20, OS_LOG_TYPE_DEBUG, "Attempting to terminate before iteration with config: %@", &v63, 0xCu);
    }

    if (iteration->var23 && [v53 count])
    {
      v21 = +[MXMProxyServiceManager shared];
      [v21 _terminateProcessesBeforeIteration:v53 response:&__block_literal_global_275];
    }

    v22 = iteration->var19;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 1;
    if (iteration->var18)
    {
      v23 = +[MXMProxyServiceManager shared];
      *&v63 = MEMORY[0x277D85DD0];
      *(&v63 + 1) = 3221225472;
      v64 = __MXMStartPerformanceTraceCollection_block_invoke;
      v65 = &unk_2798C9948;
      v66 = &v59;
      [v23 _startPerformanceTrace:v22 response:&v63];

      if (v60[3] == 1)
      {
        if (!v22 || ([v22 objectForKeyedSubscript:@"requiredForTestContinuation"], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v24 = [v22 objectForKeyedSubscript:@"requiredForTestContinuation"];
          bOOLValue = [v24 BOOLValue];

          if (v22)
          {

            if ((bOOLValue & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else if (!bOOLValue)
          {
            goto LABEL_35;
          }
        }

        [iteration->var14 setActive:0];
        v37 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MXMInstrumentErrorDomain" reason:@"Unable to start performance trace collection. See error logs for more detail." userInfo:0];
        objc_exception_throw(v37);
      }
    }

LABEL_35:
    v26 = v60[3];
    _Block_object_dispose(&v59, 8);

    v27 = iteration->var25;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 1;
    if (iteration->var24)
    {
      v28 = +[MXMProxyServiceManager shared];
      *&v63 = MEMORY[0x277D85DD0];
      *(&v63 + 1) = 3221225472;
      v64 = __MXMStartFunctionCoverageCollection_block_invoke;
      v65 = &unk_2798C9970;
      v66 = &v59;
      [v28 _startFunctionCoverageCollection:v27 response:&v63];

      if (v60[3] == 1)
      {
        if (v27)
        {
          v28 = [v27 objectForKeyedSubscript:@"requiredForTestContinuation"];
          if (!v28)
          {
            goto LABEL_49;
          }
        }

        v29 = [v27 objectForKeyedSubscript:@"requiredForTestContinuation"];
        bOOLValue2 = [v29 BOOLValue];

        if (v27)
        {

          if ((bOOLValue2 & 1) == 0)
          {
            goto LABEL_41;
          }

LABEL_49:
          [iteration->var14 setActive:0];
          v38 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MXMInstrumentErrorDomain" reason:@"Unable to start function coverage collection. See error logs for more detail." userInfo:0];
          objc_exception_throw(v38);
        }

        if (bOOLValue2)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_41:
    v31 = v60[3];
    _Block_object_dispose(&v59, 8);

    *code = MXMRunBlockIteration(iteration, v32);
    if (!v26)
    {
      v33 = v22;
      v59 = 0;
      v60 = &v59;
      v61 = 0x2020000000;
      v62 = 0;
      v34 = iteration->var14;
      v35 = +[MXMProxyServiceManager shared];
      *&v63 = MEMORY[0x277D85DD0];
      *(&v63 + 1) = 3221225472;
      v64 = __MXMStopPerformanceTraceCollection_block_invoke;
      v65 = &unk_2798C9998;
      v36 = v34;
      v66 = v36;
      v67 = &v59;
      [v35 _stopPerformanceTrace:&v63];

      if (v60[3] == 3)
      {
        if (v33)
        {
          v18 = [v33 objectForKeyedSubscript:@"requiredForTestContinuation"];
          if (!v18)
          {
LABEL_63:
            [v36 setActive:0];
            v47 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MXMInstrumentErrorDomain" reason:@"Unable to collect performance trace. See error logs for more detail." userInfo:0];
            objc_exception_throw(v47);
          }
        }

        v39 = [v33 objectForKeyedSubscript:@"requiredForTestContinuation"];
        bOOLValue3 = [v39 BOOLValue];

        if (v33)
        {

          if (bOOLValue3)
          {
            goto LABEL_63;
          }
        }

        else if (bOOLValue3)
        {
          goto LABEL_63;
        }
      }

      _Block_object_dispose(&v59, 8);
    }

    if (v31)
    {
LABEL_60:

      return;
    }

    v41 = v27;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v42 = iteration->var14;
    v43 = +[MXMProxyServiceManager shared];
    *&v63 = MEMORY[0x277D85DD0];
    *(&v63 + 1) = 3221225472;
    v64 = __MXMStopFunctionCoverageCollection_block_invoke;
    v65 = &unk_2798C99C0;
    v44 = v42;
    v66 = v44;
    v67 = &v59;
    v68 = &v55;
    [v43 _stopFunctionCoverageCollection:&v63];

    if (v60[3] == 3)
    {
      if (!v41 || ([v41 objectForKeyedSubscript:@"requiredForTestContinuation"], (v43 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v45 = [v41 objectForKeyedSubscript:@"requiredForTestContinuation"];
        bOOLValue4 = [v45 BOOLValue];

        if (v41)
        {

          if ((bOOLValue4 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        else if (!bOOLValue4)
        {
          goto LABEL_59;
        }
      }

      [v44 setActive:0];
      v48 = MEMORY[0x277CBEAD8];
      v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to stop and post process function coverage. See error logs for more detail. %d", *(v56 + 6)];
      v50 = [v48 exceptionWithName:@"MXMInstrumentErrorDomain" reason:v49 userInfo:0];
      v51 = v50;

      objc_exception_throw(v50);
    }

LABEL_59:

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v59, 8);

    goto LABEL_60;
  }

  *&v63 = 0;
  if (!iteration->var16)
  {
    [MXMInstrument _setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:];
  }

  if (pthread_create(&v63, attrs, MXMRunBlockIteration, iteration))
  {
    [MXMInstrument _setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:];
  }

  else if (pthread)
  {
    *pthread = v63;
  }
}

- (id)_transitionWithState:(unint64_t)state iteration:(id *)iteration instrumentals:(id)instrumentals
{
  v30 = *MEMORY[0x277D85DE8];
  instrumentalsCopy = instrumentals;
  if (!state)
  {
    [MXMInstrument _transitionWithState:iteration:instrumentals:];
  }

  if (!iteration->var4)
  {
    [MXMInstrument _transitionWithState:iteration:instrumentals:];
  }

  if (!iteration->var3 && !iteration->var4)
  {
    [MXMInstrument _transitionWithState:iteration:instrumentals:];
  }

  if (state == 2)
  {
    v9 = 40;
    goto LABEL_12;
  }

  if (state == 4)
  {
    v9 = 48;
LABEL_12:
    v21 = *(&iteration->var0 + v9);
    goto LABEL_14;
  }

  v21 = 0;
LABEL_14:
  if (state == 2)
  {
    v10 = 56;
  }

  else
  {
    if (state != 4)
    {
      v11 = 0;
      goto LABEL_20;
    }

    v10 = 64;
  }

  v11 = *(&iteration->var0 + v10);
LABEL_20:
  stateCopy = state;
  if ((state & 0xFFFFFFFFFFFFFFFDLL) != 1 && !v21)
  {
    [MXMInstrument _transitionWithState:iteration:instrumentals:];
  }

  v13 = dispatch_group_create();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = instrumentalsCopy;
  v14 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v14)
  {
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(obj);
        }

        objc_initWeak(&location, *(*(&v24 + 1) + 8 * i));
        instrumentalsQueue = [(MXMInstrument *)self instrumentalsQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke;
        block[3] = &unk_2798C98D8;
        v23[1] = stateCopy;
        objc_copyWeak(v23, &location);
        v23[3] = iteration;
        v23[4] = a2;
        v23[2] = v21;
        block[4] = self;
        v23[5] = v11;
        dispatch_group_async(v13, instrumentalsQueue, block);

        objc_destroyWeak(v23);
        objc_destroyWeak(&location);
      }

      v14 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v14);
  }

  return v13;
}

void __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        return;
      }

      v16 = objc_loadWeakRetained((a1 + 40));
      [v16 willStop];
      goto LABEL_27;
    }

    if (v2 != 4)
    {
      return;
    }

    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v16 = *(*(a1 + 64) + 80);
      if (!v16)
      {
        __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_4();
      }

      v5 = objc_loadWeakRetained((a1 + 40));
      [v5 didStopAtContinuousTime:*(a1 + 80) absoluteTime:*(a1 + 56) stopDate:v16];
    }

    else
    {
      v14 = objc_loadWeakRetained((a1 + 40));
      v15 = objc_opt_respondsToSelector();

      if ((v15 & 1) == 0)
      {
        return;
      }

      v16 = *(*(a1 + 64) + 80);
      if (!v16)
      {
        __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_3();
      }

      v5 = objc_loadWeakRetained((a1 + 40));
      [v5 didStopAtTime:*(a1 + 56) stopDate:v16];
    }
  }

  else
  {
    if (v2 == 1)
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      v9 = objc_opt_respondsToSelector();

      if ((v9 & 1) == 0)
      {
        return;
      }

      v16 = objc_loadWeakRetained((a1 + 40));
      [v16 willStartAtEstimatedTime:*(a1 + 56)];
      goto LABEL_27;
    }

    if (v2 != 2)
    {
      return;
    }

    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v16 = *(*(a1 + 64) + 72);
      if (!v16)
      {
        __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_2();
      }

      v5 = objc_loadWeakRetained((a1 + 40));
      [v5 didStartAtContinuousTime:*(a1 + 80) absoluteTime:*(a1 + 56) startDate:v16];
    }

    else
    {
      v12 = objc_loadWeakRetained((a1 + 40));
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        return;
      }

      v16 = *(*(a1 + 64) + 72);
      if (!v16)
      {
        __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_1();
      }

      v5 = objc_loadWeakRetained((a1 + 40));
      [v5 didStartAtTime:*(a1 + 56) startDate:v16];
    }
  }

LABEL_27:
}

- (BOOL)startWithError:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  if ([(MXMInstrument *)self active]&& [(MXMInstrument *)self currentIteration]&& [(MXMInstrument *)self currentIteration][152])
  {
    currentIteration = [(MXMInstrument *)self currentIteration];
LABEL_17:
    currentIteration->var3 = 1;
    currentIteration->var4 = 1;
    array = [(MXMInstrument *)self _transitionWithState:1 iteration:currentIteration instrumentals:currentIteration->var15];
    dispatch_group_wait(array, 0xFFFFFFFFFFFFFFFFLL);
    v23 = 0;
    thread_selfcounts();
    currentIteration->var7 = mach_continuous_time();
    currentIteration->var5 = mach_absolute_time();
    date = [MEMORY[0x277CBEAA8] date];
    currentIteration->var9 = date;
    currentIteration->var11 = v23;
    v20 = _MXMGetInstrumentsLog(date, v19);
    if (os_signpost_enabled(v20))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&dword_258DAA000, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Instrument_Iteration_User_Work", "isAnimation=YES ", v22, 2u);
    }

    v8 = 1;
    goto LABEL_20;
  }

  if (![(MXMInstrument *)self active]&& ![(MXMInstrument *)self currentIteration])
  {
    v9 = malloc_type_malloc(0xE0uLL, 0x1080040BB297B25uLL);
    self->_currentIteration = v9;
    *(v9 + 3) = 0;
    v9[32] = 0;
    *(v9 + 4) = 0;
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 5) = 0;
    *(v9 + 6) = 0;
    *(v9 + 9) = 0;
    *(v9 + 10) = 0;
    *(v9 + 15) = 3;
    *(v9 + 27) = 0;
    *(v9 + 8) = 0u;
    *(v9 + 9) = 0u;
    v9[160] = 0;
    *(v9 + 168) = 0u;
    *(v9 + 184) = 0u;
    *(v9 + 193) = 0u;
    currentIteration = self->_currentIteration;
    if (currentIteration->var3 || currentIteration->var4)
    {
      [MXMInstrument startWithError:];
    }

    [(MXMInstrument *)self setActive:1];
    currentIteration = [(MXMInstrument *)self currentIteration];
    array = [MEMORY[0x277CBEB18] array];
    instrumentals = [(MXMInstrument *)self instrumentals];
    v12 = [(MXMInstrument *)self _makeInstrumentalsForIteration:instrumentals shouldCopy:0];
    instrumentals = self->_instrumentals;
    self->_instrumentals = v12;

    instrumentals2 = [(MXMInstrument *)self instrumentals];
    [(MXMInstrument *)self _prepareIteration:currentIteration options:0 instrumentals:instrumentals2 errors:array];

    currentIteration->var2 = MEMORY[0x259C9CA80]();
    *&currentIteration->var0 = xmmword_258DC9E20;
    currentIteration->var14 = self;
    instrumentals3 = [(MXMInstrument *)self instrumentals];
    currentIteration->var15 = [(MXMInstrument *)self _makeInstrumentalsForIteration:instrumentals3 shouldCopy:0];

    if ([array count])
    {
      if (error)
      {
        v16 = MEMORY[0x277CCA9B8];
        v26 = *MEMORY[0x277CCA068];
        v27[0] = @"Failed to prepare all instrumentals.";
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
        *error = [v16 errorWithDomain:@"MXMInstrumentErrorDomain" code:1 userInfo:v17];
      }

      v8 = 0;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (error)
  {
    v6 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA068];
    v25 = @"Cannot start. Instrument already active.";
    array = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v6 errorWithDomain:@"MXMInstrumentErrorDomain" code:1 userInfo:array];
    *error = v8 = 0;
LABEL_20:

    return v8;
  }

  return 0;
}

- (id)stopWithError:(id *)error
{
  v41[1] = *MEMORY[0x277D85DE8];
  v6 = _MXMGetInstrumentsLog(self, a2);
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_258DAA000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Instrument_Iteration_User_Work", "isAnimation=YES ", buf, 2u);
  }

  memset(buf, 0, sizeof(buf));
  thread_selfcounts();
  v7 = mach_absolute_time();
  v8 = mach_continuous_time();
  date = [MEMORY[0x277CBEAA8] date];
  if ([(MXMInstrument *)self active])
  {
    v10 = [(MXMInstrument *)self currentIteration][16];
    if (v10 != MEMORY[0x259C9CA80]())
    {
      [MXMInstrument stopWithError:];
    }

    currentIteration = [(MXMInstrument *)self currentIteration];
    currentIteration->var12 = *buf;
    currentIteration->var8 = v8;
    currentIteration->var6 = v7;
    v31 = date;
    currentIteration->var10 = date;
    currentIteration->var3 = 2;
    currentIteration->var4 = 1;
    v12 = [(MXMInstrument *)self _transitionWithState:2 iteration:currentIteration instrumentals:currentIteration->var15];
    v13 = dispatch_time(0, 1000000000);
    dispatch_group_wait(v12, v13);
    v14 = [(MXMInstrument *)self _transitionWithState:3 iteration:currentIteration instrumentals:currentIteration->var15];
    v29 = [(MXMInstrument *)self _transitionWithState:4 iteration:currentIteration instrumentals:currentIteration->var15];
    dispatch_group_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
    v30 = v14;
    dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    v15 = objc_alloc_init(MXMMutableSampleData);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = currentIteration->var15;
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          v32 = 0;
          v33 = 0;
          [v21 harvestData:&v33 error:&v32];
          v22 = v33;
          v23 = v32;
          v24 = v23;
          if (v22)
          {
            v25 = v23 == 0;
          }

          else
          {
            v25 = 0;
          }

          if (!v25)
          {
            [MXMInstrument stopWithError:];
          }

          [(MXMMutableSampleData *)v15 appendData:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v18);
    }

    var17 = currentIteration->var17;
    if (var17)
    {
      [*var17 setObject:v15 atIndexedSubscript:currentIteration->var0];
    }

    else
    {
      CFRelease(currentIteration->var15);
      CFRelease(currentIteration->var9);
      [(MXMInstrument *)self setActive:0];
      free([(MXMInstrument *)self currentIteration]);
      [(MXMInstrument *)self setCurrentIteration:0];
    }

    date = v31;

    goto LABEL_24;
  }

  if (error)
  {
    v27 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA068];
    v41[0] = @"Cannot stop. Instrument is inactive.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    [v27 errorWithDomain:@"MXMInstrumentErrorDomain" code:1 userInfo:v12];
    *error = v15 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v15 = 0;
LABEL_25:

  return v15;
}

- (id)measureAutomatically:(unint64_t)automatically options:(id)options block:(id)block
{
  automaticallyCopy = automatically;
  v84 = a2;
  v113 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  blockCopy = block;
  if (!blockCopy)
  {
    [MXMInstrument measureAutomatically:options:block:];
  }

  if ([(MXMInstrument *)self active])
  {
    [MXMInstrument measureAutomatically:options:block:];
  }

  v9 = MEMORY[0x277CBEB98];
  allKeys = [optionsCopy allKeys];
  v11 = [v9 setWithArray:allKeys];
  selfCopy = self;
  _validOptionKeys = [(MXMInstrument *)self _validOptionKeys];
  v13 = [v11 isSubsetOfSet:_validOptionKeys];

  if ((v13 & 1) == 0)
  {
    v79 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MXMInstrument" reason:@"Invalid options" userInfo:0];
    objc_exception_throw(v79);
  }

  v14 = [optionsCopy objectForKeyedSubscript:@"com.apple.metricmeasurement.instrument.options.ThreadId"];

  if (v14)
  {
    [MXMInstrument measureAutomatically:options:block:];
  }

  v15 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.IterationCount" userOptions:optionsCopy];
  unsignedIntegerValue = [v15 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    [MXMInstrument measureAutomatically:options:block:];
  }

  v17 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.PerformanceTraceEnabled" userOptions:optionsCopy];
  bOOLValue = [v17 BOOLValue];

  v85 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.PerformanceTraceConfigurations" userOptions:optionsCopy];
  v18 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.PerfdataEnabled" userOptions:optionsCopy];
  bOOLValue2 = [v18 BOOLValue];

  v83 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.PerfdataTestName" userOptions:optionsCopy];
  v19 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.QuiesceCpuIdlePercent" userOptions:optionsCopy];
  [v19 doubleValue];
  v21 = v20;

  v22 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.QuiesceCpuIdleTimeLimit" userOptions:optionsCopy];
  [v22 doubleValue];
  v24 = v23;

  v25 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.SkipMetricMeasurement" userOptions:optionsCopy];
  bOOLValue3 = [v25 BOOLValue];

  v95 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.UncacheBetweenIterations" userOptions:optionsCopy];
  v94 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.TerminateProcessBetweenIterations" userOptions:optionsCopy];
  v27 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.FunctionCoverageEnabled" userOptions:optionsCopy];
  bOOLValue4 = [v27 BOOLValue];

  v28 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.FunctionCoverageConfiguration" userOptions:optionsCopy];
  v89 = v28;
  if (bOOLValue3)
  {
    v30 = _MXMGetLog(v28, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf.__sig) = 0;
      _os_log_impl(&dword_258DAA000, v30, OS_LOG_TYPE_DEBUG, "Skipping metric measurement as SkipMetricMeasurement was set to true.", &buf, 2u);
    }
  }

  if (bOOLValue && [v85 count])
  {
    v31 = [v85 count];
  }

  else
  {
    v31 = bOOLValue;
  }

  v32 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.ScheduleKickOffOnNewThread" userOptions:optionsCopy];
  bOOLValue5 = [v32 BOOLValue];

  v34 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.EnableThreadParallelization" userOptions:optionsCopy];
  bOOLValue6 = [v34 BOOLValue];

  if (bOOLValue6 & bOOLValue5 & 1) == 0 && (bOOLValue5)
  {
    [MXMInstrument measureAutomatically:options:block:];
  }

  v88 = blockCopy;
  if (bOOLValue6)
  {
    v36 = unsignedIntegerValue;
  }

  else
  {
    v36 = bOOLValue5 & 1;
  }

  if ((((automaticallyCopy & 3) != 0) & bOOLValue5) == 1)
  {
    [MXMInstrument measureAutomatically:options:block:];
  }

  array = [MEMORY[0x277CBEB18] array];
  v80[1] = v80;
  v81 = objc_autoreleasePoolPush();
  MEMORY[0x28223BE20]();
  v37 = (8 * unsignedIntegerValue + 15) & 0xFFFFFFFFFFFFFFF0;
  if (8 * unsignedIntegerValue >= 0x200)
  {
    v38 = 512;
  }

  else
  {
    v38 = 8 * unsignedIntegerValue;
  }

  v100 = v80 - v37;
  bzero(v80 - v37, v38);
  if (bOOLValue5)
  {
    v39 = 8 * v36;
    v93 = malloc_type_malloc(v39, 0x2004093837F09uLL);
    bzero(v93, v39);
  }

  else
  {
    v93 = 0;
  }

  MEMORY[0x28223BE20]();
  v99 = v80 - v37;
  memset(v80 - v37, 255, 8 * unsignedIntegerValue);
  v40 = selfCopy;
  [(MXMInstrument *)selfCopy setActive:1];
  v41 = v88;
  if (unsignedIntegerValue)
  {
    v96 = unsignedIntegerValue;
    v97 = bOOLValue5;
    v91 = 0;
    v42 = 0;
    v43 = unsignedIntegerValue - 1;
    v87 = unsignedIntegerValue - v31;
    do
    {
      v44 = optionsCopy;
      v45 = malloc_type_malloc(0xE0uLL, 0x1080040BB297B25uLL);
      [(MXMInstrument *)v40 instrumentals];
      v47 = v46 = v40;
      v48 = [(MXMInstrument *)v46 _makeInstrumentalsForIteration:v47 shouldCopy:unsignedIntegerValue != 1];

      *(v45 + 3) = 0;
      v45[32] = 0;
      *(v45 + 4) = 0;
      *(v45 + 5) = 0;
      *(v45 + 6) = 0;
      *(v45 + 168) = 0u;
      *(v45 + 9) = 0;
      *(v45 + 10) = 0;
      *(v45 + 27) = 0;
      *(v45 + 18) = 0;
      *(v45 + 19) = 0;
      *(v45 + 16) = v46;
      *(v45 + 17) = 0;
      v45[160] = 0;
      *(v45 + 184) = 0u;
      *(v45 + 193) = 0u;
      *v45 = v42;
      *(v45 + 1) = unsignedIntegerValue;
      *(v45 + 15) = 3;
      v49 = v48;
      *(v45 + 17) = v49;
      v50 = _Block_copy(v41);
      *(v45 + 15) = automaticallyCopy;
      v110 = array;
      *(v45 + 18) = v50;
      *(v45 + 19) = &v110;
      v51 = bOOLValue4;
      if (v42 != v43)
      {
        v51 = 0;
      }

      if (v51 == 1)
      {
        v45[208] = 1;
        *(v45 + 27) = v89;
        unsignedIntegerValue = v96;
        optionsCopy = v44;
      }

      else
      {
        if (v42 >= v87)
        {
          v52 = bOOLValue;
        }

        else
        {
          v52 = 0;
        }

        optionsCopy = v44;
        if (v52 == 1)
        {
          v45[160] = 1;
          v53 = [v85 count];
          v54 = v91;
          unsignedIntegerValue = v96;
          if (v53 > v91)
          {
            v55 = [v85 objectAtIndex:v91];
            v54 = v91;
            *(v45 + 21) = v55;
          }

          v91 = v54 + 1;
        }

        else
        {
          unsignedIntegerValue = v96;
        }
      }

      *(v45 + 22) = v21;
      *(v45 + 23) = v24;
      v56 = v94;
      *(v45 + 24) = v95;
      *(v45 + 25) = v56;
      v40 = selfCopy;
      [(MXMInstrument *)selfCopy _prepareIteration:v45 options:optionsCopy instrumentals:v49 errors:0];
      if (v97)
      {
        memset(&buf, 0, sizeof(buf));
        pthread_attr_init(&buf);
        pthread_attr_setschedpolicy(&buf, 4);
        pthread_attr_set_qos_class_np(&buf, QOS_CLASS_USER_INTERACTIVE, 0);
        v109 = 0;
        [(MXMInstrument *)v40 _setupAndRunWithIteration:v45 spawnThread:1 attrs:&buf pthread:&v109 returnCode:0];
        *(v93 + v42) = v109;
        pthread_attr_destroy(&buf);
      }

      else
      {
        [(MXMInstrument *)v40 setCurrentIteration:v45];
        [(MXMInstrument *)v40 _setupAndRunWithIteration:v45 spawnThread:0 attrs:0 pthread:0 returnCode:&v99[8 * v42]];
        [(MXMInstrument *)v40 setCurrentIteration:0];
      }

      *&v100[8 * v42] = v45;
      if (*(v45 + 22) == 0.0 || *(v45 + 23) == 0.0)
      {
      }

      else
      {
        v57 = +[MXMInstrument activeInstrument];
        v58 = v57[8];

        v71 = v58 == 1;
        v40 = selfCopy;
        if (!v71)
        {
          break;
        }
      }

      ++v42;
    }

    while (v42 < unsignedIntegerValue);
    v59 = 0;
    v60 = 0x2798C9000uLL;
    LOBYTE(bOOLValue5) = v97;
    v86 = optionsCopy;
    do
    {
      v61 = objc_alloc_init(*(v60 + 432));
      v62 = *&v100[8 * v59];
      [(MXMInstrument *)v40 setCurrentIteration:v62];
      if (bOOLValue5)
      {
        pthread_join(*(v93 + v59), &v99[8 * v59]);
      }

      if (*&v99[8 * v59])
      {
        [(MXMInstrument *)v40 setActive:0];
        v75 = MEMORY[0x277CBEAD8];
        v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"Non-zero exit code from iteration [%i] code=%i", *v62, *&v99[8 * v59]];
        v77 = [v75 exceptionWithName:@"Failed to run Block" reason:v76 userInfo:0];
        v78 = v77;

        objc_exception_throw(v77);
      }

      if ((automaticallyCopy & 2) != 0)
      {
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        bOOLValue5 = *(v62 + 17);
        v63 = [bOOLValue5 countByEnumeratingWithState:&v105 objects:v111 count:16];
        if (v63)
        {
          v64 = v63;
          v65 = *v106;
          do
          {
            for (i = 0; i != v64; ++i)
            {
              if (*v106 != v65)
              {
                objc_enumerationMutation(bOOLValue5);
              }

              v67 = *(*(&v105 + 1) + 8 * i);
              v103 = 0;
              v104 = 0;
              [v67 harvestData:&v104 error:&v103];
              v68 = v104;
              v69 = v103;
              v70 = v69;
              if (v68)
              {
                v71 = v69 == 0;
              }

              else
              {
                v71 = 0;
              }

              if (!v71)
              {
                [MXMInstrument measureAutomatically:options:block:];
              }

              [v61 appendData:v68];
            }

            v64 = [bOOLValue5 countByEnumeratingWithState:&v105 objects:v111 count:16];
          }

          while (v64);
        }

        [array setObject:v61 atIndexedSubscript:v59];
        optionsCopy = v86;
        v41 = v88;
        v40 = selfCopy;
        unsignedIntegerValue = v96;
        LOBYTE(bOOLValue5) = v97;
        v60 = 0x2798C9000;
      }

      _Block_release(*(v62 + 18));

      free(v62);
      [(MXMInstrument *)v40 setCurrentIteration:0];

      ++v59;
    }

    while (v59 != unsignedIntegerValue);
  }

  [(MXMInstrument *)v40 setCurrentIteration:0];
  if (bOOLValue5)
  {
    free(v93);
  }

  objc_autoreleasePoolPop(v81);
  v72 = v83;
  if (bOOLValue2)
  {
    [(MXMInstrument *)v40 _makePerfDataFromMXMResults:array testName:v83];
  }

  if ([(MXMInstrument *)v40 active])
  {
    [(MXMInstrument *)v40 setActive:0];
  }

  v73 = array;

  return v73;
}

- (void)_makePerfDataFromMXMResults:(id)results testName:(id)name
{
  v47 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  nameCopy = name;
  __sizep = 0;
  __bufp = 0;
  v8 = open_memstream(&__bufp, &__sizep);
  if (v8)
  {
    v10 = v8;
    [nameCopy UTF8String];
    if (pdwriter_open_stream())
    {
      selfCopy = self;
      v34 = nameCopy;
      if ([resultsCopy count])
      {
        v12 = 0;
        v35 = resultsCopy;
        do
        {
          v36 = v12;
          v13 = [resultsCopy objectAtIndexedSubscript:v12];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          obj = v13;
          v14 = [v13 countByEnumeratingWithState:&v39 objects:v46 count:16];
          if (v14)
          {
            v15 = v14;
            v38 = *v40;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v40 != v38)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(*(&v39 + 1) + 8 * i);
                v18 = [v17 attributeWithName:@"XCT Reporting Display Name"];
                stringValue = [v18 stringValue];

                samples = [v17 samples];
                firstObject = [samples firstObject];
                asMeasurementValue = [firstObject asMeasurementValue];

                unit = [asMeasurementValue unit];
                v24 = [asMeasurementValue measurementByConvertingToUnit:unit];
                [stringValue UTF8String];
                unit2 = [asMeasurementValue unit];
                symbol = [unit2 symbol];
                [symbol UTF8String];
                [v24 doubleValue];
                pdwriter_new_value();
              }

              v15 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
            }

            while (v15);
          }

          resultsCopy = v35;
          v12 = v36 + 1;
        }

        while (v36 + 1 < [v35 count]);
      }

      pdwriter_close();
      v27 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:__bufp length:__sizep freeWhenDone:1];
      perfMetricsPerfdata = selfCopy->_perfMetricsPerfdata;
      selfCopy->_perfMetricsPerfdata = v27;

      nameCopy = v34;
    }

    else
    {
      v31 = _MXMGetLog(0, v11);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258DAA000, v31, OS_LOG_TYPE_ERROR, "unable to open stream to write perfdata", buf, 2u);
      }

      v32 = self->_perfMetricsPerfdata;
      self->_perfMetricsPerfdata = 0;

      fclose(v10);
      free(__bufp);
    }
  }

  else
  {
    v29 = _MXMGetLog(0, v9);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258DAA000, v29, OS_LOG_TYPE_ERROR, "unable to open stream to write perfdata", buf, 2u);
    }

    v30 = self->_perfMetricsPerfdata;
    self->_perfMetricsPerfdata = 0;
  }
}

- (id)_makeInstrumentalsForIteration:(id)iteration shouldCopy:(BOOL)copy
{
  copyCopy = copy;
  v21 = *MEMORY[0x277D85DE8];
  iterationCopy = iteration;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(iterationCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = iterationCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = v12;
        if (copyCopy)
        {
          v14 = [v12 copy];

          v13 = v14;
        }

        [v6 addObject:{v13, v16}];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_valueWithOption:(id)option userOptions:(id)options
{
  optionsCopy = options;
  optionCopy = option;
  v8 = [optionsCopy objectForKeyedSubscript:optionCopy];
  if (v8)
  {
    [optionsCopy objectForKeyedSubscript:optionCopy];
  }

  else
  {
    [(MXMInstrument *)self _defaultValueWithOption:optionCopy];
  }
  v9 = ;

  return v9;
}

- (id)_defaultValueWithOption:(id)option
{
  optionCopy = option;
  if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.QuiesceCpuIdlePercent"] & 1) != 0 || (objc_msgSend(optionCopy, "isEqualToString:", @"com.apple.metricmeasurement.instrument.options.QuiesceCpuIdleTimeLimit"))
  {
    v4 = &unk_286A260E8;
  }

  else
  {
    if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.PerformanceTraceConfigurations"])
    {
      goto LABEL_6;
    }

    if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.PerformanceTraceEnabled"] & 1) != 0 || (objc_msgSend(optionCopy, "isEqualToString:", @"com.apple.metricmeasurement.instrument.options.PerfdataEnabled"))
    {
      goto LABEL_9;
    }

    if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.PerfdataTestName"])
    {
      v4 = @"unknownTest";
      goto LABEL_4;
    }

    if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.IterationCount"])
    {
      v4 = &unk_286A26100;
      goto LABEL_4;
    }

    if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.ScheduleKickOffOnNewThread"] & 1) != 0 || (objc_msgSend(optionCopy, "isEqualToString:", @"com.apple.metricmeasurement.instrument.options.EnableThreadParallelization"))
    {
LABEL_9:
      v4 = MEMORY[0x277CBEC28];
      goto LABEL_4;
    }

    v6 = [optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.SkipMetricMeasurement"];
    v4 = MEMORY[0x277CBEC28];
    if (v6)
    {
      goto LABEL_4;
    }

    if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.UncacheBetweenIterations"] & 1) != 0 || (objc_msgSend(optionCopy, "isEqualToString:", @"com.apple.metricmeasurement.instrument.options.TerminateProcessBetweenIterations"))
    {
LABEL_6:
      v4 = MEMORY[0x277CBEBF8];
    }

    else if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.FunctionCoverageConfiguration"])
    {
      v4 = MEMORY[0x277CBEC10];
    }

    else if (![optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.FunctionCoverageEnabled"])
    {
      v4 = 0;
    }
  }

LABEL_4:

  return v4;
}

- (id)_validOptionKeys
{
  v2 = [MEMORY[0x277CBEB58] setWithObjects:{@"com.apple.metricmeasurement.instrument.options.IterationCount", @"com.apple.metricmeasurement.instrument.options.ThreadId", @"com.apple.metricmeasurement.instrument.options.EnableThreadParallelization", @"com.apple.metricmeasurement.instrument.options.ScheduleKickOffOnNewThread", @"com.apple.metricmeasurement.instrument.options.PerformanceTraceEnabled", @"com.apple.metricmeasurement.instrument.options.PerformanceTraceConfigurations", @"com.apple.metricmeasurement.instrument.options.PerfdataEnabled", @"com.apple.metricmeasurement.instrument.options.PerfdataTestName", @"com.apple.metricmeasurement.instrument.options.QuiesceCpuIdlePercent", @"com.apple.metricmeasurement.instrument.options.QuiesceCpuIdleTimeLimit", @"com.apple.metricmeasurement.instrument.options.SkipMetricMeasurement", @"com.apple.metricmeasurement.instrument.options.UncacheBetweenIterations", @"com.apple.metricmeasurement.instrument.options.TerminateProcessBetweenIterations", @"com.apple.metricmeasurement.instrument.options.FunctionCoverageEnabled", @"com.apple.metricmeasurement.instrument.options.FunctionCoverageConfiguration", 0}];
  v3 = [v2 copy];

  return v3;
}

- (void)dealloc
{
  if ([(MXMInstrument *)self currentIteration])
  {
    free([(MXMInstrument *)self currentIteration]);
  }

  v3.receiver = self;
  v3.super_class = MXMInstrument;
  [(MXMInstrument *)&v3 dealloc];
}

- (void)initWithInstrumentals:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"iteration" object:? file:? lineNumber:? description:?];
}

- (BOOL)_setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"MXMInstrument.m" lineNumber:568 description:@"Iteration is not in proper state."];

  return *v0 == 0;
}

- (void)_setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"iteration->invocationBlock" object:? file:? lineNumber:? description:?];
}

- (void)_setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:.cold.5()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_transitionWithState:iteration:instrumentals:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"transState != MXMIterationStateUninitialized" object:? file:? lineNumber:? description:?];
}

- (void)_transitionWithState:iteration:instrumentals:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"iteration->transitionCompleted == YES" object:? file:? lineNumber:? description:?];
}

- (void)_transitionWithState:iteration:instrumentals:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_transitionWithState:iteration:instrumentals:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_1()
{
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_2()
{
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_3()
{
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_4()
{
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)startWithError:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)stopWithError:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)stopWithError:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [v0 description];
  OUTLINED_FUNCTION_1();
  [v3 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)measureAutomatically:options:block:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)measureAutomatically:options:block:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)measureAutomatically:options:block:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"!options[MXMInstrumentOptionKickOffThreadIdentifier]" object:? file:? lineNumber:? description:?];
}

- (void)measureAutomatically:options:block:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"iterationCount > 0" object:? file:? lineNumber:? description:?];
}

- (void)measureAutomatically:options:block:.cold.5()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:@"(enableParallelizedSampling && shouldKickOffOnNewThread) || !shouldKickOffOnNewThread" object:? file:? lineNumber:? description:?];
}

- (void)measureAutomatically:options:block:.cold.6()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)measureAutomatically:options:block:.cold.7()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [v0 description];
  OUTLINED_FUNCTION_1();
  [v3 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end