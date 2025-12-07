@interface FIBluetoothSensorLookup
+ (BOOL)hasHadPairedCyclingCadenceSensors;
+ (BOOL)hasHadPairedCyclingPowerSensors;
+ (BOOL)hasHadPairedCyclingSpeedSensors;
+ (id)shared;
- (BOOL)hideBluetoothPowerAlert;
- (BOOL)testAndSetPeripheral:(id)peripheral forTag:(id)tag existingValueCheck:(id)check valueSetting:(id)setting;
- (FIBluetoothSensorLookup)init;
- (void)_queueCheckForPeripherals;
- (void)_queueSpinUpBTCheck:(int64_t)check;
- (void)_spinUpCheck;
- (void)centralManagerDidUpdateState:(id)state;
@end

@implementation FIBluetoothSensorLookup

+ (BOOL)hasHadPairedCyclingSpeedSensors
{
  shared = [self shared];
  hasHadPairedCyclingSpeedSensors = [shared hasHadPairedCyclingSpeedSensors];

  return hasHadPairedCyclingSpeedSensors;
}

+ (BOOL)hasHadPairedCyclingCadenceSensors
{
  shared = [self shared];
  hasHadPairedCyclingCadenceSensors = [shared hasHadPairedCyclingCadenceSensors];

  return hasHadPairedCyclingCadenceSensors;
}

+ (BOOL)hasHadPairedCyclingPowerSensors
{
  shared = [self shared];
  hasHadPairedCyclingPowerSensors = [shared hasHadPairedCyclingPowerSensors];

  return hasHadPairedCyclingPowerSensors;
}

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[FIBluetoothSensorLookup shared];
  }

  v3 = shared___shared;

  return v3;
}

uint64_t __33__FIBluetoothSensorLookup_shared__block_invoke()
{
  v0 = objc_alloc_init(FIBluetoothSensorLookup);
  v1 = shared___shared;
  shared___shared = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (FIBluetoothSensorLookup)init
{
  v5.receiver = self;
  v5.super_class = FIBluetoothSensorLookup;
  v2 = [(FIBluetoothSensorLookup *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("BTSensorLookup", 0);
    [(FIBluetoothSensorLookup *)v2 setQueue:v3];

    [(FIBluetoothSensorLookup *)v2 setPendingTypes:0];
  }

  return v2;
}

- (BOOL)hideBluetoothPowerAlert
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"CyclingHideBluetoothPowerAlert"];

  return v3;
}

- (void)_spinUpCheck
{
  objc_initWeak(&location, self);
  queue = [(FIBluetoothSensorLookup *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__FIBluetoothSensorLookup__spinUpCheck__block_invoke;
  v4[3] = &unk_2790051E8;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__FIBluetoothSensorLookup__spinUpCheck__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queueSpinUpBTCheck:7];
}

- (void)_queueSpinUpBTCheck:(int64_t)check
{
  v23[1] = *MEMORY[0x277D85DE8];
  queue = [(FIBluetoothSensorLookup *)self queue];
  dispatch_assert_queue_V2(queue);

  [(FIBluetoothSensorLookup *)self setPendingTypes:[(FIBluetoothSensorLookup *)self pendingTypes]| check];
  centralManager = [(FIBluetoothSensorLookup *)self centralManager];

  if (centralManager)
  {
    centralManager2 = [(FIBluetoothSensorLookup *)self centralManager];
    state = [centralManager2 state];

    if (state == 5)
    {

      [(FIBluetoothSensorLookup *)self _queueCheckForPeripherals];
    }

    else
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_24B35E000, v15, OS_LOG_TYPE_DEFAULT, "[Bluetooth] Waiting for CBCentralManager to power on", v21, 2u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = MEMORY[0x277CCC330];
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_24B35E000, v10, OS_LOG_TYPE_DEFAULT, "[Bluetooth] Powering up CBCentralManager", v21, 2u);
    }

    v11 = +[FIStoreDemoModeProvider isRunningInStoreDemoMode];
    if ([(FIBluetoothSensorLookup *)self hideBluetoothPowerAlert])
    {
      _HKInitializeLogging();
      v12 = *v9;
      v13 = os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT);
      v14 = 0;
      if (v13)
      {
        *v21 = 0;
        _os_log_impl(&dword_24B35E000, v12, OS_LOG_TYPE_DEFAULT, "[Bluetooth] Always hiding Bluetooth Power Alert, overriden in defaults", v21, 2u);
        v14 = 0;
      }
    }

    else
    {
      v14 = !v11;
    }

    v16 = objc_alloc(MEMORY[0x277CBDFF8]);
    queue2 = [(FIBluetoothSensorLookup *)self queue];
    v22 = *MEMORY[0x277CBDD98];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    v23[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v20 = [v16 initWithDelegate:self queue:queue2 options:v19];
    [(FIBluetoothSensorLookup *)self setCentralManager:v20];
  }
}

