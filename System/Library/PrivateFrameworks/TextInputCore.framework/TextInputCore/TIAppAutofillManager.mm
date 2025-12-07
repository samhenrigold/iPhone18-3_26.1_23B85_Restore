@interface TIAppAutofillManager
+ (BOOL)_simulatesAutofillCandidates;
+ (BOOL)isSuggestingStrongPasswordsAvailable;
+ (id)sharedInstance;
+ (void)_fetchCredentialsWithPasskeyProvider:(id)provider autofillContext:(id)context textContentType:(id)type applicationIdentifier:(id)identifier auditToken:(id *)token completion:(id)completion;
+ (void)getCredentialsWithApplicationIdentifier:(id)identifier autofillContext:(id)context withCompletionHandler:(id)handler;
+ (void)setSharedAppAutofillManager:(id)manager;
- (BOOL)hasAutofillContextEntitlementForConnection:(id)connection;
- (BOOL)hasCoreTelephonyEntitlementForConnection:(id)connection;
- (BOOL)isValidedString:(id)string;
- (BOOL)shouldAuthenticateToAcceptAutofill;
- (id)_autoFillPayloadForPasskey:(id)passkey keyboardInfoType:(unint64_t *)type;
- (id)_autoFillPayloadForPasswordCredential:(id)credential keyboardInfoType:(unint64_t *)type;
- (id)_secureCandidateForPasskey:(id)passkey fromLocalizedStringKey:(id)key;
- (id)_secureCandidateForPasswordCredential:(id)credential fromLocalizedStringKey:(id)key;
- (id)customInfoFromCredential:(id)credential;
- (id)generateCellularCandidatesWithRenderTraits:(id)traits withKeyboardState:(id)state;
- (id)generateOneTimeCodeCandidatesWithRenderTraits:(id)traits withKeyboardState:(id)state;
- (id)initPrivate;
- (id)localizedCellularAutofillStringForKey:(id)key defaultValue:(id)value;
- (void)_acceptOneTimeCode:(id)code;
- (void)_finishAutofillFormCandidatesOnMainThreadWithCredentials:(id)credentials renderTraits:(id)traits documentIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier completion:(id)completion;
- (void)generateAutofillFormCandidatesWithRenderTraits:(id)traits withKeyboardState:(id)state completion:(id)completion;
- (void)generateAutofillFormSuggestedUsernameWithRenderTraits:(id)traits withKeyboardState:(id)state completionHandler:(id)handler;
- (void)generateHideMyEmailCandidateWithSlotID:(unsigned int)d applicationBundleId:(id)id applicationId:(id)applicationId keyboardState:(id)state secureCandidateWidth:(double)width secureCandidateHash:(unint64_t)hash isSecureCandidateDoubleLines:(BOOL)lines completionHandler:(id)self0;
- (void)generateJustHMEAutofillFormSuggestionWithRenderTraits:(id)traits withKeyboardState:(id)state applicationID:(id)d applicationBundleID:(id)iD completionHandler:(id)handler;
- (void)obtainCredential:(id)credential;
- (void)oneTimeCodeProvider:(id)provider didUpdateOneTimeCode:(id)code;
- (void)oneTimeCodeProviderReceivedCode:(id)code;
- (void)presentHideMyEmailUI:(id)i keyboardState:(id)state completion:(id)completion;
- (void)pushQueuedCredentialIfNecessaryForKeyboardState:(id)state;
- (void)shouldAcceptAutofill:(id)autofill withPayload:(id)payload completion:(id)completion;
- (void)shouldAcceptOneTimeCode:(id)code completion:(id)completion;
@end

@implementation TIAppAutofillManager

+ (id)sharedInstance
{
  v2 = __testingInstance;
  if (!__testingInstance)
  {
    p_cache = TICoreAnalyticsEventDispatcher.cache;
    v2 = instance;
    if (!instance)
    {
      if (sharedInstance_onceToken != -1)
      {
        dispatch_once(&sharedInstance_onceToken, &__block_literal_global_137);
        p_cache = (TICoreAnalyticsEventDispatcher + 16);
      }

      v2 = p_cache[243];
    }
  }

  v4 = v2;

  return v4;
}

- (id)_autoFillPayloadForPasskey:(id)passkey keyboardInfoType:(unint64_t *)type
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D6F8F0];
  *type = 2056;
  v9 = *v4;
  v10[0] = passkey;
  v5 = MEMORY[0x277CBEAC0];
  passkeyCopy = passkey;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  return v7;
}

- (id)_secureCandidateForPasskey:(id)passkey fromLocalizedStringKey:(id)key
{
  v26 = *MEMORY[0x277D85DE8];
  passkeyCopy = passkey;
  keyCopy = key;
  username = [passkeyCopy username];
  secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];
  v10 = [secureCandidateRenderer localizedStringForKey:keyCopy];

  v11 = MEMORY[0x277CCACA8];
  v23 = 0;
  relyingPartyIdentifier = [passkeyCopy relyingPartyIdentifier];
  v13 = [v11 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v23, relyingPartyIdentifier];
  v14 = v23;
  v15 = &stru_283FDFAF8;
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  if (objc_opt_respondsToSelector())
  {
    customTitle = [passkeyCopy customTitle];

    if (customTitle)
    {
      customTitle2 = [passkeyCopy customTitle];

      v16 = customTitle2;
    }
  }

  if (v14)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v19 = TIOSLogFacility();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key %@: %@", "-[TIAppAutofillManager _secureCandidateForPasskey:fromLocalizedStringKey:]", keyCopy, v14];
      *buf = 138412290;
      v25 = v22;
      _os_log_debug_impl(&dword_22CA55000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v20 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:v16 secureContent:username secureFormattedContent:username input:&stru_283FDFAF8 truncationSentinel:0];

  return v20;
}

- (id)_autoFillPayloadForPasswordCredential:(id)credential keyboardInfoType:(unint64_t *)type
{
  credentialCopy = credential;
  user = [credentialCopy user];
  password = [credentialCopy password];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([credentialCopy isExternal])
  {
    *type = 264;
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:credentialCopy requiringSecureCoding:1 error:0];
    v10 = MEMORY[0x277D6F8D0];
LABEL_12:
    [dictionary setObject:v9 forKey:*v10];
    goto LABEL_13;
  }

  *type = 24;
  if (user)
  {
    [dictionary setObject:user forKey:*MEMORY[0x277D6F918]];
  }

  if (password)
  {
    [dictionary setObject:password forKey:*MEMORY[0x277D6F8F8]];
  }

  if (objc_opt_respondsToSelector())
  {
    [credentialCopy requestedHost];
  }

  else
  {
    [credentialCopy site];
  }
  v9 = ;
  if (v9)
  {
    v10 = MEMORY[0x277D6F8D8];
    goto LABEL_12;
  }

LABEL_13:

  return dictionary;
}

- (id)_secureCandidateForPasswordCredential:(id)credential fromLocalizedStringKey:(id)key
{
  v46 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  keyCopy = key;
  user = [credentialCopy user];
  site = [credentialCopy site];
  customTitle = [credentialCopy customTitle];
  if (objc_opt_respondsToSelector())
  {
    v11 = [MEMORY[0x277D49DF0] textSuggestionHeaderForCredential:credentialCopy];
LABEL_3:
    v12 = v11;
    goto LABEL_23;
  }

  if ([credentialCopy isExternal] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = [MEMORY[0x277D49DF0] textSuggestionHeaderForExternalCredential:credentialCopy];
    goto LABEL_3;
  }

  v13 = [(__CFString *)site length];
  v14 = site;
  if (!v13)
  {
    if ([(__CFString *)customTitle length])
    {
      v14 = customTitle;
    }

    else
    {
      v14 = &stru_283FDFAF8;
    }
  }

  v15 = v14;
  v16 = [(__CFString *)v15 length];
  secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];
  v18 = secureCandidateRenderer;
  if (v16)
  {
    v40 = keyCopy;
    v19 = [secureCandidateRenderer localizedStringForKey:keyCopy];

    v43 = 0;
    v20 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:&v43, v15];
    v21 = v43;
    v22 = &stru_283FDFAF8;
    v23 = v21;
    if (v20)
    {
      v22 = v20;
    }

    v12 = v22;

    if (v23)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v24 = TIOSLogFacility();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key %@: %@", "-[TIAppAutofillManager _secureCandidateForPasswordCredential:fromLocalizedStringKey:]", v40, v23];
        *buf = 138412290;
        v45 = v39;
        _os_log_debug_impl(&dword_22CA55000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    keyCopy = v40;
  }

  else
  {
    v12 = [secureCandidateRenderer localizedStringForKey:@"AUTOFILL_SAVED_PASSWORD_TITLE"];
  }

LABEL_23:
  if (![user length])
  {
    creationDate = [credentialCopy creationDate];

    if (creationDate)
    {
      v41 = keyCopy;
      secureCandidateRenderer2 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v27 = [secureCandidateRenderer2 localizedStringForKey:@"SAFARI_CREDENTIAL_DATE"];

      v28 = MEMORY[0x277CCA968];
      creationDate2 = [credentialCopy creationDate];
      v30 = [v28 localizedStringFromDate:creationDate2 dateStyle:1 timeStyle:0];

      v42 = 0;
      v31 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v27 validFormatSpecifiers:@"%@" error:&v42, v30];
      v32 = v42;
      v33 = &stru_283FDFAF8;
      if (v31)
      {
        v33 = v31;
      }

      v34 = v33;

      if (v32)
      {
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        v35 = TIOSLogFacility();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key SAFARI_CREDENTIAL_DATE: %@", "-[TIAppAutofillManager _secureCandidateForPasswordCredential:fromLocalizedStringKey:]", v32];
          *buf = 138412290;
          v45 = v38;
          _os_log_debug_impl(&dword_22CA55000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }

      user = v34;
      keyCopy = v41;
    }
  }

  v36 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:v12 secureContent:user secureFormattedContent:user input:&stru_283FDFAF8 truncationSentinel:0];

  return v36;
}

- (void)oneTimeCodeProvider:(id)provider didUpdateOneTimeCode:(id)code
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277D6F8E0];
  v9[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = +[TIKeyboardInputManagerLoader sharedLoader];
  interactingConnection = [v5 interactingConnection];

  if (interactingConnection)
  {
    remoteObjectProxy = [interactingConnection remoteObjectProxy];
    [remoteObjectProxy processPayloadInfo:v4];
  }
}

- (void)oneTimeCodeProviderReceivedCode:(id)code
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D6F8E0];
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = +[TIKeyboardInputManagerLoader sharedLoader];
  interactingConnection = [v4 interactingConnection];

  if (interactingConnection)
  {
    remoteObjectProxy = [interactingConnection remoteObjectProxy];
    [remoteObjectProxy processPayloadInfo:v3];
  }
}

- (void)presentHideMyEmailUI:(id)i keyboardState:(id)state completion:(id)completion
{
  iCopy = i;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x277CF02A0]);
  altDSID = [iCopy altDSID];
  if (!altDSID)
  {
    goto LABEL_6;
  }

  v10 = altDSID;
  applicationKey = [iCopy applicationKey];
  if (!applicationKey)
  {

    goto LABEL_6;
  }

  v12 = applicationKey;
  applicationBundleId = [iCopy applicationBundleId];

  if (!applicationBundleId)
  {
LABEL_6:
    completionCopy[2](completionCopy, 0);
    goto LABEL_7;
  }

  v14 = objc_alloc(MEMORY[0x277CF0298]);
  applicationKey2 = [iCopy applicationKey];
  altDSID2 = [iCopy altDSID];
  applicationBundleId2 = [iCopy applicationBundleId];
  v18 = [v14 initWithKey:applicationKey2 altDSID:altDSID2 clientAppBundleId:applicationBundleId2];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__TIAppAutofillManager_presentHideMyEmailUI_keyboardState_completion___block_invoke;
  v19[3] = &unk_27872EF20;
  v20 = completionCopy;
  [v8 fetchPrivateEmailWithContext:v18 completion:v19];

LABEL_7:
}

void __70__TIAppAutofillManager_presentHideMyEmailUI_keyboardState_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_alloc(MEMORY[0x277D6F3D8]);
    v9 = [v5 privateEmailAddress];
    v10 = [v8 initWithCandidate:v9];

    [v10 setCustomInfoType:1024];
    v15 = *(a1 + 32);
    v11 = v10;
    TIDispatchAsync();

