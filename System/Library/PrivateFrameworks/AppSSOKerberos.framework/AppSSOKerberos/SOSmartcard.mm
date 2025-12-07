@interface SOSmartcard
+ (BOOL)pollSmartcardForIdentityWithPersistentRef:(id)ref tokenID:(id)d;
+ (__SecIdentity)getLocalAuthIdentityForCert:(id)cert withLAContext:(id)context;
+ (id)availableSmartCards;
+ (id)searchForCachedIdentityPersistentRef:(id)ref tokenID:(id)d;
+ (id)searchForCachedIdentityWithSerial:(__CFData *)serial withIssuer:(__CFData *)issuer withTokenID:(id)d;
+ (int)getIdentityForPersistentRef:(__CFData *)ref identityToReturn:(__SecIdentity *)return;
+ (void)availableSmartCards;
@end

@implementation SOSmartcard

+ (__SecIdentity)getLocalAuthIdentityForCert:(id)cert withLAContext:(id)context
{
  v48[1] = *MEMORY[0x277D85DE8];
  certCopy = cert;
  contextCopy = context;
  result = 0;
  v6 = SO_LOG_SOSmartcard(contextCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
    v43 = 2112;
    *v44 = self;
    _os_log_impl(&dword_24006C000, v6, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v7 = 0;
  v8 = 0;
  v9 = *MEMORY[0x277CDBEC0];
  v34 = *MEMORY[0x277CDC5F0];
  v36 = *MEMORY[0x277CDC5A0];
  v35 = *MEMORY[0x277CDC568];
  while (1)
  {
    v10 = v7;
    v11 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v47 = v11;
    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AppSSOKerberos"];
    v13 = [v12 localizedStringForKey:@"SIGN_IN_LOWERCASE_TEXT" value:&stru_285206D08 table:0];
    v48[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];

    v15 = [certCopy objectForKeyedSubscript:v9];
    v39 = v10;
    v16 = [contextCopy evaluateAccessControl:v15 operation:3 options:v14 error:&v39];
    v7 = v39;

    v18 = SO_LOG_SOSmartcard(v17);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (!v7)
    {
      selfCopy2 = self;
      if (v19)
      {
        *buf = 136315394;
        v42 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
        v43 = 2112;
        *v44 = self;
        _os_log_impl(&dword_24006C000, v18, OS_LOG_TYPE_DEFAULT, "%s evaluateAccessControl was successful on %@", buf, 0x16u);
      }

      v45[0] = v34;
      v26 = [certCopy objectForKeyedSubscript:?];
      v46[0] = v26;
      v46[1] = contextCopy;
      v45[1] = v36;
      v45[2] = v35;
      v46[2] = MEMORY[0x277CBEC38];
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];

      v27 = SecItemCopyMatching(v24, &result);
      if (v27)
      {
        v28 = v27;
        v29 = SO_LOG_SOSmartcard(v27);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v42 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
          v43 = 1024;
          *v44 = v28;
          *&v44[4] = 2112;
          *&v44[6] = self;
          _os_log_impl(&dword_24006C000, v29, OS_LOG_TYPE_DEFAULT, "%s retrieving identity failed with error %d on %@", buf, 0x1Cu);
        }
      }

      goto LABEL_28;
    }

    selfCopy2 = self;
    if (v19)
    {
      code = [v7 code];
      *buf = 136315650;
      v42 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
      v43 = 2048;
      *v44 = code;
      *&v44[8] = 2112;
      *&v44[10] = self;
      _os_log_impl(&dword_24006C000, v18, OS_LOG_TYPE_DEFAULT, "%s evaluateAccessControl failed with error %ld on %@", buf, 0x20u);
    }

    code2 = [v7 code];
    if (code2 != -1004)
    {
      break;
    }

    v23 = SO_LOG_SOSmartcard(-1004);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v42 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
      v43 = 1026;
      *v44 = v8 + 1;
      *&v44[4] = 2112;
      *&v44[6] = self;
      _os_log_impl(&dword_24006C000, v23, OS_LOG_TYPE_DEFAULT, "%s Screen may be locked, retry %{public}d on %@", buf, 0x1Cu);
    }

    if (v8 >= 4)
    {
      goto LABEL_29;
    }

    [MEMORY[0x277CCACC8] sleepForTimeInterval:2.0];

    ++v8;
  }

  if (code2 == -7 || code2 == -3)
  {
    v24 = SO_LOG_SOSmartcard(code2);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315394;
    v42 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
    v43 = 2112;
    *v44 = self;
    v25 = "%s Problem reading the SmartCard on %@";
  }

  else if (code2 == -4)
  {
    v24 = SO_LOG_SOSmartcard(-4);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315394;
    v42 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
    v43 = 2112;
    *v44 = self;
    v25 = "%s User cancelled PIN prompt on %@";
  }

  else
  {
    v24 = SO_LOG_SOSmartcard(code2);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315394;
    v42 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
    v43 = 2112;
    *v44 = self;
    v25 = "%s Some other problem occurred on %@";
  }

  _os_log_impl(&dword_24006C000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
LABEL_28:

LABEL_29:
  v31 = SO_LOG_SOSmartcard(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
    v43 = 2112;
    *v44 = selfCopy2;
    _os_log_impl(&dword_24006C000, v31, OS_LOG_TYPE_DEFAULT, "%s finished on %@", buf, 0x16u);
  }

  v32 = result;
  return v32;
}

