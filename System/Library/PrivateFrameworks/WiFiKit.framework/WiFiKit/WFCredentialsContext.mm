@interface WFCredentialsContext
- (BOOL)validateCredentials;
- (BOOL)validatePassword;
- (NSString)username;
- (WFCredentialsContext)initWithNetwork:(id)network profile:(id)profile authTraits:(int64_t)traits;
- (WFNetworkView)provider;
- (int64_t)securityMode;
- (void)activatePasswordSharing;
- (void)appDidBecomeActive:(id)active;
- (void)appDidEnterBackground:(id)background;
- (void)appWillEnterForeground:(id)foreground;
- (void)appWillResignActive:(id)active;
- (void)cancel;
- (void)deactivatePasswordSharingWithReactivation:(BOOL)reactivation;
- (void)dealloc;
- (void)finishWithError:(id)error forNetwork:(id)network profile:(id)profile;
- (void)gatherCredentials:(id)credentials;
- (void)launchSettings;
- (void)service:(id)service receivedNetworkInfo:(id)info;
- (void)setPasswordSharingSupported:(BOOL)supported;
- (void)setProvider:(id)provider;
@end

@implementation WFCredentialsContext

- (void)setProvider:(id)provider
{
  v13 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v9 = 136315394;
    v10 = "[WFCredentialsContext setProvider:]";
    v11 = 2112;
    v12 = providerCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: provider %@", &v9, 0x16u);
  }

  objc_storeWeak(&self->_provider, providerCopy);
}

- (void)setPasswordSharingSupported:(BOOL)supported
{
  supportedCopy = supported;
  v12 = *MEMORY[0x277D85DE8];
  self->_passwordSharingSupported = supported;
  self->_shouldReactivatePasswordSharing = supported;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 136315394;
    v9 = "[WFCredentialsContext setPasswordSharingSupported:]";
    v10 = 1024;
    v11 = supportedCopy;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: supported %d", &v8, 0x12u);
  }
}

- (void)finishWithError:(id)error forNetwork:(id)network profile:(id)profile
{
  errorCopy = error;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__WFCredentialsContext_finishWithError_forNetwork_profile___block_invoke;
  v8[3] = &unk_279EBD290;
  v9 = errorCopy;
  selfCopy = self;
  v7 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __59__WFCredentialsContext_finishWithError_forNetwork_profile___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 3 && v2 && os_log_type_enabled(v2, v4))
  {
    v6 = *(a1 + 32);
    v25 = 136315394;
    v26 = "[WFCredentialsContext finishWithError:forNetwork:profile:]_block_invoke";
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: error %@", &v25, 0x16u);
  }

  v7 = [*(a1 + 40) providerCallback];

  if (v7)
  {
    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(4uLL);
    v10 = v9;
    if (WFCurrentLogLevel(v9, v11) >= 4 && v8 && os_log_type_enabled(v8, v10))
    {
      v25 = 136315138;
      v26 = "[WFCredentialsContext finishWithError:forNetwork:profile:]_block_invoke";
      _os_log_impl(&dword_273ECD000, v8, v10, "%s: calling provider callback", &v25, 0xCu);
    }

    v12 = [*(a1 + 40) providerCallback];
    (v12)[2](v12, *(a1 + 32) == 0);

    [*(a1 + 40) setProviderCallback:0];
  }

  v13 = [*(a1 + 40) provider];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(4uLL);
    v17 = v16;
    if (WFCurrentLogLevel(v16, v18) >= 4 && v15)
    {
      v19 = v15;
      if (os_log_type_enabled(v19, v17))
      {
        v20 = [*(a1 + 40) provider];
        v25 = 136315394;
        v26 = "[WFCredentialsContext finishWithError:forNetwork:profile:]_block_invoke";
        v27 = 2112;
        v28 = v20;
        _os_log_impl(&dword_273ECD000, v19, v17, "%s: calling resetFirstResponder on provider %@", &v25, 0x16u);
      }
    }

    v21 = [*(a1 + 40) provider];
    [v21 resetFirstResponder];
  }

  v22 = [*(a1 + 40) provider];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v24 = [*(a1 + 40) provider];
    [v24 setActivityString:0];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(WFCredentialsContext *)self deactivatePasswordSharingWithReactivation:0];
  v4.receiver = self;
  v4.super_class = WFCredentialsContext;
  [(WFCredentialsContext *)&v4 dealloc];
}