LABEL_7:
    goto LABEL_8;
  }

  if (v6)
  {
    v12 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s HME: UI service returned error: %@", "-[TIAppAutofillManager presentHideMyEmailUI:keyboardState:completion:]_block_invoke", v7];
      *buf = 138412290;
      v17 = v13;
      _os_log_error_impl(&dword_22CA55000, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v14 = *(a1 + 32);
    TIDispatchAsync();
    v11 = v14;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_acceptOneTimeCode:(id)code
{
  if (code)
  {
    codeCopy = code;
    [(TIAppAutofillManager *)self setLastAutofilledUsername:0];
    customInfoType = [codeCopy customInfoType];

    if (customInfoType == 64)
    {
      [(SFAppAutoFillOneTimeCodeProvider *)self->_oneTimeCodeProvider consumeCurrentOneTimeCode];
    }

    oneTimeCodeProvider = self->_oneTimeCodeProvider;

    [(SFAppAutoFillOneTimeCodeProvider *)oneTimeCodeProvider removeObserverForOneTimeCode:self];
  }
}

- (void)shouldAcceptOneTimeCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  if (completionCopy)
  {
    if (![codeCopy isOneTimeCodeThatRequiresAuthentication])
    {
      goto LABEL_7;
    }

    laContext = [(TIAppAutofillManager *)self laContext];

    if (!laContext)
    {
      v9 = objc_alloc_init(getLAContextClass());
      [(TIAppAutofillManager *)self setLaContext:v9];
    }

    laContext2 = [(TIAppAutofillManager *)self laContext];
    v11 = [laContext2 canEvaluatePolicy:1 error:0];

    if (v11)
    {
      secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v13 = [secureCandidateRenderer localizedStringForKey:@"TOTP_AUTOFILL_AUTH_ALERT_TITLE"];

      laContext3 = [(TIAppAutofillManager *)self laContext];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__TIAppAutofillManager_shouldAcceptOneTimeCode_completion___block_invoke;
      v15[3] = &unk_27872EEF8;
      v17 = completionCopy;
      v15[4] = self;
      v16 = codeCopy;
      [laContext3 evaluatePolicy:1 localizedReason:v13 reply:v15];
    }

    else
    {
LABEL_7:
      (*(completionCopy + 2))(completionCopy, 1);
      [(TIAppAutofillManager *)self _acceptOneTimeCode:codeCopy];
    }
  }
}

void __59__TIAppAutofillManager_shouldAcceptOneTimeCode_completion___block_invoke(uint64_t a1, char a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__TIAppAutofillManager_shouldAcceptOneTimeCode_completion___block_invoke_2;
  v7[3] = &unk_2787305A8;
  v4 = *(a1 + 48);
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v7[4] = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void *__59__TIAppAutofillManager_shouldAcceptOneTimeCode_completion___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 48) + 16))();
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _acceptOneTimeCode:v4];
  }

  return result;
}

- (void)shouldAcceptAutofill:(id)autofill withPayload:(id)payload completion:(id)completion
{
  v104 = *MEMORY[0x277D85DE8];
  autofillCopy = autofill;
  payloadCopy = payload;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    if (autofillCopy)
    {
      v76 = completionCopy;
      customInfoType = [autofillCopy customInfoType];
      if (customInfoType == 24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v13 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x277D6F918]];
        [(TIAppAutofillManager *)self setLastAutofilledUsername:v13];

        v14 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x277D6F8D8]];
      }

      else
      {
        v14 = 0;
      }

      customInfoType2 = [autofillCopy customInfoType];
      v16 = customInfoType2 == 264;
      v77 = payloadCopy;
      selfCopy = self;
      if (customInfoType2 == 264 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v17 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x277D6F8D0]];
        if (v17)
        {
          v73 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v17 error:0];
        }

        else
        {
          v73 = 0;
        }
      }

      else
      {
        v73 = 0;
      }

      customInfoType3 = [autofillCopy customInfoType];
      v74 = autofillCopy;
      customInfoType4 = [autofillCopy customInfoType];
      currentConnection = [MEMORY[0x277CCAE80] currentConnection];
      v21 = [TIXPCUtils obtainApplicationIdentifierFromConnection:currentConnection];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __68__TIAppAutofillManager_shouldAcceptAutofill_withPayload_completion___block_invoke;
      aBlock[3] = &unk_27872EEA8;
      v91 = customInfoType == 24;
      aBlock[4] = selfCopy;
      v22 = v14;
      v87 = v22;
      v92 = v16;
      v23 = v21;
      v25 = customInfoType == 24 || customInfoType3 == 512;
      v72 = v23;
      v88 = v23;
      v93 = customInfoType4 == 2056;
      v26 = customInfoType4 == 2056 || v25;
      payloadCopy = v77;
      v71 = v77;
      v89 = v71;
      v11 = v76;
      v90 = v76;
      v75 = _Block_copy(aBlock);
      if (![(TIAppAutofillManager *)selfCopy shouldAuthenticateToAcceptAutofill]|| !v26)
      {
        v37 = v75;
        (*(v75 + 2))(v75, 1, 0);
LABEL_77:

        autofillCopy = v74;
        goto LABEL_78;
      }

      v68 = v22;
      currentConnection2 = [MEMORY[0x277CCAE80] currentConnection];
      v70 = [TIXPCUtils obtainBundleIdentifierFromConnection:currentConnection2];

      v28 = objc_alloc_init(getLAContextClass());
      [(TIAppAutofillManager *)selfCopy setLaContext:v28];

      initForLocalizedStrings = [[TIKeyboardSecureCandidateRenderer alloc] initForLocalizedStrings];
      v30 = deviceClassString();
      v67 = v30;
      if (customInfoType == 24)
      {
        v31 = MEMORY[0x277CCACA8];
        v32 = [initForLocalizedStrings localizedStringForKey:@"AUTOFILL_AUTH_PASSCODE_TITLE"];
        v85 = 0;
        v33 = [v31 stringWithValidatedFormat:v32 validFormatSpecifiers:@"%@" error:&v85, v30];
        v34 = v85;
        v35 = &stru_283FDFAF8;
        if (v33)
        {
          v35 = v33;
        }

        v36 = v35;

        v37 = v75;
        if (!v34)
        {
          v39 = @"AUTOFILL_AUTH_ALERT_TITLE";
          goto LABEL_59;
        }

        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        v38 = TIOSLogFacility();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key AUTOFILL_AUTH_PASSCODE_TITLE: %@", "-[TIAppAutofillManager shouldAcceptAutofill:withPayload:completion:]", v34];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v64;
          _os_log_debug_impl(&dword_22CA55000, v38, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }

        v39 = @"AUTOFILL_AUTH_ALERT_TITLE";
      }

      else
      {
        v37 = v75;
        if (customInfoType3 == 512)
        {
          v40 = MEMORY[0x277CCACA8];
          v41 = [initForLocalizedStrings localizedStringForKey:@"TOTP_AUTOFILL_AUTH_PASSCODE_TITLE"];
          v84 = 0;
          v42 = [v40 stringWithValidatedFormat:v41 validFormatSpecifiers:@"%@" error:&v84, v30];
          v34 = v84;
          v43 = &stru_283FDFAF8;
          if (v42)
          {
            v43 = v42;
          }

          v36 = v43;

          if (!v34)
          {
            v39 = @"TOTP_AUTOFILL_AUTH_ALERT_TITLE";
            goto LABEL_59;
          }

          if (TICanLogMessageAtLevel_onceToken != -1)
          {
            dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
          }

          v38 = TIOSLogFacility();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key TOTP_AUTOFILL_AUTH_PASSCODE_TITLE: %@", "-[TIAppAutofillManager shouldAcceptAutofill:withPayload:completion:]", v34];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v65;
            _os_log_debug_impl(&dword_22CA55000, v38, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
          }

          v39 = @"TOTP_AUTOFILL_AUTH_ALERT_TITLE";
        }

        else
        {
          if (customInfoType4 != 2056)
          {
            v48 = 0;
            v36 = 0;
LABEL_60:
            v98[0] = &unk_28400BC10;
            v98[1] = &unk_28400BC28;
            v99[0] = v48;
            v99[1] = v36;
            v49 = 2;
            v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:2];
            if (_os_feature_enabled_impl())
            {
              v94 = 0;
              v95 = &v94;
              v96 = 0x2050000000;
              v50 = getLARatchetManagerClass_softClass;
              v97 = getLARatchetManagerClass_softClass;
              if (!getLARatchetManagerClass_softClass)
              {
                *&buf = MEMORY[0x277D85DD0];
                *(&buf + 1) = 3221225472;
                v101 = __getLARatchetManagerClass_block_invoke;
                v102 = &unk_278733760;
                v103 = &v94;
                __getLARatchetManagerClass_block_invoke(&buf);
                v50 = v95[3];
              }

              v51 = v50;
              _Block_object_dispose(&v94, 8);
              sharedInstance = [v50 sharedInstance];
              if ([sharedInstance isFeatureEnabled])
              {
                v49 = 1025;
              }

              else
              {
                v49 = 2;
              }
            }

            v53 = v36;
            laContext = [(TIAppAutofillManager *)selfCopy laContext];
            v82 = 0;
            v55 = [laContext canEvaluatePolicy:v49 error:&v82];
            v56 = v82;

            if (v55)
            {
              payloadCopy = v77;
              if (objc_msgSend_isEqualToString_(v70) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v37[2](v37, 0, 0);
                v57 = 1;
                v58 = 1;
              }

              else
              {
                v57 = 0;
                v58 = 0;
              }

              v11 = v76;
              laContext2 = [(TIAppAutofillManager *)selfCopy laContext];
              v79[0] = MEMORY[0x277D85DD0];
              v79[1] = 3221225472;
              v79[2] = __68__TIAppAutofillManager_shouldAcceptAutofill_withPayload_completion___block_invoke_396;
              v79[3] = &unk_27872EED0;
              v79[4] = selfCopy;
              v81 = v57;
              v37 = v75;
              v80 = v75;
              [laContext2 evaluatePolicy:v49 options:v69 reply:v79];

              if (v58)
              {
                v61 = [TICredentialCustomInfo alloc];
                documentIdentifierForLastAutofillGeneration = [(TIAppAutofillManager *)selfCopy documentIdentifierForLastAutofillGeneration];
                v63 = [(TICredentialCustomInfo *)v61 initWithCustomInfo:v71 documentIdentifier:documentIdentifierForLastAutofillGeneration];
                [(TIAppAutofillManager *)selfCopy setQueuedUnauthenticatedCustomInfo:v63];
              }

              v59 = v70;
            }

            else
            {
              [(TIAppAutofillManager *)selfCopy setLaContext:0];
              v37[2](v37, 1, 0);
              v11 = v76;
              payloadCopy = v77;
              v59 = v70;
            }

            v22 = v68;
            goto LABEL_77;
          }

          v44 = MEMORY[0x277CCACA8];
          v45 = [initForLocalizedStrings localizedStringForKey:@"PASSKEY_AUTOFILL_AUTH_PASSCODE_TITLE"];
          v83 = 0;
          v46 = [v44 stringWithValidatedFormat:v45 validFormatSpecifiers:@"%@" error:&v83, v30];
          v34 = v83;
          v47 = &stru_283FDFAF8;
          if (v46)
          {
            v47 = v46;
          }

          v36 = v47;

          if (!v34)
          {
            v39 = @"PASSKEY_AUTOFILL_AUTH_ALERT_TITLE";
            goto LABEL_59;
          }

          if (TICanLogMessageAtLevel_onceToken != -1)
          {
            dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
          }

          v38 = TIOSLogFacility();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key PASSKEY_AUTOFILL_AUTH_PASSCODE_TITLE: %@", "-[TIAppAutofillManager shouldAcceptAutofill:withPayload:completion:]", v34];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v66;
            _os_log_debug_impl(&dword_22CA55000, v38, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
          }

          v39 = @"PASSKEY_AUTOFILL_AUTH_ALERT_TITLE";
        }
      }

LABEL_59:
      v48 = [initForLocalizedStrings localizedStringForKey:v39];

      goto LABEL_60;
    }

    (*(completionCopy + 2))(completionCopy, 1);
  }

LABEL_78:
}

void __68__TIAppAutofillManager_shouldAcceptAutofill_withPayload_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 72) == 1)
  {
    if (!a2)
    {
      goto LABEL_12;
    }

    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = *(a1 + 32);
    v8 = *(v7 + 88);
    *(v7 + 88) = v6;

    v9 = [*(a1 + 32) passkeyProvider];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [*(a1 + 32) passkeyProvider];
      v12 = [*(a1 + 32) lastAutofilledUsername];
      v13 = *(a1 + 40);
      v14 = [*(a1 + 32) clientIdentifierForLastKeyboardSync];
      [v11 didFillCredentialForUsername:v12 forHost:v13 inAppWithBundleIdentifier:v14];
    }

    if ((*(a1 + 73) & 1) == 0)
    {
      if ([*(a1 + 48) length])
      {
        objc_opt_class();
        if (objc_opt_respondsToSelector())
        {
          v15 = objc_opt_class();
          v16 = [*(a1 + 32) lastAutofilledUsername];
          [v15 didUsePasswordForUserName:v16 appID:*(a1 + 48)];
        }
      }
    }
  }

  else
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + 88);
    *(v17 + 88) = 0;

    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (*(a1 + 74) == 1)
  {
    v19 = [*(a1 + 32) privateQueue];
    v20 = *(a1 + 56);
    v21 = v5;
    TIDispatchAsync();
  }

LABEL_12:
  (*(*(a1 + 64) + 16))();
}

