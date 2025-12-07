@interface CDPCircleProxyImpl
+ (unint64_t)syncingStatusForAltDSID:(id)d;
- (BOOL)_registerCredentialsOnlyIfNeeded:(BOOL)needed;
- (BOOL)anyPeerHasEnabledViewsInSet:(id)set error:(id *)error;
- (BOOL)canAuthenticate;
- (BOOL)hasNonViewAwarePeers;
- (BOOL)removeNonViewAwarePeers:(id *)peers;
- (BOOL)removeThisDeviceFromCircle:(id *)circle;
- (BOOL)requestToJoinCircle:(id *)circle;
- (BOOL)requestToJoinCircleAfterRestore:(id *)restore;
- (BOOL)synchronizeCircleViews;
- (BOOL)tryRegisteringCredentials;
- (BOOL)waitForInitialSync:(id *)sync;
- (CDPCircleProxyImpl)initWithContext:(id)context;
- (CDPCircleProxyImpl)initWithContext:(id)context clique:(id)clique;
- (id)_initializeRecoveryKeyWithInfo:(id)info error:(id *)error;
- (id)_pairingChannelContext;
- (id)contextType;
- (id)pairingChannelAcceptor;
- (id)pairingChannelInitiator;
- (id)peerDeviceNamesByPeerID;
- (id)requestToResetProtectedData:(id *)data;
- (int)_sos_authenticatedCircleStatus:(id *)status;
- (int)_sos_circleStatus:(id *)status;
- (int)cachedSOSCircleStatus:(id *)status;
- (int)nonCachedSOSCircleStatus:(id *)status;
- (int64_t)_authenticatedCliqueStatus:(id *)status;
- (int64_t)cliqueStatus:(id *)status;
- (unint64_t)cachedCliqueStatus:(id *)status;
- (unint64_t)cdpStatusFromOT:(int64_t)t;
- (unint64_t)cdpStatusFromSOS:(int)s;
- (unint64_t)combinedCachedCircleStatus:(id *)status;
- (unint64_t)combinedCircleStatus:(id *)status;
- (void)_recoverOctagonUsingRecoveryKey:(id)key completion:(id)completion;
- (void)didJoinCircleAfterRecovery:(id)recovery;
- (void)recoverOctagonUsingCustodianInfo:(id)info completion:(id)completion;
- (void)reportFailure:(id)failure;
- (void)reportSuccess;
- (void)tryRegisteringCredentials;
- (void)waitForUpdate;
@end

@implementation CDPCircleProxyImpl

- (CDPCircleProxyImpl)initWithContext:(id)context
{
  contextCopy = context;
  cliqueConfiguration = [contextCopy cliqueConfiguration];

  if (cliqueConfiguration)
  {
    v7 = objc_alloc(MEMORY[0x1E697AA80]);
    cliqueConfiguration2 = [contextCopy cliqueConfiguration];
    v9 = [v7 initWithContextData:cliqueConfiguration2];
    self = [(CDPCircleProxyImpl *)self initWithContext:contextCopy clique:v9];

    selfCopy = self;
  }

  else
  {
    v11 = _CDPLogSystem(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [CDPCircleProxyImpl initWithContext:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (CDPCircleProxyImpl)initWithContext:(id)context clique:(id)clique
{
  v31 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  cliqueCopy = clique;
  dsid = [contextCopy dsid];

  if (dsid)
  {
    v20.receiver = self;
    v20.super_class = CDPCircleProxyImpl;
    v11 = [(CDPCircleProxyImpl *)&v20 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_cdpContext, context);
      objc_storeStrong(p_isa + 1, clique);
    }

    v13 = _CDPLogSystem(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      appleID = [contextCopy appleID];
      dsid2 = [contextCopy dsid];
      type = [contextCopy type];
      *buf = 141559042;
      v22 = 1752392040;
      v23 = 2112;
      v24 = appleID;
      v25 = 2160;
      v26 = 1752392040;
      v27 = 2112;
      v28 = dsid2;
      v29 = 2048;
      v30 = type;
      _os_log_impl(&dword_1DED99000, v13, OS_LOG_TYPE_DEFAULT, "CDPCircleProxyImpl: appleID:%{mask.hash}@, dsid: %{mask.hash}@, type: %ld", buf, 0x34u);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v18 = _CDPLogSystem(v10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [CDPCircleProxyImpl initWithContext:clique:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)didJoinCircleAfterRecovery:(id)recovery
{
  recoveryCopy = recovery;
  if (recoveryCopy)
  {
    v6 = recoveryCopy;
    objc_storeStrong(&self->_clique, recovery);
    recoveryCopy = v6;
  }
}

- (unint64_t)cachedCliqueStatus:(id *)status
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (self->_clique)
  {
    v5 = objc_alloc_init(MEMORY[0x1E697AA98]);
    [v5 setUseCachedAccountStatus:1];
    clique = self->_clique;
    v16 = 0;
    v7 = [(OTClique *)clique fetchCliqueStatus:v5 error:&v16];
    v8 = v16;
    v9 = _CDPLogSystem(v8);
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CDPCircleProxyImpl cachedCliqueStatus:];
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "Call to cachedCliqueStatus returned a status: %@", buf, 0xCu);
    }

    if (status)
    {
      v14 = v8;
      *status = v8;
    }

    v12 = [(CDPCircleProxyImpl *)self cdpStatusFromOT:v7];
  }

  else
  {
    v19 = *MEMORY[0x1E696A578];
    v20[0] = @"CDPContext was missing DSID when CircleProxyImpl was initialized. Its OTClique was not created.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    if (!status)
    {
      v12 = -1;
      goto LABEL_15;
    }

    v11 = _CDPStateError(-5003, v8);
    *status = v11;
    v5 = _CDPLogSystem(v11);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl cachedCliqueStatus:];
    }

    v12 = -1;
  }

LABEL_15:
  return v12;
}

- (unint64_t)combinedCachedCircleStatus:(id *)status
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = _CDPSignpostLogSystem(self);
  v6 = _CDPSignpostCreate(v5);
  v8 = v7;

  v10 = _CDPSignpostLogSystem(v9);
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CachedCircleStatus", " enableTelemetry=YES ", &v21, 2u);
  }

  v13 = _CDPSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134217984;
    v22 = v6;
    _os_log_impl(&dword_1DED99000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CachedCircleStatus  enableTelemetry=YES ", &v21, 0xCu);
  }

  v14 = [(CDPCircleProxyImpl *)self cachedCliqueStatus:status];
  if (!+[CDPUtilities deferSOSFromSignIn]&& v14 == 1)
  {
    if ([(CDPCircleProxyImpl *)self platformSupportsSOS])
    {
      v14 = [(CDPCircleProxyImpl *)self cdpStatusFromSOS:[(CDPCircleProxyImpl *)self cachedSOSCircleStatus:status]];
    }

    else
    {
      v14 = 1;
    }
  }

  Nanoseconds = _CDPSignpostGetNanoseconds(v6, v8);
  v16 = _CDPSignpostLogSystem(Nanoseconds);
  v17 = v16;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v21 = 67240192;
    LODWORD(v22) = v14;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v17, OS_SIGNPOST_INTERVAL_END, v6, "CachedCircleStatus", " status=%{public,signpost.telemetry:number1,name=status}d ", &v21, 8u);
  }

  v19 = _CDPSignpostLogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134218496;
    v22 = v6;
    v23 = 2048;
    v24 = Nanoseconds / 1000000000.0;
    v25 = 1026;
    v26 = v14;
    _os_log_impl(&dword_1DED99000, v19, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CachedCircleStatus  status=%{public,signpost.telemetry:number1,name=status}d ", &v21, 0x1Cu);
  }

  return v14;
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

