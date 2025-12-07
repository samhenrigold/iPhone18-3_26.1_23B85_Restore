@interface SWSystemActivityAssertion
- (BOOL)isActive;
- (NSString)description;
- (SWSystemActivityAssertion)initWithIdentifier:(id)identifier configurator:(id)configurator;
- (SWSystemActivityAssertion)initWithIdentifier:(id)identifier internalConfigurator:(id)configurator;
- (void)_checkIfCompleteForAction:(uint64_t)action;
- (void)acquireWithTimeout:(double)timeout handler:(id)handler;
- (void)callbackAcquisitionHandlerWithError:(uint64_t)error;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateWithReason:(uint64_t)reason;
- (void)setAcquireWaitsToAbortSleepImminent:(BOOL)imminent;
- (void)setAcquireWaitsToAbortSleepRequested:(BOOL)requested;
- (void)setSleepMonitor:(id)monitor;
- (void)setSystemActivityProvider:(id)provider;
@end

@implementation SWSystemActivityAssertion

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_identifier withName:@"identifier"];
  v4 = [v3 appendUnsignedInteger:self->_lock_state withName:@"state"];
  v5 = [v3 appendBool:self->_acquireWaitsToAbortSleepRequested withName:@"waitsForAbortSleep" ifEqualTo:1];
  v6 = [v3 appendBool:self->_lock_acquisitionHandler != 0 withName:@"pendingAcquisition" ifEqualTo:1];
  v7 = [v3 appendUnsignedInt:self->_lock_assertionID withName:@"assertionID"];
  build = [v3 build];

  return build;
}

void __48__SWSystemActivityAssertion_initWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setAcquireWaitsToAbortSleepRequested:0];
  [v4 setAcquireWaitsToAbortSleepImminent:0];
  v2 = +[SWSystemSleepMonitor monitorUsingMainQueue];
  [v4 setSleepMonitor:v2];

  v3 = +[SWSystemActivityProvider sharedProvider];
  [v4 setSystemActivityProvider:v3];
}

- (SWSystemActivityAssertion)initWithIdentifier:(id)identifier configurator:(id)configurator
{
  configuratorCopy = configurator;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SWSystemActivityAssertion_initWithIdentifier_configurator___block_invoke;
  v10[3] = &unk_279D432E0;
  v11 = configuratorCopy;
  v7 = configuratorCopy;
  v8 = [(SWSystemActivityAssertion *)self initWithIdentifier:identifier internalConfigurator:v10];

  return v8;
}

void __61__SWSystemActivityAssertion_initWithIdentifier_configurator___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v6);
  }

  v4 = +[SWSystemSleepMonitor monitorUsingMainQueue];
  [v6 setSleepMonitor:v4];

  v5 = +[SWSystemActivityProvider sharedProvider];
  [v6 setSystemActivityProvider:v5];
}

- (SWSystemActivityAssertion)initWithIdentifier:(id)identifier internalConfigurator:(id)configurator
{
  identifierCopy = identifier;
  configuratorCopy = configurator;
  v13.receiver = self;
  v13.super_class = SWSystemActivityAssertion;
  v9 = [(SWSystemActivityAssertion *)&v13 init];
  v10 = v9;
  if (v9)
  {
    *&v9->_lock_assertionID = 0;
    v9->_lock_state = 0;
    objc_storeStrong(&v9->_identifier, identifier);
    v11 = configuratorCopy;
    v10->_initializing = 1;
    v11[2](v11, v10);
    v10->_initializing = 0;
  }

  return v10;
}

- (void)dealloc
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_clientDidInvalidate)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p must invalidate before dealloc : %@", self, self];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"SWSystemActivityAssertion.m";
      v18 = 1024;
      v19 = 96;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65DD74);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9.receiver = self;
  v9.super_class = SWSystemActivityAssertion;
  [(SWSystemActivityAssertion *)&v9 dealloc];
}

