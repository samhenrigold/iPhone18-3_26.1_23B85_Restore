@interface TVLTimeSync
+ (void)invalidate;
+ (void)timeSyncWithRemoteIPv4:(id)pv4 IPv6:(id)pv6 interface:(id)interface session:(id)session master:(BOOL)master completion:(id)completion;
- (TVLTimeSync)initWithRemoteIPv4:(id)pv4 IPv6:(id)pv6 interface:(id)interface;
- (unint64_t)convertToDomainTimeFromHostTime:(unint64_t)time grandmasterIdentity:(unint64_t *)identity;
- (unint64_t)convertToHostTimeFromDomainTime:(unint64_t)time grandmasterIdentity:(unint64_t *)identity;
- (void)_clearWaitForPTPClock;
- (void)_startPTPWithSession:(id)session completionHandler:(id)handler;
- (void)didChangeClockMasterForClock:(id)clock;
- (void)didChangeLockStateTo:(int)to forClock:(id)clock;
- (void)invalidate;
- (void)negotiateGrandmasterIdentityAttempt:(int64_t)attempt withCompletion:(id)completion;
@end

@implementation TVLTimeSync

+ (void)timeSyncWithRemoteIPv4:(id)pv4 IPv6:(id)pv6 interface:(id)interface session:(id)session master:(BOOL)master completion:(id)completion
{
  masterCopy = master;
  pv4Copy = pv4;
  pv6Copy = pv6;
  interfaceCopy = interface;
  sessionCopy = session;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (_timeSync)
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    v19 = [[TVLTimeSync alloc] initWithRemoteIPv4:pv4Copy IPv6:pv6Copy interface:interfaceCopy];
    v20 = _timeSync;
    _timeSync = v19;

    [_timeSync setMaster:masterCopy];
    [_timeSync _startPTPWithSession:sessionCopy completionHandler:completionCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)_startPTPWithSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  objc_storeStrong(&self->_session, session);
  objc_initWeak(&location, self);
  session = self->_session;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke;
  v14[3] = &unk_279D6BBD8;
  objc_copyWeak(&v15, &location);
  [(CUMessageSession *)session registerRequestID:@"com.apple.tvlatency.timesync" options:0 handler:v14];
  v10 = dispatch_get_global_queue(25, 0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_16;
  v12[3] = &unk_279D6BC28;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  dispatch_async(v10, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (_TVLLogDefault_onceToken != -1)
    {
      __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_cold_1();
    }

    v9 = _TVLLogDefault_log;
    if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = v6;
      _os_log_impl(&dword_26CD78000, v9, OS_LOG_TYPE_DEFAULT, "Incoming Grandmaster Sync Request: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_1;
    v24 = &unk_279D6BBB0;
    v10 = v6;
    v25 = v10;
    v26 = v7;
    v11 = MEMORY[0x26D6AEC20](&v21);
    v12 = [v10 objectForKey:{@"MESSAGE", v21, v22, v23, v24}];
    v13 = [v12 isEqualToString:@"GM"];

    if (v13)
    {
      v27[0] = @"GM";
      v14 = MEMORY[0x277CCABB0];
      v15 = [WeakRetained clock];
      v16 = [v14 numberWithUnsignedLongLong:{objc_msgSend(v15, "grandmasterIdentity")}];
      v27[1] = @"LOCKED";
      v28[0] = v16;
      v17 = MEMORY[0x277CCABB0];
      v18 = [WeakRetained clock];
      v19 = [v17 numberWithInt:{objc_msgSend(v18, "lockState") == 2}];
      v28[1] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
      (v11)[2](v11, 0, 0, v20);
    }
  }
}

void __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_1(uint64_t a1, int a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (_TVLLogDefault_onceToken != -1)
  {
    __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_cold_1();
  }

  v9 = _TVLLogDefault_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    if (a2)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
    }

    else
    {
      v11 = 0;
    }

    v12 = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_26CD78000, v9, OS_LOG_TYPE_DEFAULT, "Responding To Grandmaster Sync Request: %{public}@ | Response: %{public}@ | Error: %{public}@", &v12, 0x20u);
    if (a2)
    {
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_16(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = MEMORY[0x277D714D0];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_2;
  v3[3] = &unk_279D6BC50;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  [v2 notifyWhenClockManagerIsAvailable:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D714D0] sharedClockManager];
  v9 = 0;
  v3 = [v2 addgPTPServicesWithError:&v9];
  v4 = v9;

  if (v3)
  {
    v5 = MEMORY[0x277D714E0];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_3;
    v6[3] = &unk_279D6BC50;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [v5 notifyWhengPTPManagerIsAvailable:v6];

    objc_destroyWeak(&v8);
  }
}

void __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v35 = *MEMORY[0x277D714F0];
  v3 = [MEMORY[0x277D714E0] sharedgPTPManager];
  v34 = 0;
  v4 = [v3 addDomain:&v35 error:&v34];
  v5 = v34;

  if (v4)
  {
    v6 = dispatch_semaphore_create(0);
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v7 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_4;
    block[3] = &unk_279D6BC00;
    block[4] = WeakRetained;
    v28 = &v30;
    v29 = v35;
    v8 = v6;
    v27 = v8;
    dispatch_async(v7, block);

    v9 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v8, v9);
    *(v31 + 24) = 1;
    v25 = -1;
    if ([WeakRetained IPv4])
    {
      v10 = [WeakRetained clock];
      v11 = [WeakRetained networkInterfaceName];
      v24 = 0;
      v12 = [v10 addUnicastUDPv4EtEPortOnInterfaceNamed:v11 withDestinationAddress:objc_msgSend(WeakRetained allocatedPortNumber:"IPv4") error:{&v25, &v24}];
      v13 = v24;

      if ((v12 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = [WeakRetained IPv6];

      if (!v13)
      {
        goto LABEL_9;
      }

      v14 = [WeakRetained clock];
      v15 = [WeakRetained networkInterfaceName];
      v16 = [WeakRetained IPv6];
      v23 = 0;
      v17 = [v14 addUnicastUDPv6EtEPortOnInterfaceNamed:v15 withDestinationAddress:objc_msgSend(v16 allocatedPortNumber:"bytes") error:{&v25, &v23}];
      v13 = v23;

      if (!v17)
      {
        goto LABEL_9;
      }
    }

    v18 = [WeakRetained clock];

    if (v18)
    {
      v19 = dispatch_semaphore_create(0);
      [WeakRetained setWaitForPTPLock:v19];

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_20;
      v21[3] = &unk_279D6BC28;
      v21[4] = WeakRetained;
      v22 = *(a1 + 32);
      dispatch_async(v7, v21);

LABEL_14:
      _Block_object_dispose(&v30, 8);

      goto LABEL_15;
    }

LABEL_9:
    if (_TVLLogDefault_onceToken != -1)
    {
      __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_3_cold_1();
    }

    v20 = _TVLLogDefault_log;
    if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_ERROR))
    {
      __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_3_cold_2(v13, v20);
    }

    +[TVLTimeSync invalidate];
    (*(*(a1 + 32) + 16))();
    goto LABEL_14;
  }