+ (int)getIdentityForPersistentRef:(__CFData *)ref identityToReturn:(__SecIdentity *)return
{
  v9[3] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CDC5F0];
  v8[0] = *MEMORY[0x277CDC228];
  v8[1] = v5;
  v9[0] = *MEMORY[0x277CDC240];
  v9[1] = ref;
  v8[2] = *MEMORY[0x277CDC568];
  v9[2] = *MEMORY[0x277CBED28];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  LODWORD(return) = SecItemCopyMatching(v6, return);

  return return;
}

+ (BOOL)pollSmartcardForIdentityWithPersistentRef:(id)ref tokenID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  refCopy = ref;
  dCopy = d;
  v8 = SO_LOG_SOSmartcard(dCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "+[SOSmartcard pollSmartcardForIdentityWithPersistentRef:tokenID:]";
    v17 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_24006C000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v15, 0x16u);
  }

  if (refCopy)
  {
    v10 = [self searchForCachedIdentityPersistentRef:refCopy tokenID:dCopy];
    v11 = [v10 objectForKey:@"labl"];
    v12 = [v11 length] != 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = SO_LOG_SOSmartcard(v9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "+[SOSmartcard pollSmartcardForIdentityWithPersistentRef:tokenID:]";
    v17 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_24006C000, v13, OS_LOG_TYPE_DEFAULT, "%s finished on %@", &v15, 0x16u);
  }

  return v12;
}

+ (id)searchForCachedIdentityWithSerial:(__CFData *)serial withIssuer:(__CFData *)issuer withTokenID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = SO_LOG_SOSmartcard(dCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "+[SOSmartcard searchForCachedIdentityWithSerial:withIssuer:withTokenID:]";
    v34 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_24006C000, v9, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  result = 0;
  v10 = [dCopy length];

  v11 = *MEMORY[0x277CDC240];
  v12 = *MEMORY[0x277CDBEC8];
  if (v10)
  {
    v28[0] = *MEMORY[0x277CDC228];
    v28[1] = v12;
    v13 = *MEMORY[0x277CDBED0];
    v29[0] = v11;
    v29[1] = v13;
    v14 = *MEMORY[0x277CDBFD8];
    v28[2] = *MEMORY[0x277CDC110];
    v28[3] = v14;
    v29[2] = serial;
    v29[3] = issuer;
    v15 = *MEMORY[0x277CDC560];
    v28[4] = *MEMORY[0x277CDC550];
    v28[5] = v15;
    v29[4] = MEMORY[0x277CBEC38];
    v29[5] = MEMORY[0x277CBEC38];
    v16 = MEMORY[0x277CBEAC0];
    v17 = v29;
    v18 = v28;
  }

  else
  {
    v30[0] = *MEMORY[0x277CDC228];
    v30[1] = v12;
    v31[0] = v11;
    v31[1] = &stru_285206D08;
    v19 = *MEMORY[0x277CDBFD8];
    v30[2] = *MEMORY[0x277CDC110];
    v30[3] = v19;
    v31[2] = serial;
    v31[3] = issuer;
    v20 = *MEMORY[0x277CDC560];
    v30[4] = *MEMORY[0x277CDC550];
    v30[5] = v20;
    v31[4] = MEMORY[0x277CBEC38];
    v31[5] = MEMORY[0x277CBEC38];
    v16 = MEMORY[0x277CBEAC0];
    v17 = v31;
    v18 = v30;
  }

  v21 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:6];
  v22 = SecItemCopyMatching(v21, &result);
  if (v22)
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
  }

  else
  {
    v24 = SO_LOG_SOSmartcard(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "+[SOSmartcard searchForCachedIdentityWithSerial:withIssuer:withTokenID:]";
      v34 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_24006C000, v24, OS_LOG_TYPE_DEFAULT, "%s finished on %@", buf, 0x16u);
    }

    dictionary = result;
  }

  v25 = dictionary;

  return v25;
}

