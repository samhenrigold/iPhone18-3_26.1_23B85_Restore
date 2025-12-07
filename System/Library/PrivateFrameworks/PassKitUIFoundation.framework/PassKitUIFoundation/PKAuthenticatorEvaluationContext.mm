@interface PKAuthenticatorEvaluationContext
- (BOOL)_delegateSupportsPasscodeDismissal;
- (BOOL)_delegateSupportsPasscodePresentation;
- (BOOL)_delegateSupportsPassphraseDismissal;
- (BOOL)_delegateSupportsPassphrasePresentation;
- (BOOL)_presentPasscodeIfNecessary;
- (BOOL)fingerPresent;
- (BOOL)updateCompletedMechanismsForPushButtonEventParams:(id)params;
- (PKAuthenticatorDelegate)delegate;
- (PKAuthenticatorEvaluationContext)initWithRequest:(id)request completionHandler:(id)handler forAuthenticator:(id)authenticator;
- (id)_requestRemoteAuthenticatorViewControllerOfType:(unsigned __int8)type withHostingConfiguration:(id)configuration;
- (id)hoistCompletionHandler;
- (void)_clearFingerOnTimer;
- (void)_clearLiftFingerTimer;
- (void)_createContextWithExternalizedContext:(id)context;
- (void)_dismissAuthenticatorViewOfType:(unsigned __int8)type;
- (void)_handleLiftFinger;
- (void)_presentAuthenticatorViewOfType:(unsigned __int8)type withParams:(id)params;
- (void)_setCoachingState:(int64_t)state;
- (void)_setEvaluationStateWithEvent:(id)event;
- (void)_setFingerOnTimer;
- (void)_setLiftFingerTimer;
- (void)_updateActiveState:(BOOL)state forEvent:(int64_t)event withParameters:(id)parameters;
- (void)_updateCoachingState;
- (void)_updateEvaluationState;
- (void)accessLAContext:(id)context;
- (void)bindToSecureIndicatorProvider:(id)provider;
- (void)dealloc;
- (void)evaluateWithOptions:(id)options completion:(id)completion;
- (void)event:(int64_t)event params:(id)params reply:(id)reply;
- (void)fallbackToPasscode;
- (void)handlePasscodeEventWithParameters:(id)parameters;
- (void)handlePearlEventWithParameters:(id)parameters;
- (void)handlePushButtonEventWithParameters:(id)parameters;
- (void)handlePushButtonSecondaryEventWithParameters:(id)parameters;
- (void)handleTouchIDEventWithParameters:(id)parameters;
- (void)invalidateWithIntent:(int64_t)intent;
- (void)setDelegate:(id)delegate resetPriorDelegate:(BOOL)priorDelegate;
@end

@implementation PKAuthenticatorEvaluationContext

- (PKAuthenticatorEvaluationContext)initWithRequest:(id)request completionHandler:(id)handler forAuthenticator:(id)authenticator
{
  requestCopy = request;
  handlerCopy = handler;
  authenticatorCopy = authenticator;
  v55.receiver = self;
  v55.super_class = PKAuthenticatorEvaluationContext;
  v12 = [(PKAuthenticatorEvaluationContext *)&v55 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_authenticator, authenticatorCopy);
    if (PKPearlIsAvailable() && LAUIIsSecureFaceIDUISupported())
    {
      v14 = LAUIIsSecureFaceIDUIEnabled();
      v13->_secureIndicatorRequired = v14;
      if (v14 && PKSystemApertureIsAvailable())
      {
        v15 = objc_alloc_init(PKBannerSecureIndicatorProvider);
        secureIndicatorProvider = v13->_secureIndicatorProvider;
        v13->_secureIndicatorProvider = v15;
      }
    }

    else
    {
      v13->_secureIndicatorRequired = 0;
    }

    policy = [requestCopy policy];
    v19 = _LAPolicyContainerForPKPolicy(policy, v18);
    v21 = v20;
    objc_storeStrong(&v13->_request, request);
    if ((v21 & 0x10000) != 0)
    {
      v24 = 0;
      v23 = (v21 >> 8) & 1;
    }

    else if ((v21 & 0x100) != 0)
    {
      LOBYTE(v23) = 1;
      v24 = 1;
    }

    else
    {
      accessControlRef = [requestCopy accessControlRef];
      LOBYTE(v23) = 0;
      v24 = accessControlRef != 0;
    }

    v13->_supported = v24;
    v13->_policySupported = v24 & v23;
    v13->_forceApplePayCheck = v21 & 1;
    v13->_forceSkipUserIntent = BYTE3(v21) & 1;
    v13->_policy = v19;
    v25 = [handlerCopy copy];
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v25;

    v13->_presentationFlags = 0;
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    accessHandlers = v13->_accessHandlers;
    v13->_accessHandlers = v27;

    v13->_externalContextInvalidationPolicy = 0;
    v13->_externalContextOptions = 0;
    p_externalContextInvalidationPolicy = &v13->_externalContextInvalidationPolicy;
    if ([(PKAuthenticatorEvaluationRequest *)v13->_request useLegacyAuthenticator])
    {
      hasInitialAuthenticatorState = 0;
      v31 = 0;
    }

    else
    {
      hasInitialAuthenticatorState = [requestCopy hasInitialAuthenticatorState];
      v31 = ([requestCopy initialAuthenticatorState] & 6) != 0;
    }

    IsAvailable = PKUserIntentIsAvailable();
    v33 = 0;
    if (policy != 1 && IsAvailable)
    {
      v33 = !v13->_forceSkipUserIntent;
    }

    v13->_acquireUserIntent = v33;
    v34 = PKUserIntentIsAvailable();
    acquireUserIntent = v13->_acquireUserIntent;
    if (v34)
    {
      v13->_acquireSecondaryUserIntent = policy == 8 && acquireUserIntent;
      if (!acquireUserIntent)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13->_acquireSecondaryUserIntent = 0;
      if (!acquireUserIntent)
      {
        goto LABEL_28;
      }
    }

    assumeUserIntentAvailable = [(PKAuthenticatorEvaluationRequest *)v13->_request assumeUserIntentAvailable];
    v37 = assumeUserIntentAvailable;
    if (policy == 8 || assumeUserIntentAvailable || (PKPearlIsAvailable() & 1) != 0)
    {
      if (!v37)
      {
        goto LABEL_28;
      }
    }

    else if (!v31 && (hasInitialAuthenticatorState & 1) != 0)
    {
LABEL_28:
      if ([(PKAuthenticatorEvaluationRequest *)v13->_request assumeBiometricOrPasscodeAvailable])
      {
        v13->_completedMechanisms |= 1uLL;
      }

      v13->_coachingStatus = 1;
      if (![(PKAuthenticatorEvaluationRequest *)v13->_request useLegacyAuthenticator])
      {
        v13->_coachingState = 0;
        if (!v13->_acquireUserIntent || (v13->_completedMechanisms & 0x10) != 0)
        {
          v38 = 4;
          if (v31)
          {
            v38 = 0;
          }

          if (!hasInitialAuthenticatorState)
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = 3;
        }

        v13->_evaluationState = v38;
      }

      objc_initWeak(&location, v13);
      externalizedContext = [requestCopy externalizedContext];
      if (externalizedContext)
      {
        *p_externalContextInvalidationPolicy = 2;
LABEL_48:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __87__PKAuthenticatorEvaluationContext_initWithRequest_completionHandler_forAuthenticator___block_invoke_3;
        block[3] = &unk_2799FFAF8;
        v44 = &v50;
        objc_copyWeak(&v50, &location);
        v46 = &v49;
        v49 = externalizedContext;
        v45 = externalizedContext;
        dispatch_async(MEMORY[0x277D85CD0], block);
        goto LABEL_49;
      }

      v40 = PKUserIntentIsAvailable();
      policy = v13->_policy;
      if (v40)
      {
        if (policy == 1004)
        {
          *p_externalContextInvalidationPolicy = 1;
          v42 = +[PKAuthenticatorSharedRootContext sharedInstance];
          externalizedContext = [v42 externalizedContext];

          goto LABEL_48;
        }
      }

      else if (policy == 1004 && PKRunningInViewService())
      {
        v13->_externalContextOptions |= 1uLL;
        v43 = objc_alloc_init(MEMORY[0x277D66A00]);
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __87__PKAuthenticatorEvaluationContext_initWithRequest_completionHandler_forAuthenticator___block_invoke;
        v51[3] = &unk_2799FFE18;
        v44 = &v53;
        objc_copyWeak(&v53, &location);
        v45 = v43;
        v52 = v45;
        [v45 fetchUnlockCredentialSetWithCompletion:v51];
        v46 = &v52;
LABEL_49:

        objc_destroyWeak(v44);
        objc_destroyWeak(&location);
        goto LABEL_50;
      }

      externalizedContext = 0;
      goto LABEL_48;
    }

    v13->_completedMechanisms |= 0x10uLL;
    goto LABEL_28;
  }

LABEL_50:

  return v13;
}

void __87__PKAuthenticatorEvaluationContext_initWithRequest_completionHandler_forAuthenticator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __87__PKAuthenticatorEvaluationContext_initWithRequest_completionHandler_forAuthenticator___block_invoke_2;
  v8 = &unk_2799FFAF8;
  objc_copyWeak(&v10, (a1 + 40));
  v4 = v3;
  v9 = v4;
  dispatch_async(MEMORY[0x277D85CD0], &v5);
  [*(a1 + 32) invalidate];

  objc_destroyWeak(&v10);
}

void __87__PKAuthenticatorEvaluationContext_initWithRequest_completionHandler_forAuthenticator___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _createContextWithExternalizedContext:*(a1 + 32)];
}

void __87__PKAuthenticatorEvaluationContext_initWithRequest_completionHandler_forAuthenticator___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _createContextWithExternalizedContext:*(a1 + 32)];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(PKAuthenticatorEvaluationContext *)self invalidate];
  hoistCompletionHandler = [(PKAuthenticatorEvaluationContext *)self hoistCompletionHandler];
  v5 = hoistCompletionHandler;
  if (hoistCompletionHandler)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__PKAuthenticatorEvaluationContext_dealloc__block_invoke;
    block[3] = &unk_2799FFB20;
    v8 = hoistCompletionHandler;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v6.receiver = self;
  v6.super_class = PKAuthenticatorEvaluationContext;
  [(PKAuthenticatorEvaluationContext *)&v6 dealloc];
}

