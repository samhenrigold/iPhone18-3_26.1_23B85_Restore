@interface WFOtherNetworkContext
- (BOOL)isEnterprise;
- (BOOL)otherNetworkViewController:(id)controller isValidPassword:(id)password;
- (BOOL)validateCredentials;
- (BOOL)validatePassword;
- (WFOtherNetworkContext)initWithType:(unint64_t)type authTraits:(int64_t)traits supportRandomAddress:(BOOL)address useRandomAddress:(BOOL)randomAddress randomMACAddress:(id)cAddress hardwareMACAddress:(id)aCAddress;
- (int64_t)securityMode;
- (void)_updateActivityStringForError:(id)error networkName:(id)name;
- (void)finishWithError:(id)error forNetwork:(id)network profile:(id)profile;
- (void)gatherCredentials:(id)credentials;
- (void)otherNetworkViewControllerUserDidTapJoin:(id)join;
- (void)savePrivateAddressMode:(unint64_t)mode;
@end

@implementation WFOtherNetworkContext

- (void)finishWithError:(id)error forNetwork:(id)network profile:(id)profile
{
  v57 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  networkCopy = network;
  profileCopy = profile;
  [(WFOtherNetworkContext *)self setNetwork:networkCopy];
  [(WFOtherNetworkContext *)self setProfile:profileCopy];
  v11 = WFLogForCategory(0);
  v12 = OSLogForWFLogLevel(3uLL);
  v13 = v12;
  if (WFCurrentLogLevel(v12, v14) >= 3 && v11 && os_log_type_enabled(v11, v13))
  {
    network = self->_network;
    *buf = 136315650;
    v52 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
    v53 = 2112;
    networkCopy2 = network;
    v55 = 2112;
    v56 = profileCopy;
    _os_log_impl(&dword_273ECD000, v11, v13, "%s: network %@ profile %@", buf, 0x20u);
  }

  if (errorCopy)
  {
    code = [errorCopy code];
    if (code <= 0x11)
    {
      if (((1 << code) & 0x8B) != 0)
      {
        if (self->_type != 1)
        {
          requestedFields = 385;
          goto LABEL_44;
        }

        network = [(WFOtherNetworkContext *)self network];
        isEnterprise = [network isEnterprise];

        if (isEnterprise)
        {
          v19 = WFLogForCategory(0);
          v20 = OSLogForWFLogLevel(3uLL);
          v21 = v20;
          if (WFCurrentLogLevel(v20, v22) >= 3 && v19)
          {
            v23 = v19;
            if (os_log_type_enabled(v23, v21))
            {
              network2 = [(WFOtherNetworkContext *)self network];
              *buf = 136315394;
              v52 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
              v53 = 2112;
              networkCopy2 = network2;
              _os_log_impl(&dword_273ECD000, v23, v21, "%s: network %@ is enterprise", buf, 0x16u);
            }
          }

          if (self->_availableTLSIdentities)
          {
            v25 = WFLogForCategory(0);
            v26 = OSLogForWFLogLevel(4uLL);
            v27 = v26;
            if (WFCurrentLogLevel(v26, v28) < 4 || !v25)
            {
              goto LABEL_21;
            }

            v29 = v25;
            if (!os_log_type_enabled(v29, v27))
            {
LABEL_20:

LABEL_21:
              requestedFields = 15;
              goto LABEL_44;
            }

LABEL_19:
            v30 = [(NSArray *)self->_availableTLSIdentities count];
            *buf = 136315394;
            v52 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
            v53 = 2048;
            networkCopy2 = v30;
            _os_log_impl(&dword_273ECD000, v29, v27, "%s: available TLS identities %lu", buf, 0x16u);
            goto LABEL_20;
          }

LABEL_43:
          requestedFields = 3;
LABEL_44:
          v46 = WFLogForCategory(0);
          v47 = OSLogForWFLogLevel(3uLL);
          v48 = v47;
          if (WFCurrentLogLevel(v47, v49) >= 3 && v46 && os_log_type_enabled(v46, v48))
          {
            *buf = 136315650;
            v52 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
            v53 = 2112;
            networkCopy2 = errorCopy;
            v55 = 2048;
            v56 = requestedFields;
            _os_log_impl(&dword_273ECD000, v46, v48, "%s: error %@ newRequested fields %ld", buf, 0x20u);
          }

          self->_requestedFields = requestedFields;
          goto LABEL_49;
        }

        goto LABEL_36;
      }

      if (code == 17)
      {
        if (self->_type != 1)
        {
          requestedFields = 0;
          goto LABEL_44;
        }

        network3 = [(WFOtherNetworkContext *)self network];
        isEnterprise2 = [network3 isEnterprise];

        if (isEnterprise2)
        {
          v34 = WFLogForCategory(0);
          v35 = OSLogForWFLogLevel(3uLL);
          v36 = v35;
          if (WFCurrentLogLevel(v35, v37) >= 3 && v34)
          {
            v38 = v34;
            if (os_log_type_enabled(v38, v36))
            {
              network4 = [(WFOtherNetworkContext *)self network];
              *buf = 136315394;
              v52 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
              v53 = 2112;
              networkCopy2 = network4;
              _os_log_impl(&dword_273ECD000, v38, v36, "%s: network %@ is enterprise", buf, 0x16u);
            }
          }

          if (self->_availableTLSIdentities)
          {
            v25 = WFLogForCategory(0);
            v40 = OSLogForWFLogLevel(4uLL);
            v27 = v40;
            if (WFCurrentLogLevel(v40, v41) < 4 || !v25)
            {
              goto LABEL_21;
            }

            v29 = v25;
            if (!os_log_type_enabled(v29, v27))
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }

          goto LABEL_43;
        }

LABEL_36:
        requestedFields = 1;
        goto LABEL_44;
      }
    }

    v42 = WFLogForCategory(0);
    v43 = OSLogForWFLogLevel(3uLL);
    v44 = v43;
    if (WFCurrentLogLevel(v43, v45) >= 3 && v42 && os_log_type_enabled(v42, v44))
    {
      *buf = 136315394;
      v52 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
      v53 = 2112;
      networkCopy2 = errorCopy;
      _os_log_impl(&dword_273ECD000, v42, v44, "%s: unhandled error %@", buf, 0x16u);
    }

    requestedFields = self->_requestedFields;
    goto LABEL_44;
  }

LABEL_49:
  v50.receiver = self;
  v50.super_class = WFOtherNetworkContext;
  [(WFCredentialsContext *)&v50 finishWithError:errorCopy forNetwork:networkCopy profile:profileCopy];
}

