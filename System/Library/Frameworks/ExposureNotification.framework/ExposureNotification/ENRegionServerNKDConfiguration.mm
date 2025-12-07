@interface ENRegionServerNKDConfiguration
- (ENRegionServerNKDConfiguration)initWithCoder:(id)coder;
- (ENRegionServerNKDConfiguration)initWithServerResponseDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENRegionServerNKDConfiguration

- (void)encodeWithCoder:(id)coder
{
  healthAuthorityID = self->_healthAuthorityID;
  coderCopy = coder;
  [coderCopy encodeObject:healthAuthorityID forKey:@"healthAuthorityID"];
  [coderCopy encodeObject:self->_region forKey:@"region"];
  [coderCopy encodeObject:self->_tekLocalDownloadBaseURL forKey:@"tekLocalDownloadBasePath"];
  [coderCopy encodeObject:self->_tekLocalDownloadIndexURL forKey:@"tekLocalDownloadIndexFile"];
  [coderCopy encodeDouble:@"tekPublishInterval" forKey:self->_tekPublishInterval];
  [coderCopy encodeObject:self->_tekUploadURL forKey:@"tekUploadURL"];
  [coderCopy encodeObject:self->_acceptedReportTypes forKey:@"acceptedReportTypes"];
  [coderCopy encodeObject:self->_testVerificationAPIKey forKey:@"testVerificationAPIKey"];
  [coderCopy encodeObject:self->_testVerificationCertificateURL forKey:@"testVerificationCertificateURL"];
  [coderCopy encodeObject:self->_testVerificationURL forKey:@"testVerificationURL"];
  [coderCopy encodeObject:self->_travelerDownloadConfigurations forKey:@"tekTravelerDownloadURLs"];
}

- (ENRegionServerNKDConfiguration)initWithServerResponseDictionary:(id)dictionary
{
  v85 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v83.receiver = self;
  v83.super_class = ENRegionServerNKDConfiguration;
  v5 = [(ENRegionServerNKDConfiguration *)&v83 init];
  if (!v5)
  {
    v55 = 0;
    goto LABEL_49;
  }

  v82 = 0;
  CFDictionaryGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  OUTLINED_FUNCTION_1_0();
  v7 = CFDictionaryGetTypedValue();
  OUTLINED_FUNCTION_5(v7);
  v8 = [ENRegion regionFromServerResponseDictionary:dictionaryCopy];
  v9 = v8;
  if (!v8)
  {
    v55 = 0;
    goto LABEL_48;
  }

  v10 = [v8 copy];
  region = v5->_region;
  v5->_region = v10;

  CFStringGetTypeID();
  OUTLINED_FUNCTION_1_0();
  v12 = CFDictionaryGetTypedValue();
  if (v82)
  {
    v55 = 0;
    goto LABEL_47;
  }

  v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
  if (!v13)
  {
    v55 = 0;
    goto LABEL_46;
  }

  objc_storeStrong(&v5->_tekLocalDownloadBaseURL, v13);
  CFStringGetTypeID();
  OUTLINED_FUNCTION_1_0();
  v14 = CFDictionaryGetTypedValue();
  v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
  if (!v15)
  {
    v55 = 0;
    goto LABEL_45;
  }

  v74 = v15;
  objc_storeStrong(&v5->_tekLocalDownloadIndexURL, v15);
  v23 = 3600 * OUTLINED_FUNCTION_3_0(v16, @"tekPublishInterval", v17, v18, v19, v20, v21, v22, v57, v59, v61, v64, v67, v70, v72, v74, v76, *(&v76 + 1), v77, *(&v77 + 1), v78, *(&v78 + 1), v79, *(&v79 + 1), v80, v81, v82);
  if (v82)
  {
    v24 = 86400;
  }

  else
  {
    v24 = v23;
  }

  v5->_tekPublishInterval = v24;
  CFStringGetTypeID();
  OUTLINED_FUNCTION_1_0();
  v25 = CFDictionaryGetTypedValue();
  if (v25)
  {
    v26 = [MEMORY[0x277CBEBC0] URLWithString:v25];
    if (!v26)
    {
      v55 = 0;
      goto LABEL_44;
    }

    tekUploadURL = v5->_tekUploadURL;
    v5->_tekUploadURL = v26;
  }

  v35 = OUTLINED_FUNCTION_3_0(v28, @"flags", v29, v30, v31, v32, v33, v34, v58, v60, v62, v65, v68, v13, v12, v75, v76, *(&v76 + 1), v77, *(&v77 + 1), v78, *(&v78 + 1), v79, *(&v79 + 1), v80, v81, v82);
  if (v82)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35;
  }

  v37 = [MEMORY[0x277CBEB18] arrayWithObject:&unk_284B0F090];
  v25 = v37;
  if ((v36 & 2) != 0)
  {
    [v37 addObject:&unk_284B0F0A8];
    if ((v36 & 4) == 0)
    {
LABEL_17:
      if ((v36 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v36 & 4) == 0)
  {
    goto LABEL_17;
  }

  [v25 addObject:&unk_284B0F0C0];
  if ((v36 & 8) != 0)
  {
LABEL_18:
    [v25 addObject:&unk_284B0F0D8];
  }

LABEL_19:
  v69 = v14;
  if ((v36 & 0x10) != 0)
  {
    [v25 addObject:&unk_284B0F0F0];
  }

  OUTLINED_FUNCTION_4_0([v25 copy]);
  CFStringGetTypeID();
  OUTLINED_FUNCTION_1_0();
  v38 = CFDictionaryGetTypedValue();
  testVerificationAPIKey = v5->_testVerificationAPIKey;
  v5->_testVerificationAPIKey = v38;

  CFStringGetTypeID();
  OUTLINED_FUNCTION_1_0();
  v40 = CFDictionaryGetTypedValue();
  if (v40)
  {
    v41 = [MEMORY[0x277CBEBC0] URLWithString:v40];
    if (!v41)
    {
      goto LABEL_50;
    }

    testVerificationCertificateURL = v5->_testVerificationCertificateURL;
    v5->_testVerificationCertificateURL = v41;
  }

  CFStringGetTypeID();
  OUTLINED_FUNCTION_1_0();
  v40 = CFDictionaryGetTypedValue();
  if (!v40)
  {
LABEL_27:

    CFArrayGetTypeID();
    OUTLINED_FUNCTION_1_0();
    v45 = CFDictionaryGetTypedValue();
    v40 = v45;
    if (v82)
    {
      travelerDownloadConfigurations = v5->_travelerDownloadConfigurations;
      v5->_travelerDownloadConfigurations = MEMORY[0x277CBEBF8];
    }

    else
    {
      v63 = v6;
      v66 = dictionaryCopy;
      travelerDownloadConfigurations = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v45, "count")}];
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v47 = v40;
      v48 = [v47 countByEnumeratingWithState:&v76 objects:v84 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v77;
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v77 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = [[ENRegionTravelerServerDownloadConfiguration alloc] initWithServerResponseDictionary:*(*(&v76 + 1) + 8 * i)];
            if (v52)
            {
              [travelerDownloadConfigurations addObject:v52];
            }
          }

          v49 = [v47 countByEnumeratingWithState:&v76 objects:v84 count:16];
        }

        while (v49);
      }

      v53 = [travelerDownloadConfigurations copy];
      v54 = v5->_travelerDownloadConfigurations;
      v5->_travelerDownloadConfigurations = v53;

      v6 = v63;
      dictionaryCopy = v66;
    }

    v55 = v5;
    goto LABEL_43;
  }

  v43 = [MEMORY[0x277CBEBC0] URLWithString:v40];
  if (v43)
  {
    testVerificationURL = v5->_testVerificationURL;
    v5->_testVerificationURL = v43;

    goto LABEL_27;
  }