void __43__PKAuthenticatorEvaluationContext_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D37DB8] responseWithResult:2];
  (*(v1 + 16))(v1, v2);
}

- (id)hoistCompletionHandler
{
  v3 = MEMORY[0x25F8AAFE0](self->_completionHandler, a2);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  v5 = MEMORY[0x25F8AAFE0](v3);
  return v5;
}

- (void)invalidateWithIntent:(int64_t)intent
{
  v60 = *MEMORY[0x277D85DE8];
  if (![(PKAuthenticatorEvaluationRequest *)self->_request useLegacyAuthenticator])
  {
    [(PKAuthenticatorEvaluationContext *)self _clearFingerOnTimer];
  }

  [(PKAuthenticatorEvaluationContext *)self _clearLiftFingerTimer];
  [(PKAuthenticatorEvaluationContext *)self _dismissAuthenticatorViewOfType:0];
  [(PKAuthenticatorEvaluationContext *)self _dismissAuthenticatorViewOfType:1];
  [(PKAuthenticatorEvaluationContext *)self setDelegate:0];
  objc_storeWeak(&self->_authenticator, 0);
  v5 = self->_LAContext;
  LAContext = self->_LAContext;
  self->_LAContext = 0;

  if (v5)
  {
    if (self->_usingExternalContext)
    {
      if (intent == 1 && self->_externalContextInvalidationPolicy == 2)
      {
        self->_externalContextInvalidationPolicy = 0;
      }

      *&v57 = 0;
      *(&v57 + 1) = &v57;
      v58 = 0x2020000000;
      v59 = 0;
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __57__PKAuthenticatorEvaluationContext_invalidateWithIntent___block_invoke;
      v53[3] = &unk_2799FFE40;
      v53[4] = &v57;
      v8 = [mEMORY[0x277D75128] beginBackgroundTaskWithExpirationHandler:v53];

      *(*(&v57 + 1) + 24) = v8;
      v9 = self->_externalContextOptions & 1;
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __57__PKAuthenticatorEvaluationContext_invalidateWithIntent___block_invoke_2;
      v49[3] = &unk_2799FFE68;
      v52 = v9;
      v32 = v5;
      v50 = v32;
      v51 = &v57;
      v30 = MEMORY[0x25F8AAFE0](v49);
      externalContextInvalidationPolicy = self->_externalContextInvalidationPolicy;
      if (externalContextInvalidationPolicy == 2)
      {
        v24 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v56 = v32;
          _os_log_impl(&dword_25E0A9000, v24, OS_LOG_TYPE_DEFAULT, "PKAuthenticator (%p): Invalidating and not resetting external context.", buf, 0xCu);
        }

        v30[2]();
      }

      else
      {
        if (externalContextInvalidationPolicy == 1)
        {
          v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v11 addObject:&unk_286FD0F68];
          [v11 addObject:&unk_286FD0F80];
          if (PKPearlIsAvailable())
          {
            v12 = &unk_286FD0F98;
          }

          else
          {
            v12 = &unk_286FD0FB0;
          }

          [v11 addObject:v12];
          v13 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v56 = v32;
            _os_log_impl(&dword_25E0A9000, v13, OS_LOG_TYPE_DEFAULT, "PKAuthenticator (%p): Attempting to partially reset external context due to invalidation.", buf, 0xCu);
          }

          v14 = dispatch_group_create();
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v15 = v11;
          v16 = [(LAContext *)v15 countByEnumeratingWithState:&v45 objects:v54 count:16];
          obj = v15;
          if (v16)
          {
            v17 = *v46;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v46 != v17)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v45 + 1) + 8 * i);
                dispatch_group_enter(v14);
                integerValue = [v19 integerValue];
                v41[0] = MEMORY[0x277D85DD0];
                v41[1] = 3221225472;
                v41[2] = __57__PKAuthenticatorEvaluationContext_invalidateWithIntent___block_invoke_247;
                v41[3] = &unk_2799FFE90;
                v21 = v32;
                v42 = v21;
                v43 = v19;
                v44 = v14;
                [(LAContext *)v21 resetProcessedEvent:integerValue reply:v41];
              }

              v15 = obj;
              v16 = [(LAContext *)obj countByEnumeratingWithState:&v45 objects:v54 count:16];
            }

            while (v16);
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __57__PKAuthenticatorEvaluationContext_invalidateWithIntent___block_invoke_248;
          block[3] = &unk_2799FFEB8;
          v39 = v32;
          v40 = v30;
          dispatch_group_notify(v14, MEMORY[0x277D85CD0], block);

          v22 = obj;
        }

        else
        {
          v25 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v56 = v32;
            _os_log_impl(&dword_25E0A9000, v25, OS_LOG_TYPE_DEFAULT, "PKAuthenticator (%p): Attempting to reset external context due to invalidation.", buf, 0xCu);
          }

          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __57__PKAuthenticatorEvaluationContext_invalidateWithIntent___block_invoke_249;
          v35[3] = &unk_2799FFDC8;
          v36 = v32;
          v37 = v30;
          [(LAContext *)v36 resetWithReply:v35];

          v22 = v36;
        }
      }

      _Block_object_dispose(&v57, 8);
    }

    else
    {
      v23 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v57) = 134349056;
        *(&v57 + 4) = v5;
        _os_log_impl(&dword_25E0A9000, v23, OS_LOG_TYPE_DEFAULT, "PKAuthenticator (%{public}p): Invalidating context.", &v57, 0xCu);
      }

      [(LAContext *)v5 invalidate];
    }
  }

  self->_invalidated = 1;
  self->_usingExternalContext = 0;
  secureIndicatorProvider = self->_secureIndicatorProvider;
  if (secureIndicatorProvider)
  {
    if (self->_providerRegistered)
    {
      [(PKAuthenticatorSecureIndicatorProvider *)secureIndicatorProvider unregisterConsumer:self];
      self->_providerRegistered = 0;
      secureIndicatorProvider = self->_secureIndicatorProvider;
    }

    self->_secureIndicatorProvider = 0;
  }

  banner = self->_banner;
  if (banner)
  {
    [(PKBannerHandle *)banner invalidate];
    v28 = self->_banner;
    self->_banner = 0;
  }

  v29 = [(NSMutableArray *)self->_accessHandlers copy];
  [(NSMutableArray *)self->_accessHandlers removeAllObjects];
  if ([v29 count])
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __57__PKAuthenticatorEvaluationContext_invalidateWithIntent___block_invoke_250;
    v33[3] = &unk_2799FFC10;
    v34 = v29;
    dispatch_async(MEMORY[0x277D85CD0], v33);
  }
}

void __57__PKAuthenticatorEvaluationContext_invalidateWithIntent___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277D767B0];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x277D767B0])
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __57__PKAuthenticatorEvaluationContext_invalidateWithIntent___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    atomic_store(0, EvaluatingWithSingletonExternalContext);
  }

  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134349056;
    v7 = v3;
    _os_log_impl(&dword_25E0A9000, v2, OS_LOG_TYPE_DEFAULT, "PKAuthenticator (%{public}p): Invalidating context.", &v6, 0xCu);
  }

  [*(a1 + 32) invalidate];
  v4 = *MEMORY[0x277D767B0];
  if (*(*(*(a1 + 40) + 8) + 24) != *MEMORY[0x277D767B0])
  {
    v5 = [MEMORY[0x277D75128] sharedApplication];
    [v5 endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];

    *(*(*(a1 + 40) + 8) + 24) = v4;
  }
}

void __57__PKAuthenticatorEvaluationContext_invalidateWithIntent___block_invoke_247(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = 134218498;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_25E0A9000, v6, OS_LOG_TYPE_DEFAULT, "PKAuthenticator (%p): Failed partial reset of external context for event %@ - %@.", &v9, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __57__PKAuthenticatorEvaluationContext_invalidateWithIntent___block_invoke_248(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_25E0A9000, v2, OS_LOG_TYPE_DEFAULT, "PKAuthenticator (%p): Finished attempting partial reset of external context.", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __57__PKAuthenticatorEvaluationContext_invalidateWithIntent___block_invoke_249(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 || !a2)
  {
    if (v7)
    {
      v12 = *(a1 + 32);
      v16 = 134218242;
      v17 = v12;
      v18 = 2112;
      v19 = v5;
      v9 = "PKAuthenticator (%p): Could not reset external context - %@.";
      v10 = v6;
      v11 = 22;
      goto LABEL_7;
    }
  }

  else if (v7)
  {
    v8 = *(a1 + 32);
    v16 = 134217984;
    v17 = v8;
    v9 = "PKAuthenticator (%p): reset external context.";
    v10 = v6;
    v11 = 12;
LABEL_7:
    _os_log_impl(&dword_25E0A9000, v10, OS_LOG_TYPE_DEFAULT, v9, &v16, v11);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v13, v14, v15);
}

void __57__PKAuthenticatorEvaluationContext_invalidateWithIntent___block_invoke_250(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)fallbackToPasscode
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__PKAuthenticatorEvaluationContext_fallbackToPasscode__block_invoke;
  v2[3] = &unk_2799FFF08;
  v2[4] = self;
  [(PKAuthenticatorEvaluationContext *)self accessLAContext:v2];
}

void __54__PKAuthenticatorEvaluationContext_fallbackToPasscode__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 64) = 1;
  if (([*(a1 + 32) _presentPasscodeIfNecessary] & 1) == 0)
  {
    if (PKPearlIsAvailable())
    {
      v4 = 7;
    }

    else
    {
      v4 = 1;
    }

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__PKAuthenticatorEvaluationContext_fallbackToPasscode__block_invoke_2;
    v5[3] = &unk_2799FFEE0;
    v6 = v3;
    [v6 failProcessedEvent:v4 failureError:0 reply:v5];
  }
}