void __68__TIAppAutofillManager_shouldAcceptAutofill_withPayload_completion___block_invoke_396(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queuedUnauthenticatedCustomInfo];

  if (v4)
  {
    if (v3 && *(a1 + 48) == 1)
    {
      v5 = [TICredentialCustomInfo alloc];
      v6 = [*(a1 + 32) queuedUnauthenticatedCustomInfo];
      v7 = [v6 customInfo];
      v8 = [*(a1 + 32) queuedUnauthenticatedCustomInfo];
      v9 = [v8 documentIdentifier];
      v10 = [(TICredentialCustomInfo *)v5 initWithCustomInfo:v7 documentIdentifier:v9];
      [*(a1 + 32) setQueuedCustomInfo:v10];
    }

    [*(a1 + 32) setQueuedUnauthenticatedCustomInfo:0];
  }

  v11 = [*(a1 + 32) laContext];
  if ((*(a1 + 48) & 1) == 0)
  {
    v14 = *(a1 + 40);
    v12 = v3;
    v13 = v11;
    TIDispatchAsync();
  }

  [*(a1 + 32) setLaContext:0];
}

void __68__TIAppAutofillManager_shouldAcceptAutofill_withPayload_completion___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) passkeyProvider];
  v2 = [*(a1 + 40) objectForKey:*MEMORY[0x277D6F8F0]];
  [v3 userSelectedPasskey:v2 authenticatedLAContext:*(a1 + 48)];
}

- (BOOL)shouldAuthenticateToAcceptAutofill
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = getMCProfileConnectionClass_softClass;
  v20 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getMCProfileConnectionClass_block_invoke;
    v15 = &unk_278733760;
    v16 = &v17;
    __getMCProfileConnectionClass_block_invoke(&v12);
    v2 = v18[3];
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  sharedConnection = [v2 sharedConnection];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v5 = getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr;
  v20 = getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr;
  if (!getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_block_invoke;
    v15 = &unk_278733760;
    v16 = &v17;
    v6 = ManagedConfigurationLibrary();
    v7 = dlsym(v6, "MCFeatureAuthenticationBeforeAutoFillRequired");
    *(v16[1] + 24) = v7;
    getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr = *(v16[1] + 24);
    v5 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (v5)
  {
    v8 = [sharedConnection effectiveBoolValueForSetting:*v5] == 1;

    return v8;
  }

  else
  {
    v10 = dlerror();
    v11 = abort_report_np("%s", v10);
    return __getMCProfileConnectionClass_block_invoke(v11);
  }
}

- (void)generateHideMyEmailCandidateWithSlotID:(unsigned int)d applicationBundleId:(id)id applicationId:(id)applicationId keyboardState:(id)state secureCandidateWidth:(double)width secureCandidateHash:(unint64_t)hash isSecureCandidateDoubleLines:(BOOL)lines completionHandler:(id)self0
{
  v95 = *MEMORY[0x277D85DE8];
  idCopy = id;
  applicationIdCopy = applicationId;
  handlerCopy = handler;
  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x3032000000;
  v88[3] = __Block_byref_object_copy__80;
  v88[4] = __Block_byref_object_dispose__81;
  v89 = 0;
  v18 = dispatch_semaphore_create(0);
  v19 = objc_opt_class();
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke;
  v85[3] = &unk_27872ED40;
  v87 = v88;
  v20 = v18;
  v86 = v20;
  [v19 getApprovedSharedWebCredentialsEntriesForAppWithAppID:applicationIdCopy completionHandler:v85];
  v21 = dispatch_time(0, 200000000);
  if (dispatch_semaphore_wait(v20, v21))
  {
    v22 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%s HME: Timeout on getApprovedSharedWebCredentialsEntriesForAppWithAppID:completionHandler:", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]"];
      v39 = v38 = applicationIdCopy;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v39;
      _os_log_error_impl(&dword_22CA55000, v22, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);

      applicationIdCopy = v38;
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v91 = 0x3032000000;
    v92 = __Block_byref_object_copy__80;
    v93 = __Block_byref_object_dispose__81;
    v94 = objc_alloc_init(MEMORY[0x277CF02A0]);
    v41 = mEMORY[0x277CF0130];
    primaryAuthKitAccount = [mEMORY[0x277CF0130] primaryAuthKitAccount];
    v43 = applicationIdCopy;
    v83[0] = 0;
    v83[1] = v83;
    v83[2] = 0x3032000000;
    v83[3] = __Block_byref_object_copy__80;
    v83[4] = __Block_byref_object_dispose__81;
    v84 = [mEMORY[0x277CF0130] altDSIDForAccount:primaryAuthKitAccount];
    objc_initWeak(&location, self);
    v80[0] = 0;
    v80[1] = v80;
    v80[2] = 0x2810000000;
    v80[3] = "";
    v81 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_317;
    aBlock[3] = &unk_27872EDB8;
    v42 = idCopy;
    v24 = idCopy;
    v70 = v24;
    v25 = applicationIdCopy;
    v71 = v25;
    selfCopy = self;
    v26 = handlerCopy;
    dCopy = d;
    dCopy2 = d;
    widthCopy = width;
    hashCopy = hash;
    linesCopy = lines;
    v74 = v83;
    v75 = v80;
    v28 = v26;
    v73 = v28;
    v29 = _Block_copy(aBlock);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_322;
    v59[3] = &unk_27872EE08;
    v60 = v25;
    v65 = v83;
    v30 = v24;
    v61 = v30;
    selfCopy2 = self;
    v68 = dCopy;
    p_buf = &buf;
    v67 = v80;
    v31 = v28;
    v63 = v31;
    v64 = v29;
    v45 = v29;
    v32 = _Block_copy(v59);
    v33 = MEMORY[0x277CFB450];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_327;
    v49[3] = &unk_27872EE80;
    v53 = v80;
    v34 = v31;
    idCopy = v42;
    v35 = v34;
    v51 = v34;
    v54 = v88;
    v55 = v83;
    v50 = v30;
    v56 = &buf;
    objc_copyWeak(&v57, &location);
    v58 = dCopy;
    handlerCopy = v26;
    v52 = v32;
    v36 = v32;
    [v33 requestFeatureWithId:@"mail.hide-my-email.create" completion:v49];
    v37 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_353;
    block[3] = &unk_278731400;
    v48 = v80;
    v47 = v35;
    dispatch_after(v37, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v57);
    applicationIdCopy = v43;

    _Block_object_dispose(v80, 8);
    objc_destroyWeak(&location);
    _Block_object_dispose(v83, 8);

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(v88, 8);
}

intptr_t __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [[v3 alloc] initWithArray:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);

  return dispatch_semaphore_signal(v8);
}

void __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_317(uint64_t a1)
{
  v2 = MEMORY[0x277D49DF0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_2;
  v10[3] = &unk_27872ED90;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v11 = v4;
  v12 = v5;
  v18 = *(a1 + 96);
  v6 = *(a1 + 32);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  v19 = *(a1 + 100);
  v7 = *(a1 + 72);
  v13 = v6;
  v15 = v7;
  v9 = *(a1 + 56);
  v8 = v9;
  v14 = v9;
  [v2 bestDomainForAppID:v3 completionHandler:v10];
}

void __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_322(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CF0298]) initWithKey:*(a1 + 32) altDSID:*(*(*(a1 + 72) + 8) + 40) clientAppBundleId:*(a1 + 40)];
  v3 = *(*(*(a1 + 80) + 8) + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_2_324;
  v11[3] = &unk_27872EDE0;
  v17 = *(a1 + 96);
  v10 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 88);
  v15 = *(a1 + 72);
  v16 = v6;
  v7 = *(a1 + 56);
  *&v8 = v5;
  *(&v8 + 1) = v7;
  *&v9 = v10;
  *(&v9 + 1) = v4;
  v12 = v9;
  v13 = v8;
  v14 = *(a1 + 64);
  [v3 lookupPrivateEmailWithContext:v2 completion:v11];
}

void __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_327(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = TIAppAutofillOSLogFacility();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s HME: %@ on requestFeatureWithId:completion: HideMyEmail", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]_block_invoke", v6];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
LABEL_20:
    _os_log_error_impl(&dword_22CA55000, v7, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);

