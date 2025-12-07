@interface DKXPCKnowledgeStore
@end

@implementation DKXPCKnowledgeStore

void __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }

  v5 = a1[5];
  if (v5)
  {
    v6 = a1[4];
    if (!v6)
    {
      __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_2();
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_2;
    v13[3] = &unk_1E7367818;
    v15 = v5;
    v14 = v3;
    v7 = v13;
    v8 = v6;
    v9 = os_transaction_create();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_11;
    block[3] = &unk_1E7367818;
    v17 = v9;
    v18 = v7;
    v10 = v9;
    dispatch_async(v8, block);
  }

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_3(void *a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[_CDLogging knowledgeChannel];
  v8 = v7;
  if (((v6 == 0) & a2) != 0)
  {
    v9 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v9 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v7, v9))
  {
    *buf = 67109378;
    *&buf[4] = a2;
    LOWORD(v21) = 2112;
    *(&v21 + 2) = v6;
    _os_log_impl(&dword_191750000, v8, v9, "Completed saveObjects with success=%d. Error: %@.", buf, 0x12u);
  }

  v10 = a1[6];
  if (v10)
  {
    v11 = a1[5];
    if (!v11)
    {
      __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_3_cold_1();
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_2_7;
    v16[3] = &unk_1E73690A0;
    v18 = v10;
    v19 = a2;
    v17 = v6;
    v12 = v16;
    v13 = v11;
    v14 = os_transaction_create();
    *buf = MEMORY[0x1E69E9820];
    *&v21 = 3221225472;
    *(&v21 + 1) = __cd_dispatch_async_capture_tx_block_invoke_11;
    v22 = &unk_1E7367818;
    v23 = v14;
    v24 = v12;
    v15 = v14;
    dispatch_async(v13, buf);
  }

  if (v6)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
  }
}

void __79___DKXPCKnowledgeStore_deleteObjects_synchronous_responseQueue_withCompletion___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }

  v5 = a1[5];
  if (v5)
  {
    v6 = a1[4];
    if (!v6)
    {
      __79___DKXPCKnowledgeStore_deleteObjects_synchronous_responseQueue_withCompletion___block_invoke_2_cold_2();
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79___DKXPCKnowledgeStore_deleteObjects_synchronous_responseQueue_withCompletion___block_invoke_2_9;
    v13[3] = &unk_1E7367818;
    v15 = v5;
    v14 = v3;
    v7 = v13;
    v8 = v6;
    v9 = os_transaction_create();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_11;
    block[3] = &unk_1E7367818;
    v17 = v9;
    v18 = v7;
    v10 = v9;
    dispatch_async(v8, block);
  }

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void __79___DKXPCKnowledgeStore_deleteObjects_synchronous_responseQueue_withCompletion___block_invoke_3(void *a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[_CDLogging knowledgeChannel];
  v8 = v7;
  if (((v6 == 0) & a2) != 0)
  {
    v9 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v9 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v7, v9))
  {
    *buf = 67109378;
    *&buf[4] = a2;
    LOWORD(v21) = 2112;
    *(&v21 + 2) = v6;
    _os_log_impl(&dword_191750000, v8, v9, "Completed deleteObjects with success=%d. Error: %@.", buf, 0x12u);
  }

  v10 = a1[6];
  if (v10)
  {
    v11 = a1[5];
    if (!v11)
    {
      __79___DKXPCKnowledgeStore_deleteObjects_synchronous_responseQueue_withCompletion___block_invoke_3_cold_1();
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __79___DKXPCKnowledgeStore_deleteObjects_synchronous_responseQueue_withCompletion___block_invoke_2_10;
    v16[3] = &unk_1E73690A0;
    v18 = v10;
    v19 = a2;
    v17 = v6;
    v12 = v16;
    v13 = v11;
    v14 = os_transaction_create();
    *buf = MEMORY[0x1E69E9820];
    *&v21 = 3221225472;
    *(&v21 + 1) = __cd_dispatch_async_capture_tx_block_invoke_11;
    v22 = &unk_1E7367818;
    v23 = v14;
    v24 = v12;
    v15 = v14;
    dispatch_async(v13, buf);
  }

  if (v6)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
  }
}

