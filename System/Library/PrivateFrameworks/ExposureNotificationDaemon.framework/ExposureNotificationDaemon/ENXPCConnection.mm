@interface ENXPCConnection
- (BOOL)_appActiveStatusWithError:(id *)error;
- (BOOL)_authorizationPreflightUnknownAndReturnError:(id *)error;
- (BOOL)_authorizedAndReturnError:(id *)error;
- (BOOL)_entitledForAccessLevel:(int)level error:(id *)error;
- (BOOL)_rateLimitAndReturnError:(id *)error;
- (BOOL)_xpcManagerActivateIfNecessaryWithRequest:(id)request error:(id *)error;
- (id)_regionConfigForXPCRequest:(id)request error:(id *)error;
- (id)_regionServerConfigForXPCRequest:(id)request error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)_fetchClientPublicKeyWithVerificationID:(id)d keyVersion:(id)version completion:(id)completion;
- (void)_processServerResponseConfigurationsForRegion:(id)region serverResponses:(id)responses request:(id)request;
- (void)_sendOnboardingMetricForRegionConfiguration:(id)configuration;
- (void)_updateActiveEntityFromTCCResult:(BOOL)result;
- (void)_xpcConnectionRequest:(id)request;
- (void)_xpcDiagnosticControl:(id)control;
- (void)_xpcDiagnosticLog:(id)log;
- (void)_xpcDiagnosticShow:(id)show;
- (void)_xpcDownload:(id)download;
- (void)_xpcEntitlementCheck:(id)check;
- (void)_xpcExposureDetectionFileActivate:(id)activate;
- (void)_xpcExposureDetectionFileAdd:(id)add;
- (void)_xpcExposureDetectionFileAddNext:(id)next fileSession:(id)session publicKey:(id)key;
- (void)_xpcExposureDetectionFileFinish:(id)finish;
- (void)_xpcExposureDetectionFileGetExposureWindows:(id)windows;
- (void)_xpcExposureDetectionFileGetExposures:(id)exposures;
- (void)_xpcExposureDetectionHistoryGetFiles:(id)files;
- (void)_xpcExposureDetectionHistoryGetSessions:(id)sessions;
- (void)_xpcFetchTestVerificationMetadata:(id)metadata;
- (void)_xpcFinishTestVerificationSession:(id)session;
- (void)_xpcGetActiveRegion:(id)region;
- (void)_xpcGetAllRegionAgencyConfig:(id)config;
- (void)_xpcGetAllRegionConfig:(id)config;
- (void)_xpcGetAllRegionGeneralConfig:(id)config;
- (void)_xpcGetAllRegionServerConfig:(id)config;
- (void)_xpcGetCurrentAgencyConfig:(id)config;
- (void)_xpcGetDataVaultSize:(id)size;
- (void)_xpcGetDiagnosisKeys:(id)keys testMode:(BOOL)mode;
- (void)_xpcGetDiagnosisKeysCompletion:(id)completion didPrompt:(BOOL)prompt testMode:(BOOL)mode error:(id)error;
- (void)_xpcGetEntities:(id)entities;
- (void)_xpcGetInfo:(id)info;
- (void)_xpcGetLastExposureNotification:(id)notification;
- (void)_xpcGetPreAuthorizeDiagnosisKeysEnabled:(id)enabled;
- (void)_xpcGetRegionAgencyConfig:(id)config;
- (void)_xpcGetRegionConfig:(id)config;
- (void)_xpcGetRegionHistory:(id)history;
- (void)_xpcGetRegionHistoryEnabled:(id)enabled;
- (void)_xpcGetRegionMonitorEnabled:(id)enabled;
- (void)_xpcGetRegionServerConfig:(id)config;
- (void)_xpcGetRegionSystemConfig:(id)config;
- (void)_xpcGetRemotePresentationRequestIfNeeded:(id)needed;
- (void)_xpcGetStatusForBundleIdentifier:(id)identifier;
- (void)_xpcGetSubdivisionList:(id)list;
- (void)_xpcGetTravelStatusEnabled:(id)enabled;
- (void)_xpcGetUserTraveled:(id)traveled;
- (void)_xpcGetUserTraveledPromptWithCompletion:(id)completion;
- (void)_xpcGetUserTraveledReplyAllowed:(BOOL)allowed request:(id)request;
- (void)_xpcLegalConsentPageCount:(id)count;
- (void)_xpcManagerActivate:(id)activate;
- (void)_xpcMessageAddCommonKeys:(id)keys allowed:(BOOL)allowed;
- (void)_xpcNotificationTrigger:(id)trigger;
- (void)_xpcOnboardingDidStart:(id)start;
- (void)_xpcPreAuthorizeDiagnosisKeys:(id)keys;
- (void)_xpcPreAuthorizeDiagnosisKeysComplete:(id)complete userDecision:(BOOL)decision;
- (void)_xpcRemotePresentationReceivedDecision:(id)decision;
- (void)_xpcRequestPreAuthorizedDiagnosisKeys:(id)keys;
- (void)_xpcResetData:(id)data;
- (void)_xpcSendMessage:(id)message;
- (void)_xpcSendReplyError:(id)error reply:(id)reply;
- (void)_xpcSendReplyError:(id)error request:(id)request;
- (void)_xpcSetActiveApp:(id)app;
- (void)_xpcSetActiveEntity:(id)entity;
- (void)_xpcSetActiveRegion:(id)region;
- (void)_xpcSetAutomaticRegionSwitch:(id)switch;
- (void)_xpcSetAvailabilityAlertEnabled:(id)enabled;
- (void)_xpcSetDeveloperRegionServerConfig:(id)config;
- (void)_xpcSetEnabled:(id)enabled;
- (void)_xpcSetMonthlySummaryAlertEnabled:(id)enabled;
- (void)_xpcSetPaused:(id)paused;
- (void)_xpcSetPreAuthorizeDiagnosisKeysEnabled:(id)enabled;
- (void)_xpcSetRegionConsent:(id)consent;
- (void)_xpcSetRegionHistoryEnabled:(id)enabled;
- (void)_xpcSetTravelStatusEnabled:(id)enabled;
- (void)_xpcShowBuddy:(id)buddy;
- (void)_xpcStartSelfReportWebSession:(id)session;
- (void)_xpcStartTestVerificationSession:(id)session;
- (void)_xpcTCCCheck:(id)check;
- (void)_xpcVerifyTextMessage:(id)message;
- (void)enqueuePreAuthorizedLockScreenActionForRequest:(id)request outError:(id *)error;
- (void)invalidate;
- (void)updateDiagnosisKeysPreAuthorizationForRequest:(id)request withDecision:(BOOL)decision errorOut:(id *)out;
- (void)xpcConnectionEvent:(id)event;
- (void)xpcPreAuthorizedDiagnosisKeysAvailable;
- (void)xpcReportActivityFlags:(unsigned int)flags;
- (void)xpcStatusChanged;
@end

@implementation ENXPCConnection

- (void)invalidate
{
  v3 = self->_userAlert;
  v6 = v3;
  if (v3)
  {
    if (_MergedGlobals < 31)
    {
      if (_MergedGlobals != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(ENXPCConnection *)v3 invalidate];
      }
    }

    [(ENUserAlert *)v6 invalidate];
    userAlert = self->_userAlert;
    self->_userAlert = 0;

    userAlert = [(ENDaemon *)self->_daemon userAlert];

    if (v6 == userAlert)
    {
      [(ENDaemon *)self->_daemon setUserAlert:0];
    }
  }

  v9 = self->_detectionSession;
  if (v9)
  {
    v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v10 isSensitiveLoggingAllowed];

    if ((isSensitiveLoggingAllowed & 1) != 0 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [(ENXPCConnection *)v9 invalidate];
    }

    [(ENExposureDetectionDaemonSession *)v9 invalidate];
    detectionSession = self->_detectionSession;
    self->_detectionSession = 0;
  }

  v13 = self->_manager;
  if (v13)
  {
    if (_MergedGlobals < 31 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [(ENXPCConnection *)v13 invalidate];
    }

    [(ENManager *)v13 invalidate];
    manager = self->_manager;
    self->_manager = 0;
  }

  onboardingRegionTrigger = [(ENDaemon *)self->_daemon onboardingRegionTrigger];
  if (onboardingRegionTrigger)
  {
    signingIdentity = [(ENXPCClient *)self->_client signingIdentity];
    v17 = [signingIdentity isEqualToString:@"com.apple.Preferences"];

    if (v17)
    {
      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];

      v20 = [configurationStore configurationForRegion:onboardingRegionTrigger];
      if (v20)
      {
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          [(ENXPCConnection *)onboardingRegionTrigger invalidate];
        }

        [(ENXPCConnection *)self _sendOnboardingMetricForRegionConfiguration:v20];
      }

      [(ENDaemon *)self->_daemon setOnboardingTrigger:0];
      [(ENDaemon *)self->_daemon setOnboardingRegionTrigger:0];
      [(ENDaemon *)self->_daemon setOnboardingFirstTime:0];
      [(ENDaemon *)self->_daemon setOnboardingLegalConsentLastViewCount:[(ENDaemon *)self->_daemon _getLegalConsentPageCount]];
    }
  }

  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    xpc_connection_cancel(xpcCnx);
  }

  daemon = self->_daemon;

  [(ENDaemon *)daemon xpcConnectionInvalidated:self];
}

- (id)descriptionWithLevel:(int)level
{
  if (self->_xpcCnx)
  {
    v16 = 0;
    NSAppendPrintF(&v16, "%#{pid}", [(ENXPCClient *)self->_client pid]);
    v4 = v16;
  }

  else
  {
    v4 = 0;
  }

  manager = self->_manager;
  if (manager)
  {
    v15 = v4;
    v6 = manager;
    NSAppendPrintF_safe(&v15, ", %@", v6);
    v7 = v15;

    v4 = v7;
  }

  detectionSession = self->_detectionSession;
  if (detectionSession)
  {
    v14 = v4;
    v9 = detectionSession;
    NSAppendPrintF_safe(&v14, ", %@", v9);
    v10 = v14;

    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = &stru_285D62BB0;
  }

  v12 = v11;

  return v11;
}

- (BOOL)_appActiveStatusWithError:(id *)error
{
  signingIdentity = [(ENXPCClient *)self->_client signingIdentity];
  v6 = signingIdentity;
  if (!signingIdentity)
  {
    if (error)
    {
      ENErrorF(5, "No app signing identifier");
      goto LABEL_19;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_12;
  }

  if (signingIdentity == @"com.apple.enutil")
  {
    v7 = 1;
  }

  else
  {
    v7 = [(__CFString *)signingIdentity isEqual:@"com.apple.enutil"];
  }

  v8 = [(__CFString *)v6 hasPrefix:@"com.apple."];
  activeEntity = [(ENDaemon *)self->_daemon activeEntity];
  entity = [activeEntity entity];
  bundleIdentifier = [entity bundleIdentifier];
  v12 = v6;
  v13 = bundleIdentifier;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_10;
  }

  if (!v13)
  {

    goto LABEL_14;
  }

  v15 = [(__CFString *)v12 isEqual:v13];

  if (v15)
  {
LABEL_10:
    activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
    v17 = [activeEntity2 activeStatus] != 3;

    if (((v17 | v7 | v8) & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_14:

  if (((v7 | v8) & 1) == 0)
  {
LABEL_15:
    if (error)
    {
      ENErrorF(14, "App restricted");
LABEL_19:
      *error = v18 = 0;
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_11:
  v18 = 1;
LABEL_12:

  return v18;
}

- (BOOL)_authorizedAndReturnError:(id *)error
{
  if (MEMORY[0x282233AA0])
  {
    xpc_connection_get_audit_token();
    v4 = TCCAccessCheckAuditToken();
    v5 = v4 != 0;
    if (!v4)
    {
      [ENXPCConnection _authorizedAndReturnError:error];
    }
  }

  else if (error)
  {
    ENErrorF(5, "Authorization not supported");
    *error = v5 = 0;
  }

  else
  {
    return 0;
  }

  return v5;
}

- (BOOL)_authorizationPreflightUnknownAndReturnError:(id *)error
{
  if (MEMORY[0x282233AA0])
  {
    xpc_connection_get_audit_token();
    return TCCAccessPreflightWithAuditToken() == 2;
  }

  else if (error)
  {
    v5 = ENErrorF(5, "Authorization not supported");
    v6 = v5;
    result = 0;
    *error = v5;
  }

  else
  {
    return 0;
  }

  return result;
}

- (BOOL)_entitledForAccessLevel:(int)level error:(id *)error
{
  accessLevel = [(ENXPCClient *)self->_client accessLevel];
  v7 = accessLevel;
  if (error && accessLevel < level)
  {
    v8 = "com.apple.developer.exposure-notification";
    if (level == 3)
    {
      v8 = "com.apple.developer.exposure-notification-test";
    }

    if (level > 3)
    {
      v8 = "com.apple.private.exposure-notification";
    }

    *error = ENErrorF(3, "Requires entitlement: %s", v8);
  }

  return v7 >= level;
}

- (BOOL)_rateLimitAndReturnError:(id *)error
{
  Int64 = CFPrefs_GetInt64();
  Current = CFAbsoluteTimeGetCurrent();
  CFPrefs_GetDouble();
  if (vabdd_f64(Current, v7) >= 86400.0)
  {
    CFPrefs_SetDouble();
    Int64 = 0;
  }

  appAPIVersion = [(ENXPCClient *)self->_client appAPIVersion];
  daemon = self->_daemon;
  if (appAPIVersion < 2)
  {
    prefRateLimitMaxAPICount = [(ENDaemon *)daemon prefRateLimitMaxAPICount];
  }

  else
  {
    prefRateLimitMaxAPICount = [(ENDaemon *)daemon prefRateLimitMaxAPICountV2];
  }

  v11 = prefRateLimitMaxAPICount;
  if (Int64 >= prefRateLimitMaxAPICount)
  {
    [(ENXPCConnection *)error _rateLimitAndReturnError:prefRateLimitMaxAPICount];
  }

  else
  {
    CFPrefs_SetInt64();
  }

  return Int64 < v11;
}

- (id)_regionConfigForXPCRequest:(id)request error:(id *)error
{
  requestCopy = request;
  configurationManager = [(ENDaemon *)self->_daemon configurationManager];
  if (configurationManager)
  {
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    region = [entity region];

    objc_opt_class();
    v11 = ENXPCDecodeSecureObjectIfPresent();
    if (v11)
    {
      configurationStore = [configurationManager configurationStore];
      v13 = [configurationStore configurationForRegion:v11];

      if (!v13)
      {
        if (error)
        {
          v14 = "Region not found";
LABEL_19:
          ENErrorF(16, v14);
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (!region)
      {
        if (error)
        {
          ENErrorF(5, "No Active Region Available");
LABEL_20:
          *error = v13 = 0;
          goto LABEL_8;
        }

        goto LABEL_21;
      }

      configurationStore2 = [configurationManager configurationStore];
      v13 = [configurationStore2 configurationForRegion:region];

      if (!v13)
      {
        if (error)
        {
          v14 = "No active region configuration found";
          goto LABEL_19;
        }

LABEL_21:
        v13 = 0;
      }
    }

LABEL_8:

    goto LABEL_9;
  }

  if (error)
  {
    ENErrorF(16, "No configuration manager");
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_9:

  return v13;
}

- (id)_regionServerConfigForXPCRequest:(id)request error:(id *)error
{
  requestCopy = request;
  configurationManager = [(ENDaemon *)self->_daemon configurationManager];
  if (configurationManager)
  {
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    region = [entity region];

    objc_opt_class();
    v11 = ENXPCDecodeSecureObjectIfPresent();
    if (v11)
    {
      configurationStore = [configurationManager configurationStore];
      v13 = [configurationStore serverConfigurationForRegion:v11];

      if (!v13)
      {
        if (error)
        {
          v14 = "Server config not found";
LABEL_19:
          ENErrorF(16, v14);
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (!region)
      {
        if (error)
        {
          ENErrorF(5, "No Active Region Available");
LABEL_20:
          *error = v13 = 0;
          goto LABEL_8;
        }

        goto LABEL_21;
      }

      configurationStore2 = [configurationManager configurationStore];
      v13 = [configurationStore2 serverConfigurationForRegion:region];

      if (!v13)
      {
        if (error)
        {
          v14 = "No active server configuration found";
          goto LABEL_19;
        }

LABEL_21:
        v13 = 0;
      }
    }

LABEL_8:

    goto LABEL_9;
  }

  if (error)
  {
    ENErrorF(16, "No configuration manager");
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_9:

  return v13;
}

- (void)xpcConnectionEvent:(id)event
{
  eventCopy = event;
  if (MEMORY[0x24C214BB0]() == MEMORY[0x277D86468])
  {
    [(ENXPCConnection *)self _xpcConnectionRequest:eventCopy];
    goto LABEL_12;
  }

  v4 = eventCopy;
  if (eventCopy == MEMORY[0x277D863F8])
  {
    if (_MergedGlobals <= 20 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENXPCConnection xpcConnectionEvent:?];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    [(ENXPCConnection *)self invalidate];
    goto LABEL_12;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v4 = eventCopy, v5))
    {
      [ENXPCConnection xpcConnectionEvent:];
LABEL_12:
      v4 = eventCopy;
    }
  }
}

- (void)_xpcConnectionRequest:(id)request
{
  requestCopy = request;
  int64 = xpc_dictionary_get_int64(requestCopy, "mTyp");
  v5 = int64;
  if (int64 <= 100)
  {
    switch(int64)
    {
      case 10:
        [(ENXPCConnection *)self _xpcManagerActivate:requestCopy];
        goto LABEL_81;
      case 11:
        [(ENXPCConnection *)self _xpcSetEnabled:requestCopy];
        goto LABEL_81;
      case 12:
      case 19:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 45:
      case 46:
      case 47:
      case 59:
      case 60:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
        goto LABEL_45;
      case 13:
        [(ENXPCConnection *)self _xpcEntitlementCheck:requestCopy];
        goto LABEL_81;
      case 14:
        [(ENXPCConnection *)self _xpcSetPaused:requestCopy];
        goto LABEL_81;
      case 15:
        [(ENXPCConnection *)self _xpcGetUserTraveled:requestCopy];
        goto LABEL_81;
      case 16:
        [(ENXPCConnection *)self _xpcPreAuthorizeDiagnosisKeys:requestCopy];
        goto LABEL_81;
      case 17:
        [(ENXPCConnection *)self _xpcGetTravelStatusEnabled:requestCopy];
        goto LABEL_81;
      case 18:
        [(ENXPCConnection *)self _xpcSetTravelStatusEnabled:requestCopy];
        goto LABEL_81;
      case 20:
        selfCopy2 = self;
        v8 = requestCopy;
        v9 = 0;
        goto LABEL_63;
      case 21:
        [(ENXPCConnection *)self _xpcResetData:requestCopy];
        goto LABEL_81;
      case 22:
        selfCopy2 = self;
        v8 = requestCopy;
        v9 = 1;
LABEL_63:
        [(ENXPCConnection *)selfCopy2 _xpcGetDiagnosisKeys:v8 testMode:v9];
        break;
      case 23:
        [(ENXPCConnection *)self _xpcRequestPreAuthorizedDiagnosisKeys:requestCopy];
        break;
      case 40:
        [(ENXPCConnection *)self _xpcExposureDetectionFileActivate:requestCopy];
        break;
      case 41:
        [(ENXPCConnection *)self _xpcExposureDetectionFileAdd:requestCopy];
        break;
      case 42:
        [(ENXPCConnection *)self _xpcExposureDetectionFileFinish:requestCopy];
        break;
      case 43:
        [(ENXPCConnection *)self _xpcExposureDetectionFileGetExposures:requestCopy];
        break;
      case 44:
        [(ENXPCConnection *)self _xpcExposureDetectionFileGetExposureWindows:requestCopy];
        break;
      case 48:
        [(ENXPCConnection *)self _xpcExposureDetectionHistoryGetFiles:requestCopy];
        break;
      case 49:
        [(ENXPCConnection *)self _xpcExposureDetectionHistoryGetSessions:requestCopy];
        break;
      case 50:
        [(ENXPCConnection *)self _xpcGetActiveRegion:requestCopy];
        break;
      case 51:
        [(ENXPCConnection *)self _xpcGetRegionConfig:requestCopy];
        break;
      case 52:
        [(ENXPCConnection *)self _xpcGetAllRegionConfig:requestCopy];
        break;
      case 53:
        [(ENXPCConnection *)self _xpcSetRegionConsent:requestCopy];
        break;
      case 54:
        [(ENXPCConnection *)self _xpcSetDeveloperRegionServerConfig:requestCopy];
        break;
      case 55:
        [(ENXPCConnection *)self _xpcGetRegionHistory:requestCopy];
        break;
      case 56:
        [(ENXPCConnection *)self _xpcGetRegionHistoryEnabled:requestCopy];
        break;
      case 57:
        [(ENXPCConnection *)self _xpcSetRegionHistoryEnabled:requestCopy];
        break;
      case 58:
        [(ENXPCConnection *)self _xpcGetCurrentAgencyConfig:requestCopy];
        break;
      case 61:
        [(ENXPCConnection *)self _xpcGetRegionMonitorEnabled:requestCopy];
        break;
      case 62:
        [(ENXPCConnection *)self _xpcGetSubdivisionList:requestCopy];
        break;
      case 70:
        [(ENXPCConnection *)self _xpcTCCCheck:requestCopy];
        break;
      default:
        if (int64 != 100)
        {
          goto LABEL_45;
        }

        [(ENXPCConnection *)self _xpcDiagnosticControl:requestCopy];
        break;
    }

    goto LABEL_81;
  }

  if (int64 <= 199)
  {
    if (int64 <= 102)
    {
      if (int64 == 101)
      {
        [(ENXPCConnection *)self _xpcDiagnosticLog:requestCopy];
      }

      else
      {
        [(ENXPCConnection *)self _xpcDiagnosticShow:requestCopy];
      }

      goto LABEL_81;
    }

    switch(int64)
    {
      case 103:
        [(ENXPCConnection *)self _xpcNotificationTrigger:requestCopy];
        goto LABEL_81;
      case 150:
        [(ENXPCConnection *)self _xpcGetEntities:requestCopy];
        goto LABEL_81;
      case 151:
        [(ENXPCConnection *)self _xpcSetActiveEntity:requestCopy];
        goto LABEL_81;
    }

    goto LABEL_45;
  }

  if (int64 > 299)
  {
    if (int64 <= 301)
    {
      if (int64 == 300)
      {
        [(ENXPCConnection *)self _xpcStartTestVerificationSession:requestCopy];
      }

      else
      {
        [(ENXPCConnection *)self _xpcFetchTestVerificationMetadata:requestCopy];
      }

      goto LABEL_81;
    }

    if (int64 == 302)
    {
      [(ENXPCConnection *)self _xpcFinishTestVerificationSession:requestCopy];
      goto LABEL_81;
    }

    if (int64 == 303)
    {
      [(ENXPCConnection *)self _xpcStartSelfReportWebSession:requestCopy];
      goto LABEL_81;
    }

LABEL_45:
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      [ENXPCConnection _xpcConnectionRequest:v5];
    }

    if (xpc_dictionary_expects_reply())
    {
      v6 = ENErrorF(5, "Unsupported message type: %lld", v5);
      [(ENXPCConnection *)self _xpcSendReplyError:v6 request:requestCopy];
    }

    goto LABEL_81;
  }

  switch(int64)
  {
    case 200:
      [(ENXPCConnection *)self _xpcGetStatusForBundleIdentifier:requestCopy];
      break;
    case 201:
      [(ENXPCConnection *)self _xpcGetInfo:requestCopy];
      break;
    case 202:
      [(ENXPCConnection *)self _xpcSetActiveApp:requestCopy];
      break;
    case 204:
      [(ENXPCConnection *)self _xpcGetLastExposureNotification:requestCopy];
      break;
    case 205:
      [(ENXPCConnection *)self _xpcDownload:requestCopy];
      break;
    case 206:
      [(ENXPCConnection *)self _xpcSetActiveRegion:requestCopy];
      break;
    case 207:
      [(ENXPCConnection *)self _xpcSetAutomaticRegionSwitch:requestCopy];
      break;
    case 209:
      [(ENXPCConnection *)self _xpcOnboardingDidStart:requestCopy];
      break;
    case 210:
      [(ENXPCConnection *)self _xpcGetPreAuthorizeDiagnosisKeysEnabled:requestCopy];
      break;
    case 211:
      [(ENXPCConnection *)self _xpcSetPreAuthorizeDiagnosisKeysEnabled:requestCopy];
      break;
    case 212:
      [(ENXPCConnection *)self _xpcGetRemotePresentationRequestIfNeeded:requestCopy];
      break;
    case 213:
      [(ENXPCConnection *)self _xpcRemotePresentationReceivedDecision:requestCopy];
      break;
    case 214:
      [(ENXPCConnection *)self _xpcGetDataVaultSize:requestCopy];
      break;
    case 215:
      [(ENXPCConnection *)self _xpcSetAvailabilityAlertEnabled:requestCopy];
      break;
    case 216:
      [(ENXPCConnection *)self _xpcSetMonthlySummaryAlertEnabled:requestCopy];
      break;
    case 217:
      [(ENXPCConnection *)self _xpcShowBuddy:requestCopy];
      break;
    case 218:
      [(ENXPCConnection *)self _xpcVerifyTextMessage:requestCopy];
      break;
    case 219:
      [(ENXPCConnection *)self _xpcLegalConsentPageCount:requestCopy];
      break;
    default:
      goto LABEL_45;
  }

LABEL_81:
}

- (void)_xpcMessageAddCommonKeys:(id)keys allowed:(BOOL)allowed
{
  allowedCopy = allowed;
  keysCopy = keys;
  xdict = keysCopy;
  if (allowedCopy)
  {
    xpc_dictionary_set_BOOL(keysCopy, "enbd", [(ENDaemon *)self->_daemon prefEnabled]);
    xpc_dictionary_set_BOOL(xdict, "paus", [(ENDaemon *)self->_daemon prefPaused]);
    v7 = [(ENDaemon *)self->_daemon prefDifferentialPrivacyConsent]== 2;
  }

  else
  {
    xpc_dictionary_set_BOOL(keysCopy, "enbd", 0);
    xpc_dictionary_set_BOOL(xdict, "paus", 0);
    v7 = 0;
  }

  xpc_dictionary_set_BOOL(xdict, "dpEn", v7);
  appAPIVersion = [(ENXPCClient *)self->_client appAPIVersion];
  if (allowedCopy)
  {
    getOverallStatus = [(ENDaemon *)self->_daemon getOverallStatus];
  }

  else if (appAPIVersion <= 1)
  {
    getOverallStatus = 4;
  }

  else
  {
    getOverallStatus = 6;
  }

  xpc_dictionary_set_int64(xdict, "stat", getOverallStatus);
}

- (void)_xpcSendMessage:(id)message
{
  message = message;
  v4 = self->_xpcCnx;
  v7 = v4;
  if (v4)
  {
    xpc_connection_send_message(v4, message);
  }

  else
  {
    [(ENXPCConnection *)0 _xpcSendMessage:v5, v6];
  }
}

- (void)_xpcSendReplyError:(id)error request:(id)request
{
  errorCopy = error;
  requestCopy = request;
  v9 = self->_xpcCnx;
  if (v9)
  {
    reply = xpc_dictionary_create_reply(requestCopy);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendReplyError:errorCopy reply:reply];
    }

    else
    {
      [ENXPCConnection _xpcSendReplyError:request:];
    }
  }

  else
  {
    [(ENXPCConnection *)0 _xpcSendReplyError:v7 request:v8];
  }
}

- (void)_xpcSendReplyError:(id)error reply:(id)reply
{
  errorCopy = error;
  replyCopy = reply;
  v9 = self->_xpcCnx;
  if (v9)
  {
    CUXPCEncodeNSError();
    xpc_connection_send_message(v9, replyCopy);
    signingIdentity = [(ENXPCClient *)self->_client signingIdentity];
    if (signingIdentity != @"com.apple.enutil")
    {
      v11 = signingIdentity;
      if (!signingIdentity || (v12 = [(__CFString *)signingIdentity isEqual:@"com.apple.enutil"], v11, v11, (v12 & 1) == 0))
      {
        domain = [errorCopy domain];
        v14 = [domain isEqualToString:*MEMORY[0x277CC5BD0]];

        if (v14)
        {
          v15 = [errorCopy code] - 5;
          if (v15 <= 0xB && ((0xCE9u >> v15) & 1) != 0)
          {
            v16 = dword_24A28BE7C[v15];
            delegate = [(ENDaemon *)self->_daemon delegate];
            [delegate sendErrorMetricWithType:v16];
          }
        }
      }
    }
  }

  else
  {
    [(ENXPCConnection *)0 _xpcSendReplyError:v7 reply:v8];
  }
}

- (void)_xpcEntitlementCheck:(id)check
{
  checkCopy = check;
  v9 = 0;
  v5 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&v9];
  v6 = v9;
  if (_MergedGlobals > 30 || _MergedGlobals == -1 && !_LogCategory_Initialize())
  {
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    [(ENXPCConnection *)self _xpcSendReplyError:v6 request:checkCopy];
    goto LABEL_12;
  }

  [ENXPCConnection _xpcEntitlementCheck:v5];
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ([(ENDaemon *)self->_daemon getOverallStatus]== 4)
  {
    v7 = ENErrorF(14, "Restricted");

    [(ENXPCConnection *)self _xpcSendReplyError:v7 request:checkCopy];
    v6 = v7;
  }

  else
  {
    reply = xpc_dictionary_create_reply(checkCopy);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else
    {
      [ENXPCConnection _xpcEntitlementCheck:];
    }
  }

LABEL_12:
}

- (void)_xpcGetUserTraveled:(id)traveled
{
  traveledCopy = traveled;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__3;
  v40 = __Block_byref_object_dispose__3;
  v41 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__ENXPCConnection__xpcGetUserTraveled___block_invoke;
  v33[3] = &unk_278FD10D0;
  v35 = &v36;
  v33[4] = self;
  v5 = traveledCopy;
  v34 = v5;
  v6 = MEMORY[0x24C214430](v33);
  v7 = v37;
  obj = v37[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    v9 = v37;
    v31 = v37[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v31];
    objc_storeStrong(v9 + 5, v31);
    if (v10)
    {
      v11 = v37;
      v30 = v37[5];
      v12 = [(ENXPCConnection *)self _appActiveStatusWithError:&v30];
      objc_storeStrong(v11 + 5, v30);
      if (v12)
      {
        if ([(ENDaemon *)self->_daemon overallStatus]== 1)
        {
          regionMonitor = [(ENDaemon *)self->_daemon regionMonitor];
          getAuthorizationState = [regionMonitor getAuthorizationState];

          if (getAuthorizationState == 2)
          {
            v15 = v37;
            v29 = v37[5];
            v16 = [(ENXPCConnection *)self _regionConfigForXPCRequest:v5 error:&v29];
            objc_storeStrong(v15 + 5, v29);
            if (!v16)
            {
LABEL_15:

              goto LABEL_16;
            }

            configurationManager = [(ENDaemon *)self->_daemon configurationManager];
            configurationStore = [configurationManager configurationStore];

            if (!configurationStore)
            {
              v22 = ENErrorF(11, "Configuration store not available.");
              v23 = v37[5];
              v37[5] = v22;

              goto LABEL_14;
            }

            travelerModeEnabled = [v16 travelerModeEnabled];
            if (travelerModeEnabled == 1)
            {
              v20 = 0;
            }

            else
            {
              if (!travelerModeEnabled)
              {
                v24[0] = MEMORY[0x277D85DD0];
                v24[1] = 3221225472;
                v24[2] = __39__ENXPCConnection__xpcGetUserTraveled___block_invoke_2;
                v24[3] = &unk_278FD1A28;
                v24[4] = self;
                v28 = &v36;
                v25 = v5;
                v26 = v16;
                v27 = configurationStore;
                [(ENXPCConnection *)self _xpcGetUserTraveledPromptWithCompletion:v24];

LABEL_14:
                goto LABEL_15;
              }

              v20 = 1;
            }

            [(ENXPCConnection *)self _xpcGetUserTraveledReplyAllowed:v20 request:v5];
            goto LABEL_14;
          }

          v21 = ENErrorF(17, "Travel Status Not Available");
        }

        else
        {
          v21 = ENErrorF(9, "Exposure Notification is disabled. Travel Status Not Available");
        }

        v16 = v37[5];
        v37[5] = v21;
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  v6[2](v6);

  _Block_object_dispose(&v36, 8);
}

void *__39__ENXPCConnection__xpcGetUserTraveled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetUserTraveled:]_block_invoke", 90, "### GetUserTraveled failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __39__ENXPCConnection__xpcGetUserTraveled___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(*(a1 + 64) + 8) + 40);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 _xpcSendReplyError:v4 request:v6];
  }

  else
  {
    if (a2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [*(a1 + 48) setTravelerModeEnabled:v8];
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v11 = *(*(a1 + 64) + 8);
    v19 = *(v11 + 40);
    v12 = [v9 saveRegionConfiguration:v10 error:&v19];
    objc_storeStrong((v11 + 40), v19);
    v13 = *(a1 + 32);
    if (v12)
    {
      [v13 _xpcGetUserTraveledReplyAllowed:a2 request:*(a1 + 40)];
    }

    else
    {
      v14 = v13[6];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __39__ENXPCConnection__xpcGetUserTraveled___block_invoke_3;
      v16[3] = &unk_278FD1A00;
      v15 = *(a1 + 64);
      v16[4] = v13;
      v18 = v15;
      v17 = *(a1 + 40);
      dispatch_async(v14, v16);
    }
  }
}

- (void)_xpcGetUserTraveledPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke;
  v24[3] = &unk_278FD1A50;
  v26 = &v27;
  v5 = completionCopy;
  v25 = v5;
  v6 = MEMORY[0x24C214430](v24);
  if (self->_userAlert || ([(ENDaemon *)self->_daemon userAlert], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = ENErrorF(10, "Alert already active");
    v9 = v28[5];
    v28[5] = v8;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CEEE98]);
    v10 = [v9 applicationInfoForPID:{-[ENXPCClient pid](self->_client, "pid")}];
    Int64Ranged = CFDictionaryGetInt64Ranged();
    [v9 invalidate];
    if (Int64Ranged == 8)
    {
      signingIdentity = [(ENXPCClient *)self->_client signingIdentity];
      if (signingIdentity)
      {
        v13 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:signingIdentity placeholder:0];
        localizedName = [v13 localizedName];

        v15 = objc_alloc_init(MEMORY[0x277CC5D38]);
        objc_storeStrong(&self->_userAlert, v15);
        [v15 setDispatchQueue:self->_dispatchQueue];
        [v15 setTitleKey:@"SHARE_TRAVEL_TITLE_FORMAT"];
        if (localizedName)
        {
          v16 = localizedName;
        }

        else
        {
          v16 = @"?";
        }

        [v15 setTitleParameter:v16];
        [v15 setSubTitleKey:@"SHARE_TRAVEL_MESSAGE"];
        [v15 setDefaultButtonTitleKey:@"SHARE_BUTTON"];
        [v15 setAlternativeButtonTitleKey:@"DONT_SHARE_BUTTON"];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_2;
        v22[3] = &unk_278FD1A78;
        v22[4] = self;
        v22[5] = v15;
        v17 = v5;
        v23 = v17;
        [v15 setActionHandler:v22];
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetUserTraveledPromptWithCompletion:]", 30, "TravelStatus alert start");
        }

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_3;
        v20[3] = &unk_278FD1AA0;
        v20[4] = self;
        v20[5] = v15;
        v21 = v17;
        [v15 activateWithCompletionHandler:v20];
      }

      else
      {
        v19 = ENErrorF(5, "No signing identifier");
        localizedName = v28[5];
        v28[5] = v19;
      }
    }

    else
    {
      v18 = ENErrorF(10, "Only allowed in foreground");
      signingIdentity = v28[5];
      v28[5] = v18;
    }
  }

  v6[2](v6);
  _Block_object_dispose(&v27, 8);
}

uint64_t __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      v3 = CUPrintNSError();
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetUserTraveledPromptWithCompletion:]_block_invoke", 90, "### GetUserTraveledPrompt failed: %@", v3);
    }

    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

uint64_t __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_2(void *a1, unint64_t a2)
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_2_cold_1(a2);
  }

  v4 = a1[4];
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  v6 = a1[5];
  v7 = [*(a1[4] + 32) userAlert];

  if (v6 == v7)
  {
    [*(a1[4] + 32) setUserAlert:0];
  }

  v8 = *(a1[6] + 16);

  return v8();
}

void __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_3_cold_1(v10);
    }

    v6 = a1[4];
    v7 = *(v6 + 8);
    *(v6 + 8) = 0;

    v8 = a1[5];
    v9 = [*(a1[4] + 32) userAlert];

    if (v8 == v9)
    {
      [*(a1[4] + 32) setUserAlert:0];
    }

    (*(a1[6] + 16))();
  }

  else if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_3_cold_2(v3, v4, v5);
    }
  }
}

- (void)_xpcGetUserTraveledReplyAllowed:(BOOL)allowed request:(id)request
{
  allowedCopy = allowed;
  requestCopy = request;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __59__ENXPCConnection__xpcGetUserTraveledReplyAllowed_request___block_invoke;
  v25[3] = &unk_278FD10D0;
  v27 = &v28;
  v25[4] = self;
  v7 = requestCopy;
  v26 = v7;
  v8 = MEMORY[0x24C214430](v25);
  if (!allowedCopy)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetUserTraveledReplyAllowed:request:]", 30, "GetUserTraveled: not allowed");
    }

    v17 = 0;
    goto LABEL_18;
  }

  activeEntity = [(ENDaemon *)self->_daemon activeEntity];
  entity = [activeEntity entity];
  region = [entity region];

  regionMonitor = [(ENDaemon *)self->_daemon regionMonitor];
  v13 = (v29 + 5);
  obj = v29[5];
  v14 = [regionMonitor getAllRegionsWithError:&obj];
  objc_storeStrong(v13, obj);

  if (v29[5])
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetUserTraveledReplyAllowed:request:]", 90, "Unable to determine user traveled");
    }

    goto LABEL_28;
  }

  if (!v14 || !region)
  {
    v22 = ENErrorF(17, "Unable to determine user traveled");
    v23 = v29[5];
    v29[5] = v22;

LABEL_28:
    goto LABEL_20;
  }

  v15 = [MEMORY[0x277CBEB50] setWithSet:v14];
  [v15 addObject:region];
  v16 = [v15 count];
  v17 = v16 > 1;
  v18 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v18 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    v20 = "no";
    if (v16 > 1)
    {
      v20 = "yes";
    }

    LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetUserTraveledReplyAllowed:request:]", 30, "GetUserTraveled: %s", v20);
  }

LABEL_18:
  reply = xpc_dictionary_create_reply(v7);
  region = reply;
  if (reply)
  {
    xpc_dictionary_set_BOOL(reply, "userTraveled", v17);
    [(ENXPCConnection *)self _xpcSendMessage:region];
  }

  else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetUserTraveledReplyAllowed:request:]", 90, "### GetUserTraveled create reply failed");
  }

LABEL_20:

  v8[2](v8);
  _Block_object_dispose(&v28, 8);
}

