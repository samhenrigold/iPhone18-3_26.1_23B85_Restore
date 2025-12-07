@interface NEHotspotConfiguration
- (NEHotspotConfiguration)init;
- (NEHotspotConfiguration)initWithCoder:(id)coder;
- (NEHotspotConfiguration)initWithHS20Settings:(NEHotspotHS20Settings *)hs20Settings eapSettings:(NEHotspotEAPSettings *)eapSettings;
- (NEHotspotConfiguration)initWithSSID:(NSString *)SSID;
- (NEHotspotConfiguration)initWithSSID:(NSString *)SSID eapSettings:(NEHotspotEAPSettings *)eapSettings;
- (NEHotspotConfiguration)initWithSSID:(NSString *)SSID passphrase:(NSString *)passphrase isWEP:(BOOL)isWEP;
- (NEHotspotConfiguration)initWithSSIDPrefix:(NSString *)SSIDPrefix;
- (NEHotspotConfiguration)initWithSSIDPrefix:(NSString *)SSIDPrefix passphrase:(NSString *)passphrase isWEP:(BOOL)isWEP;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)validate;
- (uint64_t)validateEAPSettings;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEHotspotConfiguration

- (int64_t)validate
{
  v102 = *MEMORY[0x1E69E9840];
  useSSIDPrefix = [(NEHotspotConfiguration *)self useSSIDPrefix];
  if (useSSIDPrefix || (-[NEHotspotConfiguration SSID](self, "SSID"), v2 = objc_claimAutoreleasedReturnValue(), ![v2 length]))
  {
    v6 = 0;
    v7 = 0;
    if (![(NEHotspotConfiguration *)self useSSIDPrefix])
    {
      goto LABEL_12;
    }
  }

  else
  {
    sSID = [(NEHotspotConfiguration *)self SSID];
    if ([sSID length] <= 0x20)
    {

      goto LABEL_16;
    }

    if (![(NEHotspotConfiguration *)self useSSIDPrefix])
    {

      goto LABEL_37;
    }

    v6 = 1;
  }

  sSIDPrefix = [(NEHotspotConfiguration *)self SSIDPrefix];
  if (![sSIDPrefix length])
  {

    v7 = 0;
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sSIDPrefix2 = [(NEHotspotConfiguration *)self SSIDPrefix];
  if ([sSIDPrefix2 length] >= 3)
  {
    sSIDPrefix3 = [(NEHotspotConfiguration *)self SSIDPrefix];
    v7 = [sSIDPrefix3 length] < 0x21;

    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v7 = 0;
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (useSSIDPrefix)
  {
    if (!v7)
    {
LABEL_37:
      if ([(NEHotspotConfiguration *)self securityType]!= 4)
      {
        securityType = [(NEHotspotConfiguration *)self securityType];
        if (securityType != 4)
        {
          if (securityType == 3)
          {
            return 101;
          }

          if ([(NEHotspotConfiguration *)self useSSIDPrefix])
          {
            return 110;
          }

          return 101;
        }

        return 106;
      }

      if ([(NEHotspotConfiguration *)self joinOnce])
      {
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v101 = objc_opt_class();
          v22 = v101;
          v23 = "%@ JoinOnce is not supported for Hotspot 2.0 Wi-Fi networks.";
          goto LABEL_85;
        }

LABEL_40:

        return 109;
      }

      hs20Settings = [(NEHotspotConfiguration *)self hs20Settings];
      if (hs20Settings)
      {
        v27 = hs20Settings;
        hs20Settings2 = [(NEHotspotConfiguration *)self hs20Settings];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          hs20Settings3 = [(NEHotspotConfiguration *)self hs20Settings];
          domainName = [hs20Settings3 domainName];
          if ([domainName length])
          {
            hs20Settings4 = [(NEHotspotConfiguration *)self hs20Settings];
            domainName2 = [hs20Settings4 domainName];
            v33 = [domainName2 length];

            if (v33 <= 0x80)
            {
              eapSettings = [(NEHotspotConfiguration *)self eapSettings];
              if (eapSettings)
              {
                v35 = eapSettings;
                eapSettings2 = [(NEHotspotConfiguration *)self eapSettings];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  validateEAPSettings = [(NEHotspotConfiguration *)self validateEAPSettings];

                  if (validateEAPSettings)
                  {
                    hs20Settings5 = [(NEHotspotConfiguration *)self hs20Settings];
                    isRoamingEnabled = [hs20Settings5 isRoamingEnabled];

                    if (isRoamingEnabled)
                    {
                      hs20Settings6 = [(NEHotspotConfiguration *)self hs20Settings];
                      roamingConsortiumOIs = [hs20Settings6 roamingConsortiumOIs];
                      if ([roamingConsortiumOIs count])
                      {
                      }

                      else
                      {
                        hs20Settings7 = [(NEHotspotConfiguration *)self hs20Settings];
                        naiRealmNames = [hs20Settings7 naiRealmNames];
                        v65 = [naiRealmNames count];

                        if (!v65)
                        {
                          v87 = ne_log_obj();
                          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            v101 = objc_opt_class();
                            v92 = v101;
                            _os_log_error_impl(&dword_1BA83C000, v87, OS_LOG_TYPE_ERROR, "%@ invalid HS2.0 configuration(roaming consortium OIs/NAI realms not provided).", buf, 0xCu);
                          }

                          return 105;
                        }
                      }
                    }

                    hs20Settings8 = [(NEHotspotConfiguration *)self hs20Settings];
                    mCCAndMNCs = [hs20Settings8 MCCAndMNCs];
                    v68 = [mCCAndMNCs count];

                    if (!v68)
                    {
                      goto LABEL_78;
                    }

                    v97 = 0u;
                    v98 = 0u;
                    v95 = 0u;
                    v96 = 0u;
                    hs20Settings9 = [(NEHotspotConfiguration *)self hs20Settings];
                    mCCAndMNCs2 = [hs20Settings9 MCCAndMNCs];

                    v71 = [mCCAndMNCs2 countByEnumeratingWithState:&v95 objects:v99 count:16];
                    if (!v71)
                    {
LABEL_114:

                      goto LABEL_78;
                    }

                    v72 = v71;
                    v73 = *v96;
                    v74 = 0x1E696A000uLL;
                    v75 = 0x1E696A000uLL;
                    v93 = *v96;
                    v94 = mCCAndMNCs2;
                    while (1)
                    {
                      v76 = 0;
LABEL_99:
                      if (*v96 != v73)
                      {
                        objc_enumerationMutation(mCCAndMNCs2);
                      }

                      v77 = *(*(&v95 + 1) + 8 * v76);
                      v78 = v74;
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0 || [v77 length] != 6)
                      {
                        break;
                      }

                      v79 = v75;
                      v80 = [*(v75 + 2824) characterSetWithCharactersInString:@"0123456789"];
                      for (i = 0; i != 6; ++i)
                      {
                        v82 = [v77 characterAtIndex:{i, v93}];
                        v83 = [v80 characterIsMember:v82];
                        if (i == 3)
                        {
                          if (v82 == 70)
                          {
                            v84 = 1;
                          }

                          else
                          {
                            v84 = v83;
                          }

                          if ((v84 & 1) == 0)
                          {
                            v85 = ne_log_obj();
                            if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_118;
                            }

LABEL_126:
                            v90 = objc_opt_class();
                            *buf = 138412290;
                            v101 = v90;
                            v91 = v90;
                            _os_log_error_impl(&dword_1BA83C000, v85, OS_LOG_TYPE_ERROR, "%@ invalid HS2.0 configuration.", buf, 0xCu);

LABEL_118:
                            mCCAndMNCs2 = v94;

                            goto LABEL_119;
                          }
                        }

                        else if ((v83 & 1) == 0)
                        {
                          v85 = ne_log_obj();
                          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_126;
                          }

                          goto LABEL_118;
                        }
                      }

                      ++v76;
                      v74 = v78;
                      v73 = v93;
                      mCCAndMNCs2 = v94;
                      v75 = v79;
                      if (v76 != v72)
                      {
                        goto LABEL_99;
                      }

                      v72 = [v94 countByEnumeratingWithState:&v95 objects:v99 count:16];
                      if (!v72)
                      {
                        goto LABEL_114;
                      }
                    }

                    v80 = ne_log_obj();
                    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                    {
                      v88 = objc_opt_class();
                      *buf = 138412290;
                      v101 = v88;
                      v89 = v88;
                      _os_log_error_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_ERROR, "%@ invalid HS2.0 configuration.", buf, 0xCu);
                    }

LABEL_119:

                    return 105;
                  }
                }

                else
                {
                }
              }

              v58 = ne_log_obj();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v101 = objc_opt_class();
                v59 = v101;
                v60 = "%@ invalid HS2.0 EAP settings.";
                goto LABEL_93;
              }