- (BOOL)isActive
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_state == 4;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)acquireWithTimeout:(double)timeout handler:(id)handler
{
  handlerCopy = handler;
  v7 = +[SWPreventSystemSleepAssertion sharedHighPriorityQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SWSystemActivityAssertion_acquireWithTimeout_handler___block_invoke;
  block[3] = &unk_279D43308;
  timeoutCopy = timeout;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

void __56__SWSystemActivityAssertion_acquireWithTimeout_handler___block_invoke(uint64_t a1)
{
  v86 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_30;
  }

  v4 = SWLogPower();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v41 = *(v2 + 8);
    *buf = 134218498;
    *&buf[4] = v2;
    *&buf[12] = 2114;
    *&buf[14] = v41;
    *&buf[22] = 2048;
    *v84 = v1;
    _os_log_debug_impl(&dword_26C657000, v4, OS_LOG_TYPE_DEBUG, "%p system activity assertion (%{public}@) will acquire with timeout:%lf", buf, 0x20u);
  }

  os_unfair_lock_lock((v2 + 44));
  *(v2 + 72) = v1;
  v5 = [v3 copy];
  v6 = *(v2 + 48);
  *(v2 + 48) = v5;

  *(v2 + 83) = [*(v2 + 24) isSleepImminent];
  *(v2 + 56) = [*(v2 + 32) getMachContinuousKernelWakeTime];
  if (!*(v2 + 64))
  {
    *(v2 + 64) = 1;
    os_unfair_lock_unlock((v2 + 44));
    v15 = SWLogPower();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v56 = *(v2 + 8);
      *buf = 134218242;
      *&buf[4] = v2;
      *&buf[12] = 2114;
      *&buf[14] = v56;
      _os_log_debug_impl(&dword_26C657000, v15, OS_LOG_TYPE_DEBUG, "%p system activity assertion (%{public}@) will declare system activity", buf, 0x16u);
    }

    os_unfair_lock_assert_not_owner((v2 + 44));
    v16 = [*(v2 + 32) declareSystemActivityWithName:*(v2 + 8)];
    if (!v16)
    {
      v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p system activity assertion - provider returned NULL declare result id:%@", v2, *(v2 + 8)];;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v78 = NSStringFromSelector(sel__queue_declareSystemActivity);
        v79 = objc_opt_class();
        v80 = NSStringFromClass(v79);
        *buf = 138544642;
        *&buf[4] = v78;
        *&buf[12] = 2114;
        *&buf[14] = v80;
        *&buf[22] = 2048;
        *v84 = v2;
        *&v84[8] = 2114;
        *&v84[10] = @"SWSystemActivityAssertion.m";
        *&v84[18] = 1024;
        *&v84[20] = 173;
        *&v84[24] = 2114;
        v85 = v77;
        _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v81 = v77;
      [v77 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x26C65EB08);
    }

    v17 = SWLogPower();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v57 = *(v2 + 8);
      *buf = 134218498;
      *&buf[4] = v2;
      *&buf[12] = 2114;
      *&buf[14] = v57;
      *&buf[22] = 2112;
      *v84 = v16;
      _os_log_debug_impl(&dword_26C657000, v17, OS_LOG_TYPE_DEBUG, "%p system activity assertion (%{public}@) will system activity result:%@", buf, 0x20u);
    }

    os_unfair_lock_lock((v2 + 44));
    v18 = [v16 systemState];
    v19 = [*(v2 + 24) isSleepImminent];
    v20 = [*(v2 + 24) hasSleepBeenRequested];
    if (v20)
    {
      v21 = *(v2 + 81);
      if (!v19)
      {
LABEL_16:
        v22 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v21 = 0;
      if (!v19)
      {
        goto LABEL_16;
      }
    }

    v22 = *(v2 + 82);
LABEL_24:
    v26 = (v18 == 1) | v21 | v22;
    *(v2 + 84) = (v18 == 1) | (v21 | v22) & 1;
    if ([v16 returnValue])
    {
      v27 = SWLogPower();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        v62 = [v16 returnValue];
        v63 = *(v2 + 8);
        v64 = *(v2 + 64);
        *buf = 134218754;
        *&buf[4] = v2;
        *&buf[12] = 2048;
        *&buf[14] = v62;
        *&buf[22] = 2114;
        *v84 = v63;
        *&v84[8] = 1024;
        *&v84[10] = v64;
        _os_log_fault_impl(&dword_26C657000, v27, OS_LOG_TYPE_FAULT, "%p failed to start system activity (%ld) for id:%{public}@ state:%u", buf, 0x26u);
      }

      v28 = MEMORY[0x277CCA9B8];
      location = *MEMORY[0x277CCA450];
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p failed to start system activity (%ld) id:%@ state:%u", v2, objc_msgSend(v16, "returnValue"), *(v2 + 8), *(v2 + 64)];;
      *buf = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&location count:1];
      v31 = [v28 errorWithDomain:@"BSSystemActivityDomain" code:4 userInfo:v30];

      *(v2 + 64) = 5;
      os_unfair_lock_unlock((v2 + 44));
