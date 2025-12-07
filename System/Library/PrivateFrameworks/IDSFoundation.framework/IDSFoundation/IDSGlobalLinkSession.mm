@interface IDSGlobalLinkSession
- (BOOL)shouldLinkEngineAllowOngoingTasks;
- (BOOL)wantsToBeConnected;
- (IDSGlobalLinkSession)initWithSessionInfo:(id)info sessionInfoDict:(id)dict linkEngine:(id)engine;
- (NSData)sessionToken;
- (const)serverAddress;
- (const)serverAddressV6;
- (int64_t)desiredRelayConnectionBehavior;
- (void)_handleSessionConvergenceTimer;
- (void)_handleSessionGoAwayTimer;
- (void)invalidate;
- (void)setSessionInfo:(id)info sessionInfoDict:(id)dict;
- (void)startSessionConvergenceTimer:(int)timer block:(id)block;
- (void)startSessionGoAwayTimer:(int)timer block:(id)block;
- (void)stopSessionConvergenceTimer;
- (void)stopSessionGoAwayTimer;
@end

@implementation IDSGlobalLinkSession

- (IDSGlobalLinkSession)initWithSessionInfo:(id)info sessionInfoDict:(id)dict linkEngine:(id)engine
{
  infoCopy = info;
  dictCopy = dict;
  engineCopy = engine;
  v17.receiver = self;
  v17.super_class = IDSGlobalLinkSession;
  v12 = [(IDSGlobalLinkSession *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionInfo, info);
    objc_storeStrong(&v13->_sessionInfoDict, dict);
    objc_storeStrong(&v13->_linkEngine, engine);
    array = [MEMORY[0x1E695DF70] array];
    remotePushTokens = v13->_remotePushTokens;
    v13->_remotePushTokens = array;

    -[IDSGlobalLinkSession setServerAddress:](v13, "setServerAddress:", [infoCopy serverAddress]);
    -[IDSGlobalLinkSession setServerAddressV6:](v13, "setServerAddressV6:", [infoCopy serverAddressIPv6]);
  }

  return v13;
}

- (int64_t)desiredRelayConnectionBehavior
{
  if (self->_acceptStatus == 2)
  {
    return 3;
  }

  if (self->_isPendingDisconnect)
  {
    return 2;
  }

  if (self->_wantsToJoin)
  {
    return 1;
  }

  if (self->_wantsInfo)
  {
    return 1;
  }

  return 3;
}

- (BOOL)shouldLinkEngineAllowOngoingTasks
{
  if (self->_acceptStatus == 2)
  {
    return 0;
  }

  else
  {
    return self->_isPendingDisconnect || self->_wantsToJoin || self->_wantsInfo;
  }
}

- (BOOL)wantsToBeConnected
{
  if (self->_isPendingDisconnect)
  {
    return 0;
  }

  else
  {
    return self->_wantsToJoin || self->_wantsInfo;
  }
}

- (const)serverAddress
{
  if (IsValidSA(&self->_serverAddress))
  {
    return &self->_serverAddress;
  }

  sessionInfo = self->_sessionInfo;

  return [(IDSQuickRelaySessionInfo *)sessionInfo serverAddress];
}

- (const)serverAddressV6
{
  if (IsValidSA(&self->_serverAddressV6))
  {
    return &self->_serverAddressV6;
  }

  sessionInfo = self->_sessionInfo;

  return [(IDSQuickRelaySessionInfo *)sessionInfo serverAddressIPv6];
}

- (NSData)sessionToken
{
  sessionToken = self->_sessionToken;
  if (sessionToken)
  {
    relaySessionToken = sessionToken;
  }

  else
  {
    relaySessionToken = [(IDSQuickRelaySessionInfo *)self->_sessionInfo relaySessionToken];
  }

  return relaySessionToken;
}

- (void)_handleSessionConvergenceTimer
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionConvergenceTimer = self->_sessionConvergenceTimer;
    v5 = _Block_copy(self->_sessionConvergenceBlock);
    *buf = 134218240;
    v21 = sessionConvergenceTimer;
    v22 = 2048;
    v23 = v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "session convergence timer %p fired, block %p.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v6 = self->_sessionConvergenceTimer;
      v18 = _Block_copy(self->_sessionConvergenceBlock);
      _IDSLogTransport(@"GL", @"IDS", @"session convergence timer %p fired, block %p.", v7, v8, v9, v10, v11, v6);

      if (_IDSShouldLog(0))
      {
        v12 = self->_sessionConvergenceTimer;
        v19 = _Block_copy(self->_sessionConvergenceBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"session convergence timer %p fired, block %p.", v13, v14, v15, v16, v12);
      }
    }
  }

  sessionConvergenceBlock = self->_sessionConvergenceBlock;
  if (sessionConvergenceBlock)
  {
    sessionConvergenceBlock[2]();
  }

  [(IDSGlobalLinkSession *)self stopSessionConvergenceTimer];
}

