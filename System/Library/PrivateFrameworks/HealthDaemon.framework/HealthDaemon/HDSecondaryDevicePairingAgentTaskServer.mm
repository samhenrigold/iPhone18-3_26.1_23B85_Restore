@interface HDSecondaryDevicePairingAgentTaskServer
- (HDSecondaryDevicePairingAgentTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_cancelTaskTimeout;
- (void)_finishWithSuccess:(void *)success error:;
- (void)_removePrivacyAlerts;
- (void)_scheduleTaskTimeout:(double)timeout timeoutHandler:;
- (void)remote_fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress:(id)address completion:(id)completion;
- (void)remote_fetchSharingStatusWithPairedGuardianWithCompletion:(id)completion;
- (void)remote_performEndToEndCloudSyncWithNRDeviceUUID:(id)d syncParticipantFirst:(BOOL)first completion:(id)completion;
- (void)remote_requestTinkerSharingOptInWithGuardianDisplayName:(id)name NRDeviceUUID:(id)d completion:(id)completion;
- (void)remote_setupHealthSharingForSecondaryPairedDeviceWithConfiguration:(id)configuration completion:(id)completion;
- (void)remote_tearDownHealthSharingWithPairedGuardianWithCompletion:(id)completion;
- (void)remote_tearDownHealthSharingWithTinkerDeviceWithNRUUID:(id)d completion:(id)completion;
@end

@implementation HDSecondaryDevicePairingAgentTaskServer

- (HDSecondaryDevicePairingAgentTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = HDSecondaryDevicePairingAgentTaskServer;
  result = [(HDStandardTaskServer *)&v7 initWithUUID:d configuration:configuration client:client delegate:delegate];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_tinkerSharingSetupTimeout = 300.0;
  }

  return result;
}

- (void)_finishWithSuccess:(void *)success error:
{
  v47 = *MEMORY[0x277D85DE8];
  successCopy = success;
  if (self)
  {
    [(HDSecondaryDevicePairingAgentTaskServer *)self _cancelTaskTimeout];
    os_unfair_lock_lock((self + 40));
    v6 = *(self + 64);
    if (v6)
    {
      v7 = v6;
      v8 = *(self + 64);
      *(self + 64) = 0;

      os_unfair_lock_unlock((self + 40));
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      v10 = *MEMORY[0x277CCC328];
      if (a2)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v9;
          v12 = objc_opt_class();
          v13 = *(v7 + 7);
          v14 = v12;
          profileIdentifier = [v13 profileIdentifier];
          *buf = 138543618;
          v44 = v12;
          v45 = 2114;
          *v46 = profileIdentifier;
          _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Finish successfully, profile: %{public}@ (#t0)", buf, 0x16u);
        }

        profile = [self profile];
        daemon = [profile daemon];
        analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
        v19 = *(v7 + 4);
        [analyticsSubmissionCoordinator tinker_pairingDidFinishForConfiguration:v19 duration:CFAbsoluteTimeGetCurrent() - *(v7 + 2)];
        goto LABEL_19;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v39 = v9;
        *buf = 138543618;
        v44 = objc_opt_class();
        v45 = 2114;
        *v46 = successCopy;
        v40 = v44;
        _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@: Failed to successfully setup pairing: %{public}@ (#t0)", buf, 0x16u);
      }

      if (!*(v7 + 7))
      {
LABEL_18:
        profile = [self profile];
        daemon = [profile daemon];
        analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
        v19 = *(v7 + 4);
        [analyticsSubmissionCoordinator tinker_pairingDidFailWithError:successCopy configuration:v19 duration:*(v7 + 6) stage:CFAbsoluteTimeGetCurrent() - *(v7 + 2)];
LABEL_19:

        v36 = successCopy;
        os_unfair_lock_lock(v7 + 2);
        v37 = _Block_copy(*(v7 + 5));
        v38 = *(v7 + 5);
        *(v7 + 5) = 0;

        os_unfair_lock_unlock(v7 + 2);
        v37[2](v37, a2, v36);

        [*(v7 + 3) invalidate];
        goto LABEL_20;
      }

      profile2 = [self profile];
      daemon2 = [profile2 daemon];
      profileManager = [daemon2 profileManager];
      v25 = *(v7 + 7);
      profileIdentifier2 = [v25 profileIdentifier];
      v42 = 0;
      v27 = [profileManager deleteProfile:profileIdentifier2 error:&v42];
      v28 = v42;

      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC328];
      v30 = *MEMORY[0x277CCC328];
      if (v27)
      {
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
LABEL_17:

          a2 = 0;
          goto LABEL_18;
        }

        v31 = v29;
        v32 = objc_opt_class();
        v33 = *(v7 + 7);
        v34 = v32;
        profileIdentifier3 = [v33 profileIdentifier];
        *buf = 138543618;
        v44 = v32;
        v45 = 2114;
        *v46 = profileIdentifier3;
        _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Completed profile teardown after pairing failure for %{public}@ (#t0)", buf, 0x16u);
      }

      else
      {
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        v31 = v29;
        v41 = objc_opt_class();
        v33 = *(v7 + 7);
        v34 = v41;
        profileIdentifier3 = [v33 profileIdentifier];
        *buf = 138543874;
        v44 = v41;
        v45 = 2114;
        *v46 = profileIdentifier3;
        *&v46[8] = 2114;
        *&v46[10] = v28;
        _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@: Failed to tear down profile %{public}@ after pairing failure: %{public}@ (#t0)", buf, 0x20u);
      }

      goto LABEL_17;
    }

    os_unfair_lock_unlock((self + 40));
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v20;
      *buf = 138543874;
      v44 = objc_opt_class();
      v45 = 1024;
      *v46 = a2;
      *&v46[4] = 2114;
      *&v46[6] = successCopy;
      v21 = v44;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Attempting to finish with no active request (success: %{BOOL}d, %{public}@)", buf, 0x1Cu);

LABEL_20:
    }
  }
}

- (void)_cancelTaskTimeout
{
  if (self)
  {
    *(self + 56) = 0;
    v2 = *(self + 48);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(self + 48);
      *(self + 48) = 0;
    }
  }
}