LABEL_15:
}

intptr_t __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_4(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) clock];
  if (v2)
  {
LABEL_2:
  }

  else
  {
    *&v3 = 138543618;
    v16 = v3;
    while ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      usleep(0x64u);
      v5 = [MEMORY[0x277D714D0] sharedClockManager];
      v6 = [v5 clockWithClockIdentifier:*(a1 + 56)];
      [*(a1 + 32) setClock:v6];

      if (_TVLLogDefault_onceToken != -1)
      {
        __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_3_cold_1();
      }

      v7 = _TVLLogDefault_log;
      if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = v7;
        v10 = [v8 clock];
        v11 = [v10 clockName];
        v12 = [*(a1 + 32) clock];
        v13 = [v12 grandmasterIdentity];
        *buf = v16;
        v18 = v11;
        v19 = 2048;
        v20 = v13;
        _os_log_impl(&dword_26CD78000, v9, OS_LOG_TYPE_INFO, "Initialized PTP clock %{public}@ with grandmasterIdentity %llu", buf, 0x16u);
      }

      v14 = [*(a1 + 32) clock];

      if (v14)
      {
        v15 = [*(a1 + 32) clock];
        [v15 addClient:*(a1 + 32)];

        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      v2 = [*(a1 + 32) clock];
      if (v2)
      {
        goto LABEL_2;
      }
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_20(uint64_t a1)
{
  v2 = [*(a1 + 32) waitForPTPLock];
  v3 = dispatch_time(0, 3000000000);
  dispatch_semaphore_wait(v2, v3);

  v4 = [*(a1 + 32) clock];
  v5 = [v4 lockState];

  if (v5 == 1)
  {
    if (_TVLLogDefault_onceToken != -1)
    {
      __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_cold_1();
    }

    v6 = _TVLLogDefault_log;
    if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CD78000, v6, OS_LOG_TYPE_DEFAULT, "PTP clock is locking. Waiting for lock...", buf, 2u);
    }

    return;
  }

  v7 = [*(a1 + 32) clock];
  v8 = [v7 lockState];

  if (v8 != 2)
  {
    if (_TVLLogDefault_onceToken != -1)
    {
      __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_cold_1();
    }

    v10 = _TVLLogDefault_log;
    if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_ERROR))
    {
      __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_20_cold_2(v10);
    }

    [*(a1 + 32) _clearWaitForPTPClock];
    +[TVLTimeSync invalidate];
    v11 = *(*(a1 + 40) + 16);
    goto LABEL_23;
  }

  if (![*(a1 + 32) isMaster])
  {
    if (_TVLLogDefault_onceToken != -1)
    {
      __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_cold_1();
    }

    v12 = _TVLLogDefault_log;
    if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_26CD78000, v12, OS_LOG_TYPE_DEFAULT, "PTP clock is locked. Negotiating grandmaster with master remote...", v13, 2u);
    }

    v11 = *(*(a1 + 40) + 16);
