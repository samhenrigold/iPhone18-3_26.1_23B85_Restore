@interface Deadlock
@end

@implementation Deadlock

void __52__UBUnblockReactiveRecovery_Deadlock__findDeadlocks__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 isBlockedByADeadlock])
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (!v7)
    {
      v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v44 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = v6;
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = 0;
        v13 = 0.0;
        do
        {
          v14 = MEMORY[0x277CCABB0];
          v15 = [v10 thread];
          v16 = [v14 numberWithUnsignedLongLong:{objc_msgSend(v15, "threadId")}];

          v17 = [*(a1 + 32) objectForKeyedSubscript:v16];
          if (v17)
          {
            v7 = v17;

            goto LABEL_35;
          }

          if ([v10 isPartOfADeadlock])
          {
            [v42 addObject:v16];
            v18 = [v10 task];
            [v44 addObject:v18];

            v19 = v10;
            v20 = [v19 threadState];
            TimeSpentBlocked = findTimeSpentBlocked(v20);

            if (v13 > TimeSpentBlocked || v13 == 0.0)
            {
              v13 = TimeSpentBlocked;
            }

            v11 = v19;
          }

          else
          {
            [v8 addObject:v16];
            v23 = [v10 task];
            [v43 addObject:v23];
          }

          v24 = v12;
          if (!v12)
          {
            if ([v10 isPartOfADeadlock])
            {
              v24 = v10;
            }

            else
            {
              v24 = 0;
            }
          }

          v25 = v24;

          v26 = [v10 dependency];

          if (!v26)
          {
            break;
          }

          v10 = v26;
          v12 = v25;
        }

        while (v26 != v25);

        if (v11)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v13 = 0.0;
      }

      v27 = __error();
      v28 = *v27;
      v29 = _ublogt(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        __52__UBUnblockReactiveRecovery_Deadlock__findDeadlocks__block_invoke_cold_1();
      }

      v11 = 0;
      *__error() = v28;
LABEL_26:
      v7 = -[UBDeadlockInfo initWithNode:timeSpentDeadlocked:tasksInvolved:numThreadsInvolved:]([UBDeadlockInfo alloc], "initWithNode:timeSpentDeadlocked:tasksInvolved:numThreadsInvolved:", v11, v44, [v42 count], v13);
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v30 = v42;
      v31 = [v30 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v50;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v50 != v33)
            {
              objc_enumerationMutation(v30);
            }

            [*(a1 + 32) setObject:v7 forKeyedSubscript:*(*(&v49 + 1) + 8 * i)];
          }

          v32 = [v30 countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v32);
      }

      -[UBDeadlockInfo setNumThreadsBlocked:](v7, "setNumThreadsBlocked:", -[UBDeadlockInfo numThreadsBlocked](v7, "numThreadsBlocked") + [v30 count]);
      v35 = [(UBDeadlockInfo *)v7 tasksBlocked];
      [v35 unionSet:v44];

      [*(a1 + 40) addObject:v7];
LABEL_35:
      -[UBDeadlockInfo setNumThreadsBlocked:](v7, "setNumThreadsBlocked:", -[UBDeadlockInfo numThreadsBlocked](v7, "numThreadsBlocked") + [v8 count]);
      v36 = [(UBDeadlockInfo *)v7 tasksBlocked];
      [v36 unionSet:v43];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v37 = v8;
      v38 = [v37 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v46;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v46 != v40)
            {
              objc_enumerationMutation(v37);
            }

            [*(a1 + 32) setObject:v7 forKeyedSubscript:*(*(&v45 + 1) + 8 * j)];
          }

          v39 = [v37 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v39);
      }
    }
  }
}

@end