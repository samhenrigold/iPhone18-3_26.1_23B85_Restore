@interface CDPSOSCircleProxyImpl
+ (unint64_t)syncingStatusForAltDSID:(id)d;
- (BOOL)_performSOSCBlock:(id)block error:(id *)error;
- (BOOL)_registerCredentialsOnlyIfNeeded:(BOOL)needed;
- (BOOL)_viewMemberForView:(__CFString *)view error:(id *)error;
- (BOOL)anyPeerHasEnabledViewsInSet:(id)set error:(id *)error;
- (BOOL)canAuthenticate;
- (BOOL)fetchUserControllableViewsSyncingEnabled:(id *)enabled;
- (BOOL)hasNonViewAwarePeers;
- (BOOL)removeNonViewAwarePeers:(id *)peers;
- (BOOL)removeThisDeviceFromCircle:(id *)circle;
- (BOOL)requestToResetCloudKitDataForReason:(id)reason error:(id *)error;
- (BOOL)resetToOffering:(id *)offering;
- (BOOL)setUserControllableViewsSyncStatus:(BOOL)status error:(id *)error;
- (BOOL)synchronizeCircleViews;
- (BOOL)tryRegisteringCredentials;
- (BOOL)viewMemberForAllUserFacingViews:(id *)views;
- (CDPSOSCircleProxyImpl)initWithContext:(id)context;
- (id)generateVerifierWithRecoveryKey:(id)key error:(id *)error;
- (id)peerDeviceNamesByPeerID;
- (id)peerId;
- (id)requestToResetProtectedData:(id *)data;
- (int)_authenticatedCircleStatus:(id *)status;
- (int)_circleStatus:(id *)status;
- (int)cachedSOSCircleStatus:(id *)status;
- (int64_t)cliqueStatus:(id *)status;
- (unint64_t)cachedCliqueStatus:(id *)status;
- (unint64_t)cdpStatusFromSOS:(int)s;
- (unint64_t)combinedCachedCircleStatus:(id *)status;
- (unint64_t)combinedCircleStatus:(id *)status;
- (unint64_t)peerCount;
- (void)hasNonViewAwarePeers;
- (void)peerCount;
- (void)peerDeviceNamesByPeerID;
- (void)peerId;
- (void)recoverOctagonUsingCustodianInfo:(id)info completion:(id)completion;
- (void)reportFailure:(id)failure;
- (void)reportSuccess;
- (void)synchronizeCircleViews;
- (void)waitForUpdate;
@end

@implementation CDPSOSCircleProxyImpl

- (CDPSOSCircleProxyImpl)initWithContext:(id)context
{
  v28 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dsid = [contextCopy dsid];

  if (dsid)
  {
    v17.receiver = self;
    v17.super_class = CDPSOSCircleProxyImpl;
    v8 = [(CDPSOSCircleProxyImpl *)&v17 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_cdpContext, context);
    }

    v10 = _CDPLogSystem(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      appleID = [contextCopy appleID];
      dsid2 = [contextCopy dsid];
      type = [contextCopy type];
      *buf = 141559042;
      v19 = 1752392040;
      v20 = 2112;
      v21 = appleID;
      v22 = 2160;
      v23 = 1752392040;
      v24 = 2112;
      v25 = dsid2;
      v26 = 2048;
      v27 = type;
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "CDPSOSCircleProxyImpl: appleID:%{mask.hash}@, dsid: %{mask.hash}@, type: %ld", buf, 0x34u);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v15 = _CDPLogSystem(v7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [CDPSOSCircleProxyImpl initWithContext:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)cdpStatusFromSOS:(int)s
{
  if ((s + 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1DEDEDF08[s + 1];
  }
}

- (void)waitForUpdate
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (unint64_t)combinedCircleStatus:(id *)status
{
  v4 = [(CDPSOSCircleProxyImpl *)self _authenticatedCircleStatus:status];

  return [(CDPSOSCircleProxyImpl *)self cdpStatusFromSOS:v4];
}

- (int)cachedSOSCircleStatus:(id *)status
{
  v13 = *MEMORY[0x1E69E9840];
  isBeneficiaryAccount = [(CDPContext *)self->_cdpContext isBeneficiaryAccount];
  if (isBeneficiaryAccount)
  {
    v5 = _CDPLogSystem(isBeneficiaryAccount);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Beneficiary account detected. Faking cached SOS circle status.", v10, 2u);
    }

    LODWORD(v6) = 0;
  }

  else
  {
    v10[0] = 0;
    v7 = _CDPLogSystem(isBeneficiaryAccount);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Checking circle status with SOSCCThisDeviceIsInCircle", buf, 2u);
    }

    v6 = SOSCCThisDeviceIsInCircle();
    v8 = _CDPLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v6;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Call to SOSCCThisDeviceIsInCircle returned a status: %d", buf, 8u);
    }

    if (status)
    {
      *status = v10[0];
    }
  }

  return v6;
}