LABEL_11:
    if ((atomic_exchange((*(*(a1 + 56) + 8) + 32), 1u) & 1) == 0)
    {
      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_13;
  }

  if ([v5 status] == 2 || objc_msgSend(v5, "status") == 3 || objc_msgSend(v5, "status") == 4)
  {
    v9 = [v5 status] - 2;
    if (v9 > 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = off_27872EFA0[v9];
    }

    v7 = TIAppAutofillOSLogFacility();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s HME: feature is %@ for user", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]_block_invoke", v10];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    goto LABEL_20;
  }

  if (![v5 status] || objc_msgSend(v5, "status") == 1)
  {
    v11 = [v5 status];
    v12 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = @"available and unlimited";
      if (v11 != 1)
      {
        v18 = 0;
      }

      if (!v11)
      {
        v18 = @"available";
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s HME: feature is %@ for user", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]_block_invoke", v18];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_debug_impl(&dword_22CA55000, v12, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v32 = 0x2020000000;
    v33 = 0;
    if ([*(*(*(a1 + 64) + 8) + 40) count])
    {
      v13 = *(*(*(a1 + 64) + 8) + 40);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_349;
      v20[3] = &unk_27872EE58;
      v24 = *(a1 + 72);
      v14 = *(a1 + 32);
      v15 = *(a1 + 80);
      v21 = v14;
      v25 = v15;
      p_buf = &buf;
      objc_copyWeak(&v29, (a1 + 88));
      v30 = *(a1 + 96);
      v27 = *(a1 + 56);
      v16 = *(a1 + 40);
      v17 = *(a1 + 64);
      v22 = v16;
      v28 = v17;
      v23 = *(a1 + 48);
      [v13 enumerateObjectsUsingBlock:v20];

      objc_destroyWeak(&v29);
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

    _Block_object_dispose(&buf, 8);
  }

LABEL_13:
}

uint64_t __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_353(uint64_t result)
{
  if ((atomic_exchange((*(*(result + 40) + 8) + 32), 1u) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_349(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = objc_alloc(MEMORY[0x277CF0298]);
  v9 = [v7 domain];
  v10 = [v8 initWithKey:v9 altDSID:*(*(*(a1 + 56) + 8) + 40) clientAppBundleId:*(a1 + 32)];

  v11 = *(*(*(a1 + 64) + 8) + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_2_350;
  v18[3] = &unk_27872EE30;
  v23 = *(a1 + 72);
  v27[1] = a4;
  objc_copyWeak(v27, (a1 + 96));
  v28 = *(a1 + 104);
  v19 = v7;
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  v20 = v12;
  v14 = *(a1 + 80);
  v24 = v13;
  v25 = v14;
  v15 = *(a1 + 40);
  v27[2] = a3;
  v16 = *(a1 + 88);
  v21 = v15;
  v26 = v16;
  v22 = *(a1 + 48);
  v17 = v7;
  [v11 lookupPrivateEmailWithContext:v10 completion:v18];

  objc_destroyWeak(v27);
}

void __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_2_350(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a2 privateEmailAddress];

  if (v3)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    **(a1 + 104) = 1;
    v4 = MEMORY[0x277D6F3D8];
    WeakRetained = objc_loadWeakRetained((a1 + 96));
    v6 = [WeakRetained secureCandidateRenderer];
    v7 = [v6 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];
    v8 = *(a1 + 120);
    v9 = [*(a1 + 32) domain];
    v10 = [v4 secureCandidateForInput:v7 slotID:v8 customInfoType:1024 applicationKey:v9 applicationBundleId:*(a1 + 40) altDSID:*(*(*(a1 + 72) + 8) + 40)];

    if (atomic_exchange((*(*(a1 + 80) + 8) + 32), 1u))
    {
      v11 = TIAppAutofillOSLogFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Timeout before handler completed", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]_block_invoke_2"];
        *buf = 138412290;
        v16 = v14;
        _os_log_error_impl(&dword_22CA55000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v12 = *(a1 + 112);
    if (v12 == [*(*(*(a1 + 88) + 8) + 40) count] - 1 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      v13 = *(*(a1 + 56) + 16);

      v13();
    }
  }
}

void __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_2_324(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a2 privateEmailAddress];

  if (v3)
  {
    v4 = MEMORY[0x277D6F3D8];
    v5 = [*(a1 + 32) secureCandidateRenderer];
    v6 = [v5 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];
    v7 = [v4 secureCandidateForInput:v6 slotID:*(a1 + 88) customInfoType:1024 applicationKey:*(a1 + 40) applicationBundleId:*(a1 + 48) altDSID:*(*(*(a1 + 72) + 8) + 40)];

    if (atomic_exchange((*(*(a1 + 80) + 8) + 32), 1u))
    {
      v8 = TIAppAutofillOSLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Timeout before handler completed", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]_block_invoke_2"];
        *buf = 138412290;
        v12 = v10;
        _os_log_error_impl(&dword_22CA55000, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v9 = *(*(a1 + 64) + 16);

    v9();
  }
}

void __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;
  v6 = MEMORY[0x277D6F3D8];
  v7 = [*(a1 + 40) secureCandidateRenderer];
  v8 = [v7 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];
  v9 = [v6 secureCandidateForInput:v8 slotID:*(a1 + 96) customInfoType:1024 applicationKey:v5 applicationBundleId:*(a1 + 48) altDSID:*(*(*(a1 + 64) + 8) + 40)];

  [v9 setSecureCandidateWidth:*(a1 + 80)];
  [v9 setSecureCandidateHash:*(a1 + 88)];
  [v9 setIsSecureCandidateDoubleLines:*(a1 + 100)];
  if (atomic_exchange((*(*(a1 + 72) + 8) + 32), 1u))
  {
    v10 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Timeout before handler completed", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]_block_invoke_2"];
      *buf = 138412290;
      v13 = v11;
      _os_log_error_impl(&dword_22CA55000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)generateJustHMEAutofillFormSuggestionWithRenderTraits:(id)traits withKeyboardState:(id)state applicationID:(id)d applicationBundleID:(id)iD completionHandler:(id)handler
{
  v72 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  stateCopy = state;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:0];
  [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:0];
  if (traitsCopy)
  {
    v63 = handlerCopy;
    v17 = traitsCopy;
    documentIdentifier = [stateCopy documentIdentifier];
    v65 = [documentIdentifier copy];

    clientIdentifier = [stateCopy clientIdentifier];
    v64 = [clientIdentifier copy];

    secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];

    v21 = MEMORY[0x277D6F980];
    if (secureCandidateRenderer)
    {
      secureCandidateRenderer2 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v23 = [secureCandidateRenderer2 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];

      if (v23 && [v23 length])
      {
LABEL_15:
        [v17 setHideMyEmailLocalizedText:v23];
        v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
        v61 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:&stru_283FDFAF8 secureContent:v23 secureFormattedContent:v23 input:&stru_283FDFAF8 truncationSentinel:0];
        [v28 addObject:?];
        secureCandidateRenderer3 = [(TIAppAutofillManager *)self secureCandidateRenderer];
        v62 = v17;
        v30 = [secureCandidateRenderer3 slotIDsFromSecureCandidates:v28 withRenderTraits:v17];

        if (v30)
        {
          v59 = stateCopy;
          v60 = iDCopy;
          v57 = traitsCopy;
          v31 = [v30 objectAtIndex:0];
          slotID = [v31 slotID];

          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v34 = dCopy;
          v35 = dictionary;
          if (v23)
          {
            v36 = v23;
          }

          else
          {
            v36 = *v21;
          }

          [dictionary setObject:v36 forKey:*MEMORY[0x277D6F910]];
          secureCandidateRenderer4 = [(TIAppAutofillManager *)self secureCandidateRenderer];
          secureCandidateCache = [secureCandidateRenderer4 secureCandidateCache];
          v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:slotID];
          [secureCandidateCache setObject:v35 forKey:v39];

          v40 = +[TIKeyboardSecureTouchManager sharedInstance];
          [v40 registerSlotID:slotID];

          v41 = _os_feature_enabled_impl();
          v58 = v34;
          if (v34 && v60 && v41)
          {
            firstObject = [v30 firstObject];
            [firstObject secureCandidateWidth];
            v43 = v42;
            firstObject2 = [v28 firstObject];
            candidateHash = [firstObject2 candidateHash];
            firstObject3 = [v30 firstObject];
            isSecureCandidateDoubleLines = [firstObject3 isSecureCandidateDoubleLines];
            v66[0] = MEMORY[0x277D85DD0];
            v66[1] = 3221225472;
            v66[2] = __148__TIAppAutofillManager_generateJustHMEAutofillFormSuggestionWithRenderTraits_withKeyboardState_applicationID_applicationBundleID_completionHandler___block_invoke;
            v66[3] = &unk_27872F2B0;
            v66[4] = self;
            v67 = v65;
            v68 = v64;
            v69 = v63;
            handlerCopy = v63;
            iDCopy = v60;
            [(TIAppAutofillManager *)self generateHideMyEmailCandidateWithSlotID:slotID applicationBundleId:v60 applicationId:v58 keyboardState:v59 secureCandidateWidth:candidateHash secureCandidateHash:isSecureCandidateDoubleLines isSecureCandidateDoubleLines:v43 completionHandler:v66];

            traitsCopy = v57;
          }

          else
          {
            [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:v65];
            [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:v64];
            handlerCopy = v63;
            v63[2](v63, 0);
            traitsCopy = v57;
            iDCopy = v60;
          }

          dCopy = v58;
          stateCopy = v59;
        }

        else
        {
          v46 = TIAppAutofillOSLogFacility();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s slotIDs are nil", "-[TIAppAutofillManager generateJustHMEAutofillFormSuggestionWithRenderTraits:withKeyboardState:applicationID:applicationBundleID:completionHandler:]"];
            *buf = 138412290;
            v71 = v53;
            _os_log_error_impl(&dword_22CA55000, v46, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          handlerCopy = v63;
          v63[2](v63, 0);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v25 = TIAppAutofillOSLogFacility();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%s self.secureCandidateRenderer is nil", "-[TIAppAutofillManager generateJustHMEAutofillFormSuggestionWithRenderTraits:withKeyboardState:applicationID:applicationBundleID:completionHandler:]"];
        v52 = v51 = v17;
        *buf = 138412290;
        v71 = v52;
        _os_log_debug_impl(&dword_22CA55000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

        v17 = v51;
      }

      v23 = 0;
    }

    v26 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%s Localized Hide My Email text is nil", "-[TIAppAutofillManager generateJustHMEAutofillFormSuggestionWithRenderTraits:withKeyboardState:applicationID:applicationBundleID:completionHandler:]"];
      v48 = v47 = v17;
      *buf = 138412290;
      v71 = v48;
      _os_log_debug_impl(&dword_22CA55000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

      v17 = v47;
    }

    v27 = *v21;
    v23 = v27;
    goto LABEL_15;
  }

  v24 = TIAppAutofillOSLogFacility();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%s secureCandidateRenderTraits is nil", "-[TIAppAutofillManager generateJustHMEAutofillFormSuggestionWithRenderTraits:withKeyboardState:applicationID:applicationBundleID:completionHandler:]"];
    v50 = v49 = handlerCopy;
    *buf = 138412290;
    v71 = v50;
    _os_log_error_impl(&dword_22CA55000, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

    handlerCopy = v49;
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_29:
}

void __148__TIAppAutofillManager_generateJustHMEAutofillFormSuggestionWithRenderTraits_withKeyboardState_applicationID_applicationBundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  [v4 setDocumentIdentifierForLastAutofillGeneration:v3];
  [*(a1 + 32) setClientIdentifierForLastAutofillGeneration:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
}

- (void)generateAutofillFormSuggestedUsernameWithRenderTraits:(id)traits withKeyboardState:(id)state completionHandler:(id)handler
{
  v104 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  stateCopy = state;
  handlerCopy = handler;
  [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:0];
  selfCopy = self;
  [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:0];
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy__80;
  v100 = __Block_byref_object_dispose__81;
  array = [MEMORY[0x277CBEB18] array];
  if ([MEMORY[0x277D49DF0] isAppAutoFillAvailable])
  {
    v9 = dispatch_semaphore_create(0);
    textInputTraits = [stateCopy textInputTraits];
    v11 = [textInputTraits keyboardType] == 7;

    mEMORY[0x277D49E08] = [MEMORY[0x277D49E08] sharedProvider];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __114__TIAppAutofillManager_generateAutofillFormSuggestedUsernameWithRenderTraits_withKeyboardState_completionHandler___block_invoke;
    v93[3] = &unk_27872ED40;
    v94 = v9;
    v95 = &v96;
    v13 = v9;
    [mEMORY[0x277D49E08] suggestedUsersOfType:v11 completionHandler:v93];

    v14 = dispatch_time(0, 200000000);
    dispatch_semaphore_wait(v13, v14);
  }

  if (_os_feature_enabled_impl() && [stateCopy autofillSubMode] == 7)
  {
    secureCandidateRenderer = [(TIAppAutofillManager *)selfCopy secureCandidateRenderer];

    if (secureCandidateRenderer)
    {
      secureCandidateRenderer2 = [(TIAppAutofillManager *)selfCopy secureCandidateRenderer];
      v17 = [secureCandidateRenderer2 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];

      if (v17 && [v17 length])
      {
LABEL_15:
        [traitsCopy setHideMyEmailLocalizedText:v17];
        [v97[5] insertObject:v17 atIndex:0];

        goto LABEL_16;
      }
    }

    else
    {
      v18 = TIAppAutofillOSLogFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s self.secureCandidateRenderer is nil", "-[TIAppAutofillManager generateAutofillFormSuggestedUsernameWithRenderTraits:withKeyboardState:completionHandler:]"];
        *buf = 138412290;
        v103 = v78;
        _os_log_debug_impl(&dword_22CA55000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v17 = 0;
    }

    v19 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Localized Hide My Email text is nil", "-[TIAppAutofillManager generateAutofillFormSuggestedUsernameWithRenderTraits:withKeyboardState:completionHandler:]"];
      *buf = 138412290;
      v103 = v76;
      _os_log_debug_impl(&dword_22CA55000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v20 = *MEMORY[0x277D6F980];
    v17 = v20;
    goto LABEL_15;
  }

LABEL_16:
  v21 = [v97[5] count];
  v80 = traitsCopy;
  if (v21 >= [traitsCopy maxCellCount])
  {
    maxCellCount = [traitsCopy maxCellCount];
  }

  else
  {
    maxCellCount = [v97[5] count];
  }

  v23 = maxCellCount;
  v87 = [MEMORY[0x277CBEB18] arrayWithCapacity:maxCellCount];
  v85 = [MEMORY[0x277CBEB18] arrayWithCapacity:v23];
  v24 = stateCopy;
  v25 = selfCopy;
  if (v23)
  {
    v26 = [v97[5] objectAtIndex:0];
    v27 = [v26 containsString:@"@"];

    if (v27)
    {
      v28 = 1;
      while (v23 != v28)
      {
        v29 = [v97[5] objectAtIndex:v28];
        v30 = [v29 containsString:@"@"];

        ++v28;
        if ((v30 & 1) == 0)
        {
          v31 = v28 - 1;
          goto LABEL_27;
        }
      }

      v31 = v23;
LABEL_27:
      v24 = stateCopy;
      v25 = selfCopy;
      v32 = v31 < v23;
    }

    else
    {
      v32 = 1;
    }

    for (i = 0; i != v23; ++i)
    {
      v34 = [v97[5] objectAtIndex:i];
      v35 = &stru_283FDFAF8;
      if (v32)
      {
        secureCandidateRenderer3 = [(TIAppAutofillManager *)v25 secureCandidateRenderer];
        v35 = [secureCandidateRenderer3 localizedStringForKey:@"SAFARI_CREDENTIAL_SUGGESTED_USERNAME"];
      }

      if (_os_feature_enabled_impl() && [v24 autofillSubMode] == 7)
      {
        secureCandidateRenderer4 = [(TIAppAutofillManager *)v25 secureCandidateRenderer];
        v38 = [secureCandidateRenderer4 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];
        isEqualToString = objc_msgSend_isEqualToString_(v34);

        if (isEqualToString)
        {

          v35 = &stru_283FDFAF8;
        }

        v24 = stateCopy;
        v25 = selfCopy;
      }

      v40 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:v35 secureContent:v34 secureFormattedContent:v34 input:&stru_283FDFAF8 truncationSentinel:0];
      [v87 addObject:v40];
    }
  }

  secureCandidateRenderer5 = [(TIAppAutofillManager *)v25 secureCandidateRenderer];
  v42 = [secureCandidateRenderer5 slotIDsFromSecureCandidates:v87 withRenderTraits:v80];

  if ([v42 count])
  {
    v43 = 0;
    isSecureCandidateDoubleLines = 0;
    candidateHash = 0;
    v44 = 0;
    v83 = *MEMORY[0x277D6F910];
    v45 = 0.0;
    while (1)
    {
      v46 = [v97[5] objectAtIndex:v43];
      v47 = [v42 objectAtIndex:v43];
      slotID = [v47 slotID];

      if (_os_feature_enabled_impl() && [stateCopy autofillSubMode] == 7 && (-[TIAppAutofillManager secureCandidateRenderer](selfCopy, "secureCandidateRenderer"), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v49, "localizedStringForKey:", @"SAFARI_HIDE_MY_EMAIL_SUGGESTION"), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend_isEqualToString_(v46), v50, v49, v51))
      {
        v45 = 0.0;
        if ([v42 count] > v43)
        {
          v52 = [v42 objectAtIndexedSubscript:v43];
          [v52 secureCandidateWidth];
          v45 = v53;
        }

        v54 = [v87 objectAtIndexedSubscript:v43];
        candidateHash = [v54 candidateHash];

        if ([v42 count] <= v43)
        {
          isSecureCandidateDoubleLines = 0;
          goto LABEL_54;
        }

        v55 = [v42 objectAtIndexedSubscript:v43];
        isSecureCandidateDoubleLines = [v55 isSecureCandidateDoubleLines];
      }

      else
      {
        v55 = [MEMORY[0x277D6F3D8] secureCandidateForInput:&stru_283FDFAF8 slotID:slotID customInfoType:128 applicationKey:&stru_283FDFAF8 applicationBundleId:&stru_283FDFAF8 altDSID:&stru_283FDFAF8];
        if ([v42 count] <= v43)
        {
          [v55 setSecureCandidateWidth:0.0];
        }

        else
        {
          v56 = [v42 objectAtIndexedSubscript:v43];
          [v56 secureCandidateWidth];
          [v55 setSecureCandidateWidth:?];
        }

        v57 = [v87 objectAtIndexedSubscript:v43];
        [v55 setSecureCandidateHash:{objc_msgSend(v57, "candidateHash")}];

        if ([v42 count] <= v43)
        {
          [v55 setIsSecureCandidateDoubleLines:0];
        }

        else
        {
          v58 = [v42 objectAtIndexedSubscript:v43];
          [v55 setIsSecureCandidateDoubleLines:{objc_msgSend(v58, "isSecureCandidateDoubleLines")}];
        }

        [v85 addObject:v55];
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        [dictionary setObject:v46 forKey:v83];
        secureCandidateRenderer6 = [(TIAppAutofillManager *)selfCopy secureCandidateRenderer];
        secureCandidateCache = [secureCandidateRenderer6 secureCandidateCache];
        v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:slotID];
        [secureCandidateCache setObject:dictionary forKey:v62];

        v63 = +[TIKeyboardSecureTouchManager sharedInstance];
        [v63 registerSlotID:slotID];

        slotID = v44;
      }

LABEL_54:
      ++v43;
      v44 = slotID;
      if (v43 >= [v42 count])
      {
        goto LABEL_58;
      }
    }
  }

  slotID = 0;
  candidateHash = 0;
  isSecureCandidateDoubleLines = 0;
  v45 = 0.0;
LABEL_58:
  v64 = stateCopy;
  if ((_os_feature_enabled_impl() & 1) == 0 || [stateCopy autofillSubMode] != 7 || !slotID)
  {
    goto LABEL_71;
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  autofillContext = [stateCopy autofillContext];
  v67 = [autofillContext objectForKey:*MEMORY[0x277D6F9B0]];

  if (!v67)
  {
    v67 = [TIXPCUtils obtainApplicationIdentifierFromConnection:currentConnection];
  }

  autofillContext2 = [stateCopy autofillContext];
  v69 = [autofillContext2 objectForKey:*MEMORY[0x277D6F9C0]];

  if (!v69)
  {
    v69 = [TIXPCUtils obtainBundleIdentifierFromConnection:currentConnection];
  }

  if (!v69 || !v67)
  {

LABEL_71:
    documentIdentifier = [stateCopy documentIdentifier];
    [(TIAppAutofillManager *)selfCopy setDocumentIdentifierForLastAutofillGeneration:documentIdentifier];

    clientIdentifier = [stateCopy clientIdentifier];
    [(TIAppAutofillManager *)selfCopy setClientIdentifierForLastAutofillGeneration:clientIdentifier];

    v73 = handlerCopy;
    v72 = v85;
    (*(handlerCopy + 2))(handlerCopy, v85);
    goto LABEL_72;
  }

  v70 = pthread_self();
  v71 = TIAppAutofillOSLogFacility();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
  {
    v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:...] is called from thread %lu", "-[TIAppAutofillManager generateAutofillFormSuggestedUsernameWithRenderTraits:withKeyboardState:completionHandler:]", v70];
    *buf = 138412290;
    v103 = v77;
    _os_log_debug_impl(&dword_22CA55000, v71, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __114__TIAppAutofillManager_generateAutofillFormSuggestedUsernameWithRenderTraits_withKeyboardState_completionHandler___block_invoke_300;
  v88[3] = &unk_27872ED68;
  v88[4] = selfCopy;
  v89 = stateCopy;
  v72 = v85;
  v90 = v85;
  v91 = handlerCopy;
  v92 = v70;
  v64 = stateCopy;
  [(TIAppAutofillManager *)selfCopy generateHideMyEmailCandidateWithSlotID:slotID applicationBundleId:v69 applicationId:v67 keyboardState:v89 secureCandidateWidth:candidateHash secureCandidateHash:isSecureCandidateDoubleLines & 1 isSecureCandidateDoubleLines:v45 completionHandler:v88];

  v73 = handlerCopy;
LABEL_72:

  _Block_object_dispose(&v96, 8);
}

void __114__TIAppAutofillManager_generateAutofillFormSuggestedUsernameWithRenderTraits_withKeyboardState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(*(a1 + 40) + 8) + 40);
        v9 = [*(*(&v10 + 1) + 8 * v7) value];
        [v8 addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __114__TIAppAutofillManager_generateAutofillFormSuggestedUsernameWithRenderTraits_withKeyboardState_completionHandler___block_invoke_300(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 40) documentIdentifier];
  [*(a1 + 32) setDocumentIdentifierForLastAutofillGeneration:v4];

  v5 = [*(a1 + 40) clientIdentifier];
  [*(a1 + 32) setClientIdentifierForLastAutofillGeneration:v5];

  if (v3)
  {
    [*(a1 + 48) addObject:v3];
  }

  (*(*(a1 + 56) + 16))();
  v6 = TIAppAutofillOSLogFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:...] is completed in thread %lu", "-[TIAppAutofillManager generateAutofillFormSuggestedUsernameWithRenderTraits:withKeyboardState:completionHandler:]_block_invoke", *(a1 + 64)];
    *buf = 138412290;
    v9 = v7;
    _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }
}

- (id)generateCellularCandidatesWithRenderTraits:(id)traits withKeyboardState:(id)state
{
  v91 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  stateCopy = state;
  textInputTraits = [stateCopy textInputTraits];
  textContentType = [textInputTraits textContentType];
  if (objc_msgSend_isEqualToString_(textContentType))
  {

    goto LABEL_4;
  }

  textInputTraits2 = [stateCopy textInputTraits];
  textContentType2 = [textInputTraits2 textContentType];
  isEqualToString = objc_msgSend_isEqualToString_(textContentType2);

  if (isEqualToString)
  {
LABEL_4:
    v13 = deviceClassString();
    textInputTraits3 = [stateCopy textInputTraits];
    textContentType3 = [textInputTraits3 textContentType];
    v16 = objc_msgSend_isEqualToString_(textContentType3);

    v17 = MEMORY[0x277CCACA8];
    if (v16)
    {
      v18 = [(TIAppAutofillManager *)self localizedCellularAutofillStringForKey:@"AUTOFILL_CELLULAR_EID_TITLE" defaultValue:*MEMORY[0x277D6F970]];
      v81 = 0;
      v19 = &v81;
      [v17 stringWithValidatedFormat:v18 validFormatSpecifiers:@"%@" error:&v81, v13];
    }

    else
    {
      v18 = [(TIAppAutofillManager *)self localizedCellularAutofillStringForKey:@"AUTOFILL_CELLULAR_IMEI_TITLE" defaultValue:*MEMORY[0x277D6F978]];
      v80 = 0;
      v19 = &v80;
      [v17 stringWithValidatedFormat:v18 validFormatSpecifiers:@"%@" error:&v80, v13];
    }
    v20 = ;
    v74 = *v19;
    v21 = &stru_283FDFAF8;
    if (v20)
    {
      v21 = v20;
    }

    v22 = v21;

    v77 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    coreTelephonyMockObject = [(TIAppAutofillManager *)self coreTelephonyMockObject];

    textInputTraits4 = [stateCopy textInputTraits];
    textContentType4 = [textInputTraits4 textContentType];
    v26 = objc_msgSend_isEqualToString_(textContentType4);
    v75 = v13;
    v76 = v22;
    if (coreTelephonyMockObject)
    {
      v27 = v26 ^ 1u;

      coreTelephonyMockObject2 = [(TIAppAutofillManager *)self coreTelephonyMockObject];
      v29 = [coreTelephonyMockObject2 retrieveDeviceIdentifier:v27];
LABEL_11:

      [traitsCopy setShouldForceDoubleLineCandidateForCellularAutofill:1];
      v30 = MEMORY[0x277D6F570];
      v29 = v29;
      v71 = [[v30 alloc] initWithSecureHeader:v22 secureContent:v29 secureFormattedContent:v29 input:v29 truncationSentinel:0];
      [v77 addObject:?];
      secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v72 = traitsCopy;
      v32 = [secureCandidateRenderer slotIDsFromSecureCandidates:v77 withRenderTraits:traitsCopy];

      firstObject = [v32 firstObject];
      slotID = [firstObject slotID];

      textInputTraits5 = [stateCopy textInputTraits];
      textContentType5 = [textInputTraits5 textContentType];
      if (objc_msgSend_isEqualToString_(textContentType5))
      {
        v37 = 0x2000;
      }

      else
      {
        v37 = 0x4000;
      }

      textInputTraits6 = [stateCopy textInputTraits];
      textContentType6 = [textInputTraits6 textContentType];
      v40 = objc_msgSend_isEqualToString_(textContentType6);
      v41 = MEMORY[0x277D6F8C0];
      if (!v40)
      {
        v41 = MEMORY[0x277D6F8C8];
      }

      v42 = *v41;

      v43 = [MEMORY[0x277D6F3D8] secureCandidateForInput:v29 slotID:slotID customInfoType:v37];
      firstObject2 = [v32 firstObject];
      [firstObject2 secureCandidateWidth];
      [v43 setSecureCandidateWidth:?];

      firstObject3 = [v77 firstObject];
      [v43 setSecureCandidateHash:{objc_msgSend(firstObject3, "candidateHash")}];

      firstObject4 = [v32 firstObject];
      [v43 setIsSecureCandidateDoubleLines:{objc_msgSend(firstObject4, "isSecureCandidateDoubleLines")}];

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:v29 forKeyedSubscript:v42];

      secureCandidateRenderer2 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      secureCandidateCache = [secureCandidateRenderer2 secureCandidateCache];
      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:slotID];
      [secureCandidateCache setObject:dictionary forKey:v50];

      v51 = +[TIKeyboardSecureTouchManager sharedInstance];
      [v51 registerSlotID:slotID];

      if (v43)
      {
        v86 = v43;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
      }

      else
      {
        v52 = 0;
      }

      coreTelephonyMockObject2 = v71;
      traitsCopy = v72;
      goto LABEL_48;
    }

    if (v26)
    {
      v53 = 1;
    }

    else
    {
      v53 = 2;
    }

    coreTelephonyMockObject2 = [MEMORY[0x277CCAE80] currentConnection];
    if (![(TIAppAutofillManager *)self hasCoreTelephonyEntitlementForConnection:coreTelephonyMockObject2])
    {
      v32 = TIAppAutofillOSLogFacility();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s The application does not have the required entitlement.", "-[TIAppAutofillManager generateCellularCandidatesWithRenderTraits:withKeyboardState:]"];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v67;
        _os_log_error_impl(&dword_22CA55000, v32, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }

      v29 = 0;
      goto LABEL_47;
    }

    v82 = 0;
    v83 = &v82;
    v84 = 0x2050000000;
    v54 = getCoreTelephonyClientClass_softClass;
    v85 = getCoreTelephonyClientClass_softClass;
    if (!getCoreTelephonyClientClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v88 = __getCoreTelephonyClientClass_block_invoke;
      v89 = &unk_278733760;
      v90 = &v82;
      __getCoreTelephonyClientClass_block_invoke(&buf);
      v54 = v83[3];
    }

    v55 = v54;
    _Block_object_dispose(&v82, 8);
    v56 = [v54 alloc];
    v32 = [v56 initWithQueue:MEMORY[0x277D85CD0]];
    autofillContext = [stateCopy autofillContext];
    v58 = [autofillContext objectForKey:*MEMORY[0x277D6F9C0]];

    v73 = v58;
    if (!v58)
    {
      v73 = [TIXPCUtils obtainBundleIdentifierFromConnection:coreTelephonyMockObject2];
    }

    if (objc_opt_respondsToSelector())
    {
      v79 = 0;
      v59 = &v79;
      v60 = [v32 retrieveDeviceIdentifier:v53 clientBundleIdentifier:v73 showAlert:0 error:&v79];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v63 = TIAppAutofillOSLogFacility();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Could not link CoreTelephony.", "-[TIAppAutofillManager generateCellularCandidatesWithRenderTraits:withKeyboardState:]"];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v70;
          _os_log_error_impl(&dword_22CA55000, v63, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
        }

        v29 = 0;
LABEL_46:

LABEL_47:
        v52 = MEMORY[0x277CBEBF8];
LABEL_48:

        v61 = v76;
        goto LABEL_49;
      }

      v78 = 0;
      v59 = &v78;
      v60 = [v32 retrieveDeviceIdentifier:v53 error:&v78];
    }

    v29 = v60;
    v62 = *v59;
    if (!v62)
    {

      v22 = v76;
      goto LABEL_11;
    }

    v63 = v62;
    v64 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%s CoreTelephony client returned error on retrieveDeviceIdentifier:error: ERROR:%@", "-[TIAppAutofillManager generateCellularCandidatesWithRenderTraits:withKeyboardState:]", v63];
      v69 = v68 = coreTelephonyMockObject2;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v69;
      _os_log_error_impl(&dword_22CA55000, v64, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);

      coreTelephonyMockObject2 = v68;
    }

    goto LABEL_46;
  }

  v61 = TIAppAutofillOSLogFacility();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s The text field has no text content type.", "-[TIAppAutofillManager generateCellularCandidatesWithRenderTraits:withKeyboardState:]"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v66;
    _os_log_error_impl(&dword_22CA55000, v61, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
  }

  v52 = MEMORY[0x277CBEBF8];
