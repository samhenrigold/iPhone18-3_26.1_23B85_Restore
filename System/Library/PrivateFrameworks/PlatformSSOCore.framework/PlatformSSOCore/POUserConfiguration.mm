@interface POUserConfiguration
- (NSString)tokenId;
- (NSString)unlockTokenId;
- (POUserConfiguration)init;
- (POUserConfiguration)initWithCoder:(id)coder;
- (POUserConfiguration)initWithData:(id)data;
- (__SecKey)sepKeyWithContext:(id)context;
- (id)dataRepresentationForDisplay:(BOOL)display;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setSepKey:(__SecKey *)key;
@end

@implementation POUserConfiguration

- (POUserConfiguration)init
{
  v5.receiver = self;
  v5.super_class = POUserConfiguration;
  v2 = [(POUserConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    objc_storeStrong(&v2->_signingAlgorithm, &unk_2870A9198);
  }

  return v3;
}

- (__SecKey)sepKeyWithContext:(id)context
{
  result = [POSecKeyHelper keyForData:self->__sepKeyData context:context];
  self->_sepKey = result;
  return result;
}

- (void)setSepKey:(__SecKey *)key
{
  self->_sepKey = key;
  if (key)
  {
    v4 = [POSecKeyHelper dataForKey:?];
    sepKeyData = self->__sepKeyData;
    self->__sepKeyData = v4;

    MEMORY[0x2821F96F8](v4, sepKeyData);
  }
}

- (NSString)tokenId
{
  userDecryptionKeyHash = [(POUserConfiguration *)self userDecryptionKeyHash];

  if (userDecryptionKeyHash)
  {
    v4 = MEMORY[0x277CCACA8];
    userDecryptionKeyHash2 = [(POUserConfiguration *)self userDecryptionKeyHash];
    v6 = [POTokenHelper dataToHex:userDecryptionKeyHash2];
    v7 = [v4 stringWithFormat:@"com.apple.platformsso:%@", v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)unlockTokenId
{
  userUnlockHash = [(POUserConfiguration *)self userUnlockHash];

  if (userUnlockHash)
  {
    v4 = MEMORY[0x277CCACA8];
    userUnlockHash2 = [(POUserConfiguration *)self userUnlockHash];
    v6 = [POTokenHelper dataToHex:userUnlockHash2];
    v7 = [v4 stringWithFormat:@"com.apple.platformsso:%@", v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dataRepresentationForDisplay:(BOOL)display
{
  displayCopy = display;
  v90 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v5 setFormatOptions:1907];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_version];
  v8 = NSStringFromSelector(sel_version);
  [v6 setObject:v7 forKeyedSubscript:v8];

  v9 = [(POUserLoginConfiguration *)self->_userLoginConfiguration dictionaryRepresentationForDisplay:displayCopy];
  v10 = NSStringFromSelector(sel_userLoginConfiguration);
  [v6 setObject:v9 forKeyedSubscript:v10];

  uniqueIdentifier = self->_uniqueIdentifier;
  v12 = NSStringFromSelector(sel_uniqueIdentifier);
  [v6 setObject:uniqueIdentifier forKeyedSubscript:v12];

  ssoExtensionIdentifier = self->_ssoExtensionIdentifier;
  v14 = NSStringFromSelector(sel_ssoExtensionIdentifier);
  [v6 setObject:ssoExtensionIdentifier forKeyedSubscript:v14];

  loginType = self->_loginType;
  if (displayCopy)
  {
    [POConstantCoreUtil stringForLoginType:loginType];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:loginType];
  }
  v16 = ;
  v17 = NSStringFromSelector(sel_loginType);
  [v6 setObject:v16 forKeyedSubscript:v17];

  lastLoginDate = self->_lastLoginDate;
  if (lastLoginDate)
  {
    v19 = [v5 stringFromDate:self->_lastLoginDate];
  }

  else
  {
    v19 = 0;
  }

  v20 = NSStringFromSelector(sel_lastLoginDate);
  [v6 setObject:v19 forKeyedSubscript:v20];

  if (lastLoginDate)
  {
  }

  state = self->_state;
  if (displayCopy)
  {
    [POConstantCoreUtil stringForUserState:state];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithInteger:state];
  }
  v22 = ;
  v23 = NSStringFromSelector(sel_state);
  [v6 setObject:v22 forKeyedSubscript:v23];

  if (displayCopy)
  {
    [(NSData *)self->__sepKeyData psso_sha256HashString];
  }

  else
  {
    [(NSData *)self->__sepKeyData psso_base64URLEncodedString];
  }
  pendingSigningAlgorithm = ;
  v25 = NSStringFromSelector(sel__sepKeyData);
  [v6 setObject:pendingSigningAlgorithm forKeyedSubscript:v25];

  [(POUserConfiguration *)self signingAlgorithm];
  if (displayCopy)
    pendingSigningAlgorithm = {;
    [POConstantCoreUtil stringForSigningAlgorithm:pendingSigningAlgorithm];
  }
  v26 = ;
  v27 = NSStringFromSelector(sel_signingAlgorithm);
  [v6 setObject:v26 forKeyedSubscript:v27];

  if (displayCopy)
  {

    pendingSigningAlgorithm = [(POUserConfiguration *)self pendingSigningAlgorithm];
    [POConstantCoreUtil stringForSigningAlgorithm:pendingSigningAlgorithm];
  }

  else
  {
    [(POUserConfiguration *)self pendingSigningAlgorithm];
  }
  v28 = ;
  v29 = NSStringFromSelector(sel_pendingSigningAlgorithm);
  [v6 setObject:v28 forKeyedSubscript:v29];

  if (displayCopy)
  {

    v28 = pendingSigningAlgorithm;
  }

  v30 = [POSecKeyHelper dataForCertificate:self->_sepKeyCertificate];
  psso_base64URLEncodedString = [v30 psso_base64URLEncodedString];
  v32 = NSStringFromSelector(sel_sepKeyCertificate);
  [v6 setObject:psso_base64URLEncodedString forKeyedSubscript:v32];

  smartCardTokenId = self->_smartCardTokenId;
  v34 = NSStringFromSelector(sel_smartCardTokenId);
  [v6 setObject:smartCardTokenId forKeyedSubscript:v34];

  if (displayCopy)
  {
    [POTokenHelper dataToHex:self->_smartCardHash];
  }

  else
  {
    [(NSData *)self->_smartCardHash psso_base64URLEncodedString];
  }
  v35 = ;
  v36 = NSStringFromSelector(sel_smartCardHash);
  [v6 setObject:v35 forKeyedSubscript:v36];

  if (displayCopy)
  {
    [(NSData *)self->__credential psso_sha256HashString];
  }

  else
  {
    [(NSData *)self->__credential psso_base64URLEncodedString];
  }
  v37 = ;
  v38 = NSStringFromSelector(sel__credential);
  [v6 setObject:v37 forKeyedSubscript:v38];

  if (displayCopy)
  {
    [(NSData *)self->__setupContext psso_sha256HashString];
  }

  else
  {
    [(NSData *)self->__setupContext psso_base64URLEncodedString];
  }
  v39 = ;
  v40 = NSStringFromSelector(sel__setupContext);
  [v6 setObject:v39 forKeyedSubscript:v40];

  if (displayCopy)
  {
    [(NSData *)self->__setupPINContext psso_sha256HashString];
  }

  else
  {
    [(NSData *)self->__setupPINContext psso_base64URLEncodedString];
  }
  v41 = ;
  v42 = NSStringFromSelector(sel__setupPINContext);
  [v6 setObject:v41 forKeyedSubscript:v42];

  if (displayCopy)
  {
    [(NSData *)self->__setupWrapHash psso_sha256HashString];
  }

  else
  {
    [(NSData *)self->__setupWrapHash psso_base64URLEncodedString];
  }
  v43 = ;
  v44 = NSStringFromSelector(sel__setupWrapHash);
  [v6 setObject:v43 forKeyedSubscript:v44];

  if (displayCopy)
  {
    [(NSData *)self->__loginContext psso_sha256HashString];
  }

  else
  {
    [(NSData *)self->__loginContext psso_base64URLEncodedString];
  }
  v45 = ;
  v46 = NSStringFromSelector(sel__loginContext);
  [v6 setObject:v45 forKeyedSubscript:v46];

  if (displayCopy)
  {
    [(NSData *)self->__credential psso_sha256HashString];
  }

  else
  {
    [(NSData *)self->__credential psso_base64URLEncodedString];
  }
  v47 = ;
  v48 = NSStringFromSelector(sel__credential);
  [v6 setObject:v47 forKeyedSubscript:v48];

  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v50 = self->_kerberosStatus;
  v51 = [(NSArray *)v50 countByEnumeratingWithState:&v85 objects:v89 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v86;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v86 != v53)
        {
          objc_enumerationMutation(v50);
        }

        dictionaryRepresentation = [*(*(&v85 + 1) + 8 * i) dictionaryRepresentation];
        [v49 addObject:dictionaryRepresentation];
      }

      v52 = [(NSArray *)v50 countByEnumeratingWithState:&v85 objects:v89 count:16];
    }

    while (v52);
  }

  if ([v49 count])
  {
    v56 = NSStringFromSelector(sel_kerberosStatus);
    [v6 setObject:v49 forKeyedSubscript:v56];
  }

  if (displayCopy)
  {
    [POTokenHelper dataToHex:self->_userDecryptionKeyHash];
  }

  else
  {
    [(NSData *)self->_userDecryptionKeyHash psso_base64URLEncodedString];
  }
  v57 = ;
  v58 = NSStringFromSelector(sel_userDecryptionKeyHash);
  [v6 setObject:v57 forKeyedSubscript:v58];

  v59 = [POSecKeyHelper dataForCertificate:self->_userDecryptionCertificate];
  psso_base64URLEncodedString2 = [v59 psso_base64URLEncodedString];
  v61 = NSStringFromSelector(sel_userDecryptionCertificate);
  [v6 setObject:psso_base64URLEncodedString2 forKeyedSubscript:v61];

  userDecryptionContext = self->_userDecryptionContext;
  if (displayCopy)
  {
    v59 = [(NSString *)self->_userDecryptionContext dataUsingEncoding:4];
    userDecryptionContext = [v59 psso_sha256HashString];
  }

  v63 = NSStringFromSelector(sel_userDecryptionContext);
  [v6 setObject:userDecryptionContext forKeyedSubscript:v63];

  if (displayCopy)
  {

    v59 = [(NSString *)self->_userUnlockData dataUsingEncoding:4];
    userUnlockData = [v59 psso_sha256HashString];
  }

  else
  {
    userUnlockData = self->_userUnlockData;
  }

  v65 = NSStringFromSelector(sel_userUnlockData);
  [v6 setObject:userUnlockData forKeyedSubscript:v65];

  if (displayCopy)
  {

    [POTokenHelper dataToHex:self->_userUnlockHash];
  }

  else
  {
    [(NSData *)self->_userUnlockHash psso_base64URLEncodedString];
  }
  v66 = ;
  v67 = NSStringFromSelector(sel_userUnlockHash);
  [v6 setObject:v66 forKeyedSubscript:v67];

  v68 = [POSecKeyHelper dataForCertificate:self->_userUnlockCertificate];
  psso_base64URLEncodedString3 = [v68 psso_base64URLEncodedString];
  v70 = NSStringFromSelector(sel_userUnlockCertificate);
  [v6 setObject:psso_base64URLEncodedString3 forKeyedSubscript:v70];

  lastCheckDate = self->_lastCheckDate;
  if (lastCheckDate)
  {
    v72 = [v5 stringFromDate:lastCheckDate];
  }

  else
  {
    v72 = 0;
  }

  v73 = NSStringFromSelector(sel_lastCheckDate);
  [v6 setObject:v72 forKeyedSubscript:v73];

  if (lastCheckDate)
  {
  }

  date = [MEMORY[0x277CBEAA8] date];
  v75 = [v5 stringFromDate:date];
  [v6 setObject:v75 forKeyedSubscript:@"created"];

  v84 = 0;
  v76 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:11 error:&v84];
  v77 = v84;
  v78 = v77;
  if (v77)
  {
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __52__POUserConfiguration_dataRepresentationForDisplay___block_invoke;
    v82[3] = &unk_279A3DC48;
    v83 = v77;
    v79 = __52__POUserConfiguration_dataRepresentationForDisplay___block_invoke(v82);

    v80 = 0;
  }

  else
  {
    v80 = v76;
  }

  return v80;
}

