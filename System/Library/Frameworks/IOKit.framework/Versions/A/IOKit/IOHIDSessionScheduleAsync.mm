@interface IOHIDSessionScheduleAsync
@end

@implementation IOHIDSessionScheduleAsync

intptr_t ____IOHIDSessionScheduleAsync_block_invoke(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = _IOHIDLog(a1, a2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v4)
  {
    *buf = 134217984;
    *&buf[4] = pthread_self();
    _os_log_impl(&dword_197195000, v3, OS_LOG_TYPE_INFO, "thread_id=%p", buf, 0xCu);
  }

  v35 = 0;
  theArray = 0;
  v34 = 0;
  v6 = _IOHIDLog(v4, v5);
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionSchedule", &unk_19724ED59, buf, 2u);
  }

  v7 = pthread_mutex_lock((*(*(a1 + 32) + 32) + 8));
  if (v7)
  {
    __IOHIDSessionCreate_block_invoke_cold_1(context, buf);
  }

  ++**(*(a1 + 32) + 32);
  v9 = _IOHIDLog(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_197195000, v9, OS_LOG_TYPE_INFO, "HID Session async scheduling initiated.", buf, 2u);
  }

  v10 = pthread_self();
  v11 = pthread_getschedparam(v10, &v34, &v35);
  if (!v11)
  {
    v13 = _IOHIDLog(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v35.sched_priority;
      *&buf[8] = 1024;
      *&buf[10] = v34;
      _os_log_impl(&dword_197195000, v13, OS_LOG_TYPE_INFO, "HID Session async root queue running at priority %d and schedule %d.", buf, 0xEu);
    }
  }

  context[0] = *(a1 + 32);
  context[1] = &theArray;
  v14 = *(context[0] + 160);
  v39.length = CFArrayGetCount(v14);
  v39.location = 0;
  CFArrayApplyFunction(v14, v39, __FilterFunctionOpen_0, context);
  v15 = theArray;
  if (theArray)
  {
    v16 = *(*(a1 + 32) + 152);
    v41.length = CFArrayGetCount(theArray);
    v41.location = 0;
    CFArrayAppendArray(v16, v15, v41);
    CFRelease(theArray);
  }

  v17 = *(*(a1 + 32) + 152);
  v40.length = CFArrayGetCount(v17);
  v40.location = 0;
  CFArrayApplyFunction(v17, v40, __FilterFunctionScheduleAsync_0, *(a1 + 32));
  v18 = CFGetAllocator(*(*(a1 + 32) + 136));
  Copy = CFSetCreateCopy(v18, *(*(a1 + 32) + 136));
  v21 = _IOHIDLog(Copy, v20);
  v22 = os_signpost_enabled(v21);
  if (v22)
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionRegisterFilters", &unk_19724ED59, buf, 2u);
  }

  if (Copy)
  {
    CFSetApplyFunction(Copy, __RegisterServiceWithSessionFunction, *(a1 + 32));
    CFRelease(Copy);
  }

  v24 = _IOHIDLog(v22, v23);
  if (os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionRegisterFilters", &unk_19724ED59, buf, 2u);
  }

  v26 = *(*(a1 + 32) + 32);
  if (*v26)
  {
    --*v26;
    v26 = pthread_mutex_unlock((v26 + 8));
    if (v26)
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v32, buf);
    }
  }

  v27 = _IOHIDLog(v26, v25);
  v28 = os_signpost_enabled(v27);
  if (v28)
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDSessionSchedule", &unk_19724ED59, buf, 2u);
  }

  v30 = _IOHIDLog(v28, v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_197195000, v30, OS_LOG_TYPE_INFO, "HID Session async scheduling complete.", buf, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

@end