LABEL_91:

              return 104;
            }

            goto LABEL_73;
          }
        }
      }

LABEL_73:
      v48 = ne_log_obj();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v101 = objc_opt_class();
        v61 = v101;
        _os_log_error_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_ERROR, "%@ invalid HS2.0 domain name.", buf, 0xCu);
      }

      return 106;
    }
  }

  else
  {

    if (!v7)
    {
      goto LABEL_37;
    }
  }

LABEL_16:
  if (![(NEHotspotConfiguration *)self securityType])
  {
    goto LABEL_78;
  }

  if ([(NEHotspotConfiguration *)self securityType]== 2)
  {
    passphrase = [(NEHotspotConfiguration *)self passphrase];
    if ([passphrase length])
    {
      passphrase2 = [(NEHotspotConfiguration *)self passphrase];
      if ([passphrase2 length] > 7)
      {
        passphrase3 = [(NEHotspotConfiguration *)self passphrase];
        v14 = [passphrase3 length];

        if (v14 < 0x40)
        {
          goto LABEL_78;
        }

        goto LABEL_59;
      }
    }

LABEL_59:
    v42 = ne_log_obj();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v101 = objc_opt_class();
      v57 = v101;
      _os_log_error_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_ERROR, "%@ invalid WPA/WPA2 passphrase length.", buf, 0xCu);
    }

    return 102;
  }

  if ([(NEHotspotConfiguration *)self securityType]!= 1)
  {
    if ([(NEHotspotConfiguration *)self securityType]!= 3)
    {
      goto LABEL_78;
    }

    if ([(NEHotspotConfiguration *)self joinOnce])
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v101 = objc_opt_class();
        v22 = v101;
        v23 = "%@ JoinOnce is not supported for Enterprise Wi-Fi networks.";
LABEL_85:
        _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);

        goto LABEL_40;
      }

      goto LABEL_40;
    }

    eapSettings3 = [(NEHotspotConfiguration *)self eapSettings];
    if (eapSettings3)
    {
      v44 = eapSettings3;
      eapSettings4 = [(NEHotspotConfiguration *)self eapSettings];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        validateEAPSettings2 = [(NEHotspotConfiguration *)self validateEAPSettings];

        if (validateEAPSettings2)
        {
          goto LABEL_78;
        }
      }

      else
      {
      }
    }

    v58 = ne_log_obj();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v101 = objc_opt_class();
      v59 = v101;
      v60 = "%@ invalid EAP settings.";
LABEL_93:
      _os_log_error_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_ERROR, v60, buf, 0xCu);

      goto LABEL_91;
    }

    goto LABEL_91;
  }

  passphrase4 = [(NEHotspotConfiguration *)self passphrase];
  if ([passphrase4 length] && self)
  {
    v16 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
    invertedSet = [v16 invertedSet];

    passphrase5 = [(NEHotspotConfiguration *)self passphrase];
    v19 = [passphrase5 rangeOfCharacterFromSet:invertedSet];

    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      passphrase6 = [(NEHotspotConfiguration *)self passphrase];
      if ([passphrase6 length] == 10)
      {

        goto LABEL_78;
      }

      passphrase7 = [(NEHotspotConfiguration *)self passphrase];
      v50 = [passphrase7 length];

      if (v50 == 26)
      {
LABEL_78:
        lifeTimeInDays = [(NEHotspotConfiguration *)self lifeTimeInDays];
        if (lifeTimeInDays)
        {
          v52 = lifeTimeInDays;
          lifeTimeInDays2 = [(NEHotspotConfiguration *)self lifeTimeInDays];
          if ([lifeTimeInDays2 intValue] >= 366)
          {

LABEL_82:
            lifeTimeInDays = self->_lifeTimeInDays;
            self->_lifeTimeInDays = 0;

            return 100;
          }

          lifeTimeInDays3 = [(NEHotspotConfiguration *)self lifeTimeInDays];
          intValue = [lifeTimeInDays3 intValue];

          if (intValue <= 0)
          {
            goto LABEL_82;
          }
        }

        return 100;
      }

      goto LABEL_68;
    }
  }

