@interface ATXBluetoothConnectedStream
+ (int64_t)deviceTypeFromBiomeBluetoothDeviceType:(int)type;
- (id)_bluetoothPublisherWithStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit shouldReverse:(BOOL)reverse;
- (void)_enumerateEventsConnected:(BOOL)connected startDate:(id)date endDate:(id)endDate filterBlock:(id)block limit:(unint64_t)limit ascending:(BOOL)ascending block:(id)a9;
@end

@implementation ATXBluetoothConnectedStream

+ (int64_t)deviceTypeFromBiomeBluetoothDeviceType:(int)type
{
  if (type > 0x32)
  {
    return 2;
  }

  else
  {
    return qword_22638AC80[type];
  }
}

- (id)_bluetoothPublisherWithStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit shouldReverse:(BOOL)reverse
{
  reverseCopy = reverse;
  if (reverse)
  {
    dateCopy = endDate;
  }

  else
  {
    dateCopy = date;
  }

  if (reverse)
  {
    endDateCopy2 = date;
  }

  else
  {
    endDateCopy2 = endDate;
  }

  v12 = endDateCopy2;
  v13 = dateCopy;
  endDateCopy3 = endDate;
  dateCopy3 = date;
  v15 = BiomeLibrary();
  device = [v15 Device];
  wireless = [device Wireless];
  bluetooth = [wireless Bluetooth];
  v19 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v13 endDate:v12 maxEvents:limit lastN:limit reversed:reverseCopy];

  v20 = [bluetooth publisherWithUseCase:@"ProactiveAppPrediction" options:v19];

  return v20;
}

- (void)_enumerateEventsConnected:(BOOL)connected startDate:(id)date endDate:(id)endDate filterBlock:(id)block limit:(unint64_t)limit ascending:(BOOL)ascending block:(id)a9
{
  ascendingCopy = ascending;
  blockCopy = block;
  v16 = a9;
  endDateCopy = endDate;
  dateCopy = date;
  v19 = objc_opt_new();
  v20 = !ascendingCopy;
  v21 = [(ATXBluetoothConnectedStream *)self _bluetoothPublisherWithStartDate:dateCopy endDate:endDateCopy limit:limit shouldReverse:!ascendingCopy];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2;
  v26[3] = &unk_2785904D0;
  v30 = v20;
  connectedCopy = connected;
  v26[4] = self;
  v27 = v19;
  v28 = blockCopy;
  v29 = v16;
  v22 = v16;
  v23 = blockCopy;
  v24 = v19;
  v25 = [v21 sinkWithCompletion:&__block_literal_global_11 shouldContinue:v26];
}

void __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  if (v3)
  {
    v4 = __atxlog_handle_default(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(v2, v4);
    }
  }
}

uint64_t __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = *(a1 + 65);
  v6 = objc_opt_class();
  v7 = [v3 eventBody];
  v8 = [v6 deviceTypeFromBiomeBluetoothDeviceType:{objc_msgSend(v7, "deviceType")}];

  if ((v8 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = __atxlog_handle_default(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2_cold_3(v3, v10);
    }

    goto LABEL_29;
  }

  v11 = [v3 eventBody];
  v12 = [v11 address];
  if (!v12)
  {

LABEL_10:
    v10 = __atxlog_handle_default(v16);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2_cold_2(v3, v10);
    }

    goto LABEL_29;
  }

  v13 = v12;
  v14 = [v3 eventBody];
  v15 = [v14 name];

  if (!v15)
  {
    goto LABEL_10;
  }

  v17 = [v3 eventBody];
  v10 = [v17 address];

  v18 = [v3 eventBody];
  v19 = [v18 starting];

  if (v5 == v4)
  {
    if ((v19 & 1) == 0)
    {
LABEL_8:
      [*(a1 + 40) setObject:v3 forKeyedSubscript:v10];
      goto LABEL_29;
    }
  }

  else if (v19)
  {
    goto LABEL_8;
  }

  v20 = [*(a1 + 40) objectForKeyedSubscript:v10];
  v21 = v20;
  if (v3 && v20)
  {
    v22 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v21 timestamp];
    v23 = [v22 initWithTimeIntervalSinceReferenceDate:?];
    v24 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v3 timestamp];
    v25 = [v24 initWithTimeIntervalSinceReferenceDate:?];
    v26 = [ATXBluetoothConnectedEvent alloc];
    if (*(a1 + 64))
    {
      v27 = v25;
    }

    else
    {
      v27 = v23;
    }

    v38 = v27;
    v39 = v26;
    v40 = v25;
    v41 = v23;
    if (*(a1 + 64))
    {
      v28 = v23;
    }

    else
    {
      v28 = v25;
    }

    v37 = *(a1 + 65);
    v29 = [v21 eventBody];
    v30 = [v29 address];
    v31 = [v21 eventBody];
    v32 = [v31 name];
    v33 = [(ATXBluetoothConnectedEvent *)v39 initWithStartTime:v38 endTime:v28 connected:v37 deviceAddress:v30 deviceName:v32 deviceType:v8];

    [*(a1 + 40) setObject:0 forKeyedSubscript:v10];
    v34 = *(a1 + 48);
    if (!v34 || (*(v34 + 16))(v34, v33))
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v35 = __atxlog_handle_default(v20);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2_cold_1(v21, v3, v35);
    }
  }

LABEL_29:
  return 1;
}

void __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 136315394;
  v5 = "[ATXBluetoothConnectedStream _enumerateEventsConnected:startDate:endDate:filterBlock:limit:ascending:block:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "%s: error fetching latest Device.Wireless.Bluetooth event from biome %@", &v4, 0x16u);
}

void __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2_cold_2(void *a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a1 eventBody];
  v5 = [v4 address];
  v6 = [a1 eventBody];
  v7 = [v6 name];
  v8 = 138412802;
  v9 = a1;
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "Skipping event: %@ because address %@ or name %@ is nil", &v8, 0x20u);
}

void __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_226368000, a2, OS_LOG_TYPE_DEBUG, "Skipping event as deviceType not supported: %@", &v2, 0xCu);
}

@end