- (BOOL)validateCredentials
{
  v33 = *MEMORY[0x277D85DE8];
  provider = [(WFCredentialsContext *)self provider];
  tLSIdentity = [provider TLSIdentity];

  provider2 = [(WFCredentialsContext *)self provider];
  username = [provider2 username];
  v7 = [username length];

  validatePassword = [(WFCredentialsContext *)self validatePassword];
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(4uLL);
  v11 = v10;
  if (WFCurrentLogLevel(v10, v12) >= 4 && v9)
  {
    v13 = v9;
    if (os_log_type_enabled(v13, v11))
    {
      network = [(WFCredentialsContext *)self network];
      v23 = 136316162;
      v24 = "[WFCredentialsContext validateCredentials]";
      v25 = 1024;
      v26 = tLSIdentity != 0;
      v27 = 1024;
      v28 = v7 != 0;
      v29 = 1024;
      v30 = validatePassword;
      v31 = 2048;
      securityMode = [network securityMode];
      _os_log_impl(&dword_273ECD000, v13, v11, "%s: identityValid %d usernameValid %d passwordValid %d (securityMode %ld)", &v23, 0x28u);
    }
  }

  if (![(WFCredentialsContext *)self isEnterprise])
  {
    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(4uLL);
    v18 = v17;
    if (WFCurrentLogLevel(v17, v19) >= 4 && v16 && os_log_type_enabled(v16, v18))
    {
      v23 = 136315394;
      v24 = "[WFCredentialsContext validateCredentials]";
      v25 = 1024;
      v26 = validatePassword;
      _os_log_impl(&dword_273ECD000, v16, v18, "%s: passwordValid: %d", &v23, 0x12u);
    }

    goto LABEL_19;
  }

  result = 1;
  if (!tLSIdentity && (v7 == 0 || !validatePassword))
  {
    v16 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(4uLL);
    v21 = v20;
    if (WFCurrentLogLevel(v20, v22) >= 4 && v16 && os_log_type_enabled(v16, v21))
    {
      v23 = 136315906;
      v24 = "[WFCredentialsContext validateCredentials]";
      v25 = 1024;
      v26 = validatePassword;
      v27 = 1024;
      v28 = v7 != 0;
      v29 = 1024;
      v30 = validatePassword;
      _os_log_impl(&dword_273ECD000, v16, v21, "%s: enterprise network - identityValid: %d userNameValid: %d passwordValid %d", &v23, 0x1Eu);
    }

    LOBYTE(validatePassword) = 0;
LABEL_19:

    return validatePassword;
  }

  return result;
}

- (BOOL)validatePassword
{
  securityMode = [(WFCredentialsContext *)self securityMode];
  provider = [(WFCredentialsContext *)self provider];
  password = [provider password];
  LOBYTE(securityMode) = WFValidPasswordForSecurityMode(securityMode, password);

  return securityMode;
}

- (void)gatherCredentials:(id)credentials
{
  v23 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      provider = [(WFCredentialsContext *)self provider];
      v17 = 136315650;
      v18 = "[WFCredentialsContext gatherCredentials:]";
      v19 = 2112;
      v20 = provider;
      v21 = 1024;
      v22 = credentialsCopy == 0;
      _os_log_impl(&dword_273ECD000, v9, v7, "%s: gathering credentials for %@ shouldDismiss %d", &v17, 0x1Cu);
    }
  }

  providerCallback = [(WFCredentialsContext *)self providerCallback];

  if (credentialsCopy && providerCallback)
  {
    completionHandler = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(1uLL);
    v14 = v13;
    if (WFCurrentLogLevel(v13, v15) && completionHandler && os_log_type_enabled(completionHandler, v14))
    {
      v17 = 136315138;
      v18 = "[WFCredentialsContext gatherCredentials:]";
      _os_log_impl(&dword_273ECD000, completionHandler, v14, "%s: Called gatherCredentials while credentials are already being gathered", &v17, 0xCu);
    }
  }

  else
  {
    [(WFCredentialsContext *)self setProviderCallback:credentialsCopy];
    completionHandler = [(WFCredentialsContext *)self completionHandler];
    provider2 = [(WFCredentialsContext *)self provider];
    (*(completionHandler + 16))(completionHandler, provider2, credentialsCopy == 0);
  }
}

