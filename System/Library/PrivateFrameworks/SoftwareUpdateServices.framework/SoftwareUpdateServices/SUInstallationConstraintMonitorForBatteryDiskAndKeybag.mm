@interface SUInstallationConstraintMonitorForBatteryDiskAndKeybag
- (BOOL)_queue_evaluateBattery;
- (BOOL)_queue_evaluateDisk;
- (BOOL)_queue_evaluateKeybag;
- (BOOL)_queue_evaluatePasscodeLocked;
- (id)initOnQueue:(id)queue withDownload:(id)download andInstallOptions:(id)options;
- (id)initOnQueue:(id)queue withDownload:(id)download installOptions:(id)options pollDuration:(double)duration keybag:(id)keybag;
- (unint64_t)deltaSpaceNeeded;
- (unint64_t)unsatisfiedConstraints;
- (void)_queue_pollSatisfied;
- (void)dealloc;
- (void)keybagInterface:(id)interface hasPasscodeSetDidChange:(BOOL)change;
- (void)keybagInterface:(id)interface passcodeLockedStateDidChange:(BOOL)change;
- (void)keybagInterfacePasscodeDidChange:(id)change;
- (void)refreshConstraints;
@end

@implementation SUInstallationConstraintMonitorForBatteryDiskAndKeybag

- (id)initOnQueue:(id)queue withDownload:(id)download andInstallOptions:(id)options
{
  optionsCopy = options;
  downloadCopy = download;
  queueCopy = queue;
  v11 = +[SUKeybagInterface sharedInstance];
  v12 = [(SUInstallationConstraintMonitorForBatteryDiskAndKeybag *)self initOnQueue:queueCopy withDownload:downloadCopy installOptions:optionsCopy pollDuration:v11 keybag:300.0];

  return v12;
}

- (id)initOnQueue:(id)queue withDownload:(id)download installOptions:(id)options pollDuration:(double)duration keybag:(id)keybag
{
  queueCopy = queue;
  downloadCopy = download;
  optionsCopy = options;
  keybagCopy = keybag;
  BSDispatchQueueAssert();
  v45.receiver = self;
  v45.super_class = SUInstallationConstraintMonitorForBatteryDiskAndKeybag;
  v16 = [(SUInstallationConstraintMonitorBase *)&v45 initOnQueue:queueCopy withRepresentedInstallationConstraints:53 andDownload:downloadCopy andInstallOptions:optionsCopy];
  v17 = v16;
  if (v16)
  {
    v18 = v16[6];
    v16[6] = 0;

    *(v17 + 64) = 0;
    *(v17 + 72) = 0;
    *(v17 + 73) = 0;
    *(v17 + 74) = 0;
    *(v17 + 75) = 0;
    if (keybagCopy)
    {
      v20 = keybagCopy;
    }

    else
    {
      v21 = SULogInstallConstraints(v19);
      SULogDebugForSubsystem(v21, @"No KeybagInterface instance provided to SUInstallationConstraintMonitorForBatteryDiskAndKeybag initializer", v22, v23, v24, v25, v26, v27, v41);

      v20 = +[SUKeybagInterface sharedInstance];
    }

    v28 = *(v17 + 48);
    *(v17 + 48) = v20;

    [*(v17 + 48) addObserver:v17];
    inited = objc_initWeak(&location, v17);
    v30 = SULogInstallConstraints(inited);
    SULogDebugForSubsystem(v30, @"%@ - timer scheduled for interval @ %f s", v31, v32, v33, v34, v35, v36, v17);

    v37 = objc_alloc(MEMORY[0x277CF0D00]);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __118__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_initOnQueue_withDownload_installOptions_pollDuration_keybag___block_invoke;
    v42[3] = &unk_279CABC30;
    objc_copyWeak(v43, &location);
    v43[1] = *&duration;
    v38 = [v37 initWithFireInterval:queueCopy repeatInterval:v42 leewayInterval:duration queue:duration handler:0.0];
    v39 = *(v17 + 56);
    *(v17 + 56) = v38;

    [*(v17 + 56) schedule];
    [v17 _queue_pollSatisfied];
    objc_destroyWeak(v43);
    objc_destroyWeak(&location);
  }

  return v17;
}

void __118__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_initOnQueue_withDownload_installOptions_pollDuration_keybag___block_invoke(uint64_t a1)
{
  v2 = SULogInstallConstraints(a1);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  SULogDebugForSubsystem(v2, @"%@ - timer fired @ %f s", v4, v5, v6, v7, v8, v9, WeakRetained);

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 _queue_pollSatisfied];
}

