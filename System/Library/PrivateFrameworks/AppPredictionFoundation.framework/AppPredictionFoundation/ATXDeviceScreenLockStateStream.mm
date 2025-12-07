@interface ATXDeviceScreenLockStateStream
- (id)_deviceScreenLockedPublisherWithStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit shouldReverse:(BOOL)reverse;
- (void)_enumerateEventsForLockedState:(BOOL)state startDate:(id)date endDate:(id)endDate filterBlock:(id)block limit:(unint64_t)limit ascending:(BOOL)ascending block:(id)a9;
@end

@implementation ATXDeviceScreenLockStateStream

- (void)_enumerateEventsForLockedState:(BOOL)state startDate:(id)date endDate:(id)endDate filterBlock:(id)block limit:(unint64_t)limit ascending:(BOOL)ascending block:(id)a9
{
  ascendingCopy = ascending;
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  v18 = a9;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__6;
  v30[4] = __Block_byref_object_dispose__6;
  v31 = 0;
  v19 = !ascendingCopy;
  v20 = [(ATXDeviceScreenLockStateStream *)self _deviceScreenLockedPublisherWithStartDate:dateCopy endDate:endDateCopy limit:limit shouldReverse:!ascendingCopy];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __117__ATXDeviceScreenLockStateStream__enumerateEventsForLockedState_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_11;
  v24[3] = &unk_2785907E0;
  v28 = v19;
  stateCopy = state;
  v27 = v30;
  v21 = blockCopy;
  v25 = v21;
  v22 = v18;
  v26 = v22;
  v23 = [v20 sinkWithCompletion:&__block_literal_global_17 shouldContinue:v24];

  _Block_object_dispose(v30, 8);
}

void __117__ATXDeviceScreenLockStateStream__enumerateEventsForLockedState_startDate_endDate_filterBlock_limit_ascending_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  if (v3)
  {
    v4 = __atxlog_handle_default(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __117__ATXDeviceScreenLockStateStream__enumerateEventsForLockedState_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(v2, v4);
    }
  }
}

uint64_t __117__ATXDeviceScreenLockStateStream__enumerateEventsForLockedState_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_11(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 56);
  v6 = *(a1 + 57);
  v7 = [v4 eventBody];
  v8 = [v7 starting];

  if (v6 == v5)
  {
    if ((v8 & 1) == 0)
    {
LABEL_3:
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      goto LABEL_20;
    }
  }

  else if (v8)
  {
    goto LABEL_3;
  }

  v10 = a1 + 48;
  if (v4 && *(*(*(a1 + 48) + 8) + 40))
  {
    v11 = objc_alloc(MEMORY[0x277CBEAA8]);
    [*(*(*(a1 + 48) + 8) + 40) timestamp];
    v12 = [v11 initWithTimeIntervalSinceReferenceDate:?];
    v13 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v4 timestamp];
    v14 = [v13 initWithTimeIntervalSinceReferenceDate:?];
    v15 = [ATXDeviceScreenLockStateEvent alloc];
    if (*(a1 + 56))
    {
      v16 = v14;
    }

    else
    {
      v16 = v12;
    }

    if (*(a1 + 56))
    {
      v17 = v12;
    }

    else
    {
      v17 = v14;
    }

    v18 = [(ATXDeviceScreenLockStateEvent *)v15 initWithStartTime:v16 endTime:v17 isLocked:*(a1 + 57)];
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = 0;

    v21 = *(a1 + 32);
    if (!v21 || (*(v21 + 16))(v21, v18))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v22 = __atxlog_handle_default(v9);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __122__ATXCarPlayConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_shouldContinue_block___block_invoke_1_cold_1(v10, v4, v22);
    }
  }

LABEL_20:

  return 1;
}

- (id)_deviceScreenLockedPublisherWithStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit shouldReverse:(BOOL)reverse
{
  reverseCopy = reverse;
  endDateCopy = endDate;
  dateCopy = date;
  v19 = BiomeLibrary();
  device = [v19 Device];
  screenLocked = [device ScreenLocked];
  if (reverseCopy)
  {
    v13 = endDateCopy;
  }

  else
  {
    v13 = dateCopy;
  }

  if (reverseCopy)
  {
    v14 = dateCopy;
  }

  else
  {
    v14 = endDateCopy;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:limit];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:limit];
  v17 = [screenLocked atx_publisherWithStartDate:v13 endDate:v14 maxEvents:v15 lastN:v16 reversed:reverseCopy];

  return v17;
}

void __117__ATXDeviceScreenLockStateStream__enumerateEventsForLockedState_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 136315394;
  v5 = "[ATXDeviceScreenLockStateStream _enumerateEventsForLockedState:startDate:endDate:filterBlock:limit:ascending:block:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "%s: error fetching latest Device.ScreenLocked event from biome %@", &v4, 0x16u);
}

@end