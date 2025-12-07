@interface OspreyAbsintheAuthenticator
- (BOOL)isSessionInfoExpired;
- (OspreyAbsintheAuthenticator)initWithChannel:(id)channel connectionPreferences:(id)preferences;
- (id)_signData:(id)data;
- (void)_ensureAuthenticatedWithCompletion:(id)completion failure:(id)failure;
- (void)_initializeAbsintheClientWithCertificateData:(id)data success:(id)success fail:(id)fail;
- (void)dealloc;
- (void)setState:(int64_t)state;
- (void)signData:(id)data success:(id)success failure:(id)failure;
- (void)willMoveToState:(int64_t)state;
@end

@implementation OspreyAbsintheAuthenticator

- (OspreyAbsintheAuthenticator)initWithChannel:(id)channel connectionPreferences:(id)preferences
{
  channelCopy = channel;
  preferencesCopy = preferences;
  v14.receiver = self;
  v14.super_class = OspreyAbsintheAuthenticator;
  v9 = [(OspreyAbsintheAuthenticator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_state = 0;
    objc_storeStrong(&v9->_connectionPreferences, preferences);
    objc_storeStrong(&v10->_channel, channel);
    v11 = [[OspreyAuthService alloc] initWithChannel:v10->_channel authStrategyVersion:[(OspreyAbsintheAuthenticator *)v10 authenticationStrategyVersion]];
    authService = v10->_authService;
    v10->_authService = v11;
  }

  return v10;
}

- (void)dealloc
{
  nacContext = self->_nacContext;
  if (nacContext)
  {
    IW1PcFszqNK(nacContext);
  }

  v4.receiver = self;
  v4.super_class = OspreyAbsintheAuthenticator;
  [(OspreyAbsintheAuthenticator *)&v4 dealloc];
}

- (void)setState:(int64_t)state
{
  [(OspreyAbsintheAuthenticator *)self willMoveToState:?];
  self->_state = state;

  [(OspreyAbsintheAuthenticator *)self didMoveToState:state];
}

- (void)willMoveToState:(int64_t)state
{
  OspreyLoggingInit(self, a2);
  v5 = OspreyLogContextAbsinthe;
  nacContext = os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG);
  if (nacContext)
  {
    [(OspreyAbsintheAuthenticator *)self willMoveToState:state, v5];
  }

  if (self->_state > state)
  {
    if (state > 1)
    {
      if (state > 3)
      {
        if (state != 4)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else
    {
      OspreyLoggingInit(nacContext, v7);
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
      {
        [OspreyAbsintheAuthenticator willMoveToState:];
      }

      nacContext = [(OspreyConnectionPreferences *)self->_connectionPreferences deleteCertificateData];
    }

    OspreyLoggingInit(nacContext, v7);
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
    {
      [OspreyAbsintheAuthenticator willMoveToState:];
    }

    nacContext = self->_nacContext;
    if (nacContext)
    {
      nacContext = IW1PcFszqNK(nacContext);
    }

    self->_nacContext = 0;
LABEL_14:
    OspreyLoggingInit(nacContext, v7);
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
    {
      [OspreyAbsintheAuthenticator willMoveToState:];
    }

    sessionInfo = self->_sessionInfo;
    self->_sessionInfo = 0;

    sessionExpireOn = self->_sessionExpireOn;
    self->_sessionExpireOn = 0;
  }
}

- (void)signData:(id)data success:(id)success failure:(id)failure
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  successCopy = success;
  failureCopy = failure;
  OspreyLoggingInit(failureCopy, v11);
  v12 = OspreyLogContextAbsinthe;
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[OspreyAbsintheAuthenticator signData:success:failure:]";
    _os_log_impl(&dword_25DDE6000, v12, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__OspreyAbsintheAuthenticator_signData_success_failure___block_invoke;
  v16[3] = &unk_2799F1E08;
  v16[4] = self;
  v17 = dataCopy;
  v18 = successCopy;
  v19 = failureCopy;
  v13 = failureCopy;
  v14 = successCopy;
  v15 = dataCopy;
  [(OspreyAbsintheAuthenticator *)self _ensureAuthenticatedWithCompletion:v16 failure:v13];
}

void __56__OspreyAbsintheAuthenticator_signData_success_failure___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _readyToSignClientData] && (objc_msgSend(*(a1 + 32), "_signData:", *(a1 + 40)), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    (*(*(a1 + 48) + 16))();
    [*(*(a1 + 32) + 8) setAbsintheTimestampForKey:@"FinalSignedData"];
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OspreyAbsintheAuthenticationErrorDomain" code:1 userInfo:0];
    (*(*(a1 + 56) + 16))();
  }
}