- (unint64_t)combinedCircleStatus:(id *)status
{
  v5 = _CDPLogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Checking combined circle status", buf, 2u);
  }

  v6 = [(CDPCircleProxyImpl *)self _authenticatedCliqueStatus:status];
  if (+[CDPUtilities deferSOSFromSignIn])
  {
    return [(CDPCircleProxyImpl *)self cdpStatusFromOT:v6];
  }

  if (v6)
  {
    return [(CDPCircleProxyImpl *)self cdpStatusFromOT:v6];
  }

  platformSupportsSOS = [(CDPCircleProxyImpl *)self platformSupportsSOS];
  if (!platformSupportsSOS)
  {
    return [(CDPCircleProxyImpl *)self cdpStatusFromOT:v6];
  }

  v8 = _CDPLogSystem(platformSupportsSOS);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Checking SOS status.", v10, 2u);
  }

  return [(CDPCircleProxyImpl *)self cdpStatusFromSOS:[(CDPCircleProxyImpl *)self _sos_circleStatus:status]];
}

- (void)waitForUpdate
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = _CDPLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v14 = "[CDPCircleProxyImpl waitForUpdate]";
    *&v14[8] = 1024;
    *&v14[10] = 147;
    _os_log_impl(&dword_1DED99000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) called", buf, 0x12u);
  }

  isiCDPEligible = [(CDPContext *)self->_cdpContext isiCDPEligible];
  if (isiCDPEligible)
  {
    clique = self->_clique;
    v12 = 0;
    v6 = [(OTClique *)clique waitForOctagonUpgrade:&v12];
    v7 = v12;
    altDSID = _CDPLogSystem(v7);
    if (!os_log_type_enabled(altDSID, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      goto LABEL_10;
    }

    *buf = 67109378;
    *v14 = v6;
    *&v14[4] = 2114;
    *&v14[6] = v7;
    v9 = "Clique waitForOctagonUpgrade %{BOOL}d with error %{public}@";
    v10 = altDSID;
    v11 = 18;
LABEL_8:
    _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    goto LABEL_9;
  }

  v7 = _CDPLogSystem(isiCDPEligible);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [(CDPContext *)self->_cdpContext altDSID];
    *buf = 141558274;
    *v14 = 1752392040;
    *&v14[8] = 2112;
    *&v14[10] = altDSID;
    v9 = "Account for %{mask.hash}@ is not eligible for iCDP, not calling waitForOctagonUpgrade";
    v10 = v7;
    v11 = 22;
    goto LABEL_8;
  }

LABEL_10:
}