- (BOOL)validateCredentials
{
  provider = [(WFCredentialsContext *)self provider];
  v4 = provider;
  if (self->_type == 1)
  {
    requestedFields = self->_requestedFields;
    if ((requestedFields & 0x80) != 0)
    {
      sSID = [provider SSID];
      if ([sSID isEmpty])
      {

LABEL_16:
        validateCredentials = 0;
        goto LABEL_15;
      }

      sSID2 = [v4 SSID];

      if (!sSID2)
      {
        goto LABEL_16;
      }

      requestedFields = self->_requestedFields;
    }

    if (requestedFields != 128)
    {
      goto LABEL_14;
    }
  }

  else if ([(WFOtherNetworkContext *)self securityMode])
  {
LABEL_14:
    v12.receiver = self;
    v12.super_class = WFOtherNetworkContext;
    validateCredentials = [(WFCredentialsContext *)&v12 validateCredentials];
    goto LABEL_15;
  }

  sSID3 = [v4 SSID];
  if ([sSID3 isEmpty])
  {

    goto LABEL_14;
  }

  sSID4 = [v4 SSID];

  if (!sSID4)
  {
    goto LABEL_14;
  }

  validateCredentials = 1;
LABEL_15:

  return validateCredentials;
}

- (BOOL)validatePassword
{
  provider = [(WFCredentialsContext *)self provider];
  v4 = provider;
  if (self->_type == 1)
  {
    requestedFields = self->_requestedFields;
    if ((requestedFields & 0x80) != 0)
    {
      sSID = [provider SSID];
      if ([sSID isEmpty])
      {

LABEL_16:
        validatePassword = 0;
        goto LABEL_15;
      }

      sSID2 = [v4 SSID];

      if (!sSID2)
      {
        goto LABEL_16;
      }

      requestedFields = self->_requestedFields;
    }

    if (requestedFields != 128)
    {
      goto LABEL_14;
    }
  }

  else if ([(WFOtherNetworkContext *)self securityMode])
  {
LABEL_14:
    v12.receiver = self;
    v12.super_class = WFOtherNetworkContext;
    validatePassword = [(WFCredentialsContext *)&v12 validatePassword];
    goto LABEL_15;
  }

  sSID3 = [v4 SSID];
  if ([sSID3 isEmpty])
  {

    goto LABEL_14;
  }

  sSID4 = [v4 SSID];

  if (!sSID4)
  {
    goto LABEL_14;
  }

  validatePassword = 1;
LABEL_15:

  return validatePassword;
}

