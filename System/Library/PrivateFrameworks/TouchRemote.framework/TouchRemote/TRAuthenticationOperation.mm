@interface TRAuthenticationOperation
- (BOOL)_canDoMagicAuthForAccount:(id)account;
- (void)_reportAuthMetrics:(id)metrics durationSeconds:(double)seconds authType:(int)type deviceType:(int)deviceType sessionID:(id)d authServiceType:(int)serviceType;
- (void)execute;
@end

@implementation TRAuthenticationOperation

- (void)execute
{
  v117 = *MEMORY[0x277D85DE8];
  if ([(TRAuthenticationOperation *)self isCancelled])
  {
    userCancelledError = [objc_opt_class() userCancelledError];
    [(TROperation *)self finishWithError:?];

    return;
  }

  v3 = MEMORY[0x277CBEB58];
  targetedServices = [(TRAuthenticationOperation *)self targetedServices];
  v5 = [v3 setWithSet:targetedServices];

  v101 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  v7 = v6;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      shouldForceInteractiveAuth = [(TRAuthenticationOperation *)self shouldForceInteractiveAuth];
      presentingViewController = [(TRAuthenticationOperation *)self presentingViewController];
      *buf = 136315906;
      v111 = "[TRAuthenticationOperation execute]";
      v112 = 2112;
      v113 = v5;
      v114 = 1024;
      *v115 = shouldForceInteractiveAuth;
      *&v115[4] = 2112;
      *&v115[6] = presentingViewController;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s: services: %@, shouldForceInteractiveAuth? %d, presentingViewController? %@", buf, 0x26u);
    }
  }

  if (![v5 count])
  {
    v53 = v7;
LABEL_125:
    if (_TRLogEnabled == 1)
    {
      v90 = TRLogHandle(0);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v111 = "[TRAuthenticationOperation execute]";
        v112 = 2112;
        v113 = v101;
        _os_log_impl(&dword_26F2A2000, v90, OS_LOG_TYPE_DEFAULT, "%s finishing with result: %@", buf, 0x16u);
      }
    }

    v18 = objc_opt_new();
    [v18 setObject:v101 forKeyedSubscript:@"TRAuthenticationOperationUnauthenticatedServicesKey"];
    if (v53)
    {
      [v18 setObject:v53 forKeyedSubscript:@"TRAuthenticationOperationErrorKey"];
    }

    v91 = [v18 copy];
    [(TROperation *)self finishWithResult:v91];

    v7 = v53;
    goto LABEL_147;
  }

  v12 = 0x279DCE000uLL;
  *&v11 = 136315906;
  v99 = v11;
  v102 = v5;
  while (1)
  {
    anyObject = [v5 anyObject];
    unsignedIntegerValue = [anyObject unsignedIntegerValue];

    v15 = [*(v12 + 1568) idmsAccountForAccountService:unsignedIntegerValue];
    if (!v15)
    {
      break;
    }

    v16 = v15;
    mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
    v18 = [mEMORY[0x277CF0130] transportableAuthKitAccount:v16];

    v103 = [*(v12 + 1568) associatedAccountServicesForIDMSAccount:v18];
    v19 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v103];
    [v19 intersectSet:v5];
    [v5 minusSet:v19];
    v20 = v19;
    shouldForceInteractiveAuth2 = [(TRAuthenticationOperation *)self shouldForceInteractiveAuth];
    presentingViewController2 = [(TRAuthenticationOperation *)self presentingViewController];
    if (presentingViewController2)
    {
      v23 = 1;
    }

    else
    {
      v23 = self->_isCLIMode && self->_rawPassword != 0;
    }

    v26 = [(TRAuthenticationOperation *)self _canDoMagicAuthForAccount:v18];
    v105 = v20;
    if (v26)
    {
      v27 = !shouldForceInteractiveAuth2;
    }

    else
    {
      if (_TRLogEnabled == 1)
      {
        v28 = TRLogHandle(v26);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v111 = "[TRAuthenticationOperation execute]";
          _os_log_impl(&dword_26F2A2000, v28, OS_LOG_TYPE_DEFAULT, "%s: this device cannot do magic auth", buf, 0xCu);
        }
      }

      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-12001 userInfo:0];

      if (self->_isCLIMode && !self->_rawPassword)
      {
        [(TROperation *)self finishWithError:v29];
        v7 = v29;
LABEL_146:

        goto LABEL_147;
      }

      v27 = 0;
      v7 = v29;
    }

    v30 = +[TRDefaults forceProxyAuth];
    if (v30)
    {
      if (_TRLogEnabled == 1)
      {
        v31 = TRLogHandle(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v111 = "[TRAuthenticationOperation execute]";
          _os_log_impl(&dword_26F2A2000, v31, OS_LOG_TYPE_DEFAULT, "%s: Force Proxy Auth Default enabled", buf, 0xCu);
        }

LABEL_63:
      }

LABEL_64:
      if (v23)
      {
        if (self->_authType == 1)
        {
          v54 = 3;
        }

        else
        {
          v54 = 2;
        }

        self->_authType = v54;
        anyObject2 = [v20 anyObject];
        intValue = [anyObject2 intValue];

        if (_TRLogEnabled == 1)
        {
          v58 = TRLogHandle(v57);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v111 = "[TRAuthenticationOperation execute]";
            _os_log_impl(&dword_26F2A2000, v58, OS_LOG_TYPE_DEFAULT, "%s attempting proxy auth", buf, 0xCu);
          }
        }

        v59 = [TRProxyAuthOperation alloc];
        session = [(TROperation *)self session];
        v61 = [(TROperation *)v59 initWithSession:session];

        [(TRProxyAuthOperation *)v61 setAccount:v18];
        [(TRProxyAuthOperation *)v61 setTargetedServices:v20];
        presentingViewController3 = [(TRAuthenticationOperation *)self presentingViewController];
        [(TRProxyAuthOperation *)v61 setPresentingViewController:presentingViewController3];

        [(TRProxyAuthOperation *)v61 setShouldUseAIDA:[(TRAuthenticationOperation *)self shouldUseAIDA]];
        [(TRProxyAuthOperation *)v61 setIsForHomePod:self->_shouldSetupHomePod];
        [(TRProxyAuthOperation *)v61 setIsCLIMode:self->_isCLIMode];
        [(TRProxyAuthOperation *)v61 setCanDoTermsAndConditions:self->_canDoTermsAndConditions];
        [(TRProxyAuthOperation *)v61 setForceFail:self->_forceFail];
        v63 = [(TRProxyAuthOperation *)v61 setPresentingChildViewController:self->_presentingChildViewController];
        if (self->_isCLIMode)
        {
          rawPassword = self->_rawPassword;
          if (rawPassword)
          {
            if (_TRLogEnabled == 1)
            {
              v65 = TRLogHandle(v63);
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_26F2A2000, v65, OS_LOG_TYPE_DEFAULT, "TRAuthenticationOperation->TRProxyAuthOperation isClIMode enabled, setting passed in password", buf, 2u);
              }

              rawPassword = self->_rawPassword;
            }

            [(TRProxyAuthOperation *)v61 setRawPassword:rawPassword];
          }
        }

        self->_proxyAuthStartTicks = mach_absolute_time();
        [(TRProxyAuthOperation *)v61 start];
        mach_absolute_time();
        UpTicksToSecondsF();
        v67 = v66;
        result = [(TROperation *)v61 result];
        error = [(TROperation *)v61 error];
        if (!error)
        {
          error = [result objectForKey:@"TRProxyAuthOperationErrorKey"];
        }

        if (self->_shouldSetupHomePod)
        {
          v70 = 1;
        }

        else
        {
          v70 = 2;
        }

        v71 = [(TRAuthenticationOperation *)self _reportAuthMetrics:error durationSeconds:2 authType:v70 deviceType:self->_sessionID sessionID:intValue authServiceType:v67];
        if (_TRLogEnabled == 1)
        {
          v72 = TRLogHandle(v71);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v111 = "[TRAuthenticationOperation execute]";
            v112 = 2112;
            v113 = result;
            _os_log_impl(&dword_26F2A2000, v72, OS_LOG_TYPE_DEFAULT, "%s Proxy auth finished with results %@", buf, 0x16u);
          }
        }

        if (!result)
        {
          error2 = [(TROperation *)v61 error];
          v97 = error2;
          if (_TRLogEnabled == 1)
          {
            v98 = TRLogHandle(error2);
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v111 = "[TRAuthenticationOperation execute]";
              v112 = 2112;
              v113 = v97;
              _os_log_impl(&dword_26F2A2000, v98, OS_LOG_TYPE_DEFAULT, "%s Proxy auth failed with error: %@", buf, 0x16u);
            }
          }

          [(TROperation *)self finishWithError:v97];

          v5 = v102;
          goto LABEL_146;
        }

        v73 = [result objectForKey:@"TRProxyAuthOperationUnauthenticatedServicesKey"];

        v74 = [result objectForKey:@"TRProxyAuthOperationErrorKey"];

        v20 = v73;
        v7 = v74;
        v5 = v102;
      }

      if ([v20 count])
      {
        string = [MEMORY[0x277CCAB68] string];
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v76 = v5;
        v77 = [v76 countByEnumeratingWithState:&v106 objects:v116 count:16];
        if (v77)
        {
          v78 = v77;
          v79 = *v107;
          do
          {
            for (i = 0; i != v78; ++i)
            {
              if (*v107 != v79)
              {
                objc_enumerationMutation(v76);
              }

              v81 = StringFromTRAccountService([*(*(&v106 + 1) + 8 * i) unsignedIntegerValue]);
              [string appendString:v81];
            }

            v78 = [v76 countByEnumeratingWithState:&v106 objects:v116 count:16];
          }

          while (v78);
        }

        v5 = v102;
        if (_TRLogEnabled == 1)
        {
          v83 = TRLogHandle(v82);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v99;
            v111 = "[TRAuthenticationOperation execute]";
            v112 = 2112;
            v113 = string;
            v114 = 2112;
            *v115 = v20;
            *&v115[8] = 2112;
            *&v115[10] = v7;
            _os_log_impl(&dword_26F2A2000, v83, OS_LOG_TYPE_DEFAULT, "%s Failed to authenticate with services: %@ (%@), last know error %@", buf, 0x2Au);
          }
        }

        if (![(TRAuthenticationOperation *)self shouldIgnoreAuthFailures])
        {
          [v76 unionSet:v20];
          v94 = objc_opt_new();
          [v94 setObject:v76 forKeyedSubscript:@"TRAuthenticationOperationUnauthenticatedServicesKey"];
          if (v7)
          {
            [v94 setObject:v7 forKeyedSubscript:@"TRAuthenticationOperationErrorKey"];
          }

          v95 = [v94 copy];
          [(TROperation *)self finishWithResult:v95];

          goto LABEL_146;
        }

        [v101 unionSet:v20];
      }

      v12 = 0x279DCE000;
