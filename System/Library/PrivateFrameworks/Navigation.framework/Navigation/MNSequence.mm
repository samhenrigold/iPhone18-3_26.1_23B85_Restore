@interface MNSequence
- (MNSequence)initWithQueue:(id)queue;
- (void)_endSequence;
- (void)_finalizeSequenceWithPreviousStepResult:(id)result;
- (void)_runNextStepWithPreviousStepResult:(id)result;
- (void)addStep:(id)step;
- (void)dealloc;
- (void)setSequenceFinalizeHandler:(id)handler;
- (void)start;
@end

@implementation MNSequence

- (void)_endSequence
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = MNGetMNSequenceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "%p Sequence ended.", &v4, 0xCu);
  }
}

- (void)_finalizeSequenceWithPreviousStepResult:(id)result
{
  v23 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  finalizeHandler = self->_finalizeHandler;
  v6 = MNGetMNSequenceLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (finalizeHandler)
  {
    if (v7)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = self;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%p Sequence steps finished. Calling finalizeHandler.", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1729;
    v21 = __Block_byref_object_dispose__1730;
    v22 = 0;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __54__MNSequence__finalizeSequenceWithPreviousStepResult___block_invoke;
    v15 = &unk_1E8430960;
    selfCopy = self;
    p_buf = &buf;
    geo_isolate_sync();
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MNSequence__finalizeSequenceWithPreviousStepResult___block_invoke_2;
    block[3] = &unk_1E842FD80;
    block[4] = self;
    v11 = &buf;
    v10 = resultCopy;
    dispatch_async(queue, block);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (v7)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = self;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%p Sequence steps finished with no finalizeHandler.", &buf, 0xCu);
    }

    [(MNSequence *)self _endSequence];
  }
}

void __54__MNSequence__finalizeSequenceWithPreviousStepResult___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 24));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __54__MNSequence__finalizeSequenceWithPreviousStepResult___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MNGetMNSequenceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_INFO, "%p Running finalizeHandler.", &v7, 0xCu);
  }

  (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
  v4 = MNGetMNSequenceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "%p Finished finalizeHandler.", &v7, 0xCu);
  }

  return [*(a1 + 32) _endSequence];
}

- (void)_runNextStepWithPreviousStepResult:(id)result
{
  v33 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1729;
  v27 = __Block_byref_object_dispose__1730;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __49__MNSequence__runNextStepWithPreviousStepResult___block_invoke;
  v15 = &unk_1E842A548;
  selfCopy = self;
  v17 = &v23;
  v18 = &v19;
  geo_isolate_sync();
  if (v24[5])
  {
    v5 = MNGetMNSequenceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v20[3];
      *buf = 134218240;
      selfCopy2 = self;
      v31 = 1024;
      v32 = v6;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "%p Starting step %d.", buf, 0x12u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__MNSequence__runNextStepWithPreviousStepResult___block_invoke_20;
    block[3] = &unk_1E842A8F0;
    block[4] = self;
    v10 = &v19;
    v11 = &v23;
    v9 = resultCopy;
    dispatch_async(queue, block);
  }

  else
  {
    [(MNSequence *)self _finalizeSequenceWithPreviousStepResult:resultCopy];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

void __49__MNSequence__runNextStepWithPreviousStepResult___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) firstObject];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(a1[6] + 8) + 24) = *(a1[4] + 48);
  if (*(*(a1[5] + 8) + 40))
  {
    [*(a1[4] + 16) removeObjectAtIndex:0];
    ++*(a1[4] + 48);
  }
}

uint64_t __49__MNSequence__runNextStepWithPreviousStepResult___block_invoke_20(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MNGetMNSequenceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = *(*(a1[6] + 8) + 24);
    *buf = 134218240;
    v14 = v3;
    v15 = 1024;
    v16 = v4;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_INFO, "%p Running step %d.", buf, 0x12u);
  }

  v5 = *(*(a1[7] + 8) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__MNSequence__runNextStepWithPreviousStepResult___block_invoke_21;
  v12[3] = &unk_1E842A570;
  v6 = a1[5];
  v7 = a1[6];
  v12[4] = a1[4];
  v12[5] = v7;
  return (*(v5 + 16))(v5, v6, v12, v8, v9, v10);
}