- (void)_updateActivityStringForError:(id)error networkName:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  nameCopy = name;
  provider = [(WFCredentialsContext *)self provider];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    if (errorCopy)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"kWFLocOtherNetworkFailedPromptFormat" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];

      nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v11, nameCopy];
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(3uLL);
      v15 = v14;
      if (WFCurrentLogLevel(v14, v16) >= 3 && v13 && os_log_type_enabled(v13, v15))
      {
        *buf = 136315650;
        v19 = "[WFOtherNetworkContext _updateActivityStringForError:networkName:]";
        v20 = 2112;
        v21 = errorCopy;
        v22 = 2112;
        v23 = nameCopy;
        _os_log_impl(&dword_273ECD000, v13, v15, "%s: error %@ activityString %@", buf, 0x20u);
      }
    }

    else
    {
      nameCopy = 0;
    }

    provider2 = [(WFCredentialsContext *)self provider];
    [provider2 setActivityString:nameCopy];
  }
}

- (void)gatherCredentials:(id)credentials
{
  v102 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  provider = [(WFCredentialsContext *)self provider];
  sSID = [provider SSID];

  network = [(WFOtherNetworkContext *)self network];
  if (network)
  {
    network2 = [(WFOtherNetworkContext *)self network];
    ssid = [network2 ssid];
  }

  else
  {
    ssid = sSID;
  }

  if (([sSID isEqualToString:ssid] & 1) == 0)
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) >= 3 && v10 && os_log_type_enabled(v10, v12))
    {
      *buf = 136315650;
      *&buf[4] = "[WFOtherNetworkContext gatherCredentials:]";
      v96 = 2112;
      v97 = ssid;
      v98 = 2112;
      v99 = sSID;
      _os_log_impl(&dword_273ECD000, v10, v12, "%s: network name changed from %@ -> %@", buf, 0x20u);
    }

    v14 = sSID;
    ssid = v14;
  }

  provider2 = [(WFCredentialsContext *)self provider];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    provider3 = [(WFCredentialsContext *)self provider];
    [provider3 setJoining:1];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    provider4 = [(WFCredentialsContext *)self provider];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"kWFLocOtherNetworkJoiningPromptFormat" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      v23 = [v20 stringWithFormat:v22, ssid];
      provider5 = [(WFCredentialsContext *)self provider];
      [provider5 setActivityString:v23];
    }
  }

  v25 = objc_alloc_init(WFUserSuppliedNetwork);
  v86 = ssid;
  [(WFUserSuppliedNetwork *)v25 setSsid:ssid];
  network3 = [(WFOtherNetworkContext *)self network];

  if (network3)
  {
    v27 = WFLogForCategory(0);
    v28 = OSLogForWFLogLevel(3uLL);
    v29 = v28;
    if (WFCurrentLogLevel(v28, v30) >= 3 && v27)
    {
      v31 = v27;
      if (os_log_type_enabled(v31, v29))
      {
        network4 = [(WFOtherNetworkContext *)self network];
        *buf = 136315394;
        *&buf[4] = "[WFOtherNetworkContext gatherCredentials:]";
        v96 = 2112;
        v97 = network4;
        _os_log_impl(&dword_273ECD000, v31, v29, "%s: using security mode from network: %@", buf, 0x16u);
      }
    }

    network5 = [(WFOtherNetworkContext *)self network];
    -[WFUserSuppliedNetwork setSecurity:](v25, "setSecurity:", [network5 securityMode]);
  }

  provider6 = [(WFCredentialsContext *)self provider];
  v35 = objc_opt_respondsToSelector();

  if (v35)
  {
    provider7 = [(WFCredentialsContext *)self provider];
    securityMode = [provider7 securityMode];

    v38 = WFLogForCategory(0);
    v39 = OSLogForWFLogLevel(3uLL);
    v40 = v39;
    if (WFCurrentLogLevel(v39, v41) >= 3 && v38)
    {
      v42 = v25;
      selfCopy = self;
      v44 = v38;
      if (os_log_type_enabled(v44, v40))
      {
        provider8 = [(WFCredentialsContext *)selfCopy provider];
        v46 = WFWiFiSecurityModeFromOtherSecurityMode(securityMode);
        v47 = WFStringFromWFSecurityMode(v46);
        *buf = 136315906;
        *&buf[4] = "[WFOtherNetworkContext gatherCredentials:]";
        v96 = 2112;
        v97 = provider8;
        v98 = 2112;
        v99 = v47;
        v100 = 2048;
        v101 = securityMode;
        _os_log_impl(&dword_273ECD000, v44, v40, "%s: using security mode from provider: %@ - %@ (%ld)", buf, 0x2Au);
      }

      self = selfCopy;
      v25 = v42;
    }

    [(WFUserSuppliedNetwork *)v25 setSecurity:WFWiFiSecurityModeFromOtherSecurityMode(securityMode)];
  }

  provider9 = [(WFCredentialsContext *)self provider];
  username = [provider9 username];
  [(WFUserSuppliedNetwork *)v25 setUsername:username];

  provider10 = [(WFCredentialsContext *)self provider];
  password = [provider10 password];
  [(WFUserSuppliedNetwork *)v25 setPassword:password];

  provider11 = [(WFCredentialsContext *)self provider];
  -[WFUserSuppliedNetwork setTLSIdentity:](v25, "setTLSIdentity:", [provider11 TLSIdentity]);

  v53 = WFLogForCategory(0);
  v54 = OSLogForWFLogLevel(3uLL);
  v55 = v54;
  if (WFCurrentLogLevel(v54, v56) >= 3 && v53)
  {
    v57 = v53;
    if (os_log_type_enabled(v57, v55))
    {
      security = [(WFUserSuppliedNetwork *)v25 security];
      *buf = 136315394;
      *&buf[4] = "[WFOtherNetworkContext gatherCredentials:]";
      v96 = 2048;
      v97 = security;
      _os_log_impl(&dword_273ECD000, v57, v55, "%s: otherNetworkRecord.security: %ld", buf, 0x16u);
    }
  }

  v85 = v25;
  if ([(WFUserSuppliedNetwork *)v25 security]== 128)
  {
    provider12 = [(WFCredentialsContext *)self provider];
    if (objc_opt_respondsToSelector())
    {
      provider13 = [(WFCredentialsContext *)self provider];
      v61 = objc_opt_respondsToSelector();

      if (v61)
      {
        *buf = 0;
        v93 = 0;
        if (WFWAPIIdentityListCreate(buf, &v93) || !CFArrayGetCount(*buf))
        {
          v62 = 0;
        }

        else
        {
          selfCopy2 = self;
          v83 = sSID;
          v84 = credentialsCopy;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          obj = v93;
          v64 = [(__CFArray *)obj countByEnumeratingWithState:&v89 objects:v94 count:16];
          if (v64)
          {
            v65 = v64;
            v62 = 0;
            v66 = *v90;
            do
            {
              for (i = 0; i != v65; ++i)
              {
                if (*v90 != v66)
                {
                  objc_enumerationMutation(obj);
                }

                v68 = *(*(&v89 + 1) + 8 * i);
                v69 = [v68 valueForKey:@"certRef"];
                provider14 = [(WFCredentialsContext *)selfCopy2 provider];
                wAPIIdentity = [provider14 WAPIIdentity];

                if (v69)
                {
                  v72 = wAPIIdentity == 0;
                }

                else
                {
                  v72 = 1;
                }

                if (!v72 && CFEqual(v69, wAPIIdentity))
                {
                  v73 = [v68 valueForKey:@"pemData"];

                  v62 = v73;
                }
              }

              v65 = [(__CFArray *)obj countByEnumeratingWithState:&v89 objects:v94 count:16];
            }

            while (v65);
          }

          else
          {
            v62 = 0;
          }

          sSID = v83;
          credentialsCopy = v84;
          self = selfCopy2;
        }

        provider15 = [(WFCredentialsContext *)self provider];
        wAPIRootCertificate = [provider15 WAPIRootCertificate];
        v76 = WFWAPICertificateBlobString(wAPIRootCertificate, v62);
        [(WFUserSuppliedNetwork *)v85 setPassword:v76];
      }
    }

    else
    {
    }
  }

  v77 = WFLogForCategory(0);
  v78 = OSLogForWFLogLevel(3uLL);
  v79 = v78;
  if (WFCurrentLogLevel(v78, v80) >= 3 && v77)
  {
    v81 = v77;
    if (os_log_type_enabled(v81, v79))
    {
      v82 = WFStringFromWFSecurityMode([(WFUserSuppliedNetwork *)v85 security]);
      *buf = 136315650;
      *&buf[4] = "[WFOtherNetworkContext gatherCredentials:]";
      v96 = 2112;
      v97 = v86;
      v98 = 2112;
      v99 = v82;
      _os_log_impl(&dword_273ECD000, v81, v79, "%s: user joining other network %@ (security %@)", buf, 0x20u);
    }
  }

  [(WFOtherNetworkContext *)self setUserSuppliedNetwork:v85];
  v88.receiver = self;
  v88.super_class = WFOtherNetworkContext;
  [(WFCredentialsContext *)&v88 gatherCredentials:credentialsCopy];
}