- (void)remote_requestTinkerSharingOptInWithGuardianDisplayName:(id)name NRDeviceUUID:(id)d completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dCopy = d;
  nameCopy = name;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    *buf = 138543362;
    v28 = objc_opt_class();
    v13 = v28;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Preparing to send message to Tinker watch (#t0)", buf, 0xCu);
  }

  v14 = objc_alloc_init(HDCodableTinkerOptInRequest);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [(HDCodableTinkerOptInRequest *)v14 setRequestIdentifier:uUIDString];

  [(HDCodableTinkerOptInRequest *)v14 setGuardianDisplayName:nameCopy];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke;
  v25[3] = &unk_278614E28;
  v25[4] = self;
  v17 = completionCopy;
  v26 = v17;
  [(HDSecondaryDevicePairingAgentTaskServer *)self _scheduleTaskTimeout:v25 timeoutHandler:60.0];
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  primaryProfile = [daemon primaryProfile];
  nanoSyncManager = [primaryProfile nanoSyncManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke_299;
  v23[3] = &unk_2786173C8;
  v23[4] = self;
  v24 = v17;
  v22 = v17;
  [nanoSyncManager sendTinkerSharingOptInRequest:v14 forNRDeviceUUID:dCopy completion:v23];
}

void __123__HDSecondaryDevicePairingAgentTaskServer_remote_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v4 = v2;
    *v6 = 138543362;
    *&v6[4] = objc_opt_class();
    v5 = *&v6[4];
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Sharing Opt In timed out", v6, 0xCu);
  }

  v3 = [MEMORY[0x277CCA9B8] hk_error:103 description:{@"Operation timed out", *v6, *&v6[8]}];
  (*(*(a1 + 40) + 16))();
}

- (void)_scheduleTaskTimeout:(double)timeout timeoutHandler:
{
  v5 = a2;
  if (self)
  {
    [(HDSecondaryDevicePairingAgentTaskServer *)self _cancelTaskTimeout];
    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    v7 = self[6];
    self[6] = v6;

    v8 = self[6];
    v9 = dispatch_time(0, (timeout * 1000000000.0));
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, self);
    v10 = self[6];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __79__HDSecondaryDevicePairingAgentTaskServer__scheduleTaskTimeout_timeoutHandler___block_invoke;
    handler[3] = &unk_27861B320;
    objc_copyWeak(&v13, &location);
    v12 = v5;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(self[6]);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __123__HDSecondaryDevicePairingAgentTaskServer_remote_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke_299(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 56) & 1) == 0)
  {
    v5 = a3;
    [(HDSecondaryDevicePairingAgentTaskServer *)v3 _cancelTaskTimeout];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)remote_setupHealthSharingForSecondaryPairedDeviceWithConfiguration:(id)configuration completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  completionCopy = completion;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    LODWORD(buf.receiver) = 138543362;
    *(&buf.receiver + 4) = objc_opt_class();
    v12 = *(&buf.receiver + 4);
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Received setupHealthSharing call (#t0)", &buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_currentRequest)
  {
    os_unfair_lock_unlock(&self->_lock);
    v13 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"A secondary device setup request is already in progress."];
    completionCopy[2](completionCopy, 0, v13);
  }

  else
  {
    v14 = [HDSecondaryDevicePairingRequest alloc];
    v15 = configurationCopy;
    v16 = completionCopy;
    if (v14)
    {
      buf.receiver = v14;
      buf.super_class = HDSecondaryDevicePairingRequest;
      v17 = [(HDSecondaryDevicePairingAgentTaskServer *)&buf init];
      v14 = v17;
      if (v17)
      {
        LODWORD(v17->super._taskUUID) = 0;
        objc_storeStrong(&v17->super._delegate, configuration);
        v18 = objc_msgSend_copy(v16);
        completion = v14->_completion;
        v14->_completion = v18;

        v20 = [MEMORY[0x277CCD288] transactionWithOwner:v14];
        transaction = v14->_transaction;
        v14->_transaction = v20;

        v14->_startTime = CFAbsoluteTimeGetCurrent();
        v14->_stage = 1;
      }
    }

    currentRequest = self->_currentRequest;
    self->_currentRequest = v14;
    v23 = v14;

    os_unfair_lock_unlock(&self->_lock);
    tinkerSharingSetupTimeout = self->_tinkerSharingSetupTimeout;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __121__HDSecondaryDevicePairingAgentTaskServer_remote_setupHealthSharingForSecondaryPairedDeviceWithConfiguration_completion___block_invoke;
    v30[3] = &unk_278613968;
    v30[4] = self;
    [(HDSecondaryDevicePairingAgentTaskServer *)self _scheduleTaskTimeout:v30 timeoutHandler:tinkerSharingSetupTimeout];
    v25 = v23;
    v26 = v25;
    if (v25)
    {
      v25->_stage = 2;
    }

    profile = [(HDStandardTaskServer *)self profile];
    cloudSyncManager = [profile cloudSyncManager];
    buf.receiver = MEMORY[0x277D85DD0];
    buf.super_class = 3221225472;
    v32 = __80__HDSecondaryDevicePairingAgentTaskServer__prepareGuardianForSharingForRequest___block_invoke;
    v33 = &unk_278616020;
    selfCopy = self;
    v13 = v26;
    v35 = v13;
    v29 = [cloudSyncManager prepareForSharingWithCompletion:&buf];
  }
}

void __121__HDSecondaryDevicePairingAgentTaskServer_remote_setupHealthSharingForSecondaryPairedDeviceWithConfiguration_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v4 = v2;
    *v6 = 138543362;
    *&v6[4] = objc_opt_class();
    v5 = *&v6[4];
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Sharing Setup timed out", v6, 0xCu);
  }

  v3 = [MEMORY[0x277CCA9B8] hk_error:103 description:{@"Operation timed out", *v6, *&v6[8]}];
  [(HDSecondaryDevicePairingAgentTaskServer *)*(a1 + 32) _finishWithSuccess:v3 error:?];
}

- (void)remote_performEndToEndCloudSyncWithNRDeviceUUID:(id)d syncParticipantFirst:(BOOL)first completion:(id)completion
{
  firstCopy = first;
  dCopy = d;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke;
  aBlock[3] = &unk_27861B280;
  aBlock[4] = self;
  v11 = dCopy;
  v28 = v11;
  v12 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_310;
  v24[3] = &unk_27861B2A8;
  v24[4] = self;
  v13 = v11;
  v25 = v13;
  v26 = a2;
  v14 = _Block_copy(v24);
  v15 = v14;
  if (firstCopy)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_317;
    v21[3] = &unk_27861B2D0;
    v16 = &v22;
    v22 = v12;
    v17 = &v23;
    v23 = completionCopy;
    (v15)[2](v15, 2, v21);
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_2;
    v18[3] = &unk_27861B2D0;
    v16 = &v19;
    v19 = v14;
    v17 = &v20;
    v20 = completionCopy;
    (*(v12 + 2))(v12, v18);
  }
}