- (void)cancel
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
  {
    v15 = 136315394;
    v16 = "[WFCredentialsContext cancel]";
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_273ECD000, v3, v5, "%s: %@ credentials provider is nil", &v15, 0x16u);
  }

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, v9))
    {
      provider = [(WFCredentialsContext *)self provider];
      v15 = 136315394;
      v16 = "[WFCredentialsContext cancel]";
      v17 = 2112;
      selfCopy = provider;
      _os_log_impl(&dword_273ECD000, v11, v9, "%s: cancelled credential request for %@", &v15, 0x16u);
    }
  }

  cancellationHandler = [(WFCredentialsContext *)self cancellationHandler];

  if (cancellationHandler)
  {
    cancellationHandler2 = [(WFCredentialsContext *)self cancellationHandler];
    cancellationHandler2[2]();
  }

  [(WFCredentialsContext *)self deactivatePasswordSharingWithReactivation:0];
}

- (void)appWillEnterForeground:(id)foreground
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 136315394;
    v9 = "[WFCredentialsContext appWillEnterForeground:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: %@", &v8, 0x16u);
  }

  [(WFCredentialsContext *)self activatePasswordSharing];
}

- (void)appDidEnterBackground:(id)background
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 136315394;
    v9 = "[WFCredentialsContext appDidEnterBackground:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: %@", &v8, 0x16u);
  }

  [(WFCredentialsContext *)self deactivatePasswordSharingWithReactivation:1];
}

- (void)appWillResignActive:(id)active
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 136315394;
    v9 = "[WFCredentialsContext appWillResignActive:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: %@", &v8, 0x16u);
  }

  [(WFCredentialsContext *)self deactivatePasswordSharingWithReactivation:1];
}

- (void)appDidBecomeActive:(id)active
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 136315394;
    v9 = "[WFCredentialsContext appDidBecomeActive:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: %@", &v8, 0x16u);
  }

  [(WFCredentialsContext *)self activatePasswordSharing];
}

- (int64_t)securityMode
{
  network = [(WFCredentialsContext *)self network];
  securityMode = [network securityMode];

  return securityMode;
}

- (void)launchSettings
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3)
  {
    v7 = v3;
    if (os_log_type_enabled(v7, v5))
    {
      network = [(WFCredentialsContext *)self network];
      v10 = 136315650;
      v11 = "[WFCredentialsContext launchSettings]";
      v12 = 2112;
      v13 = network;
      v14 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_273ECD000, v7, v5, "%s: opening settings for %@ (context: %@)", &v10, 0x20u);
    }
  }

  network2 = [(WFCredentialsContext *)self network];
  WFScanRecordArchiveToEnterprisePath(network2);

  WFOpenSettingsURLWithType(2uLL);
  [(WFCredentialsContext *)self cancel];
}