LABEL_50:
  v55 = 0;
LABEL_43:
  v13 = v71;
  v12 = v73;

  v14 = v69;
LABEL_44:

  v15 = v75;
LABEL_45:

LABEL_46:
LABEL_47:

LABEL_48:
LABEL_49:

  return v55;
}

- (ENRegionServerNKDConfiguration)initWithCoder:(id)coder
{
  v37[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  obj = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tekLocalDownloadBasePath"];
  if (obj)
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tekLocalDownloadIndexFile"];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
      if (v6)
      {
        v7 = MEMORY[0x277CBEB98];
        v37[0] = objc_opt_class();
        v37[1] = objc_opt_class();
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
        v9 = [v7 setWithArray:v8];

        v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"tekTravelerDownloadURLs"];
        if (v10)
        {
          v11 = MEMORY[0x277CBEB98];
          v36[0] = objc_opt_class();
          v36[1] = objc_opt_class();
          v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
          v13 = [v11 setWithArray:v12];

          v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"acceptedReportTypes"];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = &unk_284B0F210;
          }

          v17 = v16;

          v35.receiver = self;
          v35.super_class = ENRegionServerNKDConfiguration;
          v18 = [(ENRegionServerNKDConfiguration *)&v35 init];
          if (v18)
          {
            v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"healthAuthorityID"];
            healthAuthorityID = v18->_healthAuthorityID;
            v18->_healthAuthorityID = v19;

            objc_storeStrong(&v18->_region, v6);
            objc_storeStrong(&v18->_tekLocalDownloadBaseURL, obj);
            objc_storeStrong(&v18->_tekLocalDownloadIndexURL, v5);
            [coderCopy decodeDoubleForKey:@"tekPublishInterval"];
            v18->_tekPublishInterval = v21;
            v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tekUploadURL"];
            tekUploadURL = v18->_tekUploadURL;
            v18->_tekUploadURL = v22;

            objc_storeStrong(&v18->_acceptedReportTypes, v16);
            v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testVerificationAPIKey"];
            testVerificationAPIKey = v18->_testVerificationAPIKey;
            v18->_testVerificationAPIKey = v24;

            v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testVerificationCertificateURL"];
            testVerificationCertificateURL = v18->_testVerificationCertificateURL;
            v18->_testVerificationCertificateURL = v26;

            v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testVerificationURL"];
            testVerificationURL = v18->_testVerificationURL;
            v18->_testVerificationURL = v28;

            v30 = [v10 copy];
            travelerDownloadConfigurations = v18->_travelerDownloadConfigurations;
            v18->_travelerDownloadConfigurations = v30;
          }

          self = v18;

          v9 = v13;
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end