void __54__PKAuthenticatorEvaluationContext_fallbackToPasscode__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 134218242;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_25E0A9000, v6, OS_LOG_TYPE_DEFAULT, "PKAuthenticator (%p): Passcode Fallback Failed - %@.", &v8, 0x16u);
    }
  }
}

- (BOOL)_presentPasscodeIfNecessary
{
  if (!self->_passcodePresentationParameters)
  {
    return 0;
  }

  if ((self->_activeMechanisms & 1) == 0 || ![(PKAuthenticatorEvaluationRequest *)self->_request passcodeOnly]&& !self->_passcodePresentationRequested && !self->_automaticallyPresentPasscodeOnce && (self->_activeMechanisms & 0xC) == 0)
  {
    return 0;
  }

  *&self->_passcodePresentationRequested = 0;
  passcodePresentationParameters = self->_passcodePresentationParameters;
  self->_passcodePresentationParameters = 0;
  v5 = passcodePresentationParameters;

  [(PKAuthenticatorEvaluationContext *)self _presentAuthenticatorViewOfType:0 withParams:v5];
  return 1;
}

- (void)_createContextWithExternalizedContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = contextCopy;
  if (!self->_invalidated)
  {
    if (contextCopy && (self->_externalContextOptions & 1) != 0)
    {
      v13 = 0;
      v6 = 1;
      atomic_compare_exchange_strong(EvaluatingWithSingletonExternalContext, &v13, 1u);
      if (v13)
      {
        v14 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25E0A9000, v14, OS_LOG_TYPE_DEFAULT, "PKAuthenticator: ignoring external context because singleton context is outstanding.", buf, 2u);
        }

        v6 = 0;
        v5 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    if (self->_supported)
    {
      if (!v5)
      {
        v15 = objc_alloc_init(MEMORY[0x277CD4790]);
        LAContext = self->_LAContext;
        self->_LAContext = v15;

        v9 = self->_LAContext;
        if (v9)
        {
          goto LABEL_18;
        }

        goto LABEL_21;
      }

      v7 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:v5];
      v8 = self->_LAContext;
      self->_LAContext = v7;
    }

    v9 = self->_LAContext;
    if (v9)
    {
      if (v5)
      {
        v10 = PKLogFacilityTypeGetObject();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          if (v11)
          {
            *buf = 134349056;
            v32 = v9;
            v12 = "PKAuthenticator (%{public}p): creating evaluation with external context and singleton semantics.";
LABEL_29:
            _os_log_impl(&dword_25E0A9000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
          }
        }

        else if (v11)
        {
          *buf = 134349056;
          v32 = v9;
          v12 = "PKAuthenticator (%{public}p): creating evaluation with external context.";
          goto LABEL_29;
        }

        v17 = 1;
LABEL_31:

        self->_usingExternalContext = v17;
        [self->_LAContext setUiDelegate:self];
        v21 = [(NSMutableArray *)self->_accessHandlers copy];
        [(NSMutableArray *)self->_accessHandlers removeAllObjects];
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v20 = v21;
        v22 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v27;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v27 != v24)
              {
                objc_enumerationMutation(v20);
              }

              (*(*(*(&v26 + 1) + 8 * i) + 16))(*(*(&v26 + 1) + 8 * i));
            }

            v23 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v23);
        }

        hoistCompletionHandler = v20;
        goto LABEL_39;
      }

LABEL_18:
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        v32 = v9;
        _os_log_impl(&dword_25E0A9000, v10, OS_LOG_TYPE_DEFAULT, "PKAuthenticator (%{public}p): creating evaluation.", buf, 0xCu);
      }

      v17 = 0;
      goto LABEL_31;
    }

LABEL_21:
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E0A9000, v18, OS_LOG_TYPE_DEFAULT, "PKAuthenticator: failed to create LAContext.", buf, 2u);
    }

    if (v6)
    {
      atomic_store(0, EvaluatingWithSingletonExternalContext);
    }

    [(PKAuthenticatorEvaluationContext *)self invalidate];
    hoistCompletionHandler = [(PKAuthenticatorEvaluationContext *)self hoistCompletionHandler];
    if (!hoistCompletionHandler)
    {
      goto LABEL_40;
    }

    v20 = [MEMORY[0x277D37DB8] responseWithResult:5];
    hoistCompletionHandler[2](hoistCompletionHandler, v20);
LABEL_39:

LABEL_40:
  }
}

- (void)bindToSecureIndicatorProvider:(id)provider
{
  providerCopy = provider;
  if (!self->_invalidated)
  {
    secureIndicatorProvider = self->_secureIndicatorProvider;
    p_secureIndicatorProvider = &self->_secureIndicatorProvider;
    if (!secureIndicatorProvider)
    {
      v8 = providerCopy;
      objc_storeStrong(p_secureIndicatorProvider, provider);
      providerCopy = v8;
    }
  }
}

- (void)accessLAContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v9 = contextCopy;
    if (self->_invalidated)
    {
      (*(contextCopy + 2))(contextCopy, 0);
    }

    else
    {
      LAContext = self->_LAContext;
      if (LAContext)
      {
        (*(contextCopy + 2))(contextCopy, LAContext);
      }

      else
      {
        accessHandlers = self->_accessHandlers;
        v7 = [contextCopy copy];
        v8 = MEMORY[0x25F8AAFE0]();
        [(NSMutableArray *)accessHandlers addObject:v8];
      }
    }

    contextCopy = v9;
  }
}

- (void)evaluateWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if (atomic_exchange(&self->_evaluated._Value, 1u))
  {
    goto LABEL_6;
  }

  v8 = completionCopy;
  objc_initWeak(&location, self);
  accessControlRef = [(PKAuthenticatorEvaluationRequest *)self->_request accessControlRef];
  v10 = accessControlRef;
  if (accessControlRef)
  {
    CFRetain(accessControlRef);
  }

  v11 = objc_alloc_init(MEMORY[0x277D37DB0]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke;
  v31[3] = &unk_2799FFFA8;
  objc_copyWeak(v32, &location);
  v32[1] = v10;
  [v11 addOperation:v31];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy_;
  v29[4] = __Block_byref_object_dispose_;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy_;
  v27[4] = __Block_byref_object_dispose_;
  v28 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_256;
  v22[3] = &unk_279A00020;
  objc_copyWeak(v26, &location);
  v24 = v29;
  v25 = v27;
  v26[1] = v10;
  v12 = optionsCopy;
  v23 = v12;
  [v11 addOperation:v22];
  v13 = 0;
  atomic_compare_exchange_strong(&self->_evaluating, &v13, 1u);
  if (v13)
  {
LABEL_6:
    __break(1u);
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_4_261;
    v17[3] = &unk_279A00098;
    objc_copyWeak(v21, &location);
    v21[1] = v10;
    v15 = v8;
    v18 = v15;
    v19 = v27;
    v20 = v29;
    v16 = [v11 evaluateWithInput:null completion:v17];

    objc_destroyWeak(v21);
    objc_destroyWeak(v26);
    _Block_object_dispose(v27, 8);

    _Block_object_dispose(v29, 8);
    objc_destroyWeak(v32);

    objc_destroyWeak(&location);
  }
}

void __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_2;
    v13[3] = &unk_2799FFF80;
    objc_copyWeak(v16, (a1 + 32));
    v15 = v9;
    v11 = v8;
    v12 = *(a1 + 40);
    v14 = v11;
    v16[1] = v12;
    [WeakRetained accessLAContext:v13];

    objc_destroyWeak(v16);
  }

  else
  {
    (*(v9 + 2))(v9, v8, 1);
  }
}

void __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!v3 || !WeakRetained)
  {
    v7 = *(*(a1 + 40) + 16);
    goto LABEL_16;
  }

  if (*(WeakRetained + 184) != 1)
  {
    if (WeakRetained[21])
    {
      if (!WeakRetained[22])
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 56);
      if (v6)
      {
        [v3 evaluationMechanismsForAccessControl:v6 operation:3 error:0];
      }

      else
      {
        [v3 evaluationMechanismsForPolicy:WeakRetained[25] error:0];
      }
      v8 = ;
      if (([PKAuthenticator _currentStateForMechanisms:v8]& 6) != 0)
      {
        *(v5 + 184) = 1;
        [*(v5 + 22) registerConsumer:v5];
      }

      else
      {
        *(v5 + 168) = 0;
      }

      if (*(v5 + 168))
      {
LABEL_14:
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_3;
        v9[3] = &unk_2799FFF58;
        v9[4] = v5;
        v12 = *(a1 + 40);
        v10 = *(a1 + 32);
        v11 = v3;
        dispatch_async(MEMORY[0x277D85CD0], v9);

LABEL_17:
        return;
      }
    }

    v7 = *(*(a1 + 40) + 16);
LABEL_16:
    v7();
    goto LABEL_17;
  }

  __break(1u);
}

void __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_4;
    v6[3] = &unk_2799FFF30;
    v8 = *(a1 + 56);
    v7 = *(a1 + 40);
    [v3 consumer:v2 ensureIndicatorWithCompletion:v6];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      *buf = 134218240;
      v10 = v2;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_25E0A9000, v4, OS_LOG_TYPE_DEFAULT, "PKAuthenticatorEvaluationContext (%p): secure indicator fallback required but missing for context %p.", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_256(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_2_257;
    v11[3] = &unk_2799FFFF8;
    objc_copyWeak(v16, (a1 + 56));
    v14 = v9;
    v12 = v8;
    v15 = *(a1 + 40);
    v16[1] = *(a1 + 64);
    v13 = *(a1 + 32);
    [WeakRetained accessLAContext:v11];

    objc_destroyWeak(v16);
  }

  else
  {
    (*(v9 + 2))(v9, v8, 1);
  }
}

void __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_2_257(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_3_258;
    v10[3] = &unk_2799FFFD0;
    v13 = *(a1 + 64);
    v9 = *(a1 + 48);
    v6 = v9;
    v12 = v9;
    v11 = *(a1 + 32);
    v7 = MEMORY[0x25F8AAFE0](v10);
    v8 = *(a1 + 80);
    if (v8)
    {
      [v3 evaluateAccessControl:v8 operation:3 options:*(a1 + 40) reply:v7];
    }

    else
    {
      [v3 evaluatePolicy:v5[25] options:*(a1 + 40) reply:v7];
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_3_258(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[5] + 16))(a1[5], a1[4], v11 != 0);
}

