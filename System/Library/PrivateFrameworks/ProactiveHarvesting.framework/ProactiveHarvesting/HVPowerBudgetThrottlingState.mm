@interface HVPowerBudgetThrottlingState
- (HVPowerBudgetThrottlingState)initWithPath:(id)path log:(id)log;
- (id)state;
- (uint64_t)_updateOperationProgress;
- (unsigned)canDoDiscretionaryWork:(unsigned int *)work;
- (unsigned)canDoExtraDiscretionaryWork;
- (void)_writeThrottleStateLocked;
- (void)checkBatteryStateForRefill;
- (void)dealloc;
- (void)didConsumeAnExtraBudgetedOperation;
- (void)endWork;
- (void)refillState;
- (void)startWork;
- (void)updateState:(unsigned int)state;
@end

@implementation HVPowerBudgetThrottlingState

- (void)checkBatteryStateForRefill
{
  pthread_mutex_lock(&self->_lock);
  if (self->_hasClassCUnlock && self->_state.budgetState == 1)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_state.timeOfLastChange];
    [v3 timeIntervalSinceNow];
    v5 = v4;

    if (v5 < -300.0)
    {
      _refillState(&self->_state);
      [(HVPowerBudgetThrottlingState *)self _writeThrottleStateLocked];
    }
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)_writeThrottleStateLocked
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = *(self + 72);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2321EC000, v2, OS_LOG_TYPE_INFO, "Writing throttle state", buf, 2u);
    }

    if ((*(self + 136) & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__writeThrottleStateLocked object:self file:@"HVPowerBudget.m" lineNumber:532 description:{@"Invalid parameter not satisfying: %@", @"_hasClassCUnlock"}];
    }

    v3 = *(self + 128);
    if ((v3 & 0x80000000) == 0 && pwrite(v3, (self + 80), 0x20uLL, 0) != 32)
    {
      v4 = *(self + 72);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = v4;
        v6 = *__error();
        v7 = __error();
        v8 = strerror(*v7);
        *buf = 67109378;
        v11 = v6;
        v12 = 2080;
        v13 = v8;
        _os_log_error_impl(&dword_2321EC000, v5, OS_LOG_TYPE_ERROR, "Throttle state write truncated [%i] %s", buf, 0x12u);
      }
    }
  }
}

- (void)startWork
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2321EC000, log, OS_LOG_TYPE_DEFAULT, "Starting throttled work", v7, 2u);
  }

  pthread_mutex_lock(&self->_lock);
  if (self->_opInProgress)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HVPowerBudget.m" lineNumber:711 description:@"Work already in progress!"];
  }

  if (self->_hasClassCUnlock)
  {
    self->_opInProgress = 1;
    self->_wasOnBattery = HVIsConnectedToPower() ^ 1;
    if (+[HVUserDefaults harvestBudgetDisabled])
    {
      v5 = 0;
    }

    else
    {
      v5 = !+[HVUserDefaults harvestBudgetThrottleBudgetDisabled];
    }

    self->_wasEnabled = v5;
    self->_absTimeAtOpStart = mach_absolute_time();
    self->_timeSinceOpStart = 0;
  }

  pthread_mutex_unlock(&self->_lock);
}

- (uint64_t)_updateOperationProgress
{
  if (result)
  {
    v1 = result;
    if ((*(result + 136) & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__updateOperationProgress object:v1 file:@"HVPowerBudget.m" lineNumber:543 description:{@"Invalid parameter not satisfying: %@", @"_hasClassCUnlock"}];
    }

    v2 = mach_absolute_time() - *(v1 + 112);
    if (machTimeToNanoseconds_onceToken != -1)
    {
      dispatch_once(&machTimeToNanoseconds_onceToken, &__block_literal_global_184);
    }

    *(v1 + 120) = v2 * machTimeToNanoseconds_machTimebaseInfo / *algn_2810BB4BC;
    if ((HVIsConnectedToPower() & 1) == 0)
    {
      *(v1 + 134) = 1;
    }

    result = +[HVUserDefaults harvestBudgetDisabled];
    if ((result & 1) == 0)
    {
      result = +[HVUserDefaults harvestBudgetThrottleBudgetDisabled];
      if ((result & 1) == 0)
      {
        *(v1 + 135) = 1;
      }
    }
  }

  return result;
}