LABEL_28:
      [(SWSystemActivityAssertion *)v2 callbackAcquisitionHandlerWithError:v31];
LABEL_29:

      goto LABEL_30;
    }

    v32 = *(v2 + 64);
    if (v32 != 1)
    {
      if (v32 == 5)
      {
        v48 = SWLogPower();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v49 = *(v2 + 8);
          v50 = [v16 assertionID];
          v51 = *(v2 + 16);
          *buf = 134218754;
          *&buf[4] = v2;
          *&buf[12] = 2114;
          *&buf[14] = v49;
          *&buf[22] = 2048;
          *v84 = v50;
          *&v84[8] = 2114;
          *&v84[10] = v51;
          _os_log_impl(&dword_26C657000, v48, OS_LOG_TYPE_INFO, "%p system activity assertion invalidated while waiting on system acquisition (will immediately release); id:%{public}@ assertionID:%lu timer:%{public}@", buf, 0x2Au);
        }

        v31 = 0;
        v47 = 0;
      }

      else
      {
        if (v32 == 3)
        {
          goto LABEL_34;
        }

        v52 = SWLogPower();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
        {
          v73 = *(v2 + 64);
          v74 = *(v2 + 40);
          v75 = *(v2 + 8);
          v76 = *(v2 + 16);
          *buf = 134219010;
          *&buf[4] = v2;
          *&buf[12] = 2114;
          *&buf[14] = v75;
          *&buf[22] = 1024;
          *v84 = v73;
          *&v84[4] = 2048;
          *&v84[6] = v74;
          *&v84[14] = 2114;
          *&v84[16] = v76;
          _os_log_fault_impl(&dword_26C657000, v52, OS_LOG_TYPE_FAULT, "%p system activity assertion state mutated unexpectedly (will immediately release); id:%{public}@ state:%u assertionID:%lu timer:%{public}@", buf, 0x30u);
        }

        v53 = MEMORY[0x277CCA9B8];
        location = *MEMORY[0x277CCA450];
        v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p system activity assertion state mutated unexpectedly id:%@ state:%u", v2, *(v2 + 8), *(v2 + 64)];;
        *buf = v54;
        v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&location count:1];
        v31 = [v53 errorWithDomain:@"BSSystemActivityDomain" code:3 userInfo:v55];

        *(v2 + 64) = 5;
        v47 = 1;
      }

      [*(v2 + 32) releaseAssertionID:{objc_msgSend(v16, "assertionID")}];