void *__59__ENXPCConnection__xpcGetUserTraveledReplyAllowed_request___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetUserTraveledReplyAllowed:request:]_block_invoke", 90, "### GetUserTraveled failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetTravelStatusEnabled:(id)enabled
{
  enabledCopy = enabled;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __46__ENXPCConnection__xpcGetTravelStatusEnabled___block_invoke;
  v24[3] = &unk_278FD10D0;
  v26 = &v27;
  v24[4] = self;
  v5 = enabledCopy;
  v25 = v5;
  v6 = MEMORY[0x24C214430](v24);
  v7 = (v28 + 5);
  obj = v28[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v28 + 5);
    v22 = v28[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v22];
    objc_storeStrong(v9, v22);
    if (v10)
    {
      v11 = (v28 + 5);
      v21 = v28[5];
      v12 = [(ENXPCConnection *)self _regionConfigForXPCRequest:v5 error:&v21];
      objc_storeStrong(v11, v21);
      if (v12)
      {
        travelerModeEnabled = [v12 travelerModeEnabled];
        v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed = [v14 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          if (travelerModeEnabled > 2)
          {
            v16 = "?";
          }

          else
          {
            v16 = off_278FD2238[travelerModeEnabled];
          }

          region = [v12 region];
          regionCode = [region regionCode];
          LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetTravelStatusEnabled:]", 30, "GetTravelStatusEnabled: %s, region '%@'", v16, regionCode);
        }

        reply = xpc_dictionary_create_reply(v5);
        v20 = reply;
        if (reply)
        {
          xpc_dictionary_set_BOOL(reply, "enbd", travelerModeEnabled == 2);
          [(ENXPCConnection *)self _xpcSendMessage:v20];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetTravelStatusEnabled:]", 90, "### GetTravelStatusEnabled create reply failed");
        }
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v27, 8);
}

void *__46__ENXPCConnection__xpcGetTravelStatusEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetTravelStatusEnabled:]_block_invoke", 90, "### GetTravelStatusEnabled failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcSetTravelStatusEnabled:(id)enabled
{
  enabledCopy = enabled;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__3;
  v37 = __Block_byref_object_dispose__3;
  v38 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __46__ENXPCConnection__xpcSetTravelStatusEnabled___block_invoke;
  v30[3] = &unk_278FD10D0;
  v32 = &v33;
  v30[4] = self;
  v5 = enabledCopy;
  v31 = v5;
  v6 = MEMORY[0x24C214430](v30);
  v7 = (v34 + 5);
  obj = v34[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v34 + 5);
    v28 = v34[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v28];
    objc_storeStrong(v9, v28);
    if (v10)
    {
      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];

      if (configurationStore)
      {
        v13 = (v34 + 5);
        v27 = v34[5];
        v14 = [(ENXPCConnection *)self _regionConfigForXPCRequest:v5 error:&v27];
        objc_storeStrong(v13, v27);
        if (v14)
        {
          v15 = xpc_dictionary_get_BOOL(v5, "enbd");
          v16 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed = [v16 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            if (v15)
            {
              v18 = "yes";
            }

            else
            {
              v18 = "no";
            }

            region = [v14 region];
            regionCode = [region regionCode];
            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetTravelStatusEnabled:]", 30, "SetTravelStatusEnabled: %s, region '%@'", v18, regionCode);
          }

          if (v15)
          {
            v21 = 2;
          }

          else
          {
            v21 = 1;
          }

          [v14 setTravelerModeEnabled:v21];
          v22 = (v34 + 5);
          v26 = v34[5];
          v23 = [configurationStore saveRegionConfiguration:v14 error:&v26];
          objc_storeStrong(v22, v26);
          if (v23)
          {
            [(ENDaemon *)self->_daemon prefsChanged];
            reply = xpc_dictionary_create_reply(v5);
            if (reply)
            {
              [(ENXPCConnection *)self _xpcSendMessage:reply];
            }

            else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetTravelStatusEnabled:]", 90, "### SetTravelStatusEnabled create reply failed");
            }
          }
        }
      }

      else
      {
        v25 = ENErrorF(1, "Configuration Store is not available");
        v14 = v34[5];
        v34[5] = v25;
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v33, 8);
}

void *__46__ENXPCConnection__xpcSetTravelStatusEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetTravelStatusEnabled:]_block_invoke", 90, "### SetTravelStatusEnabled failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcManagerActivate:(id)activate
{
  activateCopy = activate;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3;
  v46 = __Block_byref_object_dispose__3;
  v47 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __39__ENXPCConnection__xpcManagerActivate___block_invoke;
  v39[3] = &unk_278FD10D0;
  v41 = &v42;
  v39[4] = self;
  v5 = activateCopy;
  v40 = v5;
  v35 = MEMORY[0x24C214430](v39);
  v6 = (v43 + 5);
  obj = v43[5];
  v7 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v36 = v5;
    if (self->_manager)
    {
      v32 = ENErrorF(10, "Manager already active");
      reply = v43[5];
      v43[5] = v32;
LABEL_28:

      v5 = v36;
      goto LABEL_29;
    }

    v8 = (v43 + 5);
    v37 = v43[5];
    v9 = [(ENXPCConnection *)self _xpcManagerActivateIfNecessaryWithRequest:v5 error:&v37];
    objc_storeStrong(v8, v37);
    if (v9)
    {
      [(ENDaemon *)self->_daemon setUsageManagerActivate:[(ENDaemon *)self->_daemon usageManagerActivate]+ 1];
      [(ENDaemon *)self->_daemon _scheduleUpdate];
      reply = xpc_dictionary_create_reply(v5);
      if (!reply)
      {
        if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcManagerActivate:]", 90, "### ManagerActivate create reply failed");
        }

        goto LABEL_28;
      }

      [(ENXPCConnection *)self _xpcMessageAddCommonKeys:reply allowed:[(ENXPCConnection *)self _appActiveStatusWithError:0]];
      [(ENXPCConnection *)self _xpcSendMessage:reply];
      CFStringGetTypeID();
      v11 = CFPrefs_CopyTypedValue();
      if (!v11)
      {
        goto LABEL_26;
      }

      activeEntity = [(ENDaemon *)self->_daemon activeEntity];
      entity = [activeEntity entity];
      bundleIdentifier = [entity bundleIdentifier];
      client2 = v11;
      v14 = bundleIdentifier;
      v15 = v14;
      if (client2 == v14)
      {
      }

      else
      {
        if (!v14)
        {
          v17 = 0;
LABEL_18:

LABEL_19:
          client = [(ENXPCConnection *)self client];
          signingIdentity = [client signingIdentity];
          v27 = signingIdentity;
          if (signingIdentity != @"com.apple.enutil")
          {
            if (!signingIdentity)
            {
              v28 = 0;
LABEL_24:

              if ((v17 | v28))
              {
                [(ENXPCConnection *)self enqueuePreAuthorizedLockScreenActionForRequest:v36 outError:0];
              }

LABEL_26:

              daemon = self->_daemon;
              signingIdentity2 = [(ENXPCClient *)self->_client signingIdentity];
              v31 = [(ENDaemon *)daemon appDequeueActivityFlagsWithBundleID:signingIdentity2];

              if (v31)
              {
                [(ENXPCConnection *)self xpcReportActivityFlags:v31];
              }

              goto LABEL_28;
            }

            v28 = [(__CFString *)signingIdentity isEqual:@"com.apple.enutil"];

            if (!v28)
            {
              goto LABEL_24;
            }
          }

          v28 = IsAppleInternalBuild() != 0;
          goto LABEL_24;
        }

        v16 = [client2 isEqual:v14];

        if (!v16)
        {
          v17 = 0;
          goto LABEL_19;
        }
      }

      client2 = [(ENXPCConnection *)self client];
      signingIdentity3 = [client2 signingIdentity];
      activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
      entity2 = [activeEntity2 entity];
      bundleIdentifier2 = [entity2 bundleIdentifier];
      v22 = signingIdentity3;
      v23 = bundleIdentifier2;
      v24 = v23;
      if (v22 == v23)
      {
        v17 = 1;
      }

      else if ((v22 != 0) == (v23 == 0))
      {
        v17 = 0;
      }

      else
      {
        v17 = [v22 isEqual:v23];
      }

      goto LABEL_18;
    }
  }

LABEL_29:
  v35[2](v35);

  _Block_object_dispose(&v42, 8);
}

void *__39__ENXPCConnection__xpcManagerActivate___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcManagerActivate:]_block_invoke", 90, "### ManagerActivate failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (BOOL)_xpcManagerActivateIfNecessaryWithRequest:(id)request error:(id *)error
{
  p_manager = &self->_manager;
  if (!self->_manager)
  {
    requestCopy = request;
    int64 = xpc_dictionary_get_int64(requestCopy, "apiV");
    v14 = 0;
    v13 = 1;
    CUXPCDecodeNSString();
    CUXPCDecodeBool();

    client = self->_client;
    p_client = &self->_client;
    [(ENXPCClient *)client accessLevel];
    [(ENXPCClient *)*p_client activateWithAppAPIVersion:int64 regionISO:0];
    v10 = objc_alloc_init(MEMORY[0x277CC5C88]);
    v11 = *p_manager;
    *p_manager = v10;

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [(ENXPCConnection *)p_manager _xpcManagerActivateIfNecessaryWithRequest:&v13 error:?];
    }
  }

  return 1;
}

- (void)xpcReportActivityFlags:(unsigned int)flags
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(xdict, "mTyp", 19);
  xpc_dictionary_set_uint64(xdict, "actF", flags);
  [(ENXPCConnection *)self _xpcSendMessage:xdict];
}

- (void)_xpcSetEnabled:(id)enabled
{
  enabledCopy = enabled;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __34__ENXPCConnection__xpcSetEnabled___block_invoke;
  v23[3] = &unk_278FD10D0;
  v25 = &v26;
  v23[4] = self;
  v5 = enabledCopy;
  v24 = v5;
  v6 = MEMORY[0x24C214430](v23);
  v7 = (v27 + 5);
  obj = v27[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v27 + 5);
    v21 = v27[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v21];
    objc_storeStrong(v9, v21);
    if (v10)
    {
      v11 = (v27 + 5);
      v20 = v27[5];
      v12 = [(ENXPCConnection *)self _appActiveStatusWithError:&v20];
      objc_storeStrong(v11, v20);
      if (v12)
      {
        if ([(ENXPCClient *)self->_client accessLevel]== 3)
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetEnabled:]", 30, "ExposureNotificationSetEnabled: Force Server Off");
          }

          CFPrefs_SetValue();
        }

        else if ([(ENXPCClient *)self->_client accessLevel]== 2)
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetEnabled:]", 30, "ExposureNotificationSetEnabled: Force Server Default");
          }

          CFPrefs_RemoveValue();
        }

        [(ENDaemon *)self->_daemon prefsChanged];
        v13 = xpc_dictionary_get_BOOL(v5, "enbd");
        if ([(ENDaemon *)self->_daemon overallStatus]== 4)
        {
          v19 = ENErrorF(14, "Restricted by system");
          reply = v27[5];
          v27[5] = v19;
        }

        else
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v14 = "Disable";
            if (v13)
            {
              v14 = "Enable";
            }

            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetEnabled:]", 30, "ExposureNotificationSetEnabled: %s", v14);
          }

          CFPrefs_SetValue();
          daemon = self->_daemon;
          if (v13)
          {
            [(ENDaemon *)daemon setUsageUserEnabled:[(ENDaemon *)self->_daemon usageUserEnabled]+ 1];
          }

          else
          {
            [(ENDaemon *)daemon setUsageUserDisabled:[(ENDaemon *)self->_daemon usageUserDisabled]+ 1];
          }

          [(ENDaemon *)self->_daemon prefsChanged];
          client = [(ENXPCConnection *)self client];
          appRegion = [client appRegion];

          if (appRegion)
          {
            [(ENDaemon *)self->_daemon startServerConfigurationFetchForRegion:appRegion];
          }

          reply = xpc_dictionary_create_reply(v5);
          if (reply)
          {
            [(ENXPCConnection *)self _xpcMessageAddCommonKeys:reply allowed:1];
            [(ENXPCConnection *)self _xpcSendMessage:reply];
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetEnabled:]", 90, "### ExposureNotificationSetEnabled create reply failed");
          }
        }
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v26, 8);
}

void *__34__ENXPCConnection__xpcSetEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetEnabled:]_block_invoke", 90, "### ExposureNotificationSetEnabled failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcSetPaused:(id)paused
{
  pausedCopy = paused;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __33__ENXPCConnection__xpcSetPaused___block_invoke;
  v17[3] = &unk_278FD10D0;
  v19 = &v20;
  v17[4] = self;
  v5 = pausedCopy;
  v18 = v5;
  v6 = MEMORY[0x24C214430](v17);
  v7 = (v21 + 5);
  obj = v21[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v21 + 5);
    v15 = v21[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v15];
    objc_storeStrong(v9, v15);
    if (v10)
    {
      v11 = xpc_dictionary_get_BOOL(v5, "paus");
      v12 = xpc_dictionary_get_double(v5, "dura");
      CFPrefs_SetValue();
      if (v11)
      {
        if (v12 <= 0.0)
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetPaused:]", 30, "Pause, indefinite");
          }

          CFPrefs_RemoveValue();
        }

        else
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v13 = CUPrintDurationDouble();
            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetPaused:]", 30, "Pause, Expire %@", v13);
          }

          CFAbsoluteTimeGetCurrent();
          CFPrefs_SetDouble();
        }

        [(ENDaemon *)self->_daemon setUsageUserPaused:[(ENDaemon *)self->_daemon usageUserPaused]+ 1];
      }

      else
      {
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetPaused:]", 30, "Unpause");
        }

        CFPrefs_RemoveValue();
        [(ENDaemon *)self->_daemon setUsageUserUnpaused:[(ENDaemon *)self->_daemon usageUserUnpaused]+ 1];
      }

      [(ENDaemon *)self->_daemon pauseUpdate];
      [(ENDaemon *)self->_daemon prefsChanged];
      reply = xpc_dictionary_create_reply(v5);
      if (reply)
      {
        [(ENXPCConnection *)self _xpcMessageAddCommonKeys:reply allowed:1];
        [(ENXPCConnection *)self _xpcSendMessage:reply];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetPaused:]", 90, "### SetPaused create reply failed");
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v20, 8);
}

void *__33__ENXPCConnection__xpcSetPaused___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetPaused:]_block_invoke", 90, "### SetPaused failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)xpcStatusChanged
{
  v3 = [(ENXPCConnection *)self _appActiveStatusWithError:0];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "mTyp", 12);
  [(ENXPCConnection *)self _xpcMessageAddCommonKeys:v4 allowed:v3];
  [(ENXPCConnection *)self _xpcSendMessage:v4];
}

- (void)_xpcGetPreAuthorizeDiagnosisKeysEnabled:(id)enabled
{
  enabledCopy = enabled;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __59__ENXPCConnection__xpcGetPreAuthorizeDiagnosisKeysEnabled___block_invoke;
  v27[3] = &unk_278FD10D0;
  v29 = &v30;
  v27[4] = self;
  v5 = enabledCopy;
  v28 = v5;
  v6 = MEMORY[0x24C214430](v27);
  v7 = (v31 + 5);
  obj = v31[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v31 + 5);
    v25 = v31[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v25];
    objc_storeStrong(v9, v25);
    if (v10)
    {
      v11 = (v31 + 5);
      v24 = v31[5];
      v12 = [(ENXPCConnection *)self _regionConfigForXPCRequest:v5 error:&v24];
      objc_storeStrong(v11, v24);
      if (v12)
      {
        diagnosisKeysPreAuthorization = [v12 diagnosisKeysPreAuthorization];
        userAuthorization = [diagnosisKeysPreAuthorization userAuthorization];

        v15 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed = [v15 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          client = [(ENXPCConnection *)self client];
          v18 = client;
          v19 = "no";
          if (userAuthorization == 1)
          {
            v19 = "yes";
          }

          LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetPreAuthorizeDiagnosisKeysEnabled:]", 30, "GetPreAuthorizeDiagnosisKeysEnabled: %s, client '%@'", v19, client);
        }

        if (userAuthorization == 1 || (v20 = (v31 + 5), v23 = v31[5], [(ENXPCConnection *)self updateDiagnosisKeysPreAuthorizationForRequest:v5 withDecision:0 errorOut:&v23], objc_storeStrong(v20, v23), !v31[5]))
        {
          reply = xpc_dictionary_create_reply(v5);
          v22 = reply;
          if (reply)
          {
            xpc_dictionary_set_BOOL(reply, "enbd", userAuthorization == 1);
            [(ENXPCConnection *)self _xpcSendMessage:v22];
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetPreAuthorizeDiagnosisKeysEnabled:]", 90, "### GetPreAuthorizeDiagnosisKeysEnabled create reply failed");
          }
        }
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v30, 8);
}

void *__59__ENXPCConnection__xpcGetPreAuthorizeDiagnosisKeysEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetPreAuthorizeDiagnosisKeysEnabled:]_block_invoke", 90, "### GetPreAuthorizeDiagnosisKeysEnabled failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcSetPreAuthorizeDiagnosisKeysEnabled:(id)enabled
{
  enabledCopy = enabled;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__3;
  v33 = __Block_byref_object_dispose__3;
  v34 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __59__ENXPCConnection__xpcSetPreAuthorizeDiagnosisKeysEnabled___block_invoke;
  v26[3] = &unk_278FD10D0;
  v28 = &v29;
  v26[4] = self;
  v5 = enabledCopy;
  v27 = v5;
  v6 = MEMORY[0x24C214430](v26);
  v7 = (v30 + 5);
  obj = v30[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v30 + 5);
    v24 = v30[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v24];
    objc_storeStrong(v9, v24);
    if (v10)
    {
      v11 = (v30 + 5);
      v23 = v30[5];
      v12 = [(ENXPCConnection *)self _regionServerConfigForXPCRequest:v5 error:&v23];
      objc_storeStrong(v11, v23);
      if (v12)
      {
        if (-[ENDaemon _isNKDActive](self->_daemon, "_isNKDActive") && ([v12 preArmTestVerificationEnabled] & 1) == 0)
        {
          v21 = ENErrorF(5, "Cannot set pre-Authorization, not available");
          reply = v30[5];
          v30[5] = v21;
        }

        else
        {
          v13 = xpc_dictionary_get_BOOL(v5, "enbd");
          v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed = [v14 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            client = [(ENXPCConnection *)self client];
            v17 = client;
            v18 = "no";
            if (v13)
            {
              v18 = "yes";
            }

            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetPreAuthorizeDiagnosisKeysEnabled:]", 30, "SetPreAuthorizeDiagnosisKeysEnabled: %s for client: %@", v18, client);
          }

          v19 = (v30 + 5);
          v22 = v30[5];
          [(ENXPCConnection *)self updateDiagnosisKeysPreAuthorizationForRequest:v5 withDecision:v13 errorOut:&v22];
          objc_storeStrong(v19, v22);
          if (v30[5])
          {
            goto LABEL_17;
          }

          reply = xpc_dictionary_create_reply(v5);
          if (reply)
          {
            [(ENXPCConnection *)self _xpcSendMessage:reply];
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetPreAuthorizeDiagnosisKeysEnabled:]", 90, "### SetPreAuthorizeDiagnosisKeysEnabled create reply failed");
          }
        }
      }

LABEL_17:
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v29, 8);
}

void *__59__ENXPCConnection__xpcSetPreAuthorizeDiagnosisKeysEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetPreAuthorizeDiagnosisKeysEnabled:]_block_invoke", 90, "### SetPreAuthorizeDiagnosisKeysEnabled failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcPreAuthorizeDiagnosisKeys:(id)keys
{
  keysCopy = keys;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __49__ENXPCConnection__xpcPreAuthorizeDiagnosisKeys___block_invoke;
  v22[3] = &unk_278FD10D0;
  v24 = &v25;
  v22[4] = self;
  v5 = keysCopy;
  v23 = v5;
  v6 = MEMORY[0x24C214430](v22);
  v7 = (v26 + 5);
  obj = v26[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v26 + 5);
    v20 = v26[5];
    v10 = [(ENXPCConnection *)self _regionServerConfigForXPCRequest:v5 error:&v20];
    objc_storeStrong(v9, v20);
    if (!v10)
    {
LABEL_15:

      goto LABEL_16;
    }

    if (-[ENDaemon _isNKDActive](self->_daemon, "_isNKDActive") && ([v10 preArmTestVerificationEnabled] & 1) == 0)
    {
      v18 = ENErrorF(5, "Pre-Authorization is not available");
    }

    else
    {
      uuid = xpc_dictionary_get_uuid(v5, "rpsid");
      if (uuid)
      {
        v12 = [objc_alloc(MEMORY[0x277CCAD70]) initWithUUIDBytes:uuid];
        remoteUISessions = [(ENDaemon *)self->_daemon remoteUISessions];
        v14 = [remoteUISessions objectForKeyedSubscript:v12];

        if (v14)
        {
          [v14 setOriginalRequest:v5];
          [v14 setConnection:self];
          v15 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed = [v15 isSensitiveLoggingAllowed];

          if (!isSensitiveLoggingAllowed || _MergedGlobals > 30 || _MergedGlobals == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_13;
          }

          client = [(ENXPCConnection *)self client];
          LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcPreAuthorizeDiagnosisKeys:]", 30, "PreAuthorizeDiagnosisKeys request cached for %@", client);
        }

        else
        {
          v19 = ENErrorF(11, "Failed to find matching session");
          client = v26[5];
          v26[5] = v19;
        }

LABEL_13:
LABEL_14:

        goto LABEL_15;
      }

      v18 = ENErrorF(16, "Failed to decode session ID");
    }

    v12 = v26[5];
    v26[5] = v18;
    goto LABEL_14;
  }

LABEL_16:
  v6[2](v6);

  _Block_object_dispose(&v25, 8);
}

void *__49__ENXPCConnection__xpcPreAuthorizeDiagnosisKeys___block_invoke(void *result)
{
  v1 = result + 6;
  if (*(*(result[6] + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __49__ENXPCConnection__xpcPreAuthorizeDiagnosisKeys___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

- (void)_xpcPreAuthorizeDiagnosisKeysComplete:(id)complete userDecision:(BOOL)decision
{
  decisionCopy = decision;
  completeCopy = complete;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__ENXPCConnection__xpcPreAuthorizeDiagnosisKeysComplete_userDecision___block_invoke;
  v20[3] = &unk_278FD10D0;
  v22 = &v23;
  v20[4] = self;
  v7 = completeCopy;
  v21 = v7;
  v8 = MEMORY[0x24C214430](v20);
  v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v9 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    client = [(ENXPCConnection *)self client];
    v12 = client;
    v13 = "no";
    if (decisionCopy)
    {
      v13 = "yes";
    }

    LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcPreAuthorizeDiagnosisKeysComplete:userDecision:]", 30, "PreAuthorizeDiagnosisKeys: %s for %@", v13, client);
  }

  v14 = (v24 + 5);
  obj = v24[5];
  [(ENXPCConnection *)self updateDiagnosisKeysPreAuthorizationForRequest:v7 withDecision:decisionCopy errorOut:&obj];
  objc_storeStrong(v14, obj);
  if (!v24[5])
  {
    if (decisionCopy)
    {
      reply = xpc_dictionary_create_reply(v7);
      if (reply)
      {
        [(ENXPCConnection *)self _xpcSendMessage:reply];
      }

      else
      {
        v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed2 = [v17 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcPreAuthorizeDiagnosisKeysComplete:userDecision:]", 90, "### PreAuthorizeRequestDecision create reply failed");
        }
      }
    }

    else
    {
      v16 = ENErrorF(4, "User denied pre-authorization");
      reply = v24[5];
      v24[5] = v16;
    }
  }

  v8[2](v8);

  _Block_object_dispose(&v23, 8);
}

void *__70__ENXPCConnection__xpcPreAuthorizeDiagnosisKeysComplete_userDecision___block_invoke(void *result)
{
  v1 = result + 6;
  if (*(*(result[6] + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __70__ENXPCConnection__xpcPreAuthorizeDiagnosisKeysComplete_userDecision___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

- (void)_xpcRequestPreAuthorizedDiagnosisKeys:(id)keys
{
  keysCopy = keys;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__ENXPCConnection__xpcRequestPreAuthorizedDiagnosisKeys___block_invoke;
  v23[3] = &unk_278FD10D0;
  v25 = &v26;
  v23[4] = self;
  v5 = keysCopy;
  v24 = v5;
  v6 = MEMORY[0x24C214430](v23);
  v7 = (v27 + 5);
  obj = v27[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    if ([(ENXPCConnection *)self _appActiveStatusWithError:0])
    {
      v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v9 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        client = [(ENXPCConnection *)self client];
        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcRequestPreAuthorizedDiagnosisKeys:]", 30, "RequestPreAuthorizedDiagnosisKeys for %@", client);
      }

      CFStringGetTypeID();
      client2 = CFPrefs_CopyTypedValue();
      if (client2)
      {
        v13 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed2 = [v13 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcRequestPreAuthorizedDiagnosisKeys:]", 30, "RequestPreAuthorizedDiagnosisKeys for %@ already enqueued", client2);
        }
      }

      else
      {
        v15 = (v27 + 5);
        v21 = v27[5];
        [(ENXPCConnection *)self enqueuePreAuthorizedLockScreenActionForRequest:v5 outError:&v21];
        objc_storeStrong(v15, v21);
        if (v27[5])
        {
LABEL_17:

          goto LABEL_18;
        }
      }

      reply = xpc_dictionary_create_reply(v5);
      if (reply)
      {
        [(ENXPCConnection *)self _xpcSendMessage:reply];
      }

      else
      {
        v19 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed3 = [v19 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed3 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcRequestPreAuthorizedDiagnosisKeys:]", 90, "### RequestPreAuthorizedDiagnosisKeys create reply failed");
        }
      }
    }

    else
    {
      client2 = [(ENXPCConnection *)self client];
      reply = [client2 signingIdentity];
      v17 = ENErrorF(4, "%@ is not the active app", reply);
      v18 = v27[5];
      v27[5] = v17;
    }

    goto LABEL_17;
  }

LABEL_18:
  v6[2](v6);

  _Block_object_dispose(&v26, 8);
}

void *__57__ENXPCConnection__xpcRequestPreAuthorizedDiagnosisKeys___block_invoke(void *result)
{
  v1 = result + 6;
  if (*(*(result[6] + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __57__ENXPCConnection__xpcRequestPreAuthorizedDiagnosisKeys___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

- (void)enqueuePreAuthorizedLockScreenActionForRequest:(id)request outError:(id *)error
{
  requestCopy = request;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __75__ENXPCConnection_enqueuePreAuthorizedLockScreenActionForRequest_outError___block_invoke;
  v24[3] = &unk_278FD1AC8;
  v24[4] = &v25;
  v24[5] = error;
  v7 = MEMORY[0x24C214430](v24);
  if ([(ENXPCConnection *)self _appActiveStatusWithError:0])
  {
    v8 = (v26 + 5);
    obj = v26[5];
    client2 = [(ENXPCConnection *)self _regionConfigForXPCRequest:requestCopy error:&obj];
    objc_storeStrong(v8, obj);
    if (client2)
    {
      CFPrefs_RemoveValue();
      diagnosisKeysPreAuthorization = [client2 diagnosisKeysPreAuthorization];
      userAuthorization = [diagnosisKeysPreAuthorization userAuthorization];

      if (userAuthorization == 1)
      {
        client = [(ENXPCConnection *)self client];
        signingIdentity = [client signingIdentity];
        CFPrefs_SetValue();

        objc_initWeak(&location, self);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __75__ENXPCConnection_enqueuePreAuthorizedLockScreenActionForRequest_outError___block_invoke_2;
        v20[3] = &unk_278FD1738;
        objc_copyWeak(&v21, &location);
        v14 = MEMORY[0x24C214430](v20);
        [(ENDaemon *)self->_daemon enqueueScreenUnlockAction:v14 withIdentifier:@"PreArmUnlockActionIdentifier"];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
      }

      else
      {
        v18 = ENErrorF(4, "User pre-authorization not available");
        v19 = v26[5];
        v26[5] = v18;
      }
    }
  }

  else
  {
    client2 = [(ENXPCConnection *)self client];
    signingIdentity2 = [client2 signingIdentity];
    v16 = ENErrorF(4, "%@ is not the active app", signingIdentity2);
    v17 = v26[5];
    v26[5] = v16;
  }

  v7[2](v7);
  _Block_object_dispose(&v25, 8);
}

void __75__ENXPCConnection_enqueuePreAuthorizedLockScreenActionForRequest_outError___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      v2 = CUPrintNSError();
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection enqueuePreAuthorizedLockScreenActionForRequest:outError:]_block_invoke", 90, "### EnqueuePreAuthorizedLockScreenAction failed: %@", v2);
    }

    if (*(a1 + 40))
    {
      **(a1 + 40) = *(*(*(a1 + 32) + 8) + 40);
    }
  }
}

void __75__ENXPCConnection_enqueuePreAuthorizedLockScreenActionForRequest_outError___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __75__ENXPCConnection_enqueuePreAuthorizedLockScreenActionForRequest_outError___block_invoke_2_cold_1(a1, a2, a3);
    }
  }

  WeakRetained = objc_loadWeakRetained((v3 + 32));
  [WeakRetained xpcPreAuthorizedDiagnosisKeysAvailable];
}

- (void)updateDiagnosisKeysPreAuthorizationForRequest:(id)request withDecision:(BOOL)decision errorOut:(id *)out
{
  decisionCopy = decision;
  requestCopy = request;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__3;
  v61 = __Block_byref_object_dispose__3;
  v62 = 0;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __87__ENXPCConnection_updateDiagnosisKeysPreAuthorizationForRequest_withDecision_errorOut___block_invoke;
  v56[3] = &unk_278FD1AC8;
  v56[4] = &v57;
  v56[5] = out;
  v9 = MEMORY[0x24C214430](v56);
  v10 = (v58 + 5);
  obj = v58[5];
  v11 = [(ENXPCConnection *)self _regionConfigForXPCRequest:requestCopy error:&obj];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v12 = "no";
      if (decisionCopy)
      {
        v12 = "yes";
      }

      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection updateDiagnosisKeysPreAuthorizationForRequest:withDecision:errorOut:]", 30, "UpdateDiagnosisKeysPreAuthorization: %s", v12);
    }

    if (decisionCopy)
    {
      CFPrefs_GetDouble();
      v14 = v13;
      if (v13 > 0.0 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection updateDiagnosisKeysPreAuthorizationForRequest:withDecision:errorOut:]", 30, "UpdateDiagnosisKeysPreAuthorization: Overriding duration by %lf seconds", v14);
      }

      date = [MEMORY[0x277CBEAA0] date];
      v16 = date;
      v17 = 432000.0;
      if (v14 > 0.0)
      {
        v17 = v14;
      }

      v18 = [date dateByAddingTimeInterval:v17];

      diagnosisKeysPreAuthorization = [v11 diagnosisKeysPreAuthorization];

      if (!diagnosisKeysPreAuthorization)
      {
        v20 = [objc_alloc(MEMORY[0x277CC5D40]) initWithIdentifier:@"DiagnosisKeysPreAuthorization"];
        [v11 setDiagnosisKeysPreAuthorization:v20];
      }

      diagnosisKeysPreAuthorization2 = [v11 diagnosisKeysPreAuthorization];
      [diagnosisKeysPreAuthorization2 setUserAuthorization:1 withExpiration:v18];

      v22 = xpc_dictionary_get_value(requestCopy, "meta");
      v23 = MEMORY[0x24C214BB0]();
      v24 = MEMORY[0x277CBEC08];
      v25 = MEMORY[0x277CBEC08];
      if (v23 == MEMORY[0x277D86468])
      {
        v25 = _CFXPCCreateCFObjectFromXPCObject();
      }

      objc_opt_class();
      v51 = v18;
      selfCopy = self;
      v53 = requestCopy;
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      v27 = v26;
      v28 = [v27 objectForKeyedSubscript:*MEMORY[0x277CC5BB0]];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      diagnosisKeysPreAuthorization3 = [v11 diagnosisKeysPreAuthorization];
      v31 = diagnosisKeysPreAuthorization3;
      if (isKindOfClass)
      {
        v32 = v28;
      }

      else
      {
        v32 = 0;
      }

      [diagnosisKeysPreAuthorization3 setSymptomOnsetDate:v32];

      v33 = [v27 objectForKeyedSubscript:*MEMORY[0x277CC5BC8]];
      objc_opt_class();
      v34 = objc_opt_isKindOfClass();
      diagnosisKeysPreAuthorization4 = [v11 diagnosisKeysPreAuthorization];
      v36 = diagnosisKeysPreAuthorization4;
      if (v34)
      {
        v37 = v33;
      }

      else
      {
        v37 = 0;
      }

      [diagnosisKeysPreAuthorization4 setDidUserTravel:v37];

      v38 = [v27 objectForKeyedSubscript:*MEMORY[0x277CC5BA0]];
      objc_opt_class();
      v39 = objc_opt_isKindOfClass();
      diagnosisKeysPreAuthorization5 = [v11 diagnosisKeysPreAuthorization];
      v41 = diagnosisKeysPreAuthorization5;
      if (v39)
      {
        v42 = v38;
      }

      else
      {
        v42 = 0;
      }

      [diagnosisKeysPreAuthorization5 setIsUserVaccinated:v42];

      self = selfCopy;
      requestCopy = v53;
    }

    else
    {
      [v11 setDiagnosisKeysPreAuthorization:0];
    }

    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];

    if (configurationStore)
    {
      v45 = (v58 + 5);
      v54 = v58[5];
      v46 = [configurationStore saveRegionConfiguration:v11 error:&v54];
      objc_storeStrong(v45, v54);
      if (!v46)
      {
        goto LABEL_42;
      }

      v47 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v47 isSensitiveLoggingAllowed];

      if (!isSensitiveLoggingAllowed || _MergedGlobals > 30 || _MergedGlobals == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_42;
      }

      diagnosisKeysPreAuthorization6 = [v11 diagnosisKeysPreAuthorization];
      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection updateDiagnosisKeysPreAuthorizationForRequest:withDecision:errorOut:]", 30, "UpdateDiagnosisKeysPreAuthorization with pre-auth: %@", diagnosisKeysPreAuthorization6);
    }

    else
    {
      v50 = ENErrorF(11, "Configuration store is not available");
      diagnosisKeysPreAuthorization6 = v58[5];
      v58[5] = v50;
    }

LABEL_42:
  }

  v9[2](v9);
  _Block_object_dispose(&v57, 8);
}

void __87__ENXPCConnection_updateDiagnosisKeysPreAuthorizationForRequest_withDecision_errorOut___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      **(a1 + 40) = v3;
    }

    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      __87__ENXPCConnection_updateDiagnosisKeysPreAuthorizationForRequest_withDecision_errorOut___block_invoke_cold_1(v2);
    }
  }
}

- (void)xpcPreAuthorizedDiagnosisKeysAvailable
{
  v48 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__3;
  v45 = __Block_byref_object_dispose__3;
  v46 = 0;
  client = [(ENXPCConnection *)self client];
  signingIdentity = [client signingIdentity];

  activeEntity = [(ENDaemon *)self->_daemon activeEntity];
  entity = [activeEntity entity];
  region = [entity region];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __57__ENXPCConnection_xpcPreAuthorizedDiagnosisKeysAvailable__block_invoke;
  v40[3] = &unk_278FD10D0;
  v40[6] = &v41;
  v40[4] = self;
  v40[5] = region;
  v29 = MEMORY[0x24C214430](v40);
  if (!self->_xpcCnx)
  {
    v23 = ENErrorF(11, "Cannot send reply with no cnx");
    v6 = v42[5];
    v42[5] = v23;
    goto LABEL_22;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "mTyp", 24);
  if (![(ENXPCConnection *)self _appActiveStatusWithError:0])
  {
    v24 = ENErrorF(4, "%@ is not the active app", signingIdentity);
LABEL_26:
    v31 = v42[5];
    v42[5] = v24;

    goto LABEL_22;
  }

  if (!region)
  {
    v24 = ENErrorF(5, "%@ has no region associated", signingIdentity);
    goto LABEL_26;
  }

  CFPrefs_RemoveValue();
  v7 = (v42 + 5);
  obj = v42[5];
  v30 = [(ENXPCConnection *)self _regionConfigForXPCRequest:v6 error:&obj];
  objc_storeStrong(v7, obj);
  if (v30)
  {
    diagnosisKeysPreAuthorization = [v30 diagnosisKeysPreAuthorization];
    v9 = [diagnosisKeysPreAuthorization userAuthorization] == 1;

    if (v9)
    {
      v10 = (v42 + 5);
      v38 = v42[5];
      [(ENXPCConnection *)self updateDiagnosisKeysPreAuthorizationForRequest:v6 withDecision:0 errorOut:&v38];
      objc_storeStrong(v10, v38);
      temporaryExposureKeyManager = [(ENDaemon *)self->_daemon temporaryExposureKeyManager];
      if (temporaryExposureKeyManager)
      {
        v12 = 144 * (((CFAbsoluteTimeGetCurrent() + *MEMORY[0x277CBECD8]) / 600.0) / 0x90) - 2016;
        client = self->_client;
        v14 = (v42 + 5);
        v37 = v42[5];
        v15 = [temporaryExposureKeyManager getTemporaryExposureKeysForClient:client fromRollingStart:v12 didPrompt:1 forTesting:0 forceRefresh:0 error:&v37];
        objc_storeStrong(v14, v37);
        if (v15)
        {
          v16 = xpc_array_create(0, 0);
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v15 = v15;
          v17 = [v15 countByEnumeratingWithState:&v33 objects:v47 count:16];
          if (v17)
          {
            v18 = *v34;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v34 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v33 + 1) + 8 * i);
                v21 = xpc_dictionary_create(0, 0, 0);
                [v20 encodeWithXPCObject:v21];
                xpc_array_set_value(v16, 0xFFFFFFFFFFFFFFFFLL, v21);
              }

              v17 = [v15 countByEnumeratingWithState:&v33 objects:v47 count:16];
            }

            while (v17);
          }

          xpc_dictionary_set_value(v6, "tekA", v16);
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            count = xpc_array_get_count(v16);
            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection xpcPreAuthorizedDiagnosisKeysAvailable]", 30, "PreAuthorizedDiagnosisKeysAvailable: %d keys", count);
          }

          [(ENXPCConnection *)self _xpcSendMessage:v6];
        }
      }

      else
      {
        v27 = ENErrorF(11, "Nil TEK manager");
        v15 = v42[5];
        v42[5] = v27;
      }
    }

    else
    {
      v25 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v25 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection xpcPreAuthorizedDiagnosisKeysAvailable]", 90, "### RequestPreAuthorizedDiagnosisKeys: User pre-authorization not available");
      }
    }
  }

LABEL_22:
  v29[2](v29);

  _Block_object_dispose(&v41, 8);
}

void __57__ENXPCConnection_xpcPreAuthorizedDiagnosisKeysAvailable__block_invoke(void *a1)
{
  if (*(*(a1[6] + 8) + 40))
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      v3 = CUPrintNSError();
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection xpcPreAuthorizedDiagnosisKeysAvailable]_block_invoke", 90, "### PreAuthorizedDiagnosisKeysAvailable failed: %@", v3);
    }
  }

  else
  {
    v1 = a1[5];
    v2 = *(a1[4] + 32);

    [v2 postPreAuthorizationNotificationForRegion:v1];
  }
}

