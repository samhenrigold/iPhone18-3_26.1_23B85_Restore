@interface CMPedometer
@end

@implementation CMPedometer

void __64__CMPedometer_HealthDaemon__hd_beginStreamingFromDatum_handler___block_invoke_383(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 40) + 16);
  if (v3)
  {
    v4();
    v5 = [v3 lastObject];
    v6 = [v5 hd_datestamp];

    if (v6)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v7 = [MEMORY[0x277CBEAA8] distantPast];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning pedometer updates from %{public}@.", buf, 0x16u);
    }

    v13 = *(a1 + 32);
    v14 = *(*(*(a1 + 48) + 8) + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__CMPedometer_HealthDaemon__hd_beginStreamingFromDatum_handler___block_invoke_385;
    v15[3] = &unk_27862E220;
    v15[4] = v13;
    v16 = *(a1 + 40);
    [v13 startPedometerUpdatesFromDate:v14 withHandler:v15];
  }

  else
  {
    v4();
  }
}

void __64__CMPedometer_HealthDaemon__hd_beginStreamingFromDatum_handler___block_invoke_385(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Received datum %@, error: %{public}@.", buf, 0x20u);
  }

  v9 = *(a1 + 40);
  if (v5)
  {
    v11 = v5;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    (*(v9 + 16))(v9, v10, v6);
  }

  else
  {
    (*(v9 + 16))(v9, 0, v6);
  }
}

@end