- (void)service:(id)service receivedNetworkInfo:(id)info
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6)
  {
    v10 = v6;
    if (os_log_type_enabled(v10, v8))
    {
      networkName = [infoCopy networkName];
      *v25 = 136315394;
      *&v25[4] = "[WFCredentialsContext service:receivedNetworkInfo:]";
      v26 = 2112;
      v27 = networkName;
      _os_log_impl(&dword_273ECD000, v10, v8, "%s: received network info for network='%@'", v25, 0x16u);
    }
  }

  network = [(WFCredentialsContext *)self network];
  provider = [(WFCredentialsContext *)self provider];
  v14 = objc_opt_respondsToSelector();

  if ((v14 & 1) == 0)
  {
    [WFCredentialsContext service:v25 receivedNetworkInfo:?];
    goto LABEL_14;
  }

  networkName2 = [infoCopy networkName];
  ssid = [network ssid];
  v17 = [networkName2 isEqualToString:ssid];

  if (v17)
  {
    if ([network securityMode] == 4 || objc_msgSend(network, "securityMode") == 8 || objc_msgSend(network, "securityMode") == 512)
    {
      [(WFCredentialsContext *)self setPasswordReceivedFromPasswordSharing:1];
      provider2 = [(WFCredentialsContext *)self provider];
      v19 = [infoCopy psk];
      [provider2 receiveSharedPassword:v19];

      goto LABEL_12;
    }

    [WFCredentialsContext service:network receivedNetworkInfo:v25];
LABEL_14:
    provider2 = *v25;
    goto LABEL_12;
  }

  provider2 = WFLogForCategory(0);
  v20 = OSLogForWFLogLevel(3uLL);
  v21 = v20;
  if (WFCurrentLogLevel(v20, v22) >= 3 && provider2)
  {
    provider2 = provider2;
    if (os_log_type_enabled(provider2, v21))
    {
      ssid2 = [network ssid];
      networkName3 = [infoCopy networkName];
      *v25 = 136315650;
      *&v25[4] = "[WFCredentialsContext service:receivedNetworkInfo:]";
      v26 = 2112;
      v27 = ssid2;
      v28 = 2112;
      v29 = networkName3;
      _os_log_impl(&dword_273ECD000, provider2, v21, "%s: ssid mismatch, expected %@ received %@", v25, 0x20u);
    }
  }

LABEL_12:
}