void __100___DKXPCKnowledgeStore_deleteAllEventsInEventStream_synchronous_error_responseQueue_withCompletion___block_invoke_11(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }

  v5 = a1[5];
  if (v5)
  {
    v6 = a1[4];
    if (!v6)
    {
      __100___DKXPCKnowledgeStore_deleteAllEventsInEventStream_synchronous_error_responseQueue_withCompletion___block_invoke_11_cold_2();
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __100___DKXPCKnowledgeStore_deleteAllEventsInEventStream_synchronous_error_responseQueue_withCompletion___block_invoke_2;
    v13[3] = &unk_1E7367818;
    v15 = v5;
    v14 = v3;
    v7 = v13;
    v8 = v6;
    v9 = os_transaction_create();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_11;
    block[3] = &unk_1E7367818;
    v17 = v9;
    v18 = v7;
    v10 = v9;
    dispatch_async(v8, block);
  }

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void __100___DKXPCKnowledgeStore_deleteAllEventsInEventStream_synchronous_error_responseQueue_withCompletion___block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[_CDLogging knowledgeChannel];
  v8 = v7;
  if (v6)
  {
    v9 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v9 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(v7, v9))
  {
    *buf = 134218242;
    *&buf[4] = a2;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_191750000, v8, v9, "Completed deleteAllEventsInEventStreamNamed with count=%lu. Error: %@.", buf, 0x16u);
  }

  *(*(a1[7] + 8) + 24) = a2;
  if (v6)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), a3);
  }

  v10 = a1[6];
  if (v10)
  {
    v11 = a1[5];
    if (!v11)
    {
      __100___DKXPCKnowledgeStore_deleteAllEventsInEventStream_synchronous_error_responseQueue_withCompletion___block_invoke_3_cold_1();
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __100___DKXPCKnowledgeStore_deleteAllEventsInEventStream_synchronous_error_responseQueue_withCompletion___block_invoke_2_12;
    v16[3] = &unk_1E736A880;
    v17 = v10;
    v18 = *(a1 + 7);
    v12 = v16;
    v13 = v11;
    v14 = os_transaction_create();
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __cd_dispatch_async_capture_tx_block_invoke_11;
    v20 = &unk_1E7367818;
    v21 = v14;
    v22 = v12;
    v15 = v14;
    dispatch_async(v13, buf);
  }
}

void __104___DKXPCKnowledgeStore_deleteAllEventsMatchingPredicate_synchronous_error_responseQueue_withCompletion___block_invoke_14(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }

  v5 = a1[5];
  if (v5)
  {
    v6 = a1[4];
    if (!v6)
    {
      __104___DKXPCKnowledgeStore_deleteAllEventsMatchingPredicate_synchronous_error_responseQueue_withCompletion___block_invoke_14_cold_2();
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __104___DKXPCKnowledgeStore_deleteAllEventsMatchingPredicate_synchronous_error_responseQueue_withCompletion___block_invoke_2;
    v13[3] = &unk_1E7367818;
    v15 = v5;
    v14 = v3;
    v7 = v13;
    v8 = v6;
    v9 = os_transaction_create();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_11;
    block[3] = &unk_1E7367818;
    v17 = v9;
    v18 = v7;
    v10 = v9;
    dispatch_async(v8, block);
  }

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void __104___DKXPCKnowledgeStore_deleteAllEventsMatchingPredicate_synchronous_error_responseQueue_withCompletion___block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[_CDLogging knowledgeChannel];
  v8 = v7;
  if (v6)
  {
    v9 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v9 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(v7, v9))
  {
    *buf = 134218242;
    *&buf[4] = a2;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_191750000, v8, v9, "Completed deleteAllEventsMatchingPredicate with count=%lu. Error: %@.", buf, 0x16u);
  }

  *(*(a1[7] + 8) + 24) = a2;
  if (v6)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), a3);
  }

  v10 = a1[6];
  if (v10)
  {
    v11 = a1[5];
    if (!v11)
    {
      __104___DKXPCKnowledgeStore_deleteAllEventsMatchingPredicate_synchronous_error_responseQueue_withCompletion___block_invoke_3_cold_1();
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __104___DKXPCKnowledgeStore_deleteAllEventsMatchingPredicate_synchronous_error_responseQueue_withCompletion___block_invoke_2_15;
    v16[3] = &unk_1E736A880;
    v17 = v10;
    v18 = *(a1 + 7);
    v12 = v16;
    v13 = v11;
    v14 = os_transaction_create();
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __cd_dispatch_async_capture_tx_block_invoke_11;
    v20 = &unk_1E7367818;
    v21 = v14;
    v22 = v12;
    v15 = v14;
    dispatch_async(v13, buf);
  }
}

void __84___DKXPCKnowledgeStore_executeQuery_synchronous_error_responseQueue_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[_DKQuery queryNotExecutableError];
  (*(v1 + 16))(v1, 0, v2);
}