- (unint64_t)combinedCachedCircleStatus:(id *)status
{
  v4 = [(CDPSOSCircleProxyImpl *)self cachedSOSCircleStatus:status];

  return [(CDPSOSCircleProxyImpl *)self cdpStatusFromSOS:v4];
}

- (int)_circleStatus:(id *)status
{
  v31 = *MEMORY[0x1E69E9840];
  isBeneficiaryAccount = [(CDPContext *)self->_cdpContext isBeneficiaryAccount];
  if (isBeneficiaryAccount)
  {
    v5 = _CDPLogSystem(isBeneficiaryAccount);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Beneficiary account detected. Faking non-cached SOS circle status.", buf, 2u);
    }

    LODWORD(v6) = 0;
  }

  else
  {
    v7 = _CDPLogSystem(isBeneficiaryAccount);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Checking circle status with SOSCCThisDeviceIsInCircle", buf, 2u);
    }

    v9 = _CDPSignpostLogSystem(v8);
    v10 = _CDPSignpostCreate(v9);
    v12 = v11;

    v14 = _CDPSignpostLogSystem(v13);
    v15 = v14;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SOSCircleStatus", " enableTelemetry=YES ", buf, 2u);
    }

    v17 = _CDPSignpostLogSystem(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = v10;
      _os_log_impl(&dword_1DED99000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCircleStatus  enableTelemetry=YES ", buf, 0xCu);
    }

    v6 = SOSCCThisDeviceIsInCircleNonCached();
    v18 = _CDPLogSystem(v6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v26) = v6;
      _os_log_impl(&dword_1DED99000, v18, OS_LOG_TYPE_DEFAULT, "Call to SOSCCThisDeviceIsInCircle returned a status: %d", buf, 8u);
    }

    if (status)
    {
      *status = 0;
    }

    Nanoseconds = _CDPSignpostGetNanoseconds(v10, v12);
    v20 = _CDPSignpostLogSystem(Nanoseconds);
    v21 = v20;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 67240192;
      LODWORD(v26) = v6;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v21, OS_SIGNPOST_INTERVAL_END, v10, "SOSCircleStatus", " status=%{public,signpost.telemetry:number1,name=status}d ", buf, 8u);
    }

    v23 = _CDPSignpostLogSystem(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v26 = v10;
      v27 = 2048;
      v28 = Nanoseconds / 1000000000.0;
      v29 = 1026;
      v30 = v6;
      _os_log_impl(&dword_1DED99000, v23, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCircleStatus  status=%{public,signpost.telemetry:number1,name=status}d ", buf, 0x1Cu);
    }
  }

  return v6;
}

- (int)_authenticatedCircleStatus:(id *)status
{
  v12 = 0;
  v5 = [(CDPSOSCircleProxyImpl *)self _circleStatus:&v12];
  v6 = v12;
  if ((v5 + 1) <= 4 && ((1 << (v5 + 1)) & 0x15) != 0)
  {
    if (![(CDPSOSCircleProxyImpl *)self tryRegisteringCredentials])
    {
      [(CDPSOSCircleProxyImpl *)self registerCredentials];
    }

    v11 = v6;
    v5 = [(CDPSOSCircleProxyImpl *)self _circleStatus:&v11];
    v8 = v11;

    v6 = v8;
  }

  if (status)
  {
    v9 = v6;
    *status = v6;
  }

  return v5;
}