void __49__MNSequence__runNextStepWithPreviousStepResult___block_invoke_21(uint64_t a1, void *a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = MNGetMNSequenceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = *(*(*(a1 + 40) + 8) + 24);
    v10 = 134218496;
    v11 = v7;
    v12 = 1024;
    v13 = v8;
    v14 = 1024;
    v15 = a3;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%p Finished step %d. shouldContinue: %d", &v10, 0x18u);
  }

  v9 = *(a1 + 32);
  if (a3)
  {
    [v9 _runNextStepWithPreviousStepResult:v5];
  }

  else
  {
    [v9 _finalizeSequenceWithPreviousStepResult:v5];
  }
}

- (void)start
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_isStarted)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MNSequence has already been started."];
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      selfCopy = "[MNSequence start]";
      v9 = 2080;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/MNSequence.m";
      v11 = 1024;
      v12 = 74;
      v13 = 2080;
      v14 = "NO";
      v15 = 2112;
      v16 = v2;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v7, 0x30u);
    }
  }

  else
  {
    v5 = MNGetMNSequenceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NSMutableArray *)self->_steps count];
      v7 = 134218240;
      selfCopy = self;
      v9 = 1024;
      LODWORD(v10) = v6;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "%p Starting sequence with %d steps.", &v7, 0x12u);
    }

    self->_isStarted = 1;
    [(MNSequence *)self _runNextStepWithPreviousStepResult:0];
  }
}

- (void)setSequenceFinalizeHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (self->_isStarted)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot modify MNSequence after it has already started."];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 136316162;
      *&v9[4] = "[MNSequence setSequenceFinalizeHandler:]";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/MNSequence.m";
      v12 = 1024;
      v13 = 63;
      v14 = 2080;
      v15 = "NO";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", v9, 0x30u);
    }
  }

  else
  {
    *v9 = self->_stepsIsolater;
    _geo_isolate_lock();
    v7 = _Block_copy(handlerCopy);
    finalizeHandler = self->_finalizeHandler;
    self->_finalizeHandler = v7;

    _geo_isolate_unlock();
  }
}

- (void)addStep:(id)step
{
  v22 = *MEMORY[0x1E69E9840];
  stepCopy = step;
  v5 = stepCopy;
  if (self->_isStarted)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot add steps to MNSequence after it has already started."];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v13 = 136316162;
      *&v13[4] = "[MNSequence addStep:]";
      v14 = 2080;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/MNSequence.m";
      v16 = 1024;
      v17 = 47;
      v18 = 2080;
      v19 = "NO";
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", v13, 0x30u);
    }
  }

  else if (stepCopy)
  {
    *v13 = self->_stepsIsolater;
    _geo_isolate_lock();
    steps = self->_steps;
    if (!steps)
    {
      array = [MEMORY[0x1E695DF70] array];
      v10 = self->_steps;
      self->_steps = array;

      steps = self->_steps;
    }

    v11 = [v5 copy];
    v12 = _Block_copy(v11);
    [(NSMutableArray *)steps addObject:v12];

    _geo_isolate_unlock();
  }
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_isStarted)
  {
    v3 = MNGetMNSequenceLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "%p MNSequence was deallocated without ever being started. Did you forget to call start?", buf, 0xCu);
    }

    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      selfCopy = "[MNSequence dealloc]";
      v8 = 2080;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/MNSequence.m";
      v10 = 1024;
      v11 = 40;
      v12 = 2080;
      v13 = "NO";
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
    }
  }

  v5.receiver = self;
  v5.super_class = MNSequence;
  [(MNSequence *)&v5 dealloc];
}

- (MNSequence)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = MNSequence;
  v6 = [(MNSequence *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = geo_isolater_create();
    stepsIsolater = v7->_stepsIsolater;
    v7->_stepsIsolater = v8;
  }

  return v7;
}

@end