LABEL_23:
    v11();
    return;
  }

  if (_TVLLogDefault_onceToken != -1)
  {
    __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_cold_1();
  }

  v9 = _TVLLogDefault_log;
  if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_26CD78000, v9, OS_LOG_TYPE_DEFAULT, "PTP clock is locked. Negotiating grandmaster with non-master remote...", v14, 2u);
  }

  [*(a1 + 32) negotiateGrandmasterIdentityAttempt:1 withCompletion:*(a1 + 40)];
}

+ (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [_timeSync invalidate];
  v2 = _timeSync;
  _timeSync = 0;

  objc_sync_exit(obj);
}

- (TVLTimeSync)initWithRemoteIPv4:(id)pv4 IPv6:(id)pv6 interface:(id)interface
{
  v25 = *MEMORY[0x277D85DE8];
  pv4Copy = pv4;
  pv6Copy = pv6;
  interfaceCopy = interface;
  v20.receiver = self;
  v20.super_class = TVLTimeSync;
  v11 = [(TVLTimeSync *)&v20 init];
  if (v11)
  {
    if (pv4Copy)
    {
      v12 = _IPv4ToHostByteOrder(pv4Copy);
    }

    else
    {
      v12 = 0;
    }

    [(TVLTimeSync *)v11 setIPv4:v12];
    if (pv6Copy)
    {
      v13 = _IPv6ToHostByteOrder(pv6Copy);
      [(TVLTimeSync *)v11 setIPv6:v13];
    }

    else
    {
      [(TVLTimeSync *)v11 setIPv6:0];
    }

    [(TVLTimeSync *)v11 setNetworkInterfaceName:interfaceCopy];
    if (_TVLLogDefault_onceToken != -1)
    {
      __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_3_cold_1();
    }

    v14 = _TVLLogDefault_log;
    if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      iPv6 = [(TVLTimeSync *)v11 IPv6];
      if (iPv6)
      {
        if ([(TVLTimeSync *)v11 IPv4])
        {
          v17 = "4/6";
        }

        else
        {
          v17 = "6";
        }
      }

      else
      {
        v17 = "4";
      }

      networkInterfaceName = [(TVLTimeSync *)v11 networkInterfaceName];
      *buf = 136315394;
      v22 = v17;
      v23 = 2114;
      v24 = networkInterfaceName;
      _os_log_impl(&dword_26CD78000, v15, OS_LOG_TYPE_DEFAULT, "Initializing PTP (IPv%s) Clock using network interface: %{public}@", buf, 0x16u);
    }
  }

  return v11;
}

- (void)invalidate
{
  clock = [(TVLTimeSync *)self clock];

  if (clock)
  {
    clock2 = [(TVLTimeSync *)self clock];
    clockIdentifier = [clock2 clockIdentifier];

    clock3 = [(TVLTimeSync *)self clock];
    networkInterfaceName = [(TVLTimeSync *)self networkInterfaceName];
    iPv6 = [(TVLTimeSync *)self IPv6];
    [clock3 removeUnicastUDPv6EtEPortFromInterfaceNamed:networkInterfaceName withDestinationAddress:objc_msgSend(iPv6 error:{"bytes"), 0}];

    clock4 = [(TVLTimeSync *)self clock];
    networkInterfaceName2 = [(TVLTimeSync *)self networkInterfaceName];
    [clock4 removeUnicastUDPv4EtEPortFromInterfaceNamed:networkInterfaceName2 withDestinationAddress:-[TVLTimeSync IPv4](self error:{"IPv4"), 0}];

    clock5 = [(TVLTimeSync *)self clock];
    [clock5 removeClient:self];

    [(TVLTimeSync *)self setClock:0];
    mEMORY[0x277D714E0] = [MEMORY[0x277D714E0] sharedgPTPManager];
    [mEMORY[0x277D714E0] removeDomainWithIdentifier:clockIdentifier error:0];
  }
}

