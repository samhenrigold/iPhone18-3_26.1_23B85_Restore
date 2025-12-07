@interface OTClique
+ (BOOL)clearCliqueFromAccount:(id)account error:(id *)error;
+ (BOOL)isCloudServicesAvailable;
+ (BOOL)performCKServerUnreadableDataRemoval:(id)removal error:(id *)error;
+ (BOOL)platformSupportsSOS;
+ (BOOL)setCDPEnabled:(id)enabled error:(id *)error;
+ (id)fetchEscrowRecordsInternal:(id)internal error:(id *)error;
+ (id)findOptimalBottleIDsWithContextData:(id)data error:(id *)error;
+ (id)newFriendsWithContextData:(id)data resetReason:(int64_t)reason error:(id *)error;
+ (id)performEscrowRecoveryWithContextData:(id)data escrowArguments:(id)arguments error:(id *)error;
+ (id)recoverWithContextData:(id)data bottleID:(id)d escrowedEntropy:(id)entropy error:(id *)error;
+ (id)resetProtectedData:(id)data idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s error:(id *)error;
+ (int64_t)getCDPStatus:(id)status error:(id *)error;
+ (void)checkCustodianRecoveryKey:(id)key custodianRecoveryKeyUUID:(id)d reply:(id)reply;
+ (void)checkInheritanceKey:(id)key inheritanceKeyUUID:(id)d reply:(id)reply;
+ (void)createCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply;
+ (void)createInheritanceKey:(id)key uuid:(id)uuid claimTokenData:(id)data wrappingKeyData:(id)keyData reply:(id)reply;
+ (void)createInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply;
+ (void)generateInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply;
+ (void)preflightRecoverOctagonUsingCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply;
+ (void)preflightRecoverOctagonUsingInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply;
+ (void)recoverOctagonUsingCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply;
+ (void)recoverOctagonUsingInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply;
+ (void)recreateInheritanceKey:(id)key uuid:(id)uuid oldIK:(id)k reply:(id)reply;
+ (void)removeCustodianRecoveryKey:(id)key custodianRecoveryKeyUUID:(id)d reply:(id)reply;
+ (void)removeInheritanceKey:(id)key inheritanceKeyUUID:(id)d reply:(id)reply;
+ (void)setNewRecoveryKeyWithData:(id)data recoveryKey:(id)key reply:(id)reply;
+ (void)storeInheritanceKey:(id)key ik:(id)ik reply:(id)reply;
- (BOOL)accountUserKeyAvailable;
- (BOOL)establish:(id *)establish;
- (BOOL)establish:(id)establish error:(id *)error;
- (BOOL)fetchUserControllableViewsSyncingEnabled:(id *)enabled;
- (BOOL)joinAfterRestore:(id *)restore;
- (BOOL)leaveClique:(id *)clique;
- (BOOL)peersHaveViewsEnabled:(id)enabled error:(id *)error;
- (BOOL)removeFriendsInClique:(id)clique error:(id *)error;
- (BOOL)requestToJoinCircle:(id *)circle;
- (BOOL)resetAndEstablish:(int64_t)establish idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s accountSettings:(id)settings isGuitarfish:(BOOL)guitarfish accountIsW:(BOOL)w altDSID:(id)self0 flowID:(id)self1 deviceSessionID:(id)self2 canSendMetrics:(BOOL)self3 error:(id *)self4;
- (BOOL)setOctagonUserControllableViewsSyncEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setUserCredentialsAndDSID:(id)d password:(id)password error:(id *)error;
- (BOOL)setUserCredentialsWithLabel:(id)label password:(id)password dsid:(id)dsid error:(id *)error;
- (BOOL)tryUserCredentialsAndDSID:(id)d password:(id)password error:(id *)error;
- (BOOL)tryUserCredentialsWithLabel:(id)label password:(id)password dsid:(id)dsid error:(id *)error;
- (BOOL)waitForInitialSync:(id *)sync;
- (BOOL)waitForOctagonUpgrade:(id *)upgrade;
- (OTClique)initWithContextData:(id)data;
- (id)cliqueMemberIdentifier:(id *)identifier;
- (id)copyPeerPeerInfo:(id *)info;
- (id)copyViewUnawarePeerInfo:(id *)info;
- (id)description;
- (id)makeOTControl:(id *)control;
- (id)peerDeviceNamesByPeerID:(id *)d;
- (id)setupPairingChannelAsAcceptor:(id)acceptor;
- (id)setupPairingChannelAsAcceptor:(id)acceptor error:(id *)error;
- (id)setupPairingChannelAsInitator:(id)initator error:(id *)error;
- (id)setupPairingChannelAsInitiator:(id)initiator;
- (int64_t)_fetchCliqueStatus:(id)status error:(id *)error;
- (int64_t)cachedCliqueStatus:(BOOL)status error:(id *)error;
- (int64_t)fetchCliqueStatus:(id *)status;
- (void)fetchEscrowContents:(id)contents;
- (void)fetchUserControllableViewsSyncingEnabledAsync:(id)async;
- (void)performedCDPStateMachineRun:(id)run success:(BOOL)success error:(id)error reply:(id)reply;
@end

@implementation OTClique

- (BOOL)waitForOctagonUpgrade:(id *)upgrade
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = _OctagonSignpostLogSystem();
  v6 = os_signpost_id_generate(v5);
  v7 = mach_continuous_time();

  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  v10 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "WaitForOctagonUpgrade", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: WaitForOctagonUpgrade  enableTelemetry=YES ", buf, 0xCu);
  }

  v36 = 0;
  v12 = [(OTClique *)self makeOTControl:&v36];
  v13 = v36;
  if (v12)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v44 = __Block_byref_object_copy__5565;
    v45 = __Block_byref_object_dispose__5566;
    v46 = 0;
    v14 = [OTControlArguments alloc];
    v15 = [(OTClique *)self ctx];
    v16 = [(OTControlArguments *)v14 initWithConfiguration:v15];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __34__OTClique_waitForOctagonUpgrade___block_invoke;
    v31[3] = &unk_1E70D6D00;
    v31[4] = buf;
    v31[5] = &v32;
    [v12 waitForOctagonUpgrade:v16 reply:v31];

    if (upgrade)
    {
      v17 = *(*&buf[8] + 40);
      if (v17)
      {
        *upgrade = v17;
      }
    }

    v18 = *(v33 + 24);
    Nanoseconds = _OctagonSignpostGetNanoseconds(v6, v7);
    v20 = _OctagonSignpostLogSystem();
    v21 = v20;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *v37 = 67240192;
      LODWORD(v38) = v18;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v21, OS_SIGNPOST_INTERVAL_END, v6, "WaitForOctagonUpgrade", " OctagonSignpostNameWaitForOctagonUpgrade=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForOctagonUpgrade}d ", v37, 8u);
    }

    v22 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 134218496;
      v38 = v6;
      v39 = 2048;
      v40 = Nanoseconds / 1000000000.0;
      v41 = 1026;
      v42 = v18;
      _os_log_impl(&dword_1887D2000, v22, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: WaitForOctagonUpgrade  OctagonSignpostNameWaitForOctagonUpgrade=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForOctagonUpgrade}d ", v37, 0x1Cu);
    }

    v23 = *(v33 + 24);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v24 = secLogObjForScope("clique-waitforoctagonupgrade");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v13;
      _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "octagon, failed to fetch OTControl object: %@", buf, 0xCu);
    }

    if (upgrade)
    {
      v25 = v13;
      *upgrade = v13;
    }

    v26 = _OctagonSignpostGetNanoseconds(v6, v7);
    v27 = _OctagonSignpostLogSystem();
    v28 = v27;
    if (v10 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v27))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v28, OS_SIGNPOST_INTERVAL_END, v6, "WaitForOctagonUpgrade", " OctagonSignpostNameWaitForOctagonUpgrade=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForOctagonUpgrade}d ", buf, 8u);
    }

    v29 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v26 / 1000000000.0;
      *&buf[22] = 1026;
      LODWORD(v44) = 0;
      _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: WaitForOctagonUpgrade  OctagonSignpostNameWaitForOctagonUpgrade=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForOctagonUpgrade}d ", buf, 0x1Cu);
    }

    v23 = 0;
  }

  return v23 & 1;
}

void __34__OTClique_waitForOctagonUpgrade___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-waitforoctagonupgrade");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "error from control: %@", &v9, 0xCu);
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = v3;
    v8 = 0;
    v4 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    if (v5)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "successfully upgraded to octagon", &v9, 2u);
    }

    v8 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;
}

- (void)performedCDPStateMachineRun:(id)run success:(BOOL)success error:(id)error reply:(id)reply
{
  successCopy = success;
  v49 = *MEMORY[0x1E69E9840];
  runCopy = run;
  errorCopy = error;
  replyCopy = reply;
  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PerformedCDPStateMachineRun", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformedCDPStateMachineRun  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v18 = [(OTClique *)self makeOTControl:&v39];
  v19 = v39;
  if (v18)
  {
    v20 = [OTControlArguments alloc];
    v21 = [(OTClique *)self ctx];
    v22 = [(OTControlArguments *)v20 initWithConfiguration:v21];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __60__OTClique_performedCDPStateMachineRun_success_error_reply___block_invoke;
    v31[3] = &unk_1E70D6F80;
    v36 = v13;
    v37 = v14;
    v32 = runCopy;
    p_buf = &buf;
    v34 = replyCopy;
    v38 = successCopy;
    v33 = errorCopy;
    [v18 postCDPFollowupResult:v22 success:successCopy type:v32 error:v33 reply:v31];
  }

  else
  {
    v23 = secLogObjForScope("clique-cdp-sm");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 138412290;
      v41 = v19;
      _os_log_impl(&dword_1887D2000, v23, OS_LOG_TYPE_DEFAULT, "octagon, failed to fetch OTControl object: %@", v40, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v25 = _OctagonSignpostLogSystem();
    v26 = v25;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      v27 = *(*(&buf + 1) + 24);
      *v40 = 67240192;
      LODWORD(v41) = v27;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v26, OS_SIGNPOST_INTERVAL_END, v13, "PerformedCDPStateMachineRun", " OctagonSignpostNamePerformedCDPStateMachineRun=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformedCDPStateMachineRun}d ", v40, 8u);
    }

    v28 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 134218496;
      v29 = *(*(&buf + 1) + 24);
      v41 = v13;
      v42 = 2048;
      v43 = Nanoseconds / 1000000000.0;
      v44 = 1026;
      v45 = v29;
      _os_log_impl(&dword_1887D2000, v28, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformedCDPStateMachineRun  OctagonSignpostNamePerformedCDPStateMachineRun=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformedCDPStateMachineRun}d ", v40, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v19);
  }

  _Block_object_dispose(&buf, 8);
}

void __60__OTClique_performedCDPStateMachineRun_success_error_reply___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = COERCE_DOUBLE(a2);
  if (v3 != 0.0)
  {
    v4 = secLogObjForScope("clique-cdp-sm");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v28 = 138412546;
      v29 = v5;
      v30 = 2112;
      v31 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "failed to post %@ result: %@ ", &v28, 0x16u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
    v7 = _OctagonSignpostLogSystem();
    v8 = v7;
    v9 = *(a1 + 64);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(*(*(a1 + 56) + 8) + 24);
      v28 = 67240192;
      LODWORD(v29) = v10;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PerformedCDPStateMachineRun", " OctagonSignpostNamePerformedCDPStateMachineRun=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformedCDPStateMachineRun}d ", &v28, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134218496;
      v12 = *(*(*(a1 + 56) + 8) + 24);
      v29 = *(a1 + 64);
      v30 = 2048;
      v31 = Nanoseconds / 1000000000.0;
      v32 = 1026;
      v33 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformedCDPStateMachineRun  OctagonSignpostNamePerformedCDPStateMachineRun=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformedCDPStateMachineRun}d ", &v28, 0x1Cu);
    }

    goto LABEL_21;
  }

  v13 = *(a1 + 80);
  v14 = secLogObjForScope("clique-cdp-sm");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13 == 1)
  {
    if (!v15)
    {
      goto LABEL_16;
    }

    v16 = *(a1 + 32);
    v28 = 138412290;
    v29 = v16;
    v17 = "posted success: %@";
    v18 = v14;
    v19 = 12;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_16;
    }

    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v28 = 138412546;
    v29 = v20;
    v30 = 2112;
    v31 = v21;
    v17 = "posted error: %@:  %@";
    v18 = v14;
    v19 = 22;
  }

  _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, v17, &v28, v19);
LABEL_16:

  *(*(*(a1 + 56) + 8) + 24) = *(a1 + 80);
  v22 = _OctagonSignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v23 = _OctagonSignpostLogSystem();
  v24 = v23;
  v25 = *(a1 + 64);
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v26 = *(*(*(a1 + 56) + 8) + 24);
    v28 = 67240192;
    LODWORD(v29) = v26;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PerformedCDPStateMachineRun", " OctagonSignpostNamePerformedCDPStateMachineRun=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformedCDPStateMachineRun}d ", &v28, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 134218496;
    v27 = *(*(*(a1 + 56) + 8) + 24);
    v29 = *(a1 + 64);
    v30 = 2048;
    v31 = v22 / 1000000000.0;
    v32 = 1026;
    v33 = v27;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformedCDPStateMachineRun  OctagonSignpostNamePerformedCDPStateMachineRun=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformedCDPStateMachineRun}d ", &v28, 0x1Cu);
  }

LABEL_21:

  (*(*(a1 + 48) + 16))();
}

- (void)fetchEscrowContents:(id)contents
{
  v41 = *MEMORY[0x1E69E9840];
  contentsCopy = contents;
  v5 = secLogObjForScope("clique-fetchescrow");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTClique *)self ctx];
    context = [v6 context];
    v8 = [(OTClique *)self ctx];
    altDSID = [v8 altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "fetching entropy for bottling for context:%@, altdsid:%@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FetchEscrowContents", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v11;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchEscrowContents  enableTelemetry=YES ", buf, 0xCu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v40 = 0;
  v32 = 0;
  v16 = [(OTClique *)self makeOTControl:&v32];
  v17 = v32;
  if (v16)
  {
    v18 = [OTControlArguments alloc];
    v19 = [(OTClique *)self ctx];
    v20 = [(OTControlArguments *)v18 initWithConfiguration:v19];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __32__OTClique_fetchEscrowContents___block_invoke;
    v27[3] = &unk_1E70D6E90;
    v29 = buf;
    v30 = v11;
    v31 = v12;
    v28 = contentsCopy;
    [v16 fetchEscrowContents:v20 reply:v27];
  }

  else
  {
    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v22 = _OctagonSignpostLogSystem();
    v23 = v22;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = *(*&buf[8] + 24);
      *v33 = 67240192;
      LODWORD(v34) = v24;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v23, OS_SIGNPOST_INTERVAL_END, v11, "FetchEscrowContents", " OctagonSignpostNameFetchEscrowContents=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowContents}d ", v33, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 134218496;
      v26 = *(*&buf[8] + 24);
      v34 = v11;
      v35 = 2048;
      v36 = Nanoseconds / 1000000000.0;
      v37 = 1026;
      v38 = v26;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEscrowContents  OctagonSignpostNameFetchEscrowContents=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowContents}d ", v33, 0x1Cu);
    }

    (*(contentsCopy + 2))(contentsCopy, 0, 0, 0, v17);
  }

  _Block_object_dispose(buf, 8);
}

void __32__OTClique_fetchEscrowContents___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = secLogObjForScope("clique-fetchescrow");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v25 = 138412290;
      v26 = v12;
      v15 = "fetchEscrowContents errored: %@";
      v16 = v13;
      v17 = 12;
LABEL_6:
      _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, v15, &v25, v17);
    }
  }

  else if (v14)
  {
    LOWORD(v25) = 0;
    v15 = "fetchEscrowContents succeeded";
    v16 = v13;
    v17 = 2;
    goto LABEL_6;
  }

  *(*(a1[5] + 8) + 24) = v12 == 0;
  Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
  v19 = _OctagonSignpostLogSystem();
  v20 = v19;
  v21 = a1[6];
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v22 = *(*(a1[5] + 8) + 24);
    v25 = 67240192;
    LODWORD(v26) = v22;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v20, OS_SIGNPOST_INTERVAL_END, v21, "FetchEscrowContents", " OctagonSignpostNameFetchEscrowContents=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowContents}d ", &v25, 8u);
  }

  v23 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 134218496;
    v24 = *(*(a1[5] + 8) + 24);
    v26 = a1[6];
    v27 = 2048;
    v28 = Nanoseconds / 1000000000.0;
    v29 = 1026;
    v30 = v24;
    _os_log_impl(&dword_1887D2000, v23, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEscrowContents  OctagonSignpostNameFetchEscrowContents=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowContents}d ", &v25, 0x1Cu);
  }

  (*(a1[4] + 16))();
}

- (BOOL)accountUserKeyAvailable
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(OTClique *)self ctx];
    context = [v4 context];
    v6 = [(OTClique *)self ctx];
    altDSID = [v6 altDSID];
    v26 = 138412546;
    v27 = context;
    v28 = 2112;
    v29 = *&altDSID;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "accountUserKeyAvailable for context:%@, altdsid:%@", &v26, 0x16u);
  }

  v8 = _OctagonSignpostLogSystem();
  v9 = os_signpost_id_generate(v8);
  v10 = mach_continuous_time();

  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  v13 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v26) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AccountUserKeyAvailable", " enableTelemetry=YES ", &v26, 2u);
  }

  v14 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 134217984;
    v27 = v9;
    _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: AccountUserKeyAvailable  enableTelemetry=YES ", &v26, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v15 = SOSCCCanAuthenticate(0);
    if ((v15 & 1) == 0)
    {
      v16 = secLogObjForScope("clique-legacy");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "Security requires credentials...", &v26, 2u);
      }
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v9, v10);
    v18 = _OctagonSignpostLogSystem();
    v19 = v18;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      v26 = 67240192;
      LODWORD(v27) = v15;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v19, OS_SIGNPOST_INTERVAL_END, v9, "AccountUserKeyAvailable", " OctagonSignpostNameAccountUserKeyAvailable=%{public,signpost.telemetry:number1,name=OctagonSignpostNameAccountUserKeyAvailable}d ", &v26, 8u);
    }

    v20 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 134218496;
      v27 = v9;
      v28 = 2048;
      v29 = Nanoseconds / 1000000000.0;
      v30 = 1026;
      v31 = v15;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: AccountUserKeyAvailable  OctagonSignpostNameAccountUserKeyAvailable=%{public,signpost.telemetry:number1,name=OctagonSignpostNameAccountUserKeyAvailable}d ", &v26, 0x1Cu);
    }
  }

  else
  {
    v21 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NO", &v26, 2u);
    }

    v22 = _OctagonSignpostGetNanoseconds(v9, v10);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v26 = 67240192;
      LODWORD(v27) = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v9, "AccountUserKeyAvailable", " OctagonSignpostNameAccountUserKeyAvailable=%{public,signpost.telemetry:number1,name=OctagonSignpostNameAccountUserKeyAvailable}d ", &v26, 8u);
    }

    v20 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 134218496;
      v27 = v9;
      v28 = 2048;
      v29 = v22 / 1000000000.0;
      v30 = 1026;
      v31 = 0;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: AccountUserKeyAvailable  OctagonSignpostNameAccountUserKeyAvailable=%{public,signpost.telemetry:number1,name=OctagonSignpostNameAccountUserKeyAvailable}d ", &v26, 0x1Cu);
    }

    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)requestToJoinCircle:(id *)circle
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = _OctagonSignpostLogSystem();
  v6 = os_signpost_id_generate(v5);
  v7 = mach_continuous_time();

  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  v10 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "RequestToJoinCircle", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v50 = v6;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RequestToJoinCircle  enableTelemetry=YES ", buf, 0xCu);
  }

  v12 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(OTClique *)self ctx];
    context = [v13 context];
    v15 = [(OTClique *)self ctx];
    altDSID = [v15 altDSID];
    *buf = 138412546;
    *v50 = context;
    *&v50[8] = 2112;
    *&v50[10] = altDSID;
    _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "requestToJoinCircle for context:%@, altdsid:%@", buf, 0x16u);
  }

  v48 = 0;
  v17 = [(OTClique *)self fetchCliqueStatus:&v48];
  v18 = v48;
  if (v18)
  {
    v19 = v18;
    v20 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v50 = v19;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "fetching clique status failed: %@", buf, 0xCu);
    }

    if (circle)
    {
      v21 = v19;
      *circle = v19;
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v6, v7);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 67240192;
      *v50 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v6, "RequestToJoinCircle", " OctagonSignpostNameRequestToJoinCircle=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRequestToJoinCircle}d ", buf, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v28 = secLogObjForScope("clique-legacy");
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v17 != 3)
  {
    if (!v29)
    {
      goto LABEL_39;
    }

    if ((v17 + 1) > 5)
    {
      v34 = @"CliqueStatusIn";
    }

    else
    {
      v34 = off_1E70D7000[v17 + 1];
    }

    *buf = 138412290;
    *v50 = v34;
    v35 = "clique status is %@; performing no Octagon actions";
    v36 = v28;
    v37 = 12;
    goto LABEL_38;
  }

  if (v29)
  {
    *buf = 138412290;
    *v50 = @"CliqueStatusAbsent";
    _os_log_impl(&dword_1887D2000, v28, OS_LOG_TYPE_DEFAULT, "clique status is %@; beginning an establish", buf, 0xCu);
  }

  v47 = 0;
  [(OTClique *)self establish:&v47];
  v30 = v47;
  if (v30)
  {
    v19 = v30;
    if (circle)
    {
      v31 = v30;
      *circle = v19;
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v6, v7);
    v32 = _OctagonSignpostLogSystem();
    v33 = v32;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 67240192;
      *v50 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v33, OS_SIGNPOST_INTERVAL_END, v6, "RequestToJoinCircle", " OctagonSignpostNameRequestToJoinCircle=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRequestToJoinCircle}d ", buf, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

LABEL_17:
    *buf = 134218496;
    *v50 = v6;
    *&v50[8] = 2048;
    *&v50[10] = Nanoseconds / 1000000000.0;
    v51 = 1026;
    v52 = 0;
    _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RequestToJoinCircle  OctagonSignpostNameRequestToJoinCircle=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRequestToJoinCircle}d ", buf, 0x1Cu);
LABEL_18:

    LOBYTE(v26) = 0;
    goto LABEL_19;
  }

  v28 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v35 = "establish succeeded";
    v36 = v28;
    v37 = 2;
LABEL_38:
    _os_log_impl(&dword_1887D2000, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
  }

LABEL_39:

  if (+[OTClique platformSupportsSOS])
  {
    if (+[OTClique platformSupportsSOS])
    {
      v46 = 0;
      v26 = SOSCCRequestToJoinCircle(&v46);
      v38 = secLogObjForScope("clique-legacy");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v50 = v26;
        *&v50[4] = 2112;
        *&v50[6] = v46;
        _os_log_impl(&dword_1887D2000, v38, OS_LOG_TYPE_DEFAULT, "sos requestToJoinCircle complete: %d %@", buf, 0x12u);
      }

      if (circle)
      {
        *circle = v46;
      }

      else
      {
      }
    }

    else
    {
      v26 = 0;
    }

    v43 = _OctagonSignpostGetNanoseconds(v6, v7);
    v44 = _OctagonSignpostLogSystem();
    v45 = v44;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
    {
      *buf = 67240192;
      *v50 = v26;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v45, OS_SIGNPOST_INTERVAL_END, v6, "RequestToJoinCircle", " OctagonSignpostNameRequestToJoinCircle=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRequestToJoinCircle}d ", buf, 8u);
    }

    v19 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v50 = v6;
      *&v50[8] = 2048;
      *&v50[10] = v43 / 1000000000.0;
      v51 = 1026;
      v52 = v26;
      goto LABEL_59;
    }
  }

  else
  {
    v39 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEFAULT, "requestToJoinCircle platform does not support SOS", buf, 2u);
    }

    v40 = _OctagonSignpostGetNanoseconds(v6, v7);
    v41 = _OctagonSignpostLogSystem();
    v42 = v41;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *buf = 67240192;
      *v50 = 1;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v42, OS_SIGNPOST_INTERVAL_END, v6, "RequestToJoinCircle", " OctagonSignpostNameRequestToJoinCircle=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRequestToJoinCircle}d ", buf, 8u);
    }

    v19 = _OctagonSignpostLogSystem();
    LOBYTE(v26) = 1;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v50 = v6;
      *&v50[8] = 2048;
      *&v50[10] = v40 / 1000000000.0;
      v51 = 1026;
      v52 = 1;
LABEL_59:
      _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RequestToJoinCircle  OctagonSignpostNameRequestToJoinCircle=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRequestToJoinCircle}d ", buf, 0x1Cu);
    }
  }

LABEL_19:

  return v26;
}

- (BOOL)peersHaveViewsEnabled:(id)enabled error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  v7 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(OTClique *)self ctx];
    context = [v8 context];
    v10 = [(OTClique *)self ctx];
    altDSID = [v10 altDSID];
    *buf = 138412546;
    *v39 = context;
    *&v39[8] = 2112;
    *&v39[10] = altDSID;
    _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "peersHaveViewsEnabled for context:%@, altdsid:%@", buf, 0x16u);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  v17 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PeersHaveViewsEnabled", " enableTelemetry=YES ", buf, 2u);
  }

  v18 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v39 = v13;
    _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PeersHaveViewsEnabled  enableTelemetry=YES ", buf, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v35 = 0;
    HaveViewsEnabled = SOSCCPeersHaveViewsEnabled(enabledCopy, &v35);
    if (HaveViewsEnabled)
    {
      v20 = CFBooleanGetValue(HaveViewsEnabled) != 0;
    }

    else
    {
      v20 = 0;
    }

    v29 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v39 = v20;
      *&v39[4] = 2112;
      *&v39[6] = v35;
      _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "peersHaveViewsEnabled results: %{BOOL}d (%@)", buf, 0x12u);
    }

    if (error)
    {
      *error = v35;
    }

    else
    {
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v31 = _OctagonSignpostLogSystem();
    v32 = v31;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 67240192;
      *v39 = v20;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v32, OS_SIGNPOST_INTERVAL_END, v13, "PeersHaveViewsEnabled", " OctagonSignpostNamePeersHaveViewsEnabled=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeersHaveViewsEnabled}d ", buf, 8u);
    }

    v33 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v39 = v13;
      *&v39[8] = 2048;
      *&v39[10] = Nanoseconds / 1000000000.0;
      v40 = 1026;
      v41 = v20;
      _os_log_impl(&dword_1887D2000, v33, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PeersHaveViewsEnabled  OctagonSignpostNamePeersHaveViewsEnabled=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeersHaveViewsEnabled}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v21 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NO", buf, 2u);
    }

    if (error)
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A768];
      v36 = *MEMORY[0x1E696A578];
      v37 = @"peers have views enabled unimplemented";
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      *error = [v22 errorWithDomain:v23 code:-4 userInfo:v24];
    }

    v25 = _OctagonSignpostGetNanoseconds(v13, v14);
    v26 = _OctagonSignpostLogSystem();
    v27 = v26;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 67240192;
      *v39 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v27, OS_SIGNPOST_INTERVAL_END, v13, "PeersHaveViewsEnabled", " OctagonSignpostNamePeersHaveViewsEnabled=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeersHaveViewsEnabled}d ", buf, 8u);
    }

    v28 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v39 = v13;
      *&v39[8] = 2048;
      *&v39[10] = v25 / 1000000000.0;
      v40 = 1026;
      v41 = 0;
      _os_log_impl(&dword_1887D2000, v28, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PeersHaveViewsEnabled  OctagonSignpostNamePeersHaveViewsEnabled=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeersHaveViewsEnabled}d ", buf, 0x1Cu);
    }

    LOBYTE(v20) = 0;
  }

  return v20;
}