- (void)dealloc
{
  [(SUKeybagInterface *)self->_queue_keybag removeObserver:self];
  queue_keybag = self->_queue_keybag;
  self->_queue_keybag = 0;

  v5 = SULogInstallConstraints(v4);
  SULogDebugForSubsystem(v5, @"%@ - timer invalidated", v6, v7, v8, v9, v10, v11, self);

  v12 = self->_queue_timer;
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_dealloc__block_invoke;
  block[3] = &unk_279CAA708;
  v19 = v12;
  v14 = v12;
  v15 = queue;
  dispatch_async(v15, block);
  queue_timer = self->_queue_timer;
  self->_queue_timer = 0;

  v17.receiver = self;
  v17.super_class = SUInstallationConstraintMonitorForBatteryDiskAndKeybag;
  [(SUInstallationConstraintMonitorForBatteryDiskAndKeybag *)&v17 dealloc];
}

- (unint64_t)deltaSpaceNeeded
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->super._queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_deltaSpaceNeeded__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)unsatisfiedConstraints
{
  BSDispatchQueueAssert();
  v3 = !self->_queue_batterySatisfied;
  if (!self->_queue_diskSatisfied)
  {
    v3 |= 4uLL;
  }

  if (!self->_queue_keybagSatisfied)
  {
    v3 |= 0x10uLL;
  }

  if (self->_queue_passcodeSatisfied)
  {
    return v3;
  }

  else
  {
    return v3 | 0x20;
  }
}

- (void)refreshConstraints
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_refreshConstraints__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)keybagInterface:(id)interface hasPasscodeSetDidChange:(BOOL)change
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_keybagInterface_hasPasscodeSetDidChange___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)keybagInterface:(id)interface passcodeLockedStateDidChange:(BOOL)change
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_keybagInterface_passcodeLockedStateDidChange___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)keybagInterfacePasscodeDidChange:(id)change
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_keybagInterfacePasscodeDidChange___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_pollSatisfied
{
  v3 = BSDispatchQueueAssert();
  v4 = SULogInstallConstraints(v3);
  SULogInfoForSubsystem(v4, @"%@ - evaluating constraints for disk/battery/passcode/keybag", v5, v6, v7, v8, v9, v10, self);

  if (!self->_queue_keybag)
  {
    v11 = +[SUKeybagInterface sharedInstance];
    queue_keybag = self->_queue_keybag;
    self->_queue_keybag = v11;

    [(SUKeybagInterface *)self->_queue_keybag addObserver:self];
  }

  _queue_evaluateBattery = [(SUInstallationConstraintMonitorForBatteryDiskAndKeybag *)self _queue_evaluateBattery];
  _queue_evaluateDisk = [(SUInstallationConstraintMonitorForBatteryDiskAndKeybag *)self _queue_evaluateDisk];
  _queue_evaluateKeybag = [(SUInstallationConstraintMonitorForBatteryDiskAndKeybag *)self _queue_evaluateKeybag];
  _queue_evaluatePasscodeLocked = [(SUInstallationConstraintMonitorForBatteryDiskAndKeybag *)self _queue_evaluatePasscodeLocked];
  v17 = _queue_evaluateBattery;
  if (_queue_evaluateDisk)
  {
    v17 = _queue_evaluateBattery | 4;
  }

  if (_queue_evaluateKeybag)
  {
    v17 |= 0x10uLL;
  }

  if (_queue_evaluatePasscodeLocked)
  {
    v18 = v17 | 0x20;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    delegate = [(SUInstallationConstraintMonitorBase *)self delegate];
    [delegate installationConstraintMonitor:self constraintsDidChange:v18];
  }
}

- (BOOL)_queue_evaluateBattery
{
  BSDispatchQueueAssert();
  download = [(SUInstallationConstraintMonitorBase *)self download];
  descriptor = [download descriptor];
  installOptions = [(SUInstallationConstraintMonitorBase *)self installOptions];
  v6 = SUHasEnoughBatteryForInstallation(descriptor, installOptions);

  queue_batterySatisfied = self->_queue_batterySatisfied;
  if (queue_batterySatisfied != v6)
  {
    self->_queue_batterySatisfied = v6;
    v9 = SULogInstallConstraints(v7);
    SULogInfoForSubsystem(v9, @"%@ - battery constraint changed (satisfied? %@)", v10, v11, v12, v13, v14, v15, self);
  }

  return queue_batterySatisfied != v6;
}

