@interface TUISyncLayoutController
- (BOOL)_processUntilDirtyOrEndtime:(double)endtime;
- (BOOL)flush;
- (TUISyncLayoutController)init;
- (TUISyncLayoutController)initWithDelegate:(id)delegate;
- (TUISyncLayoutControllerDelegate)delegate;
- (id)syncAssertionWithTimeout:(double)timeout transaction:(id)transaction feedId:(id)id;
- (void)_removeAssertion:(id)assertion;
- (void)removeAssertion:(id)assertion;
@end

@implementation TUISyncLayoutController

- (TUISyncLayoutController)init
{
  v6.receiver = self;
  v6.super_class = TUISyncLayoutController;
  v2 = [(TUISyncLayoutController *)&v6 init];
  if (v2)
  {
    v3 = [NSHashTable hashTableWithOptions:517];
    assertions = v2->_assertions;
    v2->_assertions = v3;
  }

  return v2;
}

- (TUISyncLayoutController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = TUISyncLayoutController;
  v5 = [(TUISyncLayoutController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [NSHashTable hashTableWithOptions:517];
    assertions = v6->_assertions;
    v6->_assertions = v7;
  }

  return v6;
}

- (BOOL)flush
{
  flags = self->_flags;
  if ((flags & 1) == 0)
  {
    selfCopy = self;
    *&self->_flags = flags & 0xFA | 1;
    Current = CFAbsoluteTimeGetCurrent();
    allObjects = [(NSHashTable *)selfCopy->_assertions allObjects];
    v6 = [allObjects count];
    if (v6)
    {
      v55 = flags;
      v7 = 0;
      v8 = 0;
      p_isa = &selfCopy->super.isa;
      do
      {
        if ((v8 & 1) == 0)
        {
          v9 = TUITransactionLog(v6);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            sub_199E5C(&v69, v70, v9);
          }

          v11 = TUITransactionLog(v10);
          v7 = os_signpost_id_generate(v11);

          v13 = TUITransactionLog(v12);
          v14 = v13;
          if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_0, v14, OS_SIGNPOST_INTERVAL_BEGIN, v7, "WaitForSyncTransaction", "", buf, 2u);
          }
        }

        *&selfCopy->_flags &= ~2u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v15 = allObjects;
        v16 = [v15 countByEnumeratingWithState:&v65 objects:v77 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v66;
          v19 = 0.0;
          do
          {
            v20 = 0;
            do
            {
              if (*v66 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v21 = *(*(&v65 + 1) + 8 * v20);
              if (v21)
              {
                v22 = *(v21 + 16);
              }

              else
              {
                v22 = 0.0;
              }

              if (v19 < v22)
              {
                v19 = v22;
              }

              v20 = v20 + 1;
            }

            while (v17 != v20);
            v23 = [v15 countByEnumeratingWithState:&v65 objects:v77 count:16];
            v17 = v23;
          }

          while (v23);
        }

        else
        {
          v19 = 0.0;
        }

        selfCopy = p_isa;
        v24 = [p_isa _processUntilDirtyOrEndtime:Current + v19];
        allObjects2 = [p_isa[2] allObjects];
        allObjects = allObjects2;
        if (v24)
        {
          break;
        }

        v6 = [allObjects2 count];
        v8 = 1;
      }

      while (v6);
      v26 = [allObjects count];
      v28 = CFAbsoluteTimeGetCurrent();
      if (v26)
      {
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v29 = allObjects;
        v30 = [v29 countByEnumeratingWithState:&v61 objects:v76 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v62;
          v33 = 0.0;
          do
          {
            v34 = 0;
            do
            {
              if (*v62 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v35 = *(*(&v61 + 1) + 8 * v34);
              if (v35)
              {
                v36 = *(v35 + 16);
              }

              else
              {
                v36 = 0.0;
              }

              if (v33 < v36)
              {
                v33 = v36;
              }

              v34 = v34 + 1;
            }

            while (v31 != v34);
            v37 = [v29 countByEnumeratingWithState:&v61 objects:v76 count:16];
            v31 = v37;
          }

          while (v37);
        }

        else
        {
          v33 = 0.0;
        }
      }

      else
      {
        v33 = 0.0;
      }

      v38 = TUITransactionLog(v27);
      v39 = v38;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        v40 = @"YES";
        if (!v26)
        {
          v40 = @"NO";
        }

        *buf = 134218242;
        v73 = v33;
        v74 = 2114;
        v75 = v40;
        _os_signpost_emit_with_name_impl(&dword_0, v39, OS_SIGNPOST_INTERVAL_END, v7, "WaitForSyncTransaction", "Time limit: %fs Timed out: %{public}@ enableTelemetry=YES ", buf, 0x16u);
      }

      v42 = v28 - Current;
      if (v42 > 0.1)
      {
        v43 = TUITransactionLog(v41);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v73 = v42;
          _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "time spent waiting for sync layout flush: %.2fs", buf, 0xCu);
        }
      }

      if (v26)
      {
        v44 = TUITransactionLog(v41);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          sub_199E9C(allObjects, v44, v42);
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v45 = allObjects;
        v46 = [v45 countByEnumeratingWithState:&v57 objects:v71 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v58;
          do
          {
            v49 = 0;
            do
            {
              if (*v58 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v57 + 1) + 8 * v49);
              v51 = TUITransactionLog(v46);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                if (v50)
                {
                  v52 = *&v50[1].isa;
                }

                else
                {
                  v52 = 0.0;
                }

                *buf = 134218242;
                v73 = v52;
                v74 = 2114;
                v75 = v50;
                _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "- [fid:%lu] %{public}@", buf, 0x16u);
              }

              v49 = v49 + 1;
            }

            while (v47 != v49);
            v46 = [v45 countByEnumeratingWithState:&v57 objects:v71 count:16];
            v47 = v46;
          }

          while (v46);
        }

        selfCopy = p_isa;
      }

      v53 = TUITransactionLog(v41);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        sub_199F40(v53);
      }

      flags = v55;
    }

    *&selfCopy->_flags &= ~1u;
  }

  return (flags & 1) == 0;
}