void __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_4_261(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_5;
  block[3] = &unk_279A00070;
  objc_copyWeak(v5, (a1 + 56));
  v5[1] = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v5);
}

void __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  v4 = WeakRetained[22];
  if (v4)
  {
    if (v3[184] == 1)
    {
      [v4 unregisterConsumer:v3];
      v3[184] = 0;
      v4 = *(v3 + 22);
    }

    *(v3 + 22) = 0;
  }

  v5 = *(v3 + 12);
  if (v5)
  {
    [v5 invalidate];
    v6 = *(v3 + 12);
    *(v3 + 12) = 0;
  }

  v7 = 1;
  atomic_compare_exchange_strong(v3 + 67, &v7, 0);
  if (v7 != 1)
  {
    __break(1u);
  }

  else
  {
LABEL_9:
    v8 = *(a1 + 64);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      if (v3)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __67__PKAuthenticatorEvaluationContext_evaluateWithOptions_completion___block_invoke_6;
        v13[3] = &unk_279A00048;
        v10 = *(a1 + 40);
        v13[4] = v3;
        v15 = v10;
        v11 = v9;
        v12 = *(a1 + 48);
        v14 = v11;
        v16 = v12;
        [v3 accessLAContext:v13];
      }

      else
      {
        v9[2](v9, 0, 0, 0, 0);
      }
    }
  }
}

- (void)_dismissAuthenticatorViewOfType:(unsigned __int8)type
{
  v3 = 4 * (type == 1);
  if (!type)
  {
    v3 = 2;
  }

  v4 = 16 * (type == 1);
  if (!type)
  {
    v4 = 8;
  }

  v5 = (type == 1) << 6;
  if (!type)
  {
    v5 = 32;
  }

  presentationFlags = self->_presentationFlags;
  if ((presentationFlags & v3) != 0)
  {
    self->_presentationFlags = presentationFlags | v5;
    if ((presentationFlags & v4) == 0)
    {
      typeCopy = type;
      self->_presentationFlags = presentationFlags & ~(v3 | v4 | v5);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = WeakRetained;
      if (typeCopy == 1)
      {
        v11 = WeakRetained;
        WeakRetained = [(PKAuthenticatorEvaluationContext *)self _delegateSupportsPassphraseDismissal];
        v10 = v11;
        if (WeakRetained)
        {
          WeakRetained = [v11 dismissPassphraseViewController];
          goto LABEL_16;
        }
      }

      else if (!typeCopy)
      {
        v11 = WeakRetained;
        WeakRetained = [(PKAuthenticatorEvaluationContext *)self _delegateSupportsPasscodeDismissal];
        v10 = v11;
        if (WeakRetained)
        {
          WeakRetained = [v11 dismissPasscodeViewController];
LABEL_16:
          v10 = v11;
        }
      }

      MEMORY[0x2821F96F8](WeakRetained, v10);
    }
  }
}

- (void)_presentAuthenticatorViewOfType:(unsigned __int8)type withParams:(id)params
{
  typeCopy = type;
  paramsCopy = params;
  if (typeCopy == 1)
  {
    _delegateSupportsPassphrasePresentation = [(PKAuthenticatorEvaluationContext *)self _delegateSupportsPassphrasePresentation];
  }

  else if (typeCopy)
  {
    _delegateSupportsPassphrasePresentation = 0;
  }

  else
  {
    _delegateSupportsPassphrasePresentation = [(PKAuthenticatorEvaluationContext *)self _delegateSupportsPasscodePresentation];
  }

  if (typeCopy)
  {
    v8 = 4 * (typeCopy == 1);
  }

  else
  {
    v8 = 2;
  }

  if (typeCopy)
  {
    v9 = 16 * (typeCopy == 1);
  }

  else
  {
    v9 = 8;
  }

  if (typeCopy)
  {
    v10 = (typeCopy == 1) << 6;
  }

  else
  {
    v10 = 32;
  }

  if (_delegateSupportsPassphrasePresentation)
  {
    self->_presentationFlags |= v9 | v8;
    secureIndicatorProvider = self->_secureIndicatorProvider;
    if (secureIndicatorProvider)
    {
      if (self->_providerRegistered)
      {
        [(PKAuthenticatorSecureIndicatorProvider *)secureIndicatorProvider unregisterConsumer:self];
        self->_providerRegistered = 0;
        secureIndicatorProvider = self->_secureIndicatorProvider;
      }

      self->_secureIndicatorProvider = 0;
    }

    banner = self->_banner;
    if (banner)
    {
      [(PKBannerHandle *)banner invalidate];
      v13 = self->_banner;
      self->_banner = 0;
    }

    v14 = [paramsCopy objectForKeyedSubscript:&unk_286FD0FC8];
    v15 = [(PKAuthenticatorEvaluationContext *)self _requestRemoteAuthenticatorViewControllerOfType:typeCopy withHostingConfiguration:v14];

    if (typeCopy)
    {
      v16 = (typeCopy == 1) << 9;
    }

    else
    {
      v16 = 128;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __79__PKAuthenticatorEvaluationContext__presentAuthenticatorViewOfType_withParams___block_invoke;
    v36[3] = &unk_279A000C0;
    v36[4] = self;
    v36[5] = v9;
    v36[6] = v8;
    v36[7] = v10;
    v36[8] = v16;
    v37 = typeCopy;
    v18 = MEMORY[0x25F8AAFE0](v36);
    v19 = v18;
    if ((self->_presentationFlags & v10) != 0 || !v15)
    {
      (*(v18 + 16))(v18, 0);
    }

    else
    {
      objc_initWeak(&location, self->_LAContext);
      if (typeCopy == 1)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __79__PKAuthenticatorEvaluationContext__presentAuthenticatorViewOfType_withParams___block_invoke_269;
        v31[3] = &unk_279A00108;
        objc_copyWeak(&v32, &location);
        [WeakRetained presentPassphraseViewController:v15 completionHandler:v19 reply:v31];
        objc_destroyWeak(&v32);
      }

      else if (!typeCopy)
      {
        v21 = objc_loadWeakRetained(&self->_authenticator);
        clientAnalyticsParameters = [v21 clientAnalyticsParameters];

        v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v23 setObject:*MEMORY[0x277D383F8] forKeyedSubscript:*MEMORY[0x277D383D8]];
        v24 = [clientAnalyticsParameters objectForKeyedSubscript:*MEMORY[0x277D38908]];
        [v23 setObject:v24 forKeyedSubscript:*MEMORY[0x277D384E0]];

        v25 = MEMORY[0x277D37D28];
        v26 = clientAnalyticsParameters;
        v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277D38910]];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v29 = *MEMORY[0x277D38540];
        if (isKindOfClass)
        {
          v29 = v27;
        }

        v30 = v29;

        [v25 subject:v30 sendEvent:v23];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __79__PKAuthenticatorEvaluationContext__presentAuthenticatorViewOfType_withParams___block_invoke_2;
        v33[3] = &unk_279A00108;
        objc_copyWeak(&v34, &location);
        [WeakRetained presentPasscodeViewController:v15 completionHandler:v19 reply:v33];
        objc_destroyWeak(&v34);
      }

      objc_destroyWeak(&location);
    }
  }

  else
  {
    v20 = (typeCopy == 1) << 10;
    if (!typeCopy)
    {
      v20 = 256;
    }

    self->_presentationFlags |= v20;
  }
}

unsigned __int8 *__79__PKAuthenticatorEvaluationContext__presentAuthenticatorViewOfType_withParams___block_invoke(unsigned __int8 *result, char a2)
{
  *(*(result + 4) + 224) &= ~*(result + 5);
  if (a2)
  {
    *(*(result + 4) + 224) |= *(result + 8);
    if ((*(result + 7) & *(*(result + 4) + 224)) != 0)
    {
      return [*(result + 4) _dismissAuthenticatorViewOfType:result[72]];
    }
  }

  else
  {
    *(*(result + 4) + 224) &= ~(*(result + 7) | *(result + 6));
  }

  return result;
}

void __79__PKAuthenticatorEvaluationContext__presentAuthenticatorViewOfType_withParams___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCredential:v3 forProcessedEvent:2 credentialType:-1 reply:&__block_literal_global_268];
}

void __79__PKAuthenticatorEvaluationContext__presentAuthenticatorViewOfType_withParams___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_25E0A9000, v5, OS_LOG_TYPE_DEFAULT, "Failed to set credential for passcode event: %@", &v6, 0xCu);
    }
  }
}

void __79__PKAuthenticatorEvaluationContext__presentAuthenticatorViewOfType_withParams___block_invoke_269(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCredential:v3 forProcessedEvent:3 credentialType:-2 reply:&__block_literal_global_272];
}

void __79__PKAuthenticatorEvaluationContext__presentAuthenticatorViewOfType_withParams___block_invoke_2_270(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_25E0A9000, v5, OS_LOG_TYPE_DEFAULT, "Failed to set credential for passphrase event: %@", &v6, 0xCu);
    }
  }
}

- (id)_requestRemoteAuthenticatorViewControllerOfType:(unsigned __int8)type withHostingConfiguration:(id)configuration
{
  typeCopy = type;
  v26 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    if (typeCopy == 1)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_11;
      }

      passphraseViewController = [WeakRetained passphraseViewController];
    }

    else
    {
      if (typeCopy || (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_11;
      }

      passphraseViewController = [WeakRetained passcodeViewController];
    }

    v9 = passphraseViewController;
    if (passphraseViewController)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v18 = 134218754;
        selfCopy4 = self;
        v20 = 2114;
        v21 = v12;
        v22 = 2048;
        v23 = v9;
        v24 = 1024;
        v25 = typeCopy;
        _os_log_impl(&dword_25E0A9000, v10, OS_LOG_TYPE_DEFAULT, "PKAuthenticatorEvaluationContext (%p): using externally provided (%{public}@:%p) as authenticator VC of type %u.", &v18, 0x26u);
      }

      goto LABEL_22;
    }
  }