- (void)_xpcGetDiagnosisKeys:(id)keys testMode:(BOOL)mode
{
  modeCopy = mode;
  keysCopy = keys;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __49__ENXPCConnection__xpcGetDiagnosisKeys_testMode___block_invoke;
  v34[3] = &unk_278FD10D0;
  v36 = &v37;
  v34[4] = self;
  v7 = keysCopy;
  v35 = v7;
  v8 = MEMORY[0x24C214430](v34);
  if (modeCopy)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v10 = (v38 + 5);
  obj = v38[5];
  v11 = [(ENXPCConnection *)self _entitledForAccessLevel:v9 error:&obj];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    v12 = (v38 + 5);
    v32 = v38[5];
    v13 = [(ENXPCConnection *)self _authorizedAndReturnError:&v32];
    objc_storeStrong(v12, v32);
    if (v13)
    {
      v14 = (v38 + 5);
      v31 = v38[5];
      v15 = [(ENXPCConnection *)self _appActiveStatusWithError:&v31];
      objc_storeStrong(v14, v31);
      if (v15)
      {
        temporaryExposureKeyManager = [(ENDaemon *)self->_daemon temporaryExposureKeyManager];
        if (temporaryExposureKeyManager)
        {
          v17 = xpc_dictionary_get_BOOL(v7, "refr");
          v18 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed = [v18 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v20 = "no";
            if (modeCopy)
            {
              v21 = "yes";
            }

            else
            {
              v21 = "no";
            }

            if (v17)
            {
              v20 = "yes";
            }

            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetDiagnosisKeys:testMode:]", 30, "GetDiagnosisKeys %@ Test:%s, ForceRefresh:%s", self->_client, v21, v20);
          }

          [(ENDaemon *)self->_daemon setUsageGetDiagnosisKeys:[(ENDaemon *)self->_daemon usageGetDiagnosisKeys]+ 1];
          if (-[ENXPCClient entitledToSkipKeyReleasePrompt](self->_client, "entitledToSkipKeyReleasePrompt") || ([temporaryExposureKeyManager requireKeyReleasePromptForClient:self->_client] & 1) == 0)
          {
            v24 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed2 = [v24 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetDiagnosisKeys:testMode:]", 50, "GetDiagnosisKeys %@ skipping prompt", self->_client);
            }

            [(ENXPCConnection *)self _xpcGetDiagnosisKeysCompletion:v7 didPrompt:0 testMode:modeCopy error:0];
          }

          else
          {
            v22 = (v38 + 5);
            v30 = v38[5];
            v23 = CUXPCDecodeNSUUID();
            objc_storeStrong(v22, v30);
            if (v23)
            {
              v28 = ENErrorF(2, "No session ID");
              v29 = v38[5];
              v38[5] = v28;
            }
          }
        }

        else
        {
          v26 = ENErrorF(11, "Nil TEK manager");
          v27 = v38[5];
          v38[5] = v26;
        }
      }
    }
  }

  v8[2](v8);

  _Block_object_dispose(&v37, 8);
}

void *__49__ENXPCConnection__xpcGetDiagnosisKeys_testMode___block_invoke(void *result)
{
  v1 = result + 6;
  if (*(*(result[6] + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __49__ENXPCConnection__xpcGetDiagnosisKeys_testMode___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

- (void)_xpcGetDiagnosisKeysCompletion:(id)completion didPrompt:(BOOL)prompt testMode:(BOOL)mode error:(id)error
{
  modeCopy = mode;
  promptCopy = prompt;
  v52 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  errorCopy = error;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__3;
  v49 = __Block_byref_object_dispose__3;
  v50 = 0;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __75__ENXPCConnection__xpcGetDiagnosisKeysCompletion_didPrompt_testMode_error___block_invoke;
  v42[3] = &unk_278FD10D0;
  v44 = &v45;
  v42[4] = self;
  v10 = completionCopy;
  v43 = v10;
  v34 = MEMORY[0x24C214430](v42);
  if (errorCopy)
  {
    v29 = v46;
    v30 = errorCopy;
    temporaryExposureKeyManager = v29[5];
    v29[5] = v30;
    goto LABEL_24;
  }

  temporaryExposureKeyManager = [(ENDaemon *)self->_daemon temporaryExposureKeyManager];
  if (temporaryExposureKeyManager)
  {
    v12 = xpc_dictionary_get_BOOL(v10, "refr");
    if (!v12 || [(ENXPCClient *)self->_client accessLevel]> 3)
    {
      v13 = 144 * (((CFAbsoluteTimeGetCurrent() + *MEMORY[0x277CBECD8]) / 600.0) / 0x90) - 2016;
      client = self->_client;
      v15 = (v46 + 5);
      obj = v46[5];
      v16 = [temporaryExposureKeyManager getTemporaryExposureKeysForClient:client fromRollingStart:v13 didPrompt:promptCopy forTesting:modeCopy forceRefresh:v12 error:&obj];
      objc_storeStrong(v15, obj);
      if (v16)
      {
        v17 = xpc_array_create(0, 0);
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v16 = v16;
        v18 = [v16 countByEnumeratingWithState:&v37 objects:v51 count:16];
        if (v18)
        {
          v19 = *v38;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v38 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v37 + 1) + 8 * i);
              v22 = xpc_dictionary_create(0, 0, 0);
              [v21 encodeWithXPCObject:v22];
              xpc_array_set_value(v17, 0xFFFFFFFFFFFFFFFFLL, v22);
            }

            v18 = [v16 countByEnumeratingWithState:&v37 objects:v51 count:16];
          }

          while (v18);
        }

        v23 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed = [v23 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          count = xpc_array_get_count(v17);
          v26 = "no";
          if (promptCopy)
          {
            v26 = "yes";
          }

          LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetDiagnosisKeysCompletion:didPrompt:testMode:error:]", 30, "GetDiagnosisKeys response: %zu keys, did prompt: %s", count, v26);
        }

        reply = xpc_dictionary_create_reply(v10);
        v28 = reply;
        if (reply)
        {
          xpc_dictionary_set_value(reply, "tekA", v17);
          [(ENXPCConnection *)self _xpcSendMessage:v28];
        }

        else
        {
          v32 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed2 = [v32 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetDiagnosisKeysCompletion:didPrompt:testMode:error:]", 90, "### GetDiagnosisKeys create reply failed");
          }
        }
      }

      goto LABEL_23;
    }

    v31 = ENErrorF(10, "Force refresh not allowed");
  }

  else
  {
    v31 = ENErrorF(11, "Nil TEK manager");
  }

  v16 = v46[5];
  v46[5] = v31;
LABEL_23:

LABEL_24:
  v34[2](v34);

  _Block_object_dispose(&v45, 8);
}

void *__75__ENXPCConnection__xpcGetDiagnosisKeysCompletion_didPrompt_testMode_error___block_invoke(void *result)
{
  v1 = result + 6;
  if (*(*(result[6] + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __75__ENXPCConnection__xpcGetDiagnosisKeysCompletion_didPrompt_testMode_error___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

- (void)_xpcResetData:(id)data
{
  dataCopy = data;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __33__ENXPCConnection__xpcResetData___block_invoke;
  v19[3] = &unk_278FD10D0;
  v21 = &v22;
  v19[4] = self;
  v5 = dataCopy;
  v20 = v5;
  v6 = MEMORY[0x24C214430](v19);
  v7 = (v23 + 5);
  obj = v23[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v23 + 5);
    v17 = v23[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v17];
    objc_storeStrong(v9, v17);
    if (v10)
    {
      v11 = (v23 + 5);
      v16 = v23[5];
      v28 = 0;
      v12 = CUXPCDecodeUInt64RangedEx();
      v13 = v28;
      objc_storeStrong(v11, v16);
      if (v12 != 5)
      {
        if (v12 == 6)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        [(ENDaemon *)self->_daemon _resetDataWithFlags:v14];
        reply = xpc_dictionary_create_reply(v5);
        if (reply)
        {
          [(ENXPCConnection *)self _xpcSendMessage:reply];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcResetData:]", 90, "### ResetData create reply failed");
        }
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v22, 8);
}

void *__33__ENXPCConnection__xpcResetData___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcResetData:]_block_invoke", 90, "### ResetData failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcDiagnosticControl:(id)control
{
  controlCopy = control;
  v263 = 0;
  v264 = &v263;
  v265 = 0x3032000000;
  v266 = __Block_byref_object_copy__3;
  v267 = __Block_byref_object_dispose__3;
  v268 = 0;
  v260[0] = MEMORY[0x277D85DD0];
  v260[1] = 3221225472;
  v260[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke;
  v260[3] = &unk_278FD10D0;
  v262 = &v263;
  v260[4] = self;
  v5 = controlCopy;
  v261 = v5;
  v6 = MEMORY[0x24C214430](v260);
  v7 = v264;
  v259 = v264[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&v259];
  objc_storeStrong(v7 + 5, v259);
  if (v8)
  {
    v9 = xpc_dictionary_get_value(v5, "parm");
    v10 = v9;
    if (v9)
    {
      if (MEMORY[0x24C214BB0](v9) == MEMORY[0x277D86468])
      {
        v253 = 0;
        v254 = &v253;
        v255 = 0x3032000000;
        v256 = __Block_byref_object_copy__3;
        v257 = __Block_byref_object_dispose__3;
        v258 = 0;
        string = xpc_dictionary_get_string(v10, "iStr");
        if (!string)
        {
          v73 = ENErrorF(2, "No input string");
          v74 = v264[5];
          v264[5] = v73;

          goto LABEL_86;
        }

        v252[0] = MEMORY[0x277D85DD0];
        v252[1] = 3221225472;
        v252[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_2;
        v252[3] = &unk_278FD1AF0;
        v252[4] = v10;
        v12 = MEMORY[0x24C214430](v252);
        v251[0] = MEMORY[0x277D85DD0];
        v251[1] = 3221225472;
        v251[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_3;
        v251[3] = &unk_278FD1B18;
        v251[4] = v10;
        v171 = MEMORY[0x24C214430](v251);
        delegate = [(ENDaemon *)self->_daemon delegate];
        if (!strcasecmp(string, "Activity"))
        {
          v14 = xpc_dictionary_get_string(v10, "activity");
          if (!v14)
          {
            v13 = ENErrorF(2, "No activity");
            goto LABEL_36;
          }

          if (stricmp_prefix())
          {
            if (stricmp_prefix())
            {
              if (stricmp_prefix())
              {
                if (stricmp_prefix())
                {
                  v13 = ENErrorF(2, "Bad activity: '%s'", v14);
                  goto LABEL_36;
                }

                v19 = 8;
              }

              else
              {
                v19 = 4;
              }
            }

            else
            {
              v19 = 2;
            }
          }

          else
          {
            v19 = 1;
          }

          v29 = xpc_dictionary_get_string(v10, "bundleID");
          if (!v29)
          {
            v13 = ENErrorF(2, "No bundle ID");
            goto LABEL_36;
          }

          v30 = [MEMORY[0x277CCACA0] stringWithUTF8String:v29];
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v31 = CUPrintFlags32();
            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: Activity, bundleID %@, activity %@", v30, v31);
          }

          if ((v19 & 3) != 0)
          {
            v32 = 30;
          }

          else
          {
            v32 = ((v19 << 29) >> 31) & 0xD2;
          }

          [(ENDaemon *)self->_daemon appLaunchWithBundleID:v30 activity:v19 shouldEnterForeground:(v19 & 7) == 0 requiredRuntimeInSeconds:v32];
          v33 = (v254 + 5);
          v250 = v254[5];
          NSAppendPrintF_safe(&v250, "");
          objc_storeStrong(v33, v250);
        }

        else
        {
          if (!strcasecmp(string, "BTDebug"))
          {
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: BTDebug");
            }

            [delegate printBluetoothDebug];
            v21 = (v254 + 5);
            v249 = v254[5];
            NSAppendPrintF_safe(&v249, "");
            v22 = v249;
            goto LABEL_65;
          }

          if (!strcasecmp(string, "chaff") && IsAppleInternalBuild())
          {
            location = 0;
            CUXPCDecodeNSString();
            [0 doubleValue];
            if (v16 > 0.0)
            {
              CFPrefs_SetDouble();
            }

            v247 = 0;
            CUXPCDecodeNSString();
            if ([0 integerValue] >= 1)
            {
              CFPrefs_SetDouble();
            }

            v246 = 0;
            CUXPCDecodeNSString();
            [0 doubleValue];
            if (v17 > 0.0)
            {
              CFPrefs_SetDouble();
            }

            [(ENDaemon *)self->_daemon prefsChanged];
            v18 = (v254 + 5);
            obj = v254[5];
            NSAppendPrintF_safe(&obj, "Chaff Overrides Complete\n");
            objc_storeStrong(v18, obj);

LABEL_48:
            goto LABEL_77;
          }

          if (!strcasecmp(string, "chaffReset") && IsAppleInternalBuild())
          {
            testResultManager = [(ENDaemon *)self->_daemon testResultManager];
            [testResultManager deactivateAutomatedChaffing];

            [(ENDaemon *)self->_daemon prefsChanged];
            v21 = (v254 + 5);
            v244 = v254[5];
            NSAppendPrintF_safe(&v244, "Chaff States Reset Complete\n");
            v22 = v244;
LABEL_65:
            objc_storeStrong(v21, v22);
            goto LABEL_77;
          }

          if (!strcasecmp(string, "chaffOverridesReset") && IsAppleInternalBuild())
          {
            CFPrefs_RemoveValue();
            CFPrefs_RemoveValue();
            CFPrefs_RemoveValue();
            [(ENDaemon *)self->_daemon prefsChanged];
            v21 = (v254 + 5);
            v243 = v254[5];
            NSAppendPrintF_safe(&v243, "Chaff Overrides Reset Complete\n");
            v22 = v243;
            goto LABEL_65;
          }

          if (!strcasecmp(string, "configureTestRegion") && IsAppleInternalBuild())
          {
            v23 = xpc_dictionary_get_string(v10, "mcc");
            if (!v23)
            {
              v26 = v12[2](v12);
              goto LABEL_94;
            }

            region2 = [MEMORY[0x277CCACA0] stringWithUTF8String:v23];
            v25 = [ENCoreTelephonyUtility countryCodeISOForMobileCountryCode:region2];
            if (v25)
            {
              v26 = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v25];

LABEL_94:
              if (v26)
              {
                v45 = objc_alloc(MEMORY[0x277CC5D08]);
                date = [MEMORY[0x277CBEAA0] date];
                v47 = [v45 initWithRegion:v26 date:date];

                v242 = 0;
                v48 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v47 requiringSecureCoding:1 error:&v242];
                v49 = v242;
                if (v48)
                {
                  CFPrefs_SetValue();
                  CFPrefs_SetValue();
                  objc_initWeak(&location, self);
                  dispatchQueue = self->_dispatchQueue;
                  v237[0] = MEMORY[0x277D85DD0];
                  v237[1] = 3221225472;
                  v237[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_4;
                  v237[3] = &unk_278FD1B40;
                  v237[4] = self;
                  v240 = &v253;
                  v238 = v26;
                  v239 = v5;
                  objc_copyWeak(&v241, &location);
                  dispatch_async(dispatchQueue, v237);
                  v51 = (v254 + 5);
                  v236 = v254[5];
                  NSAppendPrintF_safe(&v236, "");
                  objc_storeStrong(v51, v236);
                  objc_destroyWeak(&v241);

                  objc_destroyWeak(&location);
                }

                else
                {
                  v130 = ENErrorF(2, "Failed to serialize region visit");
                  v131 = v264[5];
                  v264[5] = v130;
                }

                goto LABEL_85;
              }

              v129 = ENErrorF(2, "Failed to create region");
              region2 = v264[5];
              v264[5] = v129;
              goto LABEL_84;
            }

            v132 = ENErrorF(2, "Unable to find country code for mcc");
LABEL_267:
            v133 = v264[5];
            v264[5] = v132;

LABEL_84:
            goto LABEL_85;
          }

          if (!strcasecmp(string, "disableTestRegion"))
          {
            if (CFPrefs_GetInt64())
            {
              CFPrefs_RemoveValue();
              objc_initWeak(&location, self);
              v27 = self->_dispatchQueue;
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_5;
              block[3] = &unk_278FD1B68;
              block[4] = self;
              v234 = &v253;
              v233 = v5;
              objc_copyWeak(&v235, &location);
              dispatch_async(v27, block);
              objc_destroyWeak(&v235);
              v28 = v233;
LABEL_62:

              objc_destroyWeak(&location);
              goto LABEL_85;
            }

            v13 = ENErrorF(10, "### DiagnosticControl Not in test mode");
            goto LABEL_36;
          }

          if (!strcasecmp(string, "phoneNumbers"))
          {
            v38 = (v254 + 5);
            v231 = v254[5];
            v30 = +[ENCoreTelephonyUtility sharedInstance];
            currentPhoneNumbers = [v30 currentPhoneNumbers];
            NSAppendPrintF(&v231, "PhoneNumber(s): %@ \n", currentPhoneNumbers);
            objc_storeStrong(v38, v231);
          }

          else
          {
            if (!strcasecmp(string, "setRegionMonitoringMode") && IsAppleInternalBuild())
            {
              v40 = xpc_dictionary_get_string(v10, "mode");
              if (v40)
              {
                v41 = [MEMORY[0x277CCACA0] stringWithUTF8String:v40];
                v42 = objc_alloc_init(MEMORY[0x277CCABC0]);
                v43 = [v42 numberFromString:v41];
                v44 = v12;
              }

              else
              {
                v44 = v12;
                v43 = 0;
              }

              objc_initWeak(&location, self);
              v54 = self->_dispatchQueue;
              v226[0] = MEMORY[0x277D85DD0];
              v226[1] = 3221225472;
              v226[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_6;
              v226[3] = &unk_278FD1B90;
              v226[4] = self;
              v227 = v43;
              v229 = &v253;
              v228 = v5;
              v55 = v43;
              objc_copyWeak(&v230, &location);
              dispatch_async(v54, v226);
              objc_destroyWeak(&v230);

              objc_destroyWeak(&location);
              v12 = v44;
              goto LABEL_85;
            }

            if (!strcasecmp(string, "getRegionMonitoringMode") && IsAppleInternalBuild())
            {
              objc_initWeak(&location, self);
              v52 = self->_dispatchQueue;
              v222[0] = MEMORY[0x277D85DD0];
              v222[1] = 3221225472;
              v222[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_7;
              v222[3] = &unk_278FD1B68;
              v222[4] = self;
              v224 = &v253;
              v223 = v5;
              objc_copyWeak(&v225, &location);
              dispatch_async(v52, v222);
              objc_destroyWeak(&v225);
              v28 = v223;
              goto LABEL_62;
            }

            if (strcasecmp(string, "ErrorTest"))
            {
              if (!strcasecmp(string, "getStateMetric"))
              {
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: getStateMetric");
                }

                stateMetricVersion = [(ENDaemon *)self->_daemon stateMetricVersion];
                v21 = (v254 + 5);
                v220 = v254[5];
                v61 = ENVersionToString(stateMetricVersion);
                NSAppendPrintF_safe(&v220, "version %s (%u)\n", v61, stateMetricVersion);
                v22 = v220;
                goto LABEL_65;
              }

              if (!strcasecmp(string, "PreAuthKeys"))
              {
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: PreAuthKeys");
                }

                [(ENDaemon *)self->_daemon xpcPreAuthorizedDiagnosisKeysAvailable];
                v21 = (v254 + 5);
                v219 = v254[5];
                NSAppendPrintF_safe(&v219, "");
                v22 = v219;
                goto LABEL_65;
              }

              if (strcasecmp(string, "ServerFetch"))
              {
                if (strcasecmp(string, "RawConfig"))
                {
                  if (!strcasecmp(string, "RemoveConfiguration") && IsAppleInternalBuild())
                  {
                    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
                    region = v12[2](v12);
                    if (!region)
                    {
                      activeEntity = [(ENDaemon *)self->_daemon activeEntity];
                      entity = [activeEntity entity];
                      region = [entity region];

                      if (!region)
                      {
                        v159 = ENErrorF(11, "No (active entity or) region provided");
                        v160 = v264[5];
                        v264[5] = v159;

                        goto LABEL_85;
                      }
                    }

                    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: Remove Configuration for region: %@", region);
                    }

                    configurationManager2 = [(ENDaemon *)self->_daemon configurationManager];
                    configurationStore = [configurationManager2 configurationStore];
                    v94 = v264;
                    v213 = v264[5];
                    v95 = [configurationStore removeConfigurationsForRegion:region includingSubdivisions:1 error:&v213];
                    objc_storeStrong(v94 + 5, v213);

                    if (v95)
                    {
                      [(ENDaemon *)self->_daemon configurationManager:configurationManager exposureNotificationRegionConfigurationRemovedForRegion:region];
                    }

                    v96 = (v254 + 5);
                    v212 = v254[5];
                    NSAppendPrintF_safe(&v212, "Removed Local Cloud Config Cache for %@\n", region);
                    objc_storeStrong(v96, v212);

                    goto LABEL_77;
                  }

                  if (!strcasecmp(string, "ResetCloudCache") && IsAppleInternalBuild())
                  {
                    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: Reset Cloud Configs");
                    }

                    configurationManager3 = [(ENDaemon *)self->_daemon configurationManager];
                    [configurationManager3 resetConfigurationCache];

                    [(ENDaemon *)self->_daemon prefsChanged];
                    v21 = (v254 + 5);
                    v211 = v254[5];
                    NSAppendPrintF_safe(&v211, "Cleared Local Cloud Config Cache\n");
                    v22 = v211;
                    goto LABEL_65;
                  }

                  if (!strcasecmp(string, "SimulateRemoveCloudConfig") && IsAppleInternalBuild())
                  {
                    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: Attempting to simulate Cloud Config Removal");
                    }

                    configurationManager4 = [(ENDaemon *)self->_daemon configurationManager];
                    [configurationManager4 resetConfigurationCache];

                    [(ENDaemon *)self->_daemon prefsChanged];
                    activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
                    entity2 = [activeEntity2 entity];
                    region2 = [entity2 region];

                    if (region2)
                    {
                      [(ENDaemon *)self->_daemon _exposureNotificationRegionConfigurationRemoved:region2];
                      v114 = (v254 + 5);
                      v210 = v254[5];
                      NSAppendPrintF_safe(&v210, "Simulated Cloud Config Removal\n");
                      v115 = v210;
                    }

                    else
                    {
                      v114 = (v254 + 5);
                      v209 = v254[5];
                      NSAppendPrintF_safe(&v209, "No Active Region available to simulate Cloud Config Removal\n");
                      v115 = v209;
                    }

                    v116 = v115;
                    v117 = *v114;
                    *v114 = v116;

LABEL_163:
LABEL_77:
                    reply = xpc_dictionary_create_reply(v5);
                    region2 = reply;
                    if (reply)
                    {
                      if (v254[5])
                      {
                        v35 = v254[5];
                      }

                      else
                      {
                        v35 = @"None\n";
                      }

                      v36 = reply;
                      uTF8String = [(__CFString *)v35 UTF8String];
                      if (uTF8String)
                      {
                        xpc_dictionary_set_string(v36, "oStr", uTF8String);
                      }

                      [(ENXPCConnection *)self _xpcSendMessage:v36];
                    }

                    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcDiagnosticControl:]", 90, "### DiagnosticControl create reply failed");
                    }

                    goto LABEL_84;
                  }

                  if (!strcasecmp(string, "removeCloudOverrides"))
                  {
                    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: Trigger Removal of Override Values(MobileCountryCodeOverride)");
                    }

                    v98 = (v254 + 5);
                    v208 = v254[5];
                    NSAppendPrintF_safe(&v208, "Diags: Trigger Removal of Override Values(MobileCountryCodeOverride)");
                    objc_storeStrong(v98, v208);
                    CFPrefs_RemoveValue();
                    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: Trigger Removal of Override Values(MobileCountryCodeBasebandOverride)");
                    }

                    v99 = (v254 + 5);
                    v207 = v254[5];
                    NSAppendPrintF_safe(&v207, "Diags: Trigger Removal of Override Values(MobileCountryCodeBasebandOverride)");
                    objc_storeStrong(v99, v207);
                    CFPrefs_RemoveValue();
                    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: Trigger Removal of Override Values(GracePeriodOverride)");
                    }

                    v100 = (v254 + 5);
                    v206 = v254[5];
                    NSAppendPrintF_safe(&v206, "Diags: Trigger Removal of Override Values(GracePeriodOverride)");
                    objc_storeStrong(v100, v206);
                    CFPrefs_RemoveValue();
                    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: Trigger Removal of Override Values(QACloudEnvironmentEnabled)");
                    }

                    v101 = (v254 + 5);
                    v205 = v254[5];
                    NSAppendPrintF_safe(&v205, "Diags: Trigger Removal of Override Values(QACloudEnvironmentEnabled)");
                    objc_storeStrong(v101, v205);
                    CFPrefs_RemoveValue();
                    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: Trigger Removal of Override Values(ServerConfigCallbackOverride)");
                    }

                    v102 = (v254 + 5);
                    v204 = v254[5];
                    NSAppendPrintF_safe(&v204, "Diags: Trigger Removal of Override Values(ServerConfigCallbackOverride)");
                    objc_storeStrong(v102, v204);
                    CFPrefs_RemoveValue();
                    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: Trigger Removal of Override Values(CloudResponseVerificationDisabled)");
                    }

                    v103 = (v254 + 5);
                    v203 = v254[5];
                    NSAppendPrintF_safe(&v203, "Diags: Trigger Removal of Override Values(CloudResponseVerificationDisabled)");
                    objc_storeStrong(v103, v203);
                    CFPrefs_RemoveValue();
                    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: Trigger Removal of Override Values(AppConfigCallbackOverride)");
                    }

                    v104 = (v254 + 5);
                    v202 = v254[5];
                    NSAppendPrintF_safe(&v202, "Diags: Trigger Removal of Override Values(AppConfigCallbackOverride)");
                    objc_storeStrong(v104, v202);
                    CFPrefs_RemoveValue();
                    CFPrefs_RemoveValue();
                    goto LABEL_77;
                  }

                  if (!strcasecmp(string, "telemetryAuthorization") && IsAppleInternalBuild())
                  {
                    configurationManager5 = [(ENDaemon *)self->_daemon configurationManager];
                    configurationStore2 = [configurationManager5 configurationStore];

                    v82 = v12[2](v12);
                    if (v82 || (-[ENDaemon activeEntity](self->_daemon, "activeEntity"), v83 = objc_claimAutoreleasedReturnValue(), [v83 entity], v84 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v84, "region"), v82 = objc_claimAutoreleasedReturnValue(), v84, v83, v82))
                    {
                      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: Update telemetryAuthorization for region: %@", v82);
                      }

                      location = 0;
                      v118 = v264;
                      v201 = v264[5];
                      v119 = CUXPCDecodeNSString();
                      objc_storeStrong(v118 + 5, v201);
                      if (v119)
                      {
                        bOOLValue = [location BOOLValue];
                        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                        {
                          v121 = "no";
                          if (bOOLValue)
                          {
                            v121 = "yes";
                          }

                          LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: telemetryAuthorization: enabled - %s", v121);
                        }

                        v122 = [configurationStore2 serverConfigurationResponseForRegion:v82];
                        if (v122)
                        {
                          v168 = [MEMORY[0x277CBEB30] dictionaryWithDictionary:v122];
                          v167 = [v122 objectForKeyedSubscript:@"config"];
                          v123 = [MEMORY[0x277CBEB30] dictionaryWithDictionary:v167];
                          v124 = [MEMORY[0x277CCABA8] numberWithBool:bOOLValue];
                          [v123 setValue:v124 forKey:@"telemetryAuthorization"];

                          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                          {
                            v125 = "no";
                            if (bOOLValue)
                            {
                              v125 = "yes";
                            }

                            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: telemetryAuthorization: is now enabled - %s", v125);
                          }

                          [v168 setValue:v123 forKey:@"config"];
                          v126 = v264;
                          v200 = v264[5];
                          v127 = [configurationStore2 saveServerConfigurationResponse:v168 error:&v200];
                          objc_storeStrong(v126 + 5, v200);
                          if (v127)
                          {
                            v128 = [configurationStore2 configurationForRegion:v82];
                            [(ENDaemon *)self->_daemon _exposureNotificationRegionConfigurationChanged:v128];
                          }

                          else
                          {
                            v165 = ENNestedErrorF(v264[5], 2, "Diags: telemetryAuthorization: error saving configuration response");
                            v128 = v264[5];
                            v264[5] = v165;
                          }

                          if ((v127 & 1) == 0)
                          {
                            goto LABEL_85;
                          }

                          goto LABEL_77;
                        }

                        v163 = ENErrorF(2, "Diags: telemetryAuthorization: missing server configuration");
                      }

                      else
                      {
                        v163 = ENErrorF(15, "Diags: telemetryAuthorization: missing enabled");
                      }

                      v164 = v264[5];
                      v264[5] = v163;
                    }

                    else
                    {
                      v161 = ENErrorF(11, "No (active entity or) region provided");
                      v162 = v264[5];
                      v264[5] = v161;
                    }

                    v158 = configurationStore2;
LABEL_273:

                    goto LABEL_85;
                  }

                  if (!strcasecmp(string, "sendErrorMetric"))
                  {
                    location = 0;
                    v86 = v264;
                    v199 = v264[5];
                    CUXPCDecodeNSString();
                    objc_storeStrong(v86 + 5, v199);
                    if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 90, "Diags: sendErrorMetric: missing errorType");
                    }
                  }

                  else
                  {
                    if (!strcasecmp(string, "latestExposureDPMetric"))
                    {
                      _getLatestExposureForDifferentialPrivacy = [(ENDaemon *)self->_daemon _getLatestExposureForDifferentialPrivacy];
                      if (_getLatestExposureForDifferentialPrivacy == 1)
                      {
                        v21 = (v254 + 5);
                        v197 = v254[5];
                        NSAppendPrintF(&v197, "No Latest Notification: %i\n", v166);
                        v22 = v197;
                      }

                      else
                      {
                        v21 = (v254 + 5);
                        if (_getLatestExposureForDifferentialPrivacy)
                        {
                          v196 = v254[5];
                          NSAppendPrintF(&v196, "Classification Index %i\n", _getLatestExposureForDifferentialPrivacy - 1);
                          v22 = v196;
                        }

                        else
                        {
                          v198 = v254[5];
                          NSAppendPrintF(&v198, "DB Error\n", 0);
                          v22 = v198;
                        }
                      }

                      goto LABEL_65;
                    }

                    if (strcasecmp(string, "resetAA"))
                    {
                      if (!strcasecmp(string, "help"))
                      {
                        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: help");
                        }

                        v134 = (v254 + 5);
                        v195 = v254[5];
                        NSAppendPrintF_safe(&v195, "%@", @"Commands:\n");
                        objc_storeStrong(v134, v195);
                        v135 = (v254 + 5);
                        v194 = v254[5];
                        NSAppendPrintF_safe(&v194, "%@", @"    BTDebug                    Print Bluetooth EN debug info.\n");
                        objc_storeStrong(v135, v194);
                        v136 = (v254 + 5);
                        v193 = v254[5];
                        NSAppendPrintF_safe(&v193, "%@", @"    Help                       Show this help menu.\n");
                        objc_storeStrong(v136, v193);
                        v137 = (v254 + 5);
                        v192 = v254[5];
                        NSAppendPrintF_safe(&v192, "%@", @"    PreAuthKeys                Pre-auth keys available.\n");
                        objc_storeStrong(v137, v192);
                        v138 = (v254 + 5);
                        v191 = v254[5];
                        NSAppendPrintF_safe(&v191, "%@", @"    ServerFetch                Fetch config from server for active region or specific country with ramp mode. Example: ServerFetch countryCode US rampMode 1 \n");
                        objc_storeStrong(v138, v191);
                        v139 = (v254 + 5);
                        v190 = v254[5];
                        NSAppendPrintF_safe(&v190, "%@", @"    RawConfig                  Read cached config for active or specific region. Example: RawConfig countryCode IT\n");
                        objc_storeStrong(v139, v190);
                        v140 = (v254 + 5);
                        v189 = v254[5];
                        NSAppendPrintF_safe(&v189, "%@", @"    ResetCloudCache            Reset all cached server/app configs from server.\n");
                        objc_storeStrong(v140, v189);
                        v141 = (v254 + 5);
                        v188 = v254[5];
                        NSAppendPrintF_safe(&v188, "%@", @"    SimulateRemoveCloudConfig  Simulate removing of active region's config, will not work if no active region.\n");
                        objc_storeStrong(v141, v188);
                        v142 = (v254 + 5);
                        v187 = v254[5];
                        NSAppendPrintF_safe(&v187, "%@", @"    RemoveConfiguration        Remove cached server/app configs for a region and update daemon. If no region provided, will use active entity's region. eg: RemoveConfiguration countryCode US subdivisionCode US-CA\n");
                        objc_storeStrong(v142, v187);
                        v143 = (v254 + 5);
                        v186 = v254[5];
                        objc_storeStrong(v143, v186);
                        v144 = (v254 + 5);
                        v185 = v254[5];
                        NSAppendPrintF_safe(&v185, "%@", @"    disableTestRegion          Disable Test Region to test EN Service. eg: disableTestRegion \n");
                        objc_storeStrong(v144, v185);
                        v145 = (v254 + 5);
                        v184 = v254[5];
                        objc_storeStrong(v145, v184);
                        v146 = (v254 + 5);
                        v183 = v254[5];
                        NSAppendPrintF_safe(&v183, "%@", @"    getRegionMonitoringMode    Reads current region monitoring mode \n");
                        objc_storeStrong(v146, v183);
                        v147 = (v254 + 5);
                        v182 = v254[5];
                        NSAppendPrintF_safe(&v182, "%@", @"    removeCloudOverrides       Removes All Cloud Pref Overrides \n");
                        objc_storeStrong(v147, v182);
                        v148 = (v254 + 5);
                        v181 = v254[5];
                        NSAppendPrintF_safe(&v181, "%@", @"    getStateMetric             Get EN state information that would be returned if AWD were to poll us right now\n");
                        objc_storeStrong(v148, v181);
                        v149 = (v254 + 5);
                        v180 = v254[5];
                        NSAppendPrintF_safe(&v180, "%@", @"    sendErrorMetric            Send EN error AWD metric (must specify error type)\n");
                        objc_storeStrong(v149, v180);
                        v150 = (v254 + 5);
                        v179 = v254[5];
                        NSAppendPrintF_safe(&v179, "%@", @"    telemetryAuthorization     Override telemetry authorization. This will temporarily update local config. eg:- enutil dcmd telemetryAuthorization enabled true countryCode SK\n");
                        objc_storeStrong(v150, v179);
                        v151 = (v254 + 5);
                        v178 = v254[5];
                        NSAppendPrintF_safe(&v178, "%@", @"    latestExposureDPMetric     Boolean reported to DP for latest exposure notification sent. eg:- enutil dcmd latestExposureDPMetric\n");
                        objc_storeStrong(v151, v178);
                        v152 = (v254 + 5);
                        v177 = v254[5];
                        NSAppendPrintF_safe(&v177, "%@", @"    resetAA                    reset the current AA cycle of the current region after the given delay. Example(resetting the AA cycle in 30 seconds): resetAA delay 30\n");
                        objc_storeStrong(v152, v177);
                        v153 = (v254 + 5);
                        v176 = v254[5];
                        NSAppendPrintF_safe(&v176, "%@", @"    chaff                      Override chaff parameters like delay to start, cadence to chaff again and selection %. <chaff delay 30 cadence 60 select 20>\n");
                        objc_storeStrong(v153, v176);
                        v154 = (v254 + 5);
                        v175 = v254[5];
                        NSAppendPrintF_safe(&v175, "%@", @"    chaffOverridesReset        Reset chaff overrides\n");
                        objc_storeStrong(v154, v175);
                        v155 = (v254 + 5);
                        v174 = v254[5];
                        NSAppendPrintF_safe(&v174, "%@", @"    chaffReset                 Reset chaffing state\n");
                        objc_storeStrong(v155, v174);
                        v21 = (v254 + 5);
                        v173 = v254[5];
                        NSAppendPrintF_safe(&v173, "%@", @"    phoneNumbers\t\t\t\t Get ITU E.164 phone number(s).\n");
                        v22 = v173;
                        goto LABEL_65;
                      }

                      v13 = ENErrorF(5, "Unsupported diag command: '%s'", string);
                      goto LABEL_36;
                    }

                    location = 0;
                    CUXPCDecodeNSString();
                    integerValue = [0 integerValue];
                    v106 = integerValue;
                    if (integerValue >= 1)
                    {
                      regionMonitor = [(ENDaemon *)self->_daemon regionMonitor];
                      v108 = [regionMonitor getCurrentRegionVisitWithError:0];
                      region3 = [v108 region];

                      if (region3)
                      {
                        [(ENDaemon *)self->_daemon _writePreferenceRegionPendingOnboarding:region3];
                        CFPrefs_SetDouble();
                        daemon = [(ENXPCConnection *)self daemon];
                        [daemon onboardingTriggerRetry:0];
                      }

                      else if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 90, "No current region found, cannot reset availability alert");
                      }

                      goto LABEL_48;
                    }

                    if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 90, "Invalid reset delay");
                    }

                    v156 = ENErrorF(5, "Invalid reset delay: '%f'", v106);
                    v157 = v264[5];
                    v264[5] = v156;
                  }

                  v158 = location;
                  goto LABEL_273;
                }

                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: RawServerConfig");
                }

                region2 = v12[2](v12);
                if (region2 || (-[ENDaemon activeEntity](self->_daemon, "activeEntity"), v75 = objc_claimAutoreleasedReturnValue(), [v75 entity], v76 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v76, "region"), region2 = objc_claimAutoreleasedReturnValue(), v76, v75, region2))
                {
                  configurationManager6 = [(ENDaemon *)self->_daemon configurationManager];
                  configurationStore3 = [configurationManager6 configurationStore];
                  v79 = [configurationStore3 serverConfigurationResponseForRegion:region2];

                  if (!v79)
                  {
                    v132 = ENErrorF(11, "%@ configuration not found", region2);
                    goto LABEL_267;
                  }

                  v80 = (v254 + 5);
                  v214 = v254[5];
                  NSAppendPrintF_safe(&v214, "%@\n", v79);
                  objc_storeStrong(v80, v214);

                  goto LABEL_163;
                }

                v13 = ENErrorF(11, "No active region");
LABEL_36:
                v15 = v264[5];
                v264[5] = v13;

LABEL_85:
LABEL_86:
                _Block_object_dispose(&v253, 8);