- (void)negotiateGrandmasterIdentityAttempt:(int64_t)attempt withCompletion:(id)completion
{
  v31[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (attempt < 21)
  {
    v8 = MEMORY[0x277CCABB0];
    clock = [(TVLTimeSync *)self clock];
    v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(clock, "grandmasterIdentity")}];

    v30[0] = @"MESSAGE";
    v30[1] = @"OPTIONS";
    v31[0] = @"GM";
    v28[0] = @"GM";
    v28[1] = @"LOCKED";
    v29[0] = v10;
    v11 = MEMORY[0x277CCABB0];
    clock2 = [(TVLTimeSync *)self clock];
    v13 = [v11 numberWithInt:{objc_msgSend(clock2, "lockState") == 2}];
    v29[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v31[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

    if (_TVLLogDefault_onceToken != -1)
    {
      __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_3_cold_1();
    }

    v16 = _TVLLogDefault_log;
    if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = v15;
      v26 = 2048;
      attemptCopy = attempt;
      _os_log_impl(&dword_26CD78000, v16, OS_LOG_TYPE_DEFAULT, "Outgoing Grandmaster Sync Request: %{public}@ | Attempt: %li", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    session = self->_session;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __66__TVLTimeSync_negotiateGrandmasterIdentityAttempt_withCompletion___block_invoke;
    v19[3] = &unk_279D6BCA0;
    objc_copyWeak(v23, buf);
    v18 = v15;
    v20 = v18;
    selfCopy = self;
    v22 = completionCopy;
    v23[1] = attempt;
    [(CUMessageSession *)session sendRequestID:@"com.apple.tvlatency.timesync" options:0 request:v18 responseHandler:v19];

    objc_destroyWeak(v23);
    objc_destroyWeak(buf);
  }

  else
  {
    if (_TVLLogDefault_onceToken != -1)
    {
      __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_cold_1();
    }

    v7 = _TVLLogDefault_log;
    if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_ERROR))
    {
      [TVLTimeSync negotiateGrandmasterIdentityAttempt:v7 withCompletion:?];
    }

    +[TVLTimeSync invalidate];
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __66__TVLTimeSync_negotiateGrandmasterIdentityAttempt_withCompletion___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (_TVLLogDefault_onceToken != -1)
    {
      __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_cold_1();
    }

    v8 = _TVLLogDefault_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      if (a2)
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
      }

      else
      {
        v10 = 0;
      }

      *buf = 138543874;
      v31 = v9;
      v32 = 2114;
      *v33 = v6;
      *&v33[8] = 2114;
      v34[0] = v10;
      _os_log_impl(&dword_26CD78000, v8, OS_LOG_TYPE_DEFAULT, "Response To Grandmaster Sync Request: %{public}@ | Response: %{public}@ | Error: %{public}@", buf, 0x20u);
      if (a2)
      {
      }
    }

    v11 = [v6 objectForKey:@"GM"];
    v12 = [v11 unsignedLongLongValue];

    v13 = [v6 objectForKey:@"LOCKED"];
    v14 = [v13 BOOLValue];

    v15 = [WeakRetained clock];
    v16 = [v15 grandmasterIdentity];

    if (v12 == v16)
    {
      if (_TVLLogDefault_onceToken != -1)
      {
        __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_3_cold_1();
      }

      v17 = _TVLLogDefault_log;
      if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [WeakRetained clock];
        v20 = [v19 lockState];
        *buf = 134218496;
        v31 = v12;
        v32 = 1024;
        *v33 = v14;
        *&v33[4] = 1024;
        *&v33[6] = v20 == 2;
        _os_log_impl(&dword_26CD78000, v18, OS_LOG_TYPE_DEFAULT, "Grandmaster Sync match=%llu, remoteLocked=%d, localLocked=%d", buf, 0x18u);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (_TVLLogDefault_onceToken != -1)
      {
        __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_3_cold_1();
      }

      v21 = _TVLLogDefault_log;
      if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = [WeakRetained clock];
        v24 = [v23 lockState];
        *buf = 134218752;
        v31 = v12;
        v32 = 2048;
        *v33 = v16;
        *&v33[8] = 1024;
        LODWORD(v34[0]) = v14;
        WORD2(v34[0]) = 1024;
        *(v34 + 6) = v24 == 2;
        _os_log_impl(&dword_26CD78000, v22, OS_LOG_TYPE_DEFAULT, "Grandmaster Sync mismatch: remote=%llu, local=%llu, remoteLocked=%d, localLocked=%d", buf, 0x22u);
      }

      objc_initWeak(buf, *(a1 + 40));
      v25 = dispatch_time(0, 1000000000);
      v26 = dispatch_get_global_queue(33, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__TVLTimeSync_negotiateGrandmasterIdentityAttempt_withCompletion___block_invoke_27;
      block[3] = &unk_279D6BC78;
      objc_copyWeak(v29, buf);
      v29[1] = *(a1 + 64);
      v28 = *(a1 + 48);
      dispatch_after(v25, v26, block);

      objc_destroyWeak(v29);
      objc_destroyWeak(buf);
    }
  }
}

