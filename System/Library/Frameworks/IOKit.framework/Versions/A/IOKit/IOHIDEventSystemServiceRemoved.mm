@interface IOHIDEventSystemServiceRemoved
@end

@implementation IOHIDEventSystemServiceRemoved

void ____IOHIDEventSystemServiceRemoved_block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = _IOHIDLog(a1, a2);
  if (os_signpost_enabled(v3))
  {
    RegistryID = IOHIDServiceGetRegistryID(*(a1 + 32));
    v17 = 138412290;
    v18 = RegistryID;
    _os_signpost_emit_with_name_impl(&dword_197195000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemServiceRemove", "%@", &v17, 0xCu);
  }

  Owner = _IOHIDServiceGetOwner(*(a1 + 32));
  if (Owner)
  {
    IOHIDSessionRemoveService(Owner, *(a1 + 32));
  }

  else
  {
    _IOHIDServiceUnscheduleAsync(*(a1 + 32));
  }

  v6 = _IOHIDServiceCopyEventCounts(*(a1 + 32));
  v7 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_197195000, v7, OS_LOG_TYPE_DEFAULT, "Service removed: %{public}@ %@", &v17, 0x16u);
  }

  os_unfair_recursive_lock_lock_with_options();
  v9 = CFGetAllocator(*(a1 + 40));
  Copy = CFSetCreateCopy(v9, *(*(a1 + 40) + 48));
  os_unfair_recursive_lock_unlock();
  if (Copy)
  {
    CFSetApplyFunction(Copy, __RemoveConnectionServiceFunction, *(a1 + 32));
    CFRelease(Copy);
  }

  v11 = IOHIDServiceGetRegistryID(*(a1 + 32));
  os_unfair_recursive_lock_lock_with_options();
  CFDictionaryRemoveValue(*(*(a1 + 40) + 24), v11);
  CFDictionaryRemoveValue(*(*(a1 + 40) + 16), v11);
  v12 = CFGetAllocator(*(a1 + 40));
  v13 = CFSetCreateCopy(v12, *(*(a1 + 40) + 432));
  v14 = os_unfair_recursive_lock_unlock();
  if (v13)
  {
    CFSetApplyFunction(v13, _IOHIDEventSystemConnectionRecordServiceChanged, 0);
    CFRelease(v13);
  }

  v16 = _IOHIDLog(v14, v15);
  if (os_signpost_enabled(v16))
  {
    v17 = 138412290;
    v18 = v11;
    _os_signpost_emit_with_name_impl(&dword_197195000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemServiceRemove", "%@", &v17, 0xCu);
  }

  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
  if (v6)
  {
    CFRelease(v6);
  }
}

@end