- (void)reportSuccess
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _CDPLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    clique = self->_clique;
    v7 = 138412290;
    v8 = clique;
    _os_log_impl(&dword_1DED99000, v3, OS_LOG_TYPE_DEFAULT, "Reporting success for %@", &v7, 0xCu);
  }

  v5 = self->_clique;
  contextType = [(CDPCircleProxyImpl *)self contextType];
  [(OTClique *)v5 performedSuccessfulCDPStateMachineRun:contextType reply:&__block_literal_global];
}

- (void)reportFailure:(id)failure
{
  v11 = *MEMORY[0x1E69E9840];
  failureCopy = failure;
  v5 = _CDPLogSystem(failureCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clique = self->_clique;
    v9 = 138412290;
    v10 = clique;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Reporting failure for %@", &v9, 0xCu);
  }

  v7 = self->_clique;
  contextType = [(CDPCircleProxyImpl *)self contextType];
  [(OTClique *)v7 performedFailureCDPStateMachineRun:contextType error:failureCopy reply:&__block_literal_global_25];
}

- (id)contextType
{
  type = [(CDPContext *)self->_cdpContext type];
  if ((type - 1) > 6)
  {
    v3 = MEMORY[0x1E697AAC8];
  }

  else
  {
    v3 = qword_1E869D460[type - 1];
  }

  v4 = *v3;

  return v4;
}

- (unint64_t)cdpStatusFromSOS:(int)s
{
  if ((s + 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1DEDEDE68[s + 1];
  }
}

- (unint64_t)cdpStatusFromOT:(int64_t)t
{
  if ((t + 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1DEDEDE90[t + 1];
  }
}

- (int64_t)cliqueStatus:(id *)status
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = _CDPSignpostLogSystem(self);
  v6 = _CDPSignpostCreate(v5);
  v8 = v7;

  v10 = _CDPSignpostLogSystem(v9);
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CircleStatus", " enableTelemetry=YES ", buf, 2u);
  }

  v13 = _CDPSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v32 = v6;
    _os_log_impl(&dword_1DED99000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CircleStatus  enableTelemetry=YES ", buf, 0xCu);
  }

  clique = self->_clique;
  if (clique)
  {
    v15 = clique;
    v16 = _CDPLogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v15;
      _os_log_impl(&dword_1DED99000, v16, OS_LOG_TYPE_DEFAULT, "Checking clique status with fetchCliqueStatus from %@", buf, 0xCu);
    }

    v30 = 0;
    v17 = [v15 fetchCliqueStatus:&v30];
    v18 = v30;
    v19 = _CDPLogSystem(v18);
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CDPCircleProxyImpl cliqueStatus:];
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
      *buf = 138412290;
      v32 = v22;
      _os_log_impl(&dword_1DED99000, v20, OS_LOG_TYPE_DEFAULT, "Call to fetchCliqueStatus returned a status: %@", buf, 0xCu);
    }

    if (status)
    {
      v23 = v18;
      *status = v18;
    }

    Nanoseconds = _CDPSignpostGetNanoseconds(v6, v8);
    v25 = _CDPSignpostLogSystem(Nanoseconds);
    v26 = v25;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 67240192;
      LODWORD(v32) = v17;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v26, OS_SIGNPOST_INTERVAL_END, v6, "CircleStatus", " status=%{public,signpost.telemetry:number1,name=status}d ", buf, 8u);
    }

    v28 = _CDPSignpostLogSystem(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v32 = v6;
      v33 = 2048;
      v34 = Nanoseconds / 1000000000.0;
      v35 = 1026;
      v36 = v17;
      _os_log_impl(&dword_1DED99000, v28, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CircleStatus  status=%{public,signpost.telemetry:number1,name=status}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v37 = *MEMORY[0x1E696A578];
    v38[0] = @"CDPContext was missing DSID when CircleProxyImpl was initialized. Its OTClique was not created.";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    if (!status)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v21 = _CDPStateError(-5003, v18);
    *status = v21;
    v15 = _CDPLogSystem(v21);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl cachedCliqueStatus:];
    }

    v17 = -1;
  }

LABEL_27:
  return v17;
}

- (int64_t)_authenticatedCliqueStatus:(id *)status
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = [(CDPCircleProxyImpl *)self cliqueStatus:&v9];
  v5 = v9;
  v6 = v5;
  if (status)
  {
    v5 = v5;
    *status = v6;
  }

  v7 = _CDPLogSystem(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Got authenticated clique status %lu with error: %@", buf, 0x16u);
  }

  return v4;
}