void __84___DKXPCKnowledgeStore_executeQuery_synchronous_error_responseQueue_withCompletion___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }

  v5 = a1[5];
  if (v5)
  {
    v6 = a1[4];
    if (!v6)
    {
      __84___DKXPCKnowledgeStore_executeQuery_synchronous_error_responseQueue_withCompletion___block_invoke_2_cold_2();
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84___DKXPCKnowledgeStore_executeQuery_synchronous_error_responseQueue_withCompletion___block_invoke_2_17;
    v13[3] = &unk_1E7367818;
    v15 = v5;
    v14 = v3;
    v7 = v13;
    v8 = v6;
    v9 = os_transaction_create();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_11;
    block[3] = &unk_1E7367818;
    v17 = v9;
    v18 = v7;
    v10 = v9;
    dispatch_async(v8, block);
  }

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void __84___DKXPCKnowledgeStore_executeQuery_synchronous_error_responseQueue_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 40) handleResults:v5 error:v6];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = +[_CDLogging knowledgeChannel];
  v10 = v9;
  if (v7)
  {
    v11 = v6 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v12 = OS_LOG_TYPE_ERROR;
  }

  v13 = os_log_type_enabled(v9, v12);
  if (isKindOfClass)
  {
    if (!v13)
    {
      goto LABEL_13;
    }

    *buf = 67109634;
    *&buf[4] = v7 != 0;
    *v31 = 2048;
    *&v31[2] = [v7 count];
    *&v31[10] = 2112;
    *&v31[12] = v6;
    v14 = "Completed executeQuery with success=%d, count=%lu. Error: %@.";
    v15 = v10;
    v16 = v12;
    v17 = 28;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_13;
    }

    *buf = 67109378;
    *&buf[4] = v7 != 0;
    *v31 = 2112;
    *&v31[2] = v6;
    v14 = "Completed executeQuery with success=%d. Error: %@.";
    v15 = v10;
    v16 = v12;
    v17 = 18;
  }

  _os_log_impl(&dword_191750000, v15, v16, v14, buf, v17);
LABEL_13:

  v18 = *(a1 + 56);
  if (v18)
  {
    v19 = *(a1 + 48);
    if (!v19)
    {
      __84___DKXPCKnowledgeStore_executeQuery_synchronous_error_responseQueue_withCompletion___block_invoke_3_cold_1();
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __84___DKXPCKnowledgeStore_executeQuery_synchronous_error_responseQueue_withCompletion___block_invoke_2_19;
    v26[3] = &unk_1E73691D8;
    v29 = v18;
    v27 = v7;
    v28 = v6;
    v20 = v26;
    v21 = v19;
    v22 = os_transaction_create();
    *buf = MEMORY[0x1E69E9820];
    *v31 = 3221225472;
    *&v31[8] = __cd_dispatch_async_capture_tx_block_invoke_11;
    *&v31[16] = &unk_1E7367818;
    v32 = v22;
    v33 = v20;
    v23 = v22;
    dispatch_async(v21, buf);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }

  v24 = *(*(a1 + 72) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v7;
}

void __45___DKXPCKnowledgeStore_synchronizeWithError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __45___DKXPCKnowledgeStore_synchronizeWithError___block_invoke_21(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[_CDLogging knowledgeChannel];
  v8 = v7;
  if (((v6 == 0) & a2) != 0)
  {
    v9 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v9 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v7, v9))
  {
    v10[0] = 67109378;
    v10[1] = a2;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_191750000, v8, v9, "Completed synchronizeWithError with success=%d. Error: %@.", v10, 0x12u);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __60___DKXPCKnowledgeStore_synchronizeWithUrgency_client_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __60___DKXPCKnowledgeStore_synchronizeWithUrgency_client_error___block_invoke_22(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[_CDLogging knowledgeChannel];
  v8 = v7;
  if (((v6 == 0) & a2) != 0)
  {
    v9 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v9 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v7, v9))
  {
    v10[0] = 67109378;
    v10[1] = a2;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_191750000, v8, v9, "Completed synchronizeWithUrgency with success=%d. Error: %@.", v10, 0x12u);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __79___DKXPCKnowledgeStore_synchronizeWithUrgency_client_responseQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    if (!v6)
    {
      __79___DKXPCKnowledgeStore_synchronizeWithUrgency_client_responseQueue_completion___block_invoke_cold_2();
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79___DKXPCKnowledgeStore_synchronizeWithUrgency_client_responseQueue_completion___block_invoke_2;
    v11[3] = &unk_1E7367818;
    v13 = v5;
    v12 = v3;
    v7 = v11;
    v8 = v6;
    v9 = os_transaction_create();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_11;
    block[3] = &unk_1E7367818;
    v15 = v9;
    v16 = v7;
    v10 = v9;
    dispatch_async(v8, block);
  }
}

