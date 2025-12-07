@interface SCLSchoolModeWakeScheduler
- (void)scheduleWakeForDate:(id)date;
@end

@implementation SCLSchoolModeWakeScheduler

- (void)scheduleWakeForDate:(id)date
{
  v15 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  date = [MEMORY[0x277CBEAA8] date];
  [dateCopy timeIntervalSinceDate:date];
  v6 = v5;

  v8 = scl_framework_log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "com.apple.schooltime.wake.activity";
    v13 = 2112;
    v14 = dateCopy;
    _os_log_impl(&dword_264829000, v8, OS_LOG_TYPE_DEFAULT, "Registering xpc activity %s for %@", buf, 0x16u);
  }

  v9 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __50__SCLSchoolModeWakeScheduler_scheduleWakeForDate___block_invoke;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = v6;
  xpc_activity_register("com.apple.schooltime.wake.activity", v9, handler);
}

void __50__SCLSchoolModeWakeScheduler_scheduleWakeForDate___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = scl_framework_log(state);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = v3;
    v15 = 2048;
    v16 = state;
    _os_log_impl(&dword_264829000, v5, OS_LOG_TYPE_INFO, "registered & received xpc activity %@ with state %ld", &v13, 0x16u);
  }

  if (!xpc_activity_get_state(v3))
  {
    v11 = scl_framework_log(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = 136315394;
      v14 = "com.apple.schooltime.wake.activity";
      v15 = 2048;
      v16 = v12;
      _os_log_impl(&dword_264829000, v11, OS_LOG_TYPE_INFO, "%s checked in, setting criteria wake interval %f", &v13, 0x16u);
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, *MEMORY[0x277D86250], *(a1 + 32));
    xpc_dictionary_set_int64(v9, *MEMORY[0x277D86270], 1);
    xpc_dictionary_set_BOOL(v9, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_BOOL(v9, *MEMORY[0x277D863B0], 1);
    xpc_dictionary_set_BOOL(v9, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(v9, *MEMORY[0x277D863A0], 0);
    xpc_activity_set_criteria(v3, v9);
    goto LABEL_17;
  }

  if (xpc_activity_should_defer(v3))
  {
    v6 = xpc_activity_set_state(v3, 3);
    v7 = v6;
    v8 = scl_framework_log(v6);
    v9 = v8;
    if (!v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __50__SCLSchoolModeWakeScheduler_scheduleWakeForDate___block_invoke_cold_1(v9);
      }

      goto LABEL_17;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "com.apple.schooltime.wake.activity";
      v10 = "%s deferred";
LABEL_14:
      _os_log_impl(&dword_264829000, v9, OS_LOG_TYPE_INFO, v10, &v13, 0xCu);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (xpc_activity_get_state(v3) == 2)
  {
    v9 = scl_framework_log(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "com.apple.schooltime.wake.activity";
      v10 = "%s asked to run";
      goto LABEL_14;
    }

LABEL_17:
  }
}

void __50__SCLSchoolModeWakeScheduler_scheduleWakeForDate___block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "com.apple.schooltime.wake.activity";
  _os_log_error_impl(&dword_264829000, log, OS_LOG_TYPE_ERROR, "xpc_activity_set_state(%s, XPC_ACTIVITY_STATE_DEFER) failed", &v1, 0xCu);
}

@end