- (id)_signData:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  v15 = 0;
  nacContext = self->_nacContext;
  if (!nacContext)
  {
    OspreyLoggingInit(dataCopy, v5);
    v10 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      [OspreyAbsintheAuthenticator _signData:v10];
    }

    goto LABEL_7;
  }

  t1BoNctgaUu66(nacContext, [dataCopy bytes], objc_msgSend(dataCopy, "length"), &v15);
  if (v8)
  {
    OspreyLoggingInit(v8, v9);
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      [OspreyAbsintheAuthenticator _signData:];
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:0];
  v13 = Be81a395Bf0(v15);
  if (v13)
  {
    OspreyLoggingInit(v13, v14);
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      [OspreyAbsintheAuthenticator _signData:];
    }
  }

LABEL_8:

  return v11;
}

- (BOOL)isSessionInfoExpired
{
  if (self->_state < 5)
  {
    return 1;
  }

  p_sessionExpireOn = &self->_sessionExpireOn;
  if (!self->_sessionExpireOn)
  {
    return 1;
  }

  OspreyLoggingInit(self, a2);
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
  {
    [OspreyAbsintheAuthenticator isSessionInfoExpired];
  }

  v3 = *p_sessionExpireOn;
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [(NSDate *)v3 compare:date]== NSOrderedAscending;

  return v5;
}

- (void)_ensureAuthenticatedWithCompletion:(id)completion failure:(id)failure
{
  v47 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  failureCopy = failure;
  v9 = failureCopy;
  state = self->_state;
  if (state != 5)
  {
    if (state == 2)
    {
      OspreyLoggingInit(failureCopy, v8);
      v18 = OspreyLogContextAbsinthe;
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v46 = "[OspreyAbsintheAuthenticator _ensureAuthenticatedWithCompletion:failure:]";
        _os_log_impl(&dword_25DDE6000, v18, OS_LOG_TYPE_INFO, "%s [Absinthe state] Certificate fetched state", buf, 0xCu);
      }

      [(OspreyGRPCChannel *)self->_channel setAbsintheTimestampForKey:@"CreateSessionStart"];
      certificateData = [(OspreyConnectionPreferences *)self->_connectionPreferences certificateData];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_13;
      v35[3] = &unk_2799F1EF8;
      v35[4] = self;
      v36 = completionCopy;
      v37 = v9;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_4;
      v33[3] = &unk_2799F1ED0;
      v34 = v37;
      [(OspreyAbsintheAuthenticator *)self _initializeAbsintheClientWithCertificateData:certificateData success:v35 fail:v33];

      v20 = v36;
      goto LABEL_27;
    }

    if (!state)
    {
      OspreyLoggingInit(failureCopy, v8);
      v11 = OspreyLogContextAbsinthe;
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v46 = "[OspreyAbsintheAuthenticator _ensureAuthenticatedWithCompletion:failure:]";
        _os_log_impl(&dword_25DDE6000, v11, OS_LOG_TYPE_INFO, "%s [Absinthe state] Initial state", buf, 0xCu);
      }

      [(OspreyGRPCChannel *)self->_channel setAbsintheTimestampForKey:@"GetCertificateStart"];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke;
      v42[3] = &unk_2799F1E30;
      v42[4] = self;
      v43 = completionCopy;
      v12 = v9;
      v44 = v12;
      v13 = MEMORY[0x25F8A5BA0](v42);
      [(OspreyAbsintheAuthenticator *)self setState:1];
      certificateData2 = [(OspreyConnectionPreferences *)self->_connectionPreferences certificateData];
      v16 = certificateData2;
      if (certificateData2)
      {
        OspreyLoggingInit(certificateData2, v15);
        v17 = OspreyLogContextAbsinthe;
        if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v46 = "[OspreyAbsintheAuthenticator _ensureAuthenticatedWithCompletion:failure:]";
          _os_log_impl(&dword_25DDE6000, v17, OS_LOG_TYPE_INFO, "%s Certificate found in cache!", buf, 0xCu);
        }

        v13[2](v13);
      }

      else
      {
        authService = self->_authService;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_10;
        v40[3] = &unk_2799F1E58;
        v40[4] = self;
        v41 = v13;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_2;
        v38[3] = &unk_2799F1E80;
        v38[4] = self;
        v39 = v12;
        [(OspreyAuthService *)authService certificateDataWithSuccess:v40 failure:v38];
      }

      v20 = v43;