- (id)copyPeerPeerInfo:(id *)info
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTClique *)self ctx];
    context = [v6 context];
    v8 = [(OTClique *)self ctx];
    altDSID = [v8 altDSID];
    *buf = 138412546;
    v36 = context;
    v37 = 2112;
    v38 = *&altDSID;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "copyPeerPeerInfo for context:%@, altdsid:%@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CopyPeerPeerInfo", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36 = v11;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CopyPeerPeerInfo  enableTelemetry=YES ", buf, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v32 = 0;
    v17 = SOSCCCopyPeerPeerInfo(&v32);
    v18 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = v17;
      v37 = 2112;
      v38 = *&v32;
      _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "copyPeerPeerInfo results: %@ (%@)", buf, 0x16u);
    }

    if (info)
    {
      *info = v32;
    }

    else
    {
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v28 = _OctagonSignpostLogSystem();
    v29 = v28;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 67240192;
      LODWORD(v36) = v17 != 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v29, OS_SIGNPOST_INTERVAL_END, v11, "CopyPeerPeerInfo", " OctagonSignpostNameCopyPeerPeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyPeerPeerInfo}d ", buf, 8u);
    }

    v30 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v36 = v11;
      v37 = 2048;
      v38 = Nanoseconds / 1000000000.0;
      v39 = 1026;
      v40 = v17 != 0;
      _os_log_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CopyPeerPeerInfo  OctagonSignpostNameCopyPeerPeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyPeerPeerInfo}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v19 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NO", buf, 2u);
    }

    if (info)
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A768];
      v33 = *MEMORY[0x1E696A578];
      v34 = @"copy peer peer info unimplemented";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *info = [v20 errorWithDomain:v21 code:-4 userInfo:v22];
    }

    v23 = _OctagonSignpostGetNanoseconds(v11, v12);
    v24 = _OctagonSignpostLogSystem();
    v25 = v24;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 67240192;
      LODWORD(v36) = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v25, OS_SIGNPOST_INTERVAL_END, v11, "CopyPeerPeerInfo", " OctagonSignpostNameCopyPeerPeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyPeerPeerInfo}d ", buf, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v36 = v11;
      v37 = 2048;
      v38 = v23 / 1000000000.0;
      v39 = 1026;
      v40 = 0;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CopyPeerPeerInfo  OctagonSignpostNameCopyPeerPeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyPeerPeerInfo}d ", buf, 0x1Cu);
    }

    return 0;
  }

  return v17;
}

- (BOOL)tryUserCredentialsAndDSID:(id)d password:(id)password error:(id *)error
{
  passwordCopy = password;
  dCopy = d;
  v10 = [(OTClique *)self ctx];
  dsid = [v10 dsid];
  LOBYTE(error) = [(OTClique *)self tryUserCredentialsWithLabel:dCopy password:passwordCopy dsid:dsid error:error];

  return error;
}

- (BOOL)tryUserCredentialsWithLabel:(id)label password:(id)password dsid:(id)dsid error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  passwordCopy = password;
  dsidCopy = dsid;
  v13 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(OTClique *)self ctx];
    context = [v14 context];
    v16 = [(OTClique *)self ctx];
    altDSID = [v16 altDSID];
    *buf = 138412546;
    *v44 = context;
    *&v44[8] = 2112;
    *&v44[10] = altDSID;
    _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "tryUserCredentialsAndDSID for context:%@, altdsid:%@", buf, 0x16u);
  }

  v18 = _OctagonSignpostLogSystem();
  v19 = os_signpost_id_generate(v18);
  v20 = mach_continuous_time();

  v21 = _OctagonSignpostLogSystem();
  v22 = v21;
  v23 = v19 - 1;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "TryUserCredentialsAndDSID", " enableTelemetry=YES ", buf, 2u);
  }

  v24 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v44 = v19;
    _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: TryUserCredentialsAndDSID  enableTelemetry=YES ", buf, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v40 = 0;
    v25 = SOSCCTryUserCredentialsAndDSID(labelCopy, passwordCopy, dsidCopy, &v40);
    v26 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v44 = v25;
      *&v44[4] = 2112;
      *&v44[6] = v40;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "tryUserCredentialsAndDSID results: %d %@", buf, 0x12u);
    }

    if (error)
    {
      *error = v40;
    }

    else
    {
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v19, v20);
    v36 = _OctagonSignpostLogSystem();
    v37 = v36;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 67240192;
      *v44 = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v37, OS_SIGNPOST_INTERVAL_END, v19, "TryUserCredentialsAndDSID", " OctagonSignpostNameTryUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameTryUserCredentialsAndDSID}d ", buf, 8u);
    }

    v38 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v44 = v19;
      *&v44[8] = 2048;
      *&v44[10] = Nanoseconds / 1000000000.0;
      v45 = 1026;
      v46 = v25;
      _os_log_impl(&dword_1887D2000, v38, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: TryUserCredentialsAndDSID  OctagonSignpostNameTryUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameTryUserCredentialsAndDSID}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v27 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NO", buf, 2u);
    }

    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A768];
      v41 = *MEMORY[0x1E696A578];
      v42 = @"try user credentials unimplemented";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *error = [v28 errorWithDomain:v29 code:-4 userInfo:v30];
    }

    v31 = _OctagonSignpostGetNanoseconds(v19, v20);
    v32 = _OctagonSignpostLogSystem();
    v33 = v32;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 67240192;
      *v44 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v33, OS_SIGNPOST_INTERVAL_END, v19, "TryUserCredentialsAndDSID", " OctagonSignpostNameTryUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameTryUserCredentialsAndDSID}d ", buf, 8u);
    }

    v34 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v44 = v19;
      *&v44[8] = 2048;
      *&v44[10] = v31 / 1000000000.0;
      v45 = 1026;
      v46 = 0;
      _os_log_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: TryUserCredentialsAndDSID  OctagonSignpostNameTryUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameTryUserCredentialsAndDSID}d ", buf, 0x1Cu);
    }

    LOBYTE(v25) = 0;
  }

  return v25;
}

- (BOOL)setUserCredentialsAndDSID:(id)d password:(id)password error:(id *)error
{
  passwordCopy = password;
  dCopy = d;
  v10 = [(OTClique *)self ctx];
  dsid = [v10 dsid];
  LOBYTE(error) = [(OTClique *)self setUserCredentialsWithLabel:dCopy password:passwordCopy dsid:dsid error:error];

  return error;
}

- (BOOL)setUserCredentialsWithLabel:(id)label password:(id)password dsid:(id)dsid error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  passwordCopy = password;
  dsidCopy = dsid;
  v13 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(OTClique *)self ctx];
    context = [v14 context];
    v16 = [(OTClique *)self ctx];
    altDSID = [v16 altDSID];
    *buf = 138412546;
    *v44 = context;
    *&v44[8] = 2112;
    *&v44[10] = altDSID;
    _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "setUserCredentialsAndDSID for context:%@, altdsid:%@", buf, 0x16u);
  }

  v18 = _OctagonSignpostLogSystem();
  v19 = os_signpost_id_generate(v18);
  v20 = mach_continuous_time();

  v21 = _OctagonSignpostLogSystem();
  v22 = v21;
  v23 = v19 - 1;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "SetUserCredentialsAndDSID", " enableTelemetry=YES ", buf, 2u);
  }

  v24 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v44 = v19;
    _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SetUserCredentialsAndDSID  enableTelemetry=YES ", buf, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v40 = 0;
    v25 = SOSCCSetUserCredentialsAndDSID(labelCopy, passwordCopy, dsidCopy, &v40);
    v26 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v44 = v25;
      *&v44[4] = 2112;
      *&v44[6] = v40;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "setUserCredentialsAndDSID results: %d %@", buf, 0x12u);
    }

    if (error)
    {
      *error = v40;
    }

    else
    {
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v19, v20);
    v36 = _OctagonSignpostLogSystem();
    v37 = v36;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 67240192;
      *v44 = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v37, OS_SIGNPOST_INTERVAL_END, v19, "SetUserCredentialsAndDSID", " OctagonSignpostNameSetUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetUserCredentialsAndDSID}d ", buf, 8u);
    }

    v38 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v44 = v19;
      *&v44[8] = 2048;
      *&v44[10] = Nanoseconds / 1000000000.0;
      v45 = 1026;
      v46 = v25;
      _os_log_impl(&dword_1887D2000, v38, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetUserCredentialsAndDSID  OctagonSignpostNameSetUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetUserCredentialsAndDSID}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v27 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NO", buf, 2u);
    }

    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A768];
      v41 = *MEMORY[0x1E696A578];
      v42 = @"set user credentials unimplemented";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *error = [v28 errorWithDomain:v29 code:-4 userInfo:v30];
    }

    v31 = _OctagonSignpostGetNanoseconds(v19, v20);
    v32 = _OctagonSignpostLogSystem();
    v33 = v32;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 67240192;
      *v44 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v33, OS_SIGNPOST_INTERVAL_END, v19, "SetUserCredentialsAndDSID", " OctagonSignpostNameSetUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetUserCredentialsAndDSID}d ", buf, 8u);
    }

    v34 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v44 = v19;
      *&v44[8] = 2048;
      *&v44[10] = v31 / 1000000000.0;
      v45 = 1026;
      v46 = 0;
      _os_log_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetUserCredentialsAndDSID  OctagonSignpostNameSetUserCredentialsAndDSID=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetUserCredentialsAndDSID}d ", buf, 0x1Cu);
    }

    LOBYTE(v25) = 0;
  }

  return v25;
}

- (id)copyViewUnawarePeerInfo:(id *)info
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTClique *)self ctx];
    context = [v6 context];
    v8 = [(OTClique *)self ctx];
    altDSID = [v8 altDSID];
    *buf = 138412546;
    v35 = context;
    v36 = 2112;
    v37 = *&altDSID;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "copyViewUnawarePeerInfo for context:%@, altdsid:%@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CopyViewUnawarePeerInfo", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = v11;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CopyViewUnawarePeerInfo  enableTelemetry=YES ", buf, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v31 = 0;
    v17 = SOSCCCopyViewUnawarePeerInfo(&v31);
    if (info)
    {
      *info = v31;
    }

    else
    {
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v27 = _OctagonSignpostLogSystem();
    v28 = v27;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 67240192;
      LODWORD(v35) = v17 != 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v28, OS_SIGNPOST_INTERVAL_END, v11, "CopyViewUnawarePeerInfo", " OctagonSignpostNameCopyViewUnawarePeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyViewUnawarePeerInfo}d ", buf, 8u);
    }

    v29 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v35 = v11;
      v36 = 2048;
      v37 = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v17 != 0;
      _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CopyViewUnawarePeerInfo  OctagonSignpostNameCopyViewUnawarePeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyViewUnawarePeerInfo}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v18 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NULL", buf, 2u);
    }

    if (info)
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A768];
      v32 = *MEMORY[0x1E696A578];
      v33 = @"copy view unaware peer info unimplemented";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      *info = [v19 errorWithDomain:v20 code:-4 userInfo:v21];
    }

    v22 = _OctagonSignpostGetNanoseconds(v11, v12);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 67240192;
      LODWORD(v35) = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v11, "CopyViewUnawarePeerInfo", " OctagonSignpostNameCopyViewUnawarePeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyViewUnawarePeerInfo}d ", buf, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v35 = v11;
      v36 = 2048;
      v37 = v22 / 1000000000.0;
      v38 = 1026;
      v39 = 0;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CopyViewUnawarePeerInfo  OctagonSignpostNameCopyViewUnawarePeerInfo=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCopyViewUnawarePeerInfo}d ", buf, 0x1Cu);
    }

    return 0;
  }

  return v17;
}

- (BOOL)waitForInitialSync:(id *)sync
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope("clique-legacy");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTClique *)self ctx];
    context = [v6 context];
    v8 = [(OTClique *)self ctx];
    altDSID = [v8 altDSID];
    *buf = 138412546;
    *v37 = context;
    *&v37[8] = 2112;
    *&v37[10] = altDSID;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "waitForInitialSync for context:%@, altdsid:%@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "WaitForInitialSync", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v37 = v11;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: WaitForInitialSync  enableTelemetry=YES ", buf, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v33 = 0;
    v17 = SOSCCWaitForInitialSync(&v33);
    if (sync)
    {
      *sync = v33;
    }

    else
    {
    }

    v26 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (sync)
      {
        v27 = *sync;
      }

      else
      {
        v27 = @"no error pointer provided";
      }

      *buf = 67109378;
      *v37 = v17;
      *&v37[4] = 2112;
      *&v37[6] = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "waitForInitialSync waited: %d %@", buf, 0x12u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v29 = _OctagonSignpostLogSystem();
    v30 = v29;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 67240192;
      *v37 = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v30, OS_SIGNPOST_INTERVAL_END, v11, "WaitForInitialSync", " OctagonSignpostNameWaitForInitialSync=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForInitialSync}d ", buf, 8u);
    }

    v31 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v37 = v11;
      *&v37[8] = 2048;
      *&v37[10] = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v17;
      _os_log_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: WaitForInitialSync  OctagonSignpostNameWaitForInitialSync=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForInitialSync}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v18 = secLogObjForScope("clique-legacy");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NO", buf, 2u);
    }

    if (sync)
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A768];
      v34 = *MEMORY[0x1E696A578];
      v35 = @"wait for initial sync unimplemented";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *sync = [v19 errorWithDomain:v20 code:-4 userInfo:v21];
    }

    v22 = _OctagonSignpostGetNanoseconds(v11, v12);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 67240192;
      *v37 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v11, "WaitForInitialSync", " OctagonSignpostNameWaitForInitialSync=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForInitialSync}d ", buf, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v37 = v11;
      *&v37[8] = 2048;
      *&v37[10] = v22 / 1000000000.0;
      v38 = 1026;
      v39 = 0;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: WaitForInitialSync  OctagonSignpostNameWaitForInitialSync=%{public,signpost.telemetry:number1,name=OctagonSignpostNameWaitForInitialSync}d ", buf, 0x1Cu);
    }

    LOBYTE(v17) = 0;
  }

  return v17;
}

- (void)fetchUserControllableViewsSyncingEnabledAsync:(id)async
{
  asyncCopy = async;
  v12 = 0;
  v5 = [(OTClique *)self makeOTControl:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = [OTControlArguments alloc];
    v8 = [(OTClique *)self ctx];
    v9 = [(OTControlArguments *)v7 initWithConfiguration:v8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__OTClique_fetchUserControllableViewsSyncingEnabledAsync___block_invoke;
    v10[3] = &unk_1E70DECE8;
    v11 = asyncCopy;
    [v5 fetchUserControllableViewsSyncStatusAsync:v9 reply:v10];
  }

  else
  {
    (*(asyncCopy + 2))(asyncCopy, 0, v6);
  }
}

void __58__OTClique_fetchUserControllableViewsSyncingEnabledAsync___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope("clique-user-sync-async");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = v5;
      v8 = "fetching user-controllable-sync-async status errored: %@";
LABEL_8:
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, v8, &v10, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = @"paused";
    if (a2)
    {
      v9 = @"enabled";
    }

    v10 = 138412290;
    v11 = v9;
    v8 = "fetched user-controllable-sync-async status as : %@";
    goto LABEL_8;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2);
}

- (BOOL)fetchUserControllableViewsSyncingEnabled:(id *)enabled
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5565;
  v17 = __Block_byref_object_dispose__5566;
  v18 = 0;
  v5 = [(OTClique *)self makeOTControl:?];
  if (v5)
  {
    v6 = [OTControlArguments alloc];
    v7 = [(OTClique *)self ctx];
    v8 = [(OTControlArguments *)v6 initWithConfiguration:v7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__OTClique_fetchUserControllableViewsSyncingEnabled___block_invoke;
    v12[3] = &unk_1E70D6E18;
    v12[4] = &v19;
    v12[5] = &v13;
    [v5 fetchUserControllableViewsSyncStatus:v8 reply:v12];

    v9 = v14[5];
    if (v9 && enabled)
    {
      *enabled = v9;
    }

    v10 = *(v20 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10 & 1;
}

void __53__OTClique_fetchUserControllableViewsSyncingEnabled___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope("clique-user-sync");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v12 = 138412290;
      v13 = v5;
      v8 = "fetching user-controllable-sync status errored: %@";
LABEL_8:
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, v8, &v12, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = @"paused";
    if (a2)
    {
      v9 = @"enabled";
    }

    v12 = 138412290;
    v13 = v9;
    v8 = "fetched user-controllable-sync status as : %@";
    goto LABEL_8;
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
}

- (BOOL)setOctagonUserControllableViewsSyncEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x1E69E9840];
  v7 = [(OTClique *)self makeOTControl:error];
  if (v7)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__5565;
    v22 = __Block_byref_object_dispose__5566;
    v23 = 0;
    v8 = secLogObjForScope("clique-user-sync");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"paused";
      if (enabledCopy)
      {
        v9 = @"enabled";
      }

      *buf = 138412290;
      v25 = v9;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "setting user-controllable-sync status to %@", buf, 0xCu);
    }

    v10 = [OTControlArguments alloc];
    v11 = [(OTClique *)self ctx];
    v12 = [(OTControlArguments *)v10 initWithConfiguration:v11];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__OTClique_setOctagonUserControllableViewsSyncEnabled_error___block_invoke;
    v17[3] = &unk_1E70D6DF0;
    v17[4] = &v18;
    [v7 setUserControllableViewsSyncStatus:v12 enabled:enabledCopy reply:v17];

    v13 = v19;
    if (error)
    {
      v14 = v19[5];
      if (v14)
      {
        *error = v14;
        v13 = v19;
      }
    }

    v15 = v13[5] == 0;
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __61__OTClique_setOctagonUserControllableViewsSyncEnabled_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope("clique-user-sync");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "setting user-controllable-sync status errored: %@", &v11, 0xCu);
    }

    v8 = *(*(a1 + 32) + 8);
    v9 = v5;
    v6 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else if (v7)
  {
    v10 = @"paused";
    if (a2)
    {
      v10 = @"enabled";
    }

    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "setting user-controllable-sync status succeeded, now : %@", &v11, 0xCu);
  }
}

- (BOOL)joinAfterRestore:(id *)restore
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope("clique-recovery");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTClique *)self ctx];
    context = [v6 context];
    v8 = [(OTClique *)self ctx];
    altDSID = [v8 altDSID];
    *buf = 138412546;
    *v37 = context;
    *&v37[8] = 2112;
    *&v37[10] = altDSID;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "joinAfterRestore for context:%@, altdsid:%@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "JoinAfterRestore", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v37 = v11;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: JoinAfterRestore  enableTelemetry=YES ", buf, 0xCu);
  }

  if (+[OTClique platformSupportsSOS])
  {
    v33 = 0;
    v17 = SOSCCRequestToJoinCircleAfterRestore(&v33);
    if (restore)
    {
      *restore = v33;
    }

    else
    {
    }

    v26 = secLogObjForScope("clique-recovery");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (restore)
      {
        v27 = *restore;
      }

      else
      {
        v27 = @"no error pointer provided";
      }

      *buf = 67109378;
      *v37 = v17;
      *&v37[4] = 2112;
      *&v37[6] = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "joinAfterRestore complete: %d %@", buf, 0x12u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v29 = _OctagonSignpostLogSystem();
    v30 = v29;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 67240192;
      *v37 = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v30, OS_SIGNPOST_INTERVAL_END, v11, "JoinAfterRestore", " OctagonSignpostNameJoinAfterRestore=%{public,signpost.telemetry:number1,name=OctagonSignpostNameJoinAfterRestore}d ", buf, 8u);
    }

    v31 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v37 = v11;
      *&v37[8] = 2048;
      *&v37[10] = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v17;
      _os_log_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: JoinAfterRestore  OctagonSignpostNameJoinAfterRestore=%{public,signpost.telemetry:number1,name=OctagonSignpostNameJoinAfterRestore}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v18 = secLogObjForScope("clique-recovery");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform, returning NO", buf, 2u);
    }

    if (restore)
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A768];
      v34 = *MEMORY[0x1E696A578];
      v35 = @"join after restore unimplemented";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *restore = [v19 errorWithDomain:v20 code:-4 userInfo:v21];
    }

    v22 = _OctagonSignpostGetNanoseconds(v11, v12);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 67240192;
      *v37 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v11, "JoinAfterRestore", " OctagonSignpostNameJoinAfterRestore=%{public,signpost.telemetry:number1,name=OctagonSignpostNameJoinAfterRestore}d ", buf, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v37 = v11;
      *&v37[8] = 2048;
      *&v37[10] = v22 / 1000000000.0;
      v38 = 1026;
      v39 = 0;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: JoinAfterRestore  OctagonSignpostNameJoinAfterRestore=%{public,signpost.telemetry:number1,name=OctagonSignpostNameJoinAfterRestore}d ", buf, 0x1Cu);
    }

    LOBYTE(v17) = 0;
  }

  return v17;
}

- (id)peerDeviceNamesByPeerID:(id *)d
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope("clique");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTClique *)self ctx];
    context = [v6 context];
    v8 = [(OTClique *)self ctx];
    altDSID = [v8 altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "peerDeviceNamesByPeerID invoked using context:%@, altdsid:%@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PeerDeviceNamesByPeerID", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v11;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PeerDeviceNamesByPeerID  enableTelemetry=YES ", buf, 0xCu);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = [(OTClique *)self makeOTControl:d];
  if (v18)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v54 = __Block_byref_object_copy__5565;
    v55 = __Block_byref_object_dispose__5566;
    v56 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__5565;
    v45 = __Block_byref_object_dispose__5566;
    v46 = 0;
    v19 = [OTControlArguments alloc];
    v20 = [(OTClique *)self ctx];
    v21 = [(OTControlArguments *)v19 initWithConfiguration:v20];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __36__OTClique_peerDeviceNamesByPeerID___block_invoke;
    v40[3] = &unk_1E70D6DC8;
    v40[4] = buf;
    v40[5] = &v41;
    [v18 peerDeviceNamesByPeerID:v21 reply:v40];

    v22 = *&buf[8];
    if (d)
    {
      v23 = *(*&buf[8] + 40);
      if (v23)
      {
        *d = v23;
        v22 = *&buf[8];
      }
    }

    if (*(v22 + 40))
    {
      Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
      v25 = _OctagonSignpostLogSystem();
      v26 = v25;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        *v47 = 67240192;
        LODWORD(v48) = 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v26, OS_SIGNPOST_INTERVAL_END, v11, "PeerDeviceNamesByPeerID", " OctagonSignpostNamePeerDeviceNamesByPeerID=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeerDeviceNamesByPeerID}d ", v47, 8u);
      }

      v27 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v47 = 134218496;
        v48 = v11;
        v49 = 2048;
        v50 = Nanoseconds / 1000000000.0;
        v51 = 1026;
        v52 = 0;
        _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PeerDeviceNamesByPeerID  OctagonSignpostNamePeerDeviceNamesByPeerID=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeerDeviceNamesByPeerID}d ", v47, 0x1Cu);
      }

      v28 = 0;
    }

    else
    {
      [dictionary addEntriesFromDictionary:v42[5]];
      v33 = secLogObjForScope("clique");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v42[5] count];
        *v47 = 134217984;
        v48 = v34;
        _os_log_impl(&dword_1887D2000, v33, OS_LOG_TYPE_DEFAULT, "Received %lu Octagon peers", v47, 0xCu);
      }

      v35 = _OctagonSignpostGetNanoseconds(v11, v12);
      v36 = _OctagonSignpostLogSystem();
      v37 = v36;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        *v47 = 67240192;
        LODWORD(v48) = 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v37, OS_SIGNPOST_INTERVAL_END, v11, "PeerDeviceNamesByPeerID", " OctagonSignpostNamePeerDeviceNamesByPeerID=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeerDeviceNamesByPeerID}d ", v47, 8u);
      }

      v38 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *v47 = 134218496;
        v48 = v11;
        v49 = 2048;
        v50 = v35 / 1000000000.0;
        v51 = 1026;
        v52 = 0;
        _os_log_impl(&dword_1887D2000, v38, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PeerDeviceNamesByPeerID  OctagonSignpostNamePeerDeviceNamesByPeerID=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeerDeviceNamesByPeerID}d ", v47, 0x1Cu);
      }

      v28 = dictionary;
    }

    _Block_object_dispose(&v41, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v29 = _OctagonSignpostGetNanoseconds(v11, v12);
    v30 = _OctagonSignpostLogSystem();
    v31 = v30;
    if (v15 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v30))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v31, OS_SIGNPOST_INTERVAL_END, v11, "PeerDeviceNamesByPeerID", " OctagonSignpostNamePeerDeviceNamesByPeerID=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeerDeviceNamesByPeerID}d ", buf, 8u);
    }

    v32 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v29 / 1000000000.0;
      *&buf[22] = 1026;
      LODWORD(v54) = 0;
      _os_log_impl(&dword_1887D2000, v32, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PeerDeviceNamesByPeerID  OctagonSignpostNamePeerDeviceNamesByPeerID=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePeerDeviceNamesByPeerID}d ", buf, 0x1Cu);
    }

    v28 = 0;
  }

  return v28;
}