void __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 138543362;
    v16 = objc_opt_class();
    v6 = v16;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Preparing to send message to Tinker watch for end to end Cloud Sync (#t0)", buf, 0xCu);
  }

  v7 = [*(a1 + 32) profile];
  v8 = [v7 daemon];
  v9 = [v8 primaryProfile];
  v10 = [v9 nanoSyncManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_308;
  v13[3] = &unk_2786173C8;
  v11 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v3;
  v12 = v3;
  [v10 sendTinkerEndToEndCloudSyncRequestForNRDeviceUUID:v11 completion:v13];
}

void __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_308(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
    v10 = 138543874;
    v11 = objc_opt_class();
    v12 = 1024;
    v13 = a2;
    v14 = 2114;
    v15 = v5;
    v9 = v11;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Did finish Gizmo Sync with success: %d, error: %{public}@ (#t0)", &v10, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v7);
}

void __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_310(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) profile];
  v7 = [v6 daemon];
  v8 = [v7 profileManager];
  v9 = [v8 profileAssociatedWithNRDeviceUUID:*(a1 + 40)];

  v10 = [*(a1 + 32) profile];
  v11 = [v10 daemon];
  v12 = [v11 profileManager];
  v13 = [v12 profileForIdentifier:v9];

  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC328];
  v15 = *MEMORY[0x277CCC328];
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v14;
      *buf = 138543362;
      v26 = objc_opt_class();
      v17 = v26;
      _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Performing Sync for local device (reason: end to end Cloud Sync) (#t0)", buf, 0xCu);
    }

    v18 = [[HDCloudSyncContext alloc] initForPurpose:a2 options:0 reason:20];
    v19 = [v13 cloudSyncManager];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_315;
    v23[3] = &unk_2786173C8;
    v23[4] = *(a1 + 32);
    v24 = v5;
    v20 = [v19 syncWithContext:v18 completion:v23];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      *buf = 138543618;
      v26 = v21;
      v27 = 2114;
      v28 = v22;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Unable to find profile for end-to-end sync for device %{public}@", buf, 0x16u);
    }

    v18 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 48) format:{@"No profile for device UUID %@", *(a1 + 40)}];
    (*(v5 + 2))(v5, 0, v18);
  }
}

void __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_315(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = v5;
    v9 = v11;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Did finish local device sync for end to end Cloud Sync with error: %{public}@ (#t0)", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v7);
}

- (void)remote_tearDownHealthSharingWithPairedGuardianWithCompletion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    *buf = 138543618;
    v35 = v9;
    v36 = 2114;
    v37 = v11;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ %{public}@ called (#t0)", buf, 0x16u);
  }

  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  isAppleWatch = [behavior isAppleWatch];

  if ((isAppleWatch & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v30 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSecondaryDevicePairingAgentTaskServer.m" lineNumber:257 description:{@"%@ must be called from a watch.", v30}];
  }

  profile2 = [(HDStandardTaskServer *)self profile];
  v33 = 0;
  v17 = [profile2 pairedGuardianParticipantWithError:&v33];
  v18 = v33;

  if (v18)
  {
    completionCopy[2](completionCopy, 0, v18);
  }

  else if (v17)
  {
    profile3 = [(HDStandardTaskServer *)self profile];
    daemon2 = [profile3 daemon];
    primaryProfile = [daemon2 primaryProfile];
    cloudSyncManager = [primaryProfile cloudSyncManager];
    v23 = [MEMORY[0x277CBEB98] setWithObject:v17];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __104__HDSecondaryDevicePairingAgentTaskServer_remote_tearDownHealthSharingWithPairedGuardianWithCompletion___block_invoke;
    v31[3] = &unk_2786173C8;
    v31[4] = self;
    v32 = completionCopy;
    v24 = [cloudSyncManager removeParticipants:v23 fromSharesWithCompletion:v31];
  }

  else
  {
    _HKInitializeLogging();
    v25 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      v27 = objc_opt_class();
      *buf = 138543362;
      v35 = v27;
      v28 = v27;
      _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Guardian participant is nil (#t0)", buf, 0xCu);
    }

    [(HDSecondaryDevicePairingAgentTaskServer *)self _removePrivacyAlerts];
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)_removePrivacyAlerts
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    profile = [self profile];
    daemon = [profile daemon];
    primaryProfile = [daemon primaryProfile];
    tinkerPrivacyAlertCoordinator = [primaryProfile tinkerPrivacyAlertCoordinator];
    v11 = 0;
    v5 = [tinkerPrivacyAlertCoordinator removeAllEventsWithError:&v11];
    v6 = v11;

    if ((v5 & 1) == 0)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        v9 = objc_opt_class();
        *buf = 138543618;
        v13 = v9;
        v14 = 2112;
        v15 = v6;
        v10 = v9;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@: Error %@ removing alerts", buf, 0x16u);
      }
    }
  }
}

void __104__HDSecondaryDevicePairingAgentTaskServer_remote_tearDownHealthSharingWithPairedGuardianWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  if (a2)
  {
    [(HDSecondaryDevicePairingAgentTaskServer *)v5 _removePrivacyAlerts];
  }

  else if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x277D10BC0]);
    v8 = HKHealthKitFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"STOP_SHARING_FAILED_NOTIFICATION_TITLE" value:&stru_283BF39C8 table:@"Localizable-tinker"];
    [v7 setTitle:v9];

    v10 = HKHealthKitFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"STOP_SHARING_FAILED_NOTIFICATION_MESSAGE" value:&stru_283BF39C8 table:@"Localizable-tinker"];
    [v7 setMessage:v11];

    [v7 presentWithResponseHandler:&__block_literal_global_59];
  }

  v12 = *(a1 + 40);
  v13 = [v6 hk_sanitizedError];

  (*(v12 + 16))(v12, a2, v13);
}

