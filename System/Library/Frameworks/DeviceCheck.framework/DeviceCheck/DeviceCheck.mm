uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2380454F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t __DCLogSystem_block_invoke()
{
  DCLogSystem_log = os_log_create("com.apple.devicecheck", "dc");

  return MEMORY[0x2821F96F8]();
}

uint64_t __DCLogSystem_block_invoke_0()
{
  DCLogSystem_log_0 = os_log_create("com.apple.devicecheck", "dc");

  return MEMORY[0x2821F96F8]();
}

uint64_t __DCLogSystem_block_invoke_1()
{
  DCLogSystem_log_1 = os_log_create("com.apple.devicecheck", "dc");

  return MEMORY[0x2821F96F8]();
}

uint64_t __DCLogSystem_block_invoke_2()
{
  DCLogSystem_log_2 = os_log_create("com.apple.devicecheck", "dc");

  return MEMORY[0x2821F96F8]();
}

uint64_t __DCLogSystem_block_invoke_3()
{
  DCLogSystem_log_3 = os_log_create("com.apple.devicecheck", "dc");

  return MEMORY[0x2821F96F8]();
}

BOOL delete_keychain_item_for_system_keychain(void *a1, void *a2, uint64_t a3, void *a4)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = *MEMORY[0x277CDC250];
  v9 = *MEMORY[0x277CDC5C8];
  v21[0] = *MEMORY[0x277CDC228];
  v21[1] = v9;
  v22[0] = v8;
  v22[1] = MEMORY[0x277CBEC38];
  v21[2] = *MEMORY[0x277CDC5D0];
  v22[2] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v11 = [v10 mutableCopy];

  if (v7)
  {
    [v11 setObject:v7 forKeyedSubscript:*MEMORY[0x277CDC080]];
  }

  if (v6)
  {
    [v11 setObject:v6 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  v12 = SecItemDelete(v11);
  v16 = v12 == -25300 || v12 == 0;
  if (v12 == -25300 || v12 == 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = createAppAttestError("delete_keychain_item_for_system_keychain", 161, -1, 0, @"Failed to remove existing keychain item %@: %d", v13, v14, v15, v7);
  }

  if (a4)
  {
    v19 = v16;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v18 = v18;
    *a4 = v18;
  }

  return v16;
}

uint64_t store_keychain_item(__SecKey *a1, void *a2, void *a3, void *a4)
{
  v36[6] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v12 = v8;
  if (a1 && v8)
  {
    v34 = 0;
    v13 = delete_keychain_item_for_system_keychain(v7, v8, 0, &v34);
    v17 = v34;
    if (v13)
    {
      v18 = *MEMORY[0x277CDC228];
      v35[0] = *MEMORY[0x277CDC080];
      v35[1] = v18;
      v19 = *MEMORY[0x277CDC250];
      v36[0] = v12;
      v36[1] = v19;
      v20 = *MEMORY[0x277CDC5C8];
      v35[2] = *MEMORY[0x277CDC5F8];
      v35[3] = v20;
      v21 = *MEMORY[0x277CDBED8];
      v35[4] = *MEMORY[0x277CDC5D0];
      v35[5] = v21;
      v36[2] = a1;
      v36[3] = MEMORY[0x277CBEC38];
      v22 = *MEMORY[0x277CDBF00];
      v36[4] = MEMORY[0x277CBEC38];
      v36[5] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:6];
      v24 = [v23 mutableCopy];

      v25 = SecKeyCopyAttributes(a1);
      if (v7)
      {
        [v24 setObject:v7 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
      }

      if (!SecItemAdd(v24, 0))
      {
        v31 = 1;
        goto LABEL_14;
      }

      v29 = createAppAttestError("store_keychain_item", 224, -1, 0, @"Failed to add %@ to keychain: %d", v26, v27, v28, v12);
    }

    else
    {
      v29 = createAppAttestError("store_keychain_item", 196, -1, v17, @"Failed to delete existing keychain item.", v14, v15, v16, v33);

      v24 = 0;
      v25 = 0;
    }

    v17 = v29;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = createAppAttestError("store_keychain_item", 191, -2, 0, @"Invalid input(s).", v9, v10, v11, v33);
    v24 = 0;
    v25 = 0;
    if (!a4)
    {
LABEL_12:
      v31 = 0;
      goto LABEL_14;
    }
  }

  v30 = v17;
  v31 = 0;
  *a4 = v17;
LABEL_14:

  return v31;
}

id copy_keychain_data(void *a1, void *a2, OSStatus *a3, void *a4)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v12 = v8;
  result = 0;
  if (v8)
  {
    v13 = *MEMORY[0x277CDBFB8];
    v31[0] = *MEMORY[0x277CDC080];
    v31[1] = v13;
    v32[0] = v8;
    v32[1] = v8;
    v14 = *MEMORY[0x277CDC120];
    v31[2] = *MEMORY[0x277CDBF20];
    v31[3] = v14;
    v32[2] = v8;
    v32[3] = v8;
    v15 = *MEMORY[0x277CDC238];
    v16 = *MEMORY[0x277CDC558];
    v31[4] = *MEMORY[0x277CDC228];
    v31[5] = v16;
    v32[4] = v15;
    v32[5] = MEMORY[0x277CBEC38];
    v17 = *MEMORY[0x277CDC5D0];
    v31[6] = *MEMORY[0x277CDC5C8];
    v31[7] = v17;
    v32[6] = MEMORY[0x277CBEC38];
    v32[7] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:8];
    v19 = [v18 mutableCopy];

    if (v7)
    {
      [v19 setObject:v7 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
    }

    v23 = SecItemCopyMatching(v19, &result);
    if (v23)
    {
      v24 = createAppAttestError("copy_keychain_data", 272, -1, 0, @"Failed to copy keychain item %@: %d", v20, v21, v22, v12);
      v25 = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v24 = 0;
      v25 = result;
      result = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v24 = createAppAttestError("copy_keychain_data", 248, -2, 0, @"Invalid input.", v9, v10, v11, v29);
  v25 = 0;
  v19 = 0;
  v23 = -1;
  if (a3)
  {
LABEL_8:
    *a3 = v23;
  }

LABEL_9:
  if (a4 && !v25)
  {
    v26 = v24;
    *a4 = v24;
  }

  if (result)
  {
    CFRelease(result);
  }

  v27 = v25;

  return v27;
}

void sub_23804A0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23804AD48(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

id clientProcessingQueue(uint64_t a1)
{
  if (clientProcessingQueue_queueCreationGuard != -1)
  {
    clientProcessingQueue_cold_1();
  }

  v2 = clientProcessingQueue_queue;

  return v2;
}

void __clientProcessingQueue_block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.devicecheck.client.processing", v0);
  v2 = clientProcessingQueue_queue;
  clientProcessingQueue_queue = v1;

  if (DCLogSystem_onceToken != -1)
  {
    __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
  }

  v3 = DCLogSystem_log;
  if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315650;
    v5 = "DCAppAttestController.m";
    v6 = 1024;
    v7 = 745;
    v8 = 2080;
    label = dispatch_queue_get_label(clientProcessingQueue_queue);
    _os_log_impl(&dword_238044000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created client processing queue. { queueName=%s }", &v4, 0x1Cu);
  }
}

void sub_23804D688(_Unwind_Exception *a1)
{
  (*(v3 + 16))(v3);
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

id copy_process_name()
{
  v0 = MEMORY[0x28223BE20]();
  v10 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x1000uLL);
  memset(v8, 0, sizeof(v8));
  if (v0 && ([MEMORY[0x277CCAE80] currentConnection], (v1 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v2 = v1;
    v3 = [v1 processIdentifier];
  }

  else
  {
    v3 = getpid();
  }

  proc_pidpath(v3, buffer, 0x1000u);
  v4 = strlen(buffer);
  if ((v4 & 0x80000000) == 0)
  {
    do
    {
      if (buffer[v4] == 47)
      {
        break;
      }
    }

    while (v4-- > 0);
  }

  __strlcpy_chk();
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", v8];

  return v6;
}

void sub_23804DAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23804DE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

id createAppAttestError(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  v14 = MEMORY[0x277CCAB68];
  v15 = a5;
  v16 = [[v14 alloc] initWithFormat:v15 arguments:&a9];

  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = v17;
  if (v16)
  {
    [v17 setObject:v16 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v13)
  {
    [v18 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (os_variant_allows_internal_security_policies())
  {
    if (a1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
      [v18 setObject:v19 forKeyedSubscript:@"FunctionName"];
    }

    if (a2)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      [v18 setObject:v20 forKeyedSubscript:@"SourceLine"];
    }
  }

  v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.appattest.error" code:a3 userInfo:v18];

  return v21;
}

void sub_23804EFE0(_Unwind_Exception *a1)
{
  (*(v3 + 16))(v3);
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}