void __36__OTClique_peerDeviceNamesByPeerID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = secLogObjForScope("clique");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v15 = 138412290;
      v16 = v6;
      v9 = "peerDeviceNamesByPeerID errored: %@";
LABEL_6:
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v9, &v15, 0xCu);
    }
  }

  else if (v8)
  {
    v15 = 138412290;
    v16 = v5;
    v9 = "peerDeviceNamesByPeerID succeeded: %@";
    goto LABEL_6;
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v5;
}

- (BOOL)leaveClique:(id *)clique
{
  v73 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope("clique-leaveClique");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OTClique *)self ctx];
    context = [v6 context];
    v8 = [(OTClique *)self ctx];
    altDSID = [v8 altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "leaveClique invoked using context:%@, altdsid:%@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v60 = mach_continuous_time();

  v12 = _OctagonSignpostLogSystem();
  v13 = v12;
  v14 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "LeaveClique", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v11;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: LeaveClique  enableTelemetry=YES ", buf, 0xCu);
  }

  v16 = [(OTClique *)self makeOTControl:clique];
  if (v16)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v70 = __Block_byref_object_copy__5565;
    v71 = __Block_byref_object_dispose__5566;
    v72 = 0;
    v17 = objc_alloc_init(OTOperationConfiguration);
    v18 = *&buf[8];
    obj = *(*&buf[8] + 40);
    v19 = [(OTClique *)self fetchCliqueStatus:v17 error:&obj];
    objc_storeStrong((v18 + 40), obj);

    if (*(*&buf[8] + 40))
    {
      v20 = secLogObjForScope("clique-leaveClique");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(*&buf[8] + 40);
        *v63 = 138412290;
        v64 = v21;
        _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "fetching current status errored: %@", v63, 0xCu);
      }

      if (clique)
      {
        *clique = *(*&buf[8] + 40);
      }

      Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v60);
      v23 = _OctagonSignpostLogSystem();
      v24 = v23;
      if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *v63 = 67240192;
        LODWORD(v64) = 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v11, "LeaveClique", " OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", v63, 8u);
      }

      v25 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 134218496;
        v64 = v11;
        v65 = 2048;
        v66 = Nanoseconds / 1000000000.0;
        v67 = 1026;
        v68 = 0;
        _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: LeaveClique  OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", v63, 0x1Cu);
      }

      v26 = 0;
    }

    else if (v19 == 1)
    {
      v31 = secLogObjForScope("clique-leaveClique");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEFAULT, "current status is Not In; no need to leave", v63, 2u);
      }

      v32 = _OctagonSignpostGetNanoseconds(v11, v60);
      v33 = _OctagonSignpostLogSystem();
      v34 = v33;
      if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *v63 = 67240192;
        LODWORD(v64) = 1;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v34, OS_SIGNPOST_INTERVAL_END, v11, "LeaveClique", " OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", v63, 8u);
      }

      v25 = _OctagonSignpostLogSystem();
      v26 = 1;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 134218496;
        v64 = v11;
        v65 = 2048;
        v66 = v32 / 1000000000.0;
        v67 = 1026;
        v68 = 1;
        _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: LeaveClique  OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", v63, 0x1Cu);
      }
    }

    else
    {
      v35 = [OTControlArguments alloc];
      v36 = [(OTClique *)self ctx];
      v37 = [(OTControlArguments *)v35 initWithConfiguration:v36];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __24__OTClique_leaveClique___block_invoke;
      v61[3] = &unk_1E70E0B18;
      v61[4] = buf;
      [v16 leaveClique:v37 reply:v61];

      if (clique)
      {
        *clique = *(*&buf[8] + 40);
      }

      v55 = *(*&buf[8] + 40);
      v26 = v55 == 0;
      v54 = objc_alloc(getAAFAnalyticsEventSecurityClass());
      v59 = [(OTClique *)self ctx];
      altDSID2 = [v59 altDSID];
      v58 = [(OTClique *)self ctx];
      flowID = [v58 flowID];
      v38 = [(OTClique *)self ctx];
      deviceSessionID = [v38 deviceSessionID];
      v40 = getkSecurityRTCEventNameOctagonTrustLost();
      v41 = [(OTClique *)self ctx];
      testsEnabled = [v41 testsEnabled];
      v43 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
      LOBYTE(v53) = 1;
      v25 = [v54 initWithKeychainCircleMetrics:0 altDSID:altDSID2 flowID:flowID deviceSessionID:deviceSessionID eventName:v40 testsAreEnabled:testsEnabled canSendMetrics:v53 category:v43];

      v44 = MEMORY[0x1E696ABC0];
      v45 = getkSecurityRTCErrorDomain();
      v46 = [v44 errorWithDomain:v45 code:6 description:@"API invoked departure"];
      [v25 sendMetricWithResult:1 error:v46];

      v47 = secLogObjForScope("clique-leaveClique");
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 67109120;
        LODWORD(v64) = v55 == 0;
        _os_log_impl(&dword_1887D2000, v47, OS_LOG_TYPE_DEFAULT, "leaveClique complete: %d", v63, 8u);
      }

      v48 = _OctagonSignpostGetNanoseconds(v11, v60);
      v49 = _OctagonSignpostLogSystem();
      v50 = v49;
      if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
      {
        *v63 = 67240192;
        LODWORD(v64) = v55 == 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v50, OS_SIGNPOST_INTERVAL_END, v11, "LeaveClique", " OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", v63, 8u);
      }

      v51 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 134218496;
        v64 = v11;
        v65 = 2048;
        v66 = v48 / 1000000000.0;
        v67 = 1026;
        v68 = v55 == 0;
        _os_log_impl(&dword_1887D2000, v51, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: LeaveClique  OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", v63, 0x1Cu);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v27 = _OctagonSignpostGetNanoseconds(v11, v60);
    v28 = _OctagonSignpostLogSystem();
    v29 = v28;
    if (v14 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v28))
    {
      *buf = 67240192;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v29, OS_SIGNPOST_INTERVAL_END, v11, "LeaveClique", " OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", buf, 8u);
    }

    v30 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v27 / 1000000000.0;
      *&buf[22] = 1026;
      LODWORD(v70) = 0;
      _os_log_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: LeaveClique  OctagonSignpostNameLeaveClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameLeaveClique}d ", buf, 0x1Cu);
    }

    v26 = 0;
  }

  return v26;
}

void __24__OTClique_leaveClique___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-leaveClique");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "leaveClique errored: %@", &v8, 0xCu);
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = v3;
    v4 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else if (v5)
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "leaveClique success.", &v8, 2u);
  }
}

- (BOOL)removeFriendsInClique:(id)clique error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  cliqueCopy = clique;
  v6 = secLogObjForScope("clique-removefriends");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(OTClique *)self ctx];
    context = [v7 context];
    v9 = [(OTClique *)self ctx];
    altDSID = [v9 altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "removeFriendsInClique invoked using context:%@, altdsid:%@", buf, 0x16u);
  }

  v11 = _OctagonSignpostLogSystem();
  v12 = os_signpost_id_generate(v11);
  v42 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v41 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "RemoveFriendsInClique", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v12;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RemoveFriendsInClique  enableTelemetry=YES ", buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v18 = cliqueCopy;
  v19 = [v18 countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v19)
  {
    v20 = *v48;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v48 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v47 + 1) + 8 * i);
        if ([v22 hasPrefix:@"SHA256:"])
        {
          v23 = array;
        }

        else
        {
          v23 = array2;
        }

        [v23 addObject:v22];
      }

      v19 = [v18 countByEnumeratingWithState:&v47 objects:v61 count:16];
    }

    while (v19);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v58 = __Block_byref_object_copy__5565;
  v59 = __Block_byref_object_dispose__5566;
  v60 = 0;
  if (![array count])
  {
    goto LABEL_23;
  }

  v24 = [(OTClique *)self makeOTControl:error];
  if (v24)
  {
    v25 = secLogObjForScope("clique-removefriends");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 138412290;
      v52 = array;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "octagon: removing octagon friends: %@", v51, 0xCu);
    }

    v26 = [OTControlArguments alloc];
    v27 = [(OTClique *)self ctx];
    v28 = [(OTControlArguments *)v26 initWithConfiguration:v27];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __40__OTClique_removeFriendsInClique_error___block_invoke;
    v44[3] = &unk_1E70D6DA0;
    v46 = buf;
    v45 = array;
    [v24 removeFriendsInClique:v28 peerIDs:v45 reply:v44];

LABEL_23:
    if (error)
    {
      v29 = *(*&buf[8] + 40);
      if (v29)
      {
        *error = v29;
      }
    }

    v30 = secLogObjForScope("clique-removefriends");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 67109120;
      LODWORD(v52) = 1;
      _os_log_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEFAULT, "removeFriendsInClique complete: %d", v51, 8u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v12, v42);
    v32 = _OctagonSignpostLogSystem();
    v33 = v32;
    if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *v51 = 67240192;
      LODWORD(v52) = 1;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v33, OS_SIGNPOST_INTERVAL_END, v12, "RemoveFriendsInClique", " OctagonSignpostNameRemoveFriendsInClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveFriendsInClique}d ", v51, 8u);
    }

    v34 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 134218496;
      v52 = v12;
      v53 = 2048;
      v54 = Nanoseconds / 1000000000.0;
      v55 = 1026;
      v56 = 1;
      _os_log_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveFriendsInClique  OctagonSignpostNameRemoveFriendsInClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveFriendsInClique}d ", v51, 0x1Cu);
    }

    v35 = *(*&buf[8] + 40) == 0;
    goto LABEL_40;
  }

  v36 = _OctagonSignpostGetNanoseconds(v12, v42);
  v37 = _OctagonSignpostLogSystem();
  v38 = v37;
  if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *v51 = 67240192;
    LODWORD(v52) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v38, OS_SIGNPOST_INTERVAL_END, v12, "RemoveFriendsInClique", " OctagonSignpostNameRemoveFriendsInClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveFriendsInClique}d ", v51, 8u);
  }

  v39 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *v51 = 134218496;
    v52 = v12;
    v53 = 2048;
    v54 = v36 / 1000000000.0;
    v55 = 1026;
    v56 = 0;
    _os_log_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveFriendsInClique  OctagonSignpostNameRemoveFriendsInClique=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveFriendsInClique}d ", v51, 0x1Cu);
  }

  v35 = 0;
LABEL_40:
  _Block_object_dispose(buf, 8);

  return v35;
}

void __40__OTClique_removeFriendsInClique_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-removefriends");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "removeFriendsInClique failed: unable to remove friends: %@", &v9, 0xCu);
    }

    v6 = *(*(a1 + 40) + 8);
    v7 = v3;
    v4 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else if (v5)
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "octagon: friends removed: %@", &v9, 0xCu);
  }
}

- (int64_t)cachedCliqueStatus:(BOOL)status error:(id *)error
{
  statusCopy = status;
  v7 = objc_alloc_init(OTOperationConfiguration);
  [(OTOperationConfiguration *)v7 setTimeoutWaitForCKAccount:0];
  if (statusCopy)
  {
    [(OTOperationConfiguration *)v7 setUseCachedAccountStatus:1];
  }

  v8 = [(OTClique *)self _fetchCliqueStatus:v7 error:error];

  return v8;
}

- (int64_t)fetchCliqueStatus:(id *)status
{
  v5 = objc_alloc_init(OTOperationConfiguration);
  [(OTOperationConfiguration *)v5 setTimeoutWaitForCKAccount:0];
  v6 = [(OTClique *)self _fetchCliqueStatus:v5 error:status];

  return v6;
}

- (int64_t)_fetchCliqueStatus:(id)status error:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = -1;
  v6 = _OctagonSignpostLogSystem();
  v7 = os_signpost_id_generate(v6);
  v48 = mach_continuous_time();

  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchCliqueStatus", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v7;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchCliqueStatus  enableTelemetry=YES ", buf, 0xCu);
  }

  v12 = [(OTClique *)self makeOTControl:error];
  if (v12)
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__5565;
    v60 = __Block_byref_object_dispose__5566;
    v61 = 0;
    v13 = [OTControlArguments alloc];
    v14 = [(OTClique *)self ctx];
    v15 = [(OTControlArguments *)v13 initWithConfiguration:v14];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __37__OTClique__fetchCliqueStatus_error___block_invoke;
    v55[3] = &unk_1E70D6D50;
    v55[4] = &v62;
    v55[5] = &v56;
    [v12 fetchCliqueStatus:v15 configuration:statusCopy reply:v55];

    if (_fetchCliqueStatus_error__onceToken != -1)
    {
      dispatch_once(&_fetchCliqueStatus_error__onceToken, &__block_literal_global_305);
    }

    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__OTClique__fetchCliqueStatus_error___block_invoke_2;
    block[3] = &unk_1E70D6D78;
    block[4] = self;
    block[5] = &v51;
    block[6] = &v62;
    dispatch_sync(_fetchCliqueStatus_error__statusReturnsQueue, block);
    if (v57[5] || ![statusCopy useCachedAccountStatus] || *(v52 + 24) == 1)
    {
      v16 = secLogObjForScope("clique-status");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if ([statusCopy useCachedAccountStatus])
        {
          v17 = &unk_188967DD7;
        }

        else
        {
          v17 = "non-";
        }

        v18 = [(OTClique *)self ctx];
        context = [v18 context];
        v20 = [(OTClique *)self ctx];
        altDSID = [v20 altDSID];
        v22 = altDSID;
        v23 = v63[3] + 1;
        if (v23 > 5)
        {
          v24 = @"CliqueStatusIn";
        }

        else
        {
          v24 = off_1E70D6FD0[v23];
        }

        v31 = v57[5];
        *buf = 136447234;
        *&buf[4] = v17;
        v67 = 2112;
        v68 = *&context;
        v69 = 2112;
        v70 = altDSID;
        v71 = 2112;
        v72 = v24;
        v73 = 2112;
        v74 = v31;
        _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "cliqueStatus(%{public}scached)(context:%@, altDSID:%@) returning %@ (error: %@)", buf, 0x34u);
      }
    }

    else
    {
      v16 = secLogObjForScope("clique-status");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        if ([statusCopy useCachedAccountStatus])
        {
          v39 = &unk_188967DD7;
        }

        else
        {
          v39 = "non-";
        }

        v40 = [(OTClique *)self ctx];
        context2 = [v40 context];
        v42 = [(OTClique *)self ctx];
        altDSID2 = [v42 altDSID];
        v44 = altDSID2;
        v45 = v63[3] + 1;
        if (v45 > 5)
        {
          v46 = @"CliqueStatusIn";
        }

        else
        {
          v46 = off_1E70D6FD0[v45];
        }

        v47 = v57[5];
        *buf = 136447234;
        *&buf[4] = v39;
        v67 = 2112;
        v68 = *&context2;
        v69 = 2112;
        v70 = altDSID2;
        v71 = 2112;
        v72 = v46;
        v73 = 2112;
        v74 = v47;
        _os_log_debug_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEBUG, "cliqueStatus(%{public}scached)(context:%@, altDSID:%@) returning %@ (error: %@)", buf, 0x34u);
      }
    }

    _Block_object_dispose(&v51, 8);
    v32 = 1;
    if (error)
    {
      v33 = v57[5];
      if (v33)
      {
        v32 = 0;
        *error = v33;
      }
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v7, v48);
    v35 = _OctagonSignpostLogSystem();
    v36 = v35;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 67240192;
      *&buf[4] = v32;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v36, OS_SIGNPOST_INTERVAL_END, v7, "FetchCliqueStatus", " OctagonSignpostNameFetchCliqueStatus=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchCliqueStatus}d ", buf, 8u);
    }

    v37 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v7;
      v67 = 2048;
      v68 = Nanoseconds / 1000000000.0;
      v69 = 1026;
      LODWORD(v70) = v32;
      _os_log_impl(&dword_1887D2000, v37, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCliqueStatus  OctagonSignpostNameFetchCliqueStatus=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchCliqueStatus}d ", buf, 0x1Cu);
    }

    v30 = v63[3];
    _Block_object_dispose(&v56, 8);
  }

  else
  {
    v25 = secLogObjForScope("clique-status");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "cliqueStatus noOTControl", buf, 2u);
    }

    v26 = _OctagonSignpostGetNanoseconds(v7, v48);
    v27 = _OctagonSignpostLogSystem();
    v28 = v27;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 67240192;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v28, OS_SIGNPOST_INTERVAL_END, v7, "FetchCliqueStatus", " OctagonSignpostNameFetchCliqueStatus=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchCliqueStatus}d ", buf, 8u);
    }

    v29 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v7;
      v67 = 2048;
      v68 = v26 / 1000000000.0;
      v69 = 1026;
      LODWORD(v70) = 0;
      _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCliqueStatus  OctagonSignpostNameFetchCliqueStatus=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchCliqueStatus}d ", buf, 0x1Cu);
    }

    v30 = -1;
  }

  _Block_object_dispose(&v62, 8);
  return v30;
}

void __37__OTClique__fetchCliqueStatus_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  if (v6)
  {
    *(v7 + 24) = -1;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v8 = secLogObjForScope("clique-status");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "octagon clique status errored: %@", &v9, 0xCu);
    }
  }

  else
  {
    *(v7 + 24) = a2;
  }
}

uint64_t __37__OTClique__fetchCliqueStatus_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) ctx];
  v9 = [v2 context];

  if (!v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_9;
  }

  v3 = [_fetchCliqueStatus_error__statusReturns objectForKeyedSubscript:?];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
    v6 = *(*(*(a1 + 48) + 8) + 24);
    if (v5 == v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  [_fetchCliqueStatus_error__statusReturns setObject:v7 forKeyedSubscript:v9];

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_8:

LABEL_9:

  return MEMORY[0x1EEE66BE0]();
}

uint64_t __37__OTClique__fetchCliqueStatus_error___block_invoke_303()
{
  v0 = dispatch_queue_create("status_returns", 0);
  v1 = _fetchCliqueStatus_error__statusReturnsQueue;
  _fetchCliqueStatus_error__statusReturnsQueue = v0;

  _fetchCliqueStatus_error__statusReturns = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

- (id)setupPairingChannelAsAcceptor:(id)acceptor error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return [(OTClique *)self setupPairingChannelAsAcceptor:acceptor];
}

- (id)setupPairingChannelAsAcceptor:(id)acceptor
{
  v28 = *MEMORY[0x1E69E9840];
  acceptorCopy = acceptor;
  altDSID = [acceptorCopy altDSID];
  if (altDSID)
  {
  }

  else
  {
    v14 = [(OTClique *)self ctx];
    altDSID2 = [v14 altDSID];

    if (altDSID2)
    {
      v16 = secLogObjForScope("octagon-account");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(OTClique *)self ctx];
        altDSID3 = [v17 altDSID];
        v24 = 138412290;
        v25 = altDSID3;
        _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "Configuring pairing channel with configured altDSID: %@", &v24, 0xCu);
      }

      v11 = [(OTClique *)self ctx];
      altDSID4 = [v11 altDSID];
      [acceptorCopy setAltDSID:altDSID4];
      goto LABEL_11;
    }
  }

  altDSID5 = [acceptorCopy altDSID];

  if (!altDSID5)
  {
    goto LABEL_15;
  }

  altDSID6 = [acceptorCopy altDSID];
  v8 = [(OTClique *)self ctx];
  altDSID7 = [v8 altDSID];
  v10 = [altDSID6 isEqualToString:altDSID7];

  v11 = secLogObjForScope("octagon-account");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v12)
    {
      altDSID8 = [acceptorCopy altDSID];
      v20 = [(OTClique *)self ctx];
      altDSID9 = [v20 altDSID];
      v24 = 138412546;
      v25 = altDSID8;
      v26 = 2112;
      v27 = altDSID9;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Pairing channel context configured with altDSID (%@) which does not match Clique altDSID (%@), possible issues ahead", &v24, 0x16u);
    }

    goto LABEL_14;
  }

  if (v12)
  {
    altDSID4 = [acceptorCopy altDSID];
    v24 = 138412290;
    v25 = altDSID4;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Pairing channel context already configured with altDSID: %@", &v24, 0xCu);
LABEL_11:
  }

LABEL_14:

LABEL_15:
  v22 = [getKCPairingChannelClass() pairingChannelAcceptor:acceptorCopy];

  return v22;
}

- (id)setupPairingChannelAsInitator:(id)initator error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return [(OTClique *)self setupPairingChannelAsInitiator:initator];
}

- (id)setupPairingChannelAsInitiator:(id)initiator
{
  v28 = *MEMORY[0x1E69E9840];
  initiatorCopy = initiator;
  altDSID = [initiatorCopy altDSID];
  if (altDSID)
  {
  }

  else
  {
    v14 = [(OTClique *)self ctx];
    altDSID2 = [v14 altDSID];

    if (altDSID2)
    {
      v16 = secLogObjForScope("octagon-account");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(OTClique *)self ctx];
        altDSID3 = [v17 altDSID];
        v24 = 138412290;
        v25 = altDSID3;
        _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "Configuring pairing channel with configured altDSID: %@", &v24, 0xCu);
      }

      v11 = [(OTClique *)self ctx];
      altDSID4 = [v11 altDSID];
      [initiatorCopy setAltDSID:altDSID4];
      goto LABEL_11;
    }
  }

  altDSID5 = [initiatorCopy altDSID];

  if (!altDSID5)
  {
    goto LABEL_15;
  }

  altDSID6 = [initiatorCopy altDSID];
  v8 = [(OTClique *)self ctx];
  altDSID7 = [v8 altDSID];
  v10 = [altDSID6 isEqualToString:altDSID7];

  v11 = secLogObjForScope("octagon-account");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v12)
    {
      altDSID8 = [initiatorCopy altDSID];
      v20 = [(OTClique *)self ctx];
      altDSID9 = [v20 altDSID];
      v24 = 138412546;
      v25 = altDSID8;
      v26 = 2112;
      v27 = altDSID9;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Pairing channel context configured with altDSID (%@) which does not match Clique altDSID (%@), possible issues ahead", &v24, 0x16u);
    }

    goto LABEL_14;
  }

  if (v12)
  {
    altDSID4 = [initiatorCopy altDSID];
    v24 = 138412290;
    v25 = altDSID4;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Pairing channel context already configured with altDSID: %@", &v24, 0xCu);
LABEL_11:
  }

LABEL_14:

LABEL_15:
  v22 = [getKCPairingChannelClass() pairingChannelInitiator:initiatorCopy];

  return v22;
}

- (BOOL)resetAndEstablish:(int64_t)establish idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s accountSettings:(id)settings isGuitarfish:(BOOL)guitarfish accountIsW:(BOOL)w altDSID:(id)self0 flowID:(id)self1 deviceSessionID:(id)self2 canSendMetrics:(BOOL)self3 error:(id *)self4
{
  sCopy = s;
  v68 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  passwordCopy = password;
  settingsCopy = settings;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  v20 = secLogObjForScope("clique-resetandestablish");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "resetAndEstablish started", buf, 2u);
  }

  v21 = _OctagonSignpostLogSystem();
  v22 = os_signpost_id_generate(v21);
  v23 = mach_continuous_time();

  v24 = _OctagonSignpostLogSystem();
  v25 = v24;
  v26 = v22 - 1;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v22, "ResetAndEstablish", " enableTelemetry=YES ", buf, 2u);
  }

  v27 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v22;
    _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: ResetAndEstablish  enableTelemetry=YES ", buf, 0xCu);
  }

  v28 = [(OTClique *)self makeOTControl:error];
  if (v28)
  {
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v65 = __Block_byref_object_copy__5565;
    v66 = __Block_byref_object_dispose__5566;
    v67 = 0;
    v29 = [OTControlArguments alloc];
    v30 = [(OTClique *)self ctx];
    v31 = [(OTControlArguments *)v29 initWithConfiguration:v30];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __174__OTClique_resetAndEstablish_idmsTargetContext_idmsCuttlefishPassword_notifyIdMS_accountSettings_isGuitarfish_accountIsW_altDSID_flowID_deviceSessionID_canSendMetrics_error___block_invoke;
    v53[3] = &unk_1E70D6D00;
    v53[4] = &v54;
    v53[5] = buf;
    BYTE1(v46) = w;
    LOBYTE(v46) = guitarfish;
    [v28 resetAndEstablish:v31 resetReason:establish idmsTargetContext:contextCopy idmsCuttlefishPassword:passwordCopy notifyIdMS:sCopy accountSettings:settingsCopy isGuitarfish:v46 accountIsW:v53 reply:{dCopy, iDCopy, sessionIDCopy}];

    if (error)
    {
      v32 = *(*&buf[8] + 40);
      if (v32)
      {
        *error = v32;
      }
    }

    v33 = secLogObjForScope("clique-resetandestablish");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(v55 + 24);
      *v58 = 67109120;
      LODWORD(v59) = v34;
      _os_log_impl(&dword_1887D2000, v33, OS_LOG_TYPE_DEFAULT, "establish complete: %{BOOL}d", v58, 8u);
    }

    v35 = *(v55 + 24);
    Nanoseconds = _OctagonSignpostGetNanoseconds(v22, v23);
    v37 = _OctagonSignpostLogSystem();
    v38 = v37;
    if (v26 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *v58 = 67240192;
      LODWORD(v59) = v35;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v38, OS_SIGNPOST_INTERVAL_END, v22, "ResetAndEstablish", " OctagonSignpostNameResetAndEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameResetAndEstablish}d ", v58, 8u);
    }

    v39 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *v58 = 134218496;
      v59 = v22;
      v60 = 2048;
      v61 = Nanoseconds / 1000000000.0;
      v62 = 1026;
      v63 = v35;
      _os_log_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: ResetAndEstablish  OctagonSignpostNameResetAndEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameResetAndEstablish}d ", v58, 0x1Cu);
    }

    v40 = *(v55 + 24);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v54, 8);
  }

  else
  {
    v41 = _OctagonSignpostGetNanoseconds(v22, v23);
    v42 = _OctagonSignpostLogSystem();
    v43 = v42;
    if (v26 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v42))
    {
      *buf = 67240192;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v43, OS_SIGNPOST_INTERVAL_END, v22, "ResetAndEstablish", " OctagonSignpostNameResetAndEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameResetAndEstablish}d ", buf, 8u);
    }

    v44 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v22;
      *&buf[12] = 2048;
      *&buf[14] = v41 / 1000000000.0;
      *&buf[22] = 1026;
      LODWORD(v65) = 0;
      _os_log_impl(&dword_1887D2000, v44, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: ResetAndEstablish  OctagonSignpostNameResetAndEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameResetAndEstablish}d ", buf, 0x1Cu);
    }

    v40 = 0;
  }

  return v40 & 1;
}