LABEL_27:

      goto LABEL_28;
    }

    if (![(OspreyAbsintheAuthenticator *)self isSessionInfoExpired])
    {
      selfCopy2 = self;
      v26 = 5;
      goto LABEL_24;
    }

LABEL_19:
    selfCopy2 = self;
    v26 = 2;
LABEL_24:
    [(OspreyAbsintheAuthenticator *)selfCopy2 setState:v26];
    [(OspreyAbsintheAuthenticator *)self _ensureAuthenticatedWithCompletion:completionCopy failure:v9];
    goto LABEL_28;
  }

  OspreyLoggingInit(failureCopy, v8);
  v21 = OspreyLogContextAbsinthe;
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v46 = "[OspreyAbsintheAuthenticator _ensureAuthenticatedWithCompletion:failure:]";
    _os_log_impl(&dword_25DDE6000, v21, OS_LOG_TYPE_INFO, "%s [Absinthe state] Session Initialized state", buf, 0xCu);
  }

  [(OspreyGRPCChannel *)self->_channel setAbsintheTimestampForKey:@"SessionEstablishedStart"];
  isSessionInfoExpired = [(OspreyAbsintheAuthenticator *)self isSessionInfoExpired];
  if (isSessionInfoExpired)
  {
    OspreyLoggingInit(isSessionInfoExpired, v23);
    v24 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v46 = "[OspreyAbsintheAuthenticator _ensureAuthenticatedWithCompletion:failure:]";
      _os_log_impl(&dword_25DDE6000, v24, OS_LOG_TYPE_INFO, "%s Session info expired!", buf, 0xCu);
    }

    goto LABEL_19;
  }

  nDYmeMqvWb(self->_nacContext, [(NSData *)self->_sessionInfo bytes], [(NSData *)self->_sessionInfo length]);
  if (v27)
  {
    if (v9)
    {
      v29 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"OspreyAbsintheAuthenticationNACClientErrorDomain" code:v27 userInfo:0];
      v30 = AbsintheErrorForState(3, v29);
      (v9)[2](v9, v30);
    }
  }

  else
  {
    OspreyLoggingInit(v27, v28);
    v32 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v46 = "[OspreyAbsintheAuthenticator _ensureAuthenticatedWithCompletion:failure:]";
      _os_log_impl(&dword_25DDE6000, v32, OS_LOG_TYPE_INFO, "%s Session key established!", buf, 0xCu);
    }

    [(OspreyAbsintheAuthenticator *)self setState:6];
    [(OspreyGRPCChannel *)self->_channel setAbsintheTimestampForKey:@"SessionEstablishedEnd"];
    completionCopy[2](completionCopy);
  }

LABEL_28:
}

uint64_t __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setAbsintheTimestampForKey:@"GetCertificateEnd"];
  [*(a1 + 32) setState:2];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _ensureAuthenticatedWithCompletion:v3 failure:v4];
}

uint64_t __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_10(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 24) setCertificateData:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) setState:0];
  if (*(a1 + 40))
  {
    v3 = AbsintheErrorForState(0, v4);
    (*(*(a1 + 40) + 16))();
  }
}

void __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_2_14;
  v9[3] = &unk_2799F1EA8;
  v9[4] = v5;
  v10 = v4;
  v11 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_3;
  v7[3] = &unk_2799F1ED0;
  v8 = *(a1 + 48);
  [v6 createClientSessionWithData:a2 success:v9 failure:v7];
}