LABEL_11:
  if (configurationCopy)
  {
    v10 = [MEMORY[0x277CD4818] makeHostingControllerWithConfiguration:configurationCopy];
    v13 = PKLogFacilityTypeGetObject();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v14)
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v18 = 134218754;
        selfCopy4 = self;
        v20 = 2114;
        v21 = v16;
        v22 = 2048;
        v23 = v10;
        v24 = 1024;
        v25 = typeCopy;
        _os_log_impl(&dword_25E0A9000, v13, OS_LOG_TYPE_DEFAULT, "PKAuthenticatorEvaluationContext (%p): using (%{public}@:%p) as authenticator VC of type %u from LA provided configuration.", &v18, 0x26u);
      }

      v10 = v10;
      v9 = v10;
    }

    else
    {
      if (v14)
      {
        v18 = 134218240;
        selfCopy4 = self;
        v20 = 1024;
        LODWORD(v21) = typeCopy;
        _os_log_impl(&dword_25E0A9000, v13, OS_LOG_TYPE_DEFAULT, "PKAuthenticatorEvaluationContext (%p): failed to create remote authenticator VC of type %u using LA provided configuration.", &v18, 0x12u);
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134218240;
      selfCopy4 = self;
      v20 = 1024;
      LODWORD(v21) = typeCopy;
      _os_log_impl(&dword_25E0A9000, v10, OS_LOG_TYPE_DEFAULT, "PKAuthenticatorEvaluationContext (%p): no configuration data provided for remote authenticator VC of type %u.", &v18, 0x12u);
    }

    v9 = 0;
  }

LABEL_22:

  return v9;
}

- (void)handlePasscodeEventWithParameters:(id)parameters
{
  bOOLValue = [parameters objectForKeyedSubscript:&unk_286FD0FE0];
  v5 = bOOLValue;
  if (bOOLValue)
  {
    v6 = bOOLValue;
    bOOLValue = [bOOLValue BOOLValue];
    v5 = v6;
    if (bOOLValue)
    {
      self->_completedMechanisms |= 1uLL;
      if (self->_acquireSecondaryUserIntent)
      {
        [(PKAuthenticatorEvaluationContext *)self _dismissAuthenticatorViewOfType:0];
        bOOLValue = [(PKAuthenticatorEvaluationContext *)self _updateEvaluationState];
        v5 = v6;
      }
    }
  }

  MEMORY[0x2821F96F8](bOOLValue, v5);
}

- (void)handlePearlEventWithParameters:(id)parameters
{
  v51[3] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_loadWeakRetained(&self->_authenticator);
  v7 = v6;
  if (WeakRetained && v6)
  {
    coachingStatus = self->_coachingStatus;
    v9 = [parametersCopy objectForKeyedSubscript:&unk_286FD0FF8];
    v10 = v9;
    if (v9)
    {
      self->_coachingStatus = [v9 integerValue];
    }

    v11 = [parametersCopy objectForKeyedSubscript:&unk_286FD1010];
    v12 = v11;
    if (!v11)
    {
      if (coachingStatus == self->_coachingStatus)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    integerValue = [v11 integerValue];
    v14 = integerValue;
    if (integerValue <= 3)
    {
      if (integerValue > 1)
      {
        if (integerValue == 2)
        {
          self->_completedMechanisms |= 4uLL;
          v41 = [MEMORY[0x277D37EC8] createForGlyphState:3];
          banner = self->_banner;
          if (banner)
          {
            [(PKBannerHandle *)banner setState:v41];
          }

          if (self->_secureIndicatorRequired)
          {
            secureIndicatorProvider = self->_secureIndicatorProvider;
            if (secureIndicatorProvider)
            {
              if (self->_providerRegistered)
              {
                [(PKAuthenticatorSecureIndicatorProvider *)secureIndicatorProvider consumer:self requestsState:v41];
              }
            }
          }

          [(PKAuthenticatorEvaluationContext *)self _updateEvaluationState];

          goto LABEL_48;
        }

        goto LABEL_19;
      }

      if (!integerValue)
      {
        self->_evaluationFlags |= 2uLL;
        [(PKAuthenticatorEvaluationContext *)self _updateEvaluationState];
        v30 = objc_loadWeakRetained(&self->_authenticator);
        clientAnalyticsParameters = [v30 clientAnalyticsParameters];

        v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v32 setObject:*MEMORY[0x277D38448] forKeyedSubscript:*MEMORY[0x277D383D8]];
        [v32 setObject:*MEMORY[0x277D38378] forKeyedSubscript:*MEMORY[0x277D384B8]];
        [v32 setObject:*MEMORY[0x277D383F0] forKeyedSubscript:*MEMORY[0x277D38498]];
        v48 = clientAnalyticsParameters;
        v33 = [clientAnalyticsParameters objectForKeyedSubscript:*MEMORY[0x277D38908]];
        [v32 setObject:v33 forKeyedSubscript:*MEMORY[0x277D384E0]];

        v34 = MEMORY[0x277D37D28];
        v35 = *MEMORY[0x277D38558];
        v51[0] = *MEMORY[0x277D38538];
        v51[1] = v35;
        v36 = [clientAnalyticsParameters objectForKeyedSubscript:*MEMORY[0x277D38910]];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v38 = *MEMORY[0x277D38540];
        if (isKindOfClass)
        {
          v38 = v36;
        }

        v39 = v38;

        v51[2] = v39;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:3];
        [v34 subjects:v40 sendEvent:v32];

        goto LABEL_48;
      }

      if (integerValue != 1)
      {
LABEL_48:
        [(PKAuthenticatorEvaluationContext *)self _updateCoachingState];
LABEL_49:

        goto LABEL_50;
      }

      v15 = self->_evaluationFlags & 0xFFFFFFFFFFFFFFFDLL;
    }

    else
    {
      if (integerValue > 10)
      {
        if (integerValue != 11)
        {
          if (integerValue == 12)
          {
            evaluationFlags = self->_evaluationFlags;
            accessControlRef = [(PKAuthenticatorEvaluationRequest *)self->_request accessControlRef];
            v46 = self->_evaluationFlags;
            self->_evaluationFlags = v46 | 0x80;
            if (!accessControlRef && evaluationFlags & 0x80 | v46 & 0x20)
            {
              [(PKAuthenticatorEvaluationContext *)self fallbackToPasscode];
              goto LABEL_48;
            }

            self->_evaluationFlags = v46 | 0x88;
            selfCopy2 = self;
            v28 = 3;
            goto LABEL_47;
          }

          if (integerValue != 13)
          {
            goto LABEL_48;
          }

LABEL_19:
          v16 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25E0A9000, v16, OS_LOG_TYPE_DEFAULT, "Biometric Match Miss Event Encountered", buf, 2u);
          }

          self->_evaluationFlags |= 8uLL;
          if (v14 == 13)
          {
            v17 = objc_loadWeakRetained(&self->_authenticator);
            clientAnalyticsParameters2 = [v17 clientAnalyticsParameters];

            v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [v19 setObject:*MEMORY[0x277D38448] forKeyedSubscript:*MEMORY[0x277D383D8]];
            [v19 setObject:*MEMORY[0x277D38378] forKeyedSubscript:*MEMORY[0x277D384B8]];
            [v19 setObject:*MEMORY[0x277D383B8] forKeyedSubscript:*MEMORY[0x277D383C0]];
            v47 = clientAnalyticsParameters2;
            v20 = [clientAnalyticsParameters2 objectForKeyedSubscript:*MEMORY[0x277D38908]];
            [v19 setObject:v20 forKeyedSubscript:*MEMORY[0x277D384E0]];

            v21 = MEMORY[0x277D37D28];
            v22 = *MEMORY[0x277D38558];
            v50[0] = *MEMORY[0x277D38538];
            v50[1] = v22;
            v23 = [clientAnalyticsParameters2 objectForKeyedSubscript:*MEMORY[0x277D38910]];
            objc_opt_class();
            v24 = objc_opt_isKindOfClass();
            v25 = *MEMORY[0x277D38540];
            if (v24)
            {
              v25 = v23;
            }

            v26 = v25;

            v50[2] = v26;
            v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];
            [v21 subjects:v27 sendEvent:v19];

            v28 = 2;
          }

          else
          {
            v28 = 1;
          }

          selfCopy2 = self;
LABEL_47:
          [(PKAuthenticatorEvaluationContext *)selfCopy2 _setEvaluationStateWithEvent:0, v28];
          goto LABEL_48;
        }

        self->_evaluationFlags &= ~1uLL;
        [(PKAuthenticatorEvaluationContext *)self _updateEvaluationState];
        self->_coachingStatus = 1;
        goto LABEL_48;
      }

      if (integerValue == 4)
      {
        self->_completedMechanisms &= ~4uLL;
        goto LABEL_43;
      }

      if (integerValue != 10)
      {
        goto LABEL_48;
      }

      v15 = self->_evaluationFlags | 1;
    }

    self->_evaluationFlags = v15;
LABEL_43:
    [(PKAuthenticatorEvaluationContext *)self _updateEvaluationState];
    goto LABEL_48;
  }

LABEL_50:
}