LABEL_87:
                goto LABEL_88;
              }

              if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: ServerFetch");
              }

              region4 = v12[2](v12);
              if (!region4)
              {
                activeEntity3 = [(ENDaemon *)self->_daemon activeEntity];
                entity3 = [activeEntity3 entity];
                region4 = [entity3 region];

                if (!region4)
                {
                  v13 = ENErrorF(1, "No active region");
                  goto LABEL_36;
                }
              }

              v68 = v171[2]();
              v69 = +[ENLoggingPrefs sharedENLoggingPrefs];
              isSensitiveLoggingAllowed = [v69 isSensitiveLoggingAllowed];

              if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "QA try to override ramp mode: %@: %@", region4, v68);
              }

              if ([v68 length])
              {
                integerValue2 = [v68 integerValue];
                if (integerValue2 > 3)
                {
                  if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 90, "Current ramp mode supported: {\n profile-select(%lu)\n manual-select(%lu)\n random-select(%lu)\n}", 1, 2, 3);
                  }

                  v89 = ENErrorF(5, "Unsupported rampMode: '%lu'", integerValue2);
                  v90 = v264[5];
                  v264[5] = v89;

                  goto LABEL_186;
                }

                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "QA overriding valid ramp mode for region %@: %lu", region4, integerValue2);
                }

                configurationManager7 = [(ENDaemon *)self->_daemon configurationManager];
                [configurationManager7 overrideRampModeForRegion:region4 rampMode:integerValue2];
              }

              objc_initWeak(&location, self);
              configurationManager8 = [(ENDaemon *)self->_daemon configurationManager];
              v215[0] = MEMORY[0x277D85DD0];
              v215[1] = 3221225472;
              v215[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_8;
              v215[3] = &unk_278FD1BE0;
              v215[4] = self;
              v217 = &v253;
              v216 = v5;
              objc_copyWeak(&v218, &location);
              [configurationManager8 fetchServerConfigurationsForRegion:region4 userInitiated:0 withCompletion:v215];

              objc_destroyWeak(&v218);
              objc_destroyWeak(&location);
LABEL_186:

              goto LABEL_85;
            }

            v30 = ENErrorF(2, "Diag error test");
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              v53 = CUPrintNSError();
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: ErrorTest: %@", v53);
            }

            v56 = NSErrorF(*MEMORY[0x277CCA598], 4294960569, "Diag leaf error test");
            v57 = ENNestedErrorF(v56, 11, "Diag nested error test");
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              v58 = CUPrintNSError();
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcDiagnosticControl:]", 30, "Diags: ErrorTest nested: %@", v58);
            }

            v59 = (v254 + 5);
            v221 = v254[5];
            NSAppendPrintF_safe(&v221, "");
            objc_storeStrong(v59, v221);
          }
        }

        goto LABEL_77;
      }

      v71 = ENErrorF(2, "Non-dict input params");
    }

    else
    {
      v71 = ENErrorF(2, "No input params");
    }

    v72 = v264[5];
    v264[5] = v71;

    goto LABEL_87;
  }

LABEL_88:
  v6[2](v6);

  _Block_object_dispose(&v263, 8);
}

void *__41__ENXPCConnection__xpcDiagnosticControl___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcDiagnosticControl:]_block_invoke", 90, "### DiagnosticControl failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

id __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_2(uint64_t a1)
{
  CUXPCDecodeNSString();
  CUXPCDecodeNSString();

  return 0;
}

id __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_3(uint64_t a1)
{
  CUXPCDecodeNSString();
  v1 = 0;

  return v1;
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) regionMonitor];
  v3 = [v2 testRegionDataSource];

  v4 = [*(*(a1 + 32) + 32) regionMonitor];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 testRegionDataSource];
    [v6 regionChanged];
  }

  else
  {
    [v4 resetRegionMonitor];
  }

  v7 = *(*(a1 + 56) + 8);
  v14 = *(a1 + 40);
  obj = *(v7 + 40);
  NSAppendPrintF_safe(&obj, "Diags: Test Region Configured to - \n %@ \n", v14);
  objc_storeStrong((v7 + 40), obj);
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_4_cold_1();
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  v9 = reply;
  if (reply)
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v10 = *(*(*(a1 + 56) + 8) + 40);
    }

    else
    {
      v10 = @"None\n";
    }

    v11 = reply;
    v12 = [(__CFString *)v10 UTF8String];
    if (v12)
    {
      xpc_dictionary_set_string(v11, "oStr", v12);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _xpcSendMessage:v11];
  }

  else
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_4_cold_2();
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_5(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) regionMonitor];
  [v2 resetRegionMonitor];

  v3 = [*(*(a1 + 32) + 32) regionMonitor];
  v4 = [v3 getCurrentRegionVisitWithError:0];

  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  NSAppendPrintF_safe(&obj, "Diags: Test Region Removed - \n %@ \n", v4);
  objc_storeStrong((v5 + 40), obj);
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_5_cold_1(v4);
  }

  reply = xpc_dictionary_create_reply(*(a1 + 40));
  v7 = reply;
  if (reply)
  {
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v8 = *(*(*(a1 + 48) + 8) + 40);
    }

    else
    {
      v8 = @"None\n";
    }

    v9 = reply;
    v10 = [(__CFString *)v8 UTF8String];
    if (v10)
    {
      xpc_dictionary_set_string(v9, "oStr", v10);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _xpcSendMessage:v9];
  }

  else
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_5_cold_2();
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_6(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) regionMonitor];
  [v2 updateRegionMonitorMonitoringMode:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];

  v3 = *(*(a1 + 56) + 8);
  v10 = *(a1 + 40);
  obj = *(v3 + 40);
  NSAppendPrintF_safe(&obj, "Diags: Set Region Monitoring Mode - \n %@ \n", v10);
  objc_storeStrong((v3 + 40), obj);
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_6_cold_1();
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  v5 = reply;
  if (reply)
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v6 = *(*(*(a1 + 56) + 8) + 40);
    }

    else
    {
      v6 = @"None\n";
    }

    v7 = reply;
    v8 = [(__CFString *)v6 UTF8String];
    if (v8)
    {
      xpc_dictionary_set_string(v7, "oStr", v8);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _xpcSendMessage:v7];
  }

  else
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_6_cold_2();
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_7(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) regionMonitor];
  v3 = [v2 getMonitoringMode];

  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  NSAppendPrintF_safe(&obj, "Diags: Get Region Monitoring Mode - \n %u \n", v3);
  objc_storeStrong((v4 + 40), obj);
  v5 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v6 = [v5 isSensitiveLoggingAllowed];

  if (v6 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_7_cold_1(v3);
  }

  reply = xpc_dictionary_create_reply(*(a1 + 40));
  v8 = reply;
  if (reply)
  {
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v9 = *(*(*(a1 + 48) + 8) + 40);
    }

    else
    {
      v9 = @"None";
    }

    v10 = reply;
    v11 = [(__CFString *)v9 UTF8String];
    if (v11)
    {
      xpc_dictionary_set_string(v10, "oStr", v11);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _xpcSendMessage:v10];
  }

  else
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_7_cold_2();
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_8_cold_1(v5);
  }

  v7 = *(*(a1 + 32) + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_9;
  block[3] = &unk_278FD1BB8;
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  objc_copyWeak(&v16, (a1 + 56));
  dispatch_async(v7, block);
  objc_destroyWeak(&v16);
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_9(uint64_t a1)
{
  v2 = *(*(a1 + 56) + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  obj = v4;
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(a1 + 40);
  }

  NSAppendPrintF_safe(&obj, "%@\n", v5);
  objc_storeStrong(v3, obj);
  reply = xpc_dictionary_create_reply(*(a1 + 48));
  v7 = reply;
  if (reply)
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v8 = *(*(*(a1 + 56) + 8) + 40);
    }

    else
    {
      v8 = @"None\n";
    }

    v9 = reply;
    v10 = [(__CFString *)v8 UTF8String];
    if (v10)
    {
      xpc_dictionary_set_string(v9, "oStr", v10);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _xpcSendMessage:v9];
  }

  else
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_9_cold_1();
  }
}

- (void)_xpcDiagnosticLog:(id)log
{
  logCopy = log;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __37__ENXPCConnection__xpcDiagnosticLog___block_invoke;
  v23[3] = &unk_278FD10D0;
  v25 = &v26;
  v23[4] = self;
  v5 = logCopy;
  v24 = v5;
  v6 = MEMORY[0x24C214430](v23);
  v7 = (v27 + 5);
  obj = v27[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = xpc_dictionary_get_value(v5, "parm");
    v10 = v9;
    if (v9)
    {
      if (MEMORY[0x24C214BB0](v9) == MEMORY[0x277D86468])
      {
        if (!xpc_dictionary_get_string(v10, "iStr"))
        {
          goto LABEL_6;
        }

        v11 = LogControl();
        if (!v11)
        {
          goto LABEL_6;
        }

        v19 = NSErrorF(*MEMORY[0x277CCA598], v11, "LogControl failed");
        v20 = ENNestedErrorF(v19, 1, "LogControl failed");
        v21 = v27[5];
        v27[5] = v20;
      }

      else
      {
        v17 = ENErrorF(2, "Non-dict input");
        v18 = v27[5];
        v27[5] = v17;
      }

LABEL_10:

      goto LABEL_11;
    }

LABEL_6:
    v12 = LogShow();
    if (v12)
    {
      v14 = NSErrorF(*MEMORY[0x277CCA598], v12, "LogShow failed");
      v15 = ENNestedErrorF(v14, 1, "LogShow failed");
      v16 = v27[5];
      v27[5] = v15;
    }

    else
    {
      reply = xpc_dictionary_create_reply(v5);
      v14 = reply;
      if (reply)
      {
        xpc_dictionary_set_string(reply, "oStr", 0);
        free(0);
        [(ENXPCConnection *)self _xpcSendMessage:v14];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcDiagnosticLog:]", 90, "### DiagnosticLog create reply failed");
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  v6[2](v6);

  _Block_object_dispose(&v26, 8);
}

void *__37__ENXPCConnection__xpcDiagnosticLog___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcDiagnosticLog:]_block_invoke", 90, "### DiagnosticLog failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcDiagnosticShow:(id)show
{
  showCopy = show;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __38__ENXPCConnection__xpcDiagnosticShow___block_invoke;
  v29[3] = &unk_278FD10D0;
  v31 = &v32;
  v29[4] = self;
  v5 = showCopy;
  v30 = v5;
  v6 = MEMORY[0x24C214430](v29);
  v7 = v33;
  obj = v33[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    v9 = xpc_dictionary_get_value(v5, "parm");
    v10 = v9;
    if (!v9)
    {
      goto LABEL_8;
    }

    if (MEMORY[0x24C214BB0](v9) != MEMORY[0x277D86468])
    {
      v12 = ENErrorF(2, "Non-dict input params");
      goto LABEL_7;
    }

    string = xpc_dictionary_get_string(v10, "iStr");
    xpc_dictionary_get_int64(v10, "vrbL");
    if (string)
    {
      if (strcasecmp(string, "adv"))
      {
        v12 = ENErrorF(2, "Unknown show type: '%s'", string);
LABEL_7:
        v13 = 0;
        v14 = v33[5];
        v33[5] = v12;
LABEL_17:

        goto LABEL_18;
      }

      btTracingAppID = [(ENDaemon *)self->_daemon btTracingAppID];

      if (!btTracingAppID)
      {
        v24 = 0;
        NSAppendPrintF_safe(&v24, "### Not enabled\n");
        v13 = v24;
LABEL_10:
        reply = xpc_dictionary_create_reply(v5);
        v14 = reply;
        if (reply)
        {
          if (v13)
          {
            v18 = v13;
          }

          else
          {
            v18 = @"None\n";
          }

          v14 = reply;
          uTF8String = [(__CFString *)v18 UTF8String];
          if (uTF8String)
          {
            xpc_dictionary_set_string(v14, "oStr", uTF8String);
          }

          [(ENXPCConnection *)self _xpcSendMessage:v14];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcDiagnosticShow:]", 90, "### DiagnosticShow create reply failed");
        }

        goto LABEL_17;
      }

      delegate = [(ENDaemon *)self->_daemon delegate];
      retrieveCurrentAdvertisingPayload = [delegate retrieveCurrentAdvertisingPayload];

      bytes = [retrieveCurrentAdvertisingPayload bytes];
      if ([retrieveCurrentAdvertisingPayload length] < 0x14)
      {
        v25 = 0;
        v23 = &v25;
        NSAppendPrintF(&v25, "### Bad Adv: %.3H\n", bytes, [retrieveCurrentAdvertisingPayload length], 50);
      }

      else
      {
        v26 = 0;
        v23 = &v26;
        NSAppendPrintF(&v26, "RPI %.3H, AEM %.3H\n", bytes, 16, 16, bytes + 16, 4, 4);
      }

      v16 = *v23;
    }

    else
    {
LABEL_8:
      v27 = 0;
      retrieveCurrentAdvertisingPayload = CUDescriptionWithLevel();
      NSAppendPrintF_safe(&v27, "%@", retrieveCurrentAdvertisingPayload);
      v16 = v27;
    }

    v13 = v16;

    goto LABEL_10;
  }

LABEL_18:
  v6[2](v6);

  _Block_object_dispose(&v32, 8);
}

void *__38__ENXPCConnection__xpcDiagnosticShow___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcDiagnosticShow:]_block_invoke", 90, "### DiagnosticShow failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcNotificationTrigger:(id)trigger
{
  triggerCopy = trigger;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__3;
  v50 = __Block_byref_object_dispose__3;
  v51 = 0;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __43__ENXPCConnection__xpcNotificationTrigger___block_invoke;
  v43[3] = &unk_278FD10D0;
  v45 = &v46;
  v43[4] = self;
  v5 = triggerCopy;
  v44 = v5;
  v6 = MEMORY[0x24C214430](v43);
  v7 = (v47 + 5);
  obj = v47[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    int64 = xpc_dictionary_get_int64(v5, "noteType");
    uint64 = xpc_dictionary_get_uint64(v5, "intS");
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    bundleIdentifier = [entity bundleIdentifier];

    string = xpc_dictionary_get_string(v5, "aBid");
    if (string)
    {
      v15 = [objc_alloc(MEMORY[0x277CCACA0]) initWithUTF8String:string];

      bundleIdentifier = v15;
    }

    v16 = (v47 + 5);
    v41 = v47[5];
    v17 = CUXPCDecodeNSString();
    objc_storeStrong(v16, v41);
    if ((v17 & 1) == 0)
    {
      goto LABEL_66;
    }

    activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
    entity2 = [activeEntity2 entity];
    region = [entity2 region];

    v21 = xpc_dictionary_get_value(v5, "regionData");

    if (v21)
    {
      objc_opt_class();
      v22 = (v47 + 5);
      v40 = v47[5];
      v23 = ENXPCDecodeSecureObject();
      objc_storeStrong(v22, v40);

      region = v23;
      if (!v23)
      {
        goto LABEL_66;
      }
    }

    if (int64 > 3)
    {
      switch(int64)
      {
        case 4:
          if (uint64)
          {
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcNotificationTrigger:]", 30, "Set monthly notification trigger : %llu seconds", uint64);
            }

            [(ENDaemon *)self->_daemon monthlyTriggerActivateWithIntervalOverride:uint64];
            goto LABEL_62;
          }

          if ([bundleIdentifier length])
          {
            if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcNotificationTrigger:]", 50, "Triggering monthly notification");
            }

            [(ENDaemon *)self->_daemon postMonthlySummaryNotificationForAppBundleIdentifier:bundleIdentifier];
            goto LABEL_62;
          }

LABEL_74:
          v28 = ENErrorF(2, "No app bundle ID");
          goto LABEL_33;
        case 5:
          if (region)
          {
            v32 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed = [v32 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcNotificationTrigger:]", 50, "Triggering analytics consent notification for %@", region);
            }

            [(ENDaemon *)self->_daemon postAnalyticsOptInNotificationForRegion:region];
            goto LABEL_62;
          }

          break;
        case 6:
          if (region)
          {
            v24 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed2 = [v24 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcNotificationTrigger:]", 50, "Triggering pre-authorize notification for %@", region);
            }

            [(ENDaemon *)self->_daemon postPreAuthorizationNotificationForRegion:region];
            goto LABEL_62;
          }

          break;
        default:
          goto LABEL_32;
      }
    }

    else
    {
      switch(int64)
      {
        case 1:
          if (region)
          {
            v26 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed3 = [v26 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed3 && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcNotificationTrigger:]", 50, "Triggering exposure notification for %@ - %@", region, 0);
            }

            v34 = objc_alloc_init(MEMORY[0x277CC5C68]);
            uUID = [MEMORY[0x277CCAD70] UUID];
            [v34 setIdentifier:uUID];

            v36 = [MEMORY[0x277CBEBC8] URLWithString:@"https://example.com"];
            [v34 setLearnMoreURL:v36];

            [v34 setLocalizedBodyText:@"Example body text."];
            [v34 setLocalizedSubjectText:@"Example Title"];
            date = [MEMORY[0x277CBEAA0] date];
            [v34 setNotificationDate:date];

            [v34 setRegion:region];
            [(ENDaemon *)self->_daemon postExposureNotification:v34];

            goto LABEL_62;
          }

          break;
        case 2:
          if (region)
          {
            v30 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed4 = [v30 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed4 && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcNotificationTrigger:]", 50, "Triggering onboarding notification for %@", region);
            }

            [(ENDaemon *)self->_daemon postOnboardingNotificationForRegion:region];
            goto LABEL_62;
          }

          break;
        case 3:
          if ([bundleIdentifier length])
          {
            if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcNotificationTrigger:]", 50, "Triggering summary notification");
            }

            [(ENDaemon *)self->_daemon postExposureSummaryAccessNotificationWithAppBundleIdentifier:bundleIdentifier string:@"{Example string from the Public Health Agency}"];
LABEL_62:
            reply = xpc_dictionary_create_reply(v5);
            if (reply)
            {
              [(ENXPCConnection *)self _xpcSendMessage:reply];
            }

            else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcNotificationTrigger:]", 90, "### Notification trigger create reply failed");
            }

            goto LABEL_65;
          }

          goto LABEL_74;
        default:
LABEL_32:
          v28 = ENErrorF(15, "Invalid notification type %d", int64);
LABEL_33:
          v29 = v47[5];
          v47[5] = v28;

LABEL_65:
LABEL_66:

          goto LABEL_67;
      }
    }

    v39 = ENErrorF(2, "No region");
    region = v47[5];
    v47[5] = v39;
    goto LABEL_65;
  }

LABEL_67:
  v6[2](v6);

  _Block_object_dispose(&v46, 8);
}

void *__43__ENXPCConnection__xpcNotificationTrigger___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcNotificationTrigger:]_block_invoke", 90, "### Notification trigger failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetActiveRegion:(id)region
{
  regionCopy = region;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__ENXPCConnection__xpcGetActiveRegion___block_invoke;
  v18[3] = &unk_278FD10D0;
  v20 = &v21;
  v18[4] = self;
  v5 = regionCopy;
  v19 = v5;
  v6 = MEMORY[0x24C214430](v18);
  v7 = (v22 + 5);
  obj = v22[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    region = [entity region];

    if (region)
    {
      reply = xpc_dictionary_create_reply(v5);
      if (reply)
      {
        v13 = (v22 + 5);
        v16 = v22[5];
        v14 = ENXPCEncodeSecureObject();
        objc_storeStrong(v13, v16);
        if (v14)
        {
          [(ENXPCConnection *)self _xpcSendMessage:reply];
        }
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetActiveRegion:]", 90, "### GetActiveRegion create reply failed");
      }
    }

    else
    {
      v15 = ENErrorF(16, "No active region selected");
      reply = v22[5];
      v22[5] = v15;
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v21, 8);
}

void *__39__ENXPCConnection__xpcGetActiveRegion___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetActiveRegion:]_block_invoke", 90, "### GetRegionID failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetRegionHistory:(id)history
{
  historyCopy = history;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __40__ENXPCConnection__xpcGetRegionHistory___block_invoke;
  v20[3] = &unk_278FD10D0;
  v22 = &v23;
  v20[4] = self;
  v5 = historyCopy;
  v21 = v5;
  v6 = MEMORY[0x24C214430](v20);
  v7 = (v24 + 5);
  obj = v24[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    regionMonitor = [(ENDaemon *)self->_daemon regionMonitor];
    v18 = 0;
    v10 = [regionMonitor getAllRegionVisitsWithError:&v18];
    v11 = v18;

    if (v11)
    {
      v16 = ENNestedErrorF(v11, 16, "Unable to load Region History");
    }

    else
    {
      if (v10)
      {
        reply = xpc_dictionary_create_reply(v5);
        if (reply)
        {
          v13 = (v24 + 5);
          v17 = v24[5];
          v14 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v17];
          objc_storeStrong(v13, v17);
          v15 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(reply, "rgnHy", v15);
          [(ENXPCConnection *)self _xpcSendMessage:reply];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionHistory:]", 90, "### GetRegionHistory create reply failed");
        }

        goto LABEL_6;
      }

      v16 = ENErrorF(16, "Unable to Get Region History");
    }

    reply = v24[5];
    v24[5] = v16;
LABEL_6:
  }

  v6[2](v6);

  _Block_object_dispose(&v23, 8);
}

void *__40__ENXPCConnection__xpcGetRegionHistory___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionHistory:]_block_invoke", 90, "### GetRegionHistory failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetRegionHistoryEnabled:(id)enabled
{
  enabledCopy = enabled;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__ENXPCConnection__xpcGetRegionHistoryEnabled___block_invoke;
  v17[3] = &unk_278FD10D0;
  v19 = &v20;
  v17[4] = self;
  v5 = enabledCopy;
  v18 = v5;
  v6 = MEMORY[0x24C214430](v17);
  v7 = (v21 + 5);
  obj = v21[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v21 + 5);
    v15 = v21[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v15];
    objc_storeStrong(v9, v15);
    if (v10)
    {
      Int64 = CFPrefs_GetInt64();
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        v12 = "no";
        if (!Int64)
        {
          v12 = "yes";
        }

        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetRegionHistoryEnabled:]", 30, "GetRegionHistoryEnabled: %s", v12);
      }

      reply = xpc_dictionary_create_reply(v5);
      v14 = reply;
      if (reply)
      {
        xpc_dictionary_set_BOOL(reply, "enbd", Int64 == 0);
        [(ENXPCConnection *)self _xpcSendMessage:v14];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionHistoryEnabled:]", 90, "### GetRegionHistoryEnabled create reply failed");
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v20, 8);
}

void *__47__ENXPCConnection__xpcGetRegionHistoryEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionHistoryEnabled:]_block_invoke", 90, "### GetRegionHistoryEnabled failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcSetRegionHistoryEnabled:(id)enabled
{
  enabledCopy = enabled;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__ENXPCConnection__xpcSetRegionHistoryEnabled___block_invoke;
  v16[3] = &unk_278FD10D0;
  v18 = &v19;
  v16[4] = self;
  v5 = enabledCopy;
  v17 = v5;
  v6 = MEMORY[0x24C214430](v16);
  v7 = (v20 + 5);
  obj = v20[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v20 + 5);
    v14 = v20[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v14];
    objc_storeStrong(v9, v14);
    if (v10)
    {
      v11 = xpc_dictionary_get_BOOL(v5, "enbd");
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        v12 = "no";
        if (v11)
        {
          v12 = "yes";
        }

        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetRegionHistoryEnabled:]", 30, "SetRegionHistoryEnabled: %s", v12);
      }

      CFPrefs_SetValue();
      [(ENDaemon *)self->_daemon prefsChanged];
      reply = xpc_dictionary_create_reply(v5);
      if (reply)
      {
        [(ENXPCConnection *)self _xpcSendMessage:reply];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetRegionHistoryEnabled:]", 90, "### SetRegionHistoryEnabled create reply failed");
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v19, 8);
}

void *__47__ENXPCConnection__xpcSetRegionHistoryEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetRegionHistoryEnabled:]_block_invoke", 90, "### SetRegionHistoryEnabled failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetRegionMonitorEnabled:(id)enabled
{
  enabledCopy = enabled;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__ENXPCConnection__xpcGetRegionMonitorEnabled___block_invoke;
  v18[3] = &unk_278FD10D0;
  v20 = &v21;
  v18[4] = self;
  v5 = enabledCopy;
  v19 = v5;
  v6 = MEMORY[0x24C214430](v18);
  v7 = (v22 + 5);
  obj = v22[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v22 + 5);
    v16 = v22[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v16];
    objc_storeStrong(v9, v16);
    if (v10)
    {
      regionMonitor = [(ENDaemon *)self->_daemon regionMonitor];
      getAuthorizationState = [regionMonitor getAuthorizationState];

      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        v13 = "no";
        if (getAuthorizationState == 2)
        {
          v13 = "yes";
        }

        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetRegionMonitorEnabled:]", 30, "GetRegionMonitorEnabled: %s", v13);
      }

      reply = xpc_dictionary_create_reply(v5);
      v15 = reply;
      if (reply)
      {
        xpc_dictionary_set_BOOL(reply, "enbd", getAuthorizationState == 2);
        [(ENXPCConnection *)self _xpcSendMessage:v15];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionMonitorEnabled:]", 90, "### GetRegionMonitorEnabled create reply failed");
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v21, 8);
}

void *__47__ENXPCConnection__xpcGetRegionMonitorEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionMonitorEnabled:]_block_invoke", 90, "### GetRegionMonitorEnabled failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetRegionConfig:(id)config
{
  configCopy = config;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__ENXPCConnection__xpcGetRegionConfig___block_invoke;
  v16[3] = &unk_278FD10D0;
  v18 = &v19;
  v16[4] = self;
  v5 = configCopy;
  v17 = v5;
  v6 = MEMORY[0x24C214430](v16);
  v7 = (v20 + 5);
  obj = v20[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    region = [entity region];

    if (region)
    {
      int64 = xpc_dictionary_get_int64(v5, "cty");
      switch(int64)
      {
        case 0:
          [(ENXPCConnection *)self _xpcGetRegionSystemConfig:v5];
          goto LABEL_11;
        case 10:
          [(ENXPCConnection *)self _xpcGetRegionServerConfig:v5];
          goto LABEL_11;
        case 20:
          [(ENXPCConnection *)self _xpcGetRegionAgencyConfig:v5];
LABEL_11:

          goto LABEL_12;
      }

      v13 = ENErrorF(15, "Invalid Configuration Type");
    }

    else
    {
      v13 = ENErrorF(16, "No active region is selected");
    }

    v14 = v20[5];
    v20[5] = v13;

    goto LABEL_11;
  }

LABEL_12:
  v6[2](v6);

  _Block_object_dispose(&v19, 8);
}

void *__39__ENXPCConnection__xpcGetRegionConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionConfig:]_block_invoke", 90, "### GetCloudServerConfig failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetRegionSystemConfig:(id)config
{
  configCopy = config;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__ENXPCConnection__xpcGetRegionSystemConfig___block_invoke;
  v17[3] = &unk_278FD10D0;
  v19 = &v20;
  v17[4] = self;
  v5 = configCopy;
  v18 = v5;
  v6 = MEMORY[0x24C214430](v17);
  activeEntity = [(ENDaemon *)self->_daemon activeEntity];
  entity = [activeEntity entity];
  region = [entity region];

  if (region)
  {
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];
      v13 = [configurationStore configurationForRegion:region];

      if (v13)
      {
        v14 = (v21 + 5);
        obj = v21[5];
        v15 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&obj];
        objc_storeStrong(v14, obj);
        xpc_dictionary_set_data(reply, "svrCfg", [v15 bytes], objc_msgSend(v15, "length"));
      }

      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionSystemConfig:]", 90, "### GetRegionSystemConfig create reply failed");
    }
  }

  else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionSystemConfig:]", 90, "### GetRegionSystemConfig no active region is selected");
  }

  v6[2](v6);
  _Block_object_dispose(&v20, 8);
}

void *__45__ENXPCConnection__xpcGetRegionSystemConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionSystemConfig:]_block_invoke", 90, "### GetRegionSystemConfig failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetRegionServerConfig:(id)config
{
  configCopy = config;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __45__ENXPCConnection__xpcGetRegionServerConfig___block_invoke;
  v20[3] = &unk_278FD10D0;
  v22 = &v23;
  v20[4] = self;
  v5 = configCopy;
  v21 = v5;
  v6 = MEMORY[0x24C214430](v20);
  objc_opt_class();
  v7 = (v24 + 5);
  obj = v24[5];
  v8 = ENXPCDecodeSecureObjectIfPresent();
  objc_storeStrong(v7, obj);
  if (v8 || !v24[5] && (-[ENDaemon activeEntity](self->_daemon, "activeEntity"), v16 = objc_claimAutoreleasedReturnValue(), [v16 entity], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "region"), v8 = objc_claimAutoreleasedReturnValue(), v17, v16, v8))
  {
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];
      v12 = [configurationStore serverConfigurationForRegion:v8];

      if (v12)
      {
        v13 = (v24 + 5);
        v18 = v24[5];
        v14 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v18];
        objc_storeStrong(v13, v18);
        xpc_dictionary_set_data(reply, "svrCfg", [v14 bytes], objc_msgSend(v14, "length"));
        [(ENXPCConnection *)self _xpcSendMessage:reply];
      }

      else
      {
        v15 = ENErrorF(16, "No configuration found for region: %@", v8);
        v14 = v24[5];
        v24[5] = v15;
      }
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionServerConfig:]", 90, "### GetRegionServerConfig create reply failed");
    }
  }

  else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionServerConfig:]", 90, "### GetRegionServerConfig no active region is available");
  }

  v6[2](v6);

  _Block_object_dispose(&v23, 8);
}

void *__45__ENXPCConnection__xpcGetRegionServerConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionServerConfig:]_block_invoke", 90, "### GetRegionServerConfig failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetRegionAgencyConfig:(id)config
{
  configCopy = config;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__ENXPCConnection__xpcGetRegionAgencyConfig___block_invoke;
  v17[3] = &unk_278FD10D0;
  v19 = &v20;
  v17[4] = self;
  v5 = configCopy;
  v18 = v5;
  v6 = MEMORY[0x24C214430](v17);
  activeEntity = [(ENDaemon *)self->_daemon activeEntity];
  entity = [activeEntity entity];
  region = [entity region];

  if (region)
  {
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];
      v13 = [configurationStore agencyConfigurationForRegion:region];

      if (v13)
      {
        v14 = (v21 + 5);
        obj = v21[5];
        v15 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&obj];
        objc_storeStrong(v14, obj);
        xpc_dictionary_set_data(reply, "svrCfg", [v15 bytes], objc_msgSend(v15, "length"));
      }

      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionAgencyConfig:]", 90, "### GetRegionServerConfig create reply failed");
    }
  }

  else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionAgencyConfig:]", 90, "### GetRegionServerConfig no active region is selected");
  }

  v6[2](v6);
  _Block_object_dispose(&v20, 8);
}

void *__45__ENXPCConnection__xpcGetRegionAgencyConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRegionAgencyConfig:]_block_invoke", 90, "### GetRegionServerConfig failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetAllRegionConfig:(id)config
{
  configCopy = config;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__ENXPCConnection__xpcGetAllRegionConfig___block_invoke;
  v13[3] = &unk_278FD10D0;
  v15 = &v16;
  v13[4] = self;
  v5 = configCopy;
  v14 = v5;
  v6 = MEMORY[0x24C214430](v13);
  v7 = (v17 + 5);
  obj = v17[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    int64 = xpc_dictionary_get_int64(v5, "cty");
    if (int64)
    {
      if (int64 == 10)
      {
        [(ENXPCConnection *)self _xpcGetAllRegionServerConfig:v5];
      }

      else if (int64 == 20)
      {
        [(ENXPCConnection *)self _xpcGetAllRegionAgencyConfig:v5];
      }

      else
      {
        v10 = ENErrorF(15, "Invalid Configuration Type");
        v11 = v17[5];
        v17[5] = v10;
      }
    }

    else
    {
      [(ENXPCConnection *)self _xpcGetAllRegionGeneralConfig:v5];
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v16, 8);
}

void *__42__ENXPCConnection__xpcGetAllRegionConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetAllRegionConfig:]_block_invoke", 90, "### GetAllRegionConfig failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetAllRegionGeneralConfig:(id)config
{
  configCopy = config;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__3;
  v14[4] = __Block_byref_object_dispose__3;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__ENXPCConnection__xpcGetAllRegionGeneralConfig___block_invoke;
  v11[3] = &unk_278FD10D0;
  v13 = v14;
  v11[4] = self;
  v5 = configCopy;
  v12 = v5;
  v6 = MEMORY[0x24C214430](v11);
  reply = xpc_dictionary_create_reply(v5);
  if (reply)
  {
    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__ENXPCConnection__xpcGetAllRegionGeneralConfig___block_invoke_2;
    v10[3] = &unk_278FD1C08;
    v10[5] = self;
    v10[6] = v14;
    v10[4] = reply;
    [configurationStore allRegionConfigurationsWithCompletion:v10];
  }

  else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetAllRegionGeneralConfig:]", 90, "### GetAllRegionGeneralConfig create reply failed");
  }

  v6[2](v6);
  _Block_object_dispose(v14, 8);
}

void *__49__ENXPCConnection__xpcGetAllRegionGeneralConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetAllRegionGeneralConfig:]_block_invoke", 90, "### GetAllRegionGeneralConfig failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __49__ENXPCConnection__xpcGetAllRegionGeneralConfig___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  xpc_dictionary_set_data(*(a1 + 32), "svrCfg", [v4 bytes], objc_msgSend(v4, "length"));
  [*(a1 + 40) _xpcSendMessage:*(a1 + 32)];
}

- (void)_xpcGetAllRegionServerConfig:(id)config
{
  configCopy = config;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke;
  v27[3] = &unk_278FD10D0;
  v29 = &v30;
  v27[4] = self;
  v5 = configCopy;
  v28 = v5;
  v6 = MEMORY[0x24C214430](v27);
  v19 = v6;
  configurationManager = [(ENDaemon *)self->_daemon configurationManager];
  configurationManager2 = [(ENDaemon *)self->_daemon configurationManager];
  configurationStore = [configurationManager2 configurationStore];

  if (!configurationManager || !configurationStore)
  {
    v18 = ENErrorF(5, "Configurations are not available");
    reply = v31[5];
    v31[5] = v18;
    goto LABEL_28;
  }

  reply = xpc_dictionary_create_reply(v5);
  if (reply)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_2;
    v23[3] = &unk_278FD1C80;
    v23[4] = configurationManager;
    v23[5] = self;
    v26 = &v30;
    v11 = v5;
    v24 = v11;
    v25 = reply;
    v12 = MEMORY[0x24C214430](v23);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_5;
    v22[3] = &unk_278FD1CD0;
    v22[4] = configurationStore;
    v22[5] = self;
    v22[6] = reply;
    v13 = MEMORY[0x24C214430](v22);
    objc_opt_class();
    v14 = v31;
    obj = v31[5];
    v15 = ENXPCDecodeSecureObjectIfPresent();
    objc_storeStrong(v14 + 5, obj);
    if (v15)
    {
      if (!xpc_dictionary_get_BOOL(v11, "frcFet"))
      {
        int64 = xpc_dictionary_get_int64(v11, "feRsn");
        switch(int64)
        {
          case 0:
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetAllRegionServerConfig:]", 30, "Fetch server config for region %@ from Cache, fetchReason: %u", v15, 0);
            }

            (v13)[2](v13, v15);
            goto LABEL_27;
          case 1:
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              v17 = 1;
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetAllRegionServerConfig:]", 30, "Fetch server config for region %@ from Server, userInitiated: YES, fetchReason: %u", v15, 1);
            }

            else
            {
              v17 = 1;
            }

            break;
          case 2:
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetAllRegionServerConfig:]", 30, "Fetch server config for region %@ from Server, userInitiated: NO, fetchReason: %u", v15, 2);
            }

            v17 = 0;
            break;
          default:
            goto LABEL_27;
        }

        (v12)[2](v12, v15, v17);
        goto LABEL_27;
      }

      (v12)[2](v12, v15, 0);
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_8;
      v20[3] = &unk_278FD1C08;
      v20[5] = self;
      v20[6] = &v30;
      v20[4] = reply;
      [configurationStore allRegionServerConfigurationsWithCompletion:v20];
    }

LABEL_27:

    v6 = v19;
    goto LABEL_28;
  }

  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetAllRegionServerConfig:]", 90, "### GetAllRegionServerConfig create reply failed");
  }

LABEL_28:

  v6[2](v6);
  _Block_object_dispose(&v30, 8);
}

void *__48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetAllRegionServerConfig:]_block_invoke", 90, "### GetAllRegionServerConfig failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_3;
  v11[3] = &unk_278FD1C58;
  v15 = a1[8];
  v6 = a1[4];
  v7 = a1[6];
  v11[4] = a1[5];
  v12 = v5;
  v8 = v7;
  v9 = a1[7];
  v13 = v8;
  v14 = v9;
  v10 = v5;
  [v6 fetchServerConfigurationsForRegion:v10 userInitiated:a3 withCompletion:v11];
}

void __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_4;
  block[3] = &unk_278FD1C30;
  v14 = v6;
  v15 = v5;
  v18 = *(a1 + 64);
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = *(a1 + 32);
  v12 = v8;
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = *(a1 + 56);
  v16 = v12;
  v17 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

uint64_t __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_4(void *a1)
{
  v2 = a1[4];
  if (v2 || !a1[5])
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v7 = _LogCategory_Initialize(), v2 = a1[4], v7))
      {
        v3 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetAllRegionServerConfig:]_block_invoke_4", 90, "### GetRegionServerConfig failed: %@", v3);

        v2 = a1[4];
      }
    }

    v8 = ENNestedErrorF(v2, 11, "Unable to locate server configuration for region: %@", a1[6]);
    v9 = *(a1[10] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(a1[10] + 8) + 40);
    v12 = a1[7];
    v13 = a1[8];

    return [v12 _xpcSendReplyError:v11 request:v13];
  }

  else
  {
    v5 = a1[6];
    v4 = a1[7];

    return [v4 _processServerResponseConfigurationsForRegion:v5 serverResponses:? request:?];
  }
}

void __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 countryCode];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_6;
  v8[3] = &unk_278FD15A8;
  v6 = a1[6];
  v8[4] = a1[5];
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v4 allCachedServerResponseConfigurationsWithCountryCode:v5 completion:v8];
}

void __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_6(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(v5 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_7;
  v8[3] = &unk_278FD1CA8;
  v8[4] = v5;
  v9 = v4;
  v10 = v3;
  v11 = a1[6];
  v7 = v3;
  dispatch_async(v6, v8);
}

void __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  xpc_dictionary_set_data(*(a1 + 32), "svrCfg", [v4 bytes], objc_msgSend(v4, "length"));
  [*(a1 + 40) _xpcSendMessage:*(a1 + 32)];
}