- (void)startSessionConvergenceTimer:(int)timer block:(id)block
{
  v64 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (*&self->_sessionConvergenceTimer == 0)
  {
    v27 = im_primary_queue();
    v28 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v27);
    sessionConvergenceTimer = self->_sessionConvergenceTimer;
    self->_sessionConvergenceTimer = v28;

    v30 = self->_sessionConvergenceTimer;
    v31 = dispatch_time(0, 1000000000 * timer);
    dispatch_source_set_timer(v30, v31, 1000000000 * timer, 0x5F5E100uLL);
    v32 = self->_sessionConvergenceTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A7C0AC44;
    handler[3] = &unk_1E77E0818;
    handler[4] = self;
    dispatch_source_set_event_handler(v32, handler);
    v33 = _Block_copy(blockCopy);
    sessionConvergenceBlock = self->_sessionConvergenceBlock;
    self->_sessionConvergenceBlock = v33;

    dispatch_resume(self->_sessionConvergenceTimer);
    v35 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = self->_sessionConvergenceTimer;
      v37 = _Block_copy(self->_sessionConvergenceBlock);
      idsSessionID = [(IDSGlobalLinkSession *)self idsSessionID];
      qrSessionID = [(IDSGlobalLinkSession *)self qrSessionID];
      *buf = 134219010;
      v61 = v36;
      v62 = 1024;
      *v63 = timer;
      *&v63[4] = 2048;
      *&v63[6] = v37;
      *&v63[14] = 2112;
      *&v63[16] = idsSessionID;
      *&v63[24] = 2112;
      *&v63[26] = qrSessionID;
      _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "start session convergence timer %p, timeout %d sec, block %p for idsSessionID=%@ qrSessionID=%@.", buf, 0x30u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v40 = self->_sessionConvergenceTimer;
        v41 = _Block_copy(self->_sessionConvergenceBlock);
        idsSessionID2 = [(IDSGlobalLinkSession *)self idsSessionID];
        qrSessionID2 = [(IDSGlobalLinkSession *)self qrSessionID];
        _IDSLogTransport(@"GL", @"IDS", @"start session convergence timer %p, timeout %d sec, block %p for idsSessionID=%@ qrSessionID=%@.", v43, v44, v45, v46, v47, v40);

        if (_IDSShouldLog(0))
        {
          v48 = self->_sessionConvergenceTimer;
          v49 = _Block_copy(self->_sessionConvergenceBlock);
          idsSessionID3 = [(IDSGlobalLinkSession *)self idsSessionID];
          qrSessionID3 = [(IDSGlobalLinkSession *)self qrSessionID];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"start session convergence timer %p, timeout %d sec, block %p for idsSessionID=%@ qrSessionID=%@.", v51, v52, v53, v54, v48);
        }
      }
    }
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_sessionConvergenceTimer;
      v9 = _Block_copy(self->_sessionConvergenceBlock);
      idsSessionID4 = [(IDSGlobalLinkSession *)self idsSessionID];
      qrSessionID4 = [(IDSGlobalLinkSession *)self qrSessionID];
      *buf = 134218754;
      v61 = v8;
      v62 = 2048;
      *v63 = v9;
      *&v63[8] = 2112;
      *&v63[10] = idsSessionID4;
      *&v63[18] = 2112;
      *&v63[20] = qrSessionID4;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "session convergence timer %p and block %p for idsSessionID=%@ qrSessionID=%@ are already scheduled.", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v12 = self->_sessionConvergenceTimer;
        v13 = _Block_copy(self->_sessionConvergenceBlock);
        idsSessionID5 = [(IDSGlobalLinkSession *)self idsSessionID];
        qrSessionID5 = [(IDSGlobalLinkSession *)self qrSessionID];
        _IDSLogTransport(@"GL", @"IDS", @"session convergence timer %p and block %p for idsSessionID=%@ qrSessionID=%@ are already scheduled.", v15, v16, v17, v18, v19, v12);

        if (_IDSShouldLog(0))
        {
          v20 = self->_sessionConvergenceTimer;
          v21 = _Block_copy(self->_sessionConvergenceBlock);
          idsSessionID6 = [(IDSGlobalLinkSession *)self idsSessionID];
          qrSessionID6 = [(IDSGlobalLinkSession *)self qrSessionID];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"session convergence timer %p and block %p for idsSessionID=%@ qrSessionID=%@ are already scheduled.", v23, v24, v25, v26, v20);
        }
      }
    }
  }
}