LABEL_68:
  v47 = ne_log_obj();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v101 = objc_opt_class();
    v62 = v101;
    _os_log_error_impl(&dword_1BA83C000, v47, OS_LOG_TYPE_ERROR, "%@ invalid WEP passphrase length.", buf, 0xCu);
  }

  return 103;
}

- (uint64_t)validateEAPSettings
{
  selfCopy = self;
  v173 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return selfCopy;
  }

  v2 = 0x1E695D000uLL;
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F38BA478, &unk_1F38BA490, &unk_1F38BA4A8, &unk_1F38BA4C0, 0}];
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  eapSettings = [selfCopy eapSettings];
  supportedEAPTypes = [eapSettings supportedEAPTypes];

  v6 = [supportedEAPTypes countByEnumeratingWithState:&v156 objects:v167 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v157;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v157 != v8)
        {
          objc_enumerationMutation(supportedEAPTypes);
        }

        v10 = *(*(&v156 + 1) + 8 * i);
        if (([v3 containsObject:v10] & 1) == 0)
        {
          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v64 = objc_opt_class();
            *buf = 138412546;
            v170 = v64;
            v171 = 2112;
            v172 = v10;
            v65 = v64;
            _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "%@ invalid EAP type %@", buf, 0x16u);
          }

          goto LABEL_14;
        }
      }

      v7 = [supportedEAPTypes countByEnumeratingWithState:&v156 objects:v167 count:16];
    }

    while (v7);
  }

  eapSettings2 = [selfCopy eapSettings];
  supportedEAPTypes2 = [eapSettings2 supportedEAPTypes];
  if ([supportedEAPTypes2 containsObject:&unk_1F38BA478])
  {
  }

  else
  {
    eapSettings3 = [selfCopy eapSettings];
    isTLSClientCertificateRequired = [eapSettings3 isTLSClientCertificateRequired];

    if (!isTLSClientCertificateRequired)
    {
      goto LABEL_42;
    }
  }

  eapSettings4 = [selfCopy eapSettings];
  identityReference = [eapSettings4 identityReference];

  if (!identityReference)
  {
    supportedEAPTypes = ne_log_obj();
    if (!os_log_type_enabled(supportedEAPTypes, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v58 = objc_opt_class();
    *buf = 138412290;
    v170 = v58;
    v56 = v58;
    v57 = "%@ identity not provided";
    goto LABEL_89;
  }

  eapSettings5 = [selfCopy eapSettings];
  clientTrustChainReference = [eapSettings5 clientTrustChainReference];

  result = 0;
  eapSettings6 = [selfCopy eapSettings];
  identityReference2 = [eapSettings6 identityReference];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_49;
  }

  eapSettings7 = [selfCopy eapSettings];
  identityReference3 = [eapSettings7 identityReference];
  v24 = [identityReference3 length];

  if (!v24)
  {
LABEL_49:
    v59 = ne_log_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v107 = objc_opt_class();
      *buf = 138412290;
      v170 = v107;
      v108 = v107;
      _os_log_error_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_ERROR, "%@ configuration with EAP-TLS type must have identity reference.", buf, 0xCu);
    }

    v30 = 0;
    goto LABEL_52;
  }

  v25 = MEMORY[0x1E695DF90];
  eapSettings8 = [selfCopy eapSettings];
  identityReference4 = [eapSettings8 identityReference];
  v28 = *MEMORY[0x1E695E4D0];
  v29 = *MEMORY[0x1E697AFF8];
  v154 = *MEMORY[0x1E697B328];
  obj = *MEMORY[0x1E697B3C8];
  v30 = [v25 dictionaryWithObjectsAndKeys:{identityReference4, *MEMORY[0x1E697B3C8], *MEMORY[0x1E695E4D0], *MEMORY[0x1E697B328], *MEMORY[0x1E697B010], *MEMORY[0x1E697AFF8], 0}];

  if (SecItemCopyMatching(v30, &result) || !result)
  {
    v59 = ne_log_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v85 = objc_opt_class();
      *buf = 138412290;
      v170 = v85;
      v86 = v85;
      v87 = "%@ failed to find the identity item in the keychain.";
LABEL_87:
      _os_log_error_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_ERROR, v87, buf, 0xCu);
    }