- (int64_t)securityMode
{
  v21 = *MEMORY[0x277D85DE8];
  network = [(WFOtherNetworkContext *)self network];
  securityMode = [network securityMode];

  if (self->_type != 1)
  {
    provider = [(WFCredentialsContext *)self provider];
    if (([provider conformsToProtocol:&unk_288336D90] & 1) == 0)
    {
LABEL_9:

      return securityMode;
    }

    provider2 = [(WFCredentialsContext *)self provider];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      provider3 = [(WFCredentialsContext *)self provider];
      securityMode = WFWiFiSecurityModeFromOtherSecurityMode([provider3 securityMode]);

      provider = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(4uLL);
      v10 = v9;
      if (WFCurrentLogLevel(v9, v11) >= 4 && provider)
      {
        v12 = provider;
        if (os_log_type_enabled(v12, v10))
        {
          provider4 = [(WFCredentialsContext *)self provider];
          v15 = 136315650;
          v16 = "[WFOtherNetworkContext securityMode]";
          v17 = 2112;
          v18 = provider4;
          v19 = 2048;
          v20 = securityMode;
          _os_log_impl(&dword_273ECD000, v12, v10, "%s: using provider (%@) securityMode %ld", &v15, 0x20u);
        }
      }

      goto LABEL_9;
    }
  }

  return securityMode;
}