- (void)stopSessionConvergenceTimer
{
  v26 = *MEMORY[0x1E69E9840];
  sessionConvergenceTimer = self->_sessionConvergenceTimer;
  if (sessionConvergenceTimer)
  {
    dispatch_source_cancel(sessionConvergenceTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_sessionConvergenceTimer;
      v6 = _Block_copy(self->_sessionConvergenceBlock);
      *buf = 134218240;
      v23 = v5;
      v24 = 2048;
      v25 = v6;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop session convergence timer %p, block %p.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v7 = self->_sessionConvergenceTimer;
      v20 = _Block_copy(self->_sessionConvergenceBlock);
      _IDSLogTransport(@"GL", @"IDS", @"stop session convergence timer %p, block %p.", v8, v9, v10, v11, v12, v7);

      if (_IDSShouldLog(0))
      {
        v13 = self->_sessionConvergenceTimer;
        v21 = _Block_copy(self->_sessionConvergenceBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop session convergence timer %p, block %p.", v14, v15, v16, v17, v13);
      }
    }

    v18 = self->_sessionConvergenceTimer;
    self->_sessionConvergenceTimer = 0;

    sessionConvergenceBlock = self->_sessionConvergenceBlock;
    self->_sessionConvergenceBlock = 0;
  }
}

- (void)_handleSessionGoAwayTimer
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionConvergenceTimer = self->_sessionConvergenceTimer;
    v5 = _Block_copy(self->_sessionConvergenceBlock);
    *buf = 134218240;
    v21 = sessionConvergenceTimer;
    v22 = 2048;
    v23 = v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "session goaway timer %p fired, block %p.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v6 = self->_sessionConvergenceTimer;
      v18 = _Block_copy(self->_sessionConvergenceBlock);
      _IDSLogTransport(@"GL", @"IDS", @"session goaway timer %p fired, block %p.", v7, v8, v9, v10, v11, v6);

      if (_IDSShouldLog(0))
      {
        v12 = self->_sessionConvergenceTimer;
        v19 = _Block_copy(self->_sessionConvergenceBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"session goaway timer %p fired, block %p.", v13, v14, v15, v16, v12);
      }
    }
  }

  sessionGoAwayBlock = self->_sessionGoAwayBlock;
  if (sessionGoAwayBlock)
  {
    sessionGoAwayBlock[2]();
  }

  [(IDSGlobalLinkSession *)self stopSessionGoAwayTimer];
}

- (void)startSessionGoAwayTimer:(int)timer block:(id)block
{
  v58 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (*&self->_sessionGoAwayTimer == 0)
  {
    v24 = im_primary_queue();
    v25 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v24);
    sessionGoAwayTimer = self->_sessionGoAwayTimer;
    self->_sessionGoAwayTimer = v25;

    v27 = self->_sessionGoAwayTimer;
    v28 = dispatch_time(0, 1000000000 * timer);
    dispatch_source_set_timer(v27, v28, 1000000000 * timer, 0x5F5E100uLL);
    v29 = self->_sessionGoAwayTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A7C0B420;
    handler[3] = &unk_1E77E0818;
    handler[4] = self;
    dispatch_source_set_event_handler(v29, handler);
    v30 = _Block_copy(blockCopy);
    sessionGoAwayBlock = self->_sessionGoAwayBlock;
    self->_sessionGoAwayBlock = v30;

    dispatch_resume(self->_sessionGoAwayTimer);
    v32 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = self->_sessionGoAwayTimer;
      v34 = _Block_copy(self->_sessionGoAwayBlock);
      qrSessionID = [(IDSGlobalLinkSession *)self qrSessionID];
      *buf = 134218754;
      v55 = v33;
      v56 = 1024;
      *v57 = timer;
      *&v57[4] = 2048;
      *&v57[6] = v34;
      *&v57[14] = 2112;
      *&v57[16] = qrSessionID;
      _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "start session goaway timer %p, timeout %d sec, block %p for %@.", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v36 = self->_sessionGoAwayTimer;
        v37 = _Block_copy(self->_sessionGoAwayBlock);
        qrSessionID2 = [(IDSGlobalLinkSession *)self qrSessionID];
        _IDSLogTransport(@"GL", @"IDS", @"start session goaway timer %p, timeout %d sec, block %p for %@.", v38, v39, v40, v41, v42, v36);

        if (_IDSShouldLog(0))
        {
          v43 = self->_sessionGoAwayTimer;
          v44 = _Block_copy(self->_sessionGoAwayBlock);
          qrSessionID3 = [(IDSGlobalLinkSession *)self qrSessionID];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"start session goaway timer %p, timeout %d sec, block %p for %@.", v45, v46, v47, v48, v43);
        }
      }
    }
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_sessionGoAwayTimer;
      v9 = _Block_copy(self->_sessionGoAwayBlock);
      qrSessionID4 = [(IDSGlobalLinkSession *)self qrSessionID];
      *buf = 134218498;
      v55 = v8;
      v56 = 2048;
      *v57 = v9;
      *&v57[8] = 2112;
      *&v57[10] = qrSessionID4;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "session goaway timer %p and block %p for %@ are already scheduled.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v11 = self->_sessionGoAwayTimer;
        v12 = _Block_copy(self->_sessionGoAwayBlock);
        qrSessionID5 = [(IDSGlobalLinkSession *)self qrSessionID];
        _IDSLogTransport(@"GL", @"IDS", @"session goaway timer %p and block %p for %@ are already scheduled.", v13, v14, v15, v16, v17, v11);

        if (_IDSShouldLog(0))
        {
          v18 = self->_sessionGoAwayTimer;
          v19 = _Block_copy(self->_sessionGoAwayBlock);
          qrSessionID6 = [(IDSGlobalLinkSession *)self qrSessionID];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"session goaway timer %p and block %p for %@ are already scheduled.", v20, v21, v22, v23, v18);
        }
      }
    }
  }
}