LABEL_105:

      v53 = v7;
      goto LABEL_106;
    }

    if (!v27)
    {
      goto LABEL_64;
    }

    self->_authType = 1;
    anyObject3 = [v20 anyObject];
    intValue2 = [anyObject3 intValue];

    if (_TRLogEnabled == 1)
    {
      v35 = TRLogHandle(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v111 = "[TRAuthenticationOperation execute]";
        _os_log_impl(&dword_26F2A2000, v35, OS_LOG_TYPE_DEFAULT, "%s attempting companion auth", buf, 0xCu);
      }
    }

    v36 = [TRCompanionAuthOperation alloc];
    session2 = [(TROperation *)self session];
    v31 = [(TROperation *)v36 initWithSession:session2];

    [v31 setAccount:v18];
    [v31 setTargetedServices:v105];
    [v31 setShouldUseAIDA:[(TRAuthenticationOperation *)self shouldUseAIDA]];
    presentingViewController4 = [(TRAuthenticationOperation *)self presentingViewController];
    [v31 setPresentingViewController:presentingViewController4];

    [v31 setIsForHomePod:self->_shouldSetupHomePod];
    [v31 setIsCLIMode:self->_isCLIMode];
    [v31 setCanDoTermsAndConditions:self->_canDoTermsAndConditions];
    [v31 setForceFail:self->_forceFail];
    v39 = [v31 setPresentingChildViewController:self->_presentingChildViewController];
    if (self->_isCLIMode)
    {
      v40 = self->_rawPassword;
      if (v40)
      {
        if (_TRLogEnabled == 1)
        {
          v41 = TRLogHandle(v39);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26F2A2000, v41, OS_LOG_TYPE_DEFAULT, "TRAuthenticationOperation->TRCompanionAuthOperation isClIMode enabled, setting passed in password", buf, 2u);
          }

          v40 = self->_rawPassword;
        }

        [v31 setRawPassword:v40];
      }
    }

    self->_companionAuthStartTicks = mach_absolute_time();
    [v31 start];
    mach_absolute_time();
    UpTicksToSecondsF();
    v43 = v42;
    result2 = [v31 result];
    error3 = [v31 error];
    if (!error3)
    {
      error3 = [result2 objectForKey:@"TRCompanionAuthOperationErrorKey"];
    }

    if (self->_shouldSetupHomePod)
    {
      v46 = 1;
    }

    else
    {
      v46 = 2;
    }

    v47 = [(TRAuthenticationOperation *)self _reportAuthMetrics:error3 durationSeconds:1 authType:v46 deviceType:self->_sessionID sessionID:intValue2 authServiceType:v43];
    v20 = v105;
    if (_TRLogEnabled == 1)
    {
      v48 = TRLogHandle(v47);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v111 = "[TRAuthenticationOperation execute]";
        v112 = 2112;
        v113 = result2;
        _os_log_impl(&dword_26F2A2000, v48, OS_LOG_TYPE_DEFAULT, "%s companion auth finished with results %@", buf, 0x16u);
      }
    }

    if (!result2)
    {
      error4 = [v31 error];
      v85 = error4;
      if (_TRLogEnabled == 1)
      {
        v86 = TRLogHandle(error4);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
LABEL_118:
          *buf = 136315394;
          v111 = "[TRAuthenticationOperation execute]";
          v112 = 2112;
          v113 = v85;
          _os_log_impl(&dword_26F2A2000, v86, OS_LOG_TYPE_DEFAULT, "%s Companion auth failed with error: %@", buf, 0x16u);
        }

LABEL_119:
      }