LABEL_49:

  return v52;
}

- (id)generateOneTimeCodeCandidatesWithRenderTraits:(id)traits withKeyboardState:(id)state
{
  v128 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  stateCopy = state;
  autofillContext = [stateCopy autofillContext];
  v9 = [autofillContext objectForKey:@"_WebViewURL"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
  }

  textInputTraits = [stateCopy textInputTraits];
  textContentType = [textInputTraits textContentType];
  isEqualToString = objc_msgSend_isEqualToString_(textContentType);

  dateOfLastPasswordAutoFill = [(TIAppAutofillManager *)self dateOfLastPasswordAutoFill];
  if (dateOfLastPasswordAutoFill)
  {
    date = [MEMORY[0x277CBEAA8] date];
    dateOfLastPasswordAutoFill2 = [(TIAppAutofillManager *)self dateOfLastPasswordAutoFill];
    [date timeIntervalSinceDate:dateOfLastPasswordAutoFill2];
    v110 = v16 <= 30.0;
  }

  else
  {
    v110 = 0;
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v18 = [TIXPCUtils obtainApplicationIdentifierFromConnection:currentConnection];
  v19 = objc_msgSend_isEqualToString_(v18);
  autofillContext2 = TIAppAutofillOSLogFacility();
  v21 = os_log_type_enabled(autofillContext2, OS_LOG_TYPE_DEBUG);
  if (v19)
  {
    if (v21)
    {
      v97 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Grabbing application identifier from keyboardState.autofillContext.", "-[TIAppAutofillManager generateOneTimeCodeCandidatesWithRenderTraits:withKeyboardState:]"];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v97;
      _os_log_debug_impl(&dword_22CA55000, autofillContext2, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    autofillContext2 = [stateCopy autofillContext];
    v22 = [autofillContext2 objectForKey:*MEMORY[0x277D6F9B0]];

    v18 = v22;
  }

  else if (v21)
  {
    v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Grabbing application identifier from xpc connection.", "-[TIAppAutofillManager generateOneTimeCodeCandidatesWithRenderTraits:withKeyboardState:]"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v98;
    _os_log_debug_impl(&dword_22CA55000, autofillContext2, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
  }

  v113 = v18;
  if (v18)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v124 = 0x3032000000;
    v125 = __Block_byref_object_copy__80;
    v126 = __Block_byref_object_dispose__81;
    v127 = 0;
    autofillContext3 = [stateCopy autofillContext];
    v24 = [autofillContext3 objectForKeyedSubscript:*MEMORY[0x277D6F9B8]];

    v25 = dispatch_group_create();
    objc_opt_class();
    v108 = currentConnection;
    v109 = traitsCopy;
    if (objc_opt_respondsToSelector())
    {
      dispatch_group_enter(v25);
      v26 = MEMORY[0x277D49DF0];
      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v114[2] = __88__TIAppAutofillManager_generateOneTimeCodeCandidatesWithRenderTraits_withKeyboardState___block_invoke;
      v114[3] = &unk_27872ED40;
      p_buf = &buf;
      v27 = v25;
      v115 = v27;
      [v26 getOneTimeCodeCredentialsForAppWithAppID:v113 externallyVerifiedAndApprovedSharedWebCredentialDomains:v24 websiteURL:v9 completionHandler:v114];
      v28 = dispatch_time(0, 200000000);
      if (dispatch_group_wait(v27, v28))
      {
        v29 = TIAppAutofillOSLogFacility();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Timed out while fetching external one time code credential identities", "-[TIAppAutofillManager generateOneTimeCodeCandidatesWithRenderTraits:withKeyboardState:]"];
          *v120 = 138412290;
          *&v120[4] = v100;
          _os_log_error_impl(&dword_22CA55000, v29, OS_LOG_TYPE_ERROR, "%@", v120, 0xCu);
        }
      }

      if ([*(*(&buf + 1) + 40) isExternal])
      {
        v103 = v25;
        v111 = v24;
        v30 = MEMORY[0x277CBEA60];
        v31 = [(TIAppAutofillManager *)self _secureCandidateForPasswordCredential:*(*(&buf + 1) + 40) fromLocalizedStringKey:@"SAFARI_CREDENTIAL_SITE_SHORT"];
        v32 = [v30 arrayWithObject:v31];

        *v120 = 0;
        v33 = [(TIAppAutofillManager *)self _autoFillPayloadForPasswordCredential:*(*(&buf + 1) + 40) keyboardInfoType:v120];
        secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];
        v35 = [secureCandidateRenderer slotIDsFromSecureCandidates:v32 withRenderTraits:traitsCopy];

        v36 = MEMORY[0x277D6F3D8];
        firstObject = [v35 firstObject];
        slotID = [firstObject slotID];
        v39 = [v36 secureCandidateForInput:&stru_283FDFAF8 slotID:slotID customInfoType:*v120];

        firstObject2 = [v35 firstObject];
        slotID2 = [firstObject2 slotID];

        firstObject3 = [v35 firstObject];
        [firstObject3 secureCandidateWidth];
        [v39 setSecureCandidateWidth:?];

        v106 = v32;
        firstObject4 = [v32 firstObject];
        [v39 setSecureCandidateHash:{objc_msgSend(firstObject4, "candidateHash")}];

        firstObject5 = [v35 firstObject];
        [v39 setIsSecureCandidateDoubleLines:{objc_msgSend(firstObject5, "isSecureCandidateDoubleLines")}];

        secureCandidateRenderer2 = [(TIAppAutofillManager *)self secureCandidateRenderer];
        [secureCandidateRenderer2 secureCandidateCache];
        v47 = v46 = stateCopy;
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:slotID2];
        [v47 setObject:v33 forKey:v48];

        stateCopy = v46;
        v49 = +[TIKeyboardSecureTouchManager sharedInstance];
        [v49 registerSlotID:slotID2];

        documentIdentifier = [v46 documentIdentifier];
        v51 = [documentIdentifier copy];
        [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:v51];

        clientIdentifier = [v46 clientIdentifier];
        v53 = [clientIdentifier copy];
        [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:v53];

        if (v39)
        {
          v122 = v39;
          v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v122 count:1];
        }

        else
        {
          v54 = 0;
        }

        v25 = v103;

        firstObject6 = v115;
        currentConnection = v108;
        traitsCopy = v109;
        v24 = v111;
LABEL_59:

        _Block_object_dispose(&buf, 8);
        goto LABEL_60;
      }
    }

    v56 = objc_opt_respondsToSelector();
    oneTimeCodeProvider = self->_oneTimeCodeProvider;
    if (v56)
    {
      if ((isEqualToString | v110))
      {
        v58 = 2;
      }

      else
      {
        v58 = 0;
      }

      v59 = [(SFAppAutoFillOneTimeCodeProvider *)self->_oneTimeCodeProvider currentOneTimeCodesWithAppIdentifier:v113 website:v9 usernameHint:self->_lastAutofilledUsername fieldClassification:v58];
      firstObject6 = [v59 firstObject];
    }

    else
    {
      v61 = v25;
      v62 = v24;
      v59 = +[TIKeyboardInputManagerLoader sharedLoader];
      interactingConnection = [v59 interactingConnection];
      v64 = interactingConnection;
      if (interactingConnection)
      {
        objc_msgSend_auditToken(interactingConnection);
      }

      else
      {
        *v120 = 0u;
        v121 = 0u;
      }

      if ((isEqualToString | v110))
      {
        v65 = 2;
      }

      else
      {
        v65 = 0;
      }

      v66 = [(SFAppAutoFillOneTimeCodeProvider *)oneTimeCodeProvider currentOneTimeCodesWithAuditToken:v120 website:v9 usernameHint:self->_lastAutofilledUsername fieldClassification:v65];
      firstObject6 = [v66 firstObject];

      v24 = v62;
      v25 = v61;
      traitsCopy = v109;
    }

    v67 = MEMORY[0x277D6F3D8];
    keyboardCandidateInputStringUsedWithAutofillExtraThatSignifiesOTPExtra = [MEMORY[0x277D6F3C0] keyboardCandidateInputStringUsedWithAutofillExtraThatSignifiesOTPExtra];
    v107 = [v67 candidateWithCandidate:&stru_283FDFAF8 forInput:keyboardCandidateInputStringUsedWithAutofillExtraThatSignifiesOTPExtra customInfoType:32];

    if (firstObject6)
    {
      v112 = v24;
      v101 = stateCopy;
      v102 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      v69 = [firstObject6 localizedTitleForContext:0];
      displayCode = [firstObject6 displayCode];
      v71 = [firstObject6 localizedSubtitleForContext:0];
      v72 = v71;
      if (displayCode)
      {
        v73 = displayCode;
      }

      else
      {
        v73 = v71;
      }

      v74 = v73;
      v105 = v9;
      if ((objc_opt_respondsToSelector() & 1) != 0 && [firstObject6 requiresAuthentication])
      {
        v75 = v72;

        v74 = v75;
      }

      v104 = v25;
      v76 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:v69 secureContent:v74 secureFormattedContent:v72 input:&stru_283FDFAF8 truncationSentinel:0];
      [v102 addObject:v76];

      secureCandidateRenderer3 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v78 = [secureCandidateRenderer3 slotIDsFromSecureCandidates:v102 withRenderTraits:v109];

      code = [firstObject6 code];
      firstObject7 = [v78 firstObject];
      slotID3 = [firstObject7 slotID];

      if ([firstObject6 source] == 3)
      {
        v82 = 512;
      }

      else
      {
        v82 = 64;
      }

      v83 = [MEMORY[0x277D6F3D8] secureCandidateForInput:code slotID:slotID3 customInfoType:v82];
      firstObject8 = [v78 firstObject];
      [firstObject8 secureCandidateWidth];
      [v83 setSecureCandidateWidth:?];

      firstObject9 = [v102 firstObject];
      [v83 setSecureCandidateHash:{objc_msgSend(firstObject9, "candidateHash")}];

      firstObject10 = [v78 firstObject];
      [v83 setIsSecureCandidateDoubleLines:{objc_msgSend(firstObject10, "isSecureCandidateDoubleLines")}];

      if (objc_opt_respondsToSelector())
      {
        [v83 setIsOneTimeCodeThatRequiresAuthentication:{objc_msgSend(firstObject6, "requiresAuthentication")}];
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:code forKeyedSubscript:*MEMORY[0x277D6F8E8]];
      secureCandidateRenderer4 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      secureCandidateCache = [secureCandidateRenderer4 secureCandidateCache];
      v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:slotID3];
      [secureCandidateCache setObject:dictionary forKey:v90];

      v91 = +[TIKeyboardSecureTouchManager sharedInstance];
      [v91 registerSlotID:slotID3];

      [(SFAppAutoFillOneTimeCodeProvider *)self->_oneTimeCodeProvider addObserver:self forOneTimeCode:firstObject6];
      v92 = v107;
      if (v83)
      {
        v118[0] = v83;
        v118[1] = v107;
        v93 = MEMORY[0x277CBEA60];
        v94 = v118;
        v95 = 2;
      }

      else
      {
        v117 = v107;
        v93 = MEMORY[0x277CBEA60];
        v94 = &v117;
        v95 = 1;
      }

      v54 = [v93 arrayWithObjects:v94 count:v95];
      v25 = v104;
      v9 = v105;
      currentConnection = v108;

      traitsCopy = v109;
      v24 = v112;
      stateCopy = v101;
    }

    else if (v110)
    {
      v92 = v107;
      v119 = v107;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
    }

    else
    {
      v54 = 0;
      v92 = v107;
    }

    goto LABEL_59;
  }

  v55 = TIAppAutofillOSLogFacility();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    v99 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s The application has no appID.", "-[TIAppAutofillManager generateOneTimeCodeCandidatesWithRenderTraits:withKeyboardState:]"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v99;
    _os_log_error_impl(&dword_22CA55000, v55, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
  }

  v54 = MEMORY[0x277CBEBF8];