LABEL_61:
      os_unfair_lock_unlock((v2 + 44));
      if (!v47)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_34:
    *(v2 + 40) = [v16 assertionID];
    [*(v2 + 24) registerActiveSystemActivity:v2];
    if ((v26 & 1) == 0 || *(v2 + 64) != 1)
    {
      *(v2 + 64) = 4;
      v42 = SWLogPower();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = *(v2 + 8);
        v44 = [v16 systemState];
        v45 = [v16 assertionID];
        v46 = *(v2 + 83);
        *buf = 134219522;
        *&buf[4] = v2;
        *&buf[12] = 2114;
        *&buf[14] = v43;
        *&buf[22] = 1024;
        *v84 = v44;
        *&v84[4] = 2048;
        *&v84[6] = v45;
        *&v84[14] = 1024;
        *&v84[16] = v46;
        *&v84[20] = 1024;
        *&v84[22] = v19;
        LOWORD(v85) = 1024;
        *(&v85 + 2) = v20;
        _os_log_impl(&dword_26C657000, v42, OS_LOG_TYPE_INFO, "%p created system activity assertion; id:%{public}@ systemState:%u assertionID:%lu wasSleepImminent:%{BOOL}u isSleepImminent:%{BOOL}u hasSleepBeenRequested:%{BOOL}u", buf, 0x38u);
      }

      v47 = 1;
      goto LABEL_57;
    }

    v33 = SWLogPower();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    if (v18 == 1)
    {
      if (v34)
      {
        v35 = *(v2 + 8);
        v36 = [v16 returnValue];
        v37 = *(v2 + 83);
        *buf = 134219010;
        *&buf[4] = v2;
        *&buf[12] = 2114;
        *&buf[14] = v35;
        *&buf[22] = 2048;
        *v84 = v36;
        *&v84[8] = 1024;
        *&v84[10] = v37;
        *&v84[14] = 1024;
        *&v84[16] = v19;
        v38 = "%p created system activity assertion too late, will wait for next system wake, id:%{public}@ err:%ld wasSleepImminent:%{BOOL}u isSleepImminent:%{BOOL}u";
        v39 = v33;
        v40 = 44;
LABEL_55:
        _os_log_impl(&dword_26C657000, v39, OS_LOG_TYPE_DEFAULT, v38, buf, v40);
      }

LABEL_56:

      v47 = 0;
      *(v2 + 64) = 2;
LABEL_57:
      if (*(v2 + 72) > 0.0)
      {
        [*(v2 + 16) invalidate];
        v69 = [*(v2 + 32) createTimerWithIdentifier:*(v2 + 8)];
        v70 = *(v2 + 16);
        *(v2 + 16) = v69;

        objc_initWeak(&location, v2);
        v71 = *(v2 + 16);
        v72 = *(v2 + 72);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __57__SWSystemActivityAssertion__queue_declareSystemActivity__block_invoke;
        *v84 = &unk_279D43330;
        objc_copyWeak(&v84[8], &location);
        [v71 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:buf queue:v72 handler:1.0];
        objc_destroyWeak(&v84[8]);
        objc_destroyWeak(&location);
        os_unfair_lock_unlock((v2 + 44));
        v31 = 0;
        if ((v47 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v31 = 0;
      goto LABEL_61;
    }

    if (v22)
    {
      if (!v34)
      {
        goto LABEL_56;
      }

      v65 = *(v2 + 8);
      v66 = [v16 returnValue];
      *buf = 134218498;
      *&buf[4] = v2;
      *&buf[12] = 2114;
      *&buf[14] = v65;
      *&buf[22] = 2048;
      *v84 = v66;
      v38 = "%p created system activity assertion after prepareForSleep, will wait for next system wake, id:%{public}@ err:%ld";
    }

    else
    {
      if (!v34)
      {
        goto LABEL_56;
      }

      v67 = *(v2 + 8);
      v68 = [v16 returnValue];
      *buf = 134218498;
      *&buf[4] = v2;
      *&buf[12] = 2114;
      *&buf[14] = v67;
      *&buf[22] = 2048;
      *v84 = v68;
      v38 = "%p created system activity assertion after sleepRequested, will wait for next system wake, id:%{public}@ err:%ld";
    }

    v39 = v33;
    v40 = 32;
    goto LABEL_55;
  }

  os_unfair_lock_unlock((v2 + 44));
  os_unfair_lock_lock((v2 + 44));
  v7 = *(v2 + 64);
  v8 = SWLogPower();
  v9 = v8;
  if (v7 == 5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = *(v2 + 64);
      v11 = *(v2 + 40);
      v12 = *(v2 + 8);
      v13 = *(v2 + 16);
      *buf = 134219010;
      *&buf[4] = v2;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      *&buf[22] = 1024;
      *v84 = v10;
      *&v84[4] = 2048;
      *&v84[6] = v11;
      *&v84[14] = 2114;
      *&v84[16] = v13;
      _os_log_impl(&dword_26C657000, v9, OS_LOG_TYPE_INFO, "%p system activity assertion invalidated before declaration; id:%{public}@ state:%u assertionID:%lu timer:%{public}@", buf, 0x30u);
    }

    os_unfair_lock_unlock((v2 + 44));
    v14 = 0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v58 = *(v2 + 64);
      v59 = *(v2 + 40);
      v60 = *(v2 + 8);
      v61 = *(v2 + 16);
      *buf = 134219010;
      *&buf[4] = v2;
      *&buf[12] = 2114;
      *&buf[14] = v60;
      *&buf[22] = 1024;
      *v84 = v58;
      *&v84[4] = 2048;
      *&v84[6] = v59;
      *&v84[14] = 2114;
      *&v84[16] = v61;
      _os_log_fault_impl(&dword_26C657000, v9, OS_LOG_TYPE_FAULT, "%p system activity assertion already acquired; id:%{public}@ state:%u assertionID:%lu timer:%{public}@", buf, 0x30u);
    }

    v23 = MEMORY[0x277CCA9B8];
    location = *MEMORY[0x277CCA450];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p twice tried to acquire system activity assertion id:%@ state:%u", v2, *(v2 + 8), *(v2 + 64)];;
    *buf = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&location count:1];
    v14 = [v23 errorWithDomain:@"BSSystemActivityDomain" code:2 userInfo:v25];

    os_unfair_lock_unlock((v2 + 44));
    if (v14)
    {
      [(SWSystemActivityAssertion *)v2 callbackAcquisitionHandlerWithError:v14];
    }
  }