- (int)_sos_authenticatedCircleStatus:(id *)status
{
  v12 = 0;
  v5 = [(CDPCircleProxyImpl *)self _sos_circleStatus:&v12];
  v6 = v12;
  if ((v5 + 1) <= 4 && ((1 << (v5 + 1)) & 0x15) != 0)
  {
    if (![(CDPCircleProxyImpl *)self tryRegisteringCredentials])
    {
      [(CDPCircleProxyImpl *)self registerCredentials];
    }

    v11 = v6;
    v5 = [(CDPCircleProxyImpl *)self _sos_circleStatus:&v11];
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

- (int)_sos_circleStatus:(id *)status
{
  v28 = *MEMORY[0x1E69E9840];
  isBeneficiaryAccount = [(CDPContext *)self->_cdpContext isBeneficiaryAccount];
  if (isBeneficiaryAccount)
  {
    v6 = _CDPLogSystem(isBeneficiaryAccount);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "Beneficiary account detected. Faking non-cached SOS circle status.", &v22, 2u);
    }

    v7 = 0;
  }

  else
  {
    v8 = _CDPSignpostLogSystem(isBeneficiaryAccount);
    v9 = _CDPSignpostCreate(v8);
    v11 = v10;

    v13 = _CDPSignpostLogSystem(v12);
    v14 = v13;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v22) = 0;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SOSCircleStatus", " enableTelemetry=YES ", &v22, 2u);
    }

    v16 = _CDPSignpostLogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134217984;
      v23 = v9;
      _os_log_impl(&dword_1DED99000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCircleStatus  enableTelemetry=YES ", &v22, 0xCu);
    }

    v7 = [(CDPCircleProxyImpl *)self nonCachedSOSCircleStatus:status];
    Nanoseconds = _CDPSignpostGetNanoseconds(v9, v11);
    v18 = _CDPSignpostLogSystem(Nanoseconds);
    v19 = v18;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      v22 = 67240192;
      LODWORD(v23) = v7;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v19, OS_SIGNPOST_INTERVAL_END, v9, "SOSCircleStatus", " status=%{public,signpost.telemetry:number1,name=status}d ", &v22, 8u);
    }

    v6 = _CDPSignpostLogSystem(v20);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v23 = v9;
      v24 = 2048;
      v25 = Nanoseconds / 1000000000.0;
      v26 = 1026;
      v27 = v7;
      _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCircleStatus  status=%{public,signpost.telemetry:number1,name=status}d ", &v22, 0x1Cu);
    }
  }

  return v7;
}

- (int)nonCachedSOSCircleStatus:(id *)status
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _CDPLogSystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "Checking circle status with SOSCCThisDeviceIsInCircle", buf, 2u);
  }

  v5 = SOSCCThisDeviceIsInCircleNonCached();
  v6 = _CDPLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = v5;
    _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "Call to SOSCCThisDeviceIsInCircle returned a status: %d", buf, 8u);
  }

  if (status)
  {
    *status = 0;
  }

  return v5;
}

- (id)peerDeviceNamesByPeerID
{
  clique = self->_clique;
  v5 = 0;
  v3 = [(OTClique *)clique peerDeviceNamesByPeerID:&v5];

  return v3;
}

- (BOOL)waitForInitialSync:(id *)sync
{
  v5 = _CDPLogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Calling waitForPriorityViewKeychainDataRecovery", v13, 2u);
  }

  v6 = MEMORY[0x1E6985DB0];
  cdpContext = [(CDPCircleProxyImpl *)self cdpContext];
  v8 = [v6 analyticsEventWithContext:cdpContext eventName:@"com.apple.corecdp.waitForPriorityViewKeychainDataRecovery" category:0x1F5A168E0];

  v9 = [(OTClique *)self->_clique waitForPriorityViewKeychainDataRecovery:sync];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6985E40]];

  if (sync)
  {
    [v8 populateUnderlyingErrorsStartingWithRootError:*sync];
  }

  v11 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
  [v11 sendEvent:v8];

  return v9;
}

- (BOOL)synchronizeCircleViews
{
  v27 = *MEMORY[0x1E69E9840];
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
    *v24 = v4;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SynchronizeCircleViews  enableTelemetry=YES ", buf, 0xCu);
  }

  v12 = [(CDPCircleProxyImpl *)self combinedCircleStatus:0];
  if (v12 == 1)
  {
    v22 = 0;
    v13 = [(CDPCircleProxyImpl *)self waitForInitialSync:&v22];
    v14 = v22;
    v15 = _CDPLogSystem(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v24 = v13;
      *&v24[4] = 2112;
      *&v24[6] = v14;
      _os_log_impl(&dword_1DED99000, v15, OS_LOG_TYPE_DEFAULT, "Finished calling waitForPriorityViewKeychainDataRecovery didSync=%i error=%@", buf, 0x12u);
    }
  }

  else
  {
    v14 = _CDPLogSystem(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v14, OS_LOG_TYPE_DEFAULT, "Skipping initial sync because we are not in a circle", buf, 2u);
    }

    v13 = 1;
  }

  Nanoseconds = _CDPSignpostGetNanoseconds(v4, v6);
  v17 = _CDPSignpostLogSystem(Nanoseconds);
  v18 = v17;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 67240192;
    *v24 = v13;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v18, OS_SIGNPOST_INTERVAL_END, v4, "SynchronizeCircleViews", " didSync=%{public,signpost.telemetry:number1,name=didSync}d ", buf, 8u);
  }

  v20 = _CDPSignpostLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *v24 = v4;
    *&v24[8] = 2048;
    *&v24[10] = Nanoseconds / 1000000000.0;
    v25 = 1026;
    v26 = v13;
    _os_log_impl(&dword_1DED99000, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SynchronizeCircleViews  didSync=%{public,signpost.telemetry:number1,name=didSync}d ", buf, 0x1Cu);
  }

  return v13;
}