- (BOOL)_processUntilDirtyOrEndtime:(double)endtime
{
  if ((*&self->_flags & 2) != 0)
  {
    return 0;
  }

  while (endtime - CFAbsoluteTimeGetCurrent() > 0.0)
  {
    v5 = TUIDispatchDrainWithTimeout();
    result = v5 == 3;
    if ((*&self->_flags & 2) != 0 || v5 == 3)
    {
      return result;
    }
  }

  return 1;
}

- (id)syncAssertionWithTimeout:(double)timeout transaction:(id)transaction feedId:(id)id
{
  transactionCopy = transaction;
  v9 = [[_TUISyncLayoutAssertion alloc] initWithController:self timeout:transactionCopy transaction:id.var0 feedId:timeout];
  v10 = [(NSHashTable *)self->_assertions addObject:v9];
  *&self->_flags |= 2u;
  v11 = TUITransactionLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 138543362;
    v15 = transactionCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "scheduled sync-assertion for tx=%{public}@", &v14, 0xCu);
  }

  if ((*&self->_flags & 4) == 0 && (*&self->_flags & 1) == 0)
  {
    *&self->_flags |= 4u;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained syncLayoutControllerNeedsFlushing:self];
  }

  return v9;
}

- (void)removeAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (+[NSThread isMainThread])
  {
    [(TUISyncLayoutController *)self _removeAssertion:assertionCopy];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_7F92C;
    v5[3] = &unk_25DCA0;
    v5[4] = self;
    v6 = assertionCopy;
    TUIDispatchAsyncViaRunLoop(v5);
  }
}

- (void)_removeAssertion:(id)assertion
{
  assertionCopy = assertion;
  v5 = TUITransactionLog(assertionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    sub_199F84(assertionCopy, v5);
  }

  if (assertionCopy)
  {
    [(NSHashTable *)self->_assertions removeObject:assertionCopy];
  }

  *&self->_flags |= 2u;
}

- (TUISyncLayoutControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end