- (void)handleTouchIDEventWithParameters:(id)parameters
{
  v37[3] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKeyedSubscript:&unk_286FD1028];
  if ([v5 BOOLValue])
  {
    self->_touchIDBeginTime = CFAbsoluteTimeGetCurrent();
  }

  v6 = [parametersCopy objectForKeyedSubscript:&unk_286FD1040];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_loadWeakRetained(&self->_authenticator);
  if (!v6)
  {
    goto LABEL_53;
  }

  integerValue = [v6 integerValue];
  v10 = integerValue;
  if (integerValue > 2)
  {
    if (integerValue != 3)
    {
      if (integerValue == 4)
      {
        if ((self->_evaluationFlags & 2) != 0)
        {
          [(PKAuthenticatorEvaluationContext *)self _setLiftFingerTimer];
        }

        goto LABEL_53;
      }

      if (integerValue != 10)
      {
        goto LABEL_53;
      }
    }

    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_25E0A9000, v13, OS_LOG_TYPE_DEFAULT, "Biometric Match Miss Event Encountered", v35, 2u);
    }

    if (![(PKAuthenticatorEvaluationRequest *)self->_request useLegacyAuthenticator])
    {
      [(PKAuthenticatorEvaluationContext *)self _clearFingerOnTimer];
    }

    [(PKAuthenticatorEvaluationContext *)self _clearLiftFingerTimer];
    if ([(PKAuthenticatorEvaluationRequest *)self->_request useLegacyAuthenticator])
    {
      if (v10 != 10 && WeakRetained && v8)
      {
        if (objc_opt_respondsToSelector())
        {
          [WeakRetained authenticatorDidEncounterMatchMiss:v8];
        }

        goto LABEL_53;
      }
    }

    else
    {
      self->_evaluationFlags |= 8uLL;
      if (v10 == 10)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      [(PKAuthenticatorEvaluationContext *)self _setEvaluationStateWithEvent:0, v15];
    }

    if (v10 != 10)
    {
      goto LABEL_53;
    }

    v16 = objc_loadWeakRetained(&self->_authenticator);
    clientAnalyticsParameters = [v16 clientAnalyticsParameters];

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v18 setObject:*MEMORY[0x277D38448] forKeyedSubscript:*MEMORY[0x277D383D8]];
    [v18 setObject:*MEMORY[0x277D38378] forKeyedSubscript:*MEMORY[0x277D384B8]];
    [v18 setObject:*MEMORY[0x277D383C8] forKeyedSubscript:*MEMORY[0x277D383C0]];
    v19 = [clientAnalyticsParameters objectForKeyedSubscript:*MEMORY[0x277D38908]];
    [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x277D384E0]];

    v20 = MEMORY[0x277D37D28];
    v21 = *MEMORY[0x277D38558];
    v36[0] = *MEMORY[0x277D38538];
    v36[1] = v21;
    v22 = [clientAnalyticsParameters objectForKeyedSubscript:*MEMORY[0x277D38910]];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v24 = *MEMORY[0x277D38540];
    if (isKindOfClass)
    {
      v24 = v22;
    }

    v25 = v24;

    v36[2] = v25;
    v26 = MEMORY[0x277CBEA60];
    v27 = v36;
LABEL_52:
    v34 = [v26 arrayWithObjects:v27 count:3];
    [v20 subjects:v34 sendEvent:v18];

    goto LABEL_53;
  }

  if (!integerValue)
  {
    v14 = PKLogFacilityTypeGetObject();
    PKTimeProfileBegin();

    self->_evaluationFlags |= 2uLL;
    if (![(PKAuthenticatorEvaluationRequest *)self->_request useLegacyAuthenticator])
    {
      [(PKAuthenticatorEvaluationContext *)self _setFingerOnTimer];
    }

    if ([(PKAuthenticatorEvaluationRequest *)self->_request useLegacyAuthenticator])
    {
      if (WeakRetained && v8 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [WeakRetained authenticatorDidEncounterFingerOn:v8];
      }
    }

    else
    {
      [(PKAuthenticatorEvaluationContext *)self _updateEvaluationState];
    }

    v28 = objc_loadWeakRetained(&self->_authenticator);
    clientAnalyticsParameters = [v28 clientAnalyticsParameters];

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v18 setObject:*MEMORY[0x277D38448] forKeyedSubscript:*MEMORY[0x277D383D8]];
    [v18 setObject:*MEMORY[0x277D38378] forKeyedSubscript:*MEMORY[0x277D384B8]];
    [v18 setObject:*MEMORY[0x277D38408] forKeyedSubscript:*MEMORY[0x277D38498]];
    v29 = [clientAnalyticsParameters objectForKeyedSubscript:*MEMORY[0x277D38908]];
    [v18 setObject:v29 forKeyedSubscript:*MEMORY[0x277D384E0]];

    v20 = MEMORY[0x277D37D28];
    v30 = *MEMORY[0x277D38558];
    v37[0] = *MEMORY[0x277D38538];
    v37[1] = v30;
    v31 = [clientAnalyticsParameters objectForKeyedSubscript:*MEMORY[0x277D38910]];
    objc_opt_class();
    v32 = objc_opt_isKindOfClass();
    v33 = *MEMORY[0x277D38540];
    if (v32)
    {
      v33 = v31;
    }

    v25 = v33;

    v37[2] = v25;
    v26 = MEMORY[0x277CBEA60];
    v27 = v37;
    goto LABEL_52;
  }

  if (integerValue != 1)
  {
    if (integerValue != 2)
    {
      goto LABEL_53;
    }

    self->_completedMechanisms |= 8uLL;
    v11 = PKLogFacilityTypeGetObject();
    v12 = PKTimeProfileEnd();

    [(PKAuthenticatorEvaluationContext *)self _clearLiftFingerTimer];
    if ([(PKAuthenticatorEvaluationRequest *)self->_request useLegacyAuthenticator])
    {
      goto LABEL_53;
    }

LABEL_45:
    [(PKAuthenticatorEvaluationContext *)self _updateEvaluationState];
    goto LABEL_53;
  }

  self->_evaluationFlags &= ~2uLL;
  if (![(PKAuthenticatorEvaluationRequest *)self->_request useLegacyAuthenticator])
  {
    [(PKAuthenticatorEvaluationContext *)self _clearFingerOnTimer];
  }

  [(PKAuthenticatorEvaluationContext *)self _clearLiftFingerTimer];
  if (![(PKAuthenticatorEvaluationRequest *)self->_request useLegacyAuthenticator])
  {
    goto LABEL_45;
  }

  if (WeakRetained && v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained authenticatorDidEncounterFingerOff:v8];
  }

LABEL_53:
}

- (void)handlePushButtonEventWithParameters:(id)parameters
{
  v21[3] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v5 = [(PKAuthenticatorEvaluationContext *)self updateCompletedMechanismsForPushButtonEventParams:parametersCopy];
  v6 = [parametersCopy objectForKeyedSubscript:&unk_286FD1058];

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
    if (bOOLValue)
    {
      WeakRetained = objc_loadWeakRetained(&self->_authenticator);
      clientAnalyticsParameters = [WeakRetained clientAnalyticsParameters];

      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v10 setObject:*MEMORY[0x277D38428] forKeyedSubscript:*MEMORY[0x277D383D8]];
      [v10 setObject:*MEMORY[0x277D38388] forKeyedSubscript:*MEMORY[0x277D38388]];
      v11 = [clientAnalyticsParameters objectForKeyedSubscript:*MEMORY[0x277D38900]];
      [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x277D384B8]];

      v12 = [clientAnalyticsParameters objectForKeyedSubscript:*MEMORY[0x277D38908]];
      [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x277D384E0]];

      v13 = MEMORY[0x277D37D28];
      v14 = [clientAnalyticsParameters objectForKeyedSubscript:{*MEMORY[0x277D38910], *MEMORY[0x277D38538], *MEMORY[0x277D38558]}];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v16 = *MEMORY[0x277D38540];
      if (isKindOfClass)
      {
        v16 = v14;
      }

      v17 = v16;

      v21[2] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
      [v13 subjects:v18 sendEvent:v10];

      self->_completedMechanisms |= 0x10uLL;
      evaluationFlags = self->_evaluationFlags;
      self->_evaluationFlags = evaluationFlags | 0x40;
      if ((evaluationFlags & 0x20) != 0)
      {
        self->_automaticallyPresentPasscodeOnce = 1;
        [(PKAuthenticatorEvaluationContext *)self _presentPasscodeIfNecessary];
      }
    }

    else
    {
      self->_completedMechanisms &= ~0x10uLL;
      if (self->_acquireUserIntent)
      {
        self->_evaluationFlags |= 0x20uLL;
      }
    }

    if (self->_usingExternalContext && self->_externalContextInvalidationPolicy)
    {
      v20 = +[PKAuthenticatorSharedRootContext sharedInstance];
      [v20 setUserIntentAvailabilityState:bOOLValue];
    }
  }

  else if (!v5)
  {
    goto LABEL_16;
  }

  [(PKAuthenticatorEvaluationContext *)self _updateEvaluationState];
LABEL_16:
}

- (BOOL)updateCompletedMechanismsForPushButtonEventParams:(id)params
{
  paramsCopy = params;
  v5 = [paramsCopy objectForKeyedSubscript:&unk_286FD1028];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = [paramsCopy objectForKeyedSubscript:&unk_286FD1070];
    completedMechanisms = self->_completedMechanisms;
    if (v7)
    {
      if ((completedMechanisms & 0xF) == 0)
      {
LABEL_10:

        goto LABEL_11;
      }

      self->_completedMechanisms = completedMechanisms & 0xFFFFFFFFFFFFFFF0;
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v10 = "PKAuthenticator: Removing completed authentication mechanisms because push button is parent";
        v11 = &v14;
LABEL_8:
        _os_log_impl(&dword_25E0A9000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      }
    }

    else
    {
      self->_completedMechanisms = completedMechanisms | 1;
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v10 = "PKAuthenticator: Adding completed authentication mechanism because push button is parent of nothing";
        v11 = &v13;
        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  return bOOLValue;
}

- (void)handlePushButtonSecondaryEventWithParameters:(id)parameters
{
  useLegacyAuthenticator = [parameters objectForKeyedSubscript:&unk_286FD1058];
  v5 = useLegacyAuthenticator;
  if (useLegacyAuthenticator)
  {
    v8 = useLegacyAuthenticator;
    bOOLValue = [useLegacyAuthenticator BOOLValue];
    v7 = 32;
    if (!bOOLValue)
    {
      v7 = 0;
    }

    self->_completedMechanisms = self->_completedMechanisms & 0xFFFFFFFFFFFFFFDFLL | v7;
    useLegacyAuthenticator = [(PKAuthenticatorEvaluationRequest *)self->_request useLegacyAuthenticator];
    v5 = v8;
    if ((useLegacyAuthenticator & 1) == 0)
    {
      useLegacyAuthenticator = [(PKAuthenticatorEvaluationContext *)self _updateEvaluationState];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](useLegacyAuthenticator, v5);
}

- (void)event:(int64_t)event params:(id)params reply:(id)reply
{
  paramsCopy = params;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PKAuthenticatorEvaluationContext_event_params_reply___block_invoke;
  block[3] = &unk_279A00130;
  v12 = paramsCopy;
  eventCopy = event;
  block[4] = self;
  v9 = paramsCopy;
  replyCopy = reply;
  dispatch_async(MEMORY[0x277D85CD0], block);
  (*(replyCopy + 2))(replyCopy, MEMORY[0x277CBEC10], 0);
}

void __55__PKAuthenticatorEvaluationContext_event_params_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 <= 4)
  {
    if (v2 == 1)
    {
      [*(a1 + 32) handleTouchIDEventWithParameters:*(a1 + 40)];
    }

    else if (v2 == 2)
    {
      [*(a1 + 32) handlePasscodeEventWithParameters:*(a1 + 40)];
    }
  }

  else
  {
    switch(v2)
    {
      case 5:
        [*(a1 + 32) handlePushButtonEventWithParameters:*(a1 + 40)];
        break;
      case 7:
        [*(a1 + 32) handlePearlEventWithParameters:*(a1 + 40)];
        break;
      case 9:
        [*(a1 + 32) handlePushButtonSecondaryEventWithParameters:*(a1 + 40)];
        break;
    }
  }

  v3 = [*(a1 + 40) objectForKeyedSubscript:&unk_286FD1028];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) _updateActiveState:objc_msgSend(v3 forEvent:"BOOLValue") withParameters:{*(a1 + 48), *(a1 + 40)}];
    v3 = v4;
  }
}