- (BOOL)removeThisDeviceFromCircle:(id *)circle
{
  v5 = _CDPLogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to remove self from circle", buf, 2u);
  }

  clique = self->_clique;
  v14 = 0;
  v7 = [(OTClique *)clique leaveClique:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = _CDPLogSystem(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "Removed device from circle successfully", v13, 2u);
    }
  }

  else
  {
    v11 = v8;
    *circle = v9;
    v10 = _CDPLogSystem(v11);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl removeThisDeviceFromCircle:];
    }
  }

  return v7;
}

- (BOOL)requestToJoinCircle:(id *)circle
{
  v50 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v5 = [(CDPCircleProxyImpl *)self cliqueStatus:&v43];
  v6 = v43;
  v7 = v6;
  if (v6)
  {
    v8 = _CDPLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl requestToJoinCircle:];
    }

    if (circle)
    {
      v9 = v7;
      v10 = 0;
      *circle = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v5 == 3)
  {
    v11 = _CDPSignpostLogSystem(0);
    v12 = _CDPSignpostCreate(v11);
    v14 = v13;

    v16 = _CDPSignpostLogSystem(v15);
    v17 = v16;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CliqueEstablish", " enableTelemetry=YES ", buf, 2u);
    }

    v19 = _CDPSignpostLogSystem(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v45 = v12;
      _os_log_impl(&dword_1DED99000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CliqueEstablish  enableTelemetry=YES ", buf, 0xCu);
    }

    v21 = _CDPLogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [CDPCircleProxyImpl requestToJoinCircle:];
    }

    v22 = objc_alloc_init(MEMORY[0x1E697AA88]);
    altDSID = [(CDPContext *)self->_cdpContext altDSID];
    [v22 setAltDSID:altDSID];

    telemetryFlowID = [(CDPContext *)self->_cdpContext telemetryFlowID];
    [v22 setFlowID:telemetryFlowID];

    telemetryDeviceSessionID = [(CDPContext *)self->_cdpContext telemetryDeviceSessionID];
    [v22 setDeviceSessionID:telemetryDeviceSessionID];

    clique = self->_clique;
    v42 = 0;
    [(OTClique *)clique establish:v22 error:&v42];
    v27 = v42;
    v28 = _CDPLogSystem(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [CDPCircleProxyImpl requestToJoinCircle:];
    }

    Nanoseconds = _CDPSignpostGetNanoseconds(v12, v14);
    v30 = _CDPSignpostLogSystem(Nanoseconds);
    v31 = v30;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      code = [v27 code];
      *buf = 67240192;
      LODWORD(v45) = code;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v31, OS_SIGNPOST_INTERVAL_END, v12, "CliqueEstablish", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
    }

    v34 = _CDPSignpostLogSystem(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      code2 = [v27 code];
      *buf = 134218496;
      v45 = v12;
      v46 = 2048;
      v47 = Nanoseconds / 1000000000.0;
      v48 = 1026;
      v49 = code2;
      _os_log_impl(&dword_1DED99000, v34, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CliqueEstablish  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
    }

    v10 = v27 == 0;
    v37 = _CDPLogSystem(v36);
    v38 = v37;
    if (v27)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [CDPCircleProxyImpl requestToJoinCircle:];
      }

      if (circle)
      {
        v39 = v27;
        *circle = v27;
      }
    }

    else
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        [CDPCircleProxyImpl requestToJoinCircle:];
      }
    }
  }

  else
  {
    v40 = _CDPLogSystem(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [CDPCircleProxyImpl requestToJoinCircle:v5];
    }

    v10 = 1;
  }

  return v10;
}

- (BOOL)requestToJoinCircleAfterRestore:(id *)restore
{
  v5 = _CDPLogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPCircleProxyImpl requestToJoinCircleAfterRestore:];
  }

  return [(OTClique *)self->_clique joinAfterRestore:restore];
}