+ (id)searchForCachedIdentityPersistentRef:(id)ref tokenID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  refCopy = ref;
  dCopy = d;
  v8 = SO_LOG_SOSmartcard(dCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v32 = "+[SOSmartcard searchForCachedIdentityPersistentRef:tokenID:]";
    v33 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_24006C000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  result = 0;
  v9 = [dCopy length];
  v10 = *MEMORY[0x277CDC240];
  if (v9)
  {
    v11 = *MEMORY[0x277CDBEC8];
    v27[0] = *MEMORY[0x277CDC228];
    v27[1] = v11;
    v12 = *MEMORY[0x277CDBED0];
    v28[0] = v10;
    v28[1] = v12;
    v13 = *MEMORY[0x277CDC550];
    v27[2] = *MEMORY[0x277CDC158];
    v27[3] = v13;
    v28[2] = dCopy;
    v28[3] = MEMORY[0x277CBEC38];
    v27[4] = *MEMORY[0x277CDC560];
    v28[4] = MEMORY[0x277CBEC38];
    v14 = MEMORY[0x277CBEAC0];
    v15 = v28;
    v16 = v27;
    v17 = 5;
  }

  else
  {
    v18 = *MEMORY[0x277CDC5F0];
    v29[0] = *MEMORY[0x277CDC228];
    v29[1] = v18;
    v30[0] = v10;
    v30[1] = refCopy;
    v19 = *MEMORY[0x277CDC560];
    v29[2] = *MEMORY[0x277CDC550];
    v29[3] = v19;
    v30[2] = MEMORY[0x277CBEC38];
    v30[3] = MEMORY[0x277CBEC38];
    v14 = MEMORY[0x277CBEAC0];
    v15 = v30;
    v16 = v29;
    v17 = 4;
  }

  v20 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
  v21 = SecItemCopyMatching(v20, &result);
  if (v21)
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
  }

  else
  {
    v23 = SO_LOG_SOSmartcard(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "+[SOSmartcard searchForCachedIdentityPersistentRef:tokenID:]";
      v33 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_24006C000, v23, OS_LOG_TYPE_DEFAULT, "%s finished on %@", buf, 0x16u);
    }

    dictionary = result;
  }

  v24 = dictionary;

  return v24;
}