- (id)peerId
{
  v2 = SOSCCCopyMyPeerInfo();
  if (v2)
  {
    v3 = v2;
    v4 = [SOSPeerInfoGetPeerID() copy];
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
    v5 = _CDPLogSystem(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CDPSOSCircleProxyImpl peerId];
    }

    CFRelease(0);
  }

  return v4;
}

- (unint64_t)peerCount
{
  v2 = SOSCCCopyPeerPeerInfo();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  CFRelease(v3);
  return Count;
}

- (id)peerDeviceNamesByPeerID
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = SOSCCCopyPeerPeerInfo();
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) >= 1)
    {
      v5 = 0;
      do
      {
        CFArrayGetValueAtIndex(v4, v5);
        v6 = SOSPeerInfoGetPeerName();
        v7 = SOSPeerInfoGetPeerID();
        v8 = [v6 copy];
        [dictionary setObject:v8 forKey:v7];

        ++v5;
      }

      while (v5 < CFArrayGetCount(v4));
    }

    CFRelease(v4);
  }

  return dictionary;
}

- (BOOL)synchronizeCircleViews
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = _CDPSignpostLogSystem(self);
  v4 = _CDPSignpostCreate(v3);
  v6 = v5;

  v8 = _CDPSignpostLogSystem(v7);
  v9 = v8;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v4, "SynchronizeCircleViews", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = _CDPSignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v25 = v4;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SynchronizeCircleViews  enableTelemetry=YES ", buf, 0xCu);
  }

  v12 = [(CDPSOSCircleProxyImpl *)self combinedCircleStatus:0];
  v13 = _CDPLogSystem(v12);
  v14 = v13;
  if (v12 == 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v14, OS_LOG_TYPE_DEFAULT, "Calling SOSCCWaitForInitialSync to wait for views to sync", buf, 2u);
    }

    v23 = 0;
    v15 = [(CDPSOSCircleProxyImpl *)self _performSOSCBlock:&__block_literal_global_13 error:&v23];
    v14 = v23;
    v16 = _CDPLogSystem(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v25 = v15;
      *&v25[4] = 2112;
      *&v25[6] = v14;
      _os_log_impl(&dword_1DED99000, v16, OS_LOG_TYPE_DEFAULT, "Finished calling SOSCCWaitForInitialSync didSync=%i error=%@", buf, 0x12u);
    }

    Nanoseconds = _CDPSignpostGetNanoseconds(v4, v6);
    v18 = _CDPSignpostLogSystem(Nanoseconds);
    v19 = v18;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 67240192;
      *v25 = v15;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v19, OS_SIGNPOST_INTERVAL_END, v4, "SynchronizeCircleViews", " didSync=%{public,signpost.telemetry:number1,name=didSync}d ", buf, 8u);
    }

    v21 = _CDPSignpostLogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v25 = v4;
      *&v25[8] = 2048;
      *&v25[10] = Nanoseconds / 1000000000.0;
      v26 = 1026;
      v27 = v15;
      _os_log_impl(&dword_1DED99000, v21, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SynchronizeCircleViews  didSync=%{public,signpost.telemetry:number1,name=didSync}d ", buf, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [CDPSOSCircleProxyImpl synchronizeCircleViews];
    }

    LOBYTE(v15) = 1;
  }

  return v15;
}

- (BOOL)removeThisDeviceFromCircle:(id *)circle
{
  v5 = _CDPLogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to remove self from circle", buf, 2u);
  }

  v6 = [(CDPSOSCircleProxyImpl *)self _performSOSCBlock:&__block_literal_global_18 error:circle];
  v7 = _CDPLogSystem(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Removed device from circle successfully", v11, 2u);
    }

LABEL_11:

    return v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CDPSOSCircleProxyImpl removeThisDeviceFromCircle:];
  }

  if (circle)
  {
    v8 = _CDPLogSystem(v9);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl removeThisDeviceFromCircle:];
    }

    goto LABEL_11;
  }

  return v6;
}