LABEL_52:

    supportedEAPTypes = ne_log_obj();
    if (!os_log_type_enabled(supportedEAPTypes, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v106 = objc_opt_class();
    *buf = 138412290;
    v170 = v106;
    v56 = v106;
    v57 = "%@ invalid identity reference";
    goto LABEL_89;
  }

  v31 = CFGetTypeID(result);
  if (v31 != SecIdentityGetTypeID())
  {
    v59 = ne_log_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v105 = objc_opt_class();
      *buf = 138412290;
      v170 = v105;
      v86 = v105;
      v87 = "%@ failed to find valid identity item in the keychain.";
      goto LABEL_87;
    }

    goto LABEL_52;
  }

  if (clientTrustChainReference)
  {
    goto LABEL_23;
  }

  v110 = result;
  certificateRef[0] = 0;
  *trust = 0;
  v161 = 0;
  BasicX509 = SecPolicyCreateBasicX509();
  if (BasicX509)
  {
    v112 = BasicX509;
    if (SecIdentityCopyCertificate(v110, certificateRef) || !certificateRef[0])
    {
      v115 = ne_log_obj();
      if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_149;
      }

      v129 = objc_opt_class();
      *buf = 138412290;
      v170 = v129;
      v117 = v129;
      v118 = "%@ SecIdentityCopyCertificate() failed";
    }

    else
    {
      v113 = CFArrayCreate(0, certificateRef, 1, MEMORY[0x1E695E9C0]);
      CFRelease(certificateRef[0]);
      if (v113)
      {
        v114 = SecTrustCreateWithCertificates(v113, v112, trust);
        CFRelease(v113);
        if (v114)
        {
          v115 = ne_log_obj();
          v2 = 0x1E695D000;
          if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_149;
          }

          v116 = objc_opt_class();
          *buf = 138412290;
          v170 = v116;
          v117 = v116;
          v118 = "%@ SecTrustCreateWithCertificates() failed";
        }

        else if (MEMORY[0x1BFAFA1B0](*trust, &v161))
        {
          v115 = ne_log_obj();
          v2 = 0x1E695D000;
          if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_149;
          }

          v135 = objc_opt_class();
          *buf = 138412290;
          v170 = v135;
          v117 = v135;
          v118 = "%@ SecTrustEvaluate() failed";
        }

        else
        {
          CertificateCount = SecTrustGetCertificateCount(*trust);
          if (CertificateCount > 1)
          {
            v115 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v28, *MEMORY[0x1E697B320], *MEMORY[0x1E697B000], v29, 0}];
            v153 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v151 = *MEMORY[0x1E697B3D0];
            v146 = 1;
            while (1)
            {
              cf = 0;
              [v115 setObject:SecTrustGetCertificateAtIndex(*trust forKeyedSubscript:v146), v151];
              if (SecItemCopyMatching(v115, &cf))
              {
                break;
              }

              [v153 addObject:cf];
              CFRelease(cf);
              if (CertificateCount == ++v146)
              {
                eapSettings9 = [selfCopy eapSettings];
                [eapSettings9 setClientTrustChainReference:v153];
                goto LABEL_147;
              }
            }

            eapSettings9 = ne_log_obj();
            if (os_log_type_enabled(eapSettings9, OS_LOG_TYPE_ERROR))
            {
              v149 = objc_opt_class();
              *buf = 138412290;
              v170 = v149;
              v150 = v149;
              _os_log_error_impl(&dword_1BA83C000, eapSettings9, OS_LOG_TYPE_ERROR, "%@ SecItemCopyMatching() failed", buf, 0xCu);
            }

LABEL_147:

            goto LABEL_148;
          }

          v115 = ne_log_obj();
          if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
LABEL_148:
            v2 = 0x1E695D000;
LABEL_149:

            CFRelease(v112);
            if (*trust)
            {
              CFRelease(*trust);
            }

            goto LABEL_23;
          }

          v143 = objc_opt_class();
          *buf = 138412290;
          v170 = v143;
          v117 = v143;
          v118 = "%@ failed to find the trust chain for the client certificate";
        }
      }

      else
      {
        v115 = ne_log_obj();
        if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_149;
        }

        v130 = objc_opt_class();
        *buf = 138412290;
        v170 = v130;
        v117 = v130;
        v118 = "%@ failed to allocate certificate array";
      }
    }

    _os_log_error_impl(&dword_1BA83C000, v115, OS_LOG_TYPE_ERROR, v118, buf, 0xCu);

    goto LABEL_148;
  }

  v128 = ne_log_obj();
  if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
  {
    v144 = objc_opt_class();
    *buf = 138412290;
    v170 = v144;
    v145 = v144;
    _os_log_error_impl(&dword_1BA83C000, v128, OS_LOG_TYPE_ERROR, "%@ SecPolicyCreateBasicX509 failed", buf, 0xCu);
  }

LABEL_23:
  if (result)
  {
    CFRelease(result);
  }

  if (!clientTrustChainReference)
  {
    goto LABEL_41;
  }

  eapSettings10 = [selfCopy eapSettings];
  clientTrustChainReference2 = [eapSettings10 clientTrustChainReference];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_101;
  }

  eapSettings11 = [selfCopy eapSettings];
  clientTrustChainReference3 = [eapSettings11 clientTrustChainReference];
  v36 = [clientTrustChainReference3 count];

  if (!v36)
  {
LABEL_101:
    v37 = ne_log_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v119 = objc_opt_class();
      *trust = 138412290;
      *&trust[4] = v119;
      v120 = v119;
      _os_log_error_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_ERROR, "%@ invalid client trust chain", trust, 0xCu);
    }

LABEL_133:

    supportedEAPTypes = ne_log_obj();
    if (!os_log_type_enabled(supportedEAPTypes, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v141 = objc_opt_class();
    *buf = 138412290;
    v170 = v141;
    v56 = v141;
    v57 = "%@ invalid client trust chain";
    goto LABEL_89;
  }

  v37 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v28, v154, *MEMORY[0x1E697B000], v29, 0}];
  *certificateRef = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  eapSettings12 = [selfCopy eapSettings];
  clientTrustChainReference4 = [eapSettings12 clientTrustChainReference];

  v40 = [clientTrustChainReference4 countByEnumeratingWithState:certificateRef objects:buf count:16];
  if (!v40)
  {
    goto LABEL_40;
  }

  v41 = v40;
  v42 = *v164;
  while (2)
  {
    for (j = 0; j != v41; ++j)
    {
      if (*v164 != v42)
      {
        objc_enumerationMutation(clientTrustChainReference4);
      }

      v44 = *(certificateRef[1] + j);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v44 length])
      {
        goto LABEL_132;
      }

      cf = 0;
      [v37 setObject:v44 forKeyedSubscript:obj];
      if (SecItemCopyMatching(v37, &cf))
      {
        v136 = ne_log_obj();
        if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
        {
          v137 = objc_opt_class();
          *trust = 138412290;
          *&trust[4] = v137;
          v138 = v137;
          v139 = "%@ failed to find the certificate item in the keychain.";
          goto LABEL_152;
        }

LABEL_131:

LABEL_132:
        goto LABEL_133;
      }

      if (!cf)
      {
        v136 = ne_log_obj();
        if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
        {
          v140 = objc_opt_class();
          *trust = 138412290;
          *&trust[4] = v140;
          v138 = v140;
          v139 = "%@ found nil certificate item in the keychain.";
          goto LABEL_152;
        }

        goto LABEL_131;
      }

      v45 = CFGetTypeID(cf);
      TypeID = SecCertificateGetTypeID();
      CFRelease(cf);
      if (v45 != TypeID)
      {
        v136 = ne_log_obj();
        if (!os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_131;
        }

        v148 = objc_opt_class();
        *trust = 138412290;
        *&trust[4] = v148;
        v138 = v148;
        v139 = "%@ failed to find valid certificate item in the keychain.";
LABEL_152:
        _os_log_error_impl(&dword_1BA83C000, v136, OS_LOG_TYPE_ERROR, v139, trust, 0xCu);

        goto LABEL_131;
      }
    }

    v41 = [clientTrustChainReference4 countByEnumeratingWithState:certificateRef objects:buf count:16];
    if (v41)
    {
      continue;
    }

    break;
  }