- (BOOL)isEnterprise
{
  network = [(WFOtherNetworkContext *)self network];
  isEnterprise = [network isEnterprise];

  if (self->_type == 1)
  {
    return isEnterprise;
  }

  securityMode = [(WFOtherNetworkContext *)self securityMode];

  return WFSecurityModeIsEnterprise(securityMode);
}

- (void)otherNetworkViewControllerUserDidTapJoin:(id)join
{
  joinCopy = join;
  objc_initWeak(&location, joinCopy);
  objc_initWeak(&from, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__WFOtherNetworkContext_otherNetworkViewControllerUserDidTapJoin___block_invoke;
  v5[3] = &unk_279EBDAE8;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, &from);
  v5[4] = self;
  [(WFOtherNetworkContext *)self gatherCredentials:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __66__WFOtherNetworkContext_otherNetworkViewControllerUserDidTapJoin___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  [WeakRetained setJoining:0];

  v8 = objc_loadWeakRetained(a1 + 6);
  v6 = [a1[4] network];
  v7 = [v6 ssid];
  [v8 _updateActivityStringForError:v4 networkName:v7];
}

- (BOOL)otherNetworkViewController:(id)controller isValidPassword:(id)password
{
  passwordCopy = password;
  v6 = WFWiFiSecurityModeFromOtherSecurityMode([controller securityMode]);
  LOBYTE(controller) = WFValidPasswordForSecurityMode(v6, passwordCopy);

  return controller;
}

- (void)savePrivateAddressMode:(unint64_t)mode
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v11 = 134217984;
    modeCopy = mode;
    _os_log_impl(&dword_273ECD000, v5, v7, "User joining other network using private address mode: %ld", &v11, 0xCu);
  }

  privateAddressModeChangeHandler = [(WFOtherNetworkContext *)self privateAddressModeChangeHandler];

  if (privateAddressModeChangeHandler)
  {
    privateAddressModeChangeHandler2 = [(WFOtherNetworkContext *)self privateAddressModeChangeHandler];
    privateAddressModeChangeHandler2[2](privateAddressModeChangeHandler2, mode);
  }
}