void __79___DKXPCKnowledgeStore_synchronizeWithUrgency_client_responseQueue_completion___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[_CDLogging knowledgeChannel];
  v7 = v6;
  if (((v5 == 0) & a2) != 0)
  {
    v8 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v8 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v6, v8))
  {
    *buf = 67109378;
    *&buf[4] = a2;
    LOWORD(v19) = 2112;
    *(&v19 + 2) = v5;
    _os_log_impl(&dword_191750000, v7, v8, "Completed synchronizeWithUrgency with success=%d. Error: %@.", buf, 0x12u);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(a1 + 40);
    if (!v10)
    {
      __79___DKXPCKnowledgeStore_synchronizeWithUrgency_client_responseQueue_completion___block_invoke_3_cold_1();
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79___DKXPCKnowledgeStore_synchronizeWithUrgency_client_responseQueue_completion___block_invoke_2_23;
    v15[3] = &unk_1E7367818;
    v17 = v9;
    v16 = v5;
    v11 = v15;
    v12 = v10;
    v13 = os_transaction_create();
    *buf = MEMORY[0x1E69E9820];
    *&v19 = 3221225472;
    *(&v19 + 1) = __cd_dispatch_async_capture_tx_block_invoke_11;
    v20 = &unk_1E7367818;
    v21 = v13;
    v22 = v11;
    v14 = v13;
    dispatch_async(v12, buf);
  }
}

void __42___DKXPCKnowledgeStore_deleteRemoteState___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __42___DKXPCKnowledgeStore_deleteRemoteState___block_invoke_24(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[_CDLogging knowledgeChannel];
  v8 = v7;
  if (((v6 == 0) & a2) != 0)
  {
    v9 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v9 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v7, v9))
  {
    v10[0] = 67109378;
    v10[1] = a2;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_191750000, v8, v9, "Completed deleteRemoteState with success=%d. Error: %@.", v10, 0x12u);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __54___DKXPCKnowledgeStore_sourceDeviceIdentityWithError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __54___DKXPCKnowledgeStore_sourceDeviceIdentityWithError___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[_CDLogging knowledgeChannel];
  v8 = v7;
  if (v6)
  {
    v9 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v9 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(v7, v9))
  {
    v12[0] = 67109378;
    v12[1] = v6 == 0;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_191750000, v8, v9, "Completed sourceDeviceIdentityWithError with success=%d. Error: %@.", v12, 0x12u);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
}

void __34___DKXPCKnowledgeStore_deviceUUID__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }
}

void __34___DKXPCKnowledgeStore_deviceUUID__block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[_CDLogging knowledgeChannel];
  v8 = v7;
  if (v6)
  {
    v9 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v9 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(v7, v9))
  {
    v12[0] = 67109378;
    v12[1] = v6 == 0;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_191750000, v8, v9, "Completed deviceUUIDWithReply with success=%d. Error: %@.", v12, 0x12u);
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
}

void __66___DKXPCKnowledgeStore_disableSyncPolicyForFeature_transportType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }
}

void __66___DKXPCKnowledgeStore_disableSyncPolicyForFeature_transportType___block_invoke_29(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[_CDLogging knowledgeChannel];
  v6 = v5;
  if (a2)
  {
    v7 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v5, v7))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_191750000, v6, v7, "Completed disableSyncPolicyWithReply with success=%d. Error: %@.", v8, 0x12u);
  }
}

void __69___DKXPCKnowledgeStore_isSyncPolicyDisabledForFeature_transportType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }
}

void __69___DKXPCKnowledgeStore_isSyncPolicyDisabledForFeature_transportType___block_invoke_34(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[_CDLogging knowledgeChannel];
  v7 = v6;
  if (v5)
  {
    v8 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v8 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(v6, v8))
  {
    v9 = 134218498;
    v10 = a2;
    v11 = 1024;
    v12 = v5 == 0;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_191750000, v7, v8, "Completed isSyncPolicyDisabled->%lu with success=%d. Error: %@.", &v9, 0x1Cu);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2 != 0;
}

void __51___DKXPCKnowledgeStore_confirmConnectionWithError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __51___DKXPCKnowledgeStore_confirmConnectionWithError___block_invoke_35(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[_CDLogging knowledgeChannel];
  v8 = v7;
  v9 = v6 == 0;
  v10 = v9 & a2;
  if ((v9 & a2) != 0)
  {
    v11 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v11 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v7, v11))
  {
    v12[0] = 67109378;
    v12[1] = a2;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_191750000, v8, v11, "Completed confirmConnectionWithError with success=%d. Error: %@.", v12, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = v10 & 1;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

@end