void __174__OTClique_resetAndEstablish_idmsTargetContext_idmsCuttlefishPassword_notifyIdMS_accountSettings_isGuitarfish_accountIsW_altDSID_flowID_deviceSessionID_canSendMetrics_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("clique-resetandestablish");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "resetAndEstablish returned an error: %@", &v7, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v3 == 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)establish:(id)establish error:(id *)error
{
  v81 = *MEMORY[0x1E69E9840];
  establishCopy = establish;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v6 = secLogObjForScope("clique-establish");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "establish started", &buf, 2u);
  }

  v7 = objc_alloc(getAAFAnalyticsEventSecurityClass());
  altDSID = [establishCopy altDSID];
  flowID = [establishCopy flowID];
  deviceSessionID = [establishCopy deviceSessionID];
  *v79 = 0;
  *&v79[8] = v79;
  *&v79[16] = 0x2020000000;
  v11 = getkSecurityRTCEventNameEstablishSymbolLoc_ptr;
  v80 = getkSecurityRTCEventNameEstablishSymbolLoc_ptr;
  if (!getkSecurityRTCEventNameEstablishSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v75 = __getkSecurityRTCEventNameEstablishSymbolLoc_block_invoke;
    v76 = &unk_1E70E1270;
    v77 = v79;
    v12 = KeychainCircleLibrary();
    v13 = dlsym(v12, "kSecurityRTCEventNameEstablish");
    *(*(v77 + 1) + 24) = v13;
    getkSecurityRTCEventNameEstablishSymbolLoc_ptr = *(*(v77 + 1) + 24);
    v11 = *(*&v79[8] + 24);
  }

  _Block_object_dispose(v79, 8);
  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNameEstablish(void)"];
    [currentHandler handleFailureInFunction:v64 file:@"OTClique.m" lineNumber:82 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v14 = *v11;
  v15 = [(OTClique *)self ctx];
  testsEnabled = [v15 testsEnabled];
  v17 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
  LOBYTE(v65) = 1;
  v18 = [v7 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v14 testsAreEnabled:testsEnabled canSendMetrics:v65 category:v17];

  v19 = _OctagonSignpostLogSystem();
  v20 = os_signpost_id_generate(v19);
  v21 = mach_continuous_time();

  v22 = _OctagonSignpostLogSystem();
  v23 = v22;
  v24 = v20 - 1;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v20, "Establish", " enableTelemetry=YES ", &buf, 2u);
  }

  v25 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v20;
    _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: Establish  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__5565;
  v77 = __Block_byref_object_dispose__5566;
  v78 = 0;
  obj = 0;
  v26 = [(OTClique *)self makeOTControl:&obj];
  objc_storeStrong(&v78, obj);
  if (v26 && !*(*(&buf + 1) + 40))
  {
    v68 = 0;
    v32 = [(OTClique *)self fetchCliqueStatus:&v68];
    v33 = v68;
    if (v33)
    {
      v34 = secLogObjForScope("clique-establish");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *v79 = 138412290;
        *&v79[4] = v33;
        _os_log_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEFAULT, "fetching clique status failed: %@", v79, 0xCu);
      }

      v35 = v33;
      if (error)
      {
        v36 = v33;
        *error = v33;
      }

      Nanoseconds = _OctagonSignpostGetNanoseconds(v20, v21);
      v38 = _OctagonSignpostLogSystem();
      v39 = v38;
      if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        *v79 = 67240192;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v39, OS_SIGNPOST_INTERVAL_END, v20, "Establish", " OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v79, 8u);
      }

      v40 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *v79 = 134218496;
        *&v79[4] = v20;
        *&v79[12] = 2048;
        *&v79[14] = Nanoseconds / 1000000000.0;
        *&v79[22] = 1026;
        LODWORD(v80) = 0;
        _os_log_impl(&dword_1887D2000, v40, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: Establish  OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v79, 0x1Cu);
      }

      [v18 sendMetricWithResult:0 error:v35];
      v31 = 0;
    }

    else if (v32 == 3)
    {
      v41 = [OTControlArguments alloc];
      v35 = 0;
      v42 = [(OTClique *)self ctx];
      v43 = [(OTControlArguments *)v41 initWithConfiguration:v42];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __28__OTClique_establish_error___block_invoke;
      v67[3] = &unk_1E70D6D00;
      v67[4] = &v70;
      v67[5] = &buf;
      [v26 establish:v43 reply:v67];

      v44 = secLogObjForScope("clique-establish");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = *(v71 + 24);
        *v79 = 67109120;
        *&v79[4] = v45;
        _os_log_impl(&dword_1887D2000, v44, OS_LOG_TYPE_DEFAULT, "establish complete: %{BOOL}d", v79, 8u);
      }

      v46 = *(*(&buf + 1) + 40);
      if (v46)
      {
        if (error)
        {
          v47 = v46;
          *error = v46;
          v46 = *(*(&buf + 1) + 40);
        }

        [v18 sendMetricWithResult:0 error:v46];
        v48 = _OctagonSignpostGetNanoseconds(v20, v21);
        v49 = _OctagonSignpostLogSystem();
        v50 = v49;
        if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
        {
          *v79 = 67240192;
          _os_signpost_emit_with_name_impl(&dword_1887D2000, v50, OS_SIGNPOST_INTERVAL_END, v20, "Establish", " OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v79, 8u);
        }

        v51 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *v79 = 134218496;
          *&v79[4] = v20;
          *&v79[12] = 2048;
          *&v79[14] = v48 / 1000000000.0;
          *&v79[22] = 1026;
          LODWORD(v80) = 0;
          _os_log_impl(&dword_1887D2000, v51, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: Establish  OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v79, 0x1Cu);
        }

        v31 = 0;
      }

      else
      {
        v54 = _OctagonSignpostGetNanoseconds(v20, v21);
        v55 = _OctagonSignpostLogSystem();
        v56 = v55;
        if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
        {
          *v79 = 67240192;
          *&v79[4] = 1;
          _os_signpost_emit_with_name_impl(&dword_1887D2000, v56, OS_SIGNPOST_INTERVAL_END, v20, "Establish", " OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v79, 8u);
        }

        v57 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *v79 = 134218496;
          *&v79[4] = v20;
          *&v79[12] = 2048;
          *&v79[14] = v54 / 1000000000.0;
          *&v79[22] = 1026;
          LODWORD(v80) = 1;
          _os_log_impl(&dword_1887D2000, v57, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: Establish  OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v79, 0x1Cu);
        }

        [v18 sendMetricWithResult:1 error:0];
        v31 = *(v71 + 24);
      }
    }

    else
    {
      v52 = secLogObjForScope("clique-establish");
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        if ((v32 + 1) > 5)
        {
          v53 = @"CliqueStatusIn";
        }

        else
        {
          v53 = off_1E70D7000[v32 + 1];
        }

        *v79 = 138412290;
        *&v79[4] = v53;
        _os_log_impl(&dword_1887D2000, v52, OS_LOG_TYPE_DEFAULT, "clique status is %@; performing no Octagon actions", v79, 0xCu);
      }

      v35 = 0;
      v58 = _OctagonSignpostGetNanoseconds(v20, v21);
      v59 = _OctagonSignpostLogSystem();
      v60 = v59;
      if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
      {
        *v79 = 67240192;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v60, OS_SIGNPOST_INTERVAL_END, v20, "Establish", " OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v79, 8u);
      }

      v61 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *v79 = 134218496;
        *&v79[4] = v20;
        *&v79[12] = 2048;
        *&v79[14] = v58 / 1000000000.0;
        *&v79[22] = 1026;
        LODWORD(v80) = 0;
        _os_log_impl(&dword_1887D2000, v61, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: Establish  OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v79, 0x1Cu);
      }

      v31 = 1;
      [v18 sendMetricWithResult:1 error:0];
    }
  }

  else
  {
    v27 = _OctagonSignpostGetNanoseconds(v20, v21);
    v28 = _OctagonSignpostLogSystem();
    v29 = v28;
    if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *v79 = 67240192;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v29, OS_SIGNPOST_INTERVAL_END, v20, "Establish", " OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v79, 8u);
    }

    v30 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v79 = 134218496;
      *&v79[4] = v20;
      *&v79[12] = 2048;
      *&v79[14] = v27 / 1000000000.0;
      *&v79[22] = 1026;
      LODWORD(v80) = 0;
      _os_log_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: Establish  OctagonSignpostNameEstablish=%{public,signpost.telemetry:number1,name=OctagonSignpostNameEstablish}d ", v79, 0x1Cu);
    }

    [v18 sendMetricWithResult:0 error:*(*(&buf + 1) + 40)];
    v31 = 0;
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v70, 8);

  return v31 & 1;
}

void __28__OTClique_establish_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("clique-establish");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "establish returned an error: %@", &v7, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v3 == 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)establish:(id *)establish
{
  v5 = objc_alloc_init(OTConfigurationContext);
  LOBYTE(establish) = [(OTClique *)self establish:v5 error:establish];

  return establish;
}

- (id)makeOTControl:(id *)control
{
  v4 = [(OTClique *)self ctx];
  v5 = [v4 makeOTControl:control];

  return v5;
}

- (id)cliqueMemberIdentifier:(id *)identifier
{
  v72 = *MEMORY[0x1E69E9840];
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__5565;
  v63 = __Block_byref_object_dispose__5566;
  v64 = 0;
  v4 = _OctagonSignpostLogSystem();
  spid = os_signpost_id_generate(v4);
  v49 = mach_continuous_time();

  v5 = _OctagonSignpostLogSystem();
  v6 = v5;
  v48 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v6, OS_SIGNPOST_INTERVAL_BEGIN, spid, "FetchEgoPeer", " enableTelemetry=YES ", &buf, 2u);
  }

  v7 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = spid;
    _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchEgoPeer  enableTelemetry=YES ", &buf, 0xCu);
  }

  v50 = objc_alloc(getAAFAnalyticsEventSecurityClass());
  v52 = [(OTClique *)self ctx];
  altDSID = [v52 altDSID];
  v9 = [(OTClique *)self ctx];
  flowID = [v9 flowID];
  v11 = [(OTClique *)self ctx];
  deviceSessionID = [v11 deviceSessionID];
  *v70 = 0;
  *&v70[8] = v70;
  *&v70[16] = 0x2020000000;
  v13 = getkSecurityRTCEventNameCliqueMemberIdentifierSymbolLoc_ptr;
  v71 = getkSecurityRTCEventNameCliqueMemberIdentifierSymbolLoc_ptr;
  if (!getkSecurityRTCEventNameCliqueMemberIdentifierSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v66 = __getkSecurityRTCEventNameCliqueMemberIdentifierSymbolLoc_block_invoke;
    v67 = &unk_1E70E1270;
    v68 = v70;
    v14 = KeychainCircleLibrary();
    v15 = dlsym(v14, "kSecurityRTCEventNameCliqueMemberIdentifier");
    *(*(v68 + 1) + 24) = v15;
    getkSecurityRTCEventNameCliqueMemberIdentifierSymbolLoc_ptr = *(*(v68 + 1) + 24);
    v13 = *(*&v70[8] + 24);
  }

  _Block_object_dispose(v70, 8);
  if (!v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNameCliqueMemberIdentifier(void)"];
    [currentHandler handleFailureInFunction:v45 file:@"OTClique.m" lineNumber:78 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v16 = *v13;
  v17 = [(OTClique *)self ctx];
  testsEnabled = [v17 testsEnabled];
  v19 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
  LOBYTE(v46) = 1;
  v51 = [v50 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v16 testsAreEnabled:testsEnabled canSendMetrics:v46 category:v19];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__5565;
  v68 = __Block_byref_object_dispose__5566;
  v69 = 0;
  obj = 0;
  v20 = [(OTClique *)self makeOTControl:&obj];
  objc_storeStrong(&v69, obj);
  if (v20)
  {
    v21 = [OTControlArguments alloc];
    v22 = [(OTClique *)self ctx];
    v23 = [(OTControlArguments *)v21 initWithConfiguration:v22];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __35__OTClique_cliqueMemberIdentifier___block_invoke;
    v54[3] = &unk_1E70D6CD8;
    p_buf = &buf;
    v55 = v51;
    v57 = &v59;
    [v20 fetchEgoPeerID:v23 reply:v54];

    v24 = *(*(&buf + 1) + 40);
    if (v24)
    {
      if (identifier)
      {
        *identifier = v24;
      }

      Nanoseconds = _OctagonSignpostGetNanoseconds(spid, v49);
      v26 = _OctagonSignpostLogSystem();
      v27 = v26;
      if (v48 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *v70 = 67240192;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v27, OS_SIGNPOST_INTERVAL_END, spid, "FetchEgoPeer", " OctagonSignpostNameFetchEgoPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEgoPeer}d ", v70, 8u);
      }

      v28 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v70 = 134218496;
        *&v70[4] = spid;
        *&v70[12] = 2048;
        *&v70[14] = Nanoseconds / 1000000000.0;
        *&v70[22] = 1026;
        LODWORD(v71) = 0;
        _os_log_impl(&dword_1887D2000, v28, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEgoPeer  OctagonSignpostNameFetchEgoPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEgoPeer}d ", v70, 0x1Cu);
      }

      v29 = 0;
    }

    else
    {
      v36 = secLogObjForScope("clique");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v60[5];
        *v70 = 138412290;
        *&v70[4] = v37;
        _os_log_impl(&dword_1887D2000, v36, OS_LOG_TYPE_DEFAULT, "cliqueMemberIdentifier complete: %@", v70, 0xCu);
      }

      v38 = v60[5];
      v39 = _OctagonSignpostGetNanoseconds(spid, v49);
      v40 = _OctagonSignpostLogSystem();
      v41 = v40;
      if (v48 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *v70 = 67240192;
        *&v70[4] = v38 != 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v41, OS_SIGNPOST_INTERVAL_END, spid, "FetchEgoPeer", " OctagonSignpostNameFetchEgoPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEgoPeer}d ", v70, 8u);
      }

      v42 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v70 = 134218496;
        *&v70[4] = spid;
        *&v70[12] = 2048;
        *&v70[14] = v39 / 1000000000.0;
        *&v70[22] = 1026;
        LODWORD(v71) = v38 != 0;
        _os_log_impl(&dword_1887D2000, v42, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEgoPeer  OctagonSignpostNameFetchEgoPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEgoPeer}d ", v70, 0x1Cu);
      }

      v29 = v60[5];
    }
  }

  else
  {
    v30 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(*(&buf + 1) + 40);
      *v70 = 138412290;
      *&v70[4] = v31;
      _os_log_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEFAULT, "octagon: Failed to create OTControl: %@", v70, 0xCu);
    }

    v32 = _OctagonSignpostGetNanoseconds(spid, v49);
    v33 = _OctagonSignpostLogSystem();
    v34 = v33;
    if (v48 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *v70 = 67240192;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v34, OS_SIGNPOST_INTERVAL_END, spid, "FetchEgoPeer", " OctagonSignpostNameFetchEgoPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEgoPeer}d ", v70, 8u);
    }

    v35 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v70 = 134218496;
      *&v70[4] = spid;
      *&v70[12] = 2048;
      *&v70[14] = v32 / 1000000000.0;
      *&v70[22] = 1026;
      LODWORD(v71) = 0;
      _os_log_impl(&dword_1887D2000, v35, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEgoPeer  OctagonSignpostNameFetchEgoPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEgoPeer}d ", v70, 0x1Cu);
    }

    [v51 sendMetricWithResult:0 error:*(*(&buf + 1) + 40)];
    v29 = 0;
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v59, 8);

  return v29;
}

void __35__OTClique_cliqueMemberIdentifier___block_invoke(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "octagon: Failed to fetch octagon peer ID: %@", &v12, 0xCu);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    v9 = a1[4];
    v10 = 0;
    v11 = v7;
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    v9 = a1[4];
    v10 = v6 != 0;
    v11 = 0;
  }

  [v9 sendMetricWithResult:v10 error:v11];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(OTClique *)self ctx];
  altDSID = [v4 altDSID];
  v6 = [(OTClique *)self ctx];
  context = [v6 context];
  cliqueMemberIdentifier = [(OTClique *)self cliqueMemberIdentifier];
  v9 = [v3 stringWithFormat:@"<OTClique: altDSID:%@ contextID:%@ memberID:%@>", altDSID, context, cliqueMemberIdentifier];

  return v9;
}

- (OTClique)initWithContextData:(id)data
{
  dataCopy = data;
  v24.receiver = self;
  v24.super_class = OTClique;
  v5 = [(OTClique *)&v24 init];
  if (v5)
  {
    v6 = objc_alloc_init(OTConfigurationContext);
    ctx = v5->_ctx;
    v5->_ctx = v6;

    context = [dataCopy context];
    v9 = context;
    if (context)
    {
      v10 = context;
    }

    else
    {
      v10 = OTDefaultContext;
    }

    [(OTConfigurationContext *)v5->_ctx setContext:v10];

    containerName = [dataCopy containerName];
    [(OTConfigurationContext *)v5->_ctx setContainerName:containerName];

    dsid = [dataCopy dsid];
    v13 = [dsid copy];
    [(OTConfigurationContext *)v5->_ctx setDsid:v13];

    altDSID = [dataCopy altDSID];
    v15 = [altDSID copy];
    [(OTConfigurationContext *)v5->_ctx setAltDSID:v15];

    otControl = [dataCopy otControl];
    [(OTConfigurationContext *)v5->_ctx setOtControl:otControl];

    ckksControl = [dataCopy ckksControl];
    [(OTConfigurationContext *)v5->_ctx setCkksControl:ckksControl];

    -[OTConfigurationContext setEscrowFetchSource:](v5->_ctx, "setEscrowFetchSource:", [dataCopy escrowFetchSource]);
    -[OTConfigurationContext setOverrideForSetupAccountScript:](v5->_ctx, "setOverrideForSetupAccountScript:", [dataCopy overrideForSetupAccountScript]);
    v18 = [dataCopy sbd];
    [(OTConfigurationContext *)v5->_ctx setSbd:v18];

    flowID = [dataCopy flowID];
    v20 = [flowID copy];
    [(OTConfigurationContext *)v5->_ctx setFlowID:v20];

    deviceSessionID = [dataCopy deviceSessionID];
    v22 = [deviceSessionID copy];
    [(OTConfigurationContext *)v5->_ctx setDeviceSessionID:v22];
  }

  return v5;
}

+ (BOOL)performCKServerUnreadableDataRemoval:(id)removal error:(id *)error
{
  v62[2] = *MEMORY[0x1E69E9840];
  removalCopy = removal;
  isGuitarfish = [removalCopy isGuitarfish];
  v6 = MEMORY[0x1E695E110];
  if (isGuitarfish)
  {
    v7 = MEMORY[0x1E695E118];
  }

  else
  {
    v7 = MEMORY[0x1E695E110];
  }

  v43 = objc_alloc(getAAFAnalyticsEventSecurityClass());
  v8 = getkSecurityRTCFieldAccountIsG();
  v61[0] = v8;
  v62[0] = v7;
  v9 = getkSecurityRTCFieldAccountIsDBR();
  v61[1] = v9;
  v62[1] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
  altDSID = [removalCopy altDSID];
  flowID = [removalCopy flowID];
  deviceSessionID = [removalCopy deviceSessionID];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v14 = getkSecurityRTCEventNamePerformCKServerUnreadableDataRemovalSymbolLoc_ptr;
  v50 = getkSecurityRTCEventNamePerformCKServerUnreadableDataRemovalSymbolLoc_ptr;
  if (!getkSecurityRTCEventNamePerformCKServerUnreadableDataRemovalSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v57 = __getkSecurityRTCEventNamePerformCKServerUnreadableDataRemovalSymbolLoc_block_invoke;
    v58 = &unk_1E70E1270;
    v59 = &v47;
    v15 = KeychainCircleLibrary();
    v16 = dlsym(v15, "kSecurityRTCEventNamePerformCKServerUnreadableDataRemoval");
    *(*(v59 + 1) + 24) = v16;
    getkSecurityRTCEventNamePerformCKServerUnreadableDataRemovalSymbolLoc_ptr = *(*(v59 + 1) + 24);
    v14 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v14)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNamePerformCKServerUnreadableDataRemoval(void)"];
    [currentHandler handleFailureInFunction:v41 file:@"OTClique.m" lineNumber:83 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v17 = *v14;
  testsEnabled = [removalCopy testsEnabled];
  v19 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
  LOBYTE(v42) = 1;
  v20 = [v43 initWithKeychainCircleMetrics:v10 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v17 testsAreEnabled:testsEnabled canSendMetrics:v42 category:v19];

  v53 = 0;
  v21 = [removalCopy makeOTControl:&v53];
  v22 = v53;
  if (v21)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__5565;
    v59 = __Block_byref_object_dispose__5566;
    v60 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__5565;
    v51 = __Block_byref_object_dispose__5566;
    v52 = 0;
    v23 = [[OTControlArguments alloc] initWithConfiguration:removalCopy];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __55__OTClique_performCKServerUnreadableDataRemoval_error___block_invoke;
    v46[3] = &unk_1E70D6FA8;
    v46[4] = &v47;
    [v21 fetchAccountWideSettingsWithForceFetch:1 arguments:v23 reply:v46];
    hasWalrus = [v48[5] hasWalrus];
    v25 = MEMORY[0x1E695E110];
    if (hasWalrus)
    {
      walrus = [v48[5] walrus];
      enabled = [walrus enabled];
      v28 = MEMORY[0x1E695E118];
      if (!enabled)
      {
        v28 = v25;
      }

      v25 = v28;
    }

    v29 = getkSecurityRTCFieldAccountIsW();
    v54 = v29;
    v55 = v25;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    [v20 addMetrics:v30];

    isGuitarfish2 = [removalCopy isGuitarfish];
    v32 = [v25 isEqualToNumber:MEMORY[0x1E695E118]];
    altDSID2 = [removalCopy altDSID];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __55__OTClique_performCKServerUnreadableDataRemoval_error___block_invoke_403;
    v45[3] = &unk_1E70E0B18;
    v45[4] = &buf;
    [v21 performCKServerUnreadableDataRemoval:v23 isGuitarfish:isGuitarfish2 accountIsW:v32 altDSID:altDSID2 reply:v45];

    v34 = *(*(&buf + 1) + 40);
    v35 = v34 == 0;
    if (v34)
    {
      if (error)
      {
        v34 = v34;
        *error = v34;
      }

      v36 = *(*(&buf + 1) + 40);
    }

    else
    {
      v36 = 0;
    }

    [v20 sendMetricWithResult:v34 == 0 error:v36];

    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v37 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v22;
      _os_log_impl(&dword_1887D2000, v37, OS_LOG_TYPE_DEFAULT, "clique-perform-ckserver-unreadable-data-removal: unable to create otcontrol: %@", &buf, 0xCu);
    }

    if (error)
    {
      v38 = v22;
      *error = v22;
    }

    [v20 sendMetricWithResult:0 error:v22];
    v35 = 0;
  }

  return v35;
}

void __55__OTClique_performCKServerUnreadableDataRemoval_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: failed to fetch account settings: %@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = secLogObjForScope("clique-reset-protected-data");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "fetched account settings: %@", &v11, 0xCu);
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = v5;
    v7 = *(v9 + 40);
    *(v9 + 40) = v10;
  }
}

void __55__OTClique_performCKServerUnreadableDataRemoval_error___block_invoke_403(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "clique-perform-ckserver-unreadable-data-removal: failed to remove data from ckserver: %@", &v8, 0xCu);
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = v3;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  else
  {
    v7 = secLogObjForScope("clique-perform-ckserver-unreadable-data-removal");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "removed unreadable data from ckserver", &v8, 2u);
    }
  }
}