LABEL_60:

  return v54;
}

void __88__TIAppAutofillManager_generateOneTimeCodeCandidatesWithRenderTraits_withKeyboardState___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

- (void)_finishAutofillFormCandidatesOnMainThreadWithCredentials:(id)credentials renderTraits:(id)traits documentIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier completion:(id)completion
{
  credentialsCopy = credentials;
  traitsCopy = traits;
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  completionCopy = completion;
  v15 = [credentialsCopy count];
  v52 = clientIdentifierCopy;
  if (v15 >= [traitsCopy maxCellCount])
  {
    maxCellCount = [traitsCopy maxCellCount];
    [traitsCopy setCellRenderingStyle:1];
  }

  else
  {
    maxCellCount = [credentialsCopy count];
  }

  v59 = [MEMORY[0x277CBEB18] arrayWithCapacity:maxCellCount];
  v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:maxCellCount];
  v17 = @"SAFARI_CREDENTIAL_SITE_LONG";
  if (maxCellCount <= 1)
  {
    v18 = @"SAFARI_PASSKEY_SITE_LONG";
  }

  else
  {
    v17 = @"SAFARI_CREDENTIAL_SITE_SHORT";
    v18 = @"SAFARI_CREDENTIAL_SITE_SHORT";
  }

  v19 = v17;
  v55 = v18;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2050000000;
  v20 = getSFAutoFillPasskeyClass_softClass;
  v64 = getSFAutoFillPasskeyClass_softClass;
  if (!getSFAutoFillPasskeyClass_softClass)
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __getSFAutoFillPasskeyClass_block_invoke;
    v60[3] = &unk_278733760;
    v60[4] = &v61;
    __getSFAutoFillPasskeyClass_block_invoke(v60);
    v20 = v62[3];
  }

  v57 = v20;
  v21 = v20;
  _Block_object_dispose(&v61, 8);
  v22 = [credentialsCopy count];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    if (maxCellCount <= 1)
    {
      v25 = @"SAFARI_CREDENTIAL_CUSTOM_TITLE_LONG";
    }

    else
    {
      v25 = @"SAFARI_CREDENTIAL_CUSTOM_TITLE_SHORT";
    }

    do
    {
      v26 = [credentialsCopy objectAtIndexedSubscript:v24];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        site = [v26 site];
        v28 = [site length];

        if (!v28)
        {
          v29 = v25;

          v19 = v29;
        }

        v30 = [(TIAppAutofillManager *)self _secureCandidateForPasswordCredential:v26 fromLocalizedStringKey:v19];
      }

      else
      {
        if (!v57 || (objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_21;
        }

        v30 = [(TIAppAutofillManager *)self _secureCandidateForPasskey:v26 fromLocalizedStringKey:v55];
      }

      v31 = v30;
      [v59 addObject:v30];

LABEL_21:
      ++v24;
    }

    while (v23 != v24);
  }

  v32 = +[TIKeyboardSecureTouchManager sharedInstance];
  [v32 clearRegistrations];

  [traitsCopy setShouldForceDoubleLineCandidateForPasswordAutofill:1];
  secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];
  v54 = traitsCopy;
  v34 = [secureCandidateRenderer slotIDsFromSecureCandidates:v59 withRenderTraits:traitsCopy];

  if ([v34 count])
  {
    v35 = 0;
    v56 = credentialsCopy;
    do
    {
      v36 = [credentialsCopy objectAtIndex:v35];
      v60[0] = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = [(TIAppAutofillManager *)self _autoFillPayloadForPasswordCredential:v36 keyboardInfoType:v60];
      }

      else
      {
        if (!v57 || (objc_opt_isKindOfClass() & 1) == 0)
        {
          v38 = 0;
          goto LABEL_31;
        }

        v37 = [(TIAppAutofillManager *)self _autoFillPayloadForPasskey:v36 keyboardInfoType:v60];
      }

      v38 = v37;
LABEL_31:
      v39 = [v34 objectAtIndex:v35];
      slotID = [v39 slotID];

      v41 = [MEMORY[0x277D6F3D8] secureCandidateForInput:&stru_283FDFAF8 slotID:slotID customInfoType:v60[0]];
      if ([v34 count] <= v35)
      {
        [v41 setSecureCandidateWidth:0.0];
      }

      else
      {
        v42 = [v34 objectAtIndexedSubscript:v35];
        [v42 secureCandidateWidth];
        [v41 setSecureCandidateWidth:?];
      }

      v43 = [v59 objectAtIndexedSubscript:v35];
      [v41 setSecureCandidateHash:{objc_msgSend(v43, "candidateHash")}];

      if ([v34 count] <= v35)
      {
        [v41 setIsSecureCandidateDoubleLines:0];
      }

      else
      {
        v44 = [v34 objectAtIndexedSubscript:v35];
        [v41 setIsSecureCandidateDoubleLines:{objc_msgSend(v44, "isSecureCandidateDoubleLines")}];
      }

      [v58 addObject:v41];
      secureCandidateRenderer2 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      secureCandidateCache = [secureCandidateRenderer2 secureCandidateCache];
      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:slotID];
      [secureCandidateCache setObject:v38 forKey:v47];

      v48 = +[TIKeyboardSecureTouchManager sharedInstance];
      [v48 registerSlotID:slotID];

      ++v35;
      credentialsCopy = v56;
    }

    while (v35 < [v34 count]);
  }

  [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:identifierCopy];
  [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:v52];
  v49 = [MEMORY[0x277D6F3D8] candidateWithCandidate:&stru_283FDFAF8 forInput:&stru_283FDFAF8 customInfoType:32];
  [v58 addObject:v49];
  completionCopy[2](completionCopy, v58);
}

