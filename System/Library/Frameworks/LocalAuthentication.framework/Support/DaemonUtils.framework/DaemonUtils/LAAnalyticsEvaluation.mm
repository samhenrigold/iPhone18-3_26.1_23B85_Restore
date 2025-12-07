@interface LAAnalyticsEvaluation
- (BOOL)shouldCollect;
- (EvaluationRequest)request;
- (LAAnalyticsEvaluation)initWithEvaluationRequest:(id)request;
- (id)buildPayload;
- (void)_authenticationStartedForEvent:(int64_t)event continuity:(BOOL)continuity;
- (void)_biometryAttempt:(int64_t)attempt;
- (void)_passcodeAccepted:(BOOL)accepted;
- (void)authenticationAttempt:(int64_t)attempt event:(int64_t)event;
- (void)authenticationHasEvent:(int64_t)event;
- (void)authenticationResult:(int64_t)result event:(int64_t)event;
@end

@implementation LAAnalyticsEvaluation

- (BOOL)shouldCollect
{
  request = [(LAAnalyticsEvaluation *)self request];
  if ([request isInteractive])
  {
    request2 = [(LAAnalyticsEvaluation *)self request];
    v5 = [request2 isImmediateSuccess] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (EvaluationRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

- (LAAnalyticsEvaluation)initWithEvaluationRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = LAAnalyticsEvaluation;
  v5 = [(LAAnalytics *)&v8 initWithEventName:@"com.apple.LocalAuthentication.Evaluation"];
  if (v5)
  {
    v5->_policy = [requestCopy policy];
    objc_storeWeak(&v5->_request, requestCopy);
    v5->_continuity = 0;
    v6 = +[(LACBiometryHelper *)BiometryHelper];
    v5->_biometryType = [v6 biometryType];
  }

  return v5;
}

- (id)buildPayload
{
  v38[3] = *MEMORY[0x277D85DE8];
  v37[0] = @"result";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation result](self, "result")}];
  v38[0] = v3;
  v37[1] = @"biometryType";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation biometryType](self, "biometryType")}];
  v38[1] = v4;
  v37[2] = @"authenticationTypes";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation authenticationTypes](self, "authenticationTypes")}];
  v38[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
  v7 = [v6 mutableCopy];

  if ([(LAAnalyticsEvaluation *)self policy]>= 1)
  {
    v35 = @"policy";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation policy](self, "policy")}];
    v36 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    [v7 addEntriesFromDictionary:v9];
  }

  if ([(LAAnalyticsEvaluation *)self biometryStarted])
  {
    v33[0] = @"biometryAttempts";
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation biometryAttempts](self, "biometryAttempts")}];
    v34[0] = v10;
    v33[1] = @"biometryFailures";
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation biometryFailures](self, "biometryFailures")}];
    v34[1] = v11;
    v33[2] = @"biometryNoMatches";
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation biometryNoMatches](self, "biometryNoMatches")}];
    v34[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
    [v7 addEntriesFromDictionary:v13];
  }

  if ([(LAAnalyticsEvaluation *)self biometryStarted]|| [(LAAnalyticsEvaluation *)self biometryResult])
  {
    v31 = @"biometryResult";
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation biometryResult](self, "biometryResult")}];
    v32 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [v7 addEntriesFromDictionary:v15];
  }

  continuity = self->_continuity;
  if (continuity)
  {
    v29 = @"continuity";
    v17 = [MEMORY[0x277CCABB0] numberWithInt:continuity == 1];
    v30 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v7 addEntriesFromDictionary:v18];
  }

  if ([(LAAnalyticsEvaluation *)self passcodeStarted])
  {
    v27[0] = @"passcodeAttempts";
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation passcodeAttempts](self, "passcodeAttempts")}];
    v27[1] = @"passcodeFailures";
    v28[0] = v19;
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation passcodeFailures](self, "passcodeFailures")}];
    v28[1] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v7 addEntriesFromDictionary:v21];
  }

  if ([(LAAnalyticsEvaluation *)self passcodeStarted]|| [(LAAnalyticsEvaluation *)self passcodeResult])
  {
    v25 = @"passcodeResult";
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation passcodeResult](self, "passcodeResult")}];
    v26 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [v7 addEntriesFromDictionary:v23];
  }

  return v7;
}

- (void)authenticationHasEvent:(int64_t)event
{
  if ((event - 1) > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_238B8D858[event - 1];
  }

  self->_authenticationTypes |= v3;
}

- (void)_authenticationStartedForEvent:(int64_t)event continuity:(BOOL)continuity
{
  continuityCopy = continuity;
  v19 = *MEMORY[0x277D85DE8];
  if (event == 7)
  {
LABEL_4:
    self->_biometryStarted = 1;
    goto LABEL_5;
  }

  if (event != 2)
  {
    if (event != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (![(LAAnalyticsEvaluation *)self passcodeStarted])
  {
    self->_passcodeStarted = 1;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = +[LAAnalyticsPasscodeFallbackPeriod activePersistentInstances];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          request = [(LAAnalyticsEvaluation *)self request];
          [v12 passcodePresentedWithEvaluationRequest:request biometryAttempts:{-[LAAnalyticsEvaluation biometryAttempts](self, "biometryAttempts")}];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

LABEL_5:
  if (continuityCopy)
  {
    self->_continuity = 1;
    self->_continuityEvent = event;
  }
}

- (void)authenticationAttempt:(int64_t)attempt event:(int64_t)event
{
  if (event == 7)
  {
LABEL_4:
    [(LAAnalyticsEvaluation *)self _biometryAttempt:attempt];
LABEL_5:
    if (!attempt)
    {
      return;
    }

    goto LABEL_6;
  }

  if (event != 2)
  {
    if (event != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [(LAAnalyticsEvaluation *)self _passcodeAccepted:attempt == 0];
  if (!attempt)
  {
    return;
  }

LABEL_6:
  if (self->_continuityEvent == event)
  {
    self->_continuity = 2;
  }
}

- (void)authenticationResult:(int64_t)result event:(int64_t)event
{
  v4 = &OBJC_IVAR___LAAnalyticsEvaluation__biometryResult;
  if (event != 1 && event != 7)
  {
    if (event != 2)
    {
      return;
    }

    v4 = &OBJC_IVAR___LAAnalyticsEvaluation__passcodeResult;
  }

  *(&self->super.super.isa + *v4) = result;
}

- (void)_biometryAttempt:(int64_t)attempt
{
  v17 = *MEMORY[0x277D85DE8];
  ++self->_biometryAttempts;
  if ((attempt - 2) < 2)
  {
    v4 = 88;
LABEL_6:
    ++*(&self->super.super.isa + v4);
    return;
  }

  if (attempt)
  {
    if (attempt != 1)
    {
      return;
    }

    ++self->_biometryFailures;
    v4 = 96;
    goto LABEL_6;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = +[LAAnalyticsPasscodeFallbackPeriod activePersistentInstances];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        request = [(LAAnalyticsEvaluation *)self request];
        [v10 biometrySucceededWithEvaluationRequest:request];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_passcodeAccepted:(BOOL)accepted
{
  ++self->_passcodeAttempts;
  if (!accepted)
  {
    ++self->_passcodeFailures;
  }
}

@end