LABEL_120:
      v100 = result2;
      v87 = error3;
      [(TROperation *)self finishWithError:v85];
      v88 = 0;
      goto LABEL_121;
    }

    if (self->_shouldSetupHomePod)
    {
      error5 = [v31 error];
      if (error5)
      {
        v50 = error5;
        error6 = [v31 error];
        ak_isEligibleForProxiedAuthFallback = [error6 ak_isEligibleForProxiedAuthFallback];

        if ((ak_isEligibleForProxiedAuthFallback & 1) == 0)
        {
          error7 = [v31 error];
          v85 = error7;
          v20 = v105;
          if (_TRLogEnabled == 1)
          {
            v86 = TRLogHandle(error7);
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_118;
            }

            goto LABEL_119;
          }

          goto LABEL_120;
        }
      }
    }

    v20 = [result2 objectForKey:@"TRCompanionAuthOperationUnauthenticatedServicesKey"];

    v53 = [result2 objectForKey:@"TRCompanionAuthOperationErrorKey"];

    if ([v20 count])
    {

      v7 = v53;
      v5 = v102;
      goto LABEL_63;
    }

    v100 = result2;
    if (_TRLogEnabled != 1)
    {
      v87 = error3;
      v88 = 1;
      goto LABEL_122;
    }

    v85 = TRLogHandle(0);
    v87 = error3;
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v111 = "[TRAuthenticationOperation execute]";
      _os_log_impl(&dword_26F2A2000, v85, OS_LOG_TYPE_DEFAULT, "%s Companion auth successful. Authenticating remaining services", buf, 0xCu);
    }

    v88 = 1;
    v7 = v53;