- (void)generateAutofillFormCandidatesWithRenderTraits:(id)traits withKeyboardState:(id)state completion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  stateCopy = state;
  completionCopy = completion;
  privateQueue = [(TIAppAutofillManager *)self privateQueue];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__TIAppAutofillManager_generateAutofillFormCandidatesWithRenderTraits_withKeyboardState_completion___block_invoke;
  aBlock[3] = &unk_278730308;
  v12 = privateQueue;
  v53 = v12;
  v13 = completionCopy;
  v54 = v13;
  v14 = _Block_copy(aBlock);
  documentIdentifier = [stateCopy documentIdentifier];

  if (documentIdentifier)
  {
    [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:0];
    [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:0];
    if (+[TIAppAutofillManager _simulatesAutofillCandidates](TIAppAutofillManager, "_simulatesAutofillCandidates") || ([MEMORY[0x277D49DF0] isAppAutoFillAvailable] & 1) != 0)
    {
      v40 = v13;
      v41 = v12;
      documentIdentifier2 = [stateCopy documentIdentifier];
      v39 = [documentIdentifier2 copy];

      clientIdentifier = [stateCopy clientIdentifier];
      v38 = [clientIdentifier copy];

      textInputTraits = [stateCopy textInputTraits];
      textContentType = [textInputTraits textContentType];
      v20 = [textContentType copy];

      autofillContext = [stateCopy autofillContext];
      v22 = [autofillContext copy];

      passkeyProvider = [(TIAppAutofillManager *)self passkeyProvider];
      currentConnection = [MEMORY[0x277CCAE80] currentConnection];
      v25 = currentConnection;
      *buf = 0u;
      v56 = 0u;
      if (currentConnection)
      {
        objc_msgSend_auditToken(currentConnection);
      }

      v26 = [v22 objectForKey:*MEMORY[0x277D6F9B0]];
      if (v26)
      {
        v27 = v26;
        v28 = [TIXPCUtils obtainBundleIdentifierFromConnection:v25];
        if (([v28 hasPrefix:@"com.apple."] & 1) != 0 || -[TIAppAutofillManager hasAutofillContextEntitlementForConnection:](self, "hasAutofillContextEntitlementForConnection:", v25))
        {

LABEL_16:
          objc_initWeak(&location, self);
          privateQueue2 = [(TIAppAutofillManager *)self privateQueue];
          v49 = *buf;
          v42 = passkeyProvider;
          v43 = v22;
          v44 = v20;
          v45 = v27;
          v50 = v56;
          v37 = v27;
          v36 = v20;
          v31 = v22;
          v32 = passkeyProvider;
          objc_copyWeak(&v48, &location);
          v46 = traitsCopy;
          v47 = v14;
          v33 = v38;
          v34 = v39;
          TIDispatchAsync();

          objc_destroyWeak(&v48);
          objc_destroyWeak(&location);

          v13 = v40;
          v12 = v41;
          goto LABEL_17;
        }
      }

      v27 = [TIXPCUtils obtainApplicationIdentifierFromConnection:v25];
      goto LABEL_16;
    }
  }

  else
  {
    v29 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s The documentIdentifier is nil, do not try to generate autofill suggestions.", "-[TIAppAutofillManager generateAutofillFormCandidatesWithRenderTraits:withKeyboardState:completion:]"];
      *buf = 138412290;
      *&buf[4] = v35;
      _os_log_debug_impl(&dword_22CA55000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  (*(v14 + 2))(v14, MEMORY[0x277CBEBF8]);
LABEL_17:
}

void __100__TIAppAutofillManager_generateAutofillFormCandidatesWithRenderTraits_withKeyboardState_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v4 = v3;
  TIDispatchAsync();
}

void __100__TIAppAutofillManager_generateAutofillFormCandidatesWithRenderTraits_withKeyboardState_completion___block_invoke_198(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100__TIAppAutofillManager_generateAutofillFormCandidatesWithRenderTraits_withKeyboardState_completion___block_invoke_2_199;
  v14[3] = &unk_27872F3C0;
  objc_copyWeak(&v17, (a1 + 96));
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v15 = v11;
  v16 = v10;
  v12 = *(a1 + 120);
  v13[0] = *(a1 + 104);
  v13[1] = v12;
  [TIAppAutofillManager _fetchCredentialsWithPasskeyProvider:v2 autofillContext:v3 textContentType:v4 applicationIdentifier:v5 auditToken:v13 completion:v14];

  objc_destroyWeak(&v17);
}

void __100__TIAppAutofillManager_generateAutofillFormCandidatesWithRenderTraits_withKeyboardState_completion___block_invoke_2_199(id *a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v14, a1 + 8);
  v11 = v3;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v12 = v9;
  v13 = v8;
  v10 = v3;
  TIDispatchAsync();

  objc_destroyWeak(&v14);
}

void __100__TIAppAutofillManager_generateAutofillFormCandidatesWithRenderTraits_withKeyboardState_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _finishAutofillFormCandidatesOnMainThreadWithCredentials:*(a1 + 32) renderTraits:*(a1 + 40) documentIdentifier:*(a1 + 48) clientIdentifier:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

- (BOOL)hasCoreTelephonyEntitlementForConnection:(id)connection
{
  v19 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v4 = connectionCopy;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (v5)
  {
    v6 = v5;
    error = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.CommCenter.fine-grained", &error);
    if (error)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v8 = TIOSLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        error = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Cannot obtain core telephony entitlement: %@", "-[TIAppAutofillManager hasCoreTelephonyEntitlementForConnection:]", error];
        token.val[0] = 138412290;
        *&token.val[1] = error;
        _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", &token, 0xCu);
      }

      CFRelease(error);
    }

    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __65__TIAppAutofillManager_hasCoreTelephonyEntitlementForConnection___block_invoke;
        v12[3] = &unk_27872ECA0;
        v12[4] = &v14;
        [v7 enumerateObjectsUsingBlock:v12];
      }
    }

    CFRelease(v6);
  }

  v9 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v9;
}

void *__65__TIAppAutofillManager_hasCoreTelephonyEntitlementForConnection___block_invoke(uint64_t a1, void *a2, void x2_0, _BYTE *a3)
{
  result = objc_msgSend_isEqualToString_(a2, a2, @"public-cellular-plan");
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)hasAutofillContextEntitlementForConnection:(id)connection
{
  v14 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v4 = connectionCopy;
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (v5)
  {
    v6 = v5;
    error = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.textInput.autofillContext", &error);
    bOOLValue = [v7 BOOLValue];

    if (error)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        error = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Cannot obtain autofill context: %@", "-[TIAppAutofillManager hasAutofillContextEntitlementForConnection:]", error];
        token.val[0] = 138412290;
        *&token.val[1] = error;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", &token, 0xCu);
      }

      CFRelease(error);
    }

    CFRelease(v6);
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)localizedCellularAutofillStringForKey:(id)key defaultValue:(id)value
{
  v16 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];
  v9 = [secureCandidateRenderer localizedStringForKey:keyCopy];

  if (![v9 length])
  {
    v10 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Localized Cellular autofill text is nil", "-[TIAppAutofillManager localizedCellularAutofillStringForKey:defaultValue:]"];
      *buf = 138412290;
      v15 = v13;
      _os_log_error_impl(&dword_22CA55000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v11 = valueCopy;
    v9 = v11;
  }

  return v9;
}

- (id)customInfoFromCredential:(id)credential
{
  credentialCopy = credential;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  user = [credentialCopy user];
  if ([(TIAppAutofillManager *)self isValidedString:user])
  {
    user2 = [credentialCopy user];
  }

  else
  {
    user2 = &stru_283FDFAF8;
  }

  password = [credentialCopy password];
  if ([(TIAppAutofillManager *)self isValidedString:password])
  {
    password2 = [credentialCopy password];
  }

  else
  {
    password2 = &stru_283FDFAF8;
  }

  [v5 setObject:user2 forKey:*MEMORY[0x277D6F918]];
  [v5 setObject:password2 forKey:*MEMORY[0x277D6F8F8]];
  if (objc_opt_respondsToSelector())
  {
    oneTimeCode = [credentialCopy oneTimeCode];
    v11 = [(TIAppAutofillManager *)self isValidedString:oneTimeCode];

    if (v11)
    {
      oneTimeCode2 = [credentialCopy oneTimeCode];
      [v5 setObject:oneTimeCode2 forKey:*MEMORY[0x277D6F8E8]];
    }
  }

  v13 = [v5 copy];

  return v13;
}

