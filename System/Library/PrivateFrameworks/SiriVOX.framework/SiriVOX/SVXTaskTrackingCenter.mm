@interface SVXTaskTrackingCenter
- (SVXTaskTrackingCenter)initWithPerformer:(id)performer delegate:(id)delegate;
- (id)beginTrackingTaskWithContext:(id)context instrumentationContext:(id)instrumentationContext;
- (void)_beginContext:(id)context;
- (void)_endContext:(id)context;
- (void)_endContextsPassingTest:(id)test;
- (void)endTrackingAllTasks;
- (void)endTrackingTaskWithContext:(id)context;
- (void)endTrackingTasksPassingTest:(id)test;
- (void)getContextsOfAllTrackedTasksUsingBlock:(id)block;
- (void)getContextsOfAllTrackedTasksUsingSyncBlock:(id)block;
- (void)taskTracker:(id)tracker childWillBegin:(id)begin;
- (void)taskTrackerDidEnd:(id)end;
@end

@implementation SVXTaskTrackingCenter

- (void)_endContextsPassingTest:(id)test
{
  v27 = *MEMORY[0x277D85DE8];
  testCopy = test;
  v5 = [(NSMutableSet *)self->_contexts count];
  v6 = MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v24 = "[SVXTaskTrackingCenter _endContextsPassingTest:]";
    v25 = 2048;
    v26 = v5;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s numberOfContexts = %tu", buf, 0x16u);
  }

  if (v5)
  {
    contexts = self->_contexts;
    if (testCopy)
    {
      v9 = [(NSMutableSet *)contexts objectsPassingTest:testCopy];
    }

    else
    {
      v9 = [(NSMutableSet *)contexts copy];
    }

    v10 = v9;
    v11 = [v9 count];
    v12 = *v6;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[SVXTaskTrackingCenter _endContextsPassingTest:]";
      v25 = 2048;
      v26 = v11;
      _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s numberOfContextsToEnd = %tu", buf, 0x16u);
    }

    if (v11)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          v17 = 0;
          do
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [(SVXTaskTrackingCenter *)self _endContext:*(*(&v18 + 1) + 8 * v17++), v18];
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v15);
      }
    }
  }
}

- (void)_endContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy && [(NSMutableSet *)self->_contexts containsObject:contextCopy])
  {
    v5 = MEMORY[0x277CEF098];
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[SVXTaskTrackingCenter _endContext:]";
      v16 = 2112;
      selfCopy = contextCopy;
      _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Removing %@.", &v14, 0x16u);
    }

    [(NSMutableSet *)self->_contexts removeObject:contextCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained taskTrackingCenter:self didEndTrackingTaskWithContext:contextCopy];

    v8 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[SVXTaskTrackingCenter _endContext:]";
      v16 = 2112;
      selfCopy = contextCopy;
      _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s Removed %@.", &v14, 0x16u);
      v8 = *v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      contexts = self->_contexts;
      v10 = v8;
      v11 = [(NSMutableSet *)contexts count];
      v14 = 136315394;
      v15 = "[SVXTaskTrackingCenter _endContext:]";
      v16 = 2048;
      selfCopy = v11;
      _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s numberOfContexts = %tu", &v14, 0x16u);
    }

    if (![(NSMutableSet *)self->_contexts count])
    {
      v12 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
      {
        v14 = 136315394;
        v15 = "[SVXTaskTrackingCenter _endContext:]";
        v16 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s %@ did become idle.", &v14, 0x16u);
      }

      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 taskTrackingCenterDidBecomeIdle:self];
    }
  }
}

- (void)_beginContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy && ([(NSMutableSet *)self->_contexts containsObject:contextCopy]& 1) == 0)
  {
    v5 = [(NSMutableSet *)self->_contexts count];
    v6 = MEMORY[0x277CEF098];
    if (!v5)
    {
      v7 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v15 = 136315394;
        v16 = "[SVXTaskTrackingCenter _beginContext:]";
        v17 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s %@ will become busy.", &v15, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained taskTrackingCenterWillBecomeBusy:self];
    }

    v9 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[SVXTaskTrackingCenter _beginContext:]";
      v17 = 2112;
      selfCopy = contextCopy;
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s Adding %@.", &v15, 0x16u);
    }

    [(NSMutableSet *)self->_contexts addObject:contextCopy];
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 taskTrackingCenter:self didBeginTrackingTaskWithContext:contextCopy];

    v11 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[SVXTaskTrackingCenter _beginContext:]";
      v17 = 2112;
      selfCopy = contextCopy;
      _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s Added %@.", &v15, 0x16u);
      v11 = *v6;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      contexts = self->_contexts;
      v13 = v11;
      v14 = [(NSMutableSet *)contexts count];
      v15 = 136315394;
      v16 = "[SVXTaskTrackingCenter _beginContext:]";
      v17 = 2048;
      selfCopy = v14;
      _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s numberOfContexts = %tu", &v15, 0x16u);
    }
  }
}