void __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_2_14(uint64_t a1, void *a2, double a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a2;
  [v5 setAbsintheTimestampForKey:@"CreateSessionEnd"];
  [*(a1 + 32) setSessionInfo:v6];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
  v8 = *(a1 + 32);
  v9 = *(v8 + 56);
  *(v8 + 56) = v7;
  v10 = v7;

  [*(a1 + 32) setState:5];
  [*(a1 + 32) _ensureAuthenticatedWithCompletion:*(a1 + 40) failure:*(a1 + 48)];
}

void __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_3(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = AbsintheErrorForState(2, a2);
    (*(*(a1 + 32) + 16))();
  }
}

void __74__OspreyAbsintheAuthenticator__ensureAuthenticatedWithCompletion_failure___block_invoke_4(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = AbsintheErrorForState(1, a2);
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_initializeAbsintheClientWithCertificateData:(id)data success:(id)success fail:(id)fail
{
  successCopy = success;
  failCopy = fail;
  dataCopy = data;
  [(OspreyAbsintheAuthenticator *)self setState:3];
  bytes = [dataCopy bytes];
  v12 = [dataCopy length];

  KxmB0CKvgWt(bytes, v12);
  v15 = v13;
  if (v13 <= -44023)
  {
    if (v13 == -44302)
    {
      OspreyLoggingInit(v13, v14);
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
      {
        [OspreyAbsintheAuthenticator _initializeAbsintheClientWithCertificateData:success:fail:];
      }

      goto LABEL_6;
    }

    if (v13 == -44204)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  if ((v13 + 44022) <= 0x11 && ((1 << (v13 - 10)) & 0x30003) != 0)
  {
LABEL_4:
    deleteCertificateData = [(OspreyConnectionPreferences *)self->_connectionPreferences deleteCertificateData];
    OspreyLoggingInit(deleteCertificateData, v17);
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      [OspreyAbsintheAuthenticator _initializeAbsintheClientWithCertificateData:success:fail:];
    }

LABEL_6:
    [(OspreyAbsintheAuthenticator *)self setState:0];
    v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"OspreyAbsintheAuthenticationNACClientErrorDomain" code:v15 userInfo:0];
    failCopy[2](failCopy, v18);
    goto LABEL_7;
  }

  if (v13)
  {
LABEL_15:
    OspreyLoggingInit(v13, v14);
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      [OspreyAbsintheAuthenticator _initializeAbsintheClientWithCertificateData:success:fail:];
    }

    goto LABEL_6;
  }

  v19 = [(OspreyAbsintheAuthenticator *)self setState:4];
  OspreyLoggingInit(v19, v20);
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
  {
    [OspreyAbsintheAuthenticator _initializeAbsintheClientWithCertificateData:success:fail:];
  }

  self->_nacContext = 0;
  v18 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
  Be81a395Bf0(0);
  successCopy[2](successCopy, v18);
LABEL_7:
}

- (void)willMoveToState:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[OspreyAbsintheAuthenticator willMoveToState:]";
  v6 = 2048;
  v7 = v3;
  v8 = 2048;
  v9 = a2;
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s Moving from state %ld to %ld", &v4, 0x20u);
}

- (void)_signData:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_25DDE6000, v0, v1, "%s Error signing data with NACSign: %d", v2, v3, v4, v5, v6);
}

- (void)_signData:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_25DDE6000, v0, v1, "%s Error disposing validation data %d", v2, v3, v4, v5, v6);
}

- (void)_signData:(os_log_t)log .cold.3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyAbsintheAuthenticator _signData:]";
  _os_log_error_impl(&dword_25DDE6000, log, OS_LOG_TYPE_ERROR, "%s NacContext is null!", &v1, 0xCu);
}

- (void)_initializeAbsintheClientWithCertificateData:success:fail:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_25DDE6000, v0, v1, "%s NAC status: %d -- Error: certificate data outdated.", v2, v3, v4, v5, v6);
}

- (void)_initializeAbsintheClientWithCertificateData:success:fail:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_25DDE6000, v0, v1, "%s NAC status: %d -- Error: entitlement missing for 'abs-client'.", v2, v3, v4, v5, v6);
}

- (void)_initializeAbsintheClientWithCertificateData:success:fail:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_initializeAbsintheClientWithCertificateData:success:fail:.cold.4()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_25DDE6000, v0, v1, "%s NAC status: %d -- Error!", v2, v3, v4, v5, v6);
}

@end