- (void)_processServerResponseConfigurationsForRegion:(id)region serverResponses:(id)responses request:(id)request
{
  v83[1] = *MEMORY[0x277D85DE8];
  regionCopy = region;
  responsesCopy = responses;
  requestCopy = request;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__3;
  v78 = __Block_byref_object_dispose__3;
  v79 = 0;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __89__ENXPCConnection__processServerResponseConfigurationsForRegion_serverResponses_request___block_invoke;
  v71[3] = &unk_278FD10D0;
  v73 = &v74;
  selfCopy = self;
  v71[4] = self;
  xdict = requestCopy;
  v72 = xdict;
  v52 = MEMORY[0x24C214430](v71);
  configurationManager = [(ENDaemon *)self->_daemon configurationManager];
  configurationManager2 = [(ENDaemon *)self->_daemon configurationManager];
  configurationStore = [configurationManager2 configurationStore];

  if (!configurationManager || !configurationStore)
  {
    v50 = ENErrorF(5, "Configurations are not available");
    v49 = v75[5];
    v75[5] = v50;
    goto LABEL_27;
  }

  v11 = [configurationStore serverConfigurationForRegion:regionCopy];
  v51 = v11;
  if (!v11)
  {
    v58 = [MEMORY[0x277CBEB10] arrayWithCapacity:{objc_msgSend(responsesCopy, "count")}];
    v59 = [MEMORY[0x277CBEB10] arrayWithCapacity:{objc_msgSend(responsesCopy, "count")}];
    v57 = [MEMORY[0x277CBEB10] arrayWithCapacity:{objc_msgSend(responsesCopy, "count")}];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v23 = responsesCopy;
    v24 = [v23 countByEnumeratingWithState:&v64 objects:v80 count:16];
    if (!v24)
    {
      goto LABEL_21;
    }

    v25 = *v65;
    while (1)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v65 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = [objc_alloc(MEMORY[0x277CC5CD0]) initWithServerResponseDictionary:*(*(&v64 + 1) + 8 * i)];
        region = [v27 region];
        if ([region isEqual:regionCopy])
        {
        }

        else
        {
          region2 = [v27 region];
          v30 = [region2 isCountryCodeEqualToRegion:regionCopy];

          if (!v30)
          {
            goto LABEL_19;
          }
        }

        [v59 addObject:v27];
        region3 = [v27 region];
        v32 = [configurationStore configurationForRegion:region3];

        if (v32)
        {
          [v58 addObject:v32];
        }

        region4 = [v32 region];
        v34 = [configurationStore agencyConfigurationForRegion:region4];

        if (v34)
        {
          [v57 addObject:v34];
        }

LABEL_19:
      }

      v24 = [v23 countByEnumeratingWithState:&v64 objects:v80 count:16];
      if (!v24)
      {
LABEL_21:

        v35 = (v75 + 5);
        v63 = v75[5];
        v36 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v59 requiringSecureCoding:1 error:&v63];
        objc_storeStrong(v35, v63);
        v37 = v36;
        xpc_dictionary_set_data(xdict, "svrCfg", [v36 bytes], objc_msgSend(v36, "length"));
        v38 = (v75 + 5);
        v62 = v75[5];
        v39 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v58 requiringSecureCoding:1 error:&v62];
        objc_storeStrong(v38, v62);

        v40 = v39;
        xpc_dictionary_set_data(xdict, "rgnCfg", [v39 bytes], objc_msgSend(v39, "length"));
        v41 = (v75 + 5);
        v61 = v75[5];
        v42 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v57 requiringSecureCoding:1 error:&v61];
        objc_storeStrong(v41, v61);

        v43 = v42;
        xpc_dictionary_set_data(xdict, "agnCfg", [v42 bytes], objc_msgSend(v42, "length"));

        goto LABEL_26;
      }
    }
  }

  v12 = MEMORY[0x277CCAAB8];
  v83[0] = v11;
  v13 = [MEMORY[0x277CBEA68] arrayWithObjects:v83 count:1];
  v14 = (v75 + 5);
  obj = v75[5];
  v15 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&obj];
  objc_storeStrong(v14, obj);

  v16 = v15;
  xpc_dictionary_set_data(xdict, "svrCfg", [v15 bytes], objc_msgSend(v15, "length"));
  v17 = [configurationStore configurationForRegion:regionCopy];
  v59 = v17;
  if (v17)
  {
    v18 = MEMORY[0x277CCAAB8];
    v82 = v17;
    v19 = [MEMORY[0x277CBEA68] arrayWithObjects:&v82 count:1];
    v20 = (v75 + 5);
    v69 = v75[5];
    v21 = [v18 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v69];
    objc_storeStrong(v20, v69);

    v22 = v21;
    xpc_dictionary_set_data(xdict, "rgnCfg", [v21 bytes], objc_msgSend(v21, "length"));
  }

  else
  {
    v21 = v15;
  }

  v44 = [configurationStore agencyConfigurationForRegion:regionCopy];
  v57 = v44;
  if (v44)
  {
    v45 = MEMORY[0x277CCAAB8];
    v81 = v44;
    v46 = [MEMORY[0x277CBEA68] arrayWithObjects:&v81 count:1];
    v47 = (v75 + 5);
    v68 = v75[5];
    v58 = [v45 archivedDataWithRootObject:v46 requiringSecureCoding:1 error:&v68];
    objc_storeStrong(v47, v68);

    v48 = v58;
    xpc_dictionary_set_data(xdict, "agnCfg", [v58 bytes], objc_msgSend(v58, "length"));
  }

  else
  {
    v58 = v21;
  }

LABEL_26:

  [(ENXPCConnection *)selfCopy _xpcSendMessage:xdict];
  v49 = v51;
LABEL_27:

  v52[2](v52);
  _Block_object_dispose(&v74, 8);
}

void *__89__ENXPCConnection__processServerResponseConfigurationsForRegion_serverResponses_request___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _processServerResponseConfigurationsForRegion:serverResponses:request:]_block_invoke", 90, "### _processServerResponseConfigurationsForRegion failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetAllRegionAgencyConfig:(id)config
{
  configCopy = config;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__ENXPCConnection__xpcGetAllRegionAgencyConfig___block_invoke;
  v12[3] = &unk_278FD10D0;
  v14 = &v15;
  v12[4] = self;
  v5 = configCopy;
  v13 = v5;
  v6 = MEMORY[0x24C214430](v12);
  if (xpc_dictionary_get_string(v5, "loc"))
  {
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __48__ENXPCConnection__xpcGetAllRegionAgencyConfig___block_invoke_2;
      v11[3] = &unk_278FD1C08;
      v11[5] = self;
      v11[6] = &v15;
      v11[4] = reply;
      [configurationStore allAgencyServerRegionConfigurationsWithCompletion:v11];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetAllRegionAgencyConfig:]", 90, "### GetAllRegionAgencyConfig create reply failed");
    }
  }

  else
  {
    v10 = ENErrorF(2, "### GetAllRegionAgencyConfig Invalid Locale");
    reply = v16[5];
    v16[5] = v10;
  }

  v6[2](v6);
  _Block_object_dispose(&v15, 8);
}

void *__48__ENXPCConnection__xpcGetAllRegionAgencyConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetAllRegionAgencyConfig:]_block_invoke", 90, "### GetAllRegionAgencyConfig failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __48__ENXPCConnection__xpcGetAllRegionAgencyConfig___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  xpc_dictionary_set_data(*(a1 + 32), "svrCfg", [v4 bytes], objc_msgSend(v4, "length"));
  [*(a1 + 40) _xpcSendMessage:*(a1 + 32)];
}

- (void)_xpcGetSubdivisionList:(id)list
{
  v52 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v7 = listCopy;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (listCopy = _LogCategory_Initialize(), listCopy))
    {
      [(ENXPCConnection *)listCopy _xpcGetSubdivisionList:v5, v6];
    }
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__3;
  v49 = __Block_byref_object_dispose__3;
  v50 = 0;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __42__ENXPCConnection__xpcGetSubdivisionList___block_invoke;
  v42[3] = &unk_278FD10D0;
  v44 = &v45;
  v42[4] = self;
  v8 = v7;
  v43 = v8;
  v9 = MEMORY[0x24C214430](v42);
  objc_opt_class();
  v10 = (v46 + 5);
  obj = v46[5];
  v11 = ENXPCDecodeSecureObjectIfPresent();
  objc_storeStrong(v10, obj);
  if (v11)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__3;
    v39 = __Block_byref_object_dispose__3;
    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];
    v40 = [configurationStore subdivisionListForRegion:v11];

    v14 = xpc_array_create(0, 0);
    if (v36[5])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = v36[5];
      v16 = [v15 countByEnumeratingWithState:&v24 objects:v51 count:16];
      if (v16)
      {
        v17 = *v25;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v24 + 1) + 8 * i);
            v20 = [v19 cStringUsingEncoding:{4, v24}];
            if (v20)
            {
              xpc_array_set_string(v14, 0xFFFFFFFFFFFFFFFFLL, v20);
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v24 objects:v51 count:16];
        }

        while (v16);
      }

      reply = xpc_dictionary_create_reply(v8);
      v22 = reply;
      if (reply)
      {
        xpc_dictionary_set_value(reply, "subCodes", v14);
        [(ENXPCConnection *)self _xpcSendMessage:v22];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetSubdivisionList:]", 90, "### GetSubdivisionList create reply failed", v24);
      }
    }

    else
    {
      objc_initWeak(&location, self);
      configurationManager2 = [(ENDaemon *)self->_daemon configurationManager];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __42__ENXPCConnection__xpcGetSubdivisionList___block_invoke_2;
      v28[3] = &unk_278FD1CF8;
      v32 = &v35;
      v28[4] = self;
      v29 = v11;
      v30 = v14;
      v31 = v8;
      objc_copyWeak(&v33, &location);
      [configurationManager2 fetchServerConfigurationsForRegion:v29 userInitiated:0 withCompletion:v28];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }

    _Block_object_dispose(&v35, 8);
  }

  else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetSubdivisionList:]", 90, "### GetSubdivisionList no country provide");
  }

  v9[2](v9);
  _Block_object_dispose(&v45, 8);
}

void *__42__ENXPCConnection__xpcGetSubdivisionList___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetSubdivisionList:]_block_invoke", 90, "### GetSubdivisionList failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __42__ENXPCConnection__xpcGetSubdivisionList___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) configurationManager];
  v3 = [v2 configurationStore];
  v4 = [v3 subdivisionListForRegion:*(a1 + 40)];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = *(*(*(a1 + 64) + 8) + 40);
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 cStringUsingEncoding:{4, v17}];
        if (v13)
        {
          xpc_array_set_string(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL, v13);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  reply = xpc_dictionary_create_reply(*(a1 + 56));
  v15 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "subCodes", *(a1 + 48));
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained _xpcSendMessage:v15];
  }

  else
  {
    __42__ENXPCConnection__xpcGetSubdivisionList___block_invoke_2_cold_1();
  }
}

- (void)_xpcGetCurrentAgencyConfig:(id)config
{
  configCopy = config;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __46__ENXPCConnection__xpcGetCurrentAgencyConfig___block_invoke;
  v22[3] = &unk_278FD10D0;
  v24 = &v25;
  v22[4] = self;
  v5 = configCopy;
  v23 = v5;
  v6 = MEMORY[0x24C214430](v22);
  v7 = (v26 + 5);
  obj = v26[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    if (!configurationManager)
    {
      if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetCurrentAgencyConfig:]", 90, "### GetRegionConfig no config manager");
      }

      goto LABEL_14;
    }

    if (xpc_dictionary_get_BOOL(v5, "feAll"))
    {
      reply = xpc_dictionary_create_reply(v5);
      if (!reply)
      {
        if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetCurrentAgencyConfig:]", 90, "### GetRegionConfig create reply failed");
        }

        goto LABEL_13;
      }

      configurationStore = [configurationManager configurationStore];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __46__ENXPCConnection__xpcGetCurrentAgencyConfig___block_invoke_2;
      v20[3] = &unk_278FD1C08;
      v20[5] = self;
      v20[6] = &v25;
      v20[4] = reply;
      [configurationStore allAgencyServerRegionConfigurationsWithCompletion:v20];
    }

    else
    {
      activeEntity = [(ENDaemon *)self->_daemon activeEntity];
      entity = [activeEntity entity];
      reply = [entity region];

      if (!reply)
      {
        v18 = ENErrorF(16, "No active region is selected");
        reply = v26[5];
        v26[5] = v18;
        goto LABEL_13;
      }

      configurationStore2 = [configurationManager configurationStore];
      configurationStore = [configurationStore2 agencyConfigurationForRegion:reply];

      v15 = (v26 + 5);
      v19 = v26[5];
      v16 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:configurationStore requiringSecureCoding:1 error:&v19];
      objc_storeStrong(v15, v19);
      if (v16)
      {
        v17 = xpc_dictionary_create_reply(v5);
        if (v17)
        {
          xpc_dictionary_set_data(v17, "svrCfg", [v16 bytes], objc_msgSend(v16, "length"));
          [(ENXPCConnection *)self _xpcSendMessage:v17];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetCurrentAgencyConfig:]", 90, "### GetRegionConfig create reply failed");
        }
      }
    }

LABEL_13:
LABEL_14:
  }

  v6[2](v6);

  _Block_object_dispose(&v25, 8);
}

void *__46__ENXPCConnection__xpcGetCurrentAgencyConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetCurrentAgencyConfig:]_block_invoke", 90, "### GetRegionConfig failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __46__ENXPCConnection__xpcGetCurrentAgencyConfig___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  xpc_dictionary_set_data(*(a1 + 32), "svrCfg", [v4 bytes], objc_msgSend(v4, "length"));
  [*(a1 + 40) _xpcSendMessage:*(a1 + 32)];
}

- (void)_xpcSetDeveloperRegionServerConfig:(id)config
{
  configCopy = config;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __54__ENXPCConnection__xpcSetDeveloperRegionServerConfig___block_invoke;
  v29[3] = &unk_278FD10D0;
  v31 = &v32;
  v29[4] = self;
  v5 = configCopy;
  v30 = v5;
  v6 = MEMORY[0x24C214430](v29);
  v7 = (v33 + 5);
  obj = v33[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    if (![(ENDaemon *)self->_daemon prefDeveloperServerConfiguration])
    {
      v23 = ENErrorF(10, "Developer Server Configuration is Not Enabled");
      v9 = v33[5];
      v33[5] = v23;
      goto LABEL_29;
    }

    v9 = xpc_dictionary_get_value(v5, "svrCfg");
    v10 = _CFXPCCreateCFObjectFromXPCObject();
    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];

    if (!v10)
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetDeveloperRegionServerConfig:]", 30, "Clear Developer Server Configuration and Subdivision List.");
      }

      [configurationStore clearTemporaryCountrySubdivisionList];
      [configurationStore clearTemporaryServerConfigurations];
      goto LABEL_26;
    }

    v25 = v6;
    reply = [v10 objectForKeyedSubscript:@"appConfigs"];
    if (reply && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [reply count])
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetDeveloperRegionServerConfig:]", 30, "Adding Developer Server Configuration.");
      }

      v14 = (v33 + 5);
      v27 = v33[5];
      v15 = [configurationStore saveTemporaryServerConfigurations:reply error:{&v27, v9}];
      objc_storeStrong(v14, v27);
      if ((v15 & 1) == 0)
      {
        v9 = v24;
        goto LABEL_28;
      }

      v16 = [reply objectAtIndexedSubscript:0];
      v17 = [v16 objectForKeyedSubscript:@"countryCode"];

      v18 = [v10 objectForKeyedSubscript:@"subdivisions"];
      if (!v18)
      {
        goto LABEL_25;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v18 count])
      {
        goto LABEL_25;
      }

      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetDeveloperRegionServerConfig:]", 30, "Adding Developer Subdivision List.");
      }

      v19 = [MEMORY[0x277CC5CA0] regionWithCode:v17];
      v20 = (v33 + 5);
      v26 = v33[5];
      v21 = [configurationStore saveTemporaryCountrySubdivisionList:v18 region:v19 error:&v26];
      objc_storeStrong(v20, v26);

      if (v21)
      {
LABEL_25:

        v9 = v24;
        v6 = v25;
LABEL_26:
        [(ENDaemon *)self->_daemon prefsChanged];
        reply = xpc_dictionary_create_reply(v5);
        if (reply)
        {
          [(ENXPCConnection *)self _xpcSendMessage:reply];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetDeveloperRegionServerConfig:]", 90, "### SetDeveloperRegionServerConfig create reply failed");
        }

        goto LABEL_28;
      }

      v9 = v24;
      v6 = v25;
    }

    else
    {
      v22 = ENErrorF(15, "### SetDeveloperRegionServerConfig no configurations found");
      v17 = v33[5];
      v33[5] = v22;
    }

LABEL_28:
LABEL_29:
  }

  v6[2](v6);

  _Block_object_dispose(&v32, 8);
}

void *__54__ENXPCConnection__xpcSetDeveloperRegionServerConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetDeveloperRegionServerConfig:]_block_invoke", 90, "### SetDeveloperRegionServerConfig failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcSetRegionConsent:(id)consent
{
  v84[1] = *MEMORY[0x277D85DE8];
  consentCopy = consent;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__3;
  v82 = __Block_byref_object_dispose__3;
  v83 = 0;
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __40__ENXPCConnection__xpcSetRegionConsent___block_invoke;
  v75[3] = &unk_278FD10D0;
  v77 = &v78;
  v75[4] = self;
  original = consentCopy;
  v76 = original;
  v62 = MEMORY[0x24C214430](v75);
  v5 = v79;
  obj = v79[5];
  v6 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v5 + 5, obj);
  if (v6)
  {
    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    v61 = configurationManager;
    if (!configurationManager)
    {
      v58 = ENErrorF(11, "No configuration manager");
      v65 = v79[5];
      v79[5] = v58;

      goto LABEL_58;
    }

    configurationStore = [configurationManager configurationStore];
    v8 = v79;
    v73 = v79[5];
    v9 = [(ENXPCConnection *)self _regionConfigForXPCRequest:original error:&v73];
    objc_storeStrong(v8 + 5, v73);
    if (!v9)
    {
LABEL_57:

LABEL_58:
      goto LABEL_59;
    }

    if ([v9 enVersion] <= 1)
    {
      v59 = ENErrorF(5, "Consent not supported for this region.");
      region = v79[5];
      v79[5] = v59;
      goto LABEL_56;
    }

    region = [v9 region];
    v63 = [configurationStore serverConfigurationForRegion:region];
    appBundleID = [v63 appBundleID];
    if (appBundleID)
    {
      v11 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:appBundleID placeholder:0];
      appState = [v11 appState];
      if ([appState isInstalled])
      {

        goto LABEL_8;
      }

      appState2 = [v11 appState];
      isPlaceholder = [appState2 isPlaceholder];

      if (isPlaceholder)
      {
LABEL_8:
        v15 = ENErrorF(10, "Cannot onboard ENX region since %@ is installed", appBundleID);
        v16 = v79[5];
        v79[5] = v15;

LABEL_55:
LABEL_56:

        goto LABEL_57;
      }
    }

    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    region2 = [entity region];
    regionCode = [region2 regionCode];
    regionCode2 = [region regionCode];
    if ([regionCode hasPrefix:regionCode2])
    {
    }

    else
    {
      userConsent = [v9 userConsent];
      v23 = [userConsent consent] == 4;

      if (v23)
      {
        v24 = ENErrorF(4, "Cannot onboard ENX region %@ setting consent is restricted", region);
        v11 = v79[5];
        v79[5] = v24;
        goto LABEL_55;
      }
    }

    objc_opt_class();
    v25 = v79;
    v72 = v79[5];
    v11 = ENXPCDecodeSecureObjectIfPresent();
    objc_storeStrong(v25 + 5, v72);
    if (!v11)
    {
      goto LABEL_55;
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetRegionConsent:]", 30, "SetRegionConsent start: Region '%@', %@", region, v11);
    }

    userConsent2 = [v9 userConsent];
    consentVersion = [userConsent2 consentVersion];
    consentVersion2 = [v11 consentVersion];
    v29 = [consentVersion isEqualToString:consentVersion2];

    if ((v29 & 1) == 0)
    {
      legalConsentVersion = [v63 legalConsentVersion];
      consentVersion3 = [v11 consentVersion];
      v32 = [legalConsentVersion isEqualToString:consentVersion3];

      if ((v32 & 1) == 0)
      {
        consentVersion4 = [v11 consentVersion];
        v37 = ENErrorF(2, "Unable to find consent for version: %@", consentVersion4);
        v38 = v79[5];
        v79[5] = v37;
LABEL_54:

        goto LABEL_55;
      }
    }

    userConsent3 = [v9 userConsent];
    v34 = [userConsent3 updatedConsent:v11];
    [v9 setUserConsent:v34];

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      userConsent4 = [v9 userConsent];
      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetRegionConsent:]", 30, "SetRegionConsent updating consent for Region '%@' to %@", region, userConsent4);
    }

    [(ENXPCConnection *)self _sendOnboardingMetricForRegionConfiguration:v9];
    v39 = v79;
    v71 = v79[5];
    v40 = [configurationStore saveRegionConfiguration:v9 error:&v71];
    objc_storeStrong(v39 + 5, v71);
    if (!v40)
    {
      goto LABEL_55;
    }

    userConsent5 = [v9 userConsent];
    consent = [userConsent5 consent];

    consentVersion4 = [(ENDaemon *)self->_daemon _readPreferenceRegionPendingOnboarding];
    v60 = consent - 1;
    switch(consent)
    {
      case 1:
        goto LABEL_30;
      case 2:
        [(ENDaemon *)self->_daemon _disableAvailabilityAlertIfNeeded];
        [(ENDaemon *)self->_daemon prefsChanged];
        break;
      case 3:
LABEL_30:
        activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
        entity2 = [activeEntity2 entity];
        region3 = [entity2 region];
        v46 = [region isEqual:region3];

        if (v46)
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetRegionConsent:]", 30, "Active region %@ consent %s. Turn off EN", region, off_278FD2298[consent - 1]);
          }

          [(ENDaemon *)self->_daemon _turnOffEN];
        }

        break;
    }

    v47 = [consentVersion4 isEqual:region];
    if (consent)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    if (v48 == 1)
    {
      userNotificationCenter = [(ENDaemon *)self->_daemon userNotificationCenter];
      v84[0] = @"com.apple.ExposureNotification.onboarding";
      v50 = [MEMORY[0x277CBEA68] arrayWithObjects:v84 count:1];
      [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v50];

      onboardingManager = [(ENDaemon *)self->_daemon onboardingManager];
      [onboardingManager setShouldObserveDeviceUnlocks:0];

      onboardingManager2 = [(ENDaemon *)self->_daemon onboardingManager];
      [onboardingManager2 setPendingBuddyOnboarding:0];
    }

    userNotificationCenter2 = [(ENDaemon *)self->_daemon userNotificationCenter];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __40__ENXPCConnection__xpcSetRegionConsent___block_invoke_2;
    v68[3] = &unk_278FD1D20;
    v54 = region;
    v69 = v54;
    selfCopy = self;
    [userNotificationCenter2 getDeliveredNotificationsWithCompletionHandler:v68];

    v55 = [consentVersion4 isEqual:v54];
    if (v60 < 2)
    {
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    if (v56 == 1)
    {
      [(ENDaemon *)self->_daemon onboardingTriggerDeactivate];
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetRegionConsent:]", 30, "SetRegionConsent completed");
    }

    reply = xpc_dictionary_create_reply(original);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
      [(ENDaemon *)self->_daemon prefsChanged];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetRegionConsent:]", 90, "### SetRegionConsent create reply failed");
    }

    v38 = v69;
    goto LABEL_54;
  }

LABEL_59:
  v62[2](v62);

  _Block_object_dispose(&v78, 8);
}

void *__40__ENXPCConnection__xpcSetRegionConsent___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetRegionConsent:]_block_invoke", 90, "### SetRegionConsent failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __40__ENXPCConnection__xpcSetRegionConsent___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a2;
  v2 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v20 = *v22;
    v4 = @"regionCode";
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v7 = [v6 request];
        v8 = [v7 content];
        v9 = [v8 userInfo];
        v10 = [v9 objectForKeyedSubscript:v4];

        v11 = [v6 request];
        v12 = [v11 content];
        v13 = [v12 categoryIdentifier];
        if ([v13 isEqualToString:@"com.apple.ExposureNotification.UserNotification.analyticsConsent"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(a1 + 32) regionCode];
            v15 = v14 = v4;
            v16 = [v15 isEqualToString:v10];

            v4 = v14;
            if (!v16)
            {
              goto LABEL_11;
            }

            v11 = [*(*(a1 + 40) + 32) userNotificationCenter];
            v12 = [v6 request];
            v13 = [v12 identifier];
            v25 = v13;
            v17 = [MEMORY[0x277CBEA68] arrayWithObjects:&v25 count:1];
            [v11 removeDeliveredNotificationsWithIdentifiers:v17];

            v4 = v14;
          }
        }

LABEL_11:
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v3);
  }
}

- (void)_sendOnboardingMetricForRegionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  onboardingTrigger = [(ENDaemon *)self->_daemon onboardingTrigger];
  v5 = configurationCopy;
  if (onboardingTrigger)
  {
    userConsent = [configurationCopy userConsent];
    consent = [userConsent consent];

    onboardingFirstTime = [(ENDaemon *)self->_daemon onboardingFirstTime];
    region = [configurationCopy region];
    countryCode = [region countryCode];
    utf8ValueSafe = [countryCode utf8ValueSafe];

    onboardingRegionTrigger = [(ENDaemon *)self->_daemon onboardingRegionTrigger];
    v11 = [region isSubdivisionCodeEqualToRegion:?];
    _getLegalConsentPageCount = [(ENDaemon *)self->_daemon _getLegalConsentPageCount];
    v13 = [(ENDaemon *)self->_daemon onboardingLegalConsentLastViewCount]< _getLegalConsentPageCount;
    if ([region validSubdivisionCode])
    {
      subdivisionCode = [region subdivisionCode];
    }

    else
    {
      subdivisionCode = 0;
    }

    v33 = region;
    v15 = [subdivisionCode componentsSeparatedByString:@"-"];
    if ([v15 count] == 2)
    {
      [v15 objectAtIndexedSubscript:1];
      v16 = v11;
      v17 = onboardingTrigger;
      v18 = v15;
      v19 = subdivisionCode;
      v20 = consent;
      v22 = v21 = utf8ValueSafe;
      utf8ValueSafe2 = [v22 utf8ValueSafe];

      utf8ValueSafe = v21;
      consent = v20;
      subdivisionCode = v19;
      v15 = v18;
      onboardingTrigger = v17;
      v11 = v16;
    }

    else
    {
      utf8ValueSafe2 = 0;
    }

    v24 = v13 & v11;
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      if (onboardingTrigger > 4)
      {
        v25 = "?";
      }

      else
      {
        v25 = off_278FD22B0[onboardingTrigger - 1];
      }

      if (utf8ValueSafe2)
      {
        v26 = utf8ValueSafe2;
      }

      else
      {
        v26 = utf8ValueSafe;
      }

      v27 = "no";
      if (v24)
      {
        v28 = "yes";
      }

      else
      {
        v28 = "no";
      }

      if (consent == 2)
      {
        v29 = "yes";
      }

      else
      {
        v29 = "no";
      }

      if (onboardingFirstTime)
      {
        v27 = "yes";
      }

      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _sendOnboardingMetricForRegionConfiguration:]", 30, "Send Onboarding Metric: Trigger: %s, Subdivision: %s, Legal Count: %s, Completed: %s, First Time: %s", v25, v26, v28, v29, v27);
    }

    delegate = [(ENDaemon *)self->_daemon delegate];
    countryCode2 = [v33 countryCode];
    if ([v33 validSubdivisionCode])
    {
      subdivisionCode2 = [v33 subdivisionCode];
      [delegate sendOnBoardingMetricWithTrigger:onboardingTrigger completed:consent == 2 firstTime:onboardingFirstTime countryCode:countryCode2 subdivisionCode:subdivisionCode2 legalConsent:v24];
    }

    else
    {
      [delegate sendOnBoardingMetricWithTrigger:onboardingTrigger completed:consent == 2 firstTime:onboardingFirstTime countryCode:countryCode2 subdivisionCode:@"Unknown" legalConsent:v24];
    }

    [(ENDaemon *)self->_daemon setOnboardingTrigger:0];
    [(ENDaemon *)self->_daemon setOnboardingFirstTime:0];
    [(ENDaemon *)self->_daemon setOnboardingRegionTrigger:0];
    [(ENDaemon *)self->_daemon setOnboardingLegalConsentLastViewCount:[(ENDaemon *)self->_daemon _getLegalConsentPageCount]];

    v5 = configurationCopy;
  }
}

- (void)_xpcTCCCheck:(id)check
{
  checkCopy = check;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __32__ENXPCConnection__xpcTCCCheck___block_invoke;
  v18[3] = &unk_278FD10D0;
  v20 = &v21;
  v18[4] = self;
  v5 = checkCopy;
  v19 = v5;
  v6 = MEMORY[0x24C214430](v18);
  if (MEMORY[0x282233AA0])
  {
    v7 = v22;
    obj = v22[5];
    v8 = [(ENXPCConnection *)self _authorizationPreflightUnknownAndReturnError:&obj];
    objc_storeStrong(v7 + 5, obj);
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v9 = "no";
      if (v8)
      {
        v9 = "yes";
      }

      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcTCCCheck:]", 30, "Preflight authorization unknown : %s", v9);
    }

    xpc_connection_get_audit_token();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE0], 1, MEMORY[0x277CBF140], MEMORY[0x277CBF148]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277D6C0B0], *MEMORY[0x277CBED20]);
    v11 = TCCAccessCheckAuditToken();
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v12 = "granted";
      if (!v11)
      {
        v12 = "not granted";
      }

      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcTCCCheck:]", 30, "TCC access result: %s", v12);
    }

    if (v8)
    {
      [(ENXPCConnection *)self _updateActiveEntityFromTCCResult:v11 != 0];
    }

    CFRelease(Mutable);
    if (v11)
    {
      reply = xpc_dictionary_create_reply(v5);
      if (reply)
      {
        [(ENXPCConnection *)self _xpcSendMessage:reply];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcTCCCheck:]", 90, "### TCCCheck create reply failed");
      }
    }

    else
    {
      v16 = ENErrorF(4, "User denied");
      reply = v22[5];
      v22[5] = v16;
    }
  }

  else
  {
    v14 = ENErrorF(5, "Authorization not supported");
    v15 = v22[5];
    v22[5] = v14;
  }

  v6[2](v6);

  _Block_object_dispose(&v21, 8);
}

void *__32__ENXPCConnection__xpcTCCCheck___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcTCCCheck:]_block_invoke", 90, "### TCCCheck failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_updateActiveEntityFromTCCResult:(BOOL)result
{
  v5 = MEMORY[0x277CC1E68];
  signingIdentity = [(ENXPCClient *)self->_client signingIdentity];
  v7 = [v5 applicationProxyForIdentifier:signingIdentity placeholder:0];

  if (!v7)
  {
    [(ENXPCConnection *)v8 _updateActiveEntityFromTCCResult:v9, v10];
    goto LABEL_27;
  }

  v13 = [(ENDaemon *)self->_daemon _getInfoDictFromAppProxy:v7];
  if (!v13)
  {
    [(ENXPCConnection *)0 _updateActiveEntityFromTCCResult:v11, v12];
    goto LABEL_26;
  }

  v14 = [(ENDaemon *)self->_daemon regionForBundleInfo:v13];
  v17 = v14;
  if (v14)
  {
    if (result)
    {
      v18 = [ENActiveEntity alloc];
      v19 = objc_alloc(MEMORY[0x277CC5C18]);
      signingIdentity2 = [(ENXPCClient *)self->_client signingIdentity];
      v21 = [v19 initWithBundleID:signingIdentity2 region:v17];
      v22 = [(ENActiveEntity *)v18 initWithEntity:v21 activeStatus:2];

      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        [ENXPCConnection _updateActiveEntityFromTCCResult:v17];
      }

      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];
      v25 = [configurationStore configurationForRegion:v17];

      if (v25)
      {
        userConsent = [v25 userConsent];
        [userConsent setConsent:4];

        configurationManager2 = [(ENDaemon *)self->_daemon configurationManager];
        configurationStore2 = [configurationManager2 configurationStore];
        v44 = 0;
        v29 = [configurationStore2 saveRegionConfiguration:v25 error:&v44];
        v30 = v44;

        if ((v29 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          [ENXPCConnection _updateActiveEntityFromTCCResult:v30];
        }
      }

      [(ENDaemon *)self->_daemon _writePreferenceActiveEntity:v22];

      goto LABEL_17;
    }

    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    region = [entity region];
    v42 = [region isEqual:v17];

    if (v42)
    {
      if (_MergedGlobals <= 30)
      {
        if (_MergedGlobals != -1 || (v14 = _LogCategory_Initialize(), v14))
        {
          [(ENXPCConnection *)v14 _updateActiveEntityFromTCCResult:v15, v16];
        }
      }

      [(ENDaemon *)self->_daemon _turnOffEN];
      goto LABEL_25;
    }
  }

  else if (result)
  {
    v31 = [ENActiveEntity alloc];
    v32 = objc_alloc(MEMORY[0x277CC5C18]);
    signingIdentity3 = [(ENXPCClient *)self->_client signingIdentity];
    v34 = [v32 initWithBundleID:signingIdentity3 region:0];
    v22 = [(ENActiveEntity *)v31 initWithEntity:v34 activeStatus:2];

    [(ENDaemon *)self->_daemon _writePreferenceActiveEntity:v22];
    daemon = self->_daemon;
    signingIdentity4 = [(ENXPCClient *)self->_client signingIdentity];
    [(ENDaemon *)daemon _setActiveRegionForApp:signingIdentity4 infoDict:v13];

LABEL_17:
    TCCAccessSetForBundleId();
    [(ENDaemon *)self->_daemon _disableAvailabilityAlertIfNeeded];
    [(ENDaemon *)self->_daemon prefsChanged];
    if (v17 && [(ENXPCClient *)self->_client accessLevel]<= 2)
    {
      signingIdentity5 = [(ENXPCClient *)self->_client signingIdentity];
      v38 = self->_daemon;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __52__ENXPCConnection__updateActiveEntityFromTCCResult___block_invoke;
      v43[3] = &unk_278FD1D48;
      v43[4] = signingIdentity5;
      v43[5] = v17;
      v43[6] = self;
      [(ENDaemon *)v38 fetchServerConfigurationForRegion:v17 completion:v43];
    }

    goto LABEL_25;
  }

  [(ENXPCConnection *)v14 _updateActiveEntityFromTCCResult:v15, v16];
LABEL_25:

LABEL_26:
LABEL_27:
}

void __52__ENXPCConnection__updateActiveEntityFromTCCResult___block_invoke(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  if (v11)
  {
    v3 = [v11 appBundleID];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v7 = [v6 domain];
  if (![v7 isEqualToString:@"ENConfigurationManagerErrorDomain"])
  {

    if (!v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = [v6 code];

  if (v11)
  {
  }

  if (v8 == 5)
  {
LABEL_7:
    v9 = [ENActiveEntity alloc];
    v10 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:a1[4] region:a1[5]];
    v3 = [(ENActiveEntity *)v9 initWithEntity:v10 activeStatus:1];

    [*(a1[6] + 32) _writePreferenceActiveEntity:v3];
    CFPrefs_RemoveValue();
    [*(a1[6] + 32) prefsChanged];
LABEL_9:
  }

LABEL_10:
}

- (void)_xpcExposureDetectionFileActivate:(id)activate
{
  activateCopy = activate;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3;
  v46 = __Block_byref_object_dispose__3;
  v47 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __53__ENXPCConnection__xpcExposureDetectionFileActivate___block_invoke;
  v39[3] = &unk_278FD10D0;
  v41 = &v42;
  v39[4] = self;
  v5 = activateCopy;
  v40 = v5;
  v6 = MEMORY[0x24C214430](v39);
  v7 = v43;
  obj = v43[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    v9 = v43;
    v37 = v43[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v37];
    objc_storeStrong(v9 + 5, v37);
    if (v10)
    {
      if (![(ENDaemon *)self->_daemon prefEnabled])
      {
        v29 = ENErrorF(9, "Not enabled");
        v20 = v43[5];
        v43[5] = v29;
LABEL_20:

        goto LABEL_21;
      }

      v11 = v43;
      v36 = v43[5];
      v12 = [(ENXPCConnection *)self _appActiveStatusWithError:&v36];
      objc_storeStrong(v11 + 5, v36);
      if (v12)
      {
        v13 = v43;
        v35 = v43[5];
        v14 = [(ENXPCConnection *)self _xpcManagerActivateIfNecessaryWithRequest:v5 error:&v35];
        objc_storeStrong(v13 + 5, v35);
        if (v14)
        {
          if ([(ENXPCClient *)self->_client accessLevel]> 2 || (v15 = v43, v34 = v43[5], v16 = [(ENXPCConnection *)self _rateLimitAndReturnError:&v34], objc_storeStrong(v15 + 5, v34), v16))
          {
            [(ENExposureDetectionDaemonSession *)self->_detectionSession invalidate];
            detectionSession = self->_detectionSession;
            self->_detectionSession = 0;

            v18 = objc_alloc(MEMORY[0x277CC5C38]);
            v19 = v43;
            v33 = v43[5];
            v20 = [v18 initWithXPCObject:v5 error:&v33];
            objc_storeStrong(v19 + 5, v33);
            if (v20)
            {
              exposureDetectionManager = [(ENDaemon *)self->_daemon exposureDetectionManager];
              if (exposureDetectionManager)
              {
                client = self->_client;
                configuration = [v20 configuration];
                v24 = v43;
                v32 = v43[5];
                v25 = [exposureDetectionManager createDetectionSessionForClient:client configuration:configuration error:&v32];
                objc_storeStrong(v24 + 5, v32);

                if (v25)
                {
                  [v25 setSkipFileSigningVerification:{-[ENXPCConnection skipFileSigningVerification](self, "skipFileSigningVerification")}];
                  [(ENDaemon *)self->_daemon setUsageExposureDetectFileActivate:[(ENDaemon *)self->_daemon usageExposureDetectFileActivate]+ 1];
                  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcExposureDetectionFileActivate:]", 30, "Activate: %@, v%d", v25, [(ENXPCClient *)self->_client appAPIVersion]);
                  }

                  objc_storeStrong(&self->_detectionSession, v25);
                  v26 = v43;
                  v31 = v43[5];
                  v27 = [v25 prepareAndReturnError:&v31];
                  objc_storeStrong(v26 + 5, v31);
                  if (v27)
                  {
                    reply = xpc_dictionary_create_reply(v5);
                    if (reply)
                    {
                      [(ENXPCConnection *)self _xpcSendMessage:reply];
                    }

                    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionFileActivate:]", 90, "### ExposureDetectionFileActivate create reply failed");
                    }
                  }

                  else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionFileActivate:]", 90, "### ExposureDetectionFileActivate daemon session activation failed");
                  }
                }
              }

              else
              {
                v30 = ENErrorF(11, "Nil detection manager");
                v25 = v43[5];
                v43[5] = v30;
              }
            }

            goto LABEL_20;
          }
        }
      }
    }
  }

LABEL_21:
  v6[2](v6);

  _Block_object_dispose(&v42, 8);
}