+ (BOOL)clearCliqueFromAccount:(id)account error:(id *)error
{
  v84 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  isGuitarfish = [accountCopy isGuitarfish];
  v5 = MEMORY[0x1E695E110];
  if (isGuitarfish)
  {
    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    v6 = MEMORY[0x1E695E110];
  }

  v7 = objc_alloc(getAAFAnalyticsEventSecurityClass());
  v8 = getkSecurityRTCFieldAccountIsG();
  v79[0] = v8;
  v80[0] = v6;
  v9 = getkSecurityRTCFieldAccountIsDBR();
  v79[1] = v9;
  v80[1] = v5;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
  altDSID = [accountCopy altDSID];
  flowID = [accountCopy flowID];
  deviceSessionID = [accountCopy deviceSessionID];
  *&v81 = 0;
  *(&v81 + 1) = &v81;
  v82 = 0x2020000000;
  v14 = getkSecurityRTCEventNameClearCliqueFromAccountSymbolLoc_ptr;
  v83 = getkSecurityRTCEventNameClearCliqueFromAccountSymbolLoc_ptr;
  if (!getkSecurityRTCEventNameClearCliqueFromAccountSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v73 = __getkSecurityRTCEventNameClearCliqueFromAccountSymbolLoc_block_invoke;
    v74 = &unk_1E70E1270;
    v75 = &v81;
    v15 = KeychainCircleLibrary();
    *(*(&v81 + 1) + 24) = dlsym(v15, "kSecurityRTCEventNameClearCliqueFromAccount");
    getkSecurityRTCEventNameClearCliqueFromAccountSymbolLoc_ptr = *(*(v75 + 1) + 24);
    v14 = *(*(&v81 + 1) + 24);
  }

  _Block_object_dispose(&v81, 8);
  if (!v14)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNameClearCliqueFromAccount(void)"];
    [currentHandler handleFailureInFunction:v66 file:@"OTClique.m" lineNumber:84 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v16 = *v14;
  testsEnabled = [accountCopy testsEnabled];
  v18 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
  LOBYTE(v67) = 1;
  v19 = [v7 initWithKeychainCircleMetrics:v10 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v16 testsAreEnabled:testsEnabled canSendMetrics:v67 category:v18];

  if (+[OTClique isCloudServicesAvailable])
  {
    v71 = 0;
    v20 = [accountCopy makeOTControl:&v71];
    v21 = v71;
    if (!v20)
    {
      v29 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v21;
        _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "clique-reset-account-data: unable to create otcontrol: %@", &buf, 0xCu);
      }

      if (error)
      {
        v30 = v21;
        *error = v21;
      }

      [v19 sendMetricWithResult:0 error:v21];
      v28 = 0;
      goto LABEL_47;
    }

    v22 = [accountCopy sbd];
    v24 = v22;
    if (v22)
    {
      v25 = v22;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v23);
      v25 = [objc_alloc(*(v31 + 3448)) initWithUserActivityLabel:@"clique-clear-from-account"];
    }

    v32 = v25;

    authenticationAppleID = [accountCopy authenticationAppleID];
    v34 = authenticationAppleID == 0;

    if (v34)
    {
      v55 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1887D2000, v55, OS_LOG_TYPE_DEFAULT, "clique-reset-account-data: authenticationAppleID not set on configuration context", &buf, 2u);
      }

      v51 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.octagon" code:83 description:@"authenticationAppleID missing from configuration context"];
      [v19 sendMetricWithResult:0 error:v51];
    }

    else
    {
      passwordEquivalentToken = [accountCopy passwordEquivalentToken];
      v36 = passwordEquivalentToken == 0;

      if (!v36)
      {
        Helper_x8__kSecureBackupAuthenticationAppleID = gotLoadHelper_x8__kSecureBackupAuthenticationAppleID(v37);
        v77[0] = **(v39 + 3528);
        authenticationAppleID2 = [accountCopy authenticationAppleID];
        v78[0] = authenticationAppleID2;
        Helper_x8__kSecureBackupAuthenticationPassword = gotLoadHelper_x8__kSecureBackupAuthenticationPassword(v41);
        v77[1] = **(v43 + 3592);
        passwordEquivalentToken2 = [accountCopy passwordEquivalentToken];
        v78[1] = passwordEquivalentToken2;
        v46 = gotLoadHelper_x8__kSecureBackupiCloudDataProtectionDeleteAllRecordsKey(v45);
        Helper_x9__kSecureBackupContainsiCDPDataKey = gotLoadHelper_x9__kSecureBackupContainsiCDPDataKey(v46);
        v49 = **(v48 + 3672);
        v77[2] = v50;
        v77[3] = v49;
        v78[2] = MEMORY[0x1E695E118];
        v78[3] = MEMORY[0x1E695E118];
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:{4, Helper_x9__kSecureBackupContainsiCDPDataKey}];

        v52 = [v32 disableWithInfo:v51];
        if (v52)
        {
          v53 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v52;
            _os_log_impl(&dword_1887D2000, v53, OS_LOG_TYPE_DEFAULT, "clique-reset-account-data: secure backup escrow record deletion failed: %@", &buf, 0xCu);
          }

          if (error)
          {
            v54 = v52;
            *error = v52;
          }

          [v19 sendMetricWithResult:0 error:v52];
          v28 = 0;
        }

        else
        {
          v57 = secLogObjForScope("clique-reset-account-data");
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1887D2000, v57, OS_LOG_TYPE_DEFAULT, "sbd disableWithInfo succeeded", &buf, 2u);
          }

          *&buf = 0;
          *(&buf + 1) = &buf;
          v73 = 0x3032000000;
          v74 = __Block_byref_object_copy__5565;
          v75 = __Block_byref_object_dispose__5566;
          v76 = 0;
          v58 = [[OTControlArguments alloc] initWithConfiguration:accountCopy];
          isGuitarfish2 = [accountCopy isGuitarfish];
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = 3221225472;
          v70[2] = __41__OTClique_clearCliqueFromAccount_error___block_invoke;
          v70[3] = &unk_1E70E0B18;
          v70[4] = &buf;
          [v20 clearCliqueFromAccount:v58 resetReason:1 isGuitarfish:isGuitarfish2 reply:v70];

          v60 = *(*(&buf + 1) + 40);
          v28 = v60 == 0;
          if (v60)
          {
            v61 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v62 = *(*(&buf + 1) + 40);
              LODWORD(v81) = 138412290;
              *(&v81 + 4) = v62;
              _os_log_impl(&dword_1887D2000, v61, OS_LOG_TYPE_DEFAULT, "clique-reset-account-data: account reset failed: %@", &v81, 0xCu);
            }

            if (error)
            {
              *error = *(*(&buf + 1) + 40);
            }

            v63 = *(*(&buf + 1) + 40);
          }

          else
          {
            v63 = 0;
          }

          [v19 sendMetricWithResult:v60 == 0 error:v63];
          _Block_object_dispose(&buf, 8);
        }

        goto LABEL_46;
      }

      v56 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1887D2000, v56, OS_LOG_TYPE_DEFAULT, "clique-reset-account-data: passwordEquivalentToken not set on configuration context", &buf, 2u);
      }

      v51 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.octagon" code:84 description:@"passwordEquivalentToken missing from configuration context"];
      [v19 sendMetricWithResult:0 error:v51];
    }

    v28 = 0;
LABEL_46:

LABEL_47:
    goto LABEL_48;
  }

  v26 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  v21 = v26;
  if (error)
  {
    v27 = v26;
    *error = v21;
  }

  [v19 sendMetricWithResult:0 error:v21];
  v28 = 0;
LABEL_48:

  return v28;
}

void __41__OTClique_clearCliqueFromAccount_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "clique-reset-account-data: failed to reset: %@", &v8, 0xCu);
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = v3;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  else
  {
    v7 = secLogObjForScope("clique-reset-account-data");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "reset octagon", &v8, 2u);
    }
  }
}

+ (id)resetProtectedData:(id)data idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s error:(id *)error
{
  sCopy = s;
  v191 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  contextCopy = context;
  passwordCopy = password;
  v158 = dataCopy;
  isGuitarfish = [dataCopy isGuitarfish];
  v11 = MEMORY[0x1E695E110];
  if (isGuitarfish)
  {
    v11 = MEMORY[0x1E695E118];
  }

  v153 = v11;
  v12 = objc_alloc(getAAFAnalyticsEventSecurityClass());
  v13 = getkSecurityRTCFieldAccountIsG();
  v185[0] = v13;
  v186[0] = v153;
  v14 = getkSecurityRTCFieldAccountIsDBR();
  v185[1] = v14;
  v186[1] = MEMORY[0x1E695E110];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v186 forKeys:v185 count:2];
  altDSID = [v158 altDSID];
  flowID = [v158 flowID];
  deviceSessionID = [v158 deviceSessionID];
  *&v187 = 0;
  *(&v187 + 1) = &v187;
  v188 = 0x2020000000;
  v19 = getkSecurityRTCEventNameResetProtectedDataSymbolLoc_ptr;
  v189 = getkSecurityRTCEventNameResetProtectedDataSymbolLoc_ptr;
  if (!getkSecurityRTCEventNameResetProtectedDataSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v179 = __getkSecurityRTCEventNameResetProtectedDataSymbolLoc_block_invoke;
    v180 = &unk_1E70E1270;
    v181 = &v187;
    v20 = KeychainCircleLibrary();
    *(*(&v187 + 1) + 24) = dlsym(v20, "kSecurityRTCEventNameResetProtectedData");
    getkSecurityRTCEventNameResetProtectedDataSymbolLoc_ptr = *(*(v181 + 1) + 24);
    v19 = *(*(&v187 + 1) + 24);
  }

  _Block_object_dispose(&v187, 8);
  if (!v19)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v123 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNameResetProtectedData(void)"];
    [currentHandler handleFailureInFunction:v123 file:@"OTClique.m" lineNumber:81 description:{@"%s", dlerror()}];

    goto LABEL_76;
  }

  v21 = *v19;
  testsEnabled = [v158 testsEnabled];
  v23 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
  LOBYTE(v128) = 1;
  v24 = [v12 initWithKeychainCircleMetrics:v15 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v21 testsAreEnabled:testsEnabled canSendMetrics:v128 category:v23];

  v161 = 0;
  v25 = [v158 makeOTControl:&v161];
  v157 = v161;
  if (v25)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v179 = 0x3032000000;
    v180 = __Block_byref_object_copy__5565;
    v181 = __Block_byref_object_dispose__5566;
    v182 = 0;
    v26 = [[OTControlArguments alloc] initWithConfiguration:v158];
    v160[0] = MEMORY[0x1E69E9820];
    v160[1] = 3221225472;
    v160[2] = __89__OTClique_resetProtectedData_idmsTargetContext_idmsCuttlefishPassword_notifyIdMS_error___block_invoke;
    v160[3] = &unk_1E70D6FA8;
    v160[4] = &buf;
    [v25 fetchAccountWideSettingsWithForceFetch:1 arguments:v26 reply:v160];
    v148 = v26;
    if ([*(*(&buf + 1) + 40) hasWalrus])
    {
      v27 = getkSecurityRTCFieldAccountIsW();
      v176 = v27;
      walrus = [*(*(&buf + 1) + 40) walrus];
      enabled = [walrus enabled];
      v30 = MEMORY[0x1E695E110];
      if (enabled)
      {
        v30 = MEMORY[0x1E695E118];
      }

      v177 = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
      [v24 addMetrics:v31];

      walrus2 = [*(*(&buf + 1) + 40) walrus];
      enabled2 = [walrus2 enabled];
      v34 = MEMORY[0x1E695E110];
      if (enabled2)
      {
        v34 = MEMORY[0x1E695E118];
      }

      v149 = v34;
    }

    else
    {
      walrus2 = getkSecurityRTCFieldAccountIsW();
      v174 = walrus2;
      v175 = MEMORY[0x1E695E110];
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
      [v24 addMetrics:v40];

      v149 = MEMORY[0x1E695E110];
    }

    if (+[OTClique isCloudServicesAvailable])
    {
      v41 = [v158 sbd];
      v43 = v41;
      if (v41)
      {
        v150 = v41;
      }

      else
      {
        gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v42);
        v150 = [objc_alloc(*(v48 + 3448)) initWithUserActivityLabel:@"clique-reset-protected-data"];
      }

      authenticationAppleID = [v158 authenticationAppleID];
      v50 = authenticationAppleID == 0;

      if (v50)
      {
        v84 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v187) = 0;
          _os_log_impl(&dword_1887D2000, v84, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: authenticationAppleID not set on configuration context", &v187, 2u);
        }

        v47 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.octagon" code:83 description:@"authenticationAppleID missing from configuration context"];
        [v24 sendMetricWithResult:0 error:v47];
      }

      else
      {
        passwordEquivalentToken = [v158 passwordEquivalentToken];
        v52 = passwordEquivalentToken == 0;

        if (!v52)
        {
          v139 = objc_alloc(getAAFAnalyticsEventSecurityClass());
          v144 = getkSecurityRTCFieldAccountIsG();
          v172[0] = v144;
          v173[0] = v153;
          v141 = getkSecurityRTCFieldAccountIsDBR();
          v172[1] = v141;
          v173[1] = MEMORY[0x1E695E110];
          v53 = getkSecurityRTCFieldAccountIsW();
          v172[2] = v53;
          v173[2] = v149;
          v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v173 forKeys:v172 count:3];
          altDSID2 = [v158 altDSID];
          flowID2 = [v158 flowID];
          deviceSessionID2 = [v158 deviceSessionID];
          cf = 0;
          p_cf = &cf;
          v164 = 0x2020000000;
          v58 = getkSecurityRTCEventNameRPDDeleteAllRecordsSymbolLoc_ptr;
          v165 = getkSecurityRTCEventNameRPDDeleteAllRecordsSymbolLoc_ptr;
          if (!getkSecurityRTCEventNameRPDDeleteAllRecordsSymbolLoc_ptr)
          {
            *&v187 = MEMORY[0x1E69E9820];
            *(&v187 + 1) = 3221225472;
            v188 = __getkSecurityRTCEventNameRPDDeleteAllRecordsSymbolLoc_block_invoke;
            v189 = &unk_1E70E1270;
            v190 = &cf;
            v59 = KeychainCircleLibrary();
            v60 = dlsym(v59, "kSecurityRTCEventNameRPDDeleteAllRecords");
            *(v190[1] + 3) = v60;
            getkSecurityRTCEventNameRPDDeleteAllRecordsSymbolLoc_ptr = *(v190[1] + 3);
            v58 = p_cf[3];
          }

          _Block_object_dispose(&cf, 8);
          if (!v58)
          {
            goto LABEL_77;
          }

          v61 = *v58;
          testsEnabled2 = [v158 testsEnabled];
          v63 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
          LOBYTE(v129) = 1;
          v140 = [v139 initWithKeychainCircleMetrics:v54 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 eventName:v61 testsAreEnabled:testsEnabled2 canSendMetrics:v129 category:v63];

          Helper_x8__kSecureBackupAuthenticationAppleID = gotLoadHelper_x8__kSecureBackupAuthenticationAppleID(v64);
          v170[0] = **(v66 + 3528);
          authenticationAppleID2 = [v158 authenticationAppleID];
          v171[0] = authenticationAppleID2;
          Helper_x8__kSecureBackupAuthenticationPassword = gotLoadHelper_x8__kSecureBackupAuthenticationPassword(v68);
          v170[1] = **(v70 + 3592);
          passwordEquivalentToken2 = [v158 passwordEquivalentToken];
          v73 = gotLoadHelper_x8__kSecureBackupiCloudDataProtectionDeleteAllRecordsKey(v72);
          Helper_x9__kSecureBackupContainsiCDPDataKey = gotLoadHelper_x9__kSecureBackupContainsiCDPDataKey(v73);
          v76 = *(v75 + 3672);
          v171[1] = v77;
          v171[2] = MEMORY[0x1E695E118];
          v171[3] = MEMORY[0x1E695E118];
          v78 = *v76;
          v170[2] = v79;
          v170[3] = v78;
          v145 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v171 forKeys:v170 count:{4, Helper_x9__kSecureBackupContainsiCDPDataKey}];

          v80 = [v150 disableWithInfo:v145];
          if (v80)
          {
            v81 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v187) = 138412290;
              *(&v187 + 4) = v80;
              _os_log_impl(&dword_1887D2000, v81, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: secure backup escrow record deletion failed: %@", &v187, 0xCu);
            }

            v82 = v80;
            if (error)
            {
              v83 = v80;
              v82 = v80;
              *error = v80;
            }

            [v140 sendMetricWithResult:0 error:v82];
            [v24 sendMetricWithResult:0 error:v80];
            v47 = 0;
            v39 = 0;
LABEL_74:

            goto LABEL_44;
          }

          v87 = secLogObjForScope("clique-reset-protected-data");
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v187) = 0;
            _os_log_impl(&dword_1887D2000, v87, OS_LOG_TYPE_DEFAULT, "sbd disableWithInfo succeeded", &v187, 2u);
          }

          [v140 sendMetricWithResult:1 error:0];
          if (!SOSCCIsSOSTrustAndSyncingEnabledCachedValue())
          {
            v98 = secLogObjForScope("clique-reset-protected-data");
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v187) = 0;
              _os_log_impl(&dword_1887D2000, v98, OS_LOG_TYPE_DEFAULT, "platform does not support sos", &v187, 2u);
            }

            goto LABEL_64;
          }

          v88 = objc_alloc(getAAFAnalyticsEventSecurityClass());
          v142 = getkSecurityRTCFieldAccountIsG();
          v168[0] = v142;
          v169[0] = v153;
          v137 = getkSecurityRTCFieldAccountIsDBR();
          v168[1] = v137;
          v169[1] = MEMORY[0x1E695E110];
          v134 = getkSecurityRTCFieldAccountIsW();
          v168[2] = v134;
          v169[2] = v149;
          v133 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v169 forKeys:v168 count:3];
          altDSID3 = [v158 altDSID];
          flowID3 = [v158 flowID];
          deviceSessionID3 = [v158 deviceSessionID];
          cf = 0;
          p_cf = &cf;
          v164 = 0x2020000000;
          v92 = getkSecurityRTCEventNameResetSOSSymbolLoc_ptr;
          v165 = getkSecurityRTCEventNameResetSOSSymbolLoc_ptr;
          if (!getkSecurityRTCEventNameResetSOSSymbolLoc_ptr)
          {
            *&v187 = MEMORY[0x1E69E9820];
            *(&v187 + 1) = 3221225472;
            v188 = __getkSecurityRTCEventNameResetSOSSymbolLoc_block_invoke;
            v189 = &unk_1E70E1270;
            v190 = &cf;
            v93 = KeychainCircleLibrary();
            v94 = dlsym(v93, "kSecurityRTCEventNameResetSOS");
            *(v190[1] + 3) = v94;
            getkSecurityRTCEventNameResetSOSSymbolLoc_ptr = *(v190[1] + 3);
            v92 = p_cf[3];
          }

          _Block_object_dispose(&cf, 8);
          if (v92)
          {
            v95 = *v92;
            testsEnabled3 = [v158 testsEnabled];
            v97 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
            LOBYTE(v130) = 1;
            v98 = [v88 initWithKeychainCircleMetrics:v133 altDSID:altDSID3 flowID:flowID3 deviceSessionID:deviceSessionID3 eventName:v95 testsAreEnabled:testsEnabled3 canSendMetrics:v130 category:v97];

            cf = 0;
            v99 = SOSCCResetToOffering(&cf);
            if (((cf == 0) & v99) != 0)
            {
              v100 = secLogObjForScope("clique-reset-protected-data");
              if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v187) = 0;
                _os_log_impl(&dword_1887D2000, v100, OS_LOG_TYPE_DEFAULT, "sos reset succeeded", &v187, 2u);
              }

              [v98 sendMetricWithResult:1 error:0];
            }

            else
            {
              v101 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v187) = 138412290;
                *(&v187 + 4) = cf;
                _os_log_impl(&dword_1887D2000, v101, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: sos reset failed: %@, ignoring error and continuing with reset", &v187, 0xCu);
              }

              [v98 sendMetricWithResult:0 error:cf];
              v102 = cf;
              if (cf)
              {
                cf = 0;
                CFRelease(v102);
              }
            }

LABEL_64:

            v143 = [[OTClique alloc] initWithContextData:v158];
            v103 = *(*(&buf + 1) + 40);
            isGuitarfish2 = [v158 isGuitarfish];
            v105 = [v149 isEqualToNumber:MEMORY[0x1E695E118]];
            altDSID4 = [v158 altDSID];
            flowID4 = [v158 flowID];
            deviceSessionID4 = [v158 deviceSessionID];
            v159 = 0;
            LOBYTE(v132) = 1;
            LOBYTE(v130) = v105;
            [(OTClique *)v143 resetAndEstablish:1 idmsTargetContext:contextCopy idmsCuttlefishPassword:passwordCopy notifyIdMS:sCopy accountSettings:v103 isGuitarfish:isGuitarfish2 accountIsW:v130 altDSID:altDSID4 flowID:flowID4 deviceSessionID:deviceSessionID4 canSendMetrics:v132 error:&v159];
            v47 = v159;

            if (v47)
            {
              v109 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v187) = 138412290;
                *(&v187 + 4) = v47;
                _os_log_impl(&dword_1887D2000, v109, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: account reset failed: %@", &v187, 0xCu);
              }

              if (error)
              {
                v110 = v47;
                *error = v47;
              }

              [v24 sendMetricWithResult:0 error:v47];
              v39 = 0;
            }

            else
            {
              v111 = secLogObjForScope("clique-reset-protected-data");
              if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v187) = 0;
                _os_log_impl(&dword_1887D2000, v111, OS_LOG_TYPE_DEFAULT, "Octagon account reset succeeded", &v187, 2u);
              }

              defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
              [defaultCenter postNotificationName:@"com.apple.security.resetprotecteddata.complete" object:0 userInfo:0 deliverImmediately:1];

              [v24 sendMetricWithResult:1 error:0];
              v135 = objc_alloc(getAAFAnalyticsEventSecurityClass());
              v156 = getkSecurityRTCFieldAccountIsG();
              v166[0] = v156;
              v167[0] = v153;
              v154 = getkSecurityRTCFieldAccountIsDBR();
              v166[1] = v154;
              v167[1] = MEMORY[0x1E695E110];
              v147 = getkSecurityRTCFieldAccountIsW();
              v166[2] = v147;
              v167[2] = v149;
              v138 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v167 forKeys:v166 count:3];
              altDSID5 = [v158 altDSID];
              flowID5 = [v158 flowID];
              deviceSessionID5 = [v158 deviceSessionID];
              v116 = getkSecurityRTCEventNameOctagonTrustLost();
              testsEnabled4 = [v158 testsEnabled];
              v118 = getkSecurityRTCEventCategoryAccountDataAccessRecovery();
              LOBYTE(v131) = 1;
              v136 = [v135 initWithKeychainCircleMetrics:v138 altDSID:altDSID5 flowID:flowID5 deviceSessionID:deviceSessionID5 eventName:v116 testsAreEnabled:testsEnabled4 canSendMetrics:v131 category:v118];

              v119 = MEMORY[0x1E696ABC0];
              v120 = getkSecurityRTCErrorDomain();
              v121 = [v119 errorWithDomain:v120 code:8 description:@"User initiated an RPD flow"];
              [v136 sendMetricWithResult:1 error:v121];

              v39 = v143;
            }

            goto LABEL_74;
          }

          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v127 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNameResetSOS(void)"];
          [currentHandler2 handleFailureInFunction:v127 file:@"OTClique.m" lineNumber:89 description:{@"%s", dlerror()}];

          while (1)
          {
LABEL_76:
            __break(1u);
LABEL_77:
            currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
            v125 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNameRPDDeleteAllRecords(void)"];
            [currentHandler3 handleFailureInFunction:v125 file:@"OTClique.m" lineNumber:80 description:{@"%s", dlerror()}];
          }
        }

        v85 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v187) = 0;
          _os_log_impl(&dword_1887D2000, v85, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: passwordEquivalentToken not set on configuration context", &v187, 2u);
        }

        v47 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.octagon" code:84 description:@"passwordEquivalentToken missing from configuration context"];
        [v24 sendMetricWithResult:0 error:v47];
      }
    }

    else
    {
      v44 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
      v150 = v44;
      v45 = v44;
      if (error)
      {
        v46 = v44;
        v45 = v150;
        *error = v150;
      }

      [v24 sendMetricWithResult:0 error:v45];
      v47 = 0;
    }

    v39 = 0;
LABEL_44:

    _Block_object_dispose(&buf, 8);
    goto LABEL_45;
  }

  v35 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v157;
    _os_log_impl(&dword_1887D2000, v35, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: unable to create otcontrol: %@", &buf, 0xCu);
  }

  if (error)
  {
    v36 = v157;
    *error = v157;
  }

  v37 = getkSecurityRTCFieldAccountIsW();
  v183 = v37;
  v184 = MEMORY[0x1E695E110];
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
  [v24 addMetrics:v38];

  [v24 sendMetricWithResult:0 error:v157];
  v39 = 0;
LABEL_45:

  return v39;
}

void __89__OTClique_resetProtectedData_idmsTargetContext_idmsCuttlefishPassword_notifyIdMS_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "clique-reset-protected-data: failed to fetch account settings: %@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = secLogObjForScope("clique-reset-protected-data");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "fetched account settings: %@", &v11, 0xCu);
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = v5;
    v7 = *(v9 + 40);
    *(v9 + 40) = v10;
  }
}

+ (int64_t)getCDPStatus:(id)status error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v19 = 0;
  v6 = [statusCopy makeOTControl:&v19];
  v7 = v19;
  if (v6)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__5565;
    v23 = __Block_byref_object_dispose__5566;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v8 = [[OTControlArguments alloc] initWithConfiguration:statusCopy];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __31__OTClique_getCDPStatus_error___block_invoke;
    v14[3] = &unk_1E70D6D50;
    v14[4] = &buf;
    v14[5] = &v15;
    [v6 getCDPStatus:v8 reply:v14];

    if (error)
    {
      v9 = *(*(&buf + 1) + 40);
      if (v9)
      {
        *error = v9;
      }
    }

    v10 = v16[3];
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v11 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "octagon-cdp-status: failed to fetch OTControl object: %@", &buf, 0xCu);
    }

    if (error)
    {
      v12 = v7;
      v10 = 0;
      *error = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void __31__OTClique_getCDPStatus_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope("octagon-cdp-status");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "failed to fetch CDP status: %@", &v11, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    if (v8)
    {
      v9 = @"unknown";
      if (a2 == 1)
      {
        v9 = @"disabled";
      }

      if (a2 == 2)
      {
        v9 = @"enabled";
      }

      v10 = v9;
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "successfully fetched CDP status as %@", &v11, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

+ (BOOL)setCDPEnabled:(id)enabled error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  v15 = 0;
  v6 = [enabledCopy makeOTControl:&v15];
  v7 = v15;
  if (v6)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__5565;
    v19 = __Block_byref_object_dispose__5566;
    v20 = 0;
    v8 = [[OTControlArguments alloc] initWithConfiguration:enabledCopy];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __32__OTClique_setCDPEnabled_error___block_invoke;
    v14[3] = &unk_1E70E0B18;
    v14[4] = &buf;
    [v6 setCDPEnabled:v8 reply:v14];

    v9 = *(*(&buf + 1) + 40);
    if (error && v9)
    {
      *error = v9;
      v9 = *(*(&buf + 1) + 40);
    }

    v10 = v9 == 0;
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v11 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "octagon-setcdpenabled: failed to fetch OTControl object: %@", &buf, 0xCu);
    }

    if (error)
    {
      v12 = v7;
      v10 = 0;
      *error = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void __32__OTClique_setCDPEnabled_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("octagon-setcdpenabled");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "failed to set CDP bit: %@", &v8, 0xCu);
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = v3;
    v4 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else if (v5)
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "successfully set CDP bit", &v8, 2u);
  }
}