- (void)remote_tearDownHealthSharingWithTinkerDeviceWithNRUUID:(id)d completion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC328];
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = objc_opt_class();
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    *buf = 138543874;
    selfCopy = v12;
    v53 = 2114;
    v54 = v14;
    v55 = 2114;
    v56 = dCopy;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ %{public}@ called with NR UUID %{public}@ (#t0)", buf, 0x20u);
  }

  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  isAppleWatch = [behavior isAppleWatch];

  if (isAppleWatch)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v45 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSecondaryDevicePairingAgentTaskServer.m" lineNumber:303 description:{@"%@ must be called from a phone.", v45}];
  }

  profile2 = [(HDStandardTaskServer *)self profile];
  profileType = [profile2 profileType];

  if (profileType == 1)
  {
    profile3 = [(HDStandardTaskServer *)self profile];
    daemon2 = [profile3 daemon];
    profileManager = [daemon2 profileManager];
    v24 = [profileManager profileAssociatedWithNRDeviceUUID:dCopy];

    profile4 = [(HDStandardTaskServer *)self profile];
    daemon3 = [profile4 daemon];
    profileManager2 = [daemon3 profileManager];
    v28 = [profileManager2 profileForIdentifier:v24];

    if ([v28 profileType] == 1)
    {
      _HKInitializeLogging();
      v29 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v38 = v29;
        v39 = objc_opt_class();
        *buf = 138543874;
        selfCopy = v39;
        v53 = 2114;
        v54 = v28;
        v55 = 2114;
        v56 = dCopy;
        v40 = v39;
        _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Profile %{public}@ associated with NRDeviceUUID:%{public}@ is primary profile. Abort sharing tear down flow (#t0)", buf, 0x20u);
      }

      [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Profile associated with NRDeviceUUID: %@ is primary profile.", dCopy}];
    }

    else
    {
      if (v28)
      {
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __109__HDSecondaryDevicePairingAgentTaskServer_remote_tearDownHealthSharingWithTinkerDeviceWithNRUUID_completion___block_invoke;
        v49[3] = &unk_278614E28;
        v49[4] = self;
        v31 = completionCopy;
        v50 = v31;
        [(HDSecondaryDevicePairingAgentTaskServer *)self _scheduleTaskTimeout:v49 timeoutHandler:60.0];
        cloudSyncManager = [v28 cloudSyncManager];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __109__HDSecondaryDevicePairingAgentTaskServer_remote_tearDownHealthSharingWithTinkerDeviceWithNRUUID_completion___block_invoke_338;
        v46[3] = &unk_278613150;
        v46[4] = self;
        v47 = v28;
        v48 = v31;
        v33 = [cloudSyncManager leaveSharesWithCompletion:v46];

LABEL_19:
        goto LABEL_20;
      }

      _HKInitializeLogging();
      v34 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v41 = v34;
        v42 = objc_opt_class();
        *buf = 138543618;
        selfCopy = v42;
        v53 = 2114;
        v54 = dCopy;
        v43 = v42;
        _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Unable to find secondary profile associated with NRDeviceUUID: %{public}@ (#t0)", buf, 0x16u);
      }

      [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Unable to find secondary profile associated with NRDeviceUUID: %@", dCopy}];
    }
    v35 = ;
    (*(completionCopy + 2))(completionCopy, 0, v35);

    goto LABEL_19;
  }

  _HKInitializeLogging();
  v30 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    v36 = v30;
    v37 = NSStringFromSelector(a2);
    *buf = 138543618;
    selfCopy = self;
    v53 = 2114;
    v54 = v37;
    _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ Health sharing pairing agent must be intialized with primary profile health store.", buf, 0x16u);
  }

  v24 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Tear down health sharing pairing agent not initialized with primary profile health store."];
  (*(completionCopy + 2))(completionCopy, 0, v24);
LABEL_20:
}

void __109__HDSecondaryDevicePairingAgentTaskServer_remote_tearDownHealthSharingWithTinkerDeviceWithNRUUID_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v4 = v2;
    *v6 = 138543362;
    *&v6[4] = objc_opt_class();
    v5 = *&v6[4];
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Sharing Tear Down timed out", v6, 0xCu);
  }

  v3 = [MEMORY[0x277CCA9B8] hk_error:103 description:{@"Operation timed out", *v6, *&v6[8]}];
  (*(*(a1 + 40) + 16))();
}

void __109__HDSecondaryDevicePairingAgentTaskServer_remote_tearDownHealthSharingWithTinkerDeviceWithNRUUID_completion___block_invoke_338(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if ((*(v6 + 56) & 1) == 0)
  {
    [(HDSecondaryDevicePairingAgentTaskServer *)v6 _cancelTaskTimeout];
    if (a2)
    {
      v7 = [*(a1 + 32) profile];
      v8 = [v7 daemon];
      v9 = [v8 profileManager];
      v10 = [*(a1 + 40) profileIdentifier];
      v12 = 0;
      [v9 deleteProfile:v10 error:&v12];
      v11 = v12;

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)remote_fetchSharingStatusWithPairedGuardianWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  isAppleWatch = [behavior isAppleWatch];

  if ((isAppleWatch & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSecondaryDevicePairingAgentTaskServer.m" lineNumber:360 description:{@"%@ must be called from a watch.", v15}];
  }

  profile2 = [(HDStandardTaskServer *)self profile];
  cloudSyncManager = [profile2 cloudSyncManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__HDSecondaryDevicePairingAgentTaskServer_remote_fetchSharingStatusWithPairedGuardianWithCompletion___block_invoke;
  v16[3] = &unk_27861B2F8;
  v16[4] = self;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = [cloudSyncManager fetchShareParticipantsForSharingType:1 completion:v16];
}

void __101__HDSecondaryDevicePairingAgentTaskServer_remote_fetchSharingStatusWithPairedGuardianWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) profile];
    v17 = v6;
    v8 = [v7 pairedGuardianParticipantWithError:&v17];
    v9 = v17;

    if (v8)
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40), [v5 containsObject:v8], 0);
    }

    else
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v14 = v11;
        v15 = objc_opt_class();
        *buf = 138543618;
        v19 = v15;
        v20 = 2114;
        v21 = v9;
        v16 = v15;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Failed to fetch persisted paired Guardian participant from key value store, error: %{public}@", buf, 0x16u);
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v9);
    }

    v6 = v9;
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v12 = v10;
      *buf = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v6;
      v13 = v19;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Failed to fetch participants from cloud zones, error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)remote_fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  cloudSyncManager = [profile cloudSyncManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __118__HDSecondaryDevicePairingAgentTaskServer_remote_fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress_completion___block_invoke;
  v12[3] = &unk_2786130D8;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [cloudSyncManager fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress:addressCopy completion:v12];
}