void __66__TVLTimeSync_negotiateGrandmasterIdentityAttempt_withCompletion___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained negotiateGrandmasterIdentityAttempt:*(a1 + 48) + 1 withCompletion:*(a1 + 32)];
}

- (unint64_t)convertToHostTimeFromDomainTime:(unint64_t)time grandmasterIdentity:(unint64_t *)identity
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0;
  clock = [(TVLTimeSync *)self clock];
  v7 = [clock convertFromDomainToMachAbsoluteTime:time grandmasterUsed:identity portNumber:&v11];

  if (_TVLLogDefault_onceToken != -1)
  {
    __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_3_cold_1();
  }

  v8 = _TVLLogDefault_log;
  if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *identity;
    *buf = 134217984;
    v13 = v9;
    _os_log_impl(&dword_26CD78000, v8, OS_LOG_TYPE_DEFAULT, "Converted Domain Time -> Host Time using GM: %llu", buf, 0xCu);
  }

  return v7;
}

- (unint64_t)convertToDomainTimeFromHostTime:(unint64_t)time grandmasterIdentity:(unint64_t *)identity
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0;
  clock = [(TVLTimeSync *)self clock];
  v7 = [clock convertFromMachAbsoluteToDomainTime:time grandmasterUsed:identity portNumber:&v11];

  if (_TVLLogDefault_onceToken != -1)
  {
    __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_3_cold_1();
  }

  v8 = _TVLLogDefault_log;
  if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *identity;
    *buf = 134217984;
    v13 = v9;
    _os_log_impl(&dword_26CD78000, v8, OS_LOG_TYPE_DEFAULT, "Converted Host Time -> Domain Time using GM: %llu", buf, 0xCu);
  }

  return v7;
}

- (void)_clearWaitForPTPClock
{
  obj = self;
  objc_sync_enter(obj);
  waitForPTPLock = [(TVLTimeSync *)obj waitForPTPLock];

  if (waitForPTPLock)
  {
    waitForPTPLock2 = [(TVLTimeSync *)obj waitForPTPLock];
    dispatch_semaphore_signal(waitForPTPLock2);

    [(TVLTimeSync *)obj setWaitForPTPLock:0];
  }

  objc_sync_exit(obj);
}

- (void)didChangeLockStateTo:(int)to forClock:(id)clock
{
  v9 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
  if (_TVLLogDefault_onceToken != -1)
  {
    __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_cold_1();
  }

  v7 = _TVLLogDefault_log;
  if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = to;
    _os_log_impl(&dword_26CD78000, v7, OS_LOG_TYPE_DEFAULT, "PTP clock lock state is now %i", v8, 8u);
  }

  if (to)
  {
    if (to == 2)
    {
      [(TVLTimeSync *)self _clearWaitForPTPClock];
    }
  }

  else
  {
    +[TVLTimeSync invalidate];
  }
}

- (void)didChangeClockMasterForClock:(id)clock
{
  v9 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
  if (_TVLLogDefault_onceToken != -1)
  {
    __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_cold_1();
  }

  v4 = _TVLLogDefault_log;
  if (os_log_type_enabled(_TVLLogDefault_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    clockName = [clockCopy clockName];
    v7 = 138543362;
    v8 = clockName;
    _os_log_impl(&dword_26CD78000, v5, OS_LOG_TYPE_DEFAULT, "Changed Clock Master for Clock %{public}@\n", &v7, 0xCu);
  }
}

void __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_3_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CD78000, a2, OS_LOG_TYPE_ERROR, "There was an error creating a PTP clock at this time: %{public}@", &v2, 0xCu);
}

void __54__TVLTimeSync__startPTPWithSession_completionHandler___block_invoke_20_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = 0x4008000000000000;
  _os_log_error_impl(&dword_26CD78000, log, OS_LOG_TYPE_ERROR, "Waiting for PTP clock lock has timed out (took over %fs).", &v1, 0xCu);
}

@end