- (BOOL)testAndSetPeripheral:(id)peripheral forTag:(id)tag existingValueCheck:(id)check valueSetting:(id)setting
{
  v20 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  tagCopy = tag;
  checkCopy = check;
  settingCopy = setting;
  if (![peripheralCopy hasTag:tagCopy])
  {
    goto LABEL_5;
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = tagCopy;
    v18 = 2112;
    v19 = peripheralCopy;
    _os_log_impl(&dword_24B35E000, v13, OS_LOG_TYPE_DEFAULT, "[Bluetooth] Did find %@ peripheral %@", &v16, 0x16u);
  }

  if ((checkCopy[2](checkCopy) & 1) == 0)
  {
    v14 = 1;
    settingCopy[2](settingCopy, 1);
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  return v14;
}

- (void)_queueCheckForPeripherals
{
  queue = [(FIBluetoothSensorLookup *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingTypes = [(FIBluetoothSensorLookup *)self pendingTypes];
  [(FIBluetoothSensorLookup *)self setPendingTypes:0];
  centralManager = [(FIBluetoothSensorLookup *)self centralManager];

  if (centralManager)
  {
    centralManager2 = [(FIBluetoothSensorLookup *)self centralManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__FIBluetoothSensorLookup__queueCheckForPeripherals__block_invoke;
    v8[3] = &unk_279005250;
    v8[4] = self;
    v8[5] = pendingTypes;
    [centralManager2 retrievePeripheralsWithCustomProperties:&unk_285E6B0D0 completion:v8];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B35E000, v7, OS_LOG_TYPE_DEFAULT, "[Bluetooth] CBCentralManager has gone away before we could check", buf, 2u);
    }
  }
}

void __52__FIBluetoothSensorLookup__queueCheckForPeripherals__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      __52__FIBluetoothSensorLookup__queueCheckForPeripherals__block_invoke_cold_1(v6, v7);
    }

    goto LABEL_26;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v26;
  v12 = *MEMORY[0x277CCC9C8];
  v13 = *MEMORY[0x277CCC9B0];
  v14 = *MEMORY[0x277CCC9C0];
  do
  {
    v15 = 0;
    do
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v16 = *(*(&v25 + 1) + 8 * v15);
      v17 = *(a1 + 40);
      if (v17)
      {
        v10 |= [*(a1 + 32) testAndSetPeripheral:*(*(&v25 + 1) + 8 * v15) forTag:v12 existingValueCheck:&__block_literal_global_323 valueSetting:&__block_literal_global_326];
        v17 = *(a1 + 40);
        if ((v17 & 2) == 0)
        {
LABEL_11:
          if ((v17 & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_12:
          v10 |= [*(a1 + 32) testAndSetPeripheral:v16 forTag:v14 existingValueCheck:&__block_literal_global_332 valueSetting:&__block_literal_global_334];
          goto LABEL_13;
        }
      }

      else if ((v17 & 2) == 0)
      {
        goto LABEL_11;
      }

      v10 |= [*(a1 + 32) testAndSetPeripheral:v16 forTag:v13 existingValueCheck:&__block_literal_global_328 valueSetting:&__block_literal_global_330];
      if (*(a1 + 40))
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v15;
    }

    while (v9 != v15);
    v18 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    v9 = v18;
  }

  while (v18);
  v6 = 0;
  if (v10)
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B35E000, v19, OS_LOG_TYPE_DEFAULT, "[Bluetooth] Posting update notification", buf, 2u);
    }

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    v21 = [objc_opt_class() didUpdateBTSensorSeenStatus];
    [v20 postNotificationName:v21 object:*(a1 + 32)];
  }

LABEL_23:
  _HKInitializeLogging();
  v22 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24B35E000, v22, OS_LOG_TYPE_DEFAULT, "[Bluetooth] Removing reference to CBCentralManager.", buf, 2u);
  }

  v23 = [*(a1 + 32) centralManager];
  [v23 setDelegate:0];

  [*(a1 + 32) setCentralManager:0];
LABEL_26:
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  queue = [(FIBluetoothSensorLookup *)self queue];
  dispatch_assert_queue_V2(queue);

  state = [stateCopy state];
  if (state == 5)
  {

    [(FIBluetoothSensorLookup *)self _queueCheckForPeripherals];
  }
}

void __52__FIBluetoothSensorLookup__queueCheckForPeripherals__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24B35E000, a2, OS_LOG_TYPE_ERROR, "[Bluetooth] Error retrieving peripherals: %@", &v2, 0xCu);
}

@end