void __79__HDSecondaryDevicePairingAgentTaskServer__scheduleTaskTimeout_timeoutHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained)
  {
    *(WeakRetained + 56) = 1;
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v6 = v3;
      *buf = 138543362;
      v10 = objc_opt_class();
      v7 = v10;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Operation timed out", buf, 0xCu);
    }

    v4 = _Block_copy(*(WeakRetained + 10));
    v5 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4);
    }

    v2[2](v2);
  }
}

void __80__HDSecondaryDevicePairingAgentTaskServer__prepareGuardianForSharingForRequest___block_invoke(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) profile];
    v7 = [v6 cloudSyncManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __80__HDSecondaryDevicePairingAgentTaskServer__prepareGuardianForSharingForRequest___block_invoke_354;
    v12[3] = &unk_27861B348;
    v8 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v8;
    [v7 fetchCloudKitAccountInfoWithCompletion:v12];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      *buf = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v5;
      v11 = v15;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@: Failed to prepare for sharing during setup: %{public}@ (#t0)", buf, 0x16u);
    }

    [(HDSecondaryDevicePairingAgentTaskServer *)*(a1 + 32) _finishWithSuccess:v5 error:?];
  }
}

void __80__HDSecondaryDevicePairingAgentTaskServer__prepareGuardianForSharingForRequest___block_invoke_354(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC328];
  v8 = *MEMORY[0x277CCC328];
  v9 = *MEMORY[0x277CCC328];
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v38 = v8;
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2114;
      *&buf[14] = v6;
      v39 = *&buf[4];
      _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@: Unable to fetch iCloud ID with error: %{public}@ (#t0)", buf, 0x16u);
    }

    [(HDSecondaryDevicePairingAgentTaskServer *)*(a1 + 32) _finishWithSuccess:v6 error:?];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [v5 emailAddress];
      *buf = 138543619;
      *&buf[4] = v11;
      *&buf[12] = 2113;
      *&buf[14] = v13;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Fetched icloud address for guardian: %{private}@ (#t0)", buf, 0x16u);
    }

    v15 = [v5 emailAddress];
    v16 = *(a1 + 40);
    if (v16)
    {
      objc_setProperty_nonatomic_copy(v16, v14, v15, 64);
    }

    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    if (v17)
    {
      _HKInitializeLogging();
      v19 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = objc_opt_class();
        *buf = 138543362;
        *&buf[4] = v21;
        v22 = v21;
        _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Preparing to send message to Tinker watch (#t0)", buf, 0xCu);
      }

      if (v18)
      {
        *(v18 + 6) = 3;
      }

      v40 = [v17 profile];
      v23 = [v40 daemon];
      v24 = [v23 primaryProfile];
      v25 = [v24 nanoSyncManager];
      if (v18)
      {
        v26 = objc_alloc_init(HDCodableTinkerPairingRequest);
        v27 = [MEMORY[0x277CCAD78] UUID];
        v28 = [v27 UUIDString];
        [(HDCodableTinkerPairingRequest *)v26 setRequestIdentifier:v28];

        -[HDCodableTinkerPairingRequest setSetupType:](v26, "setSetupType:", [*(v18 + 4) setupType]);
        [(HDCodableTinkerPairingRequest *)v26 setGuardianIcloudIdentifier:*(v18 + 8)];
        v29 = [*(v18 + 4) guardianFirstName];
        [(HDCodableTinkerPairingRequest *)v26 setGuardianFirstName:v29];

        v30 = [*(v18 + 4) guardianLastName];
        [(HDCodableTinkerPairingRequest *)v26 setGuardianLastName:v30];

        v31 = [*(v18 + 4) guardianDSID];
        -[HDCodableTinkerPairingRequest setGuardianDSID:](v26, "setGuardianDSID:", [v31 longLongValue]);

        v32 = [*(v18 + 4) firstName];
        [(HDCodableTinkerPairingRequest *)v26 setTinkerFirstName:v32];

        v33 = [*(v18 + 4) lastName];
        [(HDCodableTinkerPairingRequest *)v26 setTinkerLastName:v33];

        v34 = *(v18 + 4);
      }

      else
      {
        v26 = 0;
        v34 = 0;
      }

      v35 = v34;
      v36 = [v35 nanoRegistryDeviceUUID];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __77__HDSecondaryDevicePairingAgentTaskServer__sendSharingRequestToTinkerDevice___block_invoke;
      v42 = &unk_27861B370;
      v43 = v17;
      v37 = v18;

      v44 = v37;
      [v25 sendTinkerWatchPairingRequest:v26 forNRDeviceUUID:v36 completion:buf];
    }
  }
}

void __77__HDSecondaryDevicePairingAgentTaskServer__sendSharingRequestToTinkerDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = v6;
LABEL_3:
    [(HDSecondaryDevicePairingAgentTaskServer *)v7 _finishWithSuccess:v8 error:?];
    goto LABEL_4;
  }

  if (!v5)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      *buf = 138543362;
      *&buf[4] = objc_opt_class();
      v14 = *&buf[4];
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Tinker health sharing is disabled (#t0)", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = 0;
    goto LABEL_3;
  }

  if (*(*(a1 + 32) + 56) == 1)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      *buf = 138543362;
      *&buf[4] = objc_opt_class();
      v11 = *&buf[4];
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ We received a response from the tinker watch but the request has timed out.(#t0)", buf, 0xCu);
    }
  }

  else
  {
    v30 = 0;
    v15 = [HDCloudSyncShareSetupMetadata cloudSyncShareSetupMetadataWithCodableSharingSetupMetadata:v5 error:&v30];
    v16 = v30;
    if (v15)
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = v15;
      if (v17)
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          v22 = objc_opt_class();
          *buf = 138543619;
          *&buf[4] = v22;
          *&buf[12] = 2113;
          *&buf[14] = v19;
          v23 = v22;
          _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Accept shares with %{private}@ (#t0)", buf, 0x16u);
        }

        if (v18)
        {
          v18[6] = 4;
        }

        v24 = [v17 profile];
        v25 = [v24 cloudSyncManager];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __77__HDSecondaryDevicePairingAgentTaskServer__acceptSharingForRequest_metadata___block_invoke;
        v32 = &unk_27861B398;
        v33 = v17;
        v34 = v18;
        v35 = v19;
        [v25 acceptShare:v35 completion:buf];
      }
    }

    else
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        v28 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v28;
        *&buf[12] = 2114;
        *&buf[14] = v16;
        v29 = v28;
        _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Failed to decode share setup metadata: %{public}@", buf, 0x16u);
      }

      [(HDSecondaryDevicePairingAgentTaskServer *)*(a1 + 32) _finishWithSuccess:v16 error:?];
    }
  }