+ (id)availableSmartCards
{
  v62 = *MEMORY[0x277D85DE8];
  v36 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v34 = objc_alloc_init(MEMORY[0x277CC5638]);
  tokenIDs = [v34 tokenIDs];
  v3 = [tokenIDs countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v53;
    v6 = *MEMORY[0x277CDC228];
    v7 = *MEMORY[0x277CDC240];
    v8 = *MEMORY[0x277CDBEC8];
    v46 = *MEMORY[0x277CDBED0];
    v45 = *MEMORY[0x277CDC560];
    v44 = *MEMORY[0x277CDC550];
    v43 = *MEMORY[0x277CDC440];
    v42 = *MEMORY[0x277CBEEE8];
    v47 = *MEMORY[0x277CDC158];
    v40 = *MEMORY[0x277CDC5F0];
    v35 = *MEMORY[0x277CDC080];
    v39 = tokenIDs;
    v41 = *MEMORY[0x277CDBEC8];
    do
    {
      v9 = 0;
      do
      {
        if (*v53 != v5)
        {
          objc_enumerationMutation(tokenIDs);
        }

        v10 = *(*(&v52 + 1) + 8 * v9);
        result = 0;
        v59[0] = v6;
        v59[1] = v8;
        v60[0] = v7;
        v60[1] = v46;
        v59[2] = v45;
        v59[3] = v44;
        v60[2] = MEMORY[0x277CBEC38];
        v60[3] = MEMORY[0x277CBEC38];
        v59[4] = v43;
        v59[5] = v47;
        v60[4] = v42;
        v60[5] = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:6];
        v12 = SecItemCopyMatching(v11, &result);
        if (v12)
        {
          v13 = v12;
          v14 = SO_LOG_SOSmartcard(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            LODWORD(certificateRef[0]) = 67109120;
            HIDWORD(certificateRef[0]) = v13;
            _os_log_error_impl(&dword_24006C000, v14, OS_LOG_TYPE_ERROR, "Error querying SmartCards %d", certificateRef, 8u);
          }
        }

        else
        {
          certificateRef[0] = 0;
          identityRef = 0;
          v15 = CFGetTypeID(result);
          TypeID = CFDictionaryGetTypeID();
          if (v15 == TypeID)
          {
            v17 = result;
            v18 = [result objectForKeyedSubscript:v40];
            v19 = [SOSmartcard getIdentityForPersistentRef:v18 identityToReturn:&identityRef];

            if (v19)
            {
              v21 = SO_LOG_SOSmartcard(v20);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v57 = v19;
                _os_log_error_impl(&dword_24006C000, v21, OS_LOG_TYPE_ERROR, "Error getting persistentref %d", buf, 8u);
              }

              tokenIDs = v39;
            }

            else
            {
              v22 = SecIdentityCopyCertificate(identityRef, certificateRef);
              v23 = v22;
              v24 = SO_LOG_SOSmartcard(v22);
              v25 = v24;
              if (v23)
              {
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  v57 = v23;
                  _os_log_error_impl(&dword_24006C000, v25, OS_LOG_TYPE_ERROR, "Error retrieving certificate %d", buf, 8u);
                }

                tokenIDs = v39;
                if (identityRef)
                {
                  CFRelease(identityRef);
                  identityRef = 0;
                }
              }

              else
              {
                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_24006C000, v25, OS_LOG_TYPE_INFO, "Retrieving Kerberos names from certificate", buf, 2u);
                }

                v26 = SecCertificateCopyNTPrincipalNames();
                v27 = [v26 objectAtIndex:0];
                v38 = SecCertificateCopyIssuerSummary();
                if ([v27 length])
                {
                  v37 = v26;
                  v28 = objc_opt_new();
                  [v28 setUpn:v27];
                  v29 = [v17 objectForKeyedSubscript:v35];
                  [v28 setCertName:v29];

                  [v28 setIdentity:identityRef];
                  [v28 setAttributes:v17];
                  v30 = [v17 objectForKeyedSubscript:v40];
                  [v28 setPersistentRef:v30];

                  v31 = [v17 objectForKeyedSubscript:v47];
                  [v28 setTokenID:v31];

                  [v28 setIssuer:v38];
                  [v36 addObject:v28];

                  v26 = v37;
                }

                if (certificateRef[0])
                {
                  CFRelease(certificateRef[0]);
                  certificateRef[0] = 0;
                }

                tokenIDs = v39;
                if (identityRef)
                {
                  CFRelease(identityRef);
                  identityRef = 0;
                }
              }
            }
          }

          else
          {
            v17 = SO_LOG_SOSmartcard(TypeID);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              +[(SOSmartcard *)&v48];
            }
          }

          v8 = v41;
        }

        ++v9;
      }

      while (v4 != v9);
      v32 = [tokenIDs countByEnumeratingWithState:&v52 objects:v61 count:16];
      v4 = v32;
    }

    while (v32);
  }

  return v36;
}

+ (void)availableSmartCards
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_24006C000, log, OS_LOG_TYPE_ERROR, "unexpected type for SmartCard query", buf, 2u);
}

@end