void *__53__ENXPCConnection__xpcExposureDetectionFileActivate___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionFileActivate:]_block_invoke", 90, "### ExposureDetectionFileActivate failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcExposureDetectionFileAdd:(id)add
{
  addCopy = add;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__3;
  v53 = __Block_byref_object_dispose__3;
  v54 = 0;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke;
  v46[3] = &unk_278FD10D0;
  v48 = &v49;
  v46[4] = self;
  v5 = addCopy;
  v47 = v5;
  v6 = MEMORY[0x24C214430](v46);
  v7 = v50;
  v45 = v50[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&v45];
  objc_storeStrong(v7 + 5, v45);
  if (v8)
  {
    exposureDetectionManager = [(ENDaemon *)self->_daemon exposureDetectionManager];
    if (exposureDetectionManager)
    {
      v10 = self->_detectionSession;
      if (v10)
      {
        [(ENDaemon *)self->_daemon setUsageExposureDetectFileAddKeys:[(ENDaemon *)self->_daemon usageExposureDetectFileAddKeys]+ 1];
        v11 = xpc_dictionary_dup_fd(v5, "fd");
        if ((v11 & 0x80000000) == 0)
        {
          xpc_dictionary_get_string(v5, "sbTk");
          v12 = v50;
          v44 = v50[5];
          v13 = ENCloneFileToTemporaryDirectory();
          objc_storeStrong(v12 + 5, v44);
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke_2;
          v42[3] = &__block_descriptor_36_e5_v8__0l;
          v43 = v11;
          v14 = MEMORY[0x24C214430](v42);
          if ((v13 & 0x80000000) == 0)
          {
            v36 = v10;
            v41 = 0;
            CUXPCDecodeNSData();
            createFileSession = [exposureDetectionManager createFileSession];
            v16 = v50;
            obj = v50[5];
            v17 = [createFileSession activateWithFD:v13 signatureData:0 error:&obj];
            objc_storeStrong(v16 + 5, obj);
            if (v17)
            {
              signatures = [createFileSession signatures];
              firstObject = [signatures firstObject];

              keyID = [firstObject keyID];
              keyVersion = [firstObject keyVersion];
              v21 = +[ENLoggingPrefs sharedENLoggingPrefs];
              isSensitiveLoggingAllowed = [v21 isSensitiveLoggingAllowed];

              if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
              {
                sha256Data = [createFileSession sha256Data];
                appleBundleID = [firstObject appleBundleID];
                batchNumber = [firstObject batchNumber];
                batchCount = [firstObject batchCount];
                keyID2 = [firstObject keyID];
                keyVersion2 = [firstObject keyVersion];
                metadata = [createFileSession metadata];
                v24 = CUPrintNSObjectOneLine();
                LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcExposureDetectionFileAdd:]", 30, "ExposureDetectionFileAdd: Hash <%@>, AppID %@, Batch %u of %u, KeyID %@, KeyVersion %@, Metadata %@", sha256Data, appleBundleID, batchNumber, batchCount, keyID2, keyVersion2, v24);
              }

              signatureData = [firstObject signatureData];

              if (signatureData && keyVersion)
              {
                v37[0] = MEMORY[0x277D85DD0];
                v37[1] = 3221225472;
                v37[2] = __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke_3;
                v37[3] = &unk_278FD1DB8;
                v37[4] = self;
                v38 = v5;
                v39 = createFileSession;
                [(ENXPCConnection *)self _fetchClientPublicKeyWithVerificationID:keyID keyVersion:keyVersion completion:v37];
              }

              else
              {
                [(ENXPCConnection *)self _xpcExposureDetectionFileAddNext:v5 fileSession:createFileSession publicKey:0];
              }
            }

            else
            {
              close(v13);
            }

            v10 = v36;
          }

          v14[2](v14);

          goto LABEL_20;
        }

        v27 = ENErrorF(2, "No file FD");
      }

      else
      {
        v27 = ENErrorF(10, "No detection session");
      }

      v28 = v50[5];
      v50[5] = v27;
    }

    else
    {
      v26 = ENErrorF(10, "Nil detection manager");
      v10 = v50[5];
      v50[5] = v26;
    }

LABEL_20:
  }

  v6[2](v6);

  _Block_object_dispose(&v49, 8);
}

void *__48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionFileAdd:]_block_invoke", 90, "### ExposureDetectionFileAdd failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = a1[4];
  v7 = a1[5];
  v9 = *(v8 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke_4;
  block[3] = &unk_278FD1D90;
  v15 = v5;
  v16 = v8;
  v17 = v6;
  v10 = v7;
  v11 = a1[6];
  v18 = v10;
  v19 = v11;
  v12 = v6;
  v13 = v5;
  dispatch_async(v9, block);
}

uint64_t __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke_4(void *a1)
{
  if (!a1[4] && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke_4_cold_1(a1);
  }

  v2 = a1[7];
  v3 = a1[8];
  v5 = a1[4];
  v4 = a1[5];

  return [v4 _xpcExposureDetectionFileAddNext:v2 fileSession:v3 publicKey:v5];
}

- (void)_fetchClientPublicKeyWithVerificationID:(id)d keyVersion:(id)version completion:(id)completion
{
  dCopy = d;
  versionCopy = version;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __81__ENXPCConnection__fetchClientPublicKeyWithVerificationID_keyVersion_completion___block_invoke;
  v28[3] = &unk_278FD1A50;
  v30 = &v31;
  v11 = completionCopy;
  v29 = v11;
  v12 = MEMORY[0x24C214430](v28);
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _fetchClientPublicKeyWithVerificationID:keyVersion:completion:]", 30, "Looking up public key for %@, Key Verification ID: %@, Key Version: %@", self->_client, dCopy, versionCopy);
  }

  if (![versionCopy length])
  {
    v21 = ENErrorF(2, "Invalid public key version");
    v14 = v32[5];
    v32[5] = v21;
    goto LABEL_15;
  }

  appRegion = [(ENXPCClient *)self->_client appRegion];
  if (!appRegion)
  {
    v14 = dCopy;
    prefRegionIdentifierOverride = [(ENDaemon *)self->_daemon prefRegionIdentifierOverride];
    if (!prefRegionIdentifierOverride)
    {
      v16 = [ENCoreTelephonyUtility countryCodeISOForMobileCountryCode:v14];
      v17 = v16;
      v18 = v16 ? v16 : v14;
      prefRegionIdentifierOverride = v18;

      if (!prefRegionIdentifierOverride)
      {
        v22 = ENErrorF(2, "Unknown Verification ID %@", 0);
        v20 = v32[5];
        v32[5] = v22;
        goto LABEL_14;
      }
    }

    appRegion = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:prefRegionIdentifierOverride];
  }

  daemon = self->_daemon;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __81__ENXPCConnection__fetchClientPublicKeyWithVerificationID_keyVersion_completion___block_invoke_2;
  v23[3] = &unk_278FD1E00;
  v27 = &v31;
  v26 = v11;
  v23[4] = self;
  v14 = appRegion;
  v24 = v14;
  v25 = versionCopy;
  [(ENDaemon *)daemon fetchServerConfigurationForRegion:v14 completion:v23];

  v20 = v26;
LABEL_14:

LABEL_15:
  v12[2](v12);

  _Block_object_dispose(&v31, 8);
}

uint64_t __81__ENXPCConnection__fetchClientPublicKeyWithVerificationID_keyVersion_completion___block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __81__ENXPCConnection__fetchClientPublicKeyWithVerificationID_keyVersion_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __81__ENXPCConnection__fetchClientPublicKeyWithVerificationID_keyVersion_completion___block_invoke_3;
  v30[3] = &unk_278FD1A50;
  v28 = *(a1 + 56);
  v7 = v28;
  v31 = v28;
  v8 = MEMORY[0x24C214430](v30);
  if (v6)
  {
    v9 = [v6 domain];
    if ([v9 isEqualToString:@"ENConfigurationManagerErrorDomain"])
    {
      v10 = [v6 code];

      if (v10 == 5)
      {
        v11 = [*(*(a1 + 32) + 24) signingIdentity];
        v12 = ENErrorF(5, "No Server Configuration available for %@ in %@", v11, *(a1 + 40));
        v13 = *(*(a1 + 64) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        goto LABEL_24;
      }
    }

    else
    {
    }

LABEL_11:
    v18 = ENNestedErrorF(v6, 16, "Unable to fetch server configuration for %@", *(a1 + 40));
    v19 = *(*(a1 + 64) + 8);
    v11 = *(v19 + 40);
    *(v19 + 40) = v18;
    goto LABEL_24;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v11 = [v5 publicKeyVersion];
  if (([v11 isEqualToString:*(a1 + 48)] & 1) == 0)
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      v16 = *(a1 + 40);
      v15 = *(a1 + 48);
      v17 = [*(*(a1 + 32) + 24) signingIdentity];
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _fetchClientPublicKeyWithVerificationID:keyVersion:completion:]_block_invoke_2", 90, "Public key version %@ != %@ for region: %@ and app: %@", v15, v11, v16, v17);
    }

    v20 = [*(*(a1 + 32) + 32) configurationManager];
    [v20 fetchServerConfigurationsForRegion:*(a1 + 40) userInitiated:0 withCompletion:&__block_literal_global_2291];
  }

  v21 = [v5 publicKey];
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _fetchClientPublicKeyWithVerificationID:keyVersion:completion:]_block_invoke_2", 30, "Fetched public key - %@", v21);
  }

  v22 = *MEMORY[0x277CDBFF8];
  v23 = *(*(a1 + 64) + 8);
  obj = *(v23 + 40);
  v24 = [ENSecKey keyFromBase64String:v21 keyClass:v22 error:&obj];
  objc_storeStrong((v23 + 40), obj);
  if (v24)
  {
    (*(*(a1 + 56) + 16))();
    if (([*(a1 + 32) skipFileSigningVerification] & 1) == 0)
    {
      v25 = [*(*(a1 + 32) + 32) configurationManager];
      v26 = [v25 configurationStore];
      v27 = [v26 configurationForRegion:*(a1 + 40)];

      if (v27)
      {
        [*(*(a1 + 32) + 32) _exposureNotificationRegionConfigurationChanged:v27];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _fetchClientPublicKeyWithVerificationID:keyVersion:completion:]_block_invoke_2", 90, "Invalid region config");
      }
    }
  }

LABEL_24:
  v8[2](v8);
}

uint64_t __81__ENXPCConnection__fetchClientPublicKeyWithVerificationID_keyVersion_completion___block_invoke_3(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_xpcExposureDetectionFileAddNext:(id)next fileSession:(id)session publicKey:(id)key
{
  nextCopy = next;
  sessionCopy = session;
  keyCopy = key;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __74__ENXPCConnection__xpcExposureDetectionFileAddNext_fileSession_publicKey___block_invoke;
  v32[3] = &unk_278FD1E28;
  v10 = sessionCopy;
  v36 = &v37;
  v33 = v10;
  selfCopy = self;
  v11 = nextCopy;
  v35 = v11;
  v12 = MEMORY[0x24C214430](v32);
  v13 = self->_detectionSession;
  v14 = v13;
  if (!v13)
  {
    v28 = ENErrorF(10, "No detection session");
    reply = v38[5];
    v38[5] = v28;
LABEL_10:

    goto LABEL_11;
  }

  statistics = [(ENExposureDetectionDaemonSession *)v13 statistics];
  fileKeyCount = [statistics fileKeyCount];

  statistics2 = [(ENExposureDetectionDaemonSession *)v14 statistics];
  matchedKeyCount = [statistics2 matchedKeyCount];

  v19 = (v38 + 5);
  obj = v38[5];
  LOBYTE(statistics2) = [(ENExposureDetectionDaemonSession *)v14 addMatchesFromFileSession:v10 publicKey:keyCopy endpoint:0 error:&obj];
  objc_storeStrong(v19, obj);
  if (statistics2)
  {
    v29 = matchedKeyCount;
    v20 = fileKeyCount;
    statistics3 = [(ENExposureDetectionDaemonSession *)v14 statistics];
    fileKeyCount2 = [statistics3 fileKeyCount];

    statistics4 = [(ENExposureDetectionDaemonSession *)v14 statistics];
    matchedKeyCount2 = [statistics4 matchedKeyCount];

    v25 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v25 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcExposureDetectionFileAddNext:fileSession:publicKey:]", 30, "ExposureDetectionFileAdd: keys %llu, added matches %llu", fileKeyCount2 - v20, matchedKeyCount2 - v29);
    }

    reply = xpc_dictionary_create_reply(v11);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionFileAddNext:fileSession:publicKey:]", 90, "### ExposureDetectionFileAdd create reply failed");
    }

    goto LABEL_10;
  }

LABEL_11:

  v12[2](v12);
  _Block_object_dispose(&v37, 8);
}

void *__74__ENXPCConnection__xpcExposureDetectionFileAddNext_fileSession_publicKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 56);
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = *(a1 + 56), v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionFileAddNext:fileSession:publicKey:]_block_invoke", 90, "### ExposureDetectionFileAdd failed: %@", v4);

        v2 = *(a1 + 56);
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcExposureDetectionFileFinish:(id)finish
{
  finishCopy = finish;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __51__ENXPCConnection__xpcExposureDetectionFileFinish___block_invoke;
  v20[3] = &unk_278FD10D0;
  v22 = &v23;
  v20[4] = self;
  v5 = finishCopy;
  v21 = v5;
  v6 = MEMORY[0x24C214430](v20);
  v7 = (v24 + 5);
  obj = v24[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = self->_detectionSession;
    v10 = v9;
    if (v9)
    {
      v11 = (v24 + 5);
      v18 = v24[5];
      v12 = [(ENExposureDetectionDaemonSession *)v9 finishAndReturnError:&v18];
      objc_storeStrong(v11, v18);
      if (v12)
      {
        statistics = [v12 statistics];
        if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "-[ENXPCConnection _xpcExposureDetectionFileFinish:]", 50, "ExposureDetectionFileFinish: session finished successfully for %llu files (%llu keys, %llu invalid signatures)", [statistics processedFileCount], objc_msgSend(statistics, "fileKeyCount"), objc_msgSend(statistics, "invalidFileSignatureCount"));
        }

        [(ENDaemon *)self->_daemon setUsageExposureDetectFileFinish:[(ENDaemon *)self->_daemon usageExposureDetectFileFinish]+ 1];
        reply = xpc_dictionary_create_reply(v5);
        if (reply)
        {
          summary = [v12 summary];
          v16 = summary;
          if (summary)
          {
            [summary encodeWithXPCObject:reply];
            [(ENXPCConnection *)self _xpcSendMessage:reply];
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionFileFinish:]", 90, "### getSummaryAndReturnError failed");
          }
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionFileFinish:]", 90, "### ExposureDetectionFileFinish create reply failed");
        }
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionFileFinish:]", 90, "### Finishing detection session failed");
      }
    }

    else
    {
      v17 = ENErrorF(10, "No detection session");
      v12 = v24[5];
      v24[5] = v17;
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v23, 8);
}

void *__51__ENXPCConnection__xpcExposureDetectionFileFinish___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionFileFinish:]_block_invoke", 90, "### ExposureDetectionFileFinish failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcExposureDetectionFileGetExposures:(id)exposures
{
  exposuresCopy = exposures;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__3;
  v59 = __Block_byref_object_dispose__3;
  v60 = 0;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __57__ENXPCConnection__xpcExposureDetectionFileGetExposures___block_invoke;
  v52[3] = &unk_278FD10D0;
  v54 = &v55;
  v52[4] = self;
  v5 = exposuresCopy;
  v53 = v5;
  v6 = MEMORY[0x24C214430](v52);
  v7 = v56;
  v51 = v56[5];
  v35 = v6;
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&v51];
  objc_storeStrong(v7 + 5, v51);
  if (v8)
  {
    if ([(ENXPCClient *)self->_client accessLevel]<= 3 && [(ENXPCClient *)self->_client appAPIVersion]>= 2)
    {
      v33 = ENErrorF(10, "GetExposureInfo not supported for version 2 apps");
      v10 = v56[5];
      v56[5] = v33;
    }

    else
    {
      v9 = self->_detectionSession;
      v10 = v9;
      if (v9)
      {
        exposureCalculationSession = [(ENExposureDetectionDaemonSession *)v9 exposureCalculationSession];
        if (exposureCalculationSession)
        {
          v12 = v56;
          v50 = v56[5];
          v13 = [(ENExposureDetectionDaemonSession *)v10 getAnalysisSessionAndReturnError:&v50];
          objc_storeStrong(v12 + 5, v50);
          if (v13)
          {
            v37 = v13;
            configuration = [v13 configuration];
            string = xpc_dictionary_get_string(v5, "auEx");
            if (string)
            {
              v36 = [MEMORY[0x277CCACA0] stringWithUTF8String:string];
            }

            else
            {
              v36 = &stru_285D62BB0;
            }

            v46 = 0;
            v47 = &v46;
            v48 = 0x2020000000;
            v49 = 0;
            v44[0] = 0;
            v44[1] = v44;
            v44[2] = 0x2020000000;
            minimumRiskScore = [configuration minimumRiskScore];
            [configuration minimumRiskScoreFullRange];
            v16 = v15;
            v40 = 0;
            v41 = &v40;
            v42 = 0x2020000000;
            v43 = 0;
            Current = CFAbsoluteTimeGetCurrent();
            v18 = xpc_array_create(0, 0);
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = __57__ENXPCConnection__xpcExposureDetectionFileGetExposures___block_invoke_2;
            v39[3] = &unk_278FD1E50;
            v39[6] = &v46;
            v39[7] = v44;
            *&v39[9] = Current;
            v39[10] = v16;
            v39[8] = &v40;
            v39[4] = v13;
            v39[5] = v18;
            [exposureCalculationSession enumerateCachedExposureInfo:v39];
            if (v47[3])
            {
              v34 = exposureCalculationSession;
              v19 = v5;
              activeEntity = [(ENDaemon *)self->_daemon activeEntity];
              entity = [activeEntity entity];
              bundleIdentifier = [entity bundleIdentifier];
              if ([bundleIdentifier length])
              {
                activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
                entity2 = [activeEntity2 entity];
                bundleIdentifier2 = [entity2 bundleIdentifier];
              }

              else
              {
                bundleIdentifier2 = @"?";
              }

              [(ENDaemon *)self->_daemon postExposureSummaryAccessNotificationWithAppBundleIdentifier:bundleIdentifier2 string:v36];
              v5 = v19;
              exposureCalculationSession = v34;
            }

            v26 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed = [v26 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcExposureDetectionFileGetExposures:]", 30, "GetExposures: Processed %d, MinSkipped %llu, %@", v47[3], v41[3], configuration);
            }

            [(ENDaemon *)self->_daemon setUsageExposureDetectFileGetExposures:[(ENDaemon *)self->_daemon usageExposureDetectFileGetExposures]+ 1];
            reply = xpc_dictionary_create_reply(v5);
            v29 = reply;
            if (reply)
            {
              xpc_dictionary_set_value(reply, "exIA", v18);
              [(ENXPCConnection *)self _xpcSendMessage:v29];
              if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcExposureDetectionFileGetExposures:]", 30, "GetExposures: tear down session on done");
              }

              [(ENExposureDetectionDaemonSession *)v10 invalidate];
              detectionSession = self->_detectionSession;
              self->_detectionSession = 0;
            }

            else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionFileGetExposures:]", 90, "### GetExposures create reply failed");
            }

            _Block_object_dispose(&v40, 8);
            _Block_object_dispose(v44, 8);
            _Block_object_dispose(&v46, 8);

            v13 = v37;
          }
        }

        else
        {
          v32 = ENErrorF(11, "No calculation session");
          v13 = v56[5];
          v56[5] = v32;
        }

        v6 = v35;
      }

      else
      {
        v31 = ENErrorF(10, "No detection session");
        exposureCalculationSession = v56[5];
        v56[5] = v31;
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v55, 8);
}

void *__57__ENXPCConnection__xpcExposureDetectionFileGetExposures___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionFileGetExposures:]_block_invoke", 90, "### GetExposures failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __57__ENXPCConnection__xpcExposureDetectionFileGetExposures___block_invoke_2(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) += [v3 count];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    v25 = v4;
    v26 = a1;
    v24 = *v36;
    do
    {
      v8 = 0;
      v27 = v6;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        v34 = 0;
        [*(a1 + 32) estimateRiskWithExposureInfo:v9 referenceTime:&v34 + 1 transmissionRiskLevel:&v34 skip:{*(a1 + 72), v24, v25}];
        if ((v34 & 1) == 0)
        {
          v11 = v10;
          if (v10 > 255.0)
          {
            v10 = 255.0;
          }

          if (v10 < 0.0)
          {
            v10 = 0.0;
          }

          if (*(*(*(a1 + 56) + 8) + 24) <= v10 && v11 >= *(a1 + 80))
          {
            v28 = v10;
            [v9 duration];
            v13 = 60 * ((v12 + 59) / 0x3C);
            if (v13 >= 0x708)
            {
              v13 = 1800;
            }

            [v9 setDuration:v13];
            v14 = objc_alloc_init(MEMORY[0x277CBEB10]);
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v29 = v9;
            v15 = [v9 attenuationDurations];
            v16 = [v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v31;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v31 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = 60 * (([*(*(&v30 + 1) + 8 * i) unsignedIntValue] + 59) / 0x3C);
                  if (v20 >= 0x708)
                  {
                    v21 = 1800;
                  }

                  else
                  {
                    v21 = v20;
                  }

                  v22 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v21];
                  [v14 addObject:v22];
                }

                v17 = [v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
              }

              while (v17);
            }

            [v29 setAttenuationDurations:v14];
            [v29 setTotalRiskScore:v28];
            [v29 setTotalRiskScoreFullRange:v11];
            [v29 setTransmissionRiskLevel:HIBYTE(v34)];
            v23 = xpc_dictionary_create(0, 0, 0);
            [v29 encodeWithXPCObject:v23];
            a1 = v26;
            xpc_array_set_value(*(v26 + 40), 0xFFFFFFFFFFFFFFFFLL, v23);

            v7 = v24;
            v4 = v25;
            v6 = v27;
          }

          else
          {
            ++*(*(*(a1 + 64) + 8) + 24);
          }
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v6);
  }
}

- (void)_xpcExposureDetectionFileGetExposureWindows:(id)windows
{
  windowsCopy = windows;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__3;
  v56 = __Block_byref_object_dispose__3;
  v57 = 0;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __63__ENXPCConnection__xpcExposureDetectionFileGetExposureWindows___block_invoke;
  v49[3] = &unk_278FD10D0;
  v51 = &v52;
  v49[4] = self;
  v5 = windowsCopy;
  v50 = v5;
  v6 = MEMORY[0x24C214430](v49);
  v7 = v53;
  obj = v53[5];
  v40 = v6;
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    region = [entity region];

    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];

    v38 = configurationStore;
    v39 = region;
    v14 = [configurationStore serverConfigurationForRegion:region];
    variantOfConcernEnabled = [v14 variantOfConcernEnabled];

    v16 = self->_detectionSession;
    v17 = v16;
    if (!v16)
    {
      v35 = ENErrorF(10, "No detection session");
      v19 = v53[5];
      v53[5] = v35;
      goto LABEL_31;
    }

    exposureCalculationSession = [(ENExposureDetectionDaemonSession *)v16 exposureCalculationSession];
    v19 = exposureCalculationSession;
    if (exposureCalculationSession)
    {
      cachedExposureWindowCount = [exposureCalculationSession cachedExposureWindowCount];
      uint64 = xpc_dictionary_get_uint64(v5, "expWndIdx");
      v22 = uint64;
      if (cachedExposureWindowCount >= uint64)
      {
        if (cachedExposureWindowCount - uint64 >= 0x400)
        {
          v23 = 1024;
        }

        else
        {
          v23 = cachedExposureWindowCount - uint64;
        }

        v44 = 0;
        v45 = &v44;
        v46 = 0x2020000000;
        v47 = 0;
        value = xpc_array_create(0, 0);
        if (cachedExposureWindowCount != v22)
        {
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __63__ENXPCConnection__xpcExposureDetectionFileGetExposureWindows___block_invoke_2;
          v42[3] = &unk_278FD1E78;
          v42[6] = &v44;
          v43 = variantOfConcernEnabled;
          v42[4] = self;
          v42[5] = value;
          [v19 enumerateCachedExposureWindows:v42 inRange:v22 withBatchSize:{v23, 1024}];
        }

        v24 = v45[3] + v22;
        if (v24 >= cachedExposureWindowCount)
        {
          v27 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed = [v27 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcExposureDetectionFileGetExposureWindows:]", 30, "GetExposureWindows complete: range %llu, %llu, processed %d, %llu of %d", v22, v23, v45[3], v24, cachedExposureWindowCount);
          }

          [(ENDaemon *)self->_daemon setUsageExposureDetectFileGetExposureWindows:[(ENDaemon *)self->_daemon usageExposureDetectFileGetExposureWindows]+ 1];
          reply = xpc_dictionary_create_reply(v5);
          v30 = reply;
          if (reply)
          {
            xpc_dictionary_set_value(reply, "expWndA", value);
            xpc_dictionary_set_uint64(v30, "expWndIdx", 0);
            [(ENXPCConnection *)self _xpcSendMessage:v30];
            v32 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed2 = [v32 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcExposureDetectionFileGetExposureWindows:]", 30, "GetExposureWindows: tear down session on done");
            }

            [(ENExposureDetectionDaemonSession *)v17 invalidate];
            detectionSession = self->_detectionSession;
            self->_detectionSession = 0;

            goto LABEL_30;
          }

          if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
          {
LABEL_30:

            _Block_object_dispose(&v44, 8);
LABEL_31:

            v6 = v40;
            goto LABEL_32;
          }
        }

        else
        {
          v25 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed3 = [v25 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed3 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcExposureDetectionFileGetExposureWindows:]", 30, "GetExposureWindows partial: range %llu, %llu, processed %d, %llu of %d", v22, v23, v45[3], v24, cachedExposureWindowCount);
          }

          v29 = xpc_dictionary_create_reply(v5);
          v30 = v29;
          if (v29)
          {
            xpc_dictionary_set_value(v29, "expWndA", value);
            xpc_dictionary_set_uint64(v30, "expWndIdx", v24);
            [(ENXPCConnection *)self _xpcSendMessage:v30];
            goto LABEL_30;
          }

          if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_30;
          }
        }

        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionFileGetExposureWindows:]", 90, "### GetExposureWindows create reply failed");
        goto LABEL_30;
      }

      v36 = ENErrorF(2, "Bad index");
    }

    else
    {
      v36 = ENErrorF(11, "No calculation session");
    }

    v37 = v53[5];
    v53[5] = v36;

    goto LABEL_31;
  }

LABEL_32:
  v6[2](v6);

  _Block_object_dispose(&v52, 8);
}

void *__63__ENXPCConnection__xpcExposureDetectionFileGetExposureWindows___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionFileGetExposureWindows:]_block_invoke", 90, "### GetExposureWindows failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __63__ENXPCConnection__xpcExposureDetectionFileGetExposureWindows___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) += [v3 count];
  if (([*(*(a1 + 32) + 32) prefSkipExposureWindowShuffling] & 1) == 0)
  {
    v4 = [v3 enRandomlyShuffled];

    v3 = v4;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 infectiousness])
        {
          if ((*(a1 + 56) & 1) == 0)
          {
            [v10 setVariantOfConcernType:0];
          }

          v11 = xpc_dictionary_create(0, 0, 0);
          [v10 encodeWithXPCObject:v11];
          xpc_array_set_value(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL, v11);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_xpcExposureDetectionHistoryGetFiles:(id)files
{
  filesCopy = files;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__ENXPCConnection__xpcExposureDetectionHistoryGetFiles___block_invoke;
  v15[3] = &unk_278FD10D0;
  v17 = &v18;
  v15[4] = self;
  v5 = filesCopy;
  v16 = v5;
  v6 = MEMORY[0x24C214430](v15);
  v7 = v19;
  obj = v19[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    v9 = v19;
    v12 = v19[5];
    v13 = 0;
    v10 = CUXPCDecodeNSUUID();
    objc_storeStrong(v9 + 5, v12);
    if (v10)
    {
      v11 = ENErrorF(2, "No session ID");
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v18, 8);
}

void *__56__ENXPCConnection__xpcExposureDetectionHistoryGetFiles___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionHistoryGetFiles:]_block_invoke", 90, "### HistoryGetFiles failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __56__ENXPCConnection__xpcExposureDetectionHistoryGetFiles___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  value = xpc_dictionary_create(0, 0, 0);
  [v3 encodeWithXPCObject:value];

  xpc_array_set_value(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL, value);
}

- (void)_xpcExposureDetectionHistoryGetSessions:(id)sessions
{
  sessionsCopy = sessions;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__ENXPCConnection__xpcExposureDetectionHistoryGetSessions___block_invoke;
  v22[3] = &unk_278FD10D0;
  v24 = &v25;
  v22[4] = self;
  v5 = sessionsCopy;
  v23 = v5;
  v6 = MEMORY[0x24C214430](v22);
  v7 = (v26 + 5);
  obj = v26[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    daemon = self->_daemon;
    v10 = (v26 + 5);
    v20 = v26[5];
    v11 = [(ENDaemon *)daemon getExposureDatabaseAndReturnError:&v20];
    objc_storeStrong(v10, v20);
    if (v11)
    {
      [(ENDaemon *)self->_daemon _migrateLegacyHistoryIfNecessary];
      v12 = xpc_array_create(0, 0);
      v14 = (v26 + 5);
      v13 = v26[5];
      v18[4] = v12;
      v19 = v13;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __59__ENXPCConnection__xpcExposureDetectionHistoryGetSessions___block_invoke_2;
      v18[3] = &unk_278FD1EA0;
      v15 = [v11 enumerateExposureDetectionHistorySessionsWithError:&v19 handler:v18];
      objc_storeStrong(v14, v19);
      if (v15)
      {
        reply = xpc_dictionary_create_reply(v5);
        v17 = reply;
        if (reply)
        {
          xpc_dictionary_set_value(reply, "detHS", v12);
          [(ENXPCConnection *)self _xpcSendMessage:v17];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionHistoryGetSessions:]", 90, "### HistoryGetSessions create reply failed");
        }
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v25, 8);
}

void *__59__ENXPCConnection__xpcExposureDetectionHistoryGetSessions___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcExposureDetectionHistoryGetSessions:]_block_invoke", 90, "### HistoryGetSessions failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __59__ENXPCConnection__xpcExposureDetectionHistoryGetSessions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  value = xpc_dictionary_create(0, 0, 0);
  [v3 encodeWithXPCObject:value];

  xpc_array_set_value(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL, value);
}

- (void)_xpcDownload:(id)download
{
  downloadCopy = download;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __32__ENXPCConnection__xpcDownload___block_invoke;
  v18[3] = &unk_278FD10D0;
  v20 = &v21;
  v18[4] = self;
  v5 = downloadCopy;
  v19 = v5;
  v6 = MEMORY[0x24C214430](v18);
  v7 = (v22 + 5);
  obj = v22[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = xpc_dictionary_get_BOOL(v5, "detX");
    downloadManager = [(ENDaemon *)self->_daemon downloadManager];
    v11 = downloadManager;
    if (downloadManager)
    {
      if ([downloadManager enabledEndpointCount])
      {
        reply = xpc_dictionary_create_reply(v5);
        v13 = reply;
        if (reply)
        {
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __32__ENXPCConnection__xpcDownload___block_invoke_2;
          v15[3] = &unk_278FD1EF0;
          v16 = v9;
          v15[4] = self;
          v15[5] = reply;
          [v11 performDownloadsForced:1 completion:v15];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcDownload:]", 90, "### Download create reply failed");
        }

        goto LABEL_6;
      }

      v14 = ENErrorF(5, "No enabled download endpoints");
    }

    else
    {
      v14 = ENErrorF(11, "Nil download manager");
    }

    v13 = v22[5];
    v22[5] = v14;
LABEL_6:
  }

  v6[2](v6);

  _Block_object_dispose(&v21, 8);
}

void *__32__ENXPCConnection__xpcDownload___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcDownload:]_block_invoke", 90, "### Download failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __32__ENXPCConnection__xpcDownload___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3[4] exposureDetectionManager];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__ENXPCConnection__xpcDownload___block_invoke_3;
    v6[3] = &unk_278FD1EC8;
    v7 = *(a1 + 32);
    [v4 performNativeExposureDetectionWithResultHandler:v6];
  }

  else
  {
    v5 = *(a1 + 40);

    [v3 _xpcSendMessage:v5];
  }
}

void __32__ENXPCConnection__xpcDownload___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    [*(a1 + 32) _xpcSendMessage:*(a1 + 40)];
  }

  else
  {
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = ENErrorF(1, "Unknown error");
    }

    v7 = v6;
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      __32__ENXPCConnection__xpcDownload___block_invoke_3_cold_1(v7);
    }

    [*(a1 + 32) _xpcSendReplyError:v7 reply:*(a1 + 40)];
  }
}

- (void)_xpcGetInfo:(id)info
{
  infoCopy = info;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__3;
  v52 = __Block_byref_object_dispose__3;
  v53 = 0;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __31__ENXPCConnection__xpcGetInfo___block_invoke;
  v45[3] = &unk_278FD10D0;
  v47 = &v48;
  v45[4] = self;
  v5 = infoCopy;
  v46 = v5;
  v6 = MEMORY[0x24C214430](v45);
  v7 = (v49 + 5);
  obj = v49[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    delegate = [(ENDaemon *)self->_daemon delegate];
    string = xpc_dictionary_get_string(v5, "iStr");
    if (!string)
    {
      v40 = ENErrorF(2, "No key");
      activeEntity = v49[5];
      v49[5] = v40;
      goto LABEL_46;
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetInfo:]", 30, "GetInfo: '%s'", string);
    }

    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    if (strcmp(string, "activeApp"))
    {
      if (!strcmp(string, "activeRegion"))
      {
        activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
        entity = [activeEntity2 entity];
        region = [entity region];

        if (!region)
        {
          goto LABEL_66;
        }

        regionCode = [region regionCode];
      }

      else
      {
        if (!strcmp(string, "automaticRegionSwitch"))
        {
          automaticRegionSwitchEnabled = [(ENDaemon *)self->_daemon automaticRegionSwitchEnabled];
          goto LABEL_30;
        }

        if (!strcmp(string, "availabilityAlertEnabled"))
        {
          automaticRegionSwitchEnabled = [(ENDaemon *)self->_daemon availabilityAlertDisabled];
LABEL_32:
          v22 = MEMORY[0x277CBEC30];
          v23 = MEMORY[0x277CBEC20];
          goto LABEL_33;
        }

        if (!strcmp(string, "dataPresent"))
        {
          storedAdvertisementCount = [delegate storedAdvertisementCount];
          v30 = MEMORY[0x277CBEC30];
          if (!storedAdvertisementCount)
          {
            v31 = [delegate retrieveTEKHistoryIncludingActive:1 generateNewTEK:0];
            v32 = [v31 count];

            if (!v32)
            {
              v30 = MEMORY[0x277CBEC20];
            }
          }

          v24 = v30;
          goto LABEL_36;
        }

        if (strcmp(string, "differentialPrivacyMetadata"))
        {
          if (strcmp(string, "profileInstalled"))
          {
            if (strcmp(string, "supported"))
            {
              if (strcmp(string, "weeklySummaryAlertEnabled"))
              {
                v12 = ENErrorF(5, "Unsupported key: '%s'", string);
LABEL_45:
                v28 = v49[5];
                v49[5] = v12;

LABEL_46:
                goto LABEL_47;
              }

              automaticRegionSwitchEnabled = [(ENDaemon *)self->_daemon monthlySummaryDisabled];
              goto LABEL_32;
            }

            entity2 = [activeEntity entity];
            region2 = [entity2 region];

            if (region2)
            {
              configurationManager = [(ENDaemon *)self->_daemon configurationManager];
              configurationStore = [configurationManager configurationStore];
              v37 = [configurationStore serverConfigurationForRegion:region2];

              if (!v37)
              {
                v42 = ENErrorF(1, "No server config for %@", region2);
                v43 = v49[5];
                v49[5] = v42;

                goto LABEL_46;
              }

              enEnabled = [v37 enEnabled];
              v39 = MEMORY[0x277CBEC20];
              if (enEnabled)
              {
                v39 = MEMORY[0x277CBEC30];
              }

              bundleIdentifier = v39;

              goto LABEL_37;
            }

LABEL_66:
            v12 = ENErrorF(1, "No active region");
            goto LABEL_45;
          }

          automaticRegionSwitchEnabled = [delegate isENLoggingProfileInstalled];
LABEL_30:
          v22 = MEMORY[0x277CBEC20];
          v23 = MEMORY[0x277CBEC30];
LABEL_33:
          if (automaticRegionSwitchEnabled)
          {
            v22 = v23;
          }

          v24 = v22;
LABEL_36:
          bundleIdentifier = v24;
          goto LABEL_37;
        }

        if (![(ENXPCClient *)self->_client entitledForDifferentialPrivacy])
        {
          v12 = ENErrorF(3, "Requires entitlement: %s", "com.apple.private.exposure-notification-differential-privacy");
          goto LABEL_45;
        }

        region = [(ENDaemon *)self->_daemon differentialPrivacyManager];
        regionCode = [region metadata];
      }

      bundleIdentifier = regionCode;

      if (!bundleIdentifier)
      {
        v12 = ENErrorF(11, "No error, no object?");
        goto LABEL_45;
      }

LABEL_37:
      v25 = _CFXPCCreateXPCObjectFromCFObject();
      if (v25)
      {
        reply = xpc_dictionary_create_reply(v5);
        v27 = reply;
        if (reply)
        {
          xpc_dictionary_set_value(reply, "oObj", v25);
          [(ENXPCConnection *)self _xpcSendMessage:v27];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetInfo:]", 90, "### GetInfo create reply failed");
        }
      }

      else
      {
        v41 = ENErrorF(11, "Output object XPC conversion failed");
        v27 = v49[5];
        v49[5] = v41;
      }

      goto LABEL_46;
    }

    activeStatus = [activeEntity activeStatus];
    if (activeStatus > 1)
    {
      if (activeStatus == 3)
      {
        v14 = "NKDActive";
        goto LABEL_44;
      }

      if (activeStatus == 2)
      {
        entity3 = [activeEntity entity];
        bundleIdentifier = [entity3 bundleIdentifier];

        if (bundleIdentifier)
        {
          goto LABEL_37;
        }

        v14 = "Phase1Active";
LABEL_44:
        v12 = ENErrorF(1, "No active app. Active status: %s", v14);
        goto LABEL_45;
      }
    }

    else
    {
      if (!activeStatus)
      {
        v14 = "Unknown";
        goto LABEL_44;
      }

      if (activeStatus == 1)
      {
        v14 = "Inactive";
        goto LABEL_44;
      }
    }

    v14 = "?";
    goto LABEL_44;
  }

LABEL_47:
  v6[2](v6);

  _Block_object_dispose(&v48, 8);
}

void *__31__ENXPCConnection__xpcGetInfo___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetInfo:]_block_invoke", 90, "### GetInfo failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetDataVaultSize:(id)size
{
  v46[1] = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__3;
  v43 = __Block_byref_object_dispose__3;
  v44 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __40__ENXPCConnection__xpcGetDataVaultSize___block_invoke;
  v36[3] = &unk_278FD10D0;
  v38 = &v39;
  selfCopy = self;
  v36[4] = self;
  original = sizeCopy;
  v37 = original;
  v23 = MEMORY[0x24C214430](v36);
  v5 = v40;
  obj = v40[5];
  LOBYTE(self) = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v5 + 5, obj);
  if (self)
  {
    v25 = objc_alloc_init(MEMORY[0x277CCAA08]);
    v6 = ENDataVaultURL();
    v28 = *MEMORY[0x277CBE840];
    v46[0] = *MEMORY[0x277CBE840];
    v7 = [MEMORY[0x277CBEA68] arrayWithObjects:v46 count:1];
    v8 = [v25 enumeratorAtURL:v6 includingPropertiesForKeys:v7 options:0 errorHandler:0];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v8;
    v9 = 0;
    v10 = 0;
    v11 = [v27 countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v11)
    {
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v27);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          v29 = 0;
          v30 = 0;
          v15 = [v14 getResourceValue:&v30 forKey:v28 error:&v29];
          v16 = v30;
          v17 = v29;
          if (v15)
          {
            v9 += [v16 unsignedLongLongValue];
            ++v10;
          }

          else
          {
            v18 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed = [v18 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              v20 = CUPrintNSError();
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetDataVaultSize:]", 90, "### GetDataVaultSize file size lookup for %@: %@", v14, v20);
            }
          }
        }

        v11 = [v27 countByEnumeratingWithState:&v31 objects:v45 count:16];
      }

      while (v11);
    }

    if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetDataVaultSize:]", 50, "GetDataVaultSize returning %llu bytes for %llu files", v9, v10);
    }

    reply = xpc_dictionary_create_reply(original);
    v22 = reply;
    if (reply)
    {
      xpc_dictionary_set_uint64(reply, "bytes", v9);
      [(ENXPCConnection *)selfCopy _xpcSendMessage:v22];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetDataVaultSize:]", 90, "### GetDataVaultSize create reply failed");
    }
  }

  v23[2](v23);

  _Block_object_dispose(&v39, 8);
}