LABEL_4:
}

void __77__HDSecondaryDevicePairingAgentTaskServer__acceptSharingForRequest_metadata___block_invoke(uint64_t *a1, void *a2, void *a3)
{
  v209 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!v5)
  {
    [(HDSecondaryDevicePairingAgentTaskServer *)a1[4] _finishWithSuccess:a3 error:?];
    goto LABEL_113;
  }

  v6 = a1[5];
  if (v6)
  {
    v6[6] = 5;
    v6 = a1[5];
  }

  v168 = a1;
  v7 = a1[6];
  v8 = a1[4];
  v170 = v6;
  v9 = v7;
  v169 = v5;
  v167 = v9;
  if (!v8)
  {
    v58 = 0;
    goto LABEL_54;
  }

  v195 = 0;
  v10 = v9;
  v11 = [v5 firstObject];
  v12 = [v11 owner];

  v176 = v8;
  v13 = [v8 profile];
  v14 = [v13 daemon];
  v15 = [v14 profileManager];

  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v16 = [v15 allProfileIdentifiers];
  v17 = [v16 countByEnumeratingWithState:&v196 objects:v206 count:16];
  if (!v17)
  {
    v8 = 0;
    goto LABEL_45;
  }

  v18 = v17;
  v19 = *v197;
  v182 = v10;
  v184 = *v197;
  v178 = v16;
  v180 = v15;
LABEL_7:
  v20 = 0;
  v192 = v18;
  while (1)
  {
    if (*v197 != v19)
    {
      objc_enumerationMutation(v16);
    }

    v21 = *(*(&v196 + 1) + 8 * v20);
    if ([v21 type] != 3)
    {
      goto LABEL_26;
    }

    v22 = [v15 profileForIdentifier:v21];
    if (v22)
    {
      break;
    }

    _HKInitializeLogging();
    v37 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
      v39 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v39;
      v202 = 2114;
      v203 = v21;
      v40 = v39;
      _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Profile %{public}@ deleted during iteration; skipping.", buf, 0x16u);
LABEL_23:

      v19 = v184;
    }

LABEL_25:

    v18 = v192;
LABEL_26:
    if (v18 == ++v20)
    {
      v43 = [v16 countByEnumeratingWithState:&v196 objects:v206 count:16];
      v18 = v43;
      if (!v43)
      {
        v8 = 0;
        v5 = v169;
        goto LABEL_45;
      }

      goto LABEL_7;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _HKInitializeLogging();
    v41 = *MEMORY[0x277CCC328];
    if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v38 = v41;
    v42 = objc_opt_class();
    *buf = 138543618;
    *&buf[4] = v42;
    v202 = 2114;
    v203 = v22;
    v40 = v42;
    _os_log_fault_impl(&dword_228986000, v38, OS_LOG_TYPE_FAULT, "[sharing-setup] %{public}@: Profile %{public}@ is not actually a Tinker profile; skipping.", buf, 0x16u);
    goto LABEL_23;
  }

  v190 = v22;
  v23 = [v22 cloudSyncManager];
  v200 = 0;
  v24 = [v23 shareOwnerParticipantWithError:&v200];
  v25 = v200;

  if (v24)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25 == 0;
  }

  if (!v26)
  {
    _HKInitializeLogging();
    v44 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v46 = v44;
      v47 = objc_opt_class();
      v48 = v47;
      v49 = [v190 profileIdentifier];
      *buf = 138543874;
      *&buf[4] = v47;
      v202 = 2114;
      v203 = v49;
      v204 = 2114;
      v205 = v25;
      _os_log_impl(&dword_228986000, v46, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Failed to lookup owner participant at existing tinker profile %{public}@: %{public}@", buf, 0x20u);
    }

    v50 = v25;
    v8 = 0;
    v195 = v25;
    goto LABEL_43;
  }

  v27 = [v10 profileIdentifier];
  v28 = [v27 isEqual:v21];

  if (!v28)
  {
    v187 = v25;
    v29 = [v24 userIdentity];
    v30 = [v29 userRecordID];
    v31 = [v30 recordName];
    v32 = v12;
    v33 = [v12 userIdentity];
    v34 = [v33 userRecordID];
    v35 = [v34 recordName];
    v36 = [v31 isEqual:v35];

    if (v36)
    {
      v54 = v190;
      v8 = v190;

      v5 = v169;
      v15 = v180;
      v10 = v182;
      v12 = v32;
      v16 = v178;
      v25 = v187;
      goto LABEL_44;
    }

    v15 = v180;
    v10 = v182;
    v12 = v32;
    v16 = v178;
    v22 = v190;
    v19 = v184;
    goto LABEL_25;
  }

  if (!v12 || ([v24 userIdentity], v193 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v193, "userRecordID"), v188 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v188, "recordName"), v51 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "userIdentity"), v174 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v174, "userRecordID"), v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v52, "recordName"), v53 = objc_claimAutoreleasedReturnValue(), v185 = objc_msgSend(v51, "isEqual:", v53), v53, v52, v174, v51, v188, v193, (v185 & 1) != 0))
  {
    v54 = v190;
    v8 = v190;

    v5 = v169;
    goto LABEL_44;
  }

  _HKInitializeLogging();
  v55 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
  {
    *buf = 138543874;
    *&buf[4] = v176;
    v202 = 2114;
    v203 = v24;
    v204 = 2114;
    v205 = v12;
    _os_log_fault_impl(&dword_228986000, v55, OS_LOG_TYPE_FAULT, "%{public}@: Existing profile identifier has an owner (%{public}@) which does not match the incoming owner (%{public}@)", buf, 0x20u);
  }

  [MEMORY[0x277CCA9B8] hk_assignError:&v195 code:721 format:{@"Existing profile identifier has an owner (%@) which does not match the incoming owner (%@)", v24, v12, v167}];

  v8 = 0;
