@interface CDPersistedCoalescingTimer
@end

@implementation CDPersistedCoalescingTimer

id __104___CDPersistedCoalescingTimer_initWithDelay_coalesceData_operation_persistencePath_dataClass_timerName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__12;
  v19 = __Block_byref_object_dispose__12;
  v7 = v5;
  v20 = v7;
  if (!v16[5])
  {
    v8 = [*(*(a1 + 32) + 48) publisherFromStartTime:0.0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __104___CDPersistedCoalescingTimer_initWithDelay_coalesceData_operation_persistencePath_dataClass_timerName___block_invoke_2;
    v12[3] = &unk_1E7368D48;
    v14 = &v15;
    v13 = *(a1 + 40);
    v9 = [v8 sinkWithCompletion:&__block_literal_global_38 receiveInput:v12];
  }

  v10 = (*(*(a1 + 40) + 16))();
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __104___CDPersistedCoalescingTimer_initWithDelay_coalesceData_operation_persistencePath_dataClass_timerName___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [a2 eventBody];
  v6 = (*(v3 + 16))(v3, v4, v5, &v9);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t __104___CDPersistedCoalescingTimer_initWithDelay_coalesceData_operation_persistencePath_dataClass_timerName___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 48);

  return [v2 pruneWithPredicateBlock:&__block_literal_global_515_0];
}

@end