- (BOOL)_queue_evaluateDisk
{
  v3 = BSDispatchQueueAssert();
  v4 = SULogInstallConstraints(v3);
  download = [(SUInstallationConstraintMonitorBase *)self download];
  SULogInfoForSubsystem(v4, @"evaluateDisk: download: (%p)", v6, v7, v8, v9, v10, v11, download);

  download2 = [(SUInstallationConstraintMonitorBase *)self download];
  if (!download2)
  {
    v23 = @"Download instance is nil";
LABEL_9:
    SULogInfo(v23, v12, v13, v14, v15, v16, v17, v18, v41);
    v24 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = @"download not class SUDownload";
    goto LABEL_9;
  }

  descriptor = [download2 descriptor];

  if (!descriptor)
  {
    v23 = @"descriptor instance is nil";
    goto LABEL_9;
  }

  downloadOptions = [download2 downloadOptions];

  if (downloadOptions)
  {
    downloadOptions2 = [download2 downloadOptions];
LABEL_13:
    v27 = downloadOptions2;
    [downloadOptions2 isAutoDownload];

    goto LABEL_14;
  }

  metadata = [download2 metadata];

  if (metadata)
  {
    downloadOptions2 = [download2 metadata];
    goto LABEL_13;
  }

LABEL_14:
  v28 = objc_alloc_init(SUSpacePurgeOptions);
  descriptor2 = [download2 descriptor];
  -[SUSpacePurgeOptions setNeededBytes:](v28, "setNeededBytes:", [descriptor2 installationSize]);

  [(SUSpacePurgeOptions *)v28 setEnableCacheDelete:1];
  [(SUSpacePurgeOptions *)v28 setEnableAppOffload:0];
  [(SUSpacePurgeOptions *)v28 setEnableMobileAssetSuspend:0];
  [(SUSpacePurgeOptions *)v28 setCacheDeleteUrgency:4];
  v30 = [SUSpace hasSufficientSpaceWithOptions:v28 error:0];
  hasSufficientFreeSpace = [v30 hasSufficientFreeSpace];
  additionalBytesRequired = [v30 additionalBytesRequired];
  self->_queue_deltaSpaceNeeded = additionalBytesRequired;
  queue_diskSatisfied = self->_queue_diskSatisfied;
  v24 = queue_diskSatisfied != hasSufficientFreeSpace;
  if (queue_diskSatisfied != hasSufficientFreeSpace)
  {
    self->_queue_diskSatisfied = hasSufficientFreeSpace;
    v34 = SULogInstallConstraints(additionalBytesRequired);
    SULogInfoForSubsystem(v34, @"%@ - disk constraint changed (satisfied? %@)", v35, v36, v37, v38, v39, v40, self);
  }

LABEL_10:
  return v24;
}

- (BOOL)_queue_evaluatePasscodeLocked
{
  BSDispatchQueueAssert();
  isPasscodeLocked = [(SUKeybagInterface *)self->_queue_keybag isPasscodeLocked];
  if (isPasscodeLocked)
  {
    queue_keybagSatisfied = self->_queue_keybagSatisfied;
  }

  else
  {
    queue_keybagSatisfied = 1;
  }

  queue_passcodeSatisfied = self->_queue_passcodeSatisfied;
  v6 = queue_keybagSatisfied;
  if (queue_passcodeSatisfied != v6)
  {
    self->_queue_passcodeSatisfied = v6;
    v7 = SULogInstallConstraints(isPasscodeLocked);
    SULogInfoForSubsystem(v7, @"%@ - passcode constraint changed (satisfied? %@)", v8, v9, v10, v11, v12, v13, self);
  }

  return queue_passcodeSatisfied != v6;
}

- (BOOL)_queue_evaluateKeybag
{
  BSDispatchQueueAssert();
  queue_keybag = self->_queue_keybag;
  download = [(SUInstallationConstraintMonitorBase *)self download];
  descriptor = [download descriptor];
  v6 = [(SUKeybagInterface *)queue_keybag installationKeybagStateForDescriptor:descriptor]!= 1;

  queue_keybagSatisfied = self->_queue_keybagSatisfied;
  if (queue_keybagSatisfied != v6)
  {
    self->_queue_keybagSatisfied = v6;
    v9 = SULogInstallConstraints(v7);
    SULogInfoForSubsystem(v9, @"%@ - keybag constraint changed (satisfied? %@)", v10, v11, v12, v13, v14, v15, self);
  }

  return queue_keybagSatisfied != v6;
}

@end