- (void)stopSessionGoAwayTimer
{
  v26 = *MEMORY[0x1E69E9840];
  sessionGoAwayTimer = self->_sessionGoAwayTimer;
  if (sessionGoAwayTimer)
  {
    dispatch_source_cancel(sessionGoAwayTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_sessionGoAwayTimer;
      v6 = _Block_copy(self->_sessionGoAwayBlock);
      *buf = 134218240;
      v23 = v5;
      v24 = 2048;
      v25 = v6;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop session GoAway timer %p, block %p.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v7 = self->_sessionGoAwayTimer;
      v20 = _Block_copy(self->_sessionGoAwayBlock);
      _IDSLogTransport(@"GL", @"IDS", @"stop session GoAway timer %p, block %p.", v8, v9, v10, v11, v12, v7);

      if (_IDSShouldLog(0))
      {
        v13 = self->_sessionGoAwayTimer;
        v21 = _Block_copy(self->_sessionGoAwayBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop session GoAway timer %p, block %p.", v14, v15, v16, v17, v13);
      }
    }

    v18 = self->_sessionGoAwayTimer;
    self->_sessionGoAwayTimer = 0;

    sessionGoAwayBlock = self->_sessionGoAwayBlock;
    self->_sessionGoAwayBlock = 0;
  }
}

- (void)setSessionInfo:(id)info sessionInfoDict:(id)dict
{
  infoCopy = info;
  dictCopy = dict;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "setSessionInfo and sessionInfoDict.", v23, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"setSessionInfo and sessionInfoDict.", v9, v10, v11, v12, v13, *v23);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"setSessionInfo and sessionInfoDict.", v14, v15, v16, v17, *v23);
      }
    }
  }

  sessionToken = self->_sessionToken;
  self->_sessionToken = 0;

  *&self->_serverAddressV6.ss_len = 0u;
  p_serverAddressV6 = &self->_serverAddressV6;
  *&p_serverAddressV6[-1].__ss_pad2[80] = 0u;
  *&p_serverAddressV6[-1].__ss_pad2[96] = 0u;
  *&p_serverAddressV6[-1].__ss_pad2[48] = 0u;
  *&p_serverAddressV6[-1].__ss_pad2[64] = 0u;
  *&p_serverAddressV6[-1].__ss_pad2[16] = 0u;
  *&p_serverAddressV6[-1].__ss_pad2[32] = 0u;
  *&p_serverAddressV6[-1].ss_len = 0u;
  *p_serverAddressV6[-1].__ss_pad2 = 0u;
  *p_serverAddressV6->__ss_pad2 = 0u;
  *&p_serverAddressV6->__ss_pad2[16] = 0u;
  *&p_serverAddressV6->__ss_pad2[32] = 0u;
  *&p_serverAddressV6->__ss_pad2[48] = 0u;
  *&p_serverAddressV6->__ss_pad2[64] = 0u;
  *&p_serverAddressV6->__ss_pad2[80] = 0u;
  *&p_serverAddressV6->__ss_pad2[96] = 0u;
  v20 = *&p_serverAddressV6[1].__ss_pad2[8];
  *&p_serverAddressV6[1].__ss_pad2[8] = infoCopy;
  v21 = infoCopy;

  v22 = *&p_serverAddressV6[1].__ss_pad2[16];
  *&p_serverAddressV6[1].__ss_pad2[16] = dictCopy;
}

- (void)invalidate
{
  sessionInfo = self->_sessionInfo;
  self->_sessionInfo = 0;

  sessionInfoDict = self->_sessionInfoDict;
  self->_sessionInfoDict = 0;

  linkEngine = self->_linkEngine;
  self->_linkEngine = 0;

  remotePushTokens = self->_remotePushTokens;
  self->_remotePushTokens = 0;
}

@end