LABEL_30:
}

- (void)callbackAcquisitionHandlerWithError:(uint64_t)error
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SWLogPower();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(error + 8);
    v14 = 134218498;
    errorCopy = error;
    v16 = 2114;
    v17 = v13;
    v18 = 2114;
    v19 = v3;
    _os_log_debug_impl(&dword_26C657000, v4, OS_LOG_TYPE_DEBUG, "%p system activity assertion (%{public}@) callback with error:%{public}@", &v14, 0x20u);
  }

  os_unfair_lock_lock((error + 44));
  v5 = MEMORY[0x26D6A63C0](*(error + 48));
  v6 = *(error + 48);
  *(error + 48) = 0;

  v7 = *(error + 40);
  v8 = *(error + 83);
  v9 = *(error + 84);
  getMachContinuousKernelWakeTime = [*(error + 32) getMachContinuousKernelWakeTime];
  v11 = *(error + 56);
  os_unfair_lock_unlock((error + 44));
  if (v5)
  {
    v12 = [[SWSystemActivityAcquisitionDetails alloc] initWithAfterPendingSleepWasAlreadyInitiated:v8 afterFailingToRevertPendingSleep:v9 afterSleepOfNonZeroDuration:v11 != getMachContinuousKernelWakeTime];
    (v5)[2](v5, v7 != 0, v3, v12);
  }
}

void __57__SWSystemActivityAssertion__queue_declareSystemActivity__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = SWLogPower();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2 = WeakRetained[1];
      *buf = 134218242;
      v5 = WeakRetained;
      v6 = 2114;
      v7 = v2;
      _os_log_impl(&dword_26C657000, v1, OS_LOG_TYPE_DEFAULT, "%p system activity assertion timed out: %{public}@", buf, 0x16u);
    }

    [(SWSystemActivityAssertion *)WeakRetained invalidateWithReason:?];
  }
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_clientDidInvalidate = 1;
  os_unfair_lock_unlock(&self->_lock);

  [(SWSystemActivityAssertion *)self invalidateWithReason:?];
}

