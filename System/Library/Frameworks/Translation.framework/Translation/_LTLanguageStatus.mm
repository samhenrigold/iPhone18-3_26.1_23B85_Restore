@interface _LTLanguageStatus
- (_LTLanguageStatus)initWithObservationType:(unint64_t)type useDedicatedMachPort:(BOOL)port observations:(id)observations;
- (_LTLanguageStatus)initWithTaskHint:(int64_t)hint useDedicatedMachPort:(BOOL)port observations:(id)observations;
- (void)_start;
- (void)cancel;
- (void)dealloc;
@end

@implementation _LTLanguageStatus

- (void)_start
{
  v3 = +[_LTLanguageStatusMulticaster shared];
  [v3 addObserver:self];
}

- (void)cancel
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogAssets(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412290;
    v8 = identifier;
    _os_log_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_DEFAULT, "LTLanguageStatus %@ cancel", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27___LTLanguageStatus_cancel__block_invoke;
  v6[3] = &unk_278B6CEE8;
  v6[4] = self;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __27___LTLanguageStatus_cancel__block_invoke(v6);
  os_unfair_lock_unlock(&self->_lock);
  v5 = +[_LTLanguageStatusMulticaster shared];
  [v5 removeObserver:self];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogAssets(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412290;
    v7 = identifier;
    _os_log_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_DEFAULT, "LTLanguageStatus %@ dealloc", buf, 0xCu);
  }

  [(_LTLanguageStatus *)self cancel];
  v5.receiver = self;
  v5.super_class = _LTLanguageStatus;
  [(_LTLanguageStatus *)&v5 dealloc];
}

- (_LTLanguageStatus)initWithTaskHint:(int64_t)hint useDedicatedMachPort:(BOOL)port observations:(id)observations
{
  portCopy = port;
  v31 = *MEMORY[0x277D85DE8];
  observationsCopy = observations;
  v24.receiver = self;
  v24.super_class = _LTLanguageStatus;
  v9 = [(_LTLanguageStatus *)&v24 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    uUID = [MEMORY[0x277CCAD78] UUID];
    objc_storeStrong(&v10->_identifier, uUID);
    v14 = _LTOSLogAssets(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v26 = uUID;
      v27 = 2048;
      hintCopy = hint;
      v29 = 1024;
      v30 = portCopy;
      _os_log_impl(&dword_23AAF5000, v14, OS_LOG_TYPE_DEFAULT, "LTLanguageStatus %@ alloc task:%zd dedicated:%{BOOL}i", buf, 0x1Cu);
    }

    v10->_taskHint = hint;
    v10->_useDedicatedMachPort = portCopy;
    objc_initWeak(buf, v10);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __72___LTLanguageStatus_initWithTaskHint_useDedicatedMachPort_observations___block_invoke;
    aBlock[3] = &unk_278B6D0B8;
    objc_copyWeak(&v23, buf);
    v15 = uUID;
    v21 = v15;
    v22 = observationsCopy;
    v16 = _Block_copy(aBlock);
    observations = v10->_observations;
    v10->_observations = v16;

    [(_LTLanguageStatus *)v10 _start];
    v18 = v10;

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  return v10;
}

- (_LTLanguageStatus)initWithObservationType:(unint64_t)type useDedicatedMachPort:(BOOL)port observations:(id)observations
{
  if (type == 1)
  {
    v5 = 8;
  }

  else
  {
    v5 = 1;
  }

  return [(_LTLanguageStatus *)self initWithTaskHint:v5 useDedicatedMachPort:port observations:observations];
}

@end