- (BOOL)resetToOffering:(id *)offering
{
  v5 = _CDPLogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to reset to offering", buf, 2u);
  }

  v6 = [(CDPSOSCircleProxyImpl *)self _performSOSCBlock:&__block_literal_global_20 error:offering];
  v7 = _CDPLogSystem(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Reset to offering succeeded.", v10, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CDPSOSCircleProxyImpl resetToOffering:];
  }

  return v6;
}

- (BOOL)requestToResetCloudKitDataForReason:(id)reason error:(id *)error
{
  reasonCopy = reason;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v23 = 0;
  v6 = [MEMORY[0x1E697AA20] controlObject:&v23];
  v7 = v23;
  v8 = v7;
  if (v6)
  {
    v9 = dispatch_semaphore_create(0);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67__CDPSOSCircleProxyImpl_requestToResetCloudKitDataForReason_error___block_invoke;
    v18[3] = &unk_1E869E390;
    v20 = &v24;
    v21 = &v30;
    v10 = v9;
    v19 = v10;
    [v6 rpcResetCloudKit:0 reason:reasonCopy reply:v18];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v11 = _CDPLogSystem(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "CKKS control unavailable", buf, 2u);
    }

    v12 = v25;
    v13 = v8;
    v10 = v12[5];
    v12[5] = v13;
  }

  if (v25[5])
  {
    v15 = _CDPLogSystem(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CDPSOSCircleProxyImpl requestToResetCloudKitDataForReason:error:];
    }

    if (error)
    {
      *error = v25[5];
    }
  }

  v16 = *(v31 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v16;
}

void __67__CDPSOSCircleProxyImpl_requestToResetCloudKitDataForReason_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v5 = _CDPLogSystem(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Cloud data reset!", v6, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)viewMemberForAllUserFacingViews:(id *)views
{
  if (![(CDPSOSCircleProxyImpl *)self viewMemberForWiFi:?]|| ![(CDPSOSCircleProxyImpl *)self viewMemberForCreditCards:views]|| ![(CDPSOSCircleProxyImpl *)self viewMemberForAutofillPasswords:views])
  {
    return 0;
  }

  return [(CDPSOSCircleProxyImpl *)self viewMemberForOtherSyncable:views];
}

- (BOOL)_viewMemberForView:(__CFString *)view error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = SOSCCView();
  v7 = v6;
  v8 = _CDPLogSystem(v6);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 == 1)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    *v15 = view;
    *&v15[8] = 2112;
    *&v15[10] = 0;
    v10 = "Calling SOSCCView for view %@ reported device is MEMBER - (error: %@)";
    v11 = v8;
    v12 = 22;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    *buf = 67109634;
    *v15 = v7;
    *&v15[4] = 2112;
    *&v15[6] = view;
    *&v15[14] = 2112;
    *&v15[16] = 0;
    v10 = "Calling SOSCCView returned status %i for view %@ - (error: %@)";
    v11 = v8;
    v12 = 28;
  }

  _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  if (error)
  {
    *error = 0;
  }

  return v7 == 1;
}

- (BOOL)anyPeerHasEnabledViewsInSet:(id)set error:(id *)error
{
  setCopy = set;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__CDPSOSCircleProxyImpl_anyPeerHasEnabledViewsInSet_error___block_invoke;
  v9[3] = &unk_1E869D190;
  v10 = setCopy;
  v7 = setCopy;
  LOBYTE(error) = [(CDPSOSCircleProxyImpl *)self _performSOSCBlock:v9 error:error];

  return error;
}

- (BOOL)hasNonViewAwarePeers
{
  v2 = SOSCCCopyViewUnawarePeerInfo();
  if (!v2)
  {
    return 0;
  }

  v3 = CFArrayGetCount(v2) > 0;
  CFRelease(v2);
  return v3;
}