LABEL_43:
  v5 = v169;
  v54 = v190;
LABEL_44:

LABEL_45:
  v56 = v195;
  v57 = v56;
  if (v8)
  {
    v58 = 0;
    goto LABEL_47;
  }

  if (v56)
  {
    v59 = v56;
    v8 = 0;
    v58 = v57;
  }

  else
  {
    v111 = v5;
    if (v170)
    {
      v112 = v170[4];
    }

    else
    {
      v112 = 0;
    }

    v113 = [v112 firstName];
    v114 = v113;
    v115 = @"Health Jr";
    if (v113)
    {
      v115 = v113;
    }

    v116 = v115;
    v117 = [v10 profileIdentifier];
    if ([v117 type] != 3)
    {
      v118 = MEMORY[0x277CCD7C8];
      v119 = [MEMORY[0x277CCAD78] UUID];
      v120 = [v118 _profileWithUUID:v119 type:3];

      v117 = v120;
    }

    v121 = [v176 profile];
    v122 = [v121 daemon];
    v123 = [v122 profileManager];
    *&v196 = 0;
    v8 = [v123 createProfileForIdentifier:v117 firstName:v116 lastName:0 error:&v196];

    v124 = v196;
    if (v8)
    {
      v125 = v8;
      v58 = 0;
      v5 = v111;
    }

    else
    {
      _HKInitializeLogging();
      v142 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v163 = v142;
        v164 = objc_opt_class();
        *v206 = 138543874;
        *&v206[4] = v164;
        *&v206[12] = 2114;
        *&v206[14] = v117;
        *&v206[22] = 2114;
        v207 = v124;
        v165 = v164;
        _os_log_error_impl(&dword_228986000, v163, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@: Failed to create profile %{public}@ with error: %{public}@ (#t0)", v206, 0x20u);
      }

      v143 = v124;
      v58 = v143;
      v5 = v111;
      if (v143)
      {
        v144 = v143;
      }
    }

    if (v8)
    {
LABEL_47:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v166 = [MEMORY[0x277CCA890] currentHandler];
        [v166 handleFailureInMethod:sel__lookupOrCreateTinkerProfileForRequest_metadata_acceptedShares_error_ object:v176 file:@"HDSecondaryDevicePairingAgentTaskServer.m" lineNumber:681 description:{@"Invalid parameter not satisfying: %@", @"[tinkerProfile isKindOfClass:HDTinkerProfile.class]"}];
      }

      if (v170)
      {
        objc_storeStrong(v170 + 7, v8);
      }
    }
  }