void *__40__ENXPCConnection__xpcGetDataVaultSize___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetDataVaultSize:]_block_invoke", 90, "### GetDataVaultSize failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetEntities:(id)entities
{
  entitiesCopy = entities;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __35__ENXPCConnection__xpcGetEntities___block_invoke;
  v27[3] = &unk_278FD10D0;
  v29 = &v30;
  v27[4] = self;
  v5 = entitiesCopy;
  v28 = v5;
  v6 = MEMORY[0x24C214430](v27);
  v7 = v31;
  obj = v31[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    v11 = [entity copy];

    v12 = +[ENLoggingPrefs sharedENLoggingPrefs];
    LODWORD(entity) = [v12 isSensitiveLoggingAllowed];

    if (entity && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetEntities:]", 30, "GetEntities activeEntity: %@", v11);
    }

    v13 = objc_opt_new();
    v14 = objc_opt_new();
    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __35__ENXPCConnection__xpcGetEntities___block_invoke_2;
    v20[3] = &unk_278FD1F40;
    v20[4] = self;
    v17 = v11;
    v21 = v17;
    v18 = v13;
    v22 = v18;
    v19 = v14;
    v23 = v19;
    v24 = v5;
    v25 = &v30;
    [configurationStore allRegionConfigurationsWithCompletion:v20];
  }

  v6[2](v6);

  _Block_object_dispose(&v30, 8);
}

void *__35__ENXPCConnection__xpcGetEntities___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetEntities:]_block_invoke", 90, "### GetEntities failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __35__ENXPCConnection__xpcGetEntities___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ENXPCConnection__xpcGetEntities___block_invoke_3;
  block[3] = &unk_278FD1F18;
  block[4] = v5;
  v15 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v16 = v12;
  v17 = v11;
  v18 = *(a1 + 72);
  v13 = v3;
  dispatch_async(v6, block);
}

void __35__ENXPCConnection__xpcGetEntities___block_invoke_3(uint64_t a1)
{
  v136 = *MEMORY[0x277D85DE8];
  v2 = TCCAccessCopyInformation();
  v3 = MEMORY[0x277D6C0D8];
  v107 = [MEMORY[0x277CCAC28] predicateWithFormat:@"%K == %@", *MEMORY[0x277D6C0D8], *MEMORY[0x277CBED20]];
  v4 = [v2 filteredArrayUsingPredicate:?];
  [MEMORY[0x277CCAC28] predicateWithFormat:@"%K == %@", *v3, *MEMORY[0x277CBED18]];
  v106 = v108 = v2;
  v112 = [v2 filteredArrayUsingPredicate:?];
  v5 = [*(*(a1 + 32) + 32) regionMonitor];
  v130 = 0;
  v109 = [v5 getAllRegionsWithError:&v130];
  v6 = v130;

  v105 = v6;
  if ((v6 || !v109) && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_1();
  }

  v7 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v8 = [v7 isSensitiveLoggingAllowed];

  if (v8 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_2(v109);
  }

  v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v10 = [v9 isSensitiveLoggingAllowed];

  if (v10 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_3(a1);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v126 objects:v135 count:16];
  v13 = MEMORY[0x277D6C0C0];
  v114 = v11;
  if (v12)
  {
    v14 = v12;
    v15 = *v127;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v127 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [*(*(&v126 + 1) + 8 * i) objectForKey:*v13];
        if (v17)
        {
          v18 = v17;
          v19 = [*(*(a1 + 32) + 32) _getBundleIDFromBundle:v17];
          if (v19)
          {
            v20 = [*(*(a1 + 32) + 32) _getInfoDictFromBundle:v18];
            if (v20)
            {
              v21 = [*(*(a1 + 32) + 32) regionForBundleInfo:v20];
              v22 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:v19 region:v21];
              v23 = [*(a1 + 48) bundleIdentifier];
              v24 = [v19 isEqual:v23];

              if ((v24 & 1) == 0)
              {
                v25 = [*(a1 + 48) region];
                v26 = [v21 isEqual:v25];

                if ((v26 & 1) == 0)
                {
                  [*(a1 + 56) addObject:v22];
                }
              }

              v11 = v114;
              v13 = MEMORY[0x277D6C0C0];
            }
          }
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v126 objects:v135 count:16];
    }

    while (v14);
  }

  v125 = 0u;
  v123 = 0u;
  v124 = 0u;
  v122 = 0u;
  v27 = v112;
  v28 = [v27 countByEnumeratingWithState:&v122 objects:v134 count:16];
  v113 = v27;
  if (v28)
  {
    v29 = v28;
    v30 = *v123;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v123 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v122 + 1) + 8 * j) objectForKey:*v13];
        if (v32)
        {
          v33 = v32;
          v34 = [*(*(a1 + 32) + 32) _getBundleIDFromBundle:v32];
          if (v34)
          {
            v35 = [*(*(a1 + 32) + 32) _getInfoDictFromBundle:v33];
            if (v35)
            {
              v36 = [*(*(a1 + 32) + 32) regionForBundleInfo:v35];
              v37 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:v34 region:v36];
              v38 = [*(a1 + 48) bundleIdentifier];
              v39 = [v34 isEqual:v38];

              if ((v39 & 1) == 0)
              {
                v40 = [*(a1 + 48) region];
                v41 = [v36 isEqual:v40];

                if ((v41 & 1) == 0)
                {
                  [*(a1 + 64) addObject:v37];
                }
              }

              v27 = v113;
              v13 = MEMORY[0x277D6C0C0];
            }
          }
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v122 objects:v134 count:16];
    }

    while (v29);
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v42 = *(a1 + 40);
  v43 = [v42 countByEnumeratingWithState:&v118 objects:v133 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v119;
    v110 = v42;
    do
    {
      v46 = 0;
      do
      {
        if (*v119 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v118 + 1) + 8 * v46);
        v48 = [v47 region];
        v49 = [*(*(a1 + 32) + 32) configurationManager];
        v50 = [v49 configurationStore];
        v51 = [v50 serverConfigurationForRegion:v48];

        if (v51)
        {
          if ([v51 enEnabled])
          {
            if ([v51 enVersion] >= 2)
            {
              v52 = [*(a1 + 48) region];
              v53 = [v48 isEqual:v52];

              if ((v53 & 1) == 0)
              {
                v54 = objc_alloc(MEMORY[0x277CC5C18]);
                v55 = [v51 appBundleID];
                v56 = [v54 initWithBundleID:v55 region:v48];

                v57 = [v56 bundleIdentifier];
                if ([v57 length])
                {

                  goto LABEL_58;
                }

                v58 = [v56 region];

                if (!v58)
                {
                  goto LABEL_86;
                }

LABEL_58:
                v59 = [v47 userConsent];
                v60 = [v59 consent];

                if (v60 == 2)
                {
                  v61 = MEMORY[0x277CCAC28];
                  v62 = [v56 region];
                  v63 = [v61 predicateWithFormat:@"region == %@", v62];

                  v111 = [*(a1 + 64) filteredSetUsingPredicate:v63];
                  v64 = +[ENLoggingPrefs sharedENLoggingPrefs];
                  LODWORD(v61) = [v64 isSensitiveLoggingAllowed];

                  if (v61 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_5();
                  }

                  v65 = +[ENLoggingPrefs sharedENLoggingPrefs];
                  v66 = [v65 isSensitiveLoggingAllowed];

                  if (v66 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_6(v111);
                  }

                  if ([*(a1 + 64) containsObject:v56] & 1) != 0 || (objc_msgSend(v111, "containsObject:", v56))
                  {
                    v67 = +[ENLoggingPrefs sharedENLoggingPrefs];
                    v68 = [v67 isSensitiveLoggingAllowed];

                    if (v68 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_8(v56);
                    }
                  }

                  else
                  {
                    v74 = +[ENLoggingPrefs sharedENLoggingPrefs];
                    v75 = [v74 isSensitiveLoggingAllowed];

                    if (v75 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_7(v56);
                    }

                    [*(a1 + 56) addObject:v56];
                  }

                  goto LABEL_85;
                }

                if (([v109 containsObject:v48] & 1) == 0)
                {
                  v69 = [v48 countryCode];
                  v70 = [*(*(a1 + 32) + 32) prefRegionIdentifierOverride];
                  v63 = v69;
                  v71 = v70;
                  v72 = v71;
                  if (v63 != v71)
                  {
                    if ((v63 != 0) == (v71 == 0))
                    {

                      goto LABEL_85;
                    }

                    v73 = [v63 isEqual:v71];

                    if (v73)
                    {
                      goto LABEL_90;
                    }

LABEL_86:

                    v42 = v110;
                    goto LABEL_87;
                  }
                }

LABEL_90:
                v76 = [*(*(a1 + 32) + 32) configurationManager];
                v77 = [v76 configurationStore];
                v63 = [v77 agencyConfigurationForRegion:v48];

                if (v63)
                {
                  if (([*(a1 + 56) containsObject:v56] & 1) == 0)
                  {
                    [*(a1 + 64) addObject:v56];
                  }
                }

                else
                {
                  v78 = +[ENLoggingPrefs sharedENLoggingPrefs];
                  v79 = [v78 isSensitiveLoggingAllowed];

                  if (v79 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_4();
                  }
                }

LABEL_85:

                goto LABEL_86;
              }
            }
          }
        }

LABEL_87:

        ++v46;
      }

      while (v44 != v46);
      v80 = [v42 countByEnumeratingWithState:&v118 objects:v133 count:16];
      v44 = v80;
    }

    while (v80);
  }

  v81 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v82 = [v81 isSensitiveLoggingAllowed];

  if (v82 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_9(a1);
  }

  v83 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v84 = [v83 isSensitiveLoggingAllowed];

  if (v84 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_10(a1);
  }

  reply = xpc_dictionary_create_reply(*(a1 + 72));
  if (reply)
  {
    v86 = *(a1 + 48);
    v87 = *(*(a1 + 80) + 8);
    obj = *(v87 + 40);
    v88 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v86 requiringSecureCoding:1 error:&obj];
    objc_storeStrong((v87 + 40), obj);
    xpc_dictionary_set_data(reply, "acEn", [v88 bytes], objc_msgSend(v88, "length"));
    CFDataGetTypeID();
    v89 = CFPrefs_CopyTypedValue();
    v90 = v89;
    if (v89)
    {
      v91 = v89;
    }

    else
    {
      v91 = v88;
    }

    v92 = v91;

    v93 = [v92 bytes];
    v94 = [v92 length];

    xpc_dictionary_set_data(reply, "tnEn", v93, v94);
    v95 = MEMORY[0x277CCAAB8];
    v96 = [*(a1 + 56) allObjects];
    v132 = v96;
    v97 = [MEMORY[0x277CBEA68] arrayWithObjects:&v132 count:1];
    v98 = *(*(a1 + 80) + 8);
    v116 = *(v98 + 40);
    v99 = [v95 archivedDataWithRootObject:v97 requiringSecureCoding:1 error:&v116];
    objc_storeStrong((v98 + 40), v116);

    xpc_dictionary_set_data(reply, "auEn", [v99 bytes], objc_msgSend(v99, "length"));
    v100 = MEMORY[0x277CCAAB8];
    v101 = [*(a1 + 64) allObjects];
    v131 = v101;
    v102 = [MEMORY[0x277CBEA68] arrayWithObjects:&v131 count:1];
    v103 = *(*(a1 + 80) + 8);
    v115 = *(v103 + 40);
    v104 = [v100 archivedDataWithRootObject:v102 requiringSecureCoding:1 error:&v115];
    objc_storeStrong((v103 + 40), v115);

    xpc_dictionary_set_data(reply, "avaEn", [v104 bytes], objc_msgSend(v104, "length"));
    [*(a1 + 32) _xpcSendMessage:reply];
  }

  else
  {
    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_11();
  }
}

- (void)_xpcSetActiveEntity:(id)entity
{
  v58 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__3;
  v56 = __Block_byref_object_dispose__3;
  v57 = 0;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __39__ENXPCConnection__xpcSetActiveEntity___block_invoke;
  v49[3] = &unk_278FD10D0;
  v51 = &v52;
  selfCopy = self;
  v49[4] = self;
  original = entityCopy;
  v50 = original;
  v42 = MEMORY[0x24C214430](v49);
  v5 = v53;
  obj = v53[5];
  v6 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v5 + 5, obj);
  if (v6)
  {
    objc_opt_class();
    v7 = v53 + 5;
    v47 = v53[5];
    v44 = ENXPCDecodeSecureObjectIfPresent();
    objc_storeStrong(v7, v47);
    if (v53[5])
    {
      v38 = ENErrorF(2, "Region decode failed");
      v39 = v53[5];
      v53[5] = v38;
    }

    else
    {
      if (v44)
      {
        v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed = [v8 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetActiveEntity:]", 30, "### Setting active entity to %@", v44);
        }

        configurationManager = [(ENDaemon *)self->_daemon configurationManager];
        configurationStore = [configurationManager configurationStore];
        v12 = [configurationStore configurationForRegion:v44];

        v13 = v44;
        configurationManager2 = [(ENDaemon *)self->_daemon configurationManager];
        configurationStore2 = [configurationManager2 configurationStore];
        v16 = [configurationStore2 serverConfigurationForRegion:v13];

        if (!v16)
        {
          v22 = 0;
          appBundleID4 = 0;
LABEL_24:
          if (![(ENDaemon *)selfCopy->_daemon prefEnabled])
          {
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetActiveEntity:]", 30, "ExposureNotificationSetEnabled");
            }

            CFPrefs_SetValue();
          }

          v32 = [ENActiveEntity alloc];
          v33 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:appBundleID4 region:v13];
          v34 = [(ENActiveEntity *)v32 initWithEntity:v33 activeStatus:v22];

          if ([(ENDaemon *)selfCopy->_daemon _writePreferenceActiveEntity:v34])
          {
            [(ENDaemon *)selfCopy->_daemon _disableAvailabilityAlertIfNeeded];
            [(ENDaemon *)selfCopy->_daemon prefsChanged];
            [(ENDaemon *)selfCopy->_daemon xpcReportStatus];
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetActiveEntity:]", 90, "### SetActiveEntity failed to write active entity pref");
          }

          reply = xpc_dictionary_create_reply(original);
          if (reply)
          {
            [(ENXPCConnection *)selfCopy _xpcSendMessage:reply];
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetActiveEntity:]", 90, "### SetActiveEntity create reply failed");
          }

          goto LABEL_44;
        }

        v17 = MEMORY[0x277CC1E68];
        appBundleID = [v16 appBundleID];
        v19 = [v17 applicationProxyForIdentifier:appBundleID placeholder:0];

        appBundleID2 = [v16 appBundleID];
        if ([appBundleID2 length])
        {
          appBundleID3 = [v16 appBundleID];
        }

        else
        {
          appBundleID3 = &stru_285D62BB0;
        }

        appState = [v19 appState];
        if ([appState isInstalled])
        {
          v25 = [(__CFString *)appBundleID3 length]== 0;

          if (!v25)
          {
            if ([(ENDaemon *)selfCopy->_daemon tccAccessForBundleID:appBundleID3]!= 2)
            {
              appBundleID4 = [v16 appBundleID];
              v22 = 2;
LABEL_23:

              goto LABEL_24;
            }

            v36 = ENErrorF(10, "TCC denied for bundle: %@", appBundleID3);
LABEL_48:
            v37 = v53[5];
            v53[5] = v36;

LABEL_49:
            appBundleID4 = 0;
LABEL_44:

            goto LABEL_45;
          }
        }

        else
        {
        }

        if ([v12 enVersion] == 2)
        {
          userConsent = [v12 userConsent];
          consent = [userConsent consent];

          if ((consent - 1) < 2)
          {
            TCCAccessSetForBundleId();
            appBundleID4 = 0;
            v22 = 3;
            goto LABEL_23;
          }

          v36 = ENErrorF(10, "Invalid region authorization");
        }

        else
        {
          if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            appState2 = [v19 appState];
            isInstalled = [appState2 isInstalled];
            enVersion = [v12 enVersion];
            v31 = "no";
            if (isInstalled)
            {
              v31 = "yes";
            }

            LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetActiveEntity:]", 90, "Invalid configuration to set active entity. App installed: %s, Region config:%u", v31, enVersion);
          }

          v36 = ENErrorF(11, "Invalid configuration to setActiveEntity");
        }

        goto LABEL_48;
      }

      v46 = 0;
      CUXPCDecodeNSString();
      v40 = ENErrorF(2, "No app bundle identifier");
      v41 = v53[5];
      v53[5] = v40;
    }

    v13 = 0;
    goto LABEL_49;
  }

LABEL_45:
  v42[2](v42);

  _Block_object_dispose(&v52, 8);
}

void *__39__ENXPCConnection__xpcSetActiveEntity___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetActiveEntity:]_block_invoke", 90, "### SetActiveEntity failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetLastExposureNotification:(id)notification
{
  notificationCopy = notification;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __51__ENXPCConnection__xpcGetLastExposureNotification___block_invoke;
  v24[3] = &unk_278FD10D0;
  v26 = &v27;
  v24[4] = self;
  v5 = notificationCopy;
  v25 = v5;
  v6 = MEMORY[0x24C214430](v24);
  v7 = (v28 + 5);
  obj = v28[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    daemon = self->_daemon;
    v10 = (v28 + 5);
    v22 = v28[5];
    v11 = [(ENDaemon *)daemon getExposureDatabaseAndReturnError:&v22];
    objc_storeStrong(v10, v22);
    if (v11)
    {
      v21 = 0;
      v12 = objc_opt_class();
      v13 = (v28 + 5);
      v20 = v28[5];
      v14 = [v11 getValue:&v21 forKey:@"LastExposureNotification" ofClass:v12 error:&v20];
      v15 = v21;
      objc_storeStrong(v13, v20);
      if (v14)
      {
        reply = xpc_dictionary_create_reply(v5);
        if (reply)
        {
          if (!v15 || (v17 = (v28 + 5), v19 = v28[5], v18 = ENXPCEncodeSecureObject(), objc_storeStrong(v17, v19), v18))
          {
            [(ENXPCConnection *)self _xpcSendMessage:reply, v19];
          }
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetLastExposureNotification:]", 90, "### GetLastExposureNotification create reply failed");
        }
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v27, 8);
}

void *__51__ENXPCConnection__xpcGetLastExposureNotification___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetLastExposureNotification:]_block_invoke", 90, "### GetLastExposureNotification failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetStatusForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__3;
  v39 = __Block_byref_object_dispose__3;
  v40 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __52__ENXPCConnection__xpcGetStatusForBundleIdentifier___block_invoke;
  v32[3] = &unk_278FD10D0;
  v34 = &v35;
  v32[4] = self;
  v5 = identifierCopy;
  v33 = v5;
  v6 = MEMORY[0x24C214430](v32);
  v7 = (v36 + 5);
  obj = v36[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (!v8)
  {
    goto LABEL_25;
  }

  activeEntity = [(ENDaemon *)self->_daemon activeEntity];
  entity = [activeEntity entity];
  bundleIdentifier = [entity bundleIdentifier];

  if (bundleIdentifier)
  {
    activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
    entity2 = [activeEntity2 entity];
    region = [entity2 region];

    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];
    v17 = [configurationStore serverConfigurationForRegion:region];

    string = xpc_dictionary_get_string(v5, "aBid");
    if (!string)
    {
      v24 = 0;
      v23 = 0;
LABEL_14:
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        v27 = "no";
        if (v23)
        {
          v27 = "yes";
        }

        v28 = "server config";
        if (!v17)
        {
          v28 = "default";
        }

        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetStatusForBundleIdentifier:]", 30, "GetStatusForBundleIdentifier: '%s' : %s, BAR interval %llu seconds %s", string, v27, v24, v28);
      }

      reply = xpc_dictionary_create_reply(v5);
      v30 = reply;
      if (reply)
      {
        xpc_dictionary_set_BOOL(reply, "enbd", v23);
        xpc_dictionary_set_uint64(v30, "aBARi", v24);
        [(ENXPCConnection *)self _xpcSendMessage:v30];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetStatusForBundleIdentifier:]", 90, "### GetStatusForBundleIdentifier create reply failed");
      }

      goto LABEL_25;
    }

    activeEntity3 = [(ENDaemon *)self->_daemon activeEntity];
    entity3 = [activeEntity3 entity];
    bundleIdentifier2 = [entity3 bundleIdentifier];
    utf8ValueSafe = [bundleIdentifier2 utf8ValueSafe];

    if (utf8ValueSafe)
    {
      v23 = strcmp(utf8ValueSafe, string) == 0;
      if (!v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v23 = 0;
      if (!v17)
      {
LABEL_10:
        v26 = 14400;
LABEL_11:
        if (v23)
        {
          v24 = v26;
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_14;
      }
    }

    [v17 applicationBackgroundRuntimeInterval];
    v26 = v25;
    if (v25)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetStatusForBundleIdentifier:]", 90, "### GetStatusForBundleIdentifier No Active App Found");
  }

LABEL_25:
  v6[2](v6);

  _Block_object_dispose(&v35, 8);
}

void *__52__ENXPCConnection__xpcGetStatusForBundleIdentifier___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetStatusForBundleIdentifier:]_block_invoke", 90, "### GetStatusForBundleIdentifier failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcLegalConsentPageCount:(id)count
{
  countCopy = count;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__ENXPCConnection__xpcLegalConsentPageCount___block_invoke;
  v12[3] = &unk_278FD10D0;
  v14 = &v15;
  v12[4] = self;
  v5 = countCopy;
  v13 = v5;
  v6 = MEMORY[0x24C214430](v12);
  objc_opt_class();
  v7 = (v16 + 5);
  obj = v16[5];
  v8 = ENXPCDecodeSecureObject();
  objc_storeStrong(v7, obj);
  if (v8)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcLegalConsentPageCount:]", 30, "Legal consent page seen for region: %@", v8);
    }

    v9 = [(ENDaemon *)self->_daemon _getLegalConsentPageCount]+ 1;
    CFPrefs_SetInt64();
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcLegalConsentPageCount:]", 30, "Legal consent page view daily count: %d", v9);
    }

    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcLegalConsentPageCount:]", 90, "### LegalConsentPageCount create reply failed");
    }
  }

  v6[2](v6);
  _Block_object_dispose(&v15, 8);
}

void *__45__ENXPCConnection__xpcLegalConsentPageCount___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcLegalConsentPageCount:]_block_invoke", 90, "### LegalConsentPageCount failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcOnboardingDidStart:(id)start
{
  startCopy = start;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__3;
  v44 = __Block_byref_object_dispose__3;
  v45 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __42__ENXPCConnection__xpcOnboardingDidStart___block_invoke;
  v37[3] = &unk_278FD10D0;
  v39 = &v40;
  v37[4] = self;
  v5 = startCopy;
  v38 = v5;
  v6 = MEMORY[0x24C214430](v37);
  v7 = (v41 + 5);
  obj = v41[5];
  v32 = v6;
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    string = xpc_dictionary_get_string(v5, "iStr");
    if (!string)
    {
      v27 = ENErrorF(2, "No source specified");
      v10 = v41[5];
      v41[5] = v27;
      goto LABEL_33;
    }

    v10 = [MEMORY[0x277CCACA0] stringWithUTF8String:string];
    if ([v10 isEqualToString:@"com.apple.Preferences"])
    {
      v11 = 1;
    }

    else if ([v10 isEqualToString:@"com.apple.PublicHealthRemoteUI"])
    {
      if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcOnboardingDidStart:]", 50, "Buddy onboarding triggered once");
      }

      CFPrefs_SetValue();
      v11 = 2;
    }

    else if ([v10 isEqualToString:@"com.apple.ENDaemon"])
    {
      v11 = 3;
    }

    else
    {
      if (([v10 isEqualToString:@"com.apple.HealthENLauncher"] & 1) == 0)
      {
        v28 = ENErrorF(2, "Bad source");
        v13 = v41[5];
        v41[5] = v28;
        goto LABEL_32;
      }

      v11 = 4;
    }

    objc_opt_class();
    v12 = (v41 + 5);
    v35 = v41[5];
    v13 = ENXPCDecodeSecureObject();
    objc_storeStrong(v12, v35);
    if (!v13)
    {
LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    v33 = v5;
    v31 = v10;
    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    v15 = configurationManager;
    if (configurationManager)
    {
      configurationStore = [configurationManager configurationStore];
      v17 = [configurationStore configurationForRegion:v13];

      if (v17)
      {
        everStartedOnboarding = [v17 everStartedOnboarding];
        [v17 setEverStartedOnboarding:1];
        configurationStore2 = [v15 configurationStore];
        v20 = (v41 + 5);
        v34 = v41[5];
        v21 = [configurationStore2 saveRegionConfiguration:v17 error:&v34];
        objc_storeStrong(v20, v34);

        if ((v21 & 1) == 0)
        {
          v6 = v32;
          goto LABEL_31;
        }

        regionCode = [v13 regionCode];
        v23 = "yes";
        if (everStartedOnboarding)
        {
          v23 = "no";
        }

        if (regionCode)
        {
          v24 = v23;
        }

        else
        {
          v24 = "N/A";
        }

        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          regionCode2 = [v13 regionCode];
          LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcOnboardingDidStart:]", 30, "Onboarding started by '%s' for '%@' first time %s", string, regionCode2, v24);
        }

        [(ENDaemon *)self->_daemon setOnboardingTrigger:v11];
        [(ENDaemon *)self->_daemon setOnboardingFirstTime:everStartedOnboarding ^ 1u];
        [(ENDaemon *)self->_daemon setOnboardingRegionTrigger:v13];
        [(ENDaemon *)self->_daemon setOnboardingLegalConsentLastViewCount:[(ENDaemon *)self->_daemon _getLegalConsentPageCount]];
        v6 = v32;
        reply = xpc_dictionary_create_reply(v33);
        if (reply)
        {
          [(ENXPCConnection *)self _xpcSendMessage:reply];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcOnboardingDidStart:]", 90, "### OnboardingDidStart create reply failed");
        }
      }

      else
      {
        v30 = ENErrorF(2, "No region config");
        reply = v41[5];
        v41[5] = v30;
      }
    }

    else
    {
      v29 = ENErrorF(11, "No configuration manager");
      v17 = v41[5];
      v41[5] = v29;
    }

LABEL_31:

    v10 = v31;
    v5 = v33;
    goto LABEL_32;
  }

LABEL_34:
  v6[2](v6);

  _Block_object_dispose(&v40, 8);
}

void *__42__ENXPCConnection__xpcOnboardingDidStart___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcOnboardingDidStart:]_block_invoke", 90, "### OnboardingDidStart failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcSetActiveApp:(id)app
{
  v42 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__3;
  v39 = __Block_byref_object_dispose__3;
  v40 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __36__ENXPCConnection__xpcSetActiveApp___block_invoke;
  v32[3] = &unk_278FD10D0;
  v34 = &v35;
  v32[4] = self;
  xdict = appCopy;
  v33 = xdict;
  v25 = MEMORY[0x24C214430](v32);
  v5 = v36;
  obj = v36[5];
  v6 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v5 + 5, obj);
  if (v6)
  {
    string = xpc_dictionary_get_string(xdict, "aBid");
    if (string)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = TCCAccessCopyInformation();
      v9 = [v8 countByEnumeratingWithState:&v27 objects:v41 count:16];
      if (v9)
      {
        v10 = 0;
        v11 = *v28;
        v12 = MEMORY[0x277D6C0C0];
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v14 = [*(*(&v27 + 1) + 8 * i) objectForKey:*v12];
            if (v14)
            {
              v15 = [(ENDaemon *)self->_daemon _getBundleIDFromBundle:v14];
              v16 = v15;
              if (v15 && !strcmp(string, [v15 utf8ValueSafe]))
              {
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetActiveApp:]", 30, "### SetActiveApp Valid app bundle %@", v16);
                }

                InfoDictionary = CFBundleGetInfoDictionary(v14);
                if (InfoDictionary)
                {
                  v18 = [(ENDaemon *)self->_daemon regionForBundleInfo:InfoDictionary];
                  if (v18)
                  {
                    [(ENDaemon *)self->_daemon fetchServerConfigurationForAppBundleIdentifier:v16 infoDictionary:InfoDictionary];
                  }

                  goto LABEL_25;
                }

                v10 = 1;
              }
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v27 objects:v41 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }

        if (v10)
        {
          v18 = 0;
          v16 = 0;
LABEL_25:
          v19 = [ENActiveEntity alloc];
          v20 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:v16 region:v18];
          v21 = [(ENActiveEntity *)v19 initWithEntity:v20 activeStatus:2];

          [(ENDaemon *)self->_daemon _writePreferenceActiveEntity:v21];
          [(ENDaemon *)self->_daemon xpcReportStatus];
          reply = xpc_dictionary_create_reply(xdict);
          if (reply)
          {
            [(ENXPCConnection *)self _xpcSendMessage:reply];
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetActiveApp:]", 90, "### SetActiveApp create reply failed");
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      v23 = ENErrorF(2, "Incorrect app bundle identifier");
      v18 = v36[5];
      v36[5] = v23;
LABEL_28:
    }

    else
    {
      v24 = ENErrorF(2, "No app bundle identifier");
      v8 = v36[5];
      v36[5] = v24;
    }
  }

  v25[2](v25);

  _Block_object_dispose(&v35, 8);
}

void *__36__ENXPCConnection__xpcSetActiveApp___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetActiveApp:]_block_invoke", 90, "### SetActiveApp failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcSetAutomaticRegionSwitch:(id)switch
{
  switchCopy = switch;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__ENXPCConnection__xpcSetAutomaticRegionSwitch___block_invoke;
  v13[3] = &unk_278FD10D0;
  v15 = &v16;
  v13[4] = self;
  v5 = switchCopy;
  v14 = v5;
  v6 = MEMORY[0x24C214430](v13);
  v7 = (v17 + 5);
  obj = v17[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = xpc_dictionary_get_BOOL(v5, "enbd");
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v10 = "disabled";
      if (v9)
      {
        v10 = "enabled";
      }

      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetAutomaticRegionSwitch:]", 30, "### setAutomaticRegionSwitchEnabled : %s", v10);
    }

    CFPrefs_SetValue();
    [(ENDaemon *)self->_daemon prefsChanged];
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetAutomaticRegionSwitch:]", 90, "### setAutomaticRegionSwitchEnabled create reply failed");
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v16, 8);
}

void *__48__ENXPCConnection__xpcSetAutomaticRegionSwitch___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetAutomaticRegionSwitch:]_block_invoke", 90, "### setAutomaticRegionSwitchEnabled failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcSetAvailabilityAlertEnabled:(id)enabled
{
  enabledCopy = enabled;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__ENXPCConnection__xpcSetAvailabilityAlertEnabled___block_invoke;
  v13[3] = &unk_278FD10D0;
  v15 = &v16;
  v13[4] = self;
  v5 = enabledCopy;
  v14 = v5;
  v6 = MEMORY[0x24C214430](v13);
  v7 = (v17 + 5);
  obj = v17[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = xpc_dictionary_get_BOOL(v5, "enbd");
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v10 = "disabled";
      if (v9)
      {
        v10 = "enabled";
      }

      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetAvailabilityAlertEnabled:]", 30, "### setAvailabilityAlertEnabled : %s", v10);
    }

    CFPrefs_SetValue();
    [(ENDaemon *)self->_daemon prefsChanged];
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetAvailabilityAlertEnabled:]", 90, "### setAvailabilityAlertEnabled create reply failed");
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v16, 8);
}

void *__51__ENXPCConnection__xpcSetAvailabilityAlertEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetAvailabilityAlertEnabled:]_block_invoke", 90, "### setAvailabilityAlertEnabled failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcSetActiveRegion:(id)region
{
  regionCopy = region;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__3;
  v39 = __Block_byref_object_dispose__3;
  v40 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __39__ENXPCConnection__xpcSetActiveRegion___block_invoke;
  v32[3] = &unk_278FD10D0;
  v34 = &v35;
  v32[4] = self;
  v5 = regionCopy;
  v33 = v5;
  v6 = MEMORY[0x24C214430](v32);
  v7 = (v36 + 5);
  obj = v36[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    objc_opt_class();
    v9 = (v36 + 5);
    v30 = v36[5];
    v10 = ENXPCDecodeSecureObjectIfPresent();
    objc_storeStrong(v9, v30);
    if (v10 || !v36[5])
    {
      v11 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v11 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetActiveRegion:]", 30, "### Setting active region to %@", v10);
      }

      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];
      v15 = [configurationStore configurationForRegion:v10];

      configurationManager2 = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore2 = [configurationManager2 configurationStore];
      v18 = [configurationStore2 serverConfigurationForRegion:v10];

      if (v18)
      {
        v19 = MEMORY[0x277CC1E68];
        appBundleID = [v18 appBundleID];
        v21 = [v19 applicationProxyForIdentifier:appBundleID placeholder:0];

        appState = [v21 appState];
        isInstalled = [appState isInstalled];

        if (isInstalled)
        {
          appBundleID2 = [v18 appBundleID];
          v25 = 2;
        }

        else
        {
          appBundleID2 = 0;
          if ([v15 enVersion] == 2)
          {
            v25 = 3;
          }

          else
          {
            v25 = 0;
          }
        }
      }

      else
      {
        v25 = 0;
        appBundleID2 = 0;
      }

      v26 = [ENActiveEntity alloc];
      v27 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:appBundleID2 region:v10];
      v28 = [(ENActiveEntity *)v26 initWithEntity:v27 activeStatus:v25];

      if ([(ENDaemon *)self->_daemon _writePreferenceActiveEntity:v28])
      {
        [(ENDaemon *)self->_daemon prefsChanged];
        [(ENDaemon *)self->_daemon xpcReportStatus];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetActiveRegion:]", 90, "### SetActiveRegion failed to write active region pref");
      }

      reply = xpc_dictionary_create_reply(v5);
      if (reply)
      {
        [(ENXPCConnection *)self _xpcSendMessage:reply];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetActiveRegion:]", 90, "### SetActiveRegion create reply failed");
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v35, 8);
}

void *__39__ENXPCConnection__xpcSetActiveRegion___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetActiveRegion:]_block_invoke", 90, "### SetActiveRegion failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcSetMonthlySummaryAlertEnabled:(id)enabled
{
  enabledCopy = enabled;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__ENXPCConnection__xpcSetMonthlySummaryAlertEnabled___block_invoke;
  v13[3] = &unk_278FD10D0;
  v15 = &v16;
  v13[4] = self;
  v5 = enabledCopy;
  v14 = v5;
  v6 = MEMORY[0x24C214430](v13);
  v7 = (v17 + 5);
  obj = v17[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = xpc_dictionary_get_BOOL(v5, "enbd");
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v10 = "disabled";
      if (v9)
      {
        v10 = "enabled";
      }

      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcSetMonthlySummaryAlertEnabled:]", 30, "### setMonthlySummaryAlertEnabled : %s", v10);
    }

    [(ENDaemon *)self->_daemon setMonthlySummaryDisabled:!v9];
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetMonthlySummaryAlertEnabled:]", 90, "### setMonthlySummaryAlertEnabled create reply failed");
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v16, 8);
}

void *__53__ENXPCConnection__xpcSetMonthlySummaryAlertEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSetMonthlySummaryAlertEnabled:]_block_invoke", 90, "### setMonthlySummaryAlertEnabled failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcGetRemotePresentationRequestIfNeeded:(id)needed
{
  neededCopy = needed;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__3;
  v53 = __Block_byref_object_dispose__3;
  v54 = 0;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __60__ENXPCConnection__xpcGetRemotePresentationRequestIfNeeded___block_invoke;
  v46[3] = &unk_278FD10D0;
  v48 = &v49;
  v46[4] = self;
  v5 = neededCopy;
  v47 = v5;
  v6 = MEMORY[0x24C214430](v46);
  v7 = (v50 + 5);
  obj = v50[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v50 + 5);
    v44 = v50[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v44];
    objc_storeStrong(v9, v44);
    if (v10)
    {
      int64 = xpc_dictionary_get_int64(v5, "rprt");
      v12 = int64;
      switch(int64)
      {
        case 1:
          v15 = 0;
          goto LABEL_12;
        case 2:
          v16 = (v50 + 5);
          v42 = v50[5];
          v17 = [(ENXPCConnection *)self _appActiveStatusWithError:&v42];
          objc_storeStrong(v16, v42);
          if (v17)
          {
            temporaryExposureKeyManager = [(ENDaemon *)self->_daemon temporaryExposureKeyManager];
            if ([(ENXPCClient *)self->_client entitledToSkipKeyReleasePrompt])
            {
              v19 = 0;
            }

            else
            {
              v19 = [temporaryExposureKeyManager requireKeyReleasePromptForClient:self->_client];
            }

            v15 = 1;
LABEL_16:
            v22 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed = [v22 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              v24 = "no";
              if (v19)
              {
                v24 = "yes";
              }

              LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetRemotePresentationRequestIfNeeded:]", 30, "GetRemotePresentationRequest %@ RqType: %ld, PresentationNeeded: %s", self->_client, v12, v24);
            }

            if (v19)
            {
              if (!v15)
              {
LABEL_27:
                reply = xpc_dictionary_create_reply(v5);
                if (reply)
                {
                  v27 = [MEMORY[0x277CC5D10] presentationRequestWithType:v12];
                  signingIdentity = [(ENXPCClient *)self->_client signingIdentity];
                  [v27 setAppBundleIdentifier:signingIdentity];

                  appRegion = [(ENXPCClient *)self->_client appRegion];
                  [v27 setAgencyRegion:appRegion];

                  v30 = objc_alloc_init(ENRemoteUISession);
                  receiptId = [v27 receiptId];
                  [(ENRemoteUISession *)v30 setSessionID:receiptId];

                  remoteUISessions = [(ENDaemon *)self->_daemon remoteUISessions];
                  receiptId2 = [v27 receiptId];
                  [remoteUISessions setObject:v30 forKeyedSubscript:receiptId2];

                  v34 = (v50 + 5);
                  v41 = v50[5];
                  ENXPCEncodeSecureObject();
                  objc_storeStrong(v34, v41);
                  xpc_dictionary_set_BOOL(reply, "rpn", 1);
                  [(ENXPCConnection *)self _xpcSendMessage:reply];
                }

                else
                {
                  v38 = ENErrorF(15, "Failed to create reply");
                  v27 = v50[5];
                  v50[5] = v38;
                }

                goto LABEL_32;
              }

              reply = objc_alloc_init(MEMORY[0x277CEEE98]);
              v25 = [reply applicationInfoForPID:{-[ENXPCClient pid](self->_client, "pid")}];
              Int64Ranged = CFDictionaryGetInt64Ranged();
              [reply invalidate];
              if (Int64Ranged == 8)
              {

                goto LABEL_27;
              }

              v39 = ENErrorF(10, "Only allowed in foreground");
              v40 = v50[5];
              v50[5] = v39;
            }

            else
            {
              v35 = xpc_dictionary_create_reply(v5);
              reply = v35;
              if (v35)
              {
                xpc_dictionary_set_BOOL(v35, "rpn", 0);
                [(ENXPCConnection *)self _xpcSendMessage:reply];
              }

              else
              {
                v36 = ENErrorF(15, "Failed to create reply");
                v37 = v50[5];
                v50[5] = v36;
              }
            }

LABEL_32:
          }

          break;
        case 3:
          v13 = (v50 + 5);
          v43 = v50[5];
          v14 = [(ENXPCConnection *)self _appActiveStatusWithError:&v43];
          objc_storeStrong(v13, v43);
          if (v14)
          {
            v15 = 1;
LABEL_12:
            v19 = 1;
            goto LABEL_16;
          }

          break;
        default:
          v20 = ENErrorF(2, "Unrecognized presentation request type %ld", int64);
          reply = v50[5];
          v50[5] = v20;
          goto LABEL_32;
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v49, 8);
}