+ (void)createInheritanceKey:(id)key uuid:(id)uuid claimTokenData:(id)data wrappingKeyData:(id)keyData reply:(id)reply
{
  v49 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  uuidCopy = uuid;
  dataCopy = data;
  keyDataCopy = keyData;
  replyCopy = reply;
  v15 = secLogObjForScope("octagon-createinheritancekeyclaimtokenwrappingkey");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "createInheritanceKey w/claimToken+wrappingKey invoked for context: %@", &buf, 0xCu);
  }

  v17 = _OctagonSignpostLogSystem();
  v18 = os_signpost_id_generate(v17);
  v19 = mach_continuous_time();

  v20 = _OctagonSignpostLogSystem();
  v21 = v20;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v18, "CreateInheritanceKeyWithClaimTokenAndWrappingKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v22 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v18;
    _os_log_impl(&dword_1887D2000, v22, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CreateInheritanceKeyWithClaimTokenAndWrappingKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v23 = [keyCopy makeOTControl:&v39];
  v24 = v39;
  if (v23)
  {
    v25 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __75__OTClique_createInheritanceKey_uuid_claimTokenData_wrappingKeyData_reply___block_invoke;
    v34[3] = &unk_1E70D6F58;
    v37 = v18;
    v38 = v19;
    p_buf = &buf;
    v35 = replyCopy;
    [v23 createInheritanceKey:v25 uuid:uuidCopy claimTokenData:dataCopy wrappingKeyData:keyDataCopy reply:v34];
  }

  else
  {
    v26 = secLogObjForScope("octagon-createinheritancekeyclaimtokenwrappingkey");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 138412290;
      v41 = v24;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v40, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v18, v19);
    v28 = _OctagonSignpostLogSystem();
    v29 = v28;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      v30 = *(*(&buf + 1) + 24);
      *v40 = 67240192;
      LODWORD(v41) = v30;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v29, OS_SIGNPOST_INTERVAL_END, v18, "CreateInheritanceKeyWithClaimTokenAndWrappingKey", " OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey}d ", v40, 8u);
    }

    v31 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 134218496;
      v32 = *(*(&buf + 1) + 24);
      v41 = v18;
      v42 = 2048;
      v43 = Nanoseconds / 1000000000.0;
      v44 = 1026;
      v45 = v32;
      _os_log_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateInheritanceKeyWithClaimTokenAndWrappingKey  OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey}d ", v40, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v24);
  }

  _Block_object_dispose(&buf, 8);
}

void __75__OTClique_createInheritanceKey_uuid_claimTokenData_wrappingKeyData_reply___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "octagon-createinheritancekeyclaimtokenwrappingkey, failed to create octagon inheritance recovery key (w/claim+wrappingkey)", &v22, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v9 = _OctagonSignpostLogSystem();
    v10 = v9;
    v11 = a1[6];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = *(*(a1[5] + 8) + 24);
      v22 = 67240192;
      LODWORD(v23) = v12;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CreateInheritanceKeyWithClaimTokenAndWrappingKey", " OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey}d ", &v22, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v14 = *(*(a1[5] + 8) + 24);
      v23 = a1[6];
      v24 = 2048;
      v25 = Nanoseconds / 1000000000.0;
      v26 = 1026;
      v27 = v14;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateInheritanceKeyWithClaimTokenAndWrappingKey  OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey}d ", &v22, 0x1Cu);
    }
  }

  else
  {
    v15 = secLogObjForScope("octagon-createinheritancekeyclaimtokenwrappingkey");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "successfully created octagon inheritance recovery key (w/claim+wrappingkey)", &v22, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v16 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v17 = _OctagonSignpostLogSystem();
    v18 = v17;
    v19 = a1[6];
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = *(*(a1[5] + 8) + 24);
      v22 = 67240192;
      LODWORD(v23) = v20;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v18, OS_SIGNPOST_INTERVAL_END, v19, "CreateInheritanceKeyWithClaimTokenAndWrappingKey", " OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey}d ", &v22, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v21 = *(*(a1[5] + 8) + 24);
      v23 = a1[6];
      v24 = 2048;
      v25 = v16 / 1000000000.0;
      v26 = 1026;
      v27 = v21;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateInheritanceKeyWithClaimTokenAndWrappingKey  OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKeyWithClaimTokenAndWrappingKey}d ", &v22, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
}

+ (void)recreateInheritanceKey:(id)key uuid:(id)uuid oldIK:(id)k reply:(id)reply
{
  v46 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  uuidCopy = uuid;
  kCopy = k;
  replyCopy = reply;
  v13 = secLogObjForScope("octagon-recreateinheritancekey");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "recreateInheritanceKey invoked for context: %@", &buf, 0xCu);
  }

  v15 = _OctagonSignpostLogSystem();
  v16 = os_signpost_id_generate(v15);
  v17 = mach_continuous_time();

  v18 = _OctagonSignpostLogSystem();
  v19 = v18;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "RecreateInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v20 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v16;
    _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecreateInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v21 = [keyCopy makeOTControl:&v36];
  v22 = v36;
  if (v21)
  {
    v23 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __52__OTClique_recreateInheritanceKey_uuid_oldIK_reply___block_invoke;
    v31[3] = &unk_1E70D6F58;
    v34 = v16;
    v35 = v17;
    p_buf = &buf;
    v32 = replyCopy;
    [v21 recreateInheritanceKey:v23 uuid:uuidCopy oldIK:kCopy reply:v31];
  }

  else
  {
    v24 = secLogObjForScope("octagon-recreateinheritancekey");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 138412290;
      v38 = v22;
      _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v37, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v16, v17);
    v26 = _OctagonSignpostLogSystem();
    v27 = v26;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      v28 = *(*(&buf + 1) + 24);
      *v37 = 67240192;
      LODWORD(v38) = v28;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v27, OS_SIGNPOST_INTERVAL_END, v16, "RecreateInheritanceKey", " OctagonSignpostNameRecreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecreateInheritanceKey}d ", v37, 8u);
    }

    v29 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 134218496;
      v30 = *(*(&buf + 1) + 24);
      v38 = v16;
      v39 = 2048;
      v40 = Nanoseconds / 1000000000.0;
      v41 = 1026;
      v42 = v30;
      _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecreateInheritanceKey  OctagonSignpostNameRecreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecreateInheritanceKey}d ", v37, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v22);
  }

  _Block_object_dispose(&buf, 8);
}

void __52__OTClique_recreateInheritanceKey_uuid_oldIK_reply___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "octagon-recreateinheritancekey, failed to recreate octagon inheritance recovery key", &v22, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v9 = _OctagonSignpostLogSystem();
    v10 = v9;
    v11 = a1[6];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = *(*(a1[5] + 8) + 24);
      v22 = 67240192;
      LODWORD(v23) = v12;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v10, OS_SIGNPOST_INTERVAL_END, v11, "RecreateInheritanceKey", " OctagonSignpostNameRecreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecreateInheritanceKey}d ", &v22, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v14 = *(*(a1[5] + 8) + 24);
      v23 = a1[6];
      v24 = 2048;
      v25 = Nanoseconds / 1000000000.0;
      v26 = 1026;
      v27 = v14;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecreateInheritanceKey  OctagonSignpostNameRecreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecreateInheritanceKey}d ", &v22, 0x1Cu);
    }
  }

  else
  {
    v15 = secLogObjForScope("octagon-recreateinheritancekey");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "successfully recreated octagon inheritance recovery key", &v22, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v16 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v17 = _OctagonSignpostLogSystem();
    v18 = v17;
    v19 = a1[6];
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = *(*(a1[5] + 8) + 24);
      v22 = 67240192;
      LODWORD(v23) = v20;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v18, OS_SIGNPOST_INTERVAL_END, v19, "RecreateInheritanceKey", " OctagonSignpostNameRecreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecreateInheritanceKey}d ", &v22, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v21 = *(*(a1[5] + 8) + 24);
      v23 = a1[6];
      v24 = 2048;
      v25 = v16 / 1000000000.0;
      v26 = 1026;
      v27 = v21;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecreateInheritanceKey  OctagonSignpostNameRecreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecreateInheritanceKey}d ", &v22, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
}

+ (void)checkInheritanceKey:(id)key inheritanceKeyUUID:(id)d reply:(id)reply
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dCopy = d;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-checkinheritancekey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "checkInheritanceKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CheckInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CheckInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v18 = [keyCopy makeOTControl:&v33];
  v19 = v33;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __57__OTClique_checkInheritanceKey_inheritanceKeyUUID_reply___block_invoke;
    v28[3] = &unk_1E70D6F30;
    v31 = v13;
    v32 = v14;
    p_buf = &buf;
    v29 = replyCopy;
    [v18 checkInheritanceKey:v20 uuid:dCopy reply:v28];
  }

  else
  {
    v21 = secLogObjForScope("octagon-checkinheritancekey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 138412290;
      v35 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v34, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v34 = 67240192;
      LODWORD(v35) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "CheckInheritanceKey", " OctagonSignpostNameCheckInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckInheritanceKey}d ", v34, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v35 = v13;
      v36 = 2048;
      v37 = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CheckInheritanceKey  OctagonSignpostNameCheckInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckInheritanceKey}d ", v34, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v19);
  }

  _Block_object_dispose(&buf, 8);
}

void __57__OTClique_checkInheritanceKey_inheritanceKeyUUID_reply___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "octagon-checkinheritancekey, failed to check inheritance key", &v22, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v7 = _OctagonSignpostLogSystem();
    v8 = v7;
    v9 = a1[6];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(*(a1[5] + 8) + 24);
      v22 = 67240192;
      LODWORD(v23) = v10;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CheckInheritanceKey", " OctagonSignpostNameCheckInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckInheritanceKey}d ", &v22, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v12 = *(*(a1[5] + 8) + 24);
      v23 = a1[6];
      v24 = 2048;
      v25 = Nanoseconds / 1000000000.0;
      v26 = 1026;
      v27 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CheckInheritanceKey  OctagonSignpostNameCheckInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckInheritanceKey}d ", &v22, 0x1Cu);
    }

    v13 = *(a1[4] + 16);
  }

  else
  {
    v14 = secLogObjForScope("octagon-checkinheritancekey");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "successfully checked inerhitance key", &v22, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v15 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v16 = _OctagonSignpostLogSystem();
    v17 = v16;
    v18 = a1[6];
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v19 = *(*(a1[5] + 8) + 24);
      v22 = 67240192;
      LODWORD(v23) = v19;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v17, OS_SIGNPOST_INTERVAL_END, v18, "CheckInheritanceKey", " OctagonSignpostNameCheckInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckInheritanceKey}d ", &v22, 8u);
    }

    v20 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v21 = *(*(a1[5] + 8) + 24);
      v23 = a1[6];
      v24 = 2048;
      v25 = v15 / 1000000000.0;
      v26 = 1026;
      v27 = v21;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CheckInheritanceKey  OctagonSignpostNameCheckInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckInheritanceKey}d ", &v22, 0x1Cu);
    }

    v13 = *(a1[4] + 16);
  }

  v13();
}

+ (void)removeInheritanceKey:(id)key inheritanceKeyUUID:(id)d reply:(id)reply
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dCopy = d;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-removeinheritancekey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "removeInheritanceKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "RemoveInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RemoveInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v18 = [keyCopy makeOTControl:&v33];
  v19 = v33;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __58__OTClique_removeInheritanceKey_inheritanceKeyUUID_reply___block_invoke;
    v28[3] = &unk_1E70D6F08;
    v31 = v13;
    v32 = v14;
    p_buf = &buf;
    v29 = replyCopy;
    [v18 removeInheritanceKey:v20 uuid:dCopy reply:v28];
  }

  else
  {
    v21 = secLogObjForScope("octagon-removeinheritancekey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 138412290;
      v35 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v34, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v34 = 67240192;
      LODWORD(v35) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "RemoveInheritanceKey", " OctagonSignpostNameRemoveInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveInheritanceKey}d ", v34, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v35 = v13;
      v36 = 2048;
      v37 = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveInheritanceKey  OctagonSignpostNameRemoveInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveInheritanceKey}d ", v34, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v19);
  }

  _Block_object_dispose(&buf, 8);
}

void __58__OTClique_removeInheritanceKey_inheritanceKeyUUID_reply___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "octagon-removeinheritancekey, failed to remove inheritance key", &v19, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v6 = _OctagonSignpostLogSystem();
    v7 = v6;
    v8 = a1[6];
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = *(*(a1[5] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v9;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v7, OS_SIGNPOST_INTERVAL_END, v8, "RemoveInheritanceKey", " OctagonSignpostNameRemoveInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveInheritanceKey}d ", &v19, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v11 = *(*(a1[5] + 8) + 24);
      v20 = a1[6];
      v21 = 2048;
      v22 = Nanoseconds / 1000000000.0;
      v23 = 1026;
      v24 = v11;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveInheritanceKey  OctagonSignpostNameRemoveInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveInheritanceKey}d ", &v19, 0x1Cu);
    }
  }

  else
  {
    v12 = secLogObjForScope("octagon-removeinheritancekey");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "successfully removed inerhitance key", &v19, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[6];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[5] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "RemoveInheritanceKey", " OctagonSignpostNameRemoveInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveInheritanceKey}d ", &v19, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v18 = *(*(a1[5] + 8) + 24);
      v20 = a1[6];
      v21 = 2048;
      v22 = v13 / 1000000000.0;
      v23 = 1026;
      v24 = v18;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveInheritanceKey  OctagonSignpostNameRemoveInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveInheritanceKey}d ", &v19, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
}

+ (void)preflightRecoverOctagonUsingInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply
{
  v42 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  inheritanceKeyCopy = inheritanceKey;
  replyCopy = reply;
  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PreflightRecoverOctagonUsingInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PreflightRecoverOctagonUsingInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v16 = [keyCopy makeOTControl:&v32];
  v17 = v32;
  v18 = secLogObjForScope("clique-inheritancekey");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "preflight join using inheritance key", v33, 2u);
  }

  if (v16)
  {
    v19 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __76__OTClique_preflightRecoverOctagonUsingInheritanceKey_inheritanceKey_reply___block_invoke;
    v27[3] = &unk_1E70D6F08;
    v30 = v11;
    v31 = v12;
    p_buf = &buf;
    v28 = replyCopy;
    [v16 preflightJoinWithInheritanceKey:v19 inheritanceKey:inheritanceKeyCopy reply:v27];
  }

  else
  {
    v20 = secLogObjForScope("clique-inheritancekey");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 138412290;
      v34 = v17;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v33, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v22 = _OctagonSignpostLogSystem();
    v23 = v22;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = *(*(&buf + 1) + 24);
      *v33 = 67240192;
      LODWORD(v34) = v24;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v23, OS_SIGNPOST_INTERVAL_END, v11, "PreflightRecoverOctagonUsingInheritanceKey", " OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey}d ", v33, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 134218496;
      v26 = *(*(&buf + 1) + 24);
      v34 = v11;
      v35 = 2048;
      v36 = Nanoseconds / 1000000000.0;
      v37 = 1026;
      v38 = v26;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PreflightRecoverOctagonUsingInheritanceKey  OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey}d ", v33, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v17);
  }

  _Block_object_dispose(&buf, 8);
}

void __76__OTClique_preflightRecoverOctagonUsingInheritanceKey_inheritanceKey_reply___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-inheritancekey");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v19 = 138412290;
      v20 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "failed to preflight join using inheritance key: %@", &v19, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v7 = _OctagonSignpostLogSystem();
    v8 = v7;
    v9 = a1[6];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(*(a1[5] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v10;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PreflightRecoverOctagonUsingInheritanceKey", " OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey}d ", &v19, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v12 = *(*(a1[5] + 8) + 24);
      v20 = a1[6];
      v21 = 2048;
      v22 = Nanoseconds / 1000000000.0;
      v23 = 1026;
      v24 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PreflightRecoverOctagonUsingInheritanceKey  OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey}d ", &v19, 0x1Cu);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "successful preflight join using inheritance key", &v19, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[6];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[5] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PreflightRecoverOctagonUsingInheritanceKey", " OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey}d ", &v19, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v18 = *(*(a1[5] + 8) + 24);
      v20 = a1[6];
      v21 = 2048;
      v22 = v13 / 1000000000.0;
      v23 = 1026;
      v24 = v18;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PreflightRecoverOctagonUsingInheritanceKey  OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingInheritanceKey}d ", &v19, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
}

+ (void)recoverOctagonUsingInheritanceKey:(id)key inheritanceKey:(id)inheritanceKey reply:(id)reply
{
  v42 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  inheritanceKeyCopy = inheritanceKey;
  replyCopy = reply;
  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RecoverOctagonUsingInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecoverOctagonUsingInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v16 = [keyCopy makeOTControl:&v32];
  v17 = v32;
  v18 = secLogObjForScope("clique-inheritancekey");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "join using inheritance key", v33, 2u);
  }

  if (v16)
  {
    v19 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __67__OTClique_recoverOctagonUsingInheritanceKey_inheritanceKey_reply___block_invoke;
    v27[3] = &unk_1E70D6F08;
    v30 = v11;
    v31 = v12;
    p_buf = &buf;
    v28 = replyCopy;
    [v16 joinWithInheritanceKey:v19 inheritanceKey:inheritanceKeyCopy reply:v27];
  }

  else
  {
    v20 = secLogObjForScope("clique-inheritancekey");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 138412290;
      v34 = v17;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v33, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v22 = _OctagonSignpostLogSystem();
    v23 = v22;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = *(*(&buf + 1) + 24);
      *v33 = 67240192;
      LODWORD(v34) = v24;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v23, OS_SIGNPOST_INTERVAL_END, v11, "RecoverOctagonUsingInheritanceKey", " OctagonSignpostNameRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingInheritanceKey}d ", v33, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 134218496;
      v26 = *(*(&buf + 1) + 24);
      v34 = v11;
      v35 = 2048;
      v36 = Nanoseconds / 1000000000.0;
      v37 = 1026;
      v38 = v26;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverOctagonUsingInheritanceKey  OctagonSignpostNameRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingInheritanceKey}d ", v33, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v17);
  }

  _Block_object_dispose(&buf, 8);
}

void __67__OTClique_recoverOctagonUsingInheritanceKey_inheritanceKey_reply___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-inheritancekey");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v19 = 138412290;
      v20 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "failed to join using inheritance key: %@", &v19, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v7 = _OctagonSignpostLogSystem();
    v8 = v7;
    v9 = a1[6];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(*(a1[5] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v10;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RecoverOctagonUsingInheritanceKey", " OctagonSignpostNameRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingInheritanceKey}d ", &v19, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v12 = *(*(a1[5] + 8) + 24);
      v20 = a1[6];
      v21 = 2048;
      v22 = Nanoseconds / 1000000000.0;
      v23 = 1026;
      v24 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverOctagonUsingInheritanceKey  OctagonSignpostNameRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingInheritanceKey}d ", &v19, 0x1Cu);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "successfully joined using inheritance key", &v19, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[6];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[5] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "RecoverOctagonUsingInheritanceKey", " OctagonSignpostNameRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingInheritanceKey}d ", &v19, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v18 = *(*(a1[5] + 8) + 24);
      v20 = a1[6];
      v21 = 2048;
      v22 = v13 / 1000000000.0;
      v23 = 1026;
      v24 = v18;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverOctagonUsingInheritanceKey  OctagonSignpostNameRecoverOctagonUsingInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingInheritanceKey}d ", &v19, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
}

+ (void)storeInheritanceKey:(id)key ik:(id)ik reply:(id)reply
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  ikCopy = ik;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-storeinheritancekey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "storeInheritanceKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "StoreInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StoreInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v18 = [keyCopy makeOTControl:&v33];
  v19 = v33;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __41__OTClique_storeInheritanceKey_ik_reply___block_invoke;
    v28[3] = &unk_1E70D6F08;
    v31 = v13;
    v32 = v14;
    p_buf = &buf;
    v29 = replyCopy;
    [v18 storeInheritanceKey:v20 ik:ikCopy reply:v28];
  }

  else
  {
    v21 = secLogObjForScope("octagon-storeinheritancekey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 138412290;
      v35 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v34, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v34 = 67240192;
      LODWORD(v35) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "StoreInheritanceKey", " OctagonSignpostNameStoreInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameStoreInheritanceKey}d ", v34, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v35 = v13;
      v36 = 2048;
      v37 = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StoreInheritanceKey  OctagonSignpostNameStoreInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameStoreInheritanceKey}d ", v34, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v19);
  }

  _Block_object_dispose(&buf, 8);
}

void __41__OTClique_storeInheritanceKey_ik_reply___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "octagon-storeinheritancekey, failed to store octagon inheritance recovery key", &v19, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v6 = _OctagonSignpostLogSystem();
    v7 = v6;
    v8 = a1[6];
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = *(*(a1[5] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v9;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v7, OS_SIGNPOST_INTERVAL_END, v8, "StoreInheritanceKey", " OctagonSignpostNameStoreInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameStoreInheritanceKey}d ", &v19, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v11 = *(*(a1[5] + 8) + 24);
      v20 = a1[6];
      v21 = 2048;
      v22 = Nanoseconds / 1000000000.0;
      v23 = 1026;
      v24 = v11;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StoreInheritanceKey  OctagonSignpostNameStoreInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameStoreInheritanceKey}d ", &v19, 0x1Cu);
    }
  }

  else
  {
    v12 = secLogObjForScope("octagon-storeinheritancekey");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "successfully stored octagon inheritance recovery key", &v19, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[6];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[5] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "StoreInheritanceKey", " OctagonSignpostNameStoreInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameStoreInheritanceKey}d ", &v19, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v18 = *(*(a1[5] + 8) + 24);
      v20 = a1[6];
      v21 = 2048;
      v22 = v13 / 1000000000.0;
      v23 = 1026;
      v24 = v18;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StoreInheritanceKey  OctagonSignpostNameStoreInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameStoreInheritanceKey}d ", &v19, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
}

+ (void)generateInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  uuidCopy = uuid;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-generateinheritancekey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "generateInheritanceKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "GenerateInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: GenerateInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v18 = [keyCopy makeOTControl:&v33];
  v19 = v33;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __46__OTClique_generateInheritanceKey_uuid_reply___block_invoke;
    v28[3] = &unk_1E70D6F58;
    v31 = v13;
    v32 = v14;
    p_buf = &buf;
    v29 = replyCopy;
    [v18 generateInheritanceKey:v20 uuid:uuidCopy reply:v28];
  }

  else
  {
    v21 = secLogObjForScope("octagon-generateinheritancekey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 138412290;
      v35 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v34, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v34 = 67240192;
      LODWORD(v35) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "GenerateInheritanceKey", " OctagonSignpostNameGenerateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameGenerateInheritanceKey}d ", v34, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v35 = v13;
      v36 = 2048;
      v37 = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: GenerateInheritanceKey  OctagonSignpostNameGenerateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameGenerateInheritanceKey}d ", v34, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v19);
  }

  _Block_object_dispose(&buf, 8);
}

void __46__OTClique_generateInheritanceKey_uuid_reply___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "octagon-generateinheritancekey, failed to generate octagon inheritance recovery key", &v22, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v9 = _OctagonSignpostLogSystem();
    v10 = v9;
    v11 = a1[6];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = *(*(a1[5] + 8) + 24);
      v22 = 67240192;
      LODWORD(v23) = v12;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v10, OS_SIGNPOST_INTERVAL_END, v11, "GenerateInheritanceKey", " OctagonSignpostNameGenerateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameGenerateInheritanceKey}d ", &v22, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v14 = *(*(a1[5] + 8) + 24);
      v23 = a1[6];
      v24 = 2048;
      v25 = Nanoseconds / 1000000000.0;
      v26 = 1026;
      v27 = v14;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: GenerateInheritanceKey  OctagonSignpostNameGenerateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameGenerateInheritanceKey}d ", &v22, 0x1Cu);
    }
  }

  else
  {
    v15 = secLogObjForScope("octagon-generateinheritancekey");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "successfully generated octagon inheritance recovery key", &v22, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v16 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v17 = _OctagonSignpostLogSystem();
    v18 = v17;
    v19 = a1[6];
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = *(*(a1[5] + 8) + 24);
      v22 = 67240192;
      LODWORD(v23) = v20;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v18, OS_SIGNPOST_INTERVAL_END, v19, "GenerateInheritanceKey", " OctagonSignpostNameGenerateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameGenerateInheritanceKey}d ", &v22, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v21 = *(*(a1[5] + 8) + 24);
      v23 = a1[6];
      v24 = 2048;
      v25 = v16 / 1000000000.0;
      v26 = 1026;
      v27 = v21;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: GenerateInheritanceKey  OctagonSignpostNameGenerateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameGenerateInheritanceKey}d ", &v22, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
}

+ (void)createInheritanceKey:(id)key uuid:(id)uuid reply:(id)reply
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  uuidCopy = uuid;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-createinheritancekey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "createInheritanceKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CreateInheritanceKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CreateInheritanceKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v18 = [keyCopy makeOTControl:&v33];
  v19 = v33;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __44__OTClique_createInheritanceKey_uuid_reply___block_invoke;
    v28[3] = &unk_1E70D6F58;
    v31 = v13;
    v32 = v14;
    p_buf = &buf;
    v29 = replyCopy;
    [v18 createInheritanceKey:v20 uuid:uuidCopy reply:v28];
  }

  else
  {
    v21 = secLogObjForScope("octagon-createinheritancekey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 138412290;
      v35 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v34, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v34 = 67240192;
      LODWORD(v35) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "CreateInheritanceKey", " OctagonSignpostNameCreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKey}d ", v34, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v35 = v13;
      v36 = 2048;
      v37 = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateInheritanceKey  OctagonSignpostNameCreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKey}d ", v34, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v19);
  }

  _Block_object_dispose(&buf, 8);
}

void __44__OTClique_createInheritanceKey_uuid_reply___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "octagon-createinheritancekey, failed to create octagon inheritance recovery key", &v22, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v9 = _OctagonSignpostLogSystem();
    v10 = v9;
    v11 = a1[6];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = *(*(a1[5] + 8) + 24);
      v22 = 67240192;
      LODWORD(v23) = v12;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CreateInheritanceKey", " OctagonSignpostNameCreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKey}d ", &v22, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v14 = *(*(a1[5] + 8) + 24);
      v23 = a1[6];
      v24 = 2048;
      v25 = Nanoseconds / 1000000000.0;
      v26 = 1026;
      v27 = v14;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateInheritanceKey  OctagonSignpostNameCreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKey}d ", &v22, 0x1Cu);
    }
  }

  else
  {
    v15 = secLogObjForScope("octagon-createinheritancekey");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "successfully created octagon inheritance recovery key", &v22, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v16 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v17 = _OctagonSignpostLogSystem();
    v18 = v17;
    v19 = a1[6];
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = *(*(a1[5] + 8) + 24);
      v22 = 67240192;
      LODWORD(v23) = v20;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v18, OS_SIGNPOST_INTERVAL_END, v19, "CreateInheritanceKey", " OctagonSignpostNameCreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKey}d ", &v22, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v21 = *(*(a1[5] + 8) + 24);
      v23 = a1[6];
      v24 = 2048;
      v25 = v16 / 1000000000.0;
      v26 = 1026;
      v27 = v21;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateInheritanceKey  OctagonSignpostNameCreateInheritanceKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateInheritanceKey}d ", &v22, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
}