- (WFNetworkView)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (WFCredentialsContext)initWithNetwork:(id)network profile:(id)profile authTraits:(int64_t)traits
{
  v85 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  profileCopy = profile;
  v80.receiver = self;
  v80.super_class = WFCredentialsContext;
  v11 = [(WFCredentialsContext *)&v80 init];
  v12 = v11;
  if (!v11)
  {
    defaultCenter4 = 0;
    goto LABEL_41;
  }

  if (!networkCopy)
  {
    v71 = WFLogForCategory(0);
    v72 = OSLogForWFLogLevel(1uLL);
    v73 = v72;
    if (!WFCurrentLogLevel(v72, v74) || !v71 || !os_log_type_enabled(v71, v73))
    {
      goto LABEL_52;
    }

    *buf = 136315138;
    v82 = "[WFCredentialsContext initWithNetwork:profile:authTraits:]";
    v75 = "%s: nil network";
    goto LABEL_51;
  }

  if (!profileCopy)
  {
    v71 = WFLogForCategory(0);
    v76 = OSLogForWFLogLevel(1uLL);
    v73 = v76;
    if (!WFCurrentLogLevel(v76, v77) || !v71 || !os_log_type_enabled(v71, v73))
    {
      goto LABEL_52;
    }

    *buf = 136315138;
    v82 = "[WFCredentialsContext initWithNetwork:profile:authTraits:]";
    v75 = "%s: nil profile";
LABEL_51:
    _os_log_impl(&dword_273ECD000, v71, v73, v75, buf, 0xCu);
LABEL_52:

    defaultCenter4 = v12;
    v12 = 0;
    goto LABEL_41;
  }

  objc_storeStrong(&v11->_network, network);
  isEnterprise = [(WFNetworkScanRecord *)v12->_network isEnterprise];
  v12->_enterprise = isEnterprise;
  v12->_availableAuthTraits = traits;
  if (isEnterprise)
  {
    v12->_requestedFields |= 2uLL;
    if ([profileCopy isManaged])
    {
      v14 = WFLogForCategory(0);
      v15 = OSLogForWFLogLevel(1uLL);
      v16 = v15;
      if (WFCurrentLogLevel(v15, v17) && v14 && os_log_type_enabled(v14, v16))
      {
        OUTLINED_FUNCTION_1_5();
        v83 = 2112;
        v84 = profileCopy;
        _os_log_impl(&dword_273ECD000, v14, v16, "%s: network (profile %@) is managed", buf, 0x16u);
      }
    }

    HIDWORD(v79) = 0;
    v18 = WFAllIdentities(&v79 + 1);
    v19 = v18;
    if (HIDWORD(v79) || ![v18 count])
    {
      p_super = WFLogForCategory(0);
      v21 = OSLogForWFLogLevel(1uLL);
      v22 = v21;
      if (WFCurrentLogLevel(v21, v23) && p_super && os_log_type_enabled(p_super, v22))
      {
        OUTLINED_FUNCTION_1_5();
        v83 = 1024;
        LODWORD(v84) = v24;
        _os_log_impl(&dword_273ECD000, p_super, v22, "%s: error retrieving identities %d", buf, 0x12u);
      }
    }

    else
    {
      v25 = WFLogForCategory(0);
      v26 = OSLogForWFLogLevel(3uLL);
      v27 = v26;
      if (WFCurrentLogLevel(v26, v28) >= 3 && v25)
      {
        v29 = v25;
        if (os_log_type_enabled(v29, v27))
        {
          [v19 count];
          OUTLINED_FUNCTION_1_5();
          v83 = 2048;
          v84 = v30;
          OUTLINED_FUNCTION_3_1(&dword_273ECD000, v31, v32, "%s: available TLS identities %lu", v33, v34, v35, v36, v78, v79, v80.receiver, v80.super_class);
        }
      }

      v37 = v19;
      p_super = &v12->_availableTLSIdentities->super;
      v12->_availableTLSIdentities = v37;
    }

    if ([profileCopy requiresTLSIdentityOnly])
    {
      v38 = WFLogForCategory(0);
      v39 = OSLogForWFLogLevel(3uLL);
      v40 = v39;
      if (WFCurrentLogLevel(v39, v41) >= 3 && v38 && os_log_type_enabled(v38, v40))
      {
        OUTLINED_FUNCTION_1_5();
        v83 = 2112;
        v84 = profileCopy;
        _os_log_impl(&dword_273ECD000, v38, v40, "%s: network (profile %@) is TLS identity only", buf, 0x16u);
      }

      v42 = v12->_requestedFields | 4;
    }

    else
    {
      if (v12->_availableTLSIdentities)
      {
        v43 = WFLogForCategory(0);
        v44 = OSLogForWFLogLevel(4uLL);
        v45 = v44;
        if (WFCurrentLogLevel(v44, v46) >= 4 && v43)
        {
          v47 = v43;
          if (os_log_type_enabled(v47, v45))
          {
            [(NSArray *)v12->_availableTLSIdentities count];
            OUTLINED_FUNCTION_1_5();
            v83 = 2048;
            v84 = v48;
            OUTLINED_FUNCTION_3_1(&dword_273ECD000, v49, v50, "%s: available TLS identities %lu", v51, v52, v53, v54, v78, v79, v80.receiver, v80.super_class);
          }
        }

        requestedFields = v12->_requestedFields | 0xC;
      }

      else
      {
        requestedFields = v12->_requestedFields;
      }

      v42 = requestedFields | 1;
    }

    v12->_requestedFields = v42;
  }

  else
  {
    v12->_requestedFields = 1;
  }

  securityIssue = [networkCopy securityIssue];
  securityIssue = v12->_securityIssue;
  v12->_securityIssue = securityIssue;

  objc_storeStrong(&v12->_profile, profile);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  OUTLINED_FUNCTION_4_3(defaultCenter, v59, v60, sel_appWillResignActive_, *MEMORY[0x277D76768]);

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  OUTLINED_FUNCTION_4_3(defaultCenter2, v62, v63, sel_appDidBecomeActive_, *MEMORY[0x277D76648]);

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  OUTLINED_FUNCTION_4_3(defaultCenter3, v65, v66, sel_appWillEnterForeground_, *MEMORY[0x277D76758]);

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  OUTLINED_FUNCTION_4_3(defaultCenter4, v68, v69, sel_appDidEnterBackground_, *MEMORY[0x277D76660]);
LABEL_41:

  return v12;
}