- (BOOL)removeNonViewAwarePeers:(id *)peers
{
  [(CDPSOSCircleProxyImpl *)self registerCredentials];
  v4 = SOSCCCopyViewUnawarePeerInfo();
  if (v4)
  {
    v5 = v4;
    LODWORD(v6) = SOSCCRemovePeersFromCircle();

    v8 = _CDPLogSystem(v7);
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CDPCircleProxyImpl removeNonViewAwarePeers:];
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl removeNonViewAwarePeers:];
    }

    CFRelease(v5);
    if (peers)
    {
LABEL_12:
      v10 = 0;
      *peers = 0;
    }
  }

  else
  {
    v6 = _CDPLogSystem(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CDPCircleProxyImpl removeNonViewAwarePeers:];
    }

    LOBYTE(v6) = 0;
    if (peers)
    {
      goto LABEL_12;
    }
  }

  return v6;
}

- (BOOL)setUserControllableViewsSyncStatus:(BOOL)status error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_1DED99000, "cdp: Updating keychain views", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E697AB68], *MEMORY[0x1E697AB40], *MEMORY[0x1E697AB60], *MEMORY[0x1E697AB50], 0}];
  v8 = v7;
  if (status)
  {
    v9 = v7;
    v10 = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    v9 = [MEMORY[0x1E695DFD8] set];
    v10 = v8;
  }

  v11 = v10;
  v12 = [(CDPSOSCircleProxyImpl *)self setViewsWithEnableSet:v9 disableSet:v10];
  v13 = _CDPLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v17 = v9;
    v18 = 2112;
    v19 = v11;
    v20 = 1024;
    v21 = v12;
    _os_log_debug_impl(&dword_1DED99000, v13, OS_LOG_TYPE_DEBUG, "Calling SOSCCViewSet with enable=%@ disable=%@ returned success=%i", buf, 0x1Cu);
  }

  os_activity_scope_leave(&state);
  return v12;
}

- (BOOL)_performSOSCBlock:(id)block error:(id *)error
{
  blockCopy = block;
  err = 0;
  if (blockCopy[2](blockCopy, &err))
  {
    v7 = 1;
  }

  else if (err && (v8 = *MEMORY[0x1E697AB38], Domain = CFErrorGetDomain(err), CFStringCompare(v8, Domain, 0) == kCFCompareEqualTo) && (CFErrorGetCode(err) == 1 || CFErrorGetCode(err) == 2) && [(CDPSOSCircleProxyImpl *)self registerCredentials])
  {
    CFRelease(err);
    err = 0;
    v7 = blockCopy[2](blockCopy, &err);
  }

  else
  {
    v7 = 0;
  }

  if (error)
  {
    *error = err;
  }

  else if (err)
  {
    CFRelease(err);
  }

  return v7;
}