- (id)requestToResetProtectedData:(id *)data
{
  cliqueConfiguration = [(CDPContext *)self->_cdpContext cliqueConfiguration];
  passwordEquivToken = [(CDPContext *)self->_cdpContext passwordEquivToken];
  [cliqueConfiguration setPasswordEquivalentToken:passwordEquivToken];

  appleID = [(CDPContext *)self->_cdpContext appleID];
  [cliqueConfiguration setAuthenticationAppleID:appleID];

  v14 = 0;
  v8 = [MEMORY[0x1E697AA80] resetProtectedData:cliqueConfiguration error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = 0;
    if (data && v9)
    {
      v12 = v9;
      v11 = 0;
      *data = v10;
    }
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (BOOL)anyPeerHasEnabledViewsInSet:(id)set error:(id *)error
{
  setCopy = set;
  if (MEMORY[0x1E12C9950]())
  {
    clique = self->_clique;
    allObjects = [setCopy allObjects];
    v9 = [(OTClique *)clique peersHaveViewsEnabled:allObjects error:error];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)hasNonViewAwarePeers
{
  clique = self->_clique;
  v9 = 0;
  v3 = [(OTClique *)clique copyViewUnawarePeerInfo:&v9];
  v4 = v9;
  v5 = v4;
  if (v4)
  {
    v6 = _CDPLogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl hasNonViewAwarePeers];
    }
  }

  v7 = [v3 count] != 0;

  return v7;
}

- (BOOL)removeNonViewAwarePeers:(id *)peers
{
  [(CDPCircleProxyImpl *)self registerCredentials];
  clique = self->_clique;
  v17 = 0;
  v6 = [(OTClique *)clique copyViewUnawarePeerInfo:&v17];
  v7 = v17;
  v8 = v7;
  if (peers)
  {
    v7 = v7;
    *peers = v8;
  }

  if (v6)
  {
    v9 = self->_clique;
    v16 = 0;
    v10 = [(OTClique *)v9 removeFriendsInClique:v6 error:&v16];
    v11 = v16;
    v12 = _CDPLogSystem(v11);
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [CDPCircleProxyImpl removeNonViewAwarePeers:];
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl removeNonViewAwarePeers:];
    }

    if (peers)
    {
      v14 = v11;
      *peers = v11;
    }
  }

  else
  {
    v11 = _CDPLogSystem(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CDPCircleProxyImpl removeNonViewAwarePeers:];
    }

    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)_registerCredentialsOnlyIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v60 = *MEMORY[0x1E69E9840];
  v5 = self->_cdpContext;
  v6 = _CDPLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    appleID = [(CDPContext *)v5 appleID];
    dsid = [(CDPContext *)v5 dsid];
    *buf = 141559042;
    *&buf[4] = 1752392040;
    v52 = 2112;
    v53 = *&appleID;
    v54 = 2160;
    v55 = 1752392040;
    v56 = 2112;
    v57 = dsid;
    v58 = 2048;
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
    appleID2 = [(CDPCircleProxyImpl *)self canAuthenticate];
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
    _os_log_impl(&dword_1DED99000, v17, OS_LOG_TYPE_DEFAULT, "Calling Clique setUserCredentialsAndDSID", buf, 2u);
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
    *&buf[4] = v22;
    _os_log_impl(&dword_1DED99000, v29, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SetUserCredentialsAndDSID  enableTelemetry=YES ", buf, 0xCu);
  }

  v50[1] = 0;
  if (+[CDPUtilities deferSOSFromSignIn]&& (v30 = SOSCCFetchCompatibilityMode(), v30))
  {
    v31 = _CDPLogSystem(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v31, OS_LOG_TYPE_DEFAULT, "Calling SOSCCSetUserCredentialsAndDSID", buf, 2u);
    }

    *buf = 0;
    appleID3 = [(CDPContext *)v5 appleID];
    dsid3 = [(CDPContext *)v5 dsid];
    [dsid3 stringValue];
    v15 = SOSCCSetUserCredentialsAndDSID();

    if ((v15 & 1) == 0)
    {
      v35 = _CDPLogSystem(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [CDPCircleProxyImpl _registerCredentialsOnlyIfNeeded:];
      }
    }

    v14 = 0;
  }

  else
  {
    clique = self->_clique;
    dsid4 = [(CDPContext *)v5 dsid];
    stringValue = [dsid4 stringValue];
    v50[0] = 0;
    v39 = [(OTClique *)clique setUserCredentialsAndDSID:stringValue password:v19 error:v50];
    v14 = v50[0];

    v41 = _CDPLogSystem(v40);
    v42 = v41;
    if (v39)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DED99000, v42, OS_LOG_TYPE_DEFAULT, "Credentials set through Clique setUserCredentialsAndDSID", buf, 2u);
      }

      v15 = 1;
    }

    else
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [CDPCircleProxyImpl _registerCredentialsOnlyIfNeeded:];
      }

      v15 = 0;
    }
  }

  Nanoseconds = _CDPSignpostGetNanoseconds(v22, v24);
  v44 = _CDPSignpostLogSystem(Nanoseconds);
  v45 = v44;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    code = [v14 code];
    *buf = 67240192;
    *&buf[4] = code;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v45, OS_SIGNPOST_INTERVAL_END, v22, "SetUserCredentialsAndDSID", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
  }

  v48 = _CDPSignpostLogSystem(v47);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    code2 = [v14 code];
    *buf = 134218496;
    *&buf[4] = v22;
    v52 = 2048;
    v53 = Nanoseconds / 1000000000.0;
    v54 = 1026;
    LODWORD(v55) = code2;
    _os_log_impl(&dword_1DED99000, v48, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetUserCredentialsAndDSID  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
  }

LABEL_14:
  return v15;
}