- (NSString)username
{
  profile = [(WFCredentialsContext *)self profile];
  username = [profile username];

  if (username)
  {
    profile2 = [(WFCredentialsContext *)self profile];
    username2 = [profile2 username];
  }

  else
  {
    username2 = 0;
  }

  return username2;
}

- (void)activatePasswordSharing
{
  if ([(WFCredentialsContext *)self isPasswordSharingSupported])
  {
    passwordSharingService = [(WFCredentialsContext *)self passwordSharingService];

    if (!passwordSharingService)
    {
      shouldReactivatePasswordSharing = [(WFCredentialsContext *)self shouldReactivatePasswordSharing];
      v5 = WFLogForCategory(0);
      if (shouldReactivatePasswordSharing)
      {
        v6 = OSLogForWFLogLevel(1uLL);
        v7 = v6;
        if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
        {
          OUTLINED_FUNCTION_0_8();
          OUTLINED_FUNCTION_2_4();
          _os_log_impl(v9, v10, v7, v11, v12, 0x16u);
        }

        v13 = objc_alloc_init(MEMORY[0x277D54CB0]);
        [(WFCredentialsContext *)self setPasswordSharingService:v13];

        network = [(WFCredentialsContext *)self network];
        ssid = [network ssid];
        passwordSharingService2 = [(WFCredentialsContext *)self passwordSharingService];
        [passwordSharingService2 setNetworkName:ssid];

        passwordSharingService3 = [(WFCredentialsContext *)self passwordSharingService];
        [passwordSharingService3 setDelegate:self];

        passwordSharingService4 = [(WFCredentialsContext *)self passwordSharingService];
        [passwordSharingService4 activate];

        [(WFCredentialsContext *)self setShouldReactivatePasswordSharing:0];
      }

      else
      {
        v19 = OSLogForWFLogLevel(3uLL);
        v20 = v19;
        if (WFCurrentLogLevel(v19, v21) >= 3 && v5 && os_log_type_enabled(v5, v20))
        {
          OUTLINED_FUNCTION_2_4();
          _os_log_impl(v22, v23, v20, v24, v25, 0xCu);
        }
      }
    }
  }
}

- (void)deactivatePasswordSharingWithReactivation:(BOOL)reactivation
{
  reactivationCopy = reactivation;
  v14 = *MEMORY[0x277D85DE8];
  if ([(WFCredentialsContext *)self isPasswordSharingSupported])
  {
    passwordSharingService = [(WFCredentialsContext *)self passwordSharingService];

    if (passwordSharingService)
    {
      v6 = WFLogForCategory(0);
      v7 = OSLogForWFLogLevel(1uLL);
      v8 = v7;
      if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
      {
        v12[0] = 136315394;
        OUTLINED_FUNCTION_0_8();
        selfCopy = self;
        _os_log_impl(&dword_273ECD000, v6, v8, "%s: %@", v12, 0x16u);
      }

      passwordSharingService2 = [(WFCredentialsContext *)self passwordSharingService];
      [passwordSharingService2 setDelegate:0];

      passwordSharingService3 = [(WFCredentialsContext *)self passwordSharingService];
      [passwordSharingService3 invalidate];

      [(WFCredentialsContext *)self setPasswordSharingService:0];
      if (reactivationCopy)
      {
        [(WFCredentialsContext *)self setShouldReactivatePasswordSharing:1];
      }
    }
  }
}

- (void)service:(void *)a1 receivedNetworkInfo:(NSObject *)a2 .cold.1(void *a1, NSObject **a2)
{
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4)
  {
    v4 = v4;
    if (os_log_type_enabled(v4, v6))
    {
      v8 = [a1 provider];
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_2_4();
      _os_log_impl(v9, v10, v6, v11, v12, 0x16u);
    }
  }

  *a2 = v4;
}

- (void)service:(uint64_t)a1 receivedNetworkInfo:(NSObject *)a2 .cold.2(uint64_t a1, NSObject **a2)
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_2_4();
    _os_log_impl(v7, v8, v5, v9, v10, 0x16u);
  }

  *a2 = v3;
}

@end