- (void)taskTrackerDidEnd:(id)end
{
  v15 = *MEMORY[0x277D85DE8];
  endCopy = end;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXTaskTrackingCenter taskTrackerDidEnd:]";
    v13 = 2112;
    v14 = endCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s taskTracker = %@", buf, 0x16u);
  }

  context = [endCopy context];
  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SVXTaskTrackingCenter_taskTrackerDidEnd___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = context;
  v8 = context;
  [(SVXPerforming *)performer performBlock:v9];
}

- (void)taskTracker:(id)tracker childWillBegin:(id)begin
{
  v20 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  beginCopy = begin;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[SVXTaskTrackingCenter taskTracker:childWillBegin:]";
    v16 = 2112;
    v17 = trackerCopy;
    v18 = 2112;
    v19 = beginCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s taskTracker = %@, childTaskTracker = %@", buf, 0x20u);
  }

  context = [beginCopy context];
  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__SVXTaskTrackingCenter_taskTracker_childWillBegin___block_invoke;
  v12[3] = &unk_279C68FE8;
  v12[4] = self;
  v13 = context;
  v11 = context;
  [(SVXPerforming *)performer performBlock:v12];
}

- (void)getContextsOfAllTrackedTasksUsingSyncBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    performer = self->_performer;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__SVXTaskTrackingCenter_getContextsOfAllTrackedTasksUsingSyncBlock___block_invoke;
    v7[3] = &unk_279C68EF8;
    v7[4] = self;
    v8 = blockCopy;
    [(SVXPerforming *)performer performBlockSync:v7];
  }
}

void __68__SVXTaskTrackingCenter_getContextsOfAllTrackedTasksUsingSyncBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 16) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)getContextsOfAllTrackedTasksUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    performer = self->_performer;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__SVXTaskTrackingCenter_getContextsOfAllTrackedTasksUsingBlock___block_invoke;
    v7[3] = &unk_279C68EF8;
    v7[4] = self;
    v8 = blockCopy;
    [(SVXPerforming *)performer performBlock:v7];
  }
}

void __64__SVXTaskTrackingCenter_getContextsOfAllTrackedTasksUsingBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 16) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)endTrackingAllTasks
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[SVXTaskTrackingCenter endTrackingAllTasks]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  performer = self->_performer;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SVXTaskTrackingCenter_endTrackingAllTasks__block_invoke;
  v5[3] = &unk_279C68FC0;
  v5[4] = self;
  [(SVXPerforming *)performer performBlock:v5];
}

- (void)endTrackingTasksPassingTest:(id)test
{
  v12 = *MEMORY[0x277D85DE8];
  testCopy = test;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[SVXTaskTrackingCenter endTrackingTasksPassingTest:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SVXTaskTrackingCenter_endTrackingTasksPassingTest___block_invoke;
  v8[3] = &unk_279C68EF8;
  v8[4] = self;
  v9 = testCopy;
  v7 = testCopy;
  [(SVXPerforming *)performer performBlock:v8];
}

- (void)endTrackingTaskWithContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SVXTaskTrackingCenter endTrackingTaskWithContext:]";
    v12 = 2112;
    v13 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__SVXTaskTrackingCenter_endTrackingTaskWithContext___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = contextCopy;
  v7 = contextCopy;
  [(SVXPerforming *)performer performBlock:v8];
}

- (id)beginTrackingTaskWithContext:(id)context instrumentationContext:(id)instrumentationContext
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  instrumentationContextCopy = instrumentationContext;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[SVXTaskTrackingCenter beginTrackingTaskWithContext:instrumentationContext:]";
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  v9 = [[SVXTaskTracker alloc] initWithContext:contextCopy instrumentationContext:instrumentationContextCopy delegate:self];
  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SVXTaskTrackingCenter_beginTrackingTaskWithContext_instrumentationContext___block_invoke;
  v13[3] = &unk_279C68FE8;
  v13[4] = self;
  v14 = contextCopy;
  v11 = contextCopy;
  [(SVXPerforming *)performer performBlock:v13];

  return v9;
}

- (SVXTaskTrackingCenter)initWithPerformer:(id)performer delegate:(id)delegate
{
  performerCopy = performer;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = SVXTaskTrackingCenter;
  v9 = [(SVXTaskTrackingCenter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_performer, performer);
    v11 = objc_alloc_init(MEMORY[0x277CCA940]);
    contexts = v10->_contexts;
    v10->_contexts = v11;

    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

@end