- (BOOL)isValidedString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (isValidedString__onceToken != -1)
  {
    dispatch_once(&isValidedString__onceToken, &__block_literal_global_132);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (!stringCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [v4 rangeOfCharacterFromSet:isValidedString__invalidCharacterSet] == 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

  return v5;
}

void __40__TIAppAutofillManager_isValidedString___block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] illegalCharacterSet];
  v1 = isValidedString__invalidCharacterSet;
  isValidedString__invalidCharacterSet = v0;

  v2 = isValidedString__invalidCharacterSet;
  v3 = [MEMORY[0x277CCA900] controlCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  v4 = isValidedString__invalidCharacterSet;
  v5 = [MEMORY[0x277CCA900] newlineCharacterSet];
  [v4 formUnionWithCharacterSet:v5];
}

- (void)pushQueuedCredentialIfNecessaryForKeyboardState:(id)state
{
  stateCopy = state;
  queuedCustomInfo = [(TIAppAutofillManager *)self queuedCustomInfo];
  if (queuedCustomInfo && (([stateCopy needAutofill] & 1) != 0 || objc_msgSend(stateCopy, "autofillMode") == 1 || objc_msgSend(stateCopy, "autofillMode") == 3))
  {
    documentIdentifier = [stateCopy documentIdentifier];
    queuedCustomInfo2 = [(TIAppAutofillManager *)self queuedCustomInfo];
    documentIdentifier2 = [queuedCustomInfo2 documentIdentifier];
    v8 = [documentIdentifier isEqual:documentIdentifier2];

    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = +[TIKeyboardInputManagerLoader sharedLoader];
    queuedCustomInfo = [v9 interactingConnection];

    if (queuedCustomInfo)
    {
      remoteObjectProxy = [queuedCustomInfo remoteObjectProxy];
      queuedCustomInfo3 = [(TIAppAutofillManager *)self queuedCustomInfo];
      customInfo = [queuedCustomInfo3 customInfo];
      [remoteObjectProxy processPayloadInfo:customInfo];

      [(TIAppAutofillManager *)self setQueuedCustomInfo:0];
    }
  }

LABEL_9:
  clientIdentifier = [stateCopy clientIdentifier];
  [(TIAppAutofillManager *)self setClientIdentifierForLastKeyboardSync:clientIdentifier];
}

- (void)obtainCredential:(id)credential
{
  v15 = [(TIAppAutofillManager *)self customInfoFromCredential:credential];
  v4 = +[TIKeyboardInputManagerLoader sharedLoader];
  interactingConnection = [v4 interactingConnection];

  v6 = [TIXPCUtils obtainBundleIdentifierFromConnection:interactingConnection];
  if (interactingConnection)
  {
    clientIdentifierForLastKeyboardSync = [(TIAppAutofillManager *)self clientIdentifierForLastKeyboardSync];
    clientIdentifierForLastAutofillGeneration = [(TIAppAutofillManager *)self clientIdentifierForLastAutofillGeneration];
    if (objc_msgSend_isEqualToString_(clientIdentifierForLastKeyboardSync))
    {
      clientIdentifierForLastKeyboardSync2 = [(TIAppAutofillManager *)self clientIdentifierForLastKeyboardSync];
      isEqualToString = objc_msgSend_isEqualToString_(clientIdentifierForLastKeyboardSync2);

      if (isEqualToString)
      {
        remoteObjectProxy = [interactingConnection remoteObjectProxy];
        [remoteObjectProxy processPayloadInfo:v15];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v12 = [TICredentialCustomInfo alloc];
  remoteObjectProxy = [(TIAppAutofillManager *)self documentIdentifierForLastAutofillGeneration];
  v13 = [(TICredentialCustomInfo *)v12 initWithCustomInfo:v15 documentIdentifier:remoteObjectProxy];
  [(TIAppAutofillManager *)self setQueuedCustomInfo:v13];

LABEL_7:
  date = [MEMORY[0x277CBEAA8] date];
  [(TIAppAutofillManager *)self setDateOfLastPasswordAutoFill:date];
}

- (id)initPrivate
{
  v15.receiver = self;
  v15.super_class = TIAppAutofillManager;
  v2 = [(TIAppAutofillManager *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.TextInput.appAutofillManager", v3);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v4;

    v6 = objc_alloc_init(TIKeyboardSecureCandidateRenderer);
    secureCandidateRenderer = v2->_secureCandidateRenderer;
    v2->_secureCandidateRenderer = v6;

    v8 = objc_alloc_init(MEMORY[0x277D49DB8]);
    oneTimeCodeProvider = v2->_oneTimeCodeProvider;
    v2->_oneTimeCodeProvider = v8;

    [(SFAppAutoFillOneTimeCodeProvider *)v2->_oneTimeCodeProvider addObserver:v2];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v10 = getSFAppAutoFillPasskeyProviderClass_softClass;
    v20 = getSFAppAutoFillPasskeyProviderClass_softClass;
    if (!getSFAppAutoFillPasskeyProviderClass_softClass)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __getSFAppAutoFillPasskeyProviderClass_block_invoke;
      v16[3] = &unk_278733760;
      v16[4] = &v17;
      __getSFAppAutoFillPasskeyProviderClass_block_invoke(v16);
      v10 = v18[3];
    }

    v11 = v10;
    _Block_object_dispose(&v17, 8);
    v12 = objc_alloc_init(v10);
    passkeyProvider = v2->_passkeyProvider;
    v2->_passkeyProvider = v12;
  }

  return v2;
}

+ (BOOL)isSuggestingStrongPasswordsAvailable
{
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v2 = MEMORY[0x277D49DF0];

  return [v2 isSuggestingStrongPasswordsAvailable];
}

+ (void)_fetchCredentialsWithPasskeyProvider:(id)provider autofillContext:(id)context textContentType:(id)type applicationIdentifier:(id)identifier auditToken:(id *)token completion:(id)completion
{
  v69 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  contextCopy = context;
  identifierCopy = identifier;
  completionCopy = completion;
  typeCopy = type;
  v17 = dispatch_group_create();
  v18 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__80;
  v63 = __Block_byref_object_dispose__81;
  v64 = 0;
  isEqualToString = objc_msgSend_isEqualToString_(typeCopy);

  if (isEqualToString)
  {
    if (!providerCopy)
    {
      goto LABEL_13;
    }

    v20 = *MEMORY[0x277D6F9C8];
    goto LABEL_6;
  }

  v20 = *MEMORY[0x277D6F9C8];
  v21 = [contextCopy objectForKeyedSubscript:*MEMORY[0x277D6F9C8]];
  if (objc_msgSend_isEqualToString_(v21))
  {

    if (!providerCopy)
    {
      goto LABEL_13;
    }

LABEL_6:
    dispatch_group_enter(v17);
    v22 = [contextCopy objectForKeyedSubscript:v20];
    if (objc_msgSend_isEqualToString_(v22))
    {
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        v24 = v58;
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v25 = __137__TIAppAutofillManager__fetchCredentialsWithPasskeyProvider_autofillContext_textContentType_applicationIdentifier_auditToken_completion___block_invoke;
LABEL_11:
        v24[2] = v25;
        v24[3] = &unk_27872ED18;
        v24[4] = v18;
        v24[6] = &v59;
        v24[5] = v17;
        [providerCopy getAvailablePasskeysForApplicationIdentifier:identifierCopy completionHandler:v24];

        v21 = v24[4];
        goto LABEL_12;
      }
    }

    else
    {
    }

    v24 = v57;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v25 = __137__TIAppAutofillManager__fetchCredentialsWithPasskeyProvider_autofillContext_textContentType_applicationIdentifier_auditToken_completion___block_invoke_2;
    goto LABEL_11;
  }

LABEL_12:

LABEL_13:
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__80;
  v55 = __Block_byref_object_dispose__81;
  v56 = 0;
  dispatch_group_enter(v17);
  v44 = MEMORY[0x277D85DD0];
  v45 = 3221225472;
  v46 = __137__TIAppAutofillManager__fetchCredentialsWithPasskeyProvider_autofillContext_textContentType_applicationIdentifier_auditToken_completion___block_invoke_3;
  v47 = &unk_27872ED18;
  v26 = v18;
  v48 = v26;
  v50 = &v51;
  v27 = v17;
  v49 = v27;
  [TIAppAutofillManager getCredentialsWithApplicationIdentifier:identifierCopy autofillContext:contextCopy withCompletionHandler:&v44];
  v28 = dispatch_time(0, 3000000000);
  if (dispatch_group_wait(v27, v28))
  {
    v29 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Timeout while waiting for credentials", "+[TIAppAutofillManager _fetchCredentialsWithPasskeyProvider:autofillContext:textContentType:applicationIdentifier:auditToken:completion:]", v44, v45, v46, v47, v48];
      *buf = 138412290;
      v68 = v43;
      _os_log_error_impl(&dword_22CA55000, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  [v26 lock];
  v30 = [v60[5] copy];
  v31 = v30;
  v32 = MEMORY[0x277CBEBF8];
  if (v30)
  {
    v33 = v30;
  }

  else
  {
    v33 = MEMORY[0x277CBEBF8];
  }

  v34 = v33;

  v35 = [v52[5] copy];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v32;
  }

  v38 = v37;

  [v26 unlock];
  if ([v34 count])
  {
    firstObject = [v34 firstObject];
    v66 = firstObject;
    v40 = &v66;
  }

  else
  {
    firstObject2 = [v38 firstObject];

    if (!firstObject2)
    {
      v42 = 0;
      goto LABEL_28;
    }

    firstObject = [v38 firstObject];
    v65 = firstObject;
    v40 = &v65;
  }

  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];

LABEL_28:
  completionCopy[2](completionCopy, v42);

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v59, 8);
}

void __137__TIAppAutofillManager__fetchCredentialsWithPasskeyProvider_autofillContext_textContentType_applicationIdentifier_auditToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) lock];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  [*(a1 + 32) unlock];
  dispatch_group_leave(*(a1 + 40));
}

void __137__TIAppAutofillManager__fetchCredentialsWithPasskeyProvider_autofillContext_textContentType_applicationIdentifier_auditToken_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) lock];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  [*(a1 + 32) unlock];
  dispatch_group_leave(*(a1 + 40));
}

void __137__TIAppAutofillManager__fetchCredentialsWithPasskeyProvider_autofillContext_textContentType_applicationIdentifier_auditToken_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 lock];
  v5 = [v4 copy];

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 32) unlock];
  v8 = *(a1 + 40);

  dispatch_group_leave(v8);
}

+ (void)getCredentialsWithApplicationIdentifier:(id)identifier autofillContext:(id)context withCompletionHandler:(id)handler
{
  v19[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  handlerCopy = handler;
  if (+[TIAppAutofillManager _simulatesAutofillCandidates](TIAppAutofillManager, "_simulatesAutofillCandidates") && [MEMORY[0x277D49DE8] instancesRespondToSelector:sel_initWithUser_password_site_creationDate_])
  {
    v10 = objc_alloc(MEMORY[0x277D49DE8]);
    date = [MEMORY[0x277CBEAA8] date];
    v12 = [v10 initWithUser:@"simulateduser573" password:@"thisisasimulatedcandidate" site:@"apple.com" creationDate:date];

    v13 = objc_alloc(MEMORY[0x277D49DE8]);
    date2 = [MEMORY[0x277CBEAA8] date];
    v15 = [v13 initWithUser:@"Pablo 黑客 Jjyy" password:@"ascenders & descenders" site:@"jjyyPP.apple.com" creationDate:date2];

    v19[0] = v12;
    v19[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    handlerCopy[2](handlerCopy, v16);
  }

  v17 = [contextCopy objectForKeyedSubscript:*MEMORY[0x277D6F9B8]];
  if ([v17 count] && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    [objc_opt_class() getCredentialsForAppWithAppID:identifierCopy externallyVerifiedAndApprovedSharedWebCredentialDomains:v17 completionHandler:handlerCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      v18 = [contextCopy objectForKey:@"_WebViewURL"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v18 = 0;
      }

      [objc_opt_class() getCredentialsForAppWithAppID:identifierCopy websiteURL:v18 completionHandler:handlerCopy];
    }

    else
    {
      [MEMORY[0x277D49DF0] getCredentialsForAppWithAppID:identifierCopy completionHandler:handlerCopy];
    }
  }
}

+ (BOOL)_simulatesAutofillCandidates
{
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v3 = [mEMORY[0x277D6F470] BOOLForPreferenceKey:*MEMORY[0x277D6F9A0]];

  return v3;
}

uint64_t __38__TIAppAutofillManager_sharedInstance__block_invoke()
{
  v0 = [[TIAppAutofillManager alloc] initPrivate];
  v1 = instance;
  instance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)setSharedAppAutofillManager:(id)manager
{
  managerCopy = manager;
  if (__testingInstance != managerCopy)
  {
    v5 = managerCopy;
    objc_storeStrong(&__testingInstance, manager);
    managerCopy = v5;
  }
}

@end