+ (void)checkCustodianRecoveryKey:(id)key custodianRecoveryKeyUUID:(id)d reply:(id)reply
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dCopy = d;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-checkcustodianrecoverykey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "checkCustodianRecoveryKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CheckCustodianRecoveryKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CheckCustodianRecoveryKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v18 = [keyCopy makeOTControl:&v33];
  v19 = v33;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __69__OTClique_checkCustodianRecoveryKey_custodianRecoveryKeyUUID_reply___block_invoke;
    v28[3] = &unk_1E70D6F30;
    v31 = v13;
    v32 = v14;
    p_buf = &buf;
    v29 = replyCopy;
    [v18 checkCustodianRecoveryKey:v20 uuid:dCopy reply:v28];
  }

  else
  {
    v21 = secLogObjForScope("octagon-checkcustodianrecoverykey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 138412290;
      v35 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v34, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v34 = 67240192;
      LODWORD(v35) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "CheckCustodianRecoveryKey", " OctagonSignpostNameCheckCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckCustodianRecoveryKey}d ", v34, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v35 = v13;
      v36 = 2048;
      v37 = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CheckCustodianRecoveryKey  OctagonSignpostNameCheckCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckCustodianRecoveryKey}d ", v34, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v19);
  }

  _Block_object_dispose(&buf, 8);
}

void __69__OTClique_checkCustodianRecoveryKey_custodianRecoveryKeyUUID_reply___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "octagon-checkcustodianrecoverykey, failed to check custodian recovery key", &v22, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v7 = _OctagonSignpostLogSystem();
    v8 = v7;
    v9 = a1[6];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(*(a1[5] + 8) + 24);
      v22 = 67240192;
      LODWORD(v23) = v10;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CheckCustodianRecoveryKey", " OctagonSignpostNameCheckCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckCustodianRecoveryKey}d ", &v22, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v12 = *(*(a1[5] + 8) + 24);
      v23 = a1[6];
      v24 = 2048;
      v25 = Nanoseconds / 1000000000.0;
      v26 = 1026;
      v27 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CheckCustodianRecoveryKey  OctagonSignpostNameCheckCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckCustodianRecoveryKey}d ", &v22, 0x1Cu);
    }

    v13 = *(a1[4] + 16);
  }

  else
  {
    v14 = secLogObjForScope("octagon-checkcheckcustodianrecoverykey");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "successfully checked custodian recovery key", &v22, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v15 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v16 = _OctagonSignpostLogSystem();
    v17 = v16;
    v18 = a1[6];
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v19 = *(*(a1[5] + 8) + 24);
      v22 = 67240192;
      LODWORD(v23) = v19;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v17, OS_SIGNPOST_INTERVAL_END, v18, "CheckCustodianRecoveryKey", " OctagonSignpostNameCheckCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckCustodianRecoveryKey}d ", &v22, 8u);
    }

    v20 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v21 = *(*(a1[5] + 8) + 24);
      v23 = a1[6];
      v24 = 2048;
      v25 = v15 / 1000000000.0;
      v26 = 1026;
      v27 = v21;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CheckCustodianRecoveryKey  OctagonSignpostNameCheckCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCheckCustodianRecoveryKey}d ", &v22, 0x1Cu);
    }

    v13 = *(a1[4] + 16);
  }

  v13();
}

+ (void)removeCustodianRecoveryKey:(id)key custodianRecoveryKeyUUID:(id)d reply:(id)reply
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dCopy = d;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-removecustodianrecoverykey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "removeCustodianRecoveryKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "RemoveCustodianRecoveryKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RemoveCustodianRecoveryKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v18 = [keyCopy makeOTControl:&v33];
  v19 = v33;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __70__OTClique_removeCustodianRecoveryKey_custodianRecoveryKeyUUID_reply___block_invoke;
    v28[3] = &unk_1E70D6F08;
    v31 = v13;
    v32 = v14;
    p_buf = &buf;
    v29 = replyCopy;
    [v18 removeCustodianRecoveryKey:v20 uuid:dCopy reply:v28];
  }

  else
  {
    v21 = secLogObjForScope("octagon-removecustodianrecoverykey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 138412290;
      v35 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v34, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v34 = 67240192;
      LODWORD(v35) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "RemoveCustodianRecoveryKey", " OctagonSignpostNameRemoveCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveCustodianRecoveryKey}d ", v34, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v35 = v13;
      v36 = 2048;
      v37 = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveCustodianRecoveryKey  OctagonSignpostNameRemoveCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveCustodianRecoveryKey}d ", v34, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v19);
  }

  _Block_object_dispose(&buf, 8);
}

void __70__OTClique_removeCustodianRecoveryKey_custodianRecoveryKeyUUID_reply___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "octagon-removecustodianrecoverykey, failed to remove custodian recovery key", &v19, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v6 = _OctagonSignpostLogSystem();
    v7 = v6;
    v8 = a1[6];
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = *(*(a1[5] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v9;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v7, OS_SIGNPOST_INTERVAL_END, v8, "RemoveCustodianRecoveryKey", " OctagonSignpostNameRemoveCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveCustodianRecoveryKey}d ", &v19, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v11 = *(*(a1[5] + 8) + 24);
      v20 = a1[6];
      v21 = 2048;
      v22 = Nanoseconds / 1000000000.0;
      v23 = 1026;
      v24 = v11;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveCustodianRecoveryKey  OctagonSignpostNameRemoveCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveCustodianRecoveryKey}d ", &v19, 0x1Cu);
    }
  }

  else
  {
    v12 = secLogObjForScope("octagon-removecustodianrecoverykey");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "successfully removed custodian recovery key", &v19, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[6];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[5] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "RemoveCustodianRecoveryKey", " OctagonSignpostNameRemoveCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveCustodianRecoveryKey}d ", &v19, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v18 = *(*(a1[5] + 8) + 24);
      v20 = a1[6];
      v21 = 2048;
      v22 = v13 / 1000000000.0;
      v23 = 1026;
      v24 = v18;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveCustodianRecoveryKey  OctagonSignpostNameRemoveCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRemoveCustodianRecoveryKey}d ", &v19, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
}

+ (void)preflightRecoverOctagonUsingCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply
{
  v42 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  recoveryKeyCopy = recoveryKey;
  replyCopy = reply;
  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PreflightRecoverOctagonUsingCustodianRecoveryKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PreflightRecoverOctagonUsingCustodianRecoveryKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v16 = [keyCopy makeOTControl:&v32];
  v17 = v32;
  v18 = secLogObjForScope("clique-custodianrecoverykey");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "preflight join using custodian recovery key", v33, 2u);
  }

  if (v16)
  {
    v19 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __88__OTClique_preflightRecoverOctagonUsingCustodianRecoveryKey_custodianRecoveryKey_reply___block_invoke;
    v27[3] = &unk_1E70D6F08;
    v30 = v11;
    v31 = v12;
    p_buf = &buf;
    v28 = replyCopy;
    [v16 preflightJoinWithCustodianRecoveryKey:v19 custodianRecoveryKey:recoveryKeyCopy reply:v27];
  }

  else
  {
    v20 = secLogObjForScope("clique-custodianrecoverykey");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 138412290;
      v34 = v17;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v33, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v22 = _OctagonSignpostLogSystem();
    v23 = v22;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = *(*(&buf + 1) + 24);
      *v33 = 67240192;
      LODWORD(v34) = v24;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v23, OS_SIGNPOST_INTERVAL_END, v11, "PreflightRecoverOctagonUsingCustodianRecoveryKey", " OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey}d ", v33, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 134218496;
      v26 = *(*(&buf + 1) + 24);
      v34 = v11;
      v35 = 2048;
      v36 = Nanoseconds / 1000000000.0;
      v37 = 1026;
      v38 = v26;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PreflightRecoverOctagonUsingCustodianRecoveryKey  OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey}d ", v33, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v17);
  }

  _Block_object_dispose(&buf, 8);
}

void __88__OTClique_preflightRecoverOctagonUsingCustodianRecoveryKey_custodianRecoveryKey_reply___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-custodianrecoverykey");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v19 = 138412290;
      v20 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "failed to preflight join using custodian recovery key: %@", &v19, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v7 = _OctagonSignpostLogSystem();
    v8 = v7;
    v9 = a1[6];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(*(a1[5] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v10;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PreflightRecoverOctagonUsingCustodianRecoveryKey", " OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey}d ", &v19, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v12 = *(*(a1[5] + 8) + 24);
      v20 = a1[6];
      v21 = 2048;
      v22 = Nanoseconds / 1000000000.0;
      v23 = 1026;
      v24 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PreflightRecoverOctagonUsingCustodianRecoveryKey  OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey}d ", &v19, 0x1Cu);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "successful preflight join using custodian recovery key", &v19, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[6];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[5] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PreflightRecoverOctagonUsingCustodianRecoveryKey", " OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey}d ", &v19, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v18 = *(*(a1[5] + 8) + 24);
      v20 = a1[6];
      v21 = 2048;
      v22 = v13 / 1000000000.0;
      v23 = 1026;
      v24 = v18;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PreflightRecoverOctagonUsingCustodianRecoveryKey  OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePreflightRecoverOctagonUsingCustodianRecoveryKey}d ", &v19, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
}

+ (void)recoverOctagonUsingCustodianRecoveryKey:(id)key custodianRecoveryKey:(id)recoveryKey reply:(id)reply
{
  v42 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  recoveryKeyCopy = recoveryKey;
  replyCopy = reply;
  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RecoverOctagonUsingCustodianRecoveryKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecoverOctagonUsingCustodianRecoveryKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v16 = [keyCopy makeOTControl:&v32];
  v17 = v32;
  v18 = secLogObjForScope("clique-custodianrecoverykey");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "join using custodian recovery key", v33, 2u);
  }

  if (v16)
  {
    v19 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __79__OTClique_recoverOctagonUsingCustodianRecoveryKey_custodianRecoveryKey_reply___block_invoke;
    v27[3] = &unk_1E70D6F08;
    v30 = v11;
    v31 = v12;
    p_buf = &buf;
    v28 = replyCopy;
    [v16 joinWithCustodianRecoveryKey:v19 custodianRecoveryKey:recoveryKeyCopy reply:v27];
  }

  else
  {
    v20 = secLogObjForScope("clique-custodianrecoverykey");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 138412290;
      v34 = v17;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v33, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v12);
    v22 = _OctagonSignpostLogSystem();
    v23 = v22;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = *(*(&buf + 1) + 24);
      *v33 = 67240192;
      LODWORD(v34) = v24;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v23, OS_SIGNPOST_INTERVAL_END, v11, "RecoverOctagonUsingCustodianRecoveryKey", " OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey}d ", v33, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 134218496;
      v26 = *(*(&buf + 1) + 24);
      v34 = v11;
      v35 = 2048;
      v36 = Nanoseconds / 1000000000.0;
      v37 = 1026;
      v38 = v26;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverOctagonUsingCustodianRecoveryKey  OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey}d ", v33, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, v17);
  }

  _Block_object_dispose(&buf, 8);
}

void __79__OTClique_recoverOctagonUsingCustodianRecoveryKey_custodianRecoveryKey_reply___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-custodianrecoverykey");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v19 = 138412290;
      v20 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "failed to join using custodian recovery key: %@", &v19, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v7 = _OctagonSignpostLogSystem();
    v8 = v7;
    v9 = a1[6];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(*(a1[5] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v10;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RecoverOctagonUsingCustodianRecoveryKey", " OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey}d ", &v19, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v12 = *(*(a1[5] + 8) + 24);
      v20 = a1[6];
      v21 = 2048;
      v22 = Nanoseconds / 1000000000.0;
      v23 = 1026;
      v24 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverOctagonUsingCustodianRecoveryKey  OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey}d ", &v19, 0x1Cu);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "successfully joined using custodian recovery key", &v19, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[6];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[5] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "RecoverOctagonUsingCustodianRecoveryKey", " OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey}d ", &v19, 8u);
    }

    v11 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v18 = *(*(a1[5] + 8) + 24);
      v20 = a1[6];
      v21 = 2048;
      v22 = v13 / 1000000000.0;
      v23 = 1026;
      v24 = v18;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverOctagonUsingCustodianRecoveryKey  OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverOctagonUsingCustodianRecoveryKey}d ", &v19, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
}

+ (void)createCustodianRecoveryKey:(id)key uuid:(id)uuid reply:(id)reply
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  uuidCopy = uuid;
  replyCopy = reply;
  v10 = secLogObjForScope("octagon-createcustodianrecoverykey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [keyCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "createCustodianRecoveryKey invoked for context: %@", &buf, 0xCu);
  }

  v12 = _OctagonSignpostLogSystem();
  v13 = os_signpost_id_generate(v12);
  v14 = mach_continuous_time();

  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CreateCustodianRecoveryKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CreateCustodianRecoveryKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v18 = [keyCopy makeOTControl:&v33];
  v19 = v33;
  if (v18)
  {
    v20 = [[OTControlArguments alloc] initWithConfiguration:keyCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __50__OTClique_createCustodianRecoveryKey_uuid_reply___block_invoke;
    v28[3] = &unk_1E70D6EE0;
    v31 = v13;
    v32 = v14;
    p_buf = &buf;
    v29 = replyCopy;
    [v18 createCustodianRecoveryKey:v20 uuid:uuidCopy reply:v28];
  }

  else
  {
    v21 = secLogObjForScope("octagon-createcustodianrecoverykey");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 138412290;
      v35 = v19;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v34, 0xCu);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(v13, v14);
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(*(&buf + 1) + 24);
      *v34 = 67240192;
      LODWORD(v35) = v25;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v24, OS_SIGNPOST_INTERVAL_END, v13, "CreateCustodianRecoveryKey", " OctagonSignpostNameCreateCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateCustodianRecoveryKey}d ", v34, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134218496;
      v27 = *(*(&buf + 1) + 24);
      v35 = v13;
      v36 = 2048;
      v37 = Nanoseconds / 1000000000.0;
      v38 = 1026;
      v39 = v27;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateCustodianRecoveryKey  OctagonSignpostNameCreateCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateCustodianRecoveryKey}d ", v34, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v19);
  }

  _Block_object_dispose(&buf, 8);
}

void __50__OTClique_createCustodianRecoveryKey_uuid_reply___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "octagon-createcustodianrecoverykey, failed to create octagon custodian recovery key", &v22, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v9 = _OctagonSignpostLogSystem();
    v10 = v9;
    v11 = a1[6];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = *(*(a1[5] + 8) + 24);
      v22 = 67240192;
      LODWORD(v23) = v12;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CreateCustodianRecoveryKey", " OctagonSignpostNameCreateCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateCustodianRecoveryKey}d ", &v22, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v14 = *(*(a1[5] + 8) + 24);
      v23 = a1[6];
      v24 = 2048;
      v25 = Nanoseconds / 1000000000.0;
      v26 = 1026;
      v27 = v14;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateCustodianRecoveryKey  OctagonSignpostNameCreateCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateCustodianRecoveryKey}d ", &v22, 0x1Cu);
    }
  }

  else
  {
    v15 = secLogObjForScope("octagon-createcustodianrecoverykey");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "successfully created octagon custodian recovery key", &v22, 2u);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v16 = _OctagonSignpostGetNanoseconds(a1[6], a1[7]);
    v17 = _OctagonSignpostLogSystem();
    v18 = v17;
    v19 = a1[6];
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = *(*(a1[5] + 8) + 24);
      v22 = 67240192;
      LODWORD(v23) = v20;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v18, OS_SIGNPOST_INTERVAL_END, v19, "CreateCustodianRecoveryKey", " OctagonSignpostNameCreateCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateCustodianRecoveryKey}d ", &v22, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218496;
      v21 = *(*(a1[5] + 8) + 24);
      v23 = a1[6];
      v24 = 2048;
      v25 = v16 / 1000000000.0;
      v26 = 1026;
      v27 = v21;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CreateCustodianRecoveryKey  OctagonSignpostNameCreateCustodianRecoveryKey=%{public,signpost.telemetry:number1,name=OctagonSignpostNameCreateCustodianRecoveryKey}d ", &v22, 0x1Cu);
    }
  }

  (*(a1[4] + 16))();
}

+ (void)setNewRecoveryKeyWithData:(id)data recoveryKey:(id)key reply:(id)reply
{
  v65 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  keyCopy = key;
  replyCopy = reply;
  v8 = secLogObjForScope("octagon-setrecoverykey");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    context = [dataCopy context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "setNewRecoveryKeyWithData invoked for context: %@", &buf, 0xCu);
  }

  v10 = objc_opt_new();
  v11 = _OctagonSignpostLogSystem();
  v12 = os_signpost_id_generate(v11);
  v13 = mach_continuous_time();

  v14 = _OctagonSignpostLogSystem();
  v15 = v14;
  v16 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SetNewRecoveryKeyWithData", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v12;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SetNewRecoveryKeyWithData  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v63 = 0x2020000000;
  v64 = 0;
  v55 = 0;
  v18 = SecRKCreateRecoveryKeyWithError(keyCopy, &v55);
  v19 = v55;
  if (v18)
  {
    v54 = 0;
    v20 = [dataCopy makeOTControl:&v54];
    v21 = v54;
    if (v20)
    {
      v22 = [[OTControlArguments alloc] initWithConfiguration:dataCopy];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __56__OTClique_setNewRecoveryKeyWithData_recoveryKey_reply___block_invoke;
      v48[3] = &unk_1E70D6EB8;
      v52 = v12;
      v53 = v13;
      p_buf = &buf;
      v50 = replyCopy;
      v49 = v18;
      [v20 createRecoveryKey:v22 recoveryKey:keyCopy reply:v48];
    }

    else
    {
      v39 = secLogObjForScope("octagon-setrecoverykey");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 138412290;
        v57 = v21;
        _os_log_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", v56, 0xCu);
      }

      Nanoseconds = _OctagonSignpostGetNanoseconds(v12, v13);
      v41 = _OctagonSignpostLogSystem();
      v42 = v41;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
      {
        v43 = *(*(&buf + 1) + 24);
        *v56 = 67240192;
        LODWORD(v57) = v43;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v42, OS_SIGNPOST_INTERVAL_END, v12, "SetNewRecoveryKeyWithData", " OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", v56, 8u);
      }

      v44 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 134218496;
        v45 = *(*(&buf + 1) + 24);
        v57 = v12;
        v58 = 2048;
        v59 = Nanoseconds / 1000000000.0;
        v60 = 1026;
        v61 = v45;
        _os_log_impl(&dword_1887D2000, v44, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetNewRecoveryKeyWithData  OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", v56, 0x1Cu);
      }

      (*(replyCopy + 2))(replyCopy, 0, v21);
    }

    v32 = 0;
  }

  else
  {
    v23 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v56 = 138412290;
      v57 = v19;
      _os_log_impl(&dword_1887D2000, v23, OS_LOG_TYPE_DEFAULT, "octagon-setrecoverykey, SecRKCreateRecoveryKeyWithError() failed: %@", v56, 0xCu);
    }

    [v10 setObject:@"SecRKCreateRecoveryKeyWithError() failed" forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v10 setObject:v19 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    +[OTClique isCloudServicesAvailable];
    Helper_x10__kSecureBackupErrorDomain = gotLoadHelper_x10__kSecureBackupErrorDomain(v24);
    v29 = *(v28 + 3704);
    if (v30)
    {
      v26 = v29;
      v31 = 24;
    }

    else
    {
      v31 = -4;
    }

    v32 = [v25 errorWithDomain:*v26 code:v31 userInfo:{v10, Helper_x10__kSecureBackupErrorDomain}];
    v33 = _OctagonSignpostGetNanoseconds(v12, v13);
    v34 = _OctagonSignpostLogSystem();
    v35 = v34;
    if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      v36 = *(*(&buf + 1) + 24);
      *v56 = 67240192;
      LODWORD(v57) = v36;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v35, OS_SIGNPOST_INTERVAL_END, v12, "SetNewRecoveryKeyWithData", " OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", v56, 8u);
    }

    v37 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *v56 = 134218496;
      v38 = *(*(&buf + 1) + 24);
      v57 = v12;
      v58 = 2048;
      v59 = v33 / 1000000000.0;
      v60 = 1026;
      v61 = v38;
      _os_log_impl(&dword_1887D2000, v37, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetNewRecoveryKeyWithData  OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", v56, 0x1Cu);
    }

    (*(replyCopy + 2))(replyCopy, 0, v32);
  }

  _Block_object_dispose(&buf, 8);
}

void __56__OTClique_setNewRecoveryKeyWithData_recoveryKey_reply___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "octagon-setrecoverykey, failed to create octagon recovery key", &v19, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds(a1[7], a1[8]);
    v6 = _OctagonSignpostLogSystem();
    v7 = v6;
    v8 = a1[7];
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = *(*(a1[6] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v9;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v7, OS_SIGNPOST_INTERVAL_END, v8, "SetNewRecoveryKeyWithData", " OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", &v19, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v11 = *(*(a1[6] + 8) + 24);
      v20 = a1[7];
      v21 = 2048;
      v22 = Nanoseconds / 1000000000.0;
      v23 = 1026;
      v24 = v11;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetNewRecoveryKeyWithData  OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", &v19, 0x1Cu);
    }
  }

  else
  {
    v12 = secLogObjForScope("octagon-setrecoverykey");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "successfully set octagon recovery key", &v19, 2u);
    }

    *(*(a1[6] + 8) + 24) = 1;
    v13 = _OctagonSignpostGetNanoseconds(a1[7], a1[8]);
    v14 = _OctagonSignpostLogSystem();
    v15 = v14;
    v16 = a1[7];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(*(a1[6] + 8) + 24);
      v19 = 67240192;
      LODWORD(v20) = v17;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v15, OS_SIGNPOST_INTERVAL_END, v16, "SetNewRecoveryKeyWithData", " OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", &v19, 8u);
    }

    v10 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v18 = *(*(a1[6] + 8) + 24);
      v20 = a1[7];
      v21 = 2048;
      v22 = v13 / 1000000000.0;
      v23 = 1026;
      v24 = v18;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetNewRecoveryKeyWithData  OctagonSignpostNameSetNewRecoveryKeyWithData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameSetNewRecoveryKeyWithData}d ", &v19, 0x1Cu);
    }
  }

  (*(a1[5] + 16))();
}

+ (id)recoverWithContextData:(id)data bottleID:(id)d escrowedEntropy:(id)entropy error:(id *)error
{
  v6 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "replaced by performEscrowRecoveryWithContextData:escrowArguments:error: remove call", v8, 2u);
  }

  return 0;
}

+ (id)findOptimalBottleIDsWithContextData:(id)data error:(id *)error
{
  v56[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = secLogObjForScope("clique-findbottle");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [dataCopy context];
    altDSID = [dataCopy altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "finding optimal bottles for context:%@, altdsid:%@", buf, 0x16u);
  }

  v9 = _OctagonSignpostLogSystem();
  v10 = os_signpost_id_generate(v9);
  v11 = mach_continuous_time();

  v12 = _OctagonSignpostLogSystem();
  v13 = v12;
  v14 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "FindOptimalBottleIDsWithContextData", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v10;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FindOptimalBottleIDsWithContextData  enableTelemetry=YES ", buf, 0xCu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v54 = __Block_byref_object_copy__5565;
  v55 = __Block_byref_object_dispose__5566;
  v56[0] = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__5565;
  v45 = __Block_byref_object_dispose__5566;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__5565;
  v39 = __Block_byref_object_dispose__5566;
  v40 = 0;
  obj = 0;
  v16 = [dataCopy makeOTControl:&obj];
  objc_storeStrong(v56, obj);
  if (v16)
  {
    v17 = [[OTControlArguments alloc] initWithConfiguration:dataCopy];
    escrowFetchSource = [dataCopy escrowFetchSource];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __54__OTClique_findOptimalBottleIDsWithContextData_error___block_invoke;
    v33[3] = &unk_1E70D6E68;
    v33[4] = buf;
    v33[5] = &v41;
    v33[6] = &v35;
    [v16 fetchAllViableBottles:v17 source:escrowFetchSource reply:v33];

    if (error)
    {
      v19 = *(*&buf[8] + 40);
      if (v19)
      {
        *error = v19;
      }
    }

    v20 = objc_alloc_init(OTBottleIDs);
    [(OTBottleIDs *)v20 setPreferredBottleIDs:v42[5]];
    [(OTBottleIDs *)v20 setPartialRecoveryBottleIDs:v36[5]];
    v21 = secLogObjForScope("clique-findbottle");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v47 = 0;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "findOptimalBottleIDsWithContextData complete", v47, 2u);
    }

    v22 = *(*&buf[8] + 40);
    Nanoseconds = _OctagonSignpostGetNanoseconds(v10, v11);
    v24 = _OctagonSignpostLogSystem();
    v25 = v24;
    if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *v47 = 67240192;
      LODWORD(v48) = v22 == 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v25, OS_SIGNPOST_INTERVAL_END, v10, "FindOptimalBottleIDsWithContextData", " OctagonSignpostNameFindOptimalBottleIDsWithContextData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFindOptimalBottleIDsWithContextData}d ", v47, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v47 = 134218496;
      v48 = v10;
      v49 = 2048;
      v50 = Nanoseconds / 1000000000.0;
      v51 = 1026;
      v52 = v22 == 0;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FindOptimalBottleIDsWithContextData  OctagonSignpostNameFindOptimalBottleIDsWithContextData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFindOptimalBottleIDsWithContextData}d ", v47, 0x1Cu);
    }
  }

  else
  {
    v27 = secLogObjForScope("clique-findbottle");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(*&buf[8] + 40);
      *v47 = 138412290;
      v48 = v28;
      _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v47, 0xCu);
    }

    if (error)
    {
      *error = *(*&buf[8] + 40);
    }

    v29 = _OctagonSignpostGetNanoseconds(v10, v11);
    v30 = _OctagonSignpostLogSystem();
    v31 = v30;
    if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *v47 = 67240192;
      LODWORD(v48) = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v31, OS_SIGNPOST_INTERVAL_END, v10, "FindOptimalBottleIDsWithContextData", " OctagonSignpostNameFindOptimalBottleIDsWithContextData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFindOptimalBottleIDsWithContextData}d ", v47, 8u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v47 = 134218496;
      v48 = v10;
      v49 = 2048;
      v50 = v29 / 1000000000.0;
      v51 = 1026;
      v52 = 0;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FindOptimalBottleIDsWithContextData  OctagonSignpostNameFindOptimalBottleIDsWithContextData=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFindOptimalBottleIDsWithContextData}d ", v47, 0x1Cu);
    }

    v20 = 0;
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(buf, 8);

  return v20;
}