- (BOOL)_registerCredentialsOnlyIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v52 = *MEMORY[0x1E69E9840];
  v5 = self->_cdpContext;
  v6 = _CDPLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    appleID = [(CDPContext *)v5 appleID];
    dsid = [(CDPContext *)v5 dsid];
    *buf = 141559042;
    v43 = 1752392040;
    v44 = 2112;
    v45 = *&appleID;
    v46 = 2160;
    v47 = 1752392040;
    v48 = 2112;
    v49 = dsid;
    v50 = 2048;
    type = [(CDPContext *)v5 type];
    _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "_registerCredentialsOnlyIfNeeded: appleID:%{mask.hash}@, dsid: %{mask.hash}@, type: %ld", buf, 0x34u);
  }

  appleID2 = [(CDPContext *)v5 appleID];
  if (!appleID2)
  {
    goto LABEL_11;
  }

  v10 = appleID2;
  password = [(CDPContext *)v5 password];
  if (!password)
  {

LABEL_11:
    v14 = _CDPLogSystem(appleID2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CDPCircleProxyImpl _registerCredentialsOnlyIfNeeded:];
    }

    goto LABEL_13;
  }

  v12 = password;
  dsid2 = [(CDPContext *)v5 dsid];

  if (!dsid2)
  {
    goto LABEL_11;
  }

  if (neededCopy)
  {
    appleID2 = [(CDPSOSCircleProxyImpl *)self canAuthenticate];
    if (appleID2)
    {
      v14 = _CDPLogSystem(appleID2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DED99000, v14, OS_LOG_TYPE_DEFAULT, "Security indicated that no credential is needed nor did we force", buf, 2u);
      }

LABEL_13:

      v15 = 0;
      goto LABEL_14;
    }
  }

  v17 = _CDPLogSystem(appleID2);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v17, OS_LOG_TYPE_DEFAULT, "Calling SOSCCSetUserCredentialsAndDSID", buf, 2u);
  }

  password2 = [(CDPContext *)v5 password];
  v19 = [password2 dataUsingEncoding:4];

  v21 = _CDPSignpostLogSystem(v20);
  v22 = _CDPSignpostCreate(v21);
  v24 = v23;

  v26 = _CDPSignpostLogSystem(v25);
  v27 = v26;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v22, "SetUserCredentialsAndDSID", " enableTelemetry=YES ", buf, 2u);
  }

  v29 = _CDPSignpostLogSystem(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v43 = v22;
    _os_log_impl(&dword_1DED99000, v29, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SetUserCredentialsAndDSID  enableTelemetry=YES ", buf, 0xCu);
  }

  appleID3 = [(CDPContext *)v5 appleID];
  dsid3 = [(CDPContext *)v5 dsid];
  [dsid3 stringValue];
  v15 = SOSCCSetUserCredentialsAndDSID();

  if ((v15 & 1) == 0)
  {
    v33 = _CDPLogSystem(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl _registerCredentialsOnlyIfNeeded:];
    }
  }

  v34 = 0;
  Nanoseconds = _CDPSignpostGetNanoseconds(v22, v24);
  v36 = _CDPSignpostLogSystem(Nanoseconds);
  v37 = v36;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    code = [v34 code];
    *buf = 67240192;
    LODWORD(v43) = code;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v37, OS_SIGNPOST_INTERVAL_END, v22, "SetUserCredentialsAndDSID", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
  }

  v40 = _CDPSignpostLogSystem(v39);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    code2 = [v34 code];
    *buf = 134218496;
    v43 = v22;
    v44 = 2048;
    v45 = Nanoseconds / 1000000000.0;
    v46 = 1026;
    LODWORD(v47) = code2;
    _os_log_impl(&dword_1DED99000, v40, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetUserCredentialsAndDSID  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
  }

LABEL_14:
  return v15;
}

- (BOOL)tryRegisteringCredentials
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = self->_cdpContext;
  appleID = [(CDPContext *)v2 appleID];
  if (appleID)
  {
    v4 = appleID;
    dsid = [(CDPContext *)v2 dsid];
    if (dsid)
    {
      v6 = dsid;
      password = [(CDPContext *)v2 password];

      if (password)
      {
        password2 = [(CDPContext *)v2 password];
        v9 = [password2 dataUsingEncoding:4];

        v11 = _CDPSignpostLogSystem(v10);
        v12 = _CDPSignpostCreate(v11);
        v14 = v13;

        v16 = _CDPSignpostLogSystem(v15);
        v17 = v16;
        if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1DED99000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "TryUserCredentialsAndDSID", " enableTelemetry=YES ", buf, 2u);
        }

        v19 = _CDPSignpostLogSystem(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v37 = v12;
          _os_log_impl(&dword_1DED99000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: TryUserCredentialsAndDSID  enableTelemetry=YES ", buf, 0xCu);
        }

        appleID2 = [(CDPContext *)v2 appleID];
        dsid2 = [(CDPContext *)v2 dsid];
        [dsid2 stringValue];
        v22 = SOSCCTryUserCredentialsAndDSID();

        v24 = _CDPLogSystem(v23);
        v25 = v24;
        if (v22)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1DED99000, v25, OS_LOG_TYPE_DEFAULT, "Registered credentials through try attempt", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [CDPCircleProxyImpl tryRegisteringCredentials];
        }

        v27 = 0;
        Nanoseconds = _CDPSignpostGetNanoseconds(v12, v14);
        v29 = _CDPSignpostLogSystem(Nanoseconds);
        v30 = v29;
        if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
        {
          code = [v27 code];
          *buf = 67240192;
          LODWORD(v37) = code;
          _os_signpost_emit_with_name_impl(&dword_1DED99000, v30, OS_SIGNPOST_INTERVAL_END, v12, "TryUserCredentialsAndDSID", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
        }

        v33 = _CDPSignpostLogSystem(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          code2 = [v27 code];
          *buf = 134218496;
          v37 = v12;
          v38 = 2048;
          v39 = Nanoseconds / 1000000000.0;
          v40 = 1026;
          v41 = code2;
          _os_log_impl(&dword_1DED99000, v33, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: TryUserCredentialsAndDSID  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
        }

        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  v26 = _CDPLogSystem(appleID);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [CDPCircleProxyImpl tryRegisteringCredentials];
  }

  v22 = 0;
LABEL_24:

  return v22;
}

- (BOOL)canAuthenticate
{
  v2 = SOSCCCanAuthenticate();
  v3 = v2;
  if ((v2 & 1) == 0)
  {
    v4 = _CDPLogSystem(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl canAuthenticate];
    }
  }

  return v3;
}