- (BOOL)tryRegisteringCredentials
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = self->_cdpContext;
  appleID = [(CDPContext *)v3 appleID];
  if (appleID)
  {
    v5 = appleID;
    dsid = [(CDPContext *)v3 dsid];
    if (dsid)
    {
      v7 = dsid;
      password = [(CDPContext *)v3 password];

      if (password)
      {
        password2 = [(CDPContext *)v3 password];
        v10 = [password2 dataUsingEncoding:4];

        dsid2 = [(CDPContext *)v3 dsid];
        stringValue = [dsid2 stringValue];

        v14 = _CDPSignpostLogSystem(v13);
        v15 = _CDPSignpostCreate(v14);
        v17 = v16;

        v19 = _CDPSignpostLogSystem(v18);
        v20 = v19;
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1DED99000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v15, "TryUserCredentialsAndDSID", " enableTelemetry=YES ", buf, 2u);
        }

        v22 = _CDPSignpostLogSystem(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v15;
          _os_log_impl(&dword_1DED99000, v22, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: TryUserCredentialsAndDSID  enableTelemetry=YES ", buf, 0xCu);
        }

        v44 = 0;
        if (+[CDPUtilities deferSOSFromSignIn]&& SOSCCFetchCompatibilityMode())
        {
          *buf = 0;
          appleID2 = [(CDPContext *)v3 appleID];
          dsid3 = [(CDPContext *)v3 dsid];
          [dsid3 stringValue];
          v25 = SOSCCTryUserCredentialsAndDSID();

          v27 = _CDPLogSystem(v26);
          v28 = v27;
          if (v25)
          {
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *v43 = 0;
              _os_log_impl(&dword_1DED99000, v28, OS_LOG_TYPE_DEFAULT, "Registered credentials through try attempt", v43, 2u);
            }
          }

          else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [CDPCircleProxyImpl tryRegisteringCredentials];
          }

          v29 = 0;
        }

        else
        {
          clique = self->_clique;
          v42 = 0;
          v31 = [(OTClique *)clique tryUserCredentialsAndDSID:stringValue password:v10 error:&v42];
          v29 = v42;
          v32 = _CDPLogSystem(v29);
          v33 = v32;
          if (v31)
          {
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1DED99000, v33, OS_LOG_TYPE_DEFAULT, "Registered credentials through OT tryUserCredentialsAndDSID", buf, 2u);
            }

            v25 = 1;
          }

          else
          {
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              [CDPCircleProxyImpl tryRegisteringCredentials];
            }

            v25 = 0;
          }
        }

        Nanoseconds = _CDPSignpostGetNanoseconds(v15, v17);
        v35 = _CDPSignpostLogSystem(Nanoseconds);
        v36 = v35;
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
        {
          code = [v29 code];
          *buf = 67240192;
          *&buf[4] = code;
          _os_signpost_emit_with_name_impl(&dword_1DED99000, v36, OS_SIGNPOST_INTERVAL_END, v15, "TryUserCredentialsAndDSID", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
        }

        v39 = _CDPSignpostLogSystem(v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          code2 = [v29 code];
          *buf = 134218496;
          *&buf[4] = v15;
          v46 = 2048;
          v47 = Nanoseconds / 1000000000.0;
          v48 = 1026;
          v49 = code2;
          _os_log_impl(&dword_1DED99000, v39, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: TryUserCredentialsAndDSID  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
        }

        goto LABEL_34;
      }
    }

    else
    {
    }
  }

  v29 = _CDPLogSystem(appleID);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    [CDPCircleProxyImpl tryRegisteringCredentials];
  }

  v25 = 0;
LABEL_34:

  return v25;
}

- (BOOL)canAuthenticate
{
  accountUserKeyAvailable = [(OTClique *)self->_clique accountUserKeyAvailable];
  v3 = accountUserKeyAvailable;
  if ((accountUserKeyAvailable & 1) == 0)
  {
    v4 = _CDPLogSystem(accountUserKeyAvailable);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl canAuthenticate];
    }
  }

  return v3;
}

- (id)pairingChannelInitiator
{
  clique = self->_clique;
  _pairingChannelContext = [(CDPCircleProxyImpl *)self _pairingChannelContext];
  v4 = [(OTClique *)clique setupPairingChannelAsInitiator:_pairingChannelContext];

  return v4;
}

- (id)pairingChannelAcceptor
{
  clique = self->_clique;
  _pairingChannelContext = [(CDPCircleProxyImpl *)self _pairingChannelContext];
  v4 = [(OTClique *)clique setupPairingChannelAsAcceptor:_pairingChannelContext];

  return v4;
}

- (id)_pairingChannelContext
{
  v3 = objc_alloc_init(MEMORY[0x1E69ABBE8]);
  v4 = +[CDPLocalDevice sharedInstance];
  hardwareModel = [v4 hardwareModel];
  [v3 setModel:hardwareModel];

  v6 = +[CDPLocalDevice sharedInstance];
  modelVersion = [v6 modelVersion];
  [v3 setModelVersion:modelVersion];

  v8 = +[CDPLocalDevice sharedInstance];
  deviceClass = [v8 deviceClass];
  [v3 setModelClass:deviceClass];

  v10 = +[CDPLocalDevice sharedInstance];
  osVersion = [v10 osVersion];
  [v3 setOsVersion:osVersion];

  telemetryFlowID = [(CDPContext *)self->_cdpContext telemetryFlowID];
  [v3 setFlowID:telemetryFlowID];

  telemetryDeviceSessionID = [(CDPContext *)self->_cdpContext telemetryDeviceSessionID];
  [v3 setDeviceSessionID:telemetryDeviceSessionID];

  return v3;
}

- (void)recoverOctagonUsingCustodianInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = MEMORY[0x1E6985DB0];
  cdpContext = [(CDPCircleProxyImpl *)self cdpContext];
  v10 = [v8 analyticsEventWithContext:cdpContext eventName:@"com.apple.corecdp.custodianRecovery" category:0x1F5A168E0];

  if (objc_opt_respondsToSelector())
  {
    recordBuildVersion = [infoCopy recordBuildVersion];
    [v10 setObject:recordBuildVersion forKeyedSubscript:@"recordBuildVersion"];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66__CDPCircleProxyImpl_recoverOctagonUsingCustodianInfo_completion___block_invoke;
  v21[3] = &unk_1E869D440;
  v12 = v10;
  v22 = v12;
  v13 = completionCopy;
  v23 = v13;
  v14 = MEMORY[0x1E12CA380](v21);
  v20 = 0;
  v15 = [(CDPCircleProxyImpl *)self _initializeRecoveryKeyWithInfo:infoCopy error:&v20];
  v16 = v20;
  v17 = _CDPLogSystem(v16);
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl recoverOctagonUsingCustodianInfo:completion:];
    }

    (v14)[2](v14, v16);
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1DED99000, v18, OS_LOG_TYPE_DEFAULT, "Attempting to recover octagon usign custodian recovery key", v19, 2u);
    }

    [(CDPCircleProxyImpl *)self _recoverOctagonUsingRecoveryKey:v15 completion:v14];
  }
}

void __66__CDPCircleProxyImpl_recoverOctagonUsingCustodianInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v3)
  {
    [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"didSucceed"];
    [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v6];
  }

  else
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"didSucceed"];
  }

  v5 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
  [v5 sendEvent:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

- (void)_recoverOctagonUsingRecoveryKey:(id)key completion:(id)completion
{
  v5 = MEMORY[0x1E697AA80];
  cdpContext = self->_cdpContext;
  completionCopy = completion;
  keyCopy = key;
  cliqueConfiguration = [(CDPContext *)cdpContext cliqueConfiguration];
  [v5 recoverOctagonUsingCustodianRecoveryKey:cliqueConfiguration custodianRecoveryKey:keyCopy reply:completionCopy];
}

- (id)_initializeRecoveryKeyWithInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v6 = _CDPLogSystem(infoCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CDPCircleProxyImpl _initializeRecoveryKeyWithInfo:infoCopy error:?];
  }

  v7 = objc_alloc(MEMORY[0x1E69B7CD0]);
  wrappedRKC = [infoCopy wrappedRKC];
  wrappingKey = [infoCopy wrappingKey];
  custodianUUID = [infoCopy custodianUUID];
  v11 = [v7 initWithWrappedKey:wrappedRKC wrappingKey:wrappingKey uuid:custodianUUID error:error];

  return v11;
}

+ (unint64_t)syncingStatusForAltDSID:(id)d
{
  dCopy = d;
  v4 = _CDPLogSystem(dCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CDPCircleProxyImpl *)dCopy syncingStatusForAltDSID:v4];
  }

  v5 = [CDPContext contextForAccountWithAltDSID:dCopy];
  v6 = [[CDPCircleProxyImpl alloc] initWithContext:v5];
  v12 = 0;
  v7 = [(CDPCircleProxyImpl *)v6 combinedCircleStatus:&v12];
  v8 = v12;
  v9 = v8;
  if (v8)
  {
    v10 = _CDPLogSystem(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CDPCircleProxyImpl syncingStatusForAltDSID:];
    }
  }

  return v7;
}

- (void)cachedCliqueStatus:.cold.2()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Circle status check failed with error: %@", v2, v3, v4, v5);
}

- (void)cachedSOSCircleStatus:.cold.1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to check circle status: %@", v2, v3, v4, v5);
}

- (void)removeThisDeviceFromCircle:.cold.1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to remove self from circle - %@", v2, v3, v4, v5);
}

- (void)requestToJoinCircle:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_1DED99000, v2, v3, "CDPCircleProxyImpl requestToJoinCircle cliqueStatus is %@. No need to establish a new clique.", v4, v5, v6, v7);
}

- (void)requestToJoinCircle:.cold.3()
{
  v0 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_1DED99000, v1, v2, "cliqueStatus is %@, Requesting to join circle with OT establish", v3, v4, v5, v6);
}

- (void)requestToJoinCircle:.cold.4()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1DED99000, v1, OS_LOG_TYPE_DEBUG, "CDPCircleProxyImpl requestToJoinCircle establish finished with success=%@, error=%@", v2, 0x16u);
}

- (void)requestToJoinCircle:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)requestToJoinCircleAfterRestore:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeNonViewAwarePeers:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1DED99000, v1, OS_LOG_TYPE_ERROR, "Failed to remove old peers from circle with error %@ (peers: %@)", v2, 0x16u);
}

- (void)removeNonViewAwarePeers:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)removeNonViewAwarePeers:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_registerCredentialsOnlyIfNeeded:.cold.2()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to call SOSCCSetUserCredentialsAndDSID with error %@", v2, v3, v4, v5);
}

- (void)_registerCredentialsOnlyIfNeeded:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)tryRegisteringCredentials
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_initializeRecoveryKeyWithInfo:(void *)a1 error:.cold.1(void *a1)
{
  v1 = [a1 custodianUUID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_1DED99000, v2, v3, "Obtaining recovery key from security for custodian recovery with UUID: %@", v4, v5, v6, v7);
}

+ (void)syncingStatusForAltDSID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 141558274;
  v3 = 1752392040;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "CDPCircleProxyImpl: fetching OT Status for altDSID: %{mask.hash}@", &v2, 0x16u);
}

@end