- (void)endWork
{
  v25 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->_lock);
  if (self->_hasClassCUnlock && self->_opInProgress)
  {
    [(HVPowerBudgetThrottlingState *)self _updateOperationProgress];
    if (self->_wasOnBattery && self->_wasEnabled)
    {
      opsLeft = self->_state.opsLeft;
      v4 = __OFSUB__(opsLeft, 1);
      v5 = opsLeft - 1;
      if (v5 < 0 == v4)
      {
        nsecLeft = self->_state.nsecLeft;
        if (nsecLeft >= 1)
        {
          self->_state.opsLeft = v5;
          self->_state.nsecLeft = nsecLeft - self->_timeSinceOpStart;
          [(HVPowerBudgetThrottlingState *)self _writeThrottleStateLocked];
        }
      }
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_state.nsecLeft;
      v9 = self->_timeSinceOpStart * 0.000001;
      v10 = "NO";
      if (self->_wasOnBattery)
      {
        v11 = "YES";
      }

      else
      {
        v11 = "NO";
      }

      if (self->_wasEnabled)
      {
        v10 = "YES";
      }

      v12 = self->_state.opsLeft;
      v13 = 134219266;
      v14 = v9;
      v15 = 2048;
      v16 = v8 * 0.000001;
      v17 = 2080;
      v18 = v11;
      v19 = 2080;
      v20 = v10;
      v21 = 1024;
      v22 = v12;
      v23 = 2048;
      v24 = v8;
      _os_log_impl(&dword_2321EC000, log, OS_LOG_TYPE_DEFAULT, "Ending throttled work; duration was %f ms (%f ms left), wasOnBattery %s, wasEnabled %s, Throttle Budget: %d ops left, %lld ns left", &v13, 0x3Au);
    }

    self->_opInProgress = 0;
    self->_timeSinceOpStart = 0;
    *&self->_wasOnBattery = 0;
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)updateState:(unsigned int)state
{
  v22 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->_lock);
  if (!self->_hasClassCUnlock || self->_state.magic == -1804290770 && self->_state.budgetState == state)
  {

    pthread_mutex_unlock(&self->_lock);
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    v7 = v6;

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = log;
      if (state > 7)
      {
        v10 = @"Unknown reason";
      }

      else
      {
        v10 = off_278968BB0[state];
      }

      v11 = v10;
      budgetState = self->_state.budgetState;
      if (budgetState > 7)
      {
        v13 = @"Unknown reason";
      }

      else
      {
        v13 = off_278968BB0[budgetState];
      }

      v14 = v13;
      v15 = v7 - self->_state.timeOfLastChange;
      v16 = 138412802;
      v17 = v11;
      v18 = 2112;
      v19 = v14;
      v20 = 2048;
      v21 = v15;
      _os_log_impl(&dword_2321EC000, v9, OS_LOG_TYPE_DEFAULT, "Budget Status Changed to %@ from %@ after %llu seconds", &v16, 0x20u);
    }

    self->_state.magic = -1804290770;
    self->_state.budgetState = state;
    self->_state.timeOfLastChange = v7;
    [(HVPowerBudgetThrottlingState *)self _writeThrottleStateLocked];
    pthread_mutex_unlock(&self->_lock);
  }
}