LABEL_121:

    v53 = v7;
LABEL_122:
    v5 = v102;

    v12 = 0x279DCE000;
    if ((v88 & 1) == 0)
    {
      goto LABEL_148;
    }

LABEL_106:
    v7 = v53;
    if (![v5 count])
    {
      goto LABEL_125;
    }
  }

  if (_TRLogEnabled == 1)
  {
    v24 = TRLogHandle(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = StringFromTRAccountService(unsignedIntegerValue);
      *buf = 136315394;
      v111 = "[TRAuthenticationOperation execute]";
      v112 = 2112;
      v113 = v25;
      _os_log_impl(&dword_26F2A2000, v24, OS_LOG_TYPE_DEFAULT, "%s Failed to find IDMS account for service: %@", buf, 0x16u);
    }
  }

  if (!self->_shouldSetupHomePod)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    [v5 removeObject:v18];
    goto LABEL_105;
  }

  v92 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-12004 userInfo:0];
  v18 = v92;
  if (_TRLogEnabled == 1)
  {
    v93 = TRLogHandle(v92);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v111 = "[TRAuthenticationOperation execute]";
      v112 = 2112;
      v113 = v18;
      _os_log_impl(&dword_26F2A2000, v93, OS_LOG_TYPE_DEFAULT, "%s Ending Auth, Error: %@", buf, 0x16u);
    }
  }

  [(TROperation *)self finishWithError:v18];
LABEL_147:

  v53 = v7;
LABEL_148:
}

- (BOOL)_canDoMagicAuthForAccount:(id)account
{
  v3 = MEMORY[0x277CF0130];
  accountCopy = account;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance passwordResetTokenForAccount:accountCopy];

  return v6 != 0;
}

