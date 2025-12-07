@interface AXXIPCSimpleSendDataWithFencePort
@end

@implementation AXXIPCSimpleSendDataWithFencePort

void ____AXXIPCSimpleSendDataWithFencePort_block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = ____AXXIPCSimpleSendDataWithFencePort_block_invoke_2;
  v1[3] = &unk_1E71EB218;
  v1[4] = *(a1 + 32);
  v2 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v1);
}

void ____AXXIPCSimpleSendDataWithFencePort_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = AXLogIPC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ____AXXIPCSendData_block_invoke_2_cold_2();
    }
  }

  else
  {
    *(v2 + 24) = 1;
    if ((*(a1 + 40) + 1) >= 2)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2050000000;
      v5 = getUIWindowClass_softClass;
      v11 = getUIWindowClass_softClass;
      if (!getUIWindowClass_softClass)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __getUIWindowClass_block_invoke;
        v7[3] = &unk_1E71E9A80;
        v7[4] = &v8;
        __getUIWindowClass_block_invoke(v7);
        v5 = v9[3];
      }

      v6 = v5;
      _Block_object_dispose(&v8, 8);
      [v5 _synchronizeDrawingAcrossProcessesOverPort:*(a1 + 40)];
    }
  }
}

@end