- (void)didConsumeAnExtraBudgetedOperation
{
  pthread_mutex_lock(&self->_lock);
  if (self->_hasClassCUnlock)
  {
    if ((HVIsConnectedToPower() & 1) == 0)
    {
      self->_wasOnBattery = 1;
    }

    if (!+[HVUserDefaults harvestBudgetDisabled](HVUserDefaults, "harvestBudgetDisabled") && !+[HVUserDefaults harvestBudgetThrottleBudgetDisabled])
    {
      self->_wasEnabled = 1;
    }

    if (self->_wasOnBattery && self->_wasEnabled)
    {
      extraOpsLeft = self->_state.extraOpsLeft;
      v4 = __OFSUB__(extraOpsLeft, 1);
      v5 = extraOpsLeft - 1;
      if (v5 < 0 == v4)
      {
        self->_state.extraOpsLeft = v5;
        [(HVPowerBudgetThrottlingState *)self _writeThrottleStateLocked];
      }
    }
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)refillState
{
  pthread_mutex_lock(&self->_lock);
  if (self->_hasClassCUnlock)
  {
    _refillState(&self->_state);
    [(HVPowerBudgetThrottlingState *)self _writeThrottleStateLocked];
  }

  pthread_mutex_unlock(&self->_lock);
}

- (id)state
{
  v29 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->_lock);
  if (self->_hasClassCUnlock)
  {
    nsecLeft = self->_state.nsecLeft;
    if (self->_opInProgress)
    {
      [(HVPowerBudgetThrottlingState *)self _updateOperationProgress];
      if (self->_wasOnBattery && self->_wasEnabled)
      {
        nsecLeft -= self->_timeSinceOpStart;
      }
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      opsLeft = self->_state.opsLeft;
      wasOnBattery = self->_wasOnBattery;
      wasEnabled = self->_wasEnabled;
      timeSinceOpStart = self->_timeSinceOpStart;
      *buf = 67110144;
      v20 = opsLeft;
      v21 = 2048;
      v22 = nsecLeft;
      v23 = 1024;
      v24 = wasOnBattery;
      v25 = 1024;
      v26 = wasEnabled;
      v27 = 2048;
      v28 = timeSinceOpStart;
      _os_log_impl(&dword_2321EC000, log, OS_LOG_TYPE_DEFAULT, "Throttle check: %i ops left, %lli ns left, onBattery %d, disabled %d, timeSinceOpStart %lld", buf, 0x28u);
    }

    v17[0] = @"opsLeft";
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_state.opsLeft];
    v18[0] = v9;
    v17[1] = @"nsecLeft";
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:nsecLeft];
    v18[1] = v10;
    v17[2] = @"extraOpsLeft";
    v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_state.extraOpsLeft];
    v18[2] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  }

  else
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2321EC000, v13, OS_LOG_TYPE_DEFAULT, "Throttle check: disabled due to class C lock, returning all 0's for state", buf, 2u);
    }

    v15[0] = @"opsLeft";
    v15[1] = @"nsecLeft";
    v16[0] = &unk_284752A48;
    v16[1] = &unk_284752A78;
    v15[2] = @"extraOpsLeft";
    v16[2] = &unk_284752A48;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  }

  pthread_mutex_unlock(&self->_lock);

  return v12;
}

- (unsigned)canDoExtraDiscretionaryWork
{
  v16 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->_lock);
  if (self->_hasClassCUnlock)
  {
    extraOpsLeft = self->_state.extraOpsLeft;
    +[HVUserDefaults harvestBudgetReserve];
    v5 = v4 * 200.0 < extraOpsLeft || self->_state.extraOpsLeft > 0;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_state.extraOpsLeft;
      v9 = @"HVPowerBudgetLevelNone";
      if (v5)
      {
        v9 = @"HVPowerBudgetLevelReserve";
      }

      v10 = v9;
      v13[0] = 67109378;
      v13[1] = v8;
      v14 = 2114;
      v15 = v10;
      v11 = log;
      _os_log_impl(&dword_2321EC000, v11, OS_LOG_TYPE_DEFAULT, "Extra budgeted operations check: %i extra ops left (%{public}@)", v13, 0x12u);
    }
  }

  else
  {
    v6 = self->_log;
    LOBYTE(v5) = 0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_2321EC000, v6, OS_LOG_TYPE_DEFAULT, "Extra budgeted operations check: disabled due to class C lock", v13, 2u);
      LOBYTE(v5) = 0;
    }
  }

  pthread_mutex_unlock(&self->_lock);
  return v5;
}