LABEL_54:
  v60 = v58;
  v61 = v60;
  v62 = v168[4];
  if (v8)
  {
    v183 = v60;
    v63 = v168[6];
    v64 = v168[5];
    v191 = v63;
    v189 = v5;
    if (v62)
    {
      if (v64)
      {
        *(v64 + 6) = 6;
        v65 = *(v64 + 7);
        v66 = *(v64 + 4);
      }

      else
      {
        v65 = 0;
        v66 = 0;
      }

      v67 = v66;
      v68 = [v67 dateOfBirth];
      v194 = v62;
      v181 = v67;
      if (v64)
      {
        v69 = *(v64 + 4);
      }

      else
      {
        v69 = 0;
      }

      v70 = v69;
      v71 = [v70 firstName];
      if (v64)
      {
        v72 = *(v64 + 4);
      }

      else
      {
        v72 = 0;
      }

      v73 = v72;
      v74 = [v73 lastName];
      v177 = v73;
      v179 = v70;
      if (v64)
      {
        v75 = *(v64 + 4);
      }

      else
      {
        v75 = 0;
      }

      v175 = v75;
      v76 = [v175 dsid];
      v77 = v65;
      v78 = v68;
      v79 = v71;
      v80 = v74;
      v81 = v76;
      v186 = v8;
      if (v78)
      {
        v82 = [MEMORY[0x277CCD0D0] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
        v83 = [v77 userCharacteristicsManager];
        *&v196 = 0;
        [v83 setUserCharacteristic:v78 forType:v82 error:&v196];
        v84 = v196;

        if (v84)
        {
          _HKInitializeLogging();
          v85 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v145 = v85;
            v146 = objc_opt_class();
            v172 = v146;
            v147 = [v77 profileIdentifier];
            *v206 = 138543874;
            *&v206[4] = v146;
            *&v206[12] = 2114;
            *&v206[14] = v84;
            *&v206[22] = 2114;
            v207 = v147;
            v148 = v147;
            _os_log_error_impl(&dword_228986000, v145, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Error %{public}@ saving date of birth into profile %{public}@ (#t0)", v206, 0x20u);
          }

          v86 = v84;

          v87 = 0;
          goto LABEL_81;
        }
      }

      else
      {
        _HKInitializeLogging();
        v88 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v89 = v88;
          v90 = objc_opt_class();
          *v206 = 138543362;
          *&v206[4] = v90;
          v91 = v90;
          _os_log_error_impl(&dword_228986000, v89, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Did not receive birthdate for user (#t0)", v206, 0xCu);
        }
      }

      *buf = 0;
      [v77 setDisplayFirstName:v79 lastName:v80 error:buf];
      v92 = *buf;
      if (v92)
      {
        v84 = v92;
        _HKInitializeLogging();
        v93 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v149 = v93;
          v150 = objc_opt_class();
          *v206 = 138544130;
          *&v206[4] = v150;
          *&v206[12] = 2114;
          *&v206[14] = v84;
          *&v206[22] = 2114;
          v207 = v79;
          LOWORD(v208) = 2114;
          *(&v208 + 2) = v80;
          v151 = v150;
          _os_log_error_impl(&dword_228986000, v149, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Error %{public}@ saving first %{public}@ and last %{public}@ name (#t0)", v206, 0x2Au);
        }

        v94 = v84;
        v87 = 0;
        v82 = v84;
      }

      else
      {
        v200 = 0;
        [v77 setDSID:v81 error:&v200];
        v95 = v200;
        v87 = v95 == 0;
        if (v95)
        {
          _HKInitializeLogging();
          v96 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v160 = v96;
            v161 = objc_opt_class();
            *v206 = 138543874;
            *&v206[4] = v161;
            *&v206[12] = 2114;
            *&v206[14] = v95;
            *&v206[22] = 2114;
            v207 = v81;
            v162 = v161;
            _os_log_error_impl(&dword_228986000, v160, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Error %{public}@ saving DSID %{public}@ (#t0)", v206, 0x20u);
          }
        }

        v84 = 0;
        v82 = 0;
      }

LABEL_81:

      v97 = v84;
      if (v87)
      {
        _HKInitializeLogging();
        v98 = MEMORY[0x277CCC328];
        v99 = *MEMORY[0x277CCC328];
        v100 = v194;
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v101 = v99;
          v102 = objc_opt_class();
          *v206 = 138543362;
          *&v206[4] = v102;
          v103 = v102;
          _os_log_impl(&dword_228986000, v101, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Profile name, DoB, DSID saved successfully (#t0)", v206, 0xCu);
        }

        if (v64)
        {
          v104 = *(v64 + 7);
          v105 = *(v64 + 4);
        }

        else
        {
          v104 = 0;
          v105 = 0;
        }

        v106 = v105;
        v107 = [v106 nanoRegistryDeviceUUID];
        *&v196 = 0;
        [v104 setPairedNRDeviceUUID:v107 error:&v196];
        v108 = v196;

        _HKInitializeLogging();
        v109 = *v98;
        v110 = v109;
        v8 = v186;
        if (v108)
        {
          v5 = v169;
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            v152 = objc_opt_class();
            if (v64)
            {
              v153 = *(v64 + 7);
            }

            else
            {
              v153 = 0;
            }

            v154 = v153;
            v155 = v152;
            v156 = [v154 profileIdentifier];
            v173 = v97;
            if (v64)
            {
              v157 = *(v64 + 4);
            }

            else
            {
              v157 = 0;
            }

            v158 = v157;
            v159 = [v158 nanoRegistryDeviceUUID];
            *v206 = 138544130;
            *&v206[4] = v152;
            *&v206[12] = 2114;
            *&v206[14] = v156;
            *&v206[22] = 2114;
            v207 = v159;
            LOWORD(v208) = 2114;
            *(&v208 + 2) = v108;
            _os_log_error_impl(&dword_228986000, v110, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@: Failed to associate profile (%{public}@) with NRDeviceUUID: (%{public}@) error: %{public}@ (#t0)", v206, 0x2Au);

            v5 = v169;
            v8 = v186;
            v100 = v194;
            v97 = v173;
          }

          [(HDSecondaryDevicePairingAgentTaskServer *)v100 _finishWithSuccess:v97 error:?];
        }

        else
        {
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            v126 = objc_opt_class();
            if (v64)
            {
              v127 = *(v64 + 4);
            }

            else
            {
              v127 = 0;
            }

            v128 = v127;
            v129 = v126;
            v130 = [v128 nanoRegistryDeviceUUID];
            v171 = v97;
            if (v64)
            {
              v131 = *(v64 + 7);
            }

            else
            {
              v131 = 0;
            }

            v132 = v131;
            v133 = [v132 profileIdentifier];
            *v206 = 138543874;
            *&v206[4] = v126;
            *&v206[12] = 2114;
            *&v206[14] = v130;
            *&v206[22] = 2114;
            v207 = v133;
            _os_log_impl(&dword_228986000, v110, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Device %{public}@ associated successfully with profile %{public}@ (#t0)", v206, 0x20u);

            v100 = v194;
            v97 = v171;
            v98 = MEMORY[0x277CCC328];
          }

          _HKInitializeLogging();
          v134 = *v98;
          if (os_log_type_enabled(*v98, OS_LOG_TYPE_DEFAULT))
          {
            v135 = v134;
            v136 = objc_opt_class();
            *v206 = 138543362;
            *&v206[4] = v136;
            v137 = v136;
            _os_log_impl(&dword_228986000, v135, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Configuring profile for share setup metadata (#t0)", v206, 0xCu);
          }

          if (v64)
          {
            v138 = *(v64 + 7);
          }

          else
          {
            v138 = 0;
          }

          v139 = v138;
          v140 = [v139 cloudSyncManager];
          *v206 = MEMORY[0x277D85DD0];
          *&v206[8] = 3221225472;
          *&v206[16] = __97__HDSecondaryDevicePairingAgentTaskServer__setupTinkerProfileForRequest_metadata_acceptedShares___block_invoke;
          v207 = &unk_278616020;
          *&v208 = v100;
          v141 = v64;

          *(&v208 + 1) = v141;
          [v140 configureForShareSetupMetadata:v191 acceptedShares:v189 completion:v206];

          v5 = v169;
        }
      }

      else
      {
        [(HDSecondaryDevicePairingAgentTaskServer *)v194 _finishWithSuccess:v97 error:?];
        v5 = v169;
        v8 = v186;
      }
    }

    v61 = v183;
  }

  else
  {
    [(HDSecondaryDevicePairingAgentTaskServer *)v168[4] _finishWithSuccess:v60 error:?];
  }

LABEL_113:
}

void __97__HDSecondaryDevicePairingAgentTaskServer__setupTinkerProfileForRequest_metadata_acceptedShares___block_invoke(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      *buf = 138543362;
      v14 = objc_opt_class();
      v6 = v14;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Subscribing to data available notifications (#t0)", buf, 0xCu);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v7 = v7[7];
    }

    v8 = v7;
    v9 = [v8 cloudSyncManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __97__HDSecondaryDevicePairingAgentTaskServer__setupTinkerProfileForRequest_metadata_acceptedShares___block_invoke_362;
    v12[3] = &unk_2786130B0;
    v10 = *(a1 + 32);

    v12[4] = v10;
    [v9 subscribeToDataAvailableNotificationsWithCompletion:v12];

    [(HDSecondaryDevicePairingAgentTaskServer *)*(a1 + 32) _finishWithSuccess:0 error:?];
  }

  else
  {
    v11 = *(a1 + 32);

    [(HDSecondaryDevicePairingAgentTaskServer *)v11 _finishWithSuccess:a3 error:?];
  }
}

void __97__HDSecondaryDevicePairingAgentTaskServer__setupTinkerProfileForRequest_metadata_acceptedShares___block_invoke_362(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v6 = v5;
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 2114;
      v11 = v4;
      v7 = v9;
      _os_log_fault_impl(&dword_228986000, v6, OS_LOG_TYPE_FAULT, "[sharing-setup] %{public}@: Failed to set up subscriptions: %{public}@ (#t0)", &v8, 0x16u);
    }
  }
}

@end