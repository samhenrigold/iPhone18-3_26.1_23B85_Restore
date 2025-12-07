@interface ThreadExhaustion
@end

@implementation ThreadExhaustion

void __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke(void *a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 lastObject];
  v8 = [v7 taskStates];
  v9 = [v8 lastObject];

  if (([v9 wqExceededTotalThreadLimit] & 1) != 0 || objc_msgSend(v9, "wqExceededConstrainedThreadLimit"))
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v10 = [v7 threads];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke_2;
    v42[3] = &unk_279E02C30;
    v42[6] = a1[6];
    v42[4] = &v43;
    v42[5] = &v47;
    [v10 enumerateKeysAndObjectsUsingBlock:v42];

    if ([v9 wqExceededTotalThreadLimit])
    {
      v11 = [*(a1[4] + 32) workQueueHardThreadLimit];
      if (!v11)
      {
        if (UBWQTotalThreadLimit_onceToken != -1)
        {
          __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke_cold_2();
        }

        v11 = _gUBWorkQueueTotalThreadLimit;
      }

      if (v48[3] >= v11)
      {
        v27 = __error();
        v13 = *v27;
        v14 = _ublogt(v27);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v7 name];
          v29 = [v7 pid];
          v30 = v48[3];
          v31 = a1[6];
          *buf = 138544386;
          v52 = v28;
          v53 = 1024;
          v54 = v29;
          v55 = 1024;
          v56 = v11;
          v57 = 2048;
          v58 = v30;
          v59 = 2048;
          v60 = v31;
          _os_log_impl(&dword_270397000, v14, OS_LOG_TYPE_DEFAULT, "Task %{public}@ [%d] has hit the total thread limit (%u) and %llu threads are blocked for at least %fs.", buf, 0x2Cu);
        }
      }

      else
      {
        v12 = __error();
        v13 = *v12;
        v14 = _ublogt(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v7 name];
          v16 = [v7 pid];
          v17 = v48[3];
          v18 = a1[6];
          *buf = 138544386;
          v52 = v15;
          v53 = 1024;
          v54 = v16;
          v55 = 1024;
          v56 = v11;
          v57 = 2048;
          v58 = v17;
          v59 = 2048;
          v60 = v18;
          _os_log_impl(&dword_270397000, v14, OS_LOG_TYPE_INFO, "Task %{public}@ [%d] has hit the total thread limit (%u). Only %llu threads are blocked for at least %fs, still reporting.", buf, 0x2Cu);
        }
      }
    }

    else
    {
      if (![v9 wqExceededConstrainedThreadLimit])
      {
LABEL_27:
        v37 = [UBThreadExhaustionInfo alloc];
        v38 = [(UBThreadExhaustionInfo *)v37 initWithTask:v7 timeSpentBlocked:v48[3] numThreadsInvolved:v44[3]];
        v39 = [(UBThreadExhaustionInfo *)v38 tasksBlocked];
        [v39 addObject:v7];

        v40 = a1[5];
        v41 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "pid")}];
        [v40 setObject:v38 forKeyedSubscript:v41];

LABEL_28:
        _Block_object_dispose(&v43, 8);
        _Block_object_dispose(&v47, 8);
        goto LABEL_29;
      }

      v19 = [*(a1[4] + 32) workQueueSoftThreadLimit];
      if (!v19)
      {
        if (UBWQConstrainedThreadLimit_onceToken != -1)
        {
          __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke_cold_1();
        }

        v19 = _gUBWorkQueueConstrainedThreadLimit;
      }

      if (v48[3] < v19)
      {
        v20 = __error();
        v21 = *v20;
        v22 = _ublogt(v20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v7 name];
          v24 = [v7 pid];
          v25 = v48[3];
          v26 = a1[6];
          *buf = 138544386;
          v52 = v23;
          v53 = 1024;
          v54 = v24;
          v55 = 1024;
          v56 = v19;
          v57 = 2048;
          v58 = v25;
          v59 = 2048;
          v60 = v26;
          _os_log_impl(&dword_270397000, v22, OS_LOG_TYPE_INFO, "Task %{public}@ [%d] has hit the constrained thread limit (%u) but only %llu threads are blocked for at least %fs, ignoring.", buf, 0x2Cu);
        }

        *__error() = v21;
        goto LABEL_28;
      }

      v32 = __error();
      v13 = *v32;
      v14 = _ublogt(v32);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v7 name];
        v34 = [v7 pid];
        v35 = v48[3];
        v36 = a1[6];
        *buf = 138544386;
        v52 = v33;
        v53 = 1024;
        v54 = v34;
        v55 = 1024;
        v56 = v19;
        v57 = 2048;
        v58 = v35;
        v59 = 2048;
        v60 = v36;
        _os_log_impl(&dword_270397000, v14, OS_LOG_TYPE_DEFAULT, "Task %{public}@ [%d] has hit the constrained thread limit (%u) and %llu threads are blocked for at least %fs.", buf, 0x2Cu);
      }
    }

    *__error() = v13;
    goto LABEL_27;
  }

LABEL_29:
}

void __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 threadStates];
  v5 = [v4 lastObject];
  TimeSpentBlocked = findTimeSpentBlocked(v5);

  if (TimeSpentBlocked > 0.0 && TimeSpentBlocked >= *(a1 + 48))
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 24);
    if (v8 == 0.0 || TimeSpentBlocked < v8)
    {
      *(v7 + 24) = TimeSpentBlocked;
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke_148(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([v6 isBlockedByADeadlock] & 1) == 0)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (v7)
    {
LABEL_29:

      goto LABEL_30;
    }

    v32 = v5;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = v6;
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = MEMORY[0x277CCABB0];
        v15 = [v11 thread];
        v16 = [v14 numberWithUnsignedLongLong:{objc_msgSend(v15, "threadId")}];

        v17 = [*(a1 + 32) objectForKeyedSubscript:v16];
        if (v17)
        {
          break;
        }

        [v9 addObject:v16];
        v18 = [v11 task];

        [v8 addObject:v18];
        v19 = [v11 taskDependency];

        if (v19)
        {
          v20 = [v11 taskDependency];
          v13 = [v20 task];

          [v8 addObject:v13];
        }

        else
        {
          v13 = v18;
        }

        v21 = v12;
        if (!v12)
        {
          if ([v11 isPartOfADeadlock])
          {
            v21 = v11;
          }

          else
          {
            v21 = 0;
          }
        }

        v22 = v21;

        v23 = [v11 dependency];

        if (v23)
        {
          v12 = v22;
          v11 = v23;
          if (v23 != v22)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

      v7 = v17;
    }

    else
    {
      v13 = 0;
LABEL_17:
      v24 = *(a1 + 40);
      v25 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "pid")}];
      v7 = [v24 objectForKeyedSubscript:v25];

      if (!v7)
      {
        goto LABEL_28;
      }
    }

    [v7 setNumThreadsBlocked:{objc_msgSend(v7, "numThreadsBlocked") + objc_msgSend(v9, "count")}];
    v26 = [v7 tasksBlocked];
    [v26 unionSet:v8];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v27 = v9;
    v28 = [v27 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v34;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [*(a1 + 32) setObject:v7 forKeyedSubscript:*(*(&v33 + 1) + 8 * i)];
        }

        v29 = [v27 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v29);
    }

LABEL_28:
    v5 = v32;

    goto LABEL_29;
  }

LABEL_30:
}

@end