- (unsigned)canDoDiscretionaryWork:(unsigned int *)work
{
  v56 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->_lock);
  if (self->_hasClassCUnlock)
  {
    nsecLeft = self->_state.nsecLeft;
    if (self->_opInProgress)
    {
      [(HVPowerBudgetThrottlingState *)self _updateOperationProgress];
      if (self->_wasOnBattery && self->_wasEnabled)
      {
        nsecLeft -= self->_timeSinceOpStart;
      }
    }

    v6 = +[HVUserDefaults harvestBudgetNumberOfOperations];
    +[HVUserDefaults harvestBudgetReserve];
    v8 = (v7 * v6);
    opsLeft = self->_state.opsLeft;
    v10 = opsLeft > v8;
    if (opsLeft > 0)
    {
      v10 = 1;
    }

    if (opsLeft <= v8)
    {
      v11 = opsLeft > 0;
    }

    else
    {
      v11 = 2;
    }

    if (v10)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    +[HVUserDefaults harvestBudgetCPUTimeSeconds];
    v14 = v13;
    +[HVUserDefaults harvestBudgetReserve];
    if (nsecLeft > (v14 * v15 * 1000000000.0))
    {
      v16 = 2;
    }

    else
    {
      v16 = nsecLeft > 0;
    }

    v17 = nsecLeft < 1 && nsecLeft <= (v14 * v15 * 1000000000.0);
    v18 = HVIsConnectedToPower();
    v19 = +[HVUserDefaults harvestBudgetThrottleBudgetDisabled];
    if (v11 >= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v11;
    }

    if ((v19 | v18))
    {
      v21 = 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = self->_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_state.opsLeft;
      v24 = off_278968BF0[v11];
      v25 = self->_state.nsecLeft;
      v26 = off_278968BF0[v16];
      v27 = off_278968BF0[v21];
      opInProgress = self->_opInProgress;
      wasOnBattery = self->_wasOnBattery;
      wasEnabled = self->_wasEnabled;
      timeSinceOpStart = self->_timeSinceOpStart;
      v35[0] = 67111682;
      v35[1] = v23;
      v36 = 2114;
      v37 = v24;
      v38 = 2048;
      v39 = v25;
      v40 = 2114;
      v41 = v26;
      v42 = 1024;
      v43 = v18 & 1;
      v44 = 1024;
      v45 = v19;
      v46 = 2114;
      v47 = v27;
      v48 = 1024;
      v49 = opInProgress;
      v50 = 1024;
      v51 = wasOnBattery;
      v52 = 1024;
      v53 = wasEnabled;
      v54 = 2048;
      v55 = timeSinceOpStart;
      _os_log_impl(&dword_2321EC000, v22, OS_LOG_TYPE_DEFAULT, "Throttle check: %i ops left (%{public}@), %lli ns left (%{public}@), connectedToPower %d, disabled %d, canProcess %{public}@, opInProgress %d :(wasOnBattery %d, wasEnabled %d, timeSinceOpStart %lld)", v35, 0x58u);
    }

    if (work)
    {
      if (v17)
      {
        v32 = 4;
      }

      else
      {
        v32 = v12;
      }

      if (v18)
      {
        v32 = 1;
      }

      if (v19)
      {
        v32 = 6;
      }

      goto LABEL_41;
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v35[0]) = 0;
      _os_log_impl(&dword_2321EC000, log, OS_LOG_TYPE_DEFAULT, "Throttle check: disabled due to class C lock", v35, 2u);
    }

    LOBYTE(v21) = 0;
    if (work)
    {
      v32 = 7;
LABEL_41:
      *work = v32;
    }
  }

  pthread_mutex_unlock(&self->_lock);
  return v21;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  if (self->_hasClassCUnlock)
  {
    [(HVPowerBudgetThrottlingState *)self _writeThrottleStateLocked];
    fd = self->_fd;
    if ((fd & 0x80000000) == 0)
    {
      close(fd);
    }
  }

  v4.receiver = self;
  v4.super_class = HVPowerBudgetThrottlingState;
  [(HVPowerBudgetThrottlingState *)&v4 dealloc];
}