- (void)_updateActiveState:(BOOL)state forEvent:(int64_t)event withParameters:(id)parameters
{
  stateCopy = state;
  parametersCopy = parameters;
  if (event <= 4)
  {
    switch(event)
    {
      case 1:
        activeMechanisms = self->_activeMechanisms;
        v14 = activeMechanisms & 0xFFFFFFFFFFFFFFF7;
        v15 = 8;
        if (!stateCopy)
        {
          v15 = 0;
        }

        LOBYTE(v8) = v14 | v15;
        self->_activeMechanisms = v14 | v15;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v17 = objc_loadWeakRetained(&self->_authenticator);
        v18 = v17;
        if (WeakRetained && v17)
        {
          if (stateCopy)
          {
            if (objc_opt_respondsToSelector())
            {
              [WeakRetained authenticatorDidActivateTouchID:v18];
            }
          }

          else
          {
            v26 = [parametersCopy objectForKeyedSubscript:&unk_286FD1088];
            if (objc_opt_respondsToSelector())
            {
              [WeakRetained authenticatorDidDeactivateTouchID:v18 status:v26 != 0];
            }
          }
        }

        goto LABEL_37;
      case 2:
        v8 = self->_activeMechanisms;
        self->_activeMechanisms = v8 & 0xFFFFFFFFFFFFFFFELL | stateCopy;
        if (stateCopy)
        {
          v21 = [parametersCopy copy];
          passcodePresentationParameters = self->_passcodePresentationParameters;
          self->_passcodePresentationParameters = v21;

          [(PKAuthenticatorEvaluationContext *)self _presentPasscodeIfNecessary];
          goto LABEL_32;
        }

        v25 = self->_passcodePresentationParameters;
        self->_passcodePresentationParameters = 0;

        selfCopy2 = self;
        v11 = 0;
        break;
      case 3:
        v8 = self->_activeMechanisms;
        v9 = 2;
        if (!stateCopy)
        {
          v9 = 0;
        }

        self->_activeMechanisms = v8 & 0xFFFFFFFFFFFFFFFDLL | v9;
        selfCopy2 = self;
        v11 = 1;
        if (stateCopy)
        {
          [(PKAuthenticatorEvaluationContext *)self _presentAuthenticatorViewOfType:1 withParams:parametersCopy];
LABEL_32:
          LOBYTE(activeMechanisms) = v8;
          goto LABEL_37;
        }

        break;
      default:
        goto LABEL_45;
    }

    [(PKAuthenticatorEvaluationContext *)selfCopy2 _dismissAuthenticatorViewOfType:v11];
    goto LABEL_32;
  }

  switch(event)
  {
    case 5:
      v12 = 16;
      break;
    case 7:
      activeMechanisms = self->_activeMechanisms;
      v23 = activeMechanisms & 0xFFFFFFFFFFFFFFFBLL;
      v24 = 4;
      if (!stateCopy)
      {
        v24 = 0;
      }

      LOBYTE(v8) = v23 | v24;
      self->_activeMechanisms = v23 | v24;
      self->_coachingStatus = 1;
      [(PKAuthenticatorEvaluationContext *)self _updateCoachingState];
      goto LABEL_37;
    case 9:
      v12 = 32;
      break;
    default:
      goto LABEL_45;
  }

  activeMechanisms = self->_activeMechanisms;
  v19 = activeMechanisms & ~v12;
  v20 = activeMechanisms | v12;
  if (stateCopy)
  {
    v8 = v20;
  }

  else
  {
    v8 = v19;
  }

  self->_activeMechanisms = v8;
LABEL_37:
  if ((activeMechanisms & 0xC) != 0 && (v8 & 0xC) == 0)
  {
    self->_automaticallyPresentPasscodeOnce = 1;
    [(PKAuthenticatorEvaluationContext *)self _presentPasscodeIfNecessary];
  }

  if (![(PKAuthenticatorEvaluationRequest *)self->_request useLegacyAuthenticator])
  {
    [(PKAuthenticatorEvaluationContext *)self _updateEvaluationState];
  }

LABEL_45:
}

- (void)_setLiftFingerTimer
{
  self->_evaluationFlags |= 0x10uLL;
  liftFingerTimeout = self->_liftFingerTimeout;
  if (liftFingerTimeout)
  {
    dispatch_source_cancel(liftFingerTimeout);
    v4 = self->_liftFingerTimeout;
    self->_liftFingerTimeout = 0;
  }

  v5 = fmax(self->_touchIDBeginTime - CFAbsoluteTimeGetCurrent() + 1.0, 0.0);
  if (v5 <= 0.0)
  {

    [(PKAuthenticatorEvaluationContext *)self _handleLiftFinger];
  }

  else if (!self->_liftFingerTimeout)
  {
    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    v7 = self->_liftFingerTimeout;
    self->_liftFingerTimeout = v6;

    v8 = self->_liftFingerTimeout;
    v9 = dispatch_time(0, (v5 * 1000000000.0));
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    objc_initWeak(&location, self);
    v10 = self->_liftFingerTimeout;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__PKAuthenticatorEvaluationContext__setLiftFingerTimer__block_invoke;
    v11[3] = &unk_2799FFB98;
    objc_copyWeak(&v12, &location);
    dispatch_source_set_event_handler(v10, v11);
    dispatch_resume(self->_liftFingerTimeout);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __55__PKAuthenticatorEvaluationContext__setLiftFingerTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLiftFinger];
}

- (void)_handleLiftFinger
{
  evaluationFlags = self->_evaluationFlags;
  if ((evaluationFlags & 0x10) != 0)
  {
    self->_evaluationFlags = evaluationFlags & 0xFFFFFFFFFFFFFFEFLL;
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25E0A9000, v4, OS_LOG_TYPE_DEFAULT, "Biometric Match requests lift finger.", v9, 2u);
    }

    if ([(PKAuthenticatorEvaluationRequest *)self->_request useLegacyAuthenticator])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_loadWeakRetained(&self->_authenticator);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained authenticator:v6 didRequestUserAction:0];
      }

      else if (objc_opt_respondsToSelector())
      {
        [WeakRetained authenticatorDidEncounterMatchMiss:v6];
      }
    }

    else
    {
      [(PKAuthenticatorEvaluationContext *)self _clearFingerOnTimer];
      self->_evaluationFlags |= 8uLL;
      [(PKAuthenticatorEvaluationContext *)self _setEvaluationStateWithEvent:0, 1];
    }
  }

  liftFingerTimeout = self->_liftFingerTimeout;
  if (liftFingerTimeout)
  {
    dispatch_source_cancel(liftFingerTimeout);
    v8 = self->_liftFingerTimeout;
    self->_liftFingerTimeout = 0;
  }
}

- (void)_clearLiftFingerTimer
{
  self->_evaluationFlags &= ~0x10uLL;
  liftFingerTimeout = self->_liftFingerTimeout;
  if (liftFingerTimeout)
  {
    dispatch_source_cancel(liftFingerTimeout);
    v4 = self->_liftFingerTimeout;
    self->_liftFingerTimeout = 0;
  }
}

- (void)_setFingerOnTimer
{
  self->_evaluationFlags |= 4uLL;
  matchingDelayTimeout = self->_matchingDelayTimeout;
  if (matchingDelayTimeout)
  {
    dispatch_source_cancel(matchingDelayTimeout);
    v4 = self->_matchingDelayTimeout;
    self->_matchingDelayTimeout = 0;
  }

  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  v6 = self->_matchingDelayTimeout;
  self->_matchingDelayTimeout = v5;

  v7 = self->_matchingDelayTimeout;
  v8 = dispatch_time(0, 100000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  objc_initWeak(&location, self);
  v9 = self->_matchingDelayTimeout;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__PKAuthenticatorEvaluationContext__setFingerOnTimer__block_invoke;
  v10[3] = &unk_2799FFB98;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v9, v10);
  dispatch_resume(self->_matchingDelayTimeout);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __53__PKAuthenticatorEvaluationContext__setFingerOnTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[9];
    if ((v2 & 4) != 0)
    {
      WeakRetained[9] = v2 & 0xFFFFFFFFFFFFFFFBLL;
      v3 = WeakRetained;
      [WeakRetained _updateEvaluationState];
      WeakRetained = v3;
    }
  }
}

- (void)_clearFingerOnTimer
{
  self->_evaluationFlags &= ~4uLL;
  matchingDelayTimeout = self->_matchingDelayTimeout;
  if (matchingDelayTimeout)
  {
    dispatch_source_cancel(matchingDelayTimeout);
    v4 = self->_matchingDelayTimeout;
    self->_matchingDelayTimeout = 0;
  }
}

