@interface IOGCDeviceManagerHandleDevices
@end

@implementation IOGCDeviceManagerHandleDevices

BOOL ____IOGCDeviceManagerHandleDevices_block_invoke(uint64_t a1, void *a2)
{
  Value = CFSetGetValue(*(*(a1 + 32) + 32), a2);
  v5 = Value;
  if (!*(*(a1 + 32) + 56))
  {
    goto LABEL_6;
  }

  v6 = *(a1 + 40);
  if (*(v6 + 56))
  {
    Mutable = *(v6 + 72);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*(v6 + 8), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(v6 + 72) = Mutable;
    }

    if (CFDictionaryContainsKey(Mutable, a2))
    {
LABEL_6:
      if (!v5)
      {
        return _IOGCDeviceGetPlugInInterface(a2) != 0;
      }

      return 0;
    }

    v9 = *(v6 + 56);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ____IOGCDeviceManagerStartObservingDevice_block_invoke;
    v11[3] = &__block_descriptor_48_e12_v20__0I8_v12l;
    v11[4] = v6;
    v11[5] = a2;
    Value = [a2 addInterestNotification:v9 type:"IOGeneralInterest" handler:v11];
    if (Value)
    {
      CFDictionarySetValue(*(v6 + 72), a2, Value);
      if (!v5)
      {
        return _IOGCDeviceGetPlugInInterface(a2) != 0;
      }

      return 0;
    }
  }

  if (v5)
  {
    CFSetAddValue(*(a1 + 48), v5);
    return 0;
  }

  v10 = _gc_log_iokit(Value);
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    ____IOGCDeviceManagerHandleDevices_block_invoke_cold_1((a1 + 40), a2, v10);
    return 0;
  }

  return result;
}

void ____IOGCDeviceManagerHandleDevices_block_invoke_36(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ____IOGCDeviceManagerHandleDevices_block_invoke_2;
  v6[3] = &__block_descriptor_48_e12_v24__0_8_B16l;
  v7 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v6];
  v3 = *(a1 + 56);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ____IOGCDeviceManagerHandleDevices_block_invoke_3;
  v4[3] = &__block_descriptor_48_e12_v24__0_8_B16l;
  v5 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:v4];
  CFRelease(*(a1 + 56));
  CFRelease(*(a1 + 32));
}

void ____IOGCDeviceManagerHandleDevices_block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1D2C3B000, log, OS_LOG_TYPE_ERROR, "%@ #ERROR Failed to setup disconnection observation of %@.  Device will be ignored.", &v4, 0x16u);
}

@end