id __52__POUserConfiguration_dataRepresentationForDisplay___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error serializing user config."];
  v2 = PO_LOG_POUserConfiguration(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (POUserConfiguration)initWithData:(id)data
{
  dataCopy = data;
  v5 = [(POUserConfiguration *)self init];
  if (!v5)
  {
LABEL_49:
    v11 = v5;
    goto LABEL_50;
  }

  v6 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v6 setFormatOptions:1907];
  v154 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:16 error:&v154];
  v8 = v154;
  if (!v8)
  {
    v12 = NSStringFromSelector(sel_version);
    v13 = [v7 objectForKeyedSubscript:v12];

    if (v13)
    {
      v14 = NSStringFromSelector(sel_version);
      v15 = [v7 objectForKeyedSubscript:v14];

      v5->_version = [v15 intValue];
    }

    else
    {
      v5->_version = 0;
    }

    v16 = NSStringFromSelector(sel_userLoginConfiguration);
    v17 = [v7 objectForKeyedSubscript:v16];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[POUserLoginConfiguration alloc] initWithDictionary:v17];
      userLoginConfiguration = v5->_userLoginConfiguration;
      v5->_userLoginConfiguration = v18;
    }

    if (!v5->_version)
    {
      v20 = [v7 objectForKeyedSubscript:@"loginUserName"];
      if (v20)
      {
        v21 = [[POUserLoginConfiguration alloc] initWithLoginUserName:v20];
        v22 = v5->_userLoginConfiguration;
        v5->_userLoginConfiguration = v21;
      }
    }

    v23 = NSStringFromSelector(sel_uniqueIdentifier);
    v24 = [v7 objectForKeyedSubscript:v23];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v24;

    v26 = NSStringFromSelector(sel_ssoExtensionIdentifier);
    v27 = [v7 objectForKeyedSubscript:v26];
    ssoExtensionIdentifier = v5->_ssoExtensionIdentifier;
    v5->_ssoExtensionIdentifier = v27;

    v29 = NSStringFromSelector(sel_loginType);
    v30 = [v7 objectForKeyedSubscript:v29];
    v5->_loginType = [v30 intValue];

    v31 = NSStringFromSelector(sel_state);
    v32 = [v7 objectForKeyedSubscript:v31];
    v5->_state = [v32 intValue];

    v33 = NSStringFromSelector(sel_smartCardTokenId);
    v34 = [v7 objectForKeyedSubscript:v33];
    smartCardTokenId = v5->_smartCardTokenId;
    v5->_smartCardTokenId = v34;

    v36 = NSStringFromSelector(sel_smartCardHash);
    v37 = [v7 objectForKeyedSubscript:v36];

    if (v37)
    {
      v38 = objc_alloc(MEMORY[0x277CBEA90]);
      v39 = NSStringFromSelector(sel_smartCardHash);
      v40 = [v7 objectForKeyedSubscript:v39];
      v41 = [v38 psso_initWithBase64URLEncodedString:v40];

      smartCardHash = v5->_smartCardHash;
      v5->_smartCardHash = v41;
    }

    v43 = NSStringFromSelector(sel_lastLoginDate);
    v44 = [v7 objectForKeyedSubscript:v43];

    if (v44)
    {
      v45 = [v6 dateFromString:v44];
      lastLoginDate = v5->_lastLoginDate;
      v5->_lastLoginDate = v45;
    }

    v47 = NSStringFromSelector(sel__credential);
    v48 = [v7 objectForKeyedSubscript:v47];

    if (v48)
    {
      v49 = objc_alloc(MEMORY[0x277CBEA90]);
      v50 = NSStringFromSelector(sel__credential);
      v51 = [v7 objectForKeyedSubscript:v50];
      v52 = [v49 psso_initWithBase64URLEncodedString:v51];

      credential = v5->__credential;
      v5->__credential = v52;
    }

    v54 = NSStringFromSelector(sel__setupContext);
    v55 = [v7 objectForKeyedSubscript:v54];

    if (v55)
    {
      v56 = objc_alloc(MEMORY[0x277CBEA90]);
      v57 = NSStringFromSelector(sel__setupContext);
      v58 = [v7 objectForKeyedSubscript:v57];
      v59 = [v56 psso_initWithBase64URLEncodedString:v58];

      setupContext = v5->__setupContext;
      v5->__setupContext = v59;
    }

    v61 = NSStringFromSelector(sel__setupPINContext);
    v62 = [v7 objectForKeyedSubscript:v61];

    if (v62)
    {
      v63 = objc_alloc(MEMORY[0x277CBEA90]);
      v64 = NSStringFromSelector(sel__setupPINContext);
      v65 = [v7 objectForKeyedSubscript:v64];
      v66 = [v63 psso_initWithBase64URLEncodedString:v65];

      setupPINContext = v5->__setupPINContext;
      v5->__setupPINContext = v66;
    }

    v68 = NSStringFromSelector(sel__setupWrapHash);
    v69 = [v7 objectForKeyedSubscript:v68];

    if (v69)
    {
      v70 = objc_alloc(MEMORY[0x277CBEA90]);
      v71 = NSStringFromSelector(sel__setupWrapHash);
      v72 = [v7 objectForKeyedSubscript:v71];
      v73 = [v70 psso_initWithBase64URLEncodedString:v72];

      setupWrapHash = v5->__setupWrapHash;
      v5->__setupWrapHash = v73;
    }

    v75 = NSStringFromSelector(sel__loginContext);
    v76 = [v7 objectForKeyedSubscript:v75];

    if (v76)
    {
      v77 = objc_alloc(MEMORY[0x277CBEA90]);
      v78 = NSStringFromSelector(sel__loginContext);
      v79 = [v7 objectForKeyedSubscript:v78];
      v80 = [v77 psso_initWithBase64URLEncodedString:v79];

      loginContext = v5->__loginContext;
      v5->__loginContext = v80;
    }

    v82 = NSStringFromSelector(sel__sepKeyData);
    v83 = [v7 objectForKeyedSubscript:v82];

    if (v83)
    {
      v84 = objc_alloc(MEMORY[0x277CBEA90]);
      v85 = NSStringFromSelector(sel__sepKeyData);
      v86 = [v7 objectForKeyedSubscript:v85];
      v87 = [v84 psso_initWithBase64URLEncodedString:v86];

      sepKeyData = v5->__sepKeyData;
      v5->__sepKeyData = v87;
    }

    v148 = v6;
    v89 = NSStringFromSelector(sel_signingAlgorithm);
    v90 = [v7 objectForKeyedSubscript:v89];

    v91 = v44;
    if (v90)
    {
      v92 = NSStringFromSelector(sel_signingAlgorithm);
      v93 = [v7 objectForKeyedSubscript:v92];

      signingAlgorithm = v5->_signingAlgorithm;
      v5->_signingAlgorithm = v93;
    }

    else
    {
      v95 = &unk_2870A9198;
      signingAlgorithm = v5->_signingAlgorithm;
      v5->_signingAlgorithm = v95;
    }

    v96 = NSStringFromSelector(sel_pendingSigningAlgorithm);
    v97 = [v7 objectForKeyedSubscript:v96];

    if (v97)
    {
      v98 = NSStringFromSelector(sel_pendingSigningAlgorithm);
      v99 = [v7 objectForKeyedSubscript:v98];

      pendingSigningAlgorithm = v5->_pendingSigningAlgorithm;
      v5->_pendingSigningAlgorithm = v99;
    }

    v101 = NSStringFromSelector(sel_sepKeyCertificate);
    v102 = [v7 objectForKeyedSubscript:v101];

    if (v102)
    {
      v103 = objc_alloc(MEMORY[0x277CBEA90]);
      v104 = NSStringFromSelector(sel_sepKeyCertificate);
      v105 = [v7 objectForKeyedSubscript:v104];
      v106 = [v103 psso_initWithBase64URLEncodedString:v105];

      v5->_sepKeyCertificate = [POSecKeyHelper certificateForData:v106];
    }

    v149 = v17;
    v107 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v108 = NSStringFromSelector(sel_kerberosStatus);
    v109 = [v7 objectForKeyedSubscript:v108];

    v150[0] = MEMORY[0x277D85DD0];
    v150[1] = 3221225472;
    v150[2] = __36__POUserConfiguration_initWithData___block_invoke_157;
    v150[3] = &unk_279A3DD60;
    v110 = v107;
    v151 = v110;
    [v109 enumerateObjectsUsingBlock:v150];
    if ([v110 count])
    {
      objc_storeStrong(&v5->_kerberosStatus, v107);
    }

    v111 = NSStringFromSelector(sel_userDecryptionKeyHash);
    v112 = [v7 objectForKeyedSubscript:v111];

    if (v112)
    {
      v113 = objc_alloc(MEMORY[0x277CBEA90]);
      v114 = NSStringFromSelector(sel_userDecryptionKeyHash);
      v115 = [v7 objectForKeyedSubscript:v114];
      v116 = [v113 psso_initWithBase64URLEncodedString:v115];

      userDecryptionKeyHash = v5->_userDecryptionKeyHash;
      v5->_userDecryptionKeyHash = v116;
    }

    v118 = NSStringFromSelector(sel_userDecryptionCertificate);
    v119 = [v7 objectForKeyedSubscript:v118];

    if (v119)
    {
      v120 = objc_alloc(MEMORY[0x277CBEA90]);
      v121 = NSStringFromSelector(sel_userDecryptionCertificate);
      v122 = [v7 objectForKeyedSubscript:v121];
      v123 = [v120 psso_initWithBase64URLEncodedString:v122];

      v5->_userDecryptionCertificate = [POSecKeyHelper certificateForData:v123];
    }

    v124 = NSStringFromSelector(sel_userDecryptionContext);
    v125 = [v7 objectForKeyedSubscript:v124];
    userDecryptionContext = v5->_userDecryptionContext;
    v5->_userDecryptionContext = v125;

    v127 = NSStringFromSelector(sel_userUnlockData);
    v128 = [v7 objectForKeyedSubscript:v127];
    userUnlockData = v5->_userUnlockData;
    v5->_userUnlockData = v128;

    v130 = NSStringFromSelector(sel_userUnlockHash);
    v131 = [v7 objectForKeyedSubscript:v130];

    if (v131)
    {
      v132 = objc_alloc(MEMORY[0x277CBEA90]);
      v133 = NSStringFromSelector(sel_userUnlockHash);
      v134 = [v7 objectForKeyedSubscript:v133];
      v135 = [v132 psso_initWithBase64URLEncodedString:v134];

      userUnlockHash = v5->_userUnlockHash;
      v5->_userUnlockHash = v135;
    }

    v137 = NSStringFromSelector(sel_userUnlockCertificate);
    v138 = [v7 objectForKeyedSubscript:v137];

    if (v138)
    {
      v139 = objc_alloc(MEMORY[0x277CBEA90]);
      v140 = NSStringFromSelector(sel_userUnlockCertificate);
      v141 = [v7 objectForKeyedSubscript:v140];
      v142 = [v139 psso_initWithBase64URLEncodedString:v141];

      v5->_userUnlockCertificate = [POSecKeyHelper certificateForData:v142];
    }

    v143 = NSStringFromSelector(sel_lastCheckDate);
    v144 = [v7 objectForKeyedSubscript:v143];

    if (v144)
    {
      v145 = [v148 dateFromString:v144];
      lastCheckDate = v5->_lastCheckDate;
      v5->_lastCheckDate = v145;
    }

    goto LABEL_49;
  }

  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 3221225472;
  v152[2] = __36__POUserConfiguration_initWithData___block_invoke;
  v152[3] = &unk_279A3DC48;
  v153 = v8;
  v9 = v8;
  v10 = __36__POUserConfiguration_initWithData___block_invoke(v152);

  v11 = 0;
LABEL_50:

  return v11;
}

id __36__POUserConfiguration_initWithData___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error deserializing user config."];
  v2 = PO_LOG_POUserConfiguration(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

void __36__POUserConfiguration_initWithData___block_invoke_157(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [[POKerberosStatus alloc] initWithDictionary:v5];
    [v3 addObject:v4];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(POUserConfiguration *)self dataRepresentationForDisplay:1];
  v5 = [v3 initWithData:v4 encoding:4];

  return v5;
}

- (POUserConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_dataRepresentation);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = [(POUserConfiguration *)self initWithData:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataRepresentation = [(POUserConfiguration *)self dataRepresentation];
  v5 = NSStringFromSelector(sel_dataRepresentation);
  [coderCopy encodeObject:dataRepresentation forKey:v5];
}

@end