- (void)setDelegate:(id)delegate resetPriorDelegate:(BOOL)priorDelegate
{
  priorDelegateCopy = priorDelegate;
  delegateCopy = delegate;
  if (!self->_invalidated)
  {
    obj = delegateCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained != obj)
    {
      if (WeakRetained)
      {
        [(PKAuthenticatorEvaluationContext *)self _dismissAuthenticatorViewOfType:0];
        [(PKAuthenticatorEvaluationContext *)self _dismissAuthenticatorViewOfType:1];
      }

      objc_storeWeak(&self->_delegate, obj);
      if (![(PKAuthenticatorEvaluationRequest *)self->_request useLegacyAuthenticator])
      {
        delegateResponderCache = self->_delegateResponderCache;
        if (obj)
        {
          v9 = objc_opt_respondsToSelector();
          if (objc_opt_respondsToSelector())
          {
            v10 = 2;
          }

          else
          {
            v10 = 0;
          }

          v11 = v10 & 0xFE | v9 & 1;
        }

        else
        {
          v11 = 0;
        }

        *&self->_delegateResponderCache = v11;
        v12 = objc_loadWeakRetained(&self->_authenticator);
        v13 = obj;
        if (WeakRetained && priorDelegateCopy)
        {
          if (self->_evaluationState && (delegateResponderCache & 1) != 0)
          {
            [WeakRetained authenticator:v12 didTransitionToEvaluationStateWithEvent:{0, 0}];
            v13 = obj;
          }

          if (self->_coachingState && (delegateResponderCache & 2) != 0)
          {
            [WeakRetained authenticator:v12 didTransitionToCoachingState:0];
            v13 = obj;
          }
        }

        if (v13)
        {
          v14 = self->_delegateResponderCache;
          if (v14)
          {
            [obj authenticator:v12 didTransitionToEvaluationStateWithEvent:{self->_evaluationState, self->_lastAnnotation}];
            v14 = self->_delegateResponderCache;
          }

          if ((v14 & 2) != 0)
          {
            [obj authenticator:v12 didTransitionToCoachingState:self->_coachingState];
          }
        }
      }
    }

    delegateCopy = obj;
  }
}

- (BOOL)_delegateSupportsPasscodePresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (BOOL)_delegateSupportsPasscodeDismissal
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (BOOL)_delegateSupportsPassphrasePresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (BOOL)_delegateSupportsPassphraseDismissal
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)_updateEvaluationState
{
  v3 = self->_acquireUserIntent && (self->_completedMechanisms & 0x10) == 0;
  if (v3 || (self->_acquireSecondaryUserIntent ? (v4 = (self->_completedMechanisms & 0x21) == 1) : (v4 = 0), v4))
  {
    v6 = 3;
    goto LABEL_14;
  }

  v5 = self->_completedMechanisms & 0xC;
  if ([(PKAuthenticatorEvaluationRequest *)self->_request assumeBiometricOrPasscodeAvailable])
  {
    if (v5 || (self->_completedMechanisms & 3) != 0)
    {
      v6 = 5;
      goto LABEL_14;
    }

    evaluationFlags = self->_evaluationFlags;
    if ((evaluationFlags & 0xE) != 2)
    {
      goto LABEL_24;
    }

LABEL_22:
    v6 = 2;
    goto LABEL_14;
  }

  evaluationFlags = self->_evaluationFlags;
  if ((evaluationFlags & 0xE) == 2 || v5 && (evaluationFlags & 4) == 0)
  {
    goto LABEL_22;
  }

LABEL_24:
  if ((evaluationFlags & 9) == 1)
  {
    if (self->_evaluationState == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    activeMechanisms = self->_activeMechanisms;
    if ((activeMechanisms & 0xC) != 0)
    {
      v6 = 0;
    }

    else if ((self->_presentationFlags & 2) != 0 || self->_passcodePresentationRequested || !activeMechanisms || self->_automaticallyPresentPasscodeOnce)
    {
      v6 = 4 * (self->_evaluationState != 0);
    }

    else
    {
      v6 = 4;
    }
  }

LABEL_14:
  if ((self->_evaluationFlags & 0xB) == 8)
  {
    self->_evaluationFlags &= 0xFFFFFFFFFFFFFFF4;
  }

  [(PKAuthenticatorEvaluationContext *)self _setEvaluationStateWithEvent:v6, 0];
}

- (void)_setEvaluationStateWithEvent:(id)event
{
  var1 = event.var1;
  var0 = event.var0;
  evaluationState = self->_evaluationState;
  if (event.var0)
  {
    if (evaluationState == event.var0)
    {
      return;
    }
  }

  else
  {
    v7 = event.var1 - 1;
    if (evaluationState)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 >= 2;
    }

    if (v8 && (self->_lastAnnotation || v7 >= 3))
    {
      return;
    }
  }

  self->_evaluationState = event.var0;
  self->_lastAnnotation = event.var1;
  if (!self->_invalidated)
  {
    v10 = atomic_load(&self->_evaluating);
    if ((v10 & 1) != 0 && ((PKSystemApertureIsAvailable() & 1) != 0 || self->_secureIndicatorRequired))
    {
      v11 = 0;
      v12 = self->_evaluationState;
      if (v12 <= 2)
      {
        if (!v12)
        {
          if (self->_lastAnnotation)
          {
            v15 = 4;
          }

          else
          {
            v15 = 0;
          }

          v11 = [MEMORY[0x277D37EC8] createForGlyphState:v15];
          v16 = 1;
          if (!v11)
          {
LABEL_47:
            banner = self->_banner;
            if (banner)
            {
              [(PKBannerHandle *)banner invalidate];
              v24 = self->_banner;
              self->_banner = 0;
            }

LABEL_49:

            goto LABEL_50;
          }

LABEL_38:
          if (self->_secureIndicatorRequired)
          {
            secureIndicatorProvider = self->_secureIndicatorProvider;
            if (secureIndicatorProvider && self->_providerRegistered)
            {
              [(PKAuthenticatorSecureIndicatorProvider *)secureIndicatorProvider consumer:self requestsState:v11];
            }
          }

          else
          {
            v18 = self->_banner;
            if (v18 && ![(PKBannerHandle *)v18 isInvalidated])
            {
              [(PKBannerHandle *)self->_banner setState:v11];
            }

            else
            {
              v19 = MEMORY[0x277D37DD8];
              create = [MEMORY[0x277D37EC0] create];
              v21 = [v19 createHandleForRequest:create queue:MEMORY[0x277D85CD0]];
              v22 = self->_banner;
              self->_banner = v21;

              [(PKBannerHandle *)self->_banner setState:v11];
              [(PKBannerHandle *)self->_banner displayWithCompletion:0];
            }
          }

          if (!v16)
          {
            goto LABEL_49;
          }

          goto LABEL_47;
        }

        if (v12 == 1)
        {
          v13 = MEMORY[0x277D37EC8];
          v14 = 1;
LABEL_34:
          v11 = [v13 createForGlyphState:v14];
          v16 = 0;
          if (!v11)
          {
            goto LABEL_47;
          }

          goto LABEL_38;
        }

        if (v12 != 2)
        {
          goto LABEL_47;
        }

LABEL_29:
        v13 = MEMORY[0x277D37EC8];
        v14 = 2;
        goto LABEL_34;
      }

      if ((v12 - 3) >= 2)
      {
        if (v12 != 5)
        {
          goto LABEL_47;
        }

        if (self->_secureIndicatorRequired)
        {
          goto LABEL_29;
        }
      }

      else if (self->_secureIndicatorRequired)
      {
        v13 = MEMORY[0x277D37EC8];
        v14 = 0;
        goto LABEL_34;
      }

      v11 = 0;
      goto LABEL_47;
    }
  }

LABEL_50:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (*&self->_delegateResponderCache & 1) != 0)
  {
    v25 = objc_loadWeakRetained(&self->_authenticator);
    [WeakRetained authenticator:v25 didTransitionToEvaluationStateWithEvent:{var0, var1}];
  }

  [(PKAuthenticatorEvaluationContext *)self _updateCoachingState];
}

- (void)_updateCoachingState
{
  if ((self->_completedMechanisms & 4) != 0 || (self->_evaluationState - 1) > 1)
  {
    v5 = 0;
  }

  else
  {
    coachingStatus = self->_coachingStatus;
    if (coachingStatus > 7)
    {
      if (coachingStatus == 8)
      {
        if (PKIsPad())
        {
          v5 = 4;
        }

        else
        {
          v5 = 0;
        }
      }

      else if (coachingStatus == 11)
      {
        v5 = 3;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v4 = 2;
      if (coachingStatus != 4)
      {
        v4 = 0;
      }

      if (coachingStatus == 3)
      {
        v5 = 1;
      }

      else
      {
        v5 = v4;
      }
    }
  }

  [(PKAuthenticatorEvaluationContext *)self _setCoachingState:v5];
}

- (void)_setCoachingState:(int64_t)state
{
  coachingState = self->_coachingState;
  if (coachingState == state)
  {
    return;
  }

  self->_coachingState = state;
  if (!state || coachingState)
  {
    if (state || !coachingState)
    {
      goto LABEL_9;
    }

    LAContext = self->_LAContext;
    v7 = &__block_literal_global_328;
    v8 = 0;
  }

  else
  {
    LAContext = self->_LAContext;
    v7 = &__block_literal_global_326;
    v8 = 1;
  }

  [LAContext setShowingCoachingHint:v8 event:7 reply:v7];
LABEL_9:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (*&self->_delegateResponderCache & 2) != 0)
  {
    v11 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_authenticator);
    [v11 authenticator:v10 didTransitionToCoachingState:self->_coachingState];

    WeakRetained = v11;
  }
}

- (BOOL)fingerPresent
{
  if (PKPearlIsAvailable())
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    return (LOBYTE(self->_evaluationFlags) >> 1) & 1;
  }

  return v3;
}

- (PKAuthenticatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end