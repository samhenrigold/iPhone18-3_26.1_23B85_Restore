@interface UIEventBus
@end

@implementation UIEventBus

void __19___UIEventBus_init__block_invoke(uint64_t a1)
{
  v2 = [_UIUpdateHIDInput alloc];
  if (v2)
  {
    v14.receiver = v2;
    v14.super_class = _UIUpdateHIDInput;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    if (v3)
    {
      v4 = objc_opt_new();
      v5 = *(v3 + 13);
      *(v3 + 13) = v4;

      *(v3 + 2) = 0;
      *(v3 + 1) = xmmword_18A680B00;
      *(v3 + 8) = 0;
      *(v3 + 40) = 0u;
      *(v3 + 56) = 0u;
      *(v3 + 72) = 0u;
      *(v3 + 11) = 0;
      *(v3 + 12) = "HIDEvent";
      _UIUpdateInputSetAddInput(&commonSet, v3 + 1);
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v3;

  v8 = [_UIUpdateHIDDigitizerInput inputWithProfileName:?];
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = v8;

  v11 = [_UIUpdateHIDDigitizerInput inputWithProfileName:?];
  v12 = *(a1 + 32);
  v13 = *(v12 + 32);
  *(v12 + 32) = v11;
}

void __23___UIEventBus_instance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED4A0978;
  qword_1ED4A0978 = v0;
}

void __25___UIEventBus_addEvents___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        [*(*(a1 + 40) + 8) addObject:{v7, v9}];
        v8 = [(_UIEventBus *)*(a1 + 40) inputForEvent:v7];
        [v8 addEvent:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void __27___UIEventBus_drainEvents___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = _UIUpdateCycleMainScheduler + 576;
  if (*(_UIUpdateCycleMainScheduler + 568) != 1)
  {
    v2 = 0;
  }

  v3 = *v2;
  v4 = *(v2 + 36);
  v5 = [*(*(a1 + 32) + 8) count];
  for (i = 16; i != 40; i += 8)
  {
    v7 = [*(*(a1 + 32) + i) stopEventForModelTime:v3 alignment:v4];
    if (v7)
    {
      v8 = [*(*(a1 + 32) + 8) indexOfObjectIdenticalTo:v7];
      if (v8 < v5)
      {
        v5 = v8;
      }
    }
  }

  if (v5)
  {
    v9 = 0;
    v10 = 0x8000000000000000;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = 0x8000000000000000;
    do
    {
      v12 = [*(*(a1 + 32) + 8) firstObject];
      TimeStamp = IOHIDEventGetTimeStamp();
      v14 = TimeStamp;
      if (v10 <= TimeStamp)
      {
        v10 = TimeStamp;
      }

      if (TimeStamp < v11)
      {
        v11 = TimeStamp;
      }

      if (_UIInternalPreferencesRevisionOnce != -1)
      {
        dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
      }

      v15 = _UIInternalPreferencesRevisionVar;
      if (_UIInternalPreferencesRevisionVar >= 1)
      {
        for (j = _UIInternalPreference_UseHIDEventRemoteTimestamp; v15 != j; j = _UIInternalPreference_UseHIDEventRemoteTimestamp)
        {
          if (v15 < j)
          {
            if (byte_1ED48B50C)
            {
              v19 = _UIEventHIDEventRemoteTimestamp(v12);
              if (v19)
              {
                log = *(__UILogGetCategoryCachedImpl("RemoteTimestamp", &qword_1ED4A0980) + 8);
                if (os_signpost_enabled(log))
                {
                  *buf = 134218240;
                  v43 = v19;
                  v44 = 2048;
                  v45 = v14;
                  _os_signpost_emit_with_name_impl(&dword_188A29000, log, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EventRemoteTimestamp", "eventRemoteTime=%lli, eventTime=%lli", buf, 0x16u);
                }
              }

              v20 = v32;
              if (v32 <= v19)
              {
                v20 = v19;
              }

              v32 = v20;
            }

            break;
          }

          _UIInternalPreferenceSync(v15, &_UIInternalPreference_UseHIDEventRemoteTimestamp, @"UseHIDEventRemoteTimestamp", _UIInternalPreferenceUpdateBool);
        }
      }

      v16 = [(_UIEventBus *)*(a1 + 32) inputForEvent:v12];
      [v16 removeEvent:v12];

      [*(a1 + 40) insertObject:v12 atIndex:0];
      [*(*(a1 + 32) + 8) removeObjectAtIndex:0];

      ++v9;
    }

    while (v9 != v5);
    *&xmmword_1ED4A37C8 = v10;
    *(&xmmword_1ED4A37C8 + 1) = v32;
    if (_UIUpdateCycleDebugTracingCheck && _UIUpdateCycleDebugTracingCheck(v17))
    {
      mach_absolute_time();
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventBus", &qword_1ED4A0988);
      v22 = *(CategoryCachedImpl + 8);
      v23 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), *(a1 + 32));
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v24 = v23;
        if (os_signpost_enabled(v22))
        {
          *__str = 0u;
          v40 = 0u;
          v41 = 0u;
          UCTimeToSeconds();
          v26 = v25;
          UCTimeToSeconds();
          snprintf(__str, 0x30uLL, "%.06f(%+.06f)s", v26, v26 - v27);
          *v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          UCTimeToSeconds();
          snprintf(v36, 0x30uLL, "%.06f(%+.06f)s", v28, v28 - v26);
          *v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          UCTimeToSeconds();
          snprintf(v33, 0x30uLL, "%.06f(%+.06f)s", v29, v29 - v26);
          v30 = [*(*(a1 + 32) + 8) count];
          *buf = 136316162;
          v43 = __str;
          v44 = 2080;
          v45 = v36;
          v46 = 2080;
          v47 = v33;
          v48 = 1024;
          v49 = v5;
          v50 = 1024;
          v51 = v30;
          _os_signpost_emit_with_name_impl(&dword_188A29000, v22, OS_SIGNPOST_EVENT, v24, "DrainEvents", "modelTime=%s, minEventTime=%s, maxEventTime=%s, drained=%u, remaining=%u", buf, 0x2Cu);
        }
      }
    }
  }
}

@end