- (void)reportSuccess
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _CDPLogSystem(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "[CDPSOSCircleProxyImpl reportSuccess]";
    v5 = 1024;
    v6 = 550;
    _os_log_impl(&dword_1DED99000, v2, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v3, 0x12u);
  }
}

- (void)reportFailure:(id)failure
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _CDPLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[CDPSOSCircleProxyImpl reportFailure:]";
    v6 = 1024;
    v7 = 556;
    _os_log_impl(&dword_1DED99000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v4, 0x12u);
  }
}

+ (unint64_t)syncingStatusForAltDSID:(id)d
{
  dCopy = d;
  v4 = SOSCCFetchCompatibilityMode();
  v5 = [CDPContext contextForAccountWithAltDSID:dCopy];

  if (v4)
  {
    v7 = [[CDPSOSCircleProxyImpl alloc] initWithContext:v5];
    v13 = 0;
    v8 = [(CDPSOSCircleProxyImpl *)v7 combinedCircleStatus:&v13];
    v9 = v13;
    v10 = v9;
    if (v9)
    {
      v11 = _CDPLogSystem(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[CDPSOSCircleProxyImpl syncingStatusForAltDSID:];
      }
    }
  }

  else
  {
    v10 = _CDPLogSystem(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[CDPSOSCircleProxyImpl syncingStatusForAltDSID:];
    }

    v8 = 0;
  }

  return v8;
}

- (int64_t)cliqueStatus:(id *)status
{
  if (status)
  {
    *status = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5004];
  }

  return -1;
}

- (BOOL)fetchUserControllableViewsSyncingEnabled:(id *)enabled
{
  if (enabled)
  {
    *enabled = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5004];
  }

  return 0;
}

- (unint64_t)cachedCliqueStatus:(id *)status
{
  if (status)
  {
    *status = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5004];
  }

  return -1;
}

- (id)generateVerifierWithRecoveryKey:(id)key error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5004];
  }

  return 0;
}

- (void)recoverOctagonUsingCustodianInfo:(id)info completion:(id)completion
{
  if (completion)
  {
    v5 = MEMORY[0x1E696ABC0];
    completionCopy = completion;
    v7 = [v5 cdp_errorWithCode:-5004];
    (*(completion + 2))(completionCopy, v7);
  }
}

- (id)requestToResetProtectedData:(id *)data
{
  if (data)
  {
    *data = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5004];
  }

  return 0;
}

- (void)peerId
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to get peer ID: %@", v2, v3, v4, v5);
}

- (void)peerCount
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to get peer info from circle: %@", v2, v3, v4, v5);
}

- (void)peerDeviceNamesByPeerID
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to get peer info to find device names: %@", v2, v3, v4, v5);
}

- (void)synchronizeCircleViews
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)requestToResetCloudKitDataForReason:error:.cold.1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to reset cloud data with error: %@", v2, v3, v4, v5);
}

- (void)hasNonViewAwarePeers
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to check for non-view-aware peers with error %@", v2, v3, v4, v5);
}

+ (void)syncingStatusForAltDSID:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end