- (void)invalidateWithReason:(uint64_t)reason
{
  v49 = *MEMORY[0x277D85DE8];
  if (!reason)
  {
    return;
  }

  os_unfair_lock_lock((reason + 44));
  [*(reason + 16) invalidate];
  v4 = *(reason + 16);
  *(reason + 16) = 0;

  v5 = *(reason + 48);
  v6 = SWLogPower();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(reason + 8);
    v8 = *(reason + 64);
    *buf = 134218754;
    reasonCopy2 = reason;
    v40 = 2114;
    v41 = v7;
    v42 = 1024;
    *v43 = v8;
    *&v43[4] = 1024;
    *&v43[6] = v5 != 0;
    _os_log_impl(&dword_26C657000, v6, OS_LOG_TYPE_INFO, "%p system activity assertion invalidated; id:%{public}@ state:%u hasUncalledAcquisitionHandler:%{BOOL}u", buf, 0x22u);
  }

  if (*(reason + 64) == 5)
  {
    v9 = SWLogPower();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(reason + 8);
      *buf = 134218242;
      reasonCopy2 = reason;
      v40 = 2114;
      v41 = v22;
      _os_log_debug_impl(&dword_26C657000, v9, OS_LOG_TYPE_DEBUG, "%p system activity assertion already invalid; id:%{public}@", buf, 0x16u);
    }

    v10 = *(reason + 40);
    if (v10)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p system activity assertion marked invalid but has non-null asssertionID:%u id:%@ state:%u", reason, v10, *(reason + 8), *(reason + 64)];;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(sel_invalidateWithReason_);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        reasonCopy2 = v24;
        v40 = 2114;
        v41 = v26;
        v42 = 2048;
        *v43 = reason;
        *&v43[8] = 2114;
        v44 = @"SWSystemActivityAssertion.m";
        v45 = 1024;
        v46 = 289;
        v47 = 2114;
        v48 = v23;
        _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v27 = v23;
      [v23 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x26C65F384);
    }

    if (v5)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p system activity assertion marked invalid but has hasUncalledAcquisitionHandler id:%@ state:%u", reason, *(reason + 8), *(reason + 64)];;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(sel_invalidateWithReason_);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138544642;
        reasonCopy2 = v29;
        v40 = 2114;
        v41 = v31;
        v42 = 2048;
        *v43 = reason;
        *&v43[8] = 2114;
        v44 = @"SWSystemActivityAssertion.m";
        v45 = 1024;
        v46 = 290;
        v47 = 2114;
        v48 = v28;
        _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v32 = v28;
      [v28 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x26C65F48CLL);
    }

    *(reason + 64) = 5;
    v11 = *(reason + 32);
    *(reason + 40) = 0;
    goto LABEL_12;
  }

  v12 = *(reason + 40);
  *(reason + 64) = 5;
  v11 = *(reason + 32);
  *(reason + 40) = 0;
  if (!v12)
  {
LABEL_12:
    v14 = 1;
    goto LABEL_13;
  }

  v13 = +[SWPreventSystemSleepAssertion sharedHighPriorityQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SWSystemActivityAssertion_invalidateWithReason___block_invoke;
  block[3] = &unk_279D43358;
  v11 = v11;
  v34 = v11;
  v35 = v12;
  dispatch_async(v13, block);

  v14 = 0;
LABEL_13:
  v15 = *(reason + 24);
  [v15 removeObserver:reason];
  v16 = *(reason + 24);
  *(reason + 24) = 0;

  os_unfair_lock_unlock((reason + 44));
  if ((v14 & 1) == 0)
  {
    [v15 unregisterInactiveSystemActivity:reason];
  }

  if (v5)
  {
    if (a2 == 1)
    {
      os_unfair_lock_lock((reason + 44));
      v17 = *(reason + 48);
      *(reason + 48) = 0;

      os_unfair_lock_unlock((reason + 44));
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p system activity assertion timed out before acquisition id:%@", reason, *(reason + 8)];;
      v37 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v21 = [v18 errorWithDomain:@"BSSystemActivityDomain" code:1 userInfo:v20];

      [(SWSystemActivityAssertion *)reason callbackAcquisitionHandlerWithError:v21];
    }
  }
}

- (void)setAcquireWaitsToAbortSleepRequested:(BOOL)requested
{
  v24 = *MEMORY[0x277D85DE8];
  if (!self->_initializing)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = NSStringFromSelector(a2);
    v7 = [v5 stringWithFormat:@"%@ called after initialization", v6];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"SWSystemActivityAssertion.m";
      v20 = 1024;
      v21 = 351;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65F694);
  }

  self->_acquireWaitsToAbortSleepRequested = requested;
}

- (void)setAcquireWaitsToAbortSleepImminent:(BOOL)imminent
{
  v24 = *MEMORY[0x277D85DE8];
  if (!self->_initializing)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = NSStringFromSelector(a2);
    v7 = [v5 stringWithFormat:@"%@ called after initialization", v6];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"SWSystemActivityAssertion.m";
      v20 = 1024;
      v21 = 356;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65F84CLL);
  }

  self->_acquireWaitsToAbortSleepImminent = imminent;
}