- (void)_reportAuthMetrics:(id)metrics durationSeconds:(double)seconds authType:(int)type deviceType:(int)deviceType sessionID:(id)d authServiceType:(int)serviceType
{
  v70[18] = *MEMORY[0x277D85DE8];
  dCopy = d;
  metricsCopy = metrics;
  code = [metricsCopy code];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", code];
  domain = [metricsCopy domain];
  underlyingErrors = [metricsCopy underlyingErrors];

  firstObject = [underlyingErrors firstObject];

  code2 = [firstObject code];
  v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", code2];
  domain2 = [firstObject domain];
  v62 = firstObject;
  underlyingErrors2 = [firstObject underlyingErrors];
  firstObject2 = [underlyingErrors2 firstObject];

  code3 = [firstObject2 code];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", firstObject2];
  domain3 = [firstObject2 domain];
  v59 = firstObject2;
  underlyingErrors3 = [firstObject2 underlyingErrors];
  firstObject3 = [underlyingErrors3 firstObject];

  code4 = [firstObject3 code];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", firstObject3];
  v56 = firstObject3;
  domain4 = [firstObject3 domain];
  v69[0] = @"duration";
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(seconds * 1000.0)];
  v70[0] = v48;
  v69[1] = @"errorCode";
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:code];
  v47 = v23;
  v63 = domain;
  v65 = v10;
  if (v10)
  {
    v24 = v10;
  }

  else
  {
    v24 = @"0";
  }

  v70[1] = v23;
  v70[2] = v24;
  v69[2] = @"errorCodeString";
  v69[3] = @"errorDomain";
  if (domain)
  {
    v25 = domain;
  }

  else
  {
    v25 = @"NoDomain";
  }

  v70[3] = v25;
  v69[4] = @"underlyingErrorCode0";
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:code2];
  v46 = v26;
  if (v66)
  {
    v27 = v66;
  }

  else
  {
    v27 = @"0";
  }

  v70[4] = v26;
  v70[5] = v27;
  v69[5] = @"underlyingErrorCodeString0";
  v69[6] = @"underlyingErrorDomain0";
  v61 = domain2;
  if (domain2)
  {
    v28 = domain2;
  }

  else
  {
    v28 = @"NoDomain";
  }

  v70[6] = v28;
  v69[7] = @"underlyingErrorCode1";
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:code3];
  v30 = v29;
  v58 = v17;
  if (v17)
  {
    v31 = v17;
  }

  else
  {
    v31 = @"0";
  }

  v70[7] = v29;
  v70[8] = v31;
  v69[8] = @"underlyingErrorCodeString1";
  v69[9] = @"underlyingErrorDomain1";
  if (domain3)
  {
    v32 = domain3;
  }

  else
  {
    v32 = @"NoDomain";
  }

  v70[9] = v32;
  v69[10] = @"underlyingErrorCode2";
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:code4];
  v34 = v33;
  v54 = v21;
  if (v21)
  {
    v35 = v21;
  }

  else
  {
    v35 = @"0";
  }

  v70[10] = v33;
  v70[11] = v35;
  v69[11] = @"underlyingErrorCodeString2";
  v69[12] = @"underlyingErrorDomain2";
  if (domain4)
  {
    v36 = domain4;
  }

  else
  {
    v36 = @"NoDomain";
  }

  v70[12] = v36;
  v69[13] = @"authType";
  v37 = [MEMORY[0x277CCABB0] numberWithInt:type];
  v70[13] = v37;
  v69[14] = @"deviceAuthType";
  v38 = [MEMORY[0x277CCABB0] numberWithInt:deviceType];
  v70[14] = v38;
  v69[15] = @"authServiceType";
  v39 = [MEMORY[0x277CCABB0] numberWithInt:serviceType];
  v70[15] = v39;
  v69[16] = @"success";
  v40 = [MEMORY[0x277CCABB0] numberWithInt:metricsCopy == 0];
  v41 = v40;
  v69[17] = @"sessionID";
  v42 = @"nil";
  if (dCopy)
  {
    v42 = dCopy;
  }

  v70[16] = v40;
  v70[17] = v42;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:18];

  TRMetricsLog(@"com.apple.touchremote.authentication", v43);
  if (_TRLogEnabled == 1)
  {
    v45 = TRLogHandle(v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v43;
      _os_log_impl(&dword_26F2A2000, v45, OS_LOG_TYPE_DEFAULT, "TouchRemote Auth Metric sent: %@\n", buf, 0xCu);
    }
  }
}

@end