- (HVPowerBudgetThrottlingState)initWithPath:(id)path log:(id)log
{
  v28 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  logCopy = log;
  v25.receiver = self;
  v25.super_class = HVPowerBudgetThrottlingState;
  v8 = [(HVPowerBudgetThrottlingState *)&v25 init];
  v9 = v8;
  if (v8)
  {
    pthread_mutex_init(&v8->_lock, 0);
    if (logCopy)
    {
      v10 = logCopy;
    }

    else
    {
      v10 = MEMORY[0x277D86220];
    }

    objc_storeStrong(&v9->_log, v10);
    objc_initWeak(&location, v9);
    v19 = 0;
    v20 = &v19;
    v21 = 0x2810000000;
    v22 = &unk_23223ABC1;
    v23 = 0;
    v11 = MEMORY[0x277D42598];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__HVPowerBudgetThrottlingState_initWithPath_log___block_invoke;
    v15[3] = &unk_278968B90;
    objc_copyWeak(&v18, &location);
    v12 = pathCopy;
    v16 = v12;
    v17 = &v19;
    [v11 runBlockWhenDeviceIsClassCUnlocked:v15];
    if ((atomic_exchange(v20 + 32, 1u) & 1) == 0)
    {
      log = v9->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v12;
        _os_log_impl(&dword_2321EC000, log, OS_LOG_TYPE_DEFAULT, "HVPowerBudgetThrottlingState initializing before class C unlock with path %@. Budget state will be 0 until class C unlock occurs.", buf, 0xCu);
      }
    }

    objc_destroyWeak(&v18);
    _Block_object_dispose(&v19, 8);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __49__HVPowerBudgetThrottlingState_initWithPath_log___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    pthread_mutex_lock((WeakRetained + 8));
    WeakRetained[136] = 1;
    v4 = objc_autoreleasePoolPush();
    v5 = open([v3 UTF8String], 514, 384);
    objc_autoreleasePoolPop(v4);
    *(WeakRetained + 32) = v5;
    if (v5 < 0)
    {
      v6 = *(WeakRetained + 9);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = v6;
        v12 = *__error();
        v13 = __error();
        v14 = strerror(*v13);
        *buf = 67109378;
        *&buf[4] = v12;
        *&buf[8] = 2080;
        *&buf[10] = v14;
        _os_log_error_impl(&dword_2321EC000, v11, OS_LOG_TYPE_ERROR, "Error opening throttle state [%i]: %s", buf, 0x12u);
      }
    }

    v7 = *(WeakRetained + 9);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_INFO, "Reading throttle state", buf, 2u);
    }

    if ((WeakRetained[136] & 1) == 0)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:sel__readThrottleStateLocked object:WeakRetained file:@"HVPowerBudget.m" lineNumber:516 description:{@"Invalid parameter not satisfying: %@", @"_hasClassCUnlock"}];
    }

    v8 = *(WeakRetained + 32);
    if ((v8 & 0x80000000) == 0 && (memset(buf, 0, 32), pread(v8, buf, 0x20uLL, 0) == 32) && *buf == -1804290770)
    {
      v9 = *&buf[16];
      *(WeakRetained + 5) = *buf;
      *(WeakRetained + 6) = v9;
    }

    else
    {
      _refillState((WeakRetained + 80));
    }

    pthread_mutex_unlock((WeakRetained + 8));

    if (atomic_exchange((*(*(a1 + 40) + 8) + 32), 1u))
    {
      v10 = *(WeakRetained + 9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2321EC000, v10, OS_LOG_TYPE_DEFAULT, "HVPowerBudgetThrottlingState deferred class C unlock completed", buf, 2u);
      }
    }
  }
}

@end