void __54__OTClique_findOptimalBottleIDsWithContextData_error___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = secLogObjForScope("clique-findbottle");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v23 = 138412290;
      v24 = v9;
      v12 = "findOptimalBottleIDsWithContextData errored: %@";
      v13 = v10;
      v14 = 12;
LABEL_6:
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, v12, &v23, v14);
    }
  }

  else if (v11)
  {
    v23 = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    v12 = "findOptimalBottleIDsWithContextData succeeded: %@, %@";
    v13 = v10;
    v14 = 22;
    goto LABEL_6;
  }

  v15 = *(a1[4] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  v18 = *(a1[5] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v7;
  v20 = v7;

  v21 = *(a1[6] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v8;
}

+ (id)fetchEscrowRecordsInternal:(id)internal error:(id *)error
{
  v31[2] = *MEMORY[0x1E69E9840];
  internalCopy = internal;
  v6 = secLogObjForScope("clique-fetchrecords");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [internalCopy context];
    altDSID = [internalCopy altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "fetching escrow records for context:%@, altdsid:%@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__5565;
  v30 = __Block_byref_object_dispose__5566;
  v31[0] = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5565;
  v24 = __Block_byref_object_dispose__5566;
  v25 = 0;
  obj = 0;
  v9 = [internalCopy makeOTControl:&obj];
  objc_storeStrong(v31, obj);
  if (v9)
  {
    v10 = [[OTControlArguments alloc] initWithConfiguration:internalCopy];
    escrowFetchSource = [internalCopy escrowFetchSource];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __45__OTClique_fetchEscrowRecordsInternal_error___block_invoke;
    v18[3] = &unk_1E70D6E40;
    v18[4] = buf;
    v18[5] = &v20;
    [v9 fetchEscrowRecords:v10 source:escrowFetchSource reply:v18];

    if (error)
    {
      v12 = *(*&buf[8] + 40);
      if (v12)
      {
        *error = v12;
      }
    }

    v13 = secLogObjForScope("clique-fetchrecords");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "fetchEscrowRecords complete", v26, 2u);
    }

    v14 = v21[5];
  }

  else
  {
    v15 = secLogObjForScope("clique-fetchrecords");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*&buf[8] + 40);
      *v26 = 138412290;
      v27 = v16;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v26, 0xCu);
    }

    v14 = 0;
    if (error)
    {
      *error = *(*&buf[8] + 40);
    }
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(buf, 8);

  return v14;
}

void __45__OTClique_fetchEscrowRecordsInternal_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = secLogObjForScope("clique-fetchrecords");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v15 = 138412290;
      v16 = v6;
      v9 = "fetchEscrowRecords errored: %@";
LABEL_6:
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v9, &v15, 0xCu);
    }
  }

  else if (v8)
  {
    v15 = 138412290;
    v16 = v5;
    v9 = "fetchEscrowRecords succeeded: %@";
    goto LABEL_6;
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v5;
}

+ (id)performEscrowRecoveryWithContextData:(id)data escrowArguments:(id)arguments error:(id *)error
{
  v151 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  argumentsCopy = arguments;
  if (+[OTClique isCloudServicesAvailable])
  {
    v9 = _OctagonSignpostLogSystem();
    v10 = os_signpost_id_generate(v9);
    v126 = mach_continuous_time();

    v11 = _OctagonSignpostLogSystem();
    v12 = v11;
    spid = v10;
    v125 = v10 - 1;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PerformEscrowRecovery", " enableTelemetry=YES ", buf, 2u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v10;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformEscrowRecovery  enableTelemetry=YES ", buf, 0xCu);
    }

    v130 = [[OTClique alloc] initWithContextData:dataCopy];
    v14 = secLogObjForScope("clique-recovery");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      context = [dataCopy context];
      altDSID = [dataCopy altDSID];
      *buf = 138412546;
      *&buf[4] = context;
      *&buf[12] = 2112;
      *&buf[14] = altDSID;
      _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "attempting an escrow recovery for context:%@, altdsid:%@", buf, 0x16u);
    }

    v17 = [dataCopy sbd];
    v19 = v17;
    if (v17)
    {
      v129 = v17;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v18);
      v129 = [objc_alloc(*(v21 + 3448)) initWithUserActivityLabel:@"clique-recovery"];
    }

    v22 = _OctagonSignpostLogSystem();
    v23 = os_signpost_id_generate(v22);
    v24 = mach_continuous_time();

    v25 = _OctagonSignpostLogSystem();
    v26 = v25;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v23, "PerformRecoveryFromSBD", " enableTelemetry=YES ", buf, 2u);
    }

    v27 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v23;
      _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformRecoveryFromSBD  enableTelemetry=YES ", buf, 0xCu);
    }

    v137 = 0;
    v28 = [v129 recoverWithInfo:argumentsCopy results:&v137];
    v128 = v137;
    Nanoseconds = _OctagonSignpostGetNanoseconds(v23, v24);
    v30 = _OctagonSignpostLogSystem();
    v31 = v30;
    if (v23 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v30))
    {
      *buf = 67240192;
      *&buf[4] = v28 == 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v31, OS_SIGNPOST_INTERVAL_END, v23, "PerformRecoveryFromSBD", " OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 8u);
    }

    v32 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v23;
      *&buf[12] = 2048;
      *&buf[14] = Nanoseconds / 1000000000.0;
      *&buf[22] = 1026;
      LODWORD(v148) = v28 == 0;
      _os_log_impl(&dword_1887D2000, v32, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformRecoveryFromSBD  OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 0x1Cu);
    }

    if (v28)
    {
      v34 = secLogObjForScope("clique-recovery");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v28;
        _os_log_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEFAULT, "sbd escrow recovery failed: %@", buf, 0xCu);
      }

      if (error)
      {
        v35 = v28;
        *error = v28;
      }

      v36 = _OctagonSignpostGetNanoseconds(v10, v126);
      v37 = _OctagonSignpostLogSystem();
      v38 = v37;
      if (v125 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v37))
      {
        *buf = 67240192;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v38, OS_SIGNPOST_INTERVAL_END, v10, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
      }

      v39 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        *&buf[4] = v10;
        *&buf[12] = 2048;
        *&buf[14] = v36 / 1000000000.0;
        *&buf[22] = 1026;
        LODWORD(v148) = 0;
        _os_log_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
      }

      v127 = 0;
      v20 = 0;
      goto LABEL_128;
    }

    Helper_x8__kSecureBackupRecoveryKeyKey = gotLoadHelper_x8__kSecureBackupRecoveryKeyKey(v33);
    v124 = [argumentsCopy objectForKeyedSubscript:{**(v41 + 3896), Helper_x8__kSecureBackupRecoveryKeyKey}];
    Helper_x8__kSecureBackupUsesRecoveryKeyKey = gotLoadHelper_x8__kSecureBackupUsesRecoveryKeyKey(v42);
    v122 = [argumentsCopy objectForKeyedSubscript:{**(v44 + 4000), Helper_x8__kSecureBackupUsesRecoveryKeyKey}];
    if (v124 || [v122 BOOLValue])
    {
      v136 = 0;
      v45 = [(OTClique *)v130 fetchCliqueStatus:&v136];
      v46 = v136;
      if (!v45)
      {
        v127 = v46;
        v48 = secLogObjForScope("clique-recovery");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1887D2000, v48, OS_LOG_TYPE_DEFAULT, "recovery key used during secure backup recovery, skipping bottle check", buf, 2u);
        }

        v49 = secLogObjForScope("clique-recovery");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v130;
          _os_log_impl(&dword_1887D2000, v49, OS_LOG_TYPE_DEFAULT, "recovery complete: %@", buf, 0xCu);
        }

        v50 = _OctagonSignpostGetNanoseconds(v10, v126);
        v51 = _OctagonSignpostLogSystem();
        v52 = v51;
        if (v125 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v51))
        {
          *buf = 67240192;
          *&buf[4] = v130 != 0;
          _os_signpost_emit_with_name_impl(&dword_1887D2000, v52, OS_SIGNPOST_INTERVAL_END, v10, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
        }

        v53 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          *&buf[4] = v10;
          *&buf[12] = 2048;
          *&buf[14] = v50 / 1000000000.0;
          *&buf[22] = 1026;
          LODWORD(v148) = v130 != 0;
          _os_log_impl(&dword_1887D2000, v53, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
        }

        v20 = v130;
        goto LABEL_127;
      }

      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v135 = v47;
    v123 = [(OTClique *)v130 makeOTControl:&v135];
    v127 = v135;

    if (!v123)
    {
      v76 = secLogObjForScope("clique-recovery");
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v127;
        _os_log_impl(&dword_1887D2000, v76, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", buf, 0xCu);
      }

      if (error)
      {
        v77 = v127;
        *error = v127;
      }

      v78 = _OctagonSignpostGetNanoseconds(v10, v126);
      v79 = _OctagonSignpostLogSystem();
      v80 = v79;
      if (v125 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v79))
      {
        *buf = 67240192;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v80, OS_SIGNPOST_INTERVAL_END, v10, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
      }

      v81 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        *&buf[4] = v10;
        *&buf[12] = 2048;
        *&buf[14] = v78 / 1000000000.0;
        *&buf[22] = 1026;
        LODWORD(v148) = 0;
        _os_log_impl(&dword_1887D2000, v81, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
      }

      v20 = 0;
      goto LABEL_126;
    }

    v121 = [v128 objectForKeyedSubscript:@"bottleID"];
    v118 = [v128 objectForKeyedSubscript:@"bottleValid"];
    v54 = [v128 objectForKeyedSubscript:@"EscrowServiceEscrowData"];
    v119 = [v54 objectForKeyedSubscript:@"BottledPeerEntropy"];

    if (v119 && v121 && [v118 isEqualToString:@"valid"])
    {
      v55 = secLogObjForScope("clique-recovery");
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v121;
        _os_log_impl(&dword_1887D2000, v55, OS_LOG_TYPE_DEFAULT, "recovering from bottle: %@", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v148 = __Block_byref_object_copy__5565;
      v149 = __Block_byref_object_dispose__5566;
      v150 = 0;
      v56 = _OctagonSignpostLogSystem();
      v57 = os_signpost_id_generate(v56);
      v58 = mach_continuous_time();

      v59 = _OctagonSignpostLogSystem();
      v60 = v59;
      if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
      {
        *v143 = 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v60, OS_SIGNPOST_INTERVAL_BEGIN, v57, "PerformOctagonJoin", " enableTelemetry=YES ", v143, 2u);
      }

      v61 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *v143 = 134217984;
        *&v143[4] = v57;
        _os_log_impl(&dword_1887D2000, v61, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformOctagonJoin  enableTelemetry=YES ", v143, 0xCu);
      }

      v62 = [[OTControlArguments alloc] initWithConfiguration:dataCopy];
      v134[0] = MEMORY[0x1E69E9820];
      v134[1] = 3221225472;
      v134[2] = __71__OTClique_performEscrowRecoveryWithContextData_escrowArguments_error___block_invoke;
      v134[3] = &unk_1E70E0B18;
      v134[4] = buf;
      [v123 restoreFromBottle:v62 entropy:v119 bottleID:v121 reply:v134];

      v63 = *(*&buf[8] + 40);
      v64 = _OctagonSignpostGetNanoseconds(v57, v58);
      v65 = _OctagonSignpostLogSystem();
      v66 = v65;
      if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
      {
        *v143 = 67240192;
        *&v143[4] = v63 == 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v66, OS_SIGNPOST_INTERVAL_END, v57, "PerformOctagonJoin", " OctagonSignpostNamePerformOctagonJoin=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformOctagonJoin}d ", v143, 8u);
      }

      v67 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *v143 = 134218496;
        *&v143[4] = v57;
        *&v143[12] = 2048;
        *&v143[14] = v64 / 1000000000.0;
        *&v143[22] = 1026;
        LODWORD(v144) = v63 == 0;
        _os_log_impl(&dword_1887D2000, v67, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformOctagonJoin  OctagonSignpostNamePerformOctagonJoin=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformOctagonJoin}d ", v143, 0x1Cu);
      }

      v68 = *(*&buf[8] + 40);
      if (v68)
      {
        if (error)
        {
          *error = v68;
        }

        v69 = _OctagonSignpostGetNanoseconds(v10, v126);
        v70 = _OctagonSignpostLogSystem();
        v71 = v70;
        if (v125 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
        {
          *v143 = 67240192;
          _os_signpost_emit_with_name_impl(&dword_1887D2000, v71, OS_SIGNPOST_INTERVAL_END, v10, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", v143, 8u);
        }

        v72 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *v143 = 134218496;
          *&v143[4] = v10;
          *&v143[12] = 2048;
          *&v143[14] = v69 / 1000000000.0;
          *&v143[22] = 1026;
          LODWORD(v144) = 0;
          _os_log_impl(&dword_1887D2000, v72, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", v143, 0x1Cu);
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_115;
      }

      _Block_object_dispose(buf, 8);

      goto LABEL_117;
    }

    v73 = secLogObjForScope("clique-recovery");
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v121;
      _os_log_impl(&dword_1887D2000, v73, OS_LOG_TYPE_DEFAULT, "bottle %@ is not valid, resetting octagon", buf, 0xCu);
    }

    v117 = [[OTControlArguments alloc] initWithConfiguration:dataCopy];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v148 = __Block_byref_object_copy__5565;
    v149 = __Block_byref_object_dispose__5566;
    v150 = 0;
    *v143 = 0;
    *&v143[8] = v143;
    *&v143[16] = 0x3032000000;
    v144 = __Block_byref_object_copy__5565;
    v145 = __Block_byref_object_dispose__5566;
    v146 = 0;
    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 3221225472;
    v133[2] = __71__OTClique_performEscrowRecoveryWithContextData_escrowArguments_error___block_invoke_299;
    v133[3] = &unk_1E70D6D28;
    v133[4] = buf;
    v133[5] = v143;
    [v123 fetchAccountWideSettingsWithForceFetch:1 arguments:v117 reply:v133];
    if ([*(*&buf[8] + 40) hasWalrus])
    {
      walrus = [*(*&buf[8] + 40) walrus];
      enabled = [walrus enabled];
    }

    else
    {
      enabled = 0;
    }

    v82 = _OctagonSignpostLogSystem();
    v120 = os_signpost_id_generate(v82);
    v83 = mach_continuous_time();

    v84 = _OctagonSignpostLogSystem();
    v85 = v84;
    if (v120 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
    {
      *v138 = 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v85, OS_SIGNPOST_INTERVAL_BEGIN, v120, "PerformResetAndEstablishAfterFailedBottle", " enableTelemetry=YES ", v138, 2u);
    }

    v86 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      *v138 = 134217984;
      *&v138[4] = v120;
      _os_log_impl(&dword_1887D2000, v86, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformResetAndEstablishAfterFailedBottle  enableTelemetry=YES ", v138, 0xCu);
    }

    v87 = argumentsCopy;
    v88 = v83;
    v89 = *(*&buf[8] + 40);
    isGuitarfish = [dataCopy isGuitarfish];
    altDSID2 = [dataCopy altDSID];
    flowID = [dataCopy flowID];
    deviceSessionID = [dataCopy deviceSessionID];
    v132 = 0;
    LOBYTE(v116) = 1;
    LOBYTE(v115) = enabled;
    [(OTClique *)v130 resetAndEstablish:3 idmsTargetContext:0 idmsCuttlefishPassword:0 notifyIdMS:0 accountSettings:v89 isGuitarfish:isGuitarfish accountIsW:v115 altDSID:altDSID2 flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:v116 error:&v132];
    v94 = v132;

    v95 = v88;
    argumentsCopy = v87;
    v28 = 0;

    v96 = _OctagonSignpostGetNanoseconds(v120, v95);
    v97 = _OctagonSignpostLogSystem();
    v98 = v97;
    if (v120 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v97))
    {
      *v138 = 67240192;
      *&v138[4] = v94 == 0;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v98, OS_SIGNPOST_INTERVAL_END, v120, "PerformResetAndEstablishAfterFailedBottle", " OctagonSignpostNamePerformResetAndEstablishAfterFailedBottle=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformResetAndEstablishAfterFailedBottle}d ", v138, 8u);
    }

    v99 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      *v138 = 134218496;
      *&v138[4] = v120;
      v139 = 2048;
      v140 = v96 / 1000000000.0;
      v141 = 1026;
      v142 = v94 == 0;
      _os_log_impl(&dword_1887D2000, v99, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformResetAndEstablishAfterFailedBottle  OctagonSignpostNamePerformResetAndEstablishAfterFailedBottle=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformResetAndEstablishAfterFailedBottle}d ", v138, 0x1Cu);
    }

    v100 = secLogObjForScope("clique-recovery");
    v101 = os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT);
    if (v94)
    {
      if (v101)
      {
        *v138 = 138412290;
        *&v138[4] = v94;
        _os_log_impl(&dword_1887D2000, v100, OS_LOG_TYPE_DEFAULT, "failed to reset octagon: %@", v138, 0xCu);
      }

      if (error)
      {
        v102 = v94;
        *error = v94;
      }

      v103 = _OctagonSignpostGetNanoseconds(spid, v126);
      v104 = _OctagonSignpostLogSystem();
      v105 = v104;
      if (v125 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v104))
      {
        *v138 = 67240192;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v105, OS_SIGNPOST_INTERVAL_END, spid, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", v138, 8u);
      }

      v100 = _OctagonSignpostLogSystem();
      if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
LABEL_114:

        _Block_object_dispose(v143, 8);
        _Block_object_dispose(buf, 8);

        if (v94)
        {
LABEL_115:
          v20 = 0;
LABEL_125:

          v81 = v121;
LABEL_126:

LABEL_127:
          v39 = v124;
LABEL_128:

          goto LABEL_129;
        }

LABEL_117:
        v109 = secLogObjForScope("clique-recovery");
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v130;
          _os_log_impl(&dword_1887D2000, v109, OS_LOG_TYPE_DEFAULT, "recovery complete: %@", buf, 0xCu);
        }

        v110 = _OctagonSignpostGetNanoseconds(spid, v126);
        v111 = _OctagonSignpostLogSystem();
        v112 = v111;
        if (v125 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v111))
        {
          *buf = 67240192;
          *&buf[4] = v130 != 0;
          _os_signpost_emit_with_name_impl(&dword_1887D2000, v112, OS_SIGNPOST_INTERVAL_END, spid, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
        }

        v113 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          *&buf[4] = spid;
          *&buf[12] = 2048;
          *&buf[14] = v110 / 1000000000.0;
          *&buf[22] = 1026;
          LODWORD(v148) = v130 != 0;
          _os_log_impl(&dword_1887D2000, v113, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
        }

        v20 = v130;
        goto LABEL_125;
      }

      *v138 = 134218496;
      *&v138[4] = spid;
      v139 = 2048;
      v140 = v103 / 1000000000.0;
      v141 = 1026;
      v142 = 0;
      v106 = "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ";
      v107 = v100;
      v108 = 28;
    }

    else
    {
      if (!v101)
      {
        goto LABEL_114;
      }

      *v138 = 0;
      v106 = "reset octagon succeeded";
      v107 = v100;
      v108 = 2;
    }

    _os_log_impl(&dword_1887D2000, v107, OS_LOG_TYPE_DEFAULT, v106, v138, v108);
    goto LABEL_114;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_129:

  return v20;
}

void __71__OTClique_performEscrowRecoveryWithContextData_escrowArguments_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("clique-recovery");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v11 = 138412290;
      v12 = v3;
      v6 = "restore bottle errored: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v11) = 0;
    v6 = "restoring bottle succeeded";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v3;
}

void __71__OTClique_performEscrowRecoveryWithContextData_escrowArguments_error___block_invoke_299(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (BOOL)isCloudServicesAvailable
{
  gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v2);
  v3 = objc_opt_class();
  if (!v3 && isCloudServicesAvailable_onceToken != -1)
  {
    dispatch_once(&isCloudServicesAvailable_onceToken, &__block_literal_global_5636);
  }

  return v3 != 0;
}

void __36__OTClique_isCloudServicesAvailable__block_invoke()
{
  v0 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "CloudServices is unavailable on this platform", v1, 2u);
  }
}

+ (id)newFriendsWithContextData:(id)data resetReason:(int64_t)reason error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = secLogObjForScope("clique-newfriends");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    context = [dataCopy context];
    altDSID = [dataCopy altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "makeNewFriends invoked using context: %@, altdsid: %@", buf, 0x16u);
  }

  v10 = _OctagonSignpostLogSystem();
  v11 = os_signpost_id_generate(v10);
  v12 = mach_continuous_time();

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1887D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MakeNewFriends", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v11;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: MakeNewFriends  enableTelemetry=YES ", buf, 0xCu);
  }

  v55 = 0;
  v50 = [dataCopy makeOTControl:&v55];
  v49 = v55;
  if (v50)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v63 = __Block_byref_object_copy__5565;
    v64 = __Block_byref_object_dispose__5566;
    v65 = 0;
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x3032000000;
    v53[3] = __Block_byref_object_copy__5565;
    v53[4] = __Block_byref_object_dispose__5566;
    v54 = 0;
    v17 = [[OTControlArguments alloc] initWithConfiguration:dataCopy];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __56__OTClique_newFriendsWithContextData_resetReason_error___block_invoke;
    v52[3] = &unk_1E70D6D28;
    v52[4] = buf;
    v52[5] = v53;
    [v50 fetchAccountWideSettingsWithForceFetch:1 arguments:v17 reply:v52];

    if ([*(*&buf[8] + 40) hasWalrus])
    {
      walrus = [*(*&buf[8] + 40) walrus];
      enabled = [walrus enabled];
    }

    else
    {
      enabled = 0;
    }

    v26 = v12;
    v48 = [[OTClique alloc] initWithContextData:dataCopy];
    isGuitarfish = [dataCopy isGuitarfish];
    altDSID2 = [dataCopy altDSID];
    flowID = [dataCopy flowID];
    deviceSessionID = [dataCopy deviceSessionID];
    v51 = 0;
    LOBYTE(v46) = 1;
    LOBYTE(v45) = enabled;
    [(OTClique *)v48 resetAndEstablish:reason idmsTargetContext:0 idmsCuttlefishPassword:0 notifyIdMS:0 accountSettings:0 isGuitarfish:isGuitarfish accountIsW:v45 altDSID:altDSID2 flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:v46 error:&v51];
    v31 = v51;

    v32 = secLogObjForScope("clique-newfriends");
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      if (v33)
      {
        *v56 = 138412290;
        v57 = v31;
        _os_log_impl(&dword_1887D2000, v32, OS_LOG_TYPE_DEFAULT, "account reset failed: %@", v56, 0xCu);
      }

      if (error)
      {
        v34 = v31;
        *error = v31;
      }

      Nanoseconds = _OctagonSignpostGetNanoseconds(v11, v26);
      v36 = _OctagonSignpostLogSystem();
      v37 = v36;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        *v56 = 67240192;
        LODWORD(v57) = 0;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v37, OS_SIGNPOST_INTERVAL_END, v11, "MakeNewFriends", " OctagonSignpostNameMakeNewFriends=%{public,signpost.telemetry:number1,name=OctagonSignpostNameMakeNewFriends}d ", v56, 8u);
      }

      v38 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 134218496;
        v57 = v11;
        v58 = 2048;
        v59 = Nanoseconds / 1000000000.0;
        v60 = 1026;
        v61 = 0;
        _os_log_impl(&dword_1887D2000, v38, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: MakeNewFriends  OctagonSignpostNameMakeNewFriends=%{public,signpost.telemetry:number1,name=OctagonSignpostNameMakeNewFriends}d ", v56, 0x1Cu);
      }

      v25 = 0;
    }

    else
    {
      if (v33)
      {
        *v56 = 0;
        _os_log_impl(&dword_1887D2000, v32, OS_LOG_TYPE_DEFAULT, "Octagon account reset succeeded", v56, 2u);
      }

      v39 = secLogObjForScope("clique-newfriends");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 0;
        _os_log_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEFAULT, "makeNewFriends complete", v56, 2u);
      }

      v40 = _OctagonSignpostGetNanoseconds(v11, v26);
      v41 = _OctagonSignpostLogSystem();
      v42 = v41;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
      {
        *v56 = 67240192;
        LODWORD(v57) = 1;
        _os_signpost_emit_with_name_impl(&dword_1887D2000, v42, OS_SIGNPOST_INTERVAL_END, v11, "MakeNewFriends", " OctagonSignpostNameMakeNewFriends=%{public,signpost.telemetry:number1,name=OctagonSignpostNameMakeNewFriends}d ", v56, 8u);
      }

      v43 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 134218496;
        v57 = v11;
        v58 = 2048;
        v59 = v40 / 1000000000.0;
        v60 = 1026;
        v61 = 1;
        _os_log_impl(&dword_1887D2000, v43, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: MakeNewFriends  OctagonSignpostNameMakeNewFriends=%{public,signpost.telemetry:number1,name=OctagonSignpostNameMakeNewFriends}d ", v56, 0x1Cu);
      }

      v25 = v48;
    }

    _Block_object_dispose(v53, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v20 = secLogObjForScope("clique-inheritancekey");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v49;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", buf, 0xCu);
    }

    v21 = _OctagonSignpostGetNanoseconds(v11, v12);
    v22 = _OctagonSignpostLogSystem();
    v23 = v22;
    if (v15 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v22))
    {
      *buf = 67240192;
      _os_signpost_emit_with_name_impl(&dword_1887D2000, v23, OS_SIGNPOST_INTERVAL_END, v11, "MakeNewFriends", " OctagonSignpostNameMakeNewFriends=%{public,signpost.telemetry:number1,name=OctagonSignpostNameMakeNewFriends}d ", buf, 8u);
    }

    v24 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v21 / 1000000000.0;
      *&buf[22] = 1026;
      LODWORD(v63) = 0;
      _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: MakeNewFriends  OctagonSignpostNameMakeNewFriends=%{public,signpost.telemetry:number1,name=OctagonSignpostNameMakeNewFriends}d ", buf, 0x1Cu);
    }

    v25 = 0;
  }

  return v25;
}

void __56__OTClique_newFriendsWithContextData_resetReason_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (BOOL)platformSupportsSOS
{
  IsSOSFeatureEnabled = OctagonIsSOSFeatureEnabled();
  if (IsSOSFeatureEnabled)
  {
    LOBYTE(IsSOSFeatureEnabled) = SOSCompatibilityModeEnabled() ^ 1;
  }

  return IsSOSFeatureEnabled;
}

@end