void *__60__ENXPCConnection__xpcGetRemotePresentationRequestIfNeeded___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetRemotePresentationRequestIfNeeded:]_block_invoke", 90, "### GetRemotePresentationRequest failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcRemotePresentationReceivedDecision:(id)decision
{
  decisionCopy = decision;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __58__ENXPCConnection__xpcRemotePresentationReceivedDecision___block_invoke;
  v34[3] = &unk_278FD10D0;
  v36 = &v37;
  v34[4] = self;
  original = decisionCopy;
  v35 = original;
  v5 = MEMORY[0x24C214430](v34);
  v6 = (v38 + 5);
  obj = v38[5];
  v30 = v5;
  v7 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    objc_opt_class();
    v8 = (v38 + 5);
    v32 = v38[5];
    v9 = ENXPCDecodeSecureObject();
    objc_storeStrong(v8, v32);
    if (!v9)
    {
LABEL_21:

      goto LABEL_22;
    }

    receiptId = [v9 receiptId];
    remoteUISessions = [(ENDaemon *)self->_daemon remoteUISessions];
    v12 = [remoteUISessions objectForKeyedSubscript:receiptId];

    if (!v12)
    {
      v27 = ENErrorF(11, "Failed to find matching session");
      connection = v38[5];
      v38[5] = v27;
      goto LABEL_20;
    }

    remoteUISessions2 = [(ENDaemon *)self->_daemon remoteUISessions];
    [remoteUISessions2 setObject:0 forKeyedSubscript:receiptId];

    connection = [v12 connection];
    if (!connection)
    {
      v28 = ENErrorF(11, "Client disconnected");
      originalRequest = v38[5];
      v38[5] = v28;
      goto LABEL_19;
    }

    originalRequest = [v12 originalRequest];
    if (originalRequest)
    {
      decisionInfo = [v9 decisionInfo];
      v17 = [decisionInfo objectForKeyedSubscript:@"decisionType"];
      integerValue = [v17 integerValue];

      if (integerValue == [v9 requestType])
      {
        testMode = [v9 testMode];
        decisionInfo2 = [v9 decisionInfo];
        v21 = [decisionInfo2 objectForKeyedSubscript:@"decisionResult"];
        bOOLValue = [v21 BOOLValue];

        if (bOOLValue)
        {
          v23 = 0;
        }

        else
        {
          v23 = ENErrorF(4, "User denied");
        }

        requestType = [v9 requestType];
        if (requestType == 2)
        {
          [connection _xpcGetDiagnosisKeysCompletion:originalRequest didPrompt:1 testMode:testMode error:v23];
        }

        else
        {
          if (requestType != 3)
          {
            v26 = ENErrorF(2, "Invalid request type %ld", [v9 requestType]);
            reply = v38[5];
            v38[5] = v26;
LABEL_17:

LABEL_18:
LABEL_19:

LABEL_20:
            v5 = v30;
            goto LABEL_21;
          }

          [connection _xpcPreAuthorizeDiagnosisKeysComplete:originalRequest userDecision:bOOLValue];
        }

        reply = xpc_dictionary_create_reply(original);
        if (reply)
        {
          [(ENXPCConnection *)self _xpcSendMessage:reply];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcRemotePresentationReceivedDecision:]", 90, "### RemotePresentationReceivedDecision create reply failed");
        }

        goto LABEL_17;
      }

      v29 = ENErrorF(15, "Decision type does not match request type");
    }

    else
    {
      v29 = ENErrorF(16, "Missing original XPC request");
    }

    v23 = v38[5];
    v38[5] = v29;
    goto LABEL_18;
  }

LABEL_22:
  v5[2](v5);

  _Block_object_dispose(&v37, 8);
}

void *__58__ENXPCConnection__xpcRemotePresentationReceivedDecision___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcRemotePresentationReceivedDecision:]_block_invoke", 90, "### RemotePresentationReceivedDecision failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_xpcStartSelfReportWebSession:(id)session
{
  sessionCopy = session;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke;
  v28[3] = &unk_278FD10D0;
  v30 = &v31;
  v28[4] = self;
  v5 = sessionCopy;
  v29 = v5;
  v6 = MEMORY[0x24C214430](v28);
  objc_opt_class();
  v7 = v32;
  obj = v32[5];
  v8 = ENXPCDecodeSecureObjectIfPresent();
  objc_storeStrong(v7 + 5, obj);
  if (!v32[5])
  {
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v10 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v12 = @" <>";
      if (v8)
      {
        v12 = v8;
      }

      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcStartSelfReportWebSession:]", 30, "startSelfReportWebSession Region %@, Active Entity: %@", v12, activeEntity);
    }

    if ([(ENDaemon *)self->_daemon _isNKDActive])
    {
      testResultManager = [(ENDaemon *)self->_daemon testResultManager];
      if (testResultManager)
      {
        if (v8 || (-[ENDaemon activeEntity](self->_daemon, "activeEntity"), v14 = objc_claimAutoreleasedReturnValue(), [v14 entity], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "region"), v8 = objc_claimAutoreleasedReturnValue(), v15, v14, v8))
        {
          daemon = self->_daemon;
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2;
          v22[3] = &unk_278FD1F90;
          v26 = &v31;
          v22[4] = self;
          v23 = v5;
          v24 = testResultManager;
          v8 = v8;
          v25 = v8;
          [(ENDaemon *)daemon fetchServerConfigurationForRegion:v8 completion:v22];
        }

        else
        {
          v20 = ENTestResultErrorF(9, "No active region");
          v21 = v32[5];
          v32[5] = v20;

          v8 = 0;
        }
      }

      else
      {
        v18 = ENErrorF(11, "Test result manager unavailable");
        v19 = v32[5];
        v32[5] = v18;
      }
    }

    else
    {
      v17 = ENErrorF(5, "self web verification unsupported");
      testResultManager = v32[5];
      v32[5] = v17;
    }
  }

  v6[2](v6);
  _Block_object_dispose(&v31, 8);
}

void *__49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke(void *result)
{
  v1 = result + 6;
  if (*(*(result[6] + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

void __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v6;
  if (v5)
  {
    if (([v5 supportsFeatures:2] & 1) == 0)
    {
      __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2_cold_1(a1);
      goto LABEL_11;
    }

    reply = xpc_dictionary_create_reply(*(a1 + 40));
    if (reply)
    {
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_3;
      v19[3] = &unk_278FD1F68;
      v16 = *(a1 + 32);
      v19[4] = reply;
      v19[5] = v16;
      [v14 startSelfReportWebSession:v15 completionHandler:v19];
    }

    else
    {
      __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2_cold_2();
    }
  }

  else
  {
    reply = ENNestedTestResultErrorF(v6, 9, "Failed to fetch region configuration", v7, v8, v9, v10, v11, v19[0]);
    v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v18 = [v17 isSensitiveLoggingAllowed];

    if (v18 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2_cold_3(a1);
    }

    [*(a1 + 32) _xpcSendReplyError:reply request:*(a1 + 40)];
  }

LABEL_11:
}

void __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v11 && v7 || (!v8 ? (ENErrorF(11, "Unknown error starting self report web session"), v9 = objc_claimAutoreleasedReturnValue()) : (v9 = v8), v10 = v9, CUXPCEncodeNSError(), v10, v7))
  {
    xpc_dictionary_set_string(*(a1 + 32), "nonce", [v7 utf8ValueSafe]);
  }

  if (v11)
  {
    xpc_dictionary_set_string(*(a1 + 32), "APIKey", [v11 utf8ValueSafe]);
  }

  [*(a1 + 40) _xpcSendMessage:*(a1 + 32)];
}

- (void)_xpcStartTestVerificationSession:(id)session
{
  sessionCopy = session;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__3;
  v56 = __Block_byref_object_dispose__3;
  v57 = 0;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke;
  v49[3] = &unk_278FD10D0;
  v51 = &v52;
  v49[4] = self;
  v5 = sessionCopy;
  v50 = v5;
  v6 = MEMORY[0x24C214430](v49);
  if ([(ENXPCClient *)self->_client entitledForTestVerification]|| (v7 = v53, obj = v53[5], v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj], objc_storeStrong(v7 + 5, obj), v8))
  {
    v9 = xpc_dictionary_get_BOOL(v5, "chaff");
    v10 = v53;
    v46 = v53[5];
    v47 = 0;
    v11 = CUXPCDecodeNSString();
    objc_storeStrong(v10 + 5, v46);
    if ((v11 & 1) == 0)
    {
LABEL_26:

      goto LABEL_27;
    }

    if (!v9)
    {
      v34 = ENErrorF(2, "No verification code");
      v13 = v53[5];
      v53[5] = v34;
      goto LABEL_25;
    }

    objc_opt_class();
    v12 = v53;
    v45 = v53[5];
    v13 = ENXPCDecodeSecureObjectIfPresent();
    objc_storeStrong(v12 + 5, v45);
    if (v53[5])
    {
LABEL_25:

      goto LABEL_26;
    }

    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    v15 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v15 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v17 = "";
      if (v9)
      {
        v17 = "Chaff, ";
      }

      v18 = @" <>";
      if (v13)
      {
        v18 = v13;
      }

      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcStartTestVerificationSession:]", 30, "StartTestVerificationSession %sCode: %@, Region %@, Active Entity: %@", v17, v47, v18, activeEntity);
    }

    if ([(ENDaemon *)self->_daemon getOverallStatus]== 2)
    {
      v35 = ENErrorF(9, "Exposure notification is disabled");
    }

    else
    {
      if ([activeEntity activeStatus] == 2)
      {
        entity = [activeEntity entity];
        bundleIdentifier = [entity bundleIdentifier];

        v21 = ENErrorF(5, "Active entity is '%@'", bundleIdentifier);
        v22 = v53[5];
        v53[5] = v21;

        userInfo = [v53[5] userInfo];
        v24 = [userInfo mutableCopy];

        [v24 setObject:bundleIdentifier forKeyedSubscript:*MEMORY[0x277CC5BE0]];
        v25 = objc_alloc(MEMORY[0x277CCA9B0]);
        domain = [v53[5] domain];
        v27 = [v25 initWithDomain:domain code:objc_msgSend(v53[5] userInfo:{"code"), v24}];
        v28 = v53[5];
        v53[5] = v27;

LABEL_24:
        goto LABEL_25;
      }

      if ([(ENDaemon *)self->_daemon _isNKDActive])
      {
        bundleIdentifier = [(ENDaemon *)self->_daemon testResultManager];
        if (bundleIdentifier)
        {
          if (v13 || (-[ENDaemon activeEntity](self->_daemon, "activeEntity"), v29 = objc_claimAutoreleasedReturnValue(), [v29 entity], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "region"), v13 = objc_claimAutoreleasedReturnValue(), v30, v29, v13))
          {
            dispatchQueue = [(ENDaemon *)self->_daemon dispatchQueue];
            differentialPrivacyManager = [(ENDaemon *)self->_daemon differentialPrivacyManager];
            daemon = self->_daemon;
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_2;
            v37[3] = &unk_278FD2008;
            v37[4] = self;
            v44 = v9;
            v38 = v5;
            v39 = bundleIdentifier;
            v13 = v13;
            v40 = v13;
            v41 = v47;
            v42 = dispatchQueue;
            v43 = differentialPrivacyManager;
            [(ENDaemon *)daemon fetchServerConfigurationForRegion:v13 completion:v37];

LABEL_23:
            goto LABEL_24;
          }

          v36 = ENTestResultErrorF(9, "No active region");
          v13 = 0;
        }

        else
        {
          v36 = ENErrorF(11, "Test result manager unavailable");
        }

        dispatchQueue = v53[5];
        v53[5] = v36;
        goto LABEL_23;
      }

      v35 = ENErrorF(5, "Test verification unsupported");
    }

    bundleIdentifier = v53[5];
    v53[5] = v35;
    goto LABEL_24;
  }

LABEL_27:
  v6[2](v6);

  _Block_object_dispose(&v52, 8);
}

void *__52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke(void *result)
{
  v1 = result + 6;
  if (*(*(result[6] + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

void __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 40));
    v10 = reply;
    if (reply)
    {
      v11 = *(a1 + 48);
      if (*(a1 + 88) == 1)
      {
        v12 = *(a1 + 56);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_3;
        v24[3] = &unk_278FD1FB8;
        v13 = *(a1 + 32);
        v24[4] = reply;
        v24[5] = v13;
        [v11 startChaffTestVerficationSessionForRegion:v12 completionHandler:v24];
      }

      else
      {
        v16 = *(a1 + 64);
        v17 = [*(*(a1 + 32) + 32) prefNetworkProxyEnabled];
        v18 = *(a1 + 56);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_4;
        v23[3] = &unk_278FD1FE0;
        v19 = *(a1 + 80);
        v23[4] = *(a1 + 72);
        v23[5] = v10;
        v20 = *(a1 + 32);
        v23[6] = v19;
        v23[7] = v20;
        [v11 startTestVerficationSessionWithCode:v16 proxyEnabled:v17 region:v18 completionHandler:v23];
      }
    }

    else
    {
      __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_2_cold_1();
    }
  }

  else
  {
    v22 = ENNestedTestResultErrorF(a3, 9, "Failed to fetch region configuration", a4, a5, a6, a7, a8, v21);
    v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v15 = [v14 isSensitiveLoggingAllowed];

    if (v15 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_2_cold_2(v22);
    }

    [*(a1 + 32) _xpcSendReplyError:v22 request:*(a1 + 40)];
  }
}

uint64_t __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    CUXPCEncodeNSError();
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 _xpcSendMessage:v4];
}

void __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_5;
  block[3] = &unk_278FD1D90;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  v14 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_5(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v10 = *(a1 + 64);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = ENErrorF(11, "Unknown error starting session");
    }

    v5 = v11;
    CUXPCEncodeNSError();
LABEL_13:

    return [*(a1 + 56) _xpcSendMessage:*(a1 + 40)];
  }

  v3 = *(a1 + 40);
  *uuid = 0;
  v14 = 0;
  v4 = v3;
  [v2 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v4, "sessID", uuid);

  if (*(a1 + 48))
  {
    v5 = *(a1 + 32);
    v6 = [*(*(a1 + 56) + 32) _getLatestExposureForDifferentialPrivacy];
    v7 = [*(*(a1 + 56) + 32) _getReportTypeForSession:v5];
    v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v9 = [v8 isSensitiveLoggingAllowed];

    if (v9 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcStartTestVerificationSession:]_block_invoke_5", 90, "CodeVerified, classification info %d, report type %@", v6, v7);
    }

    [*(a1 + 48) reportUserCodeVerified:v6 reportType:{objc_msgSend(v7, "unsignedIntValue")}];

    goto LABEL_13;
  }

  return [*(a1 + 56) _xpcSendMessage:*(a1 + 40)];
}

- (void)_xpcFetchTestVerificationMetadata:(id)metadata
{
  metadataCopy = metadata;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__ENXPCConnection__xpcFetchTestVerificationMetadata___block_invoke;
  v16[3] = &unk_278FD10D0;
  v18 = &v19;
  v16[4] = self;
  v5 = metadataCopy;
  v17 = v5;
  v6 = MEMORY[0x24C214430](v16);
  v7 = (v20 + 5);
  obj = v20[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v20 + 5);
    v13 = v20[5];
    v14 = 0;
    v10 = CUXPCDecodeNSUUID();
    objc_storeStrong(v9, v13);
    if (v10)
    {
      v11 = ENErrorF(2, "No session ID");
      v12 = v20[5];
      v20[5] = v11;
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v19, 8);
}

void *__53__ENXPCConnection__xpcFetchTestVerificationMetadata___block_invoke(void *result)
{
  v1 = result + 6;
  if (*(*(result[6] + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __53__ENXPCConnection__xpcFetchTestVerificationMetadata___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

- (void)_xpcFinishTestVerificationSession:(id)session
{
  sessionCopy = session;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke;
  v16[3] = &unk_278FD10D0;
  v18 = &v19;
  v16[4] = self;
  v5 = sessionCopy;
  v17 = v5;
  v6 = MEMORY[0x24C214430](v16);
  v7 = v20;
  obj = v20[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    v9 = v20;
    v13 = v20[5];
    v14 = 0;
    v10 = CUXPCDecodeNSUUID();
    objc_storeStrong(v9 + 5, v13);
    if (v10)
    {
      v11 = ENErrorF(2, "No session ID");
      v12 = v20[5];
      v20[5] = v11;
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v19, 8);
}

void *__53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke(void *result)
{
  v1 = result + 6;
  if (*(*(result[6] + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

void __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v22 = v5;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = ENErrorF(11, "Unknown error");
    }

    v11 = v14;
    v15 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v16 = [v15 isSensitiveLoggingAllowed];

    if (v16 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke_2_cold_1(v11);
    }

    CUXPCEncodeNSError();
    goto LABEL_23;
  }

  if (*(a1 + 64) == 1)
  {
    v6 = [*(*(a1 + 40) + 32) differentialPrivacyManager];

    if (v6)
    {
      v7 = [*(*(a1 + 40) + 32) _getLatestExposureForDifferentialPrivacy];
      v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v9 = [v8 isSensitiveLoggingAllowed];

      if (v9 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke_2_cold_2(v7, a1);
      }

      v10 = [*(*(a1 + 40) + 32) differentialPrivacyManager];
      [v10 reportUserKeysUploaded:v7 reportType:{objc_msgSend(*(a1 + 48), "unsignedIntValue")}];

      v11 = [*(a1 + 56) objectForKeyedSubscript:*MEMORY[0x277CC5BA0]];
      v12 = [*(*(a1 + 40) + 32) _getDiagnosedVaccineStatusForDifferentialPrivacyWithUserVaccinationStatus:v11];
      if (v12)
      {
        v13 = [*(*(a1 + 40) + 32) differentialPrivacyManager];
        [v13 reportUserDiagnosedVaccineStatus:v12];
      }

      else
      {
        v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v18 = [v17 isSensitiveLoggingAllowed];

        if (v18)
        {
          if (_MergedGlobals <= 90)
          {
            if (_MergedGlobals != -1 || (v19 = _LogCategory_Initialize(), v19))
            {
              __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke_2_cold_3(v19, v20, v21);
            }
          }
        }
      }

LABEL_23:
    }
  }

  [*(a1 + 40) _xpcSendMessage:*(a1 + 32)];
}

- (void)_xpcShowBuddy:(id)buddy
{
  buddyCopy = buddy;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __33__ENXPCConnection__xpcShowBuddy___block_invoke;
  v16[3] = &unk_278FD10D0;
  v18 = &v19;
  v16[4] = self;
  v5 = buddyCopy;
  v17 = v5;
  v6 = MEMORY[0x24C214430](v16);
  if ([(ENXPCClient *)self->_client entitledToShowBuddy])
  {
    objc_opt_class();
    v7 = v20;
    obj = v20[5];
    v8 = ENXPCDecodeSecureObject();
    objc_storeStrong(v7 + 5, obj);
    if (v8)
    {
      reply = xpc_dictionary_create_reply(v5);
      v10 = reply;
      if (reply)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __33__ENXPCConnection__xpcShowBuddy___block_invoke_2;
        v14[3] = &unk_278FD1FB8;
        v14[4] = reply;
        v14[5] = self;
        v11 = MEMORY[0x24C214430](v14);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __33__ENXPCConnection__xpcShowBuddy___block_invoke_3;
        v13[3] = &unk_278FD2058;
        v13[4] = self;
        v13[5] = v10;
        v12 = MEMORY[0x24C214430](v13);
        [(ENDaemon *)self->_daemon presentBuddyForRegion:v8 errorHandler:v11 completionHandler:v12];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcShowBuddy:]", 90, "### ShowBuddy create reply failed");
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v19, 8);
}

void *__33__ENXPCConnection__xpcShowBuddy___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (_MergedGlobals <= 90)
    {
      if (_MergedGlobals != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcShowBuddy:]_block_invoke", 90, "### ShowBuddy failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

void __33__ENXPCConnection__xpcShowBuddy___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    CUXPCEncodeNSError();
  }

  [*(a1 + 40) _xpcSendMessage:*(a1 + 32)];
}

- (void)_xpcVerifyTextMessage:(id)message
{
  v103[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy__3;
  v100 = __Block_byref_object_dispose__3;
  v101 = 0;
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __41__ENXPCConnection__xpcVerifyTextMessage___block_invoke;
  v93[3] = &unk_278FD10D0;
  v95 = &v96;
  selfCopy = self;
  v93[4] = self;
  original = messageCopy;
  v94 = original;
  v5 = MEMORY[0x24C214430](v93);
  v92 = 0;
  v6 = v97;
  obj = v97[5];
  v75 = v5;
  LOBYTE(self) = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (self)
  {
    if ([(ENDaemon *)selfCopy->_daemon overallStatus]!= 1)
    {
      v48 = ENErrorF(9, "Exposure Notifications is not enabled");
      v77 = v97[5];
      v97[5] = v48;

      goto LABEL_73;
    }

    textMessageManager = [(ENDaemon *)selfCopy->_daemon textMessageManager];
    if (!textMessageManager)
    {
      v49 = ENErrorF(5, "No text message manager found");
      v73 = v97[5];
      v97[5] = v49;

      goto LABEL_72;
    }

    configurationManager = [(ENDaemon *)selfCopy->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];

    if (!configurationStore)
    {
      v50 = ENErrorF(11, "No configuration store found");
      v81 = v97[5];
      v97[5] = v50;

      goto LABEL_71;
    }

    objc_opt_class();
    v8 = v97 + 5;
    v90 = v97[5];
    v80 = ENXPCDecodeSecureObject();
    objc_storeStrong(v8, v90);
    if (!v80)
    {
LABEL_70:

LABEL_71:
LABEL_72:

      goto LABEL_73;
    }

    testVerificationCode = [v80 testVerificationCode];
    if (testVerificationCode)
    {
      testVerificationRegion = [v80 testVerificationRegion];
      if (testVerificationRegion || (-[ENDaemon activeEntity](selfCopy->_daemon, "activeEntity"), v10 = objc_claimAutoreleasedReturnValue(), [v10 entity], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "region"), v12 = objc_claimAutoreleasedReturnValue(), v11, v10, (testVerificationRegion = v12) != 0))
      {
        v68 = testVerificationRegion;
        v63 = [configurationStore configurationForRegion:?];
        if (!v63)
        {
          v52 = ENErrorF(5, "No region configuration found");
          v71 = v97[5];
          v97[5] = v52;

          goto LABEL_68;
        }

        v13 = [configurationStore serverConfigurationForRegion:v68];
        v70 = v13;
        if (v13)
        {
          if ([v13 textMessageVerificationEnabled])
          {
            v14 = [configurationStore agencyConfigurationForRegion:v68];
            v64 = v14;
            if (v14)
            {
              localizedConfiguration = [v14 localizedConfiguration];
              testVerificationNotificationBody = [localizedConfiguration testVerificationNotificationBody];
              v17 = testVerificationNotificationBody == 0;

              if (!v17)
              {
                preArmTestVerificationEnabled = [v70 preArmTestVerificationEnabled];
                v18 = +[ENLoggingPrefs sharedENLoggingPrefs];
                isSensitiveLoggingAllowed = [v18 isSensitiveLoggingAllowed];

                if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  if (preArmTestVerificationEnabled)
                  {
                    v20 = "yes";
                  }

                  else
                  {
                    v20 = "no";
                  }

                  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcVerifyTextMessage:]", 30, "### Verify message signature for - %@, Pre-Arm: %s", v80, v20);
                }

                CFStringGetTypeID();
                v21 = CFPrefs_CopyTypedValue();
                v59 = v21;
                if (v21)
                {
                  v103[0] = v21;
                  currentPhoneNumbers = [MEMORY[0x277CBEA68] arrayWithObjects:v103 count:1];
                }

                else
                {
                  v22 = +[ENCoreTelephonyUtility sharedInstance];
                  currentPhoneNumbers = [v22 currentPhoneNumbers];
                }

                if (![currentPhoneNumbers count])
                {
                  v55 = ENErrorF(11, "Unable to get phone number");
                  v79 = v97[5];
                  v97[5] = v55;

                  goto LABEL_65;
                }

                textMessagePublicKey = [v70 textMessagePublicKey];
                v24 = *MEMORY[0x277CDBFF8];
                v25 = v97 + 5;
                v89 = v97[5];
                v78 = [ENSecKey keyFromBase64String:textMessagePublicKey keyClass:v24 error:&v89];
                objc_storeStrong(v25, v89);

                if (!v78)
                {
LABEL_64:

LABEL_65:
LABEL_66:

LABEL_67:
LABEL_68:

LABEL_69:
                  goto LABEL_70;
                }

                textMessagePublicKeyVersion = [v70 textMessagePublicKeyVersion];
                v88 = 0;
                v84 = 0u;
                v85 = 0u;
                v86 = 0u;
                v87 = 0u;
                v27 = currentPhoneNumbers;
                v28 = [v27 countByEnumeratingWithState:&v84 objects:v102 count:16];
                if (v28)
                {
                  v29 = *v85;
                  while (2)
                  {
                    for (i = 0; i != v28; ++i)
                    {
                      if (*v85 != v29)
                      {
                        objc_enumerationMutation(v27);
                      }

                      v31 = *(*(&v84 + 1) + 8 * i);
                      v32 = v97[5];
                      v97[5] = 0;

                      date = [MEMORY[0x277CBEAA0] date];
                      v34 = v97 + 5;
                      v83 = v97[5];
                      LOBYTE(v31) = [textMessageManager verifyTextMessage:v80 phoneNumber:v31 verificationDate:date publicKey:v78 publicKeyVersion:textMessagePublicKeyVersion userReport:&v88 outError:&v83];
                      objc_storeStrong(v34, v83);
                      v5 = v75;

                      if (v31)
                      {
                        v35 = 1;
                        goto LABEL_37;
                      }
                    }

                    v28 = [v27 countByEnumeratingWithState:&v84 objects:v102 count:16];
                    if (v28)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v35 = 0;
LABEL_37:

                if (v88)
                {
                  v36 = 3;
                }

                else
                {
                  v36 = 0;
                }

                if (v88 && ([v70 supportsFeatures:2] & 1) == 0)
                {
                  v56 = ENErrorF(2, "Region does not support self reported test verification");
                }

                else
                {
                  if (CFPrefs_GetInt64())
                  {
                    v37 = IsAppleInternalBuild() != 0;
                  }

                  else
                  {
                    v37 = 0;
                  }

                  if (_MergedGlobals <= 40 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    v38 = "no";
                    if (v37)
                    {
                      v38 = "yes";
                    }

                    LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcVerifyTextMessage:]", 40, "### VerifyTextMessage: Disabled: %s", v38);
                  }

                  if ((v35 | v37))
                  {
                    if (preArmTestVerificationEnabled && (v88 & 1) == 0 && ([v63 diagnosisKeysPreAuthorization], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "userAuthorization") == 1, v39, v40))
                    {
                      v41 = +[ENLoggingPrefs sharedENLoggingPrefs];
                      isSensitiveLoggingAllowed2 = [v41 isSensitiveLoggingAllowed];

                      if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcVerifyTextMessage:]", 30, "### VerifyTextMessage for Pre-Auth ENX");
                      }

                      diagnosisKeysPreAuthorization = [v63 diagnosisKeysPreAuthorization];
                      [diagnosisKeysPreAuthorization setVerificationCode:testVerificationCode];

                      diagnosisKeysPreAuthorization2 = [v63 diagnosisKeysPreAuthorization];
                      [diagnosisKeysPreAuthorization2 setReportType:v36];

                      v46 = v97 + 5;
                      v82 = v97[5];
                      v47 = [configurationStore saveRegionConfiguration:v63 error:&v82];
                      objc_storeStrong(v46, v82);
                      if (!v47)
                      {
                        goto LABEL_63;
                      }

                      [(ENDaemon *)selfCopy->_daemon enqueuePreauthorizedTestVerificationUnlockAction];
                    }

                    else
                    {
                      [(ENDaemon *)selfCopy->_daemon postTestVerificationReceivedNotification:v80 region:v68 reportType:v36];
                    }

                    reply = xpc_dictionary_create_reply(original);
                    if (reply)
                    {
                      [(ENXPCConnection *)selfCopy _xpcSendMessage:reply];
                    }

                    else
                    {
                      v57 = +[ENLoggingPrefs sharedENLoggingPrefs];
                      isSensitiveLoggingAllowed3 = [v57 isSensitiveLoggingAllowed];

                      if (isSensitiveLoggingAllowed3 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcVerifyTextMessage:]", 90, "### VerifyTextMessage create reply failed");
                      }
                    }

                    goto LABEL_62;
                  }

                  if (v97[5])
                  {
                    goto LABEL_63;
                  }

                  v56 = ENErrorF(2, "Unable to verify text message signature.");
                }

                reply = v97[5];
                v97[5] = v56;
LABEL_62:

LABEL_63:
                goto LABEL_64;
              }

              v54 = ENErrorF(5, "Message verification notification body not available.");
            }

            else
            {
              v54 = ENErrorF(5, "No agency configuration found");
            }

            v60 = v97[5];
            v97[5] = v54;

            goto LABEL_66;
          }

          v53 = ENErrorF(9, "Signature verification not enabled.");
        }

        else
        {
          v53 = ENErrorF(5, "No server configuration found");
        }

        v65 = v97[5];
        v97[5] = v53;

        goto LABEL_67;
      }

      v51 = ENErrorF(2, "No region found for text message verification");
    }

    else
    {
      v51 = ENErrorF(2, "Test verification code missing");
    }

    v69 = v97[5];
    v97[5] = v51;

    goto LABEL_69;
  }

LABEL_73:
  v5[2](v5);

  _Block_object_dispose(&v96, 8);
}

void *__41__ENXPCConnection__xpcVerifyTextMessage___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (result)
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v2 = a1[6], v5))
      {
        v4 = CUPrintNSError();
        LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcVerifyTextMessage:]_block_invoke", 90, "### Verify message signature failed: %@", v4);

        v2 = a1[6];
      }
    }

    v6 = *(*(v2 + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _xpcSendReplyError:v6 request:v8];
  }

  return result;
}

- (void)_authorizedAndReturnError:(void *)result .cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENErrorF(4, "Not authorized");
    *v1 = result;
  }

  return result;
}

- (void)_rateLimitAndReturnError:(void *)result .cold.1(void *result, int a2)
{
  if (result)
  {
    v2 = result;
    result = ENErrorF(13, "Max per-day API limit reached: %u", a2);
    *v2 = result;
  }

  return result;
}

- (void)xpcConnectionEvent:.cold.1()
{
  v0 = CUPrintXPC();
  LogPrintF_safe(&dword_281346508, "[ENXPCConnection xpcConnectionEvent:]", 90, "### XPC connection error: %@", v0);
}

- (void)xpcConnectionEvent:(uint64_t)a1 .cold.2(uint64_t a1)
{
  [*(a1 + 24) pid];
  v1 = CUPrintPID();
  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection xpcConnectionEvent:]", 20, "XPC connection ended: %@", v1);
}

- (void)_xpcSendMessage:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENXPCConnection _xpcSendMessage:]", a3, "### Send reply with no cnx");
  }
}

- (void)_xpcSendReplyError:request:.cold.1()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcSendReplyError:request:]", 90, "### Send reply error failed for error: %@", v0);
    }
  }
}

- (void)_xpcSendReplyError:(uint64_t)a3 request:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENXPCConnection _xpcSendReplyError:request:]", a3, "### Send error with no cnx");
  }
}

- (void)_xpcSendReplyError:(uint64_t)a3 reply:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENXPCConnection _xpcSendReplyError:reply:]", a3, "### Send error with no cnx");
  }
}

- (uint64_t)_xpcEntitlementCheck:(char)a1 .cold.1(char a1)
{
  v1 = "no";
  if (a1)
  {
    v1 = "yes";
  }

  return LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcEntitlementCheck:]", 30, "Entitlement check: %s", v1);
}

- (void)_xpcEntitlementCheck:.cold.2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcEntitlementCheck:]", 90, "### EntitlementCheck create reply failed", v0, v1);
  }
}

uint64_t __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_2_cold_1(unint64_t a1)
{
  if (a1 > 0xB)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_278FD21D8[a1];
  }

  return LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetUserTraveledPromptWithCompletion:]_block_invoke_2", 30, "TravelStatus alert response: %s", v1);
}

void __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_3_cold_1(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetUserTraveledPromptWithCompletion:]_block_invoke_3", 90, "### TravelStatus alert failed: %@", v1);
}

- (uint64_t)_xpcManagerActivateIfNecessaryWithRequest:(_BYTE *)a3 error:.cold.1(void *a1, void *a2, _BYTE *a3)
{
  if (*a3)
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  return LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcManagerActivateIfNecessaryWithRequest:error:]", 30, "Activate:%@, client:%@, isLinkedBeforeAPIV2:%s", *a1, *a2, v3);
}

void __49__ENXPCConnection__xpcPreAuthorizeDiagnosisKeys___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcPreAuthorizeDiagnosisKeys:]_block_invoke", 90, "### PreAuthorizeDiagnosisKeys failed: %@", v1);
}

void __70__ENXPCConnection__xpcPreAuthorizeDiagnosisKeysComplete_userDecision___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcPreAuthorizeDiagnosisKeysComplete:userDecision:]_block_invoke", 90, "### PreAuthorizeDiagnosisKeys failed: %@", v1);
}

void __57__ENXPCConnection__xpcRequestPreAuthorizedDiagnosisKeys___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcRequestPreAuthorizedDiagnosisKeys:]_block_invoke", 90, "### RequestPreAuthorizedDiagnosisKeys failed: %@", v1);
}

void __87__ENXPCConnection_updateDiagnosisKeysPreAuthorizationForRequest_withDecision_errorOut___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe(&dword_281346508, "[ENXPCConnection updateDiagnosisKeysPreAuthorizationForRequest:withDecision:errorOut:]_block_invoke", 90, "### UpdateDiagnosisKeysPreAuthorization failed: %@", v1);
}

void __49__ENXPCConnection__xpcGetDiagnosisKeys_testMode___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetDiagnosisKeys:testMode:]_block_invoke", 90, "### GetDiagnosisKeys failed: %@", v1);
}

void __75__ENXPCConnection__xpcGetDiagnosisKeysCompletion_didPrompt_testMode_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcGetDiagnosisKeysCompletion:didPrompt:testMode:error:]_block_invoke", 90, "### GetDiagnosisKeys failed: %@", v1);
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_4_cold_2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcDiagnosticControl:]_block_invoke_4", 90, "### DiagnosticControl create reply failed", v0, v1);
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_5_cold_2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcDiagnosticControl:]_block_invoke_5", 90, "### DiagnosticControl create reply failed", v0, v1);
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_6_cold_2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcDiagnosticControl:]_block_invoke_6", 90, "### DiagnosticControl create reply failed", v0, v1);
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_7_cold_2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcDiagnosticControl:]_block_invoke_7", 90, "### DiagnosticControl create reply failed", v0, v1);
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_9_cold_1()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcDiagnosticControl:]_block_invoke_9", 90, "### DiagnosticControl create reply failed", v0, v1);
  }
}

void __42__ENXPCConnection__xpcGetSubdivisionList___block_invoke_2_cold_1()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetSubdivisionList:]_block_invoke_2", 90, "### GetSubdivisionList create reply failed", v0, v1);
  }
}

- (void)_updateActiveEntityFromTCCResult:(uint64_t)a3 .cold.4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2(&_MergedGlobals, "[ENXPCConnection _updateActiveEntityFromTCCResult:]", a3, "App denied access by user");
  }
}

- (void)_updateActiveEntityFromTCCResult:(uint64_t)a3 .cold.5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENXPCConnection _updateActiveEntityFromTCCResult:]", a3, "### No infoDict for approved app");
  }
}

- (void)_updateActiveEntityFromTCCResult:(uint64_t)a3 .cold.6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2(&dword_281346508, "[ENXPCConnection _updateActiveEntityFromTCCResult:]", a3, "### No proxy for approved app");
  }
}

void __32__ENXPCConnection__xpcDownload___block_invoke_3_cold_1(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcDownload:]_block_invoke_3", 90, "### Exposure check after download failed: %@", v1);
}

void __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_11()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_281346508, "[ENXPCConnection _xpcGetEntities:]_block_invoke_3", 90, "### GetEntities create reply failed", v0, v1);
  }
}

void __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcStartSelfReportWebSession:]_block_invoke", 90, "### startSelfReportWebSession failed: %@", v1);
}

void __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = ENErrorF(2, "Region does not support self reported test verification");
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2_cold_2()
{
  v0 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v1 = [v0 isSensitiveLoggingAllowed];

  if (v1 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcStartSelfReportWebSession:]_block_invoke_2", 90, "### startSelfReportWebSession create reply failed");
  }
}

void __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2_cold_3(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcStartSelfReportWebSession:]_block_invoke_2", 90, "### startSelfReportWebSession failed: %@", v1);
}

void __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcStartTestVerificationSession:]_block_invoke", 90, "### StartTestVerificationSession failed: %@", v1);
}

void __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_2_cold_1()
{
  v0 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v1 = [v0 isSensitiveLoggingAllowed];

  if (v1 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcStartTestVerificationSession:]_block_invoke_2", 90, "### StartTestVerificationSession create reply failed");
  }
}

void __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_2_cold_2(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcStartTestVerificationSession:]_block_invoke_2", 90, "### StartTestVerificationSession failed: %@", v1);
}

void __53__ENXPCConnection__xpcFetchTestVerificationMetadata___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcFetchTestVerificationMetadata:]_block_invoke", 90, "### FetchTestVerificationMetadata failed: %@", v1);
}

void __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcFinishTestVerificationSession:]_block_invoke", 90, "### FinishTestVerificationSession failed: %@", v1);
}

void __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF_safe(&_MergedGlobals, "[ENXPCConnection _xpcFinishTestVerificationSession:]_block_invoke_2", 90, "### FinishTestVerificationSession failed: %@", v1);
}

@end