- (WFOtherNetworkContext)initWithType:(unint64_t)type authTraits:(int64_t)traits supportRandomAddress:(BOOL)address useRandomAddress:(BOOL)randomAddress randomMACAddress:(id)cAddress hardwareMACAddress:(id)aCAddress
{
  v44 = *MEMORY[0x277D85DE8];
  cAddressCopy = cAddress;
  aCAddressCopy = aCAddress;
  v36 = 0;
  theArray = 0;
  v35.receiver = self;
  v35.super_class = WFOtherNetworkContext;
  v16 = [(WFOtherNetworkContext *)&v35 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_25;
  }

  v16->_type = type;
  v16->_availableAuthTraits = traits;
  if (traits)
  {
    if (!WFWAPIRootCertificateListCreate(&theArray) && CFArrayGetCount(theArray))
    {
      objc_storeStrong(&v17->_WAPIRootCertificates, theArray);
    }

    if (!WFWAPIIdentityListCreate(&v36, 0) && CFArrayGetCount(v36))
    {
      objc_storeStrong(&v17->_WAPIIdentities, v36);
    }
  }

  v34 = 0;
  v18 = WFAllIdentities(&v34);
  v19 = v18;
  if (!v34 && [v18 count])
  {
    objc_storeStrong(&v17->_availableTLSIdentities, v19);
  }

  type = v17->_type;
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_17;
    }

    v21 = 128;
  }

  else
  {
    v21 = 384;
  }

  v17->_requestedFields = v21;
LABEL_17:
  v17->_supportsRandomMACAddress = address;
  v17->_isUsingRandomMACAddress = randomAddress;
  formattedWiFiAddress = [aCAddressCopy formattedWiFiAddress];
  hardwareMACAddress = v17->_hardwareMACAddress;
  v17->_hardwareMACAddress = formattedWiFiAddress;

  formattedWiFiAddress2 = [cAddressCopy formattedWiFiAddress];
  randomMACAddress = v17->_randomMACAddress;
  v17->_randomMACAddress = formattedWiFiAddress2;

  v26 = WFLogForCategory(0);
  v27 = OSLogForWFLogLevel(3uLL);
  v28 = v27;
  if (WFCurrentLogLevel(v27, v29) >= 3 && v26)
  {
    v30 = v26;
    if (os_log_type_enabled(v30, v28))
    {
      v31 = traits & 1;
      availableTLSIdentities = v17->_availableTLSIdentities;
      if (availableTLSIdentities)
      {
        LODWORD(availableTLSIdentities) = [(NSArray *)availableTLSIdentities count];
      }

      *buf = 136315650;
      v39 = "[WFOtherNetworkContext initWithType:authTraits:supportRandomAddress:useRandomAddress:randomMACAddress:hardwareMACAddress:]";
      v40 = 1024;
      v41 = v31;
      v42 = 1024;
      v43 = availableTLSIdentities;
      _os_log_impl(&dword_273ECD000, v30, v28, "%s: WAPIEnabled: %d tlsIdentities %d", buf, 0x18u);
    }
  }

LABEL_25:
  return v17;
}

@end