LABEL_40:

  v2 = 0x1E695D000;
LABEL_41:
  eapSettings13 = [selfCopy eapSettings];
  [eapSettings13 setTlsClientCertificateRequired:1];

LABEL_42:
  eapSettings14 = [selfCopy eapSettings];
  trustedServerCertificateReferences = [eapSettings14 trustedServerCertificateReferences];
  v50 = [trustedServerCertificateReferences count];

  eapSettings15 = [selfCopy eapSettings];
  v52 = eapSettings15;
  if (!v50)
  {
    trustedServerNames = [eapSettings15 trustedServerNames];
    v62 = [trustedServerNames count];

    if (!v62)
    {
      supportedEAPTypes = ne_log_obj();
      if (!os_log_type_enabled(supportedEAPTypes, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      v63 = objc_opt_class();
      *buf = 138412290;
      v170 = v63;
      v56 = v63;
      v57 = "%@ EAP settings must have either trusted server certificates or trusted server names configured.";
      goto LABEL_89;
    }

    goto LABEL_72;
  }

  trustedServerCertificateReferences2 = [eapSettings15 trustedServerCertificateReferences];
  v54 = [trustedServerCertificateReferences2 count];

  if (v54 < 0xB)
  {
    v66 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E695E4D0], *MEMORY[0x1E697B328], *MEMORY[0x1E697B000], *MEMORY[0x1E697AFF8], 0}];
    *certificateRef = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    eapSettings16 = [selfCopy eapSettings];
    trustedServerCertificateReferences3 = [eapSettings16 trustedServerCertificateReferences];

    v69 = [trustedServerCertificateReferences3 countByEnumeratingWithState:certificateRef objects:buf count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v164;
      v72 = *MEMORY[0x1E697B3C8];
LABEL_61:
      v73 = 0;
      while (1)
      {
        if (*v164 != v71)
        {
          objc_enumerationMutation(trustedServerCertificateReferences3);
        }

        v74 = *(certificateRef[1] + v73);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v74 length])
        {
          break;
        }

        cf = 0;
        [v66 setObject:v74 forKeyedSubscript:v72];
        if (SecItemCopyMatching(v66, &cf))
        {
          v121 = ne_log_obj();
          if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
          {
            v122 = objc_opt_class();
            *trust = 138412290;
            *&trust[4] = v122;
            v123 = v122;
            v124 = "%@ failed to find the certificate item in the keychain.";
            goto LABEL_136;
          }

LABEL_108:

          break;
        }

        if (!cf)
        {
          v121 = ne_log_obj();
          if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
          {
            v125 = objc_opt_class();
            *trust = 138412290;
            *&trust[4] = v125;
            v123 = v125;
            v124 = "%@ found nil certificate item in the keychain.";
            goto LABEL_136;
          }

          goto LABEL_108;
        }

        v75 = CFGetTypeID(cf);
        v76 = SecCertificateGetTypeID();
        CFRelease(cf);
        if (v75 != v76)
        {
          v121 = ne_log_obj();
          if (!os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_108;
          }

          v142 = objc_opt_class();
          *trust = 138412290;
          *&trust[4] = v142;
          v123 = v142;
          v124 = "%@ failed to find valid certificate item in the keychain.";
LABEL_136:
          _os_log_error_impl(&dword_1BA83C000, v121, OS_LOG_TYPE_ERROR, v124, trust, 0xCu);

          goto LABEL_108;
        }

        if (v70 == ++v73)
        {
          v70 = [trustedServerCertificateReferences3 countByEnumeratingWithState:certificateRef objects:buf count:16];
          if (v70)
          {
            goto LABEL_61;
          }

          goto LABEL_71;
        }
      }

      supportedEAPTypes = ne_log_obj();
      if (!os_log_type_enabled(supportedEAPTypes, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      v126 = objc_opt_class();
      *buf = 138412290;
      v170 = v126;
      v56 = v126;
      v57 = "%@ invalid trusted server certificate references";
      goto LABEL_89;
    }

LABEL_71:

    v2 = 0x1E695D000uLL;
LABEL_72:
    eapSettings17 = [selfCopy eapSettings];
    supportedEAPTypes3 = [eapSettings17 supportedEAPTypes];
    v79 = [supportedEAPTypes3 containsObject:&unk_1F38BA478];

    if (v79)
    {
      goto LABEL_73;
    }

    eapSettings18 = [selfCopy eapSettings];
    username = [eapSettings18 username];
    if ([username length])
    {
      eapSettings19 = [selfCopy eapSettings];
      username2 = [eapSettings19 username];
      v92 = [username2 length];

      if (v92 < 0xFE)
      {
        eapSettings20 = [selfCopy eapSettings];
        password = [eapSettings20 password];
        if ([password length])
        {
          eapSettings21 = [selfCopy eapSettings];
          password2 = [eapSettings21 password];
          v97 = [password2 length];

          if (v97 < 0x41)
          {
            eapSettings22 = [selfCopy eapSettings];
            supportedEAPTypes4 = [eapSettings22 supportedEAPTypes];
            v100 = [supportedEAPTypes4 containsObject:&unk_1F38BA490];

            if (v100)
            {
              supportedEAPTypes = [*(v2 + 4056) setWithObjects:{&unk_1F38BA4D8, &unk_1F38BA4F0, &unk_1F38BA508, &unk_1F38BA520, &unk_1F38BA538, 0}];
              v101 = MEMORY[0x1E696AD98];
              eapSettings23 = [selfCopy eapSettings];
              v103 = [v101 numberWithInteger:{objc_msgSend(eapSettings23, "ttlsInnerAuthenticationType")}];
              v104 = [supportedEAPTypes containsObject:v103];

              if (!v104)
              {
                v13 = ne_log_obj();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  v131 = objc_opt_class();
                  v132 = v131;
                  eapSettings24 = [selfCopy eapSettings];
                  ttlsInnerAuthenticationType = [eapSettings24 ttlsInnerAuthenticationType];
                  *buf = 138412546;
                  v170 = v131;
                  v171 = 2048;
                  v172 = ttlsInnerAuthenticationType;
                  _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "%@ invalid EAP type %ld", buf, 0x16u);
                }

LABEL_14:

                goto LABEL_53;
              }
            }

LABEL_73:
            supportedEAPTypes = [*(v2 + 4056) setWithObjects:{&unk_1F38BA4D8, &unk_1F38BA4F0, &unk_1F38BA508, 0}];
            v80 = MEMORY[0x1E696AD98];
            eapSettings25 = [selfCopy eapSettings];
            v82 = [v80 numberWithInteger:{objc_msgSend(eapSettings25, "preferredTLSVersion")}];
            v83 = [supportedEAPTypes containsObject:v82];

            if ((v83 & 1) == 0)
            {
              eapSettings26 = [selfCopy eapSettings];
              [eapSettings26 setPreferredTLSVersion:2];
            }

            selfCopy = 1;
            goto LABEL_54;
          }
        }

        else
        {
        }

        supportedEAPTypes = ne_log_obj();
        if (!os_log_type_enabled(supportedEAPTypes, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        v127 = objc_opt_class();
        *buf = 138412290;
        v170 = v127;
        v56 = v127;
        v57 = "%@ invalid password in EAP settings";
LABEL_89:
        _os_log_error_impl(&dword_1BA83C000, supportedEAPTypes, OS_LOG_TYPE_ERROR, v57, buf, 0xCu);

        goto LABEL_53;
      }
    }

    else
    {
    }

    supportedEAPTypes = ne_log_obj();
    if (!os_log_type_enabled(supportedEAPTypes, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v109 = objc_opt_class();
    *buf = 138412290;
    v170 = v109;
    v56 = v109;
    v57 = "%@ invalid username in EAP settings";
    goto LABEL_89;
  }

  supportedEAPTypes = ne_log_obj();
  if (os_log_type_enabled(supportedEAPTypes, OS_LOG_TYPE_ERROR))
  {
    v55 = objc_opt_class();
    *buf = 138412290;
    v170 = v55;
    v56 = v55;
    v57 = "%@ too many trusted server certificates";
    goto LABEL_89;
  }

LABEL_53:
  selfCopy = 0;
LABEL_54:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sSID = [(NEHotspotConfiguration *)self SSID];
  [coderCopy encodeObject:sSID forKey:@"SSID"];

  sSIDPrefix = [(NEHotspotConfiguration *)self SSIDPrefix];
  [coderCopy encodeObject:sSIDPrefix forKey:@"SSIDPrefix"];

  [coderCopy encodeBool:-[NEHotspotConfiguration useSSIDPrefix](self forKey:{"useSSIDPrefix"), @"UseSSIDPrefix"}];
  [coderCopy encodeInt64:-[NEHotspotConfiguration securityType](self forKey:{"securityType"), @"SecurityType"}];
  lifeTimeInDays = [(NEHotspotConfiguration *)self lifeTimeInDays];
  [coderCopy encodeObject:lifeTimeInDays forKey:@"LifeTimeInDays"];

  [coderCopy encodeBool:-[NEHotspotConfiguration joinOnce](self forKey:{"joinOnce"), @"JoinOnce"}];
  [coderCopy encodeBool:-[NEHotspotConfiguration isAccessory](self forKey:{"isAccessory"), @"IsAccessory"}];
  [coderCopy encodeBool:-[NEHotspotConfiguration hidden](self forKey:{"hidden"), @"hidden"}];
  passphrase = [(NEHotspotConfiguration *)self passphrase];
  [coderCopy encodeObject:passphrase forKey:@"passphrase"];

  eapSettings = [(NEHotspotConfiguration *)self eapSettings];
  [coderCopy encodeObject:eapSettings forKey:@"EAPSettings"];

  hs20Settings = [(NEHotspotConfiguration *)self hs20Settings];
  [coderCopy encodeObject:hs20Settings forKey:@"HSSettings"];
}

- (NEHotspotConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NEHotspotConfiguration *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSID"];
    SSID = v5->_SSID;
    v5->_SSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSIDPrefix"];
    SSIDPrefix = v5->_SSIDPrefix;
    v5->_SSIDPrefix = v8;

    v5->_useSSIDPrefix = [coderCopy decodeBoolForKey:@"UseSSIDPrefix"];
    v5->_securityType = [coderCopy decodeInt64ForKey:@"SecurityType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LifeTimeInDays"];
    lifeTimeInDays = v5->_lifeTimeInDays;
    v5->_lifeTimeInDays = v10;

    v5->_joinOnce = [coderCopy decodeBoolForKey:@"JoinOnce"];
    v5->_isAccessory = [coderCopy decodeBoolForKey:@"IsAccessory"];
    v5->_hidden = [coderCopy decodeBoolForKey:@"hidden"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passphrase"];
    passphrase = v5->_passphrase;
    v5->_passphrase = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EAPSettings"];
    eapSettings = v5->_eapSettings;
    v5->_eapSettings = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HSSettings"];
    hs20Settings = v5->_hs20Settings;
    v5->_hs20Settings = v16;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (![(NEHotspotConfiguration *)self securityType])
  {
    useSSIDPrefix = [(NEHotspotConfiguration *)self useSSIDPrefix];
    v14 = [objc_opt_class() allocWithZone:zone];
    if (useSSIDPrefix)
    {
      sSIDPrefix = [(NEHotspotConfiguration *)self SSIDPrefix];
      v15 = [v14 initWithSSIDPrefix:sSIDPrefix];
    }

    else
    {
      sSIDPrefix = [(NEHotspotConfiguration *)self SSID];
      v15 = [v14 initWithSSID:sSIDPrefix];
    }

    eapSettings = v15;
    goto LABEL_20;
  }

  if ([(NEHotspotConfiguration *)self securityType]== 1)
  {
    useSSIDPrefix2 = [(NEHotspotConfiguration *)self useSSIDPrefix];
    v6 = [objc_opt_class() allocWithZone:zone];
    if (useSSIDPrefix2)
    {
      sSIDPrefix = [(NEHotspotConfiguration *)self SSIDPrefix];
      passphrase = [(NEHotspotConfiguration *)self passphrase];
      v9 = v6;
      v10 = sSIDPrefix;
      v11 = passphrase;
      v12 = 1;
LABEL_10:
      v18 = [v9 initWithSSIDPrefix:v10 passphrase:v11 isWEP:v12];
LABEL_19:
      eapSettings = v18;

LABEL_20:
      goto LABEL_21;
    }

    sSIDPrefix = [(NEHotspotConfiguration *)self SSID];
    passphrase = [(NEHotspotConfiguration *)self passphrase];
    v20 = v6;
    v21 = sSIDPrefix;
    v22 = passphrase;
    v23 = 1;
    goto LABEL_18;
  }

  if ([(NEHotspotConfiguration *)self securityType]== 2)
  {
    useSSIDPrefix3 = [(NEHotspotConfiguration *)self useSSIDPrefix];
    v17 = [objc_opt_class() allocWithZone:zone];
    if (useSSIDPrefix3)
    {
      sSIDPrefix = [(NEHotspotConfiguration *)self SSIDPrefix];
      passphrase = [(NEHotspotConfiguration *)self passphrase];
      v9 = v17;
      v10 = sSIDPrefix;
      v11 = passphrase;
      v12 = 0;
      goto LABEL_10;
    }

    sSIDPrefix = [(NEHotspotConfiguration *)self SSID];
    passphrase = [(NEHotspotConfiguration *)self passphrase];
    v20 = v17;
    v21 = sSIDPrefix;
    v22 = passphrase;
    v23 = 0;
LABEL_18:
    v18 = [v20 initWithSSID:v21 passphrase:v22 isWEP:v23];
    goto LABEL_19;
  }

  if ([(NEHotspotConfiguration *)self securityType]!= 3)
  {
    if ([(NEHotspotConfiguration *)self securityType]!= 4)
    {
      eapSettings = 0;
      goto LABEL_21;
    }

    v27 = [objc_opt_class() allocWithZone:zone];
    sSIDPrefix = [(NEHotspotConfiguration *)self hs20Settings];
    passphrase = [(NEHotspotConfiguration *)self eapSettings];
    v18 = [v27 initWithHS20Settings:sSIDPrefix eapSettings:passphrase];
    goto LABEL_19;
  }

  eapSettings = [(NEHotspotConfiguration *)self eapSettings];

  if (eapSettings)
  {
    v24 = [objc_opt_class() allocWithZone:zone];
    sSIDPrefix = [(NEHotspotConfiguration *)self SSID];
    passphrase = [(NEHotspotConfiguration *)self eapSettings];
    v18 = [v24 initWithSSID:sSIDPrefix eapSettings:passphrase];
    goto LABEL_19;
  }

LABEL_21:
  [eapSettings setUseSSIDPrefix:{-[NEHotspotConfiguration useSSIDPrefix](self, "useSSIDPrefix")}];
  [eapSettings setSecurityType:{-[NEHotspotConfiguration securityType](self, "securityType")}];
  lifeTimeInDays = [(NEHotspotConfiguration *)self lifeTimeInDays];
  [eapSettings setLifeTimeInDays:lifeTimeInDays];

  [eapSettings setJoinOnce:{-[NEHotspotConfiguration joinOnce](self, "joinOnce")}];
  [eapSettings setHidden:{-[NEHotspotConfiguration hidden](self, "hidden")}];
  return eapSettings;
}

- (NEHotspotConfiguration)initWithSSIDPrefix:(NSString *)SSIDPrefix passphrase:(NSString *)passphrase isWEP:(BOOL)isWEP
{
  v5 = isWEP;
  v8 = SSIDPrefix;
  v9 = passphrase;
  v19.receiver = self;
  v19.super_class = NEHotspotConfiguration;
  v10 = [(NEHotspotConfiguration *)&v19 init];
  v11 = v10;
  if (v10)
  {
    SSID = v10->_SSID;
    v10->_SSID = &stru_1F3880810;

    v13 = [(NSString *)v8 copy];
    v14 = v11->_SSIDPrefix;
    v11->_SSIDPrefix = v13;

    if (v5)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    v11->_securityType = v15;
    v16 = [(NSString *)v9 copy];
    v17 = v11->_passphrase;
    v11->_passphrase = v16;

    v11->_useSSIDPrefix = 1;
  }

  return v11;
}

- (NEHotspotConfiguration)initWithSSIDPrefix:(NSString *)SSIDPrefix
{
  v4 = SSIDPrefix;
  v11.receiver = self;
  v11.super_class = NEHotspotConfiguration;
  v5 = [(NEHotspotConfiguration *)&v11 init];
  v6 = v5;
  if (v5)
  {
    SSID = v5->_SSID;
    v5->_SSID = &stru_1F3880810;

    v8 = [(NSString *)v4 copy];
    v9 = v6->_SSIDPrefix;
    v6->_SSIDPrefix = v8;

    v6->_securityType = 0;
    v6->_useSSIDPrefix = 1;
  }

  return v6;
}

- (NEHotspotConfiguration)initWithHS20Settings:(NEHotspotHS20Settings *)hs20Settings eapSettings:(NEHotspotEAPSettings *)eapSettings
{
  v6 = hs20Settings;
  v7 = eapSettings;
  v17.receiver = self;
  v17.super_class = NEHotspotConfiguration;
  v8 = [(NEHotspotConfiguration *)&v17 init];
  v9 = v8;
  if (v8)
  {
    SSID = v8->_SSID;
    v8->_SSID = &stru_1F3880810;

    v9->_securityType = 4;
    v11 = [(NEHotspotEAPSettings *)v7 copy];
    v12 = v9->_eapSettings;
    v9->_eapSettings = v11;

    v13 = v9->_eapSettings;
    if (v13)
    {
      [(NEHotspotEAPSettings *)v13 setPreferredTLSVersion:2];
      [(NEHotspotEAPSettings *)v9->_eapSettings setTlsClientCertificateRequired:0];
    }

    v14 = [(NEHotspotHS20Settings *)v6 copy];
    v15 = v9->_hs20Settings;
    v9->_hs20Settings = v14;
  }

  return v9;
}

- (NEHotspotConfiguration)initWithSSID:(NSString *)SSID eapSettings:(NEHotspotEAPSettings *)eapSettings
{
  v6 = SSID;
  v7 = eapSettings;
  v15.receiver = self;
  v15.super_class = NEHotspotConfiguration;
  v8 = [(NEHotspotConfiguration *)&v15 init];
  if (v8)
  {
    v9 = [(NSString *)v6 copy];
    v10 = v8->_SSID;
    v8->_SSID = v9;

    v8->_securityType = 3;
    v11 = [(NEHotspotEAPSettings *)v7 copy];
    v12 = v8->_eapSettings;
    v8->_eapSettings = v11;

    v13 = v8->_eapSettings;
    if (v13)
    {
      [(NEHotspotEAPSettings *)v13 setPreferredTLSVersion:2];
      [(NEHotspotEAPSettings *)v8->_eapSettings setTlsClientCertificateRequired:0];
    }
  }

  return v8;
}

- (NEHotspotConfiguration)initWithSSID:(NSString *)SSID passphrase:(NSString *)passphrase isWEP:(BOOL)isWEP
{
  v5 = isWEP;
  v8 = SSID;
  v9 = passphrase;
  v18.receiver = self;
  v18.super_class = NEHotspotConfiguration;
  v10 = [(NEHotspotConfiguration *)&v18 init];
  if (v10)
  {
    v11 = [(NSString *)v8 copy];
    v12 = v10->_SSID;
    v10->_SSID = v11;

    SSIDPrefix = v10->_SSIDPrefix;
    v10->_SSIDPrefix = &stru_1F3880810;

    v14 = 1;
    if (!v5)
    {
      v14 = 2;
    }

    v10->_securityType = v14;
    v15 = [(NSString *)v9 copy];
    v16 = v10->_passphrase;
    v10->_passphrase = v15;

    v10->_useSSIDPrefix = 0;
  }

  return v10;
}

- (NEHotspotConfiguration)initWithSSID:(NSString *)SSID
{
  v4 = SSID;
  v10.receiver = self;
  v10.super_class = NEHotspotConfiguration;
  v5 = [(NEHotspotConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [(NSString *)v4 copy];
    v7 = v5->_SSID;
    v5->_SSID = v6;

    SSIDPrefix = v5->_SSIDPrefix;
    v5->_SSIDPrefix = &stru_1F3880810;

    v5->_securityType = 0;
    v5->_useSSIDPrefix = 0;
  }

  return v5;
}

- (NEHotspotConfiguration)init
{
  v3.receiver = self;
  v3.super_class = NEHotspotConfiguration;
  result = [(NEHotspotConfiguration *)&v3 init];
  if (result)
  {
    result->_securityType = 0;
    *&result->_joinOnce = 0;
    result->_useSSIDPrefix = 0;
  }

  return result;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  sSID = [(NEHotspotConfiguration *)self SSID];
  v5 = [sSID length];

  if (v5)
  {
    sSID2 = [(NEHotspotConfiguration *)self SSID];
    [v3 appendPrettyObject:sSID2 withName:@"SSID" andIndent:0 options:0];
  }

  sSIDPrefix = [(NEHotspotConfiguration *)self SSIDPrefix];
  v8 = [sSIDPrefix length];

  if (v8)
  {
    sSIDPrefix2 = [(NEHotspotConfiguration *)self SSIDPrefix];
    [v3 appendPrettyObject:sSIDPrefix2 withName:@"SSID Prefix" andIndent:0 options:0];
  }

  lifeTimeInDays = [(NEHotspotConfiguration *)self lifeTimeInDays];
  [v3 appendFormat:@"\tLife Time : %@ Days\n", lifeTimeInDays];

  securityType = [(NEHotspotConfiguration *)self securityType];
  if (securityType > 2)
  {
    if (securityType == 3)
    {
      [v3 appendPrettyObject:@"WPA/WPA2 Enterprise" withName:@"Security Type" andIndent:0 options:0];
      eapSettings = [(NEHotspotConfiguration *)self eapSettings];
      v13 = @"EAP Configuration";
    }

    else
    {
      if (securityType != 4)
      {
        goto LABEL_12;
      }

      [v3 appendPrettyObject:@"Hotspot 2.0" withName:@"Security Type" andIndent:0 options:0];
      eapSettings2 = [(NEHotspotConfiguration *)self eapSettings];
      [v3 appendPrettyObject:eapSettings2 withName:@"EAP Configuration" andIndent:0 options:0];

      eapSettings = [(NEHotspotConfiguration *)self hs20Settings];
      v13 = @"Hotspot 2.0 Configuration";
    }

    v15 = v3;
    v16 = eapSettings;
    v17 = 0;
    goto LABEL_17;
  }

  if (securityType == 1)
  {
    [v3 appendPrettyObject:@"WEP" withName:@"Security Type" andIndent:0 options:0];
    eapSettings = [(NEHotspotConfiguration *)self passphrase];
    v13 = @"WEP Passphrase";
    goto LABEL_14;
  }

  if (securityType != 2)
  {
LABEL_12:
    [v3 appendPrettyObject:@"Open" withName:@"Security Type" andIndent:0 options:0];
    goto LABEL_18;
  }

  [v3 appendPrettyObject:@"WPA/WPA2 Personal" withName:@"Security Type" andIndent:0 options:0];
  eapSettings = [(NEHotspotConfiguration *)self passphrase];
  v13 = @"WPA/WPA2 Personal Passphrase";
LABEL_14:
  v15 = v3;
  v16 = eapSettings;
  v17 = 3;
LABEL_17:
  [v15 appendPrettyObject:v16 withName:v13 andIndent:0 options:v17];

LABEL_18:

  return v3;
}

@end