- (void)setSleepMonitor:(id)monitor
{
  v26 = *MEMORY[0x277D85DE8];
  monitorCopy = monitor;
  if (!self->_initializing)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 stringWithFormat:@"%@ called after initialization", v7];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v15 = v9;
      v16 = 2114;
      v17 = v11;
      v18 = 2048;
      selfCopy = self;
      v20 = 2114;
      v21 = @"SWSystemActivityAssertion.m";
      v22 = 1024;
      v23 = 361;
      v24 = 2114;
      v25 = v8;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65FA38);
  }

  objc_storeStrong(&self->_sleepMonitor, monitor);
  [monitorCopy addObserver:self];
}

- (void)setSystemActivityProvider:(id)provider
{
  v26 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  if (!self->_initializing)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = NSStringFromSelector(a2);
    v9 = [v7 stringWithFormat:@"%@ called after initialization", v8];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      selfCopy = self;
      v20 = 2114;
      v21 = @"SWSystemActivityAssertion.m";
      v22 = 1024;
      v23 = 367;
      v24 = 2114;
      v25 = v9;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65FC28);
  }

  provider = self->_provider;
  self->_provider = providerCopy;
}

- (void)_checkIfCompleteForAction:(uint64_t)action
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!action)
  {
    goto LABEL_14;
  }

  os_unfair_lock_lock((action + 44));
  v4 = *(action + 64);
  if (v4 == 1)
  {
    v9 = SWLogPower();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(action + 40);
      v12 = *(action + 8);
      v13 = *(action + 16);
      v18 = 134219010;
      actionCopy3 = action;
      v20 = 2114;
      *v21 = v3;
      *&v21[8] = 2114;
      *&v21[10] = v12;
      *&v21[18] = 2048;
      *&v21[20] = v11;
      *&v21[28] = 2114;
      *&v21[30] = v13;
      _os_log_debug_impl(&dword_26C657000, v9, OS_LOG_TYPE_DEBUG, "%p system activity assertion woke while still acquiring, waiting for acquisition to complete (%{public}@); id:%{public}@ assertionID:%lu timer:%{public}@", &v18, 0x34u);
    }

    *(action + 64) = 3;
    goto LABEL_13;
  }

  if (v4 != 2)
  {
    v10 = SWLogPower();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(action + 64);
      v15 = *(action + 40);
      v16 = *(action + 8);
      v17 = *(action + 16);
      v18 = 134219266;
      actionCopy3 = action;
      v20 = 1024;
      *v21 = v14;
      *&v21[4] = 2114;
      *&v21[6] = v3;
      *&v21[14] = 2114;
      *&v21[16] = v16;
      *&v21[24] = 2048;
      *&v21[26] = v15;
      *&v21[34] = 2114;
      *&v21[36] = v17;
      _os_log_debug_impl(&dword_26C657000, v10, OS_LOG_TYPE_DEBUG, "%p system activity assertion not complete, state:%u (%{public}@); id:%{public}@ assertionID:%lu timer:%{public}@", &v18, 0x3Au);
    }

LABEL_13:
    os_unfair_lock_unlock((action + 44));
    goto LABEL_14;
  }

  *(action + 64) = 4;
  v5 = SWLogPower();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(action + 40);
    v7 = *(action + 8);
    v8 = *(action + 16);
    v18 = 134219010;
    actionCopy3 = action;
    v20 = 2114;
    *v21 = v3;
    *&v21[8] = 2114;
    *&v21[10] = v7;
    *&v21[18] = 2048;
    *&v21[20] = v6;
    *&v21[28] = 2114;
    *&v21[30] = v8;
    _os_log_impl(&dword_26C657000, v5, OS_LOG_TYPE_INFO, "%p system activity assertion now valid (%{public}@); id:%{public}@ assertionID:%lu timer:%{public}@", &v18, 0x34u);
  }

  os_unfair_lock_unlock((action + 44));
  [(SWSystemActivityAssertion *)action callbackAcquisitionHandlerWithError:?];
LABEL_14:
}

@end