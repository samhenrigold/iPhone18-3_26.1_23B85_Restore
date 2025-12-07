@interface HMMTRAttestationDataStore
+ (id)logCategory;
- (HMMTRAttestationDataStore)initWithFileURL:(id)l;
- (HMMTRAttestationDataStore)initWithFileURL:(id)l uarpController:(id)controller fileManager:(id)manager;
- (NSArray)cdCertificates;
- (NSArray)paaCertificates;
- (id)convertPEMtoDERforCertificate:(id)certificate;
- (id)staticAttestationData;
- (id)staticAttestationDataFileURL;
- (void)attestationCertificates:(id)certificates forSubjectKeyIdentifier:(id)identifier;
- (void)fetchCloudAttestationData;
- (void)saveWithPaaCertificates:(id)certificates cdCertificates:(id)cdCertificates;
@end

@implementation HMMTRAttestationDataStore

- (void)attestationCertificates:(id)certificates forSubjectKeyIdentifier:(id)identifier
{
  v52 = *MEMORY[0x277D85DE8];
  certificatesCopy = certificates;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (certificatesCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v12;
      v50 = 2048;
      v51 = [certificatesCopy count];
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %tu PAA certificates from UARP controller", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if ([certificatesCopy count])
    {
      v28 = identifierCopy;
      v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v29 = certificatesCopy;
      obj = certificatesCopy;
      v31 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (!v31)
      {
        goto LABEL_28;
      }

      v30 = *v43;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v13;
          v36 = *(*(&v42 + 1) + 8 * v13);
          v33 = [obj objectForKeyedSubscript:v28];
          v14 = [v33 componentsSeparatedByString:{@", "}];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v39;
            v19 = 1;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v39 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v21 = [(HMMTRAttestationDataStore *)selfCopy convertPEMtoDERforCertificate:*(*(&v38 + 1) + 8 * i)];
                if (v21)
                {
                  if (v19)
                  {
                    if ([v15 count] != 1)
                    {
                      goto LABEL_24;
                    }

                    v22 = v35;
                  }

                  else
                  {
                    v22 = v37;
                  }

                  [v22 addObject:v21];
                }

                else
                {
                  v23 = objc_autoreleasePoolPush();
                  v24 = selfCopy;
                  v25 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    v26 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v49 = v26;
                    v50 = 2112;
                    v51 = v36;
                    _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert certificate from PEM to DER. Skipping certificate from subject key ID : %@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v23);
                }

LABEL_24:

                v19 = 0;
              }

              v17 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
              v19 = 0;
            }

            while (v17);
          }

          v13 = v34 + 1;
        }

        while (v34 + 1 != v31);
        v31 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (!v31)
        {
LABEL_28:

          [(HMMTRAttestationDataStore *)selfCopy saveWithPaaCertificates:v35 cdCertificates:v37];
          identifierCopy = v28;
          certificatesCopy = v29;
          break;
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v27;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch PAA certificates", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (NSArray)cdCertificates
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Loading locally stored attestation information", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  fileManager = [(HMMTRAttestationDataStore *)selfCopy fileManager];
  fileURL = [(HMMTRAttestationDataStore *)selfCopy fileURL];
  v41 = 0;
  staticAttestationData = [fileManager dictionaryWithContentsOfURL:fileURL error:&v41];
  v10 = v41;

  if (!staticAttestationData)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Locally stored attestation information not found. Loading static attestation information", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    staticAttestationData = [(HMMTRAttestationDataStore *)v12 staticAttestationData];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [staticAttestationData objectForKeyedSubscript:@"Version"];
    *buf = 138543618;
    v43 = v18;
    v44 = 2112;
    v45 = v19;
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Data version %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = objc_autoreleasePoolPush();
  v21 = v16;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [staticAttestationData objectForKeyedSubscript:@"SchemaVersion"];
    *buf = 138543618;
    v43 = v23;
    v44 = 2112;
    v45 = v24;
    _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Schema version %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v25 = [staticAttestationData objectForKeyedSubscript:@"CDCertificates"];
  v26 = v25;
  if (!v25)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v21;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v35;
      v44 = 2112;
      v45 = staticAttestationData;
      v36 = "%{public}@Could not find Certificate Declarations(CDs) in attestation data dictionary: %@";
      v37 = v30;
      v38 = OS_LOG_TYPE_ERROR;
      v39 = 22;
LABEL_20:
      _os_log_impl(&dword_22AEAE000, v37, v38, v36, buf, v39);
    }

LABEL_21:

    objc_autoreleasePoolPop(v28);
    v34 = MEMORY[0x277CBEBF8];
    goto LABEL_22;
  }

  v27 = [v25 count];
  v28 = objc_autoreleasePoolPush();
  v29 = v21;
  v30 = HMFGetOSLogHandle();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
  if (!v27)
  {
    if (v31)
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v35;
      v36 = "%{public}@No Certificate Declarations(CDs) found";
      v37 = v30;
      v38 = OS_LOG_TYPE_INFO;
      v39 = 12;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v31)
  {
    v32 = HMFGetLogIdentifier();
    v33 = [v26 count];
    *buf = 138543618;
    v43 = v32;
    v44 = 2048;
    v45 = v33;
    _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@Number of Certificate Declarations(CDs) found: %tu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  v34 = v26;
LABEL_22:

  return v34;
}

- (NSArray)paaCertificates
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Loading locally stored PAA information", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  fileManager = [(HMMTRAttestationDataStore *)selfCopy fileManager];
  fileURL = [(HMMTRAttestationDataStore *)selfCopy fileURL];
  v41 = 0;
  staticAttestationData = [fileManager dictionaryWithContentsOfURL:fileURL error:&v41];
  v10 = v41;

  if (!staticAttestationData)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Locally stored PAA information not found. Loading static PAA information", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    staticAttestationData = [(HMMTRAttestationDataStore *)v12 staticAttestationData];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [staticAttestationData objectForKeyedSubscript:@"Version"];
    *buf = 138543618;
    v43 = v18;
    v44 = 2112;
    v45 = v19;
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Data version %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = objc_autoreleasePoolPush();
  v21 = v16;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [staticAttestationData objectForKeyedSubscript:@"SchemaVersion"];
    *buf = 138543618;
    v43 = v23;
    v44 = 2112;
    v45 = v24;
    _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Schema version %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v25 = [staticAttestationData objectForKeyedSubscript:@"PAACertificates"];
  v26 = v25;
  if (!v25)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v21;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v35;
      v44 = 2112;
      v45 = staticAttestationData;
      v36 = "%{public}@Could not find PAAs in attestation data dictionary: %@";
      v37 = v30;
      v38 = OS_LOG_TYPE_ERROR;
      v39 = 22;
LABEL_20:
      _os_log_impl(&dword_22AEAE000, v37, v38, v36, buf, v39);
    }

LABEL_21:

    objc_autoreleasePoolPop(v28);
    v34 = MEMORY[0x277CBEBF8];
    goto LABEL_22;
  }

  v27 = [v25 count];
  v28 = objc_autoreleasePoolPush();
  v29 = v21;
  v30 = HMFGetOSLogHandle();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
  if (!v27)
  {
    if (v31)
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v35;
      v36 = "%{public}@No PAAs found";
      v37 = v30;
      v38 = OS_LOG_TYPE_INFO;
      v39 = 12;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v31)
  {
    v32 = HMFGetLogIdentifier();
    v33 = [v26 count];
    *buf = 138543618;
    v43 = v32;
    v44 = 2048;
    v45 = v33;
    _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@Number of PAAs found: %tu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  v34 = v26;
LABEL_22:

  return v34;
}

- (void)fetchCloudAttestationData
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching cloud PAA data from UARP controller", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  uarpController = [(HMMTRAttestationDataStore *)selfCopy uarpController];
  v8 = [uarpController getAttestationCertificates:0 assetLocationType:15];

  if ((v8 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to request PAA certificates from UARP controller", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (id)convertPEMtoDERforCertificate:(id)certificate
{
  certificateCopy = certificate;
  if ([certificateCopy length])
  {
    v4 = [certificateCopy stringByReplacingOccurrencesOfString:@"-----BEGIN CERTIFICATE-----" withString:&stru_283ED2308];

    v5 = [v4 stringByReplacingOccurrencesOfString:@"-----END CERTIFICATE-----" withString:&stru_283ED2308];

    v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_283ED2308];

    v7 = [v6 stringByReplacingOccurrencesOfString:@"\r" withString:&stru_283ED2308];

    newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
    certificateCopy = [v7 stringByTrimmingCharactersInSet:newlineCharacterSet];

    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:certificateCopy options:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)saveWithPaaCertificates:(id)certificates cdCertificates:(id)cdCertificates
{
  v35[4] = *MEMORY[0x277D85DE8];
  certificatesCopy = certificates;
  cdCertificatesCopy = cdCertificates;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v11;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Saving certificates to file", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v34[0] = @"Version";
  v34[1] = @"SchemaVersion";
  v35[0] = &unk_283EE9060;
  v35[1] = &unk_283EE9060;
  v34[2] = @"PAACertificates";
  v34[3] = @"CDCertificates";
  v35[2] = certificatesCopy;
  v35[3] = cdCertificatesCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
  fileManager = [(HMMTRAttestationDataStore *)selfCopy fileManager];
  fileURL = [(HMMTRAttestationDataStore *)selfCopy fileURL];
  v27 = 0;
  v15 = [fileManager writeDictionary:v12 toURL:fileURL error:&v27];
  v16 = v27;

  v17 = objc_autoreleasePoolPush();
  v18 = selfCopy;
  v19 = HMFGetOSLogHandle();
  v20 = v19;
  if (v15)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      fileURL2 = [(HMMTRAttestationDataStore *)v18 fileURL];
      *buf = 138543618;
      v29 = v21;
      v30 = 2112;
      v31 = fileURL2;
      v23 = "%{public}@Successfully saved attestation data to %@";
      v24 = v20;
      v25 = OS_LOG_TYPE_INFO;
      v26 = 22;
LABEL_8:
      _os_log_impl(&dword_22AEAE000, v24, v25, v23, buf, v26);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    fileURL2 = [(HMMTRAttestationDataStore *)v18 fileURL];
    *buf = 138543874;
    v29 = v21;
    v30 = 2112;
    v31 = fileURL2;
    v32 = 2112;
    v33 = v16;
    v23 = "%{public}@Failed to write attestation data to %@: %@";
    v24 = v20;
    v25 = OS_LOG_TYPE_ERROR;
    v26 = 32;
    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v17);
}

- (id)staticAttestationData
{
  v21 = *MEMORY[0x277D85DE8];
  fileManager = [(HMMTRAttestationDataStore *)self fileManager];
  staticAttestationDataFileURL = [(HMMTRAttestationDataStore *)self staticAttestationDataFileURL];
  v14 = 0;
  v5 = [fileManager dictionaryWithContentsOfURL:staticAttestationDataFileURL error:&v14];
  v6 = v14;

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      staticAttestationDataFileURL2 = [(HMMTRAttestationDataStore *)selfCopy staticAttestationDataFileURL];
      *buf = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = staticAttestationDataFileURL2;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to load local attestation data at file URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = MEMORY[0x277CBEC10];
  }

  return v7;
}

- (id)staticAttestationDataFileURL
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"attestation-data-store" withExtension:@"plist"];

  if (v3)
  {

    return v3;
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    return [(HMMTRAttestationDataStore *)v5 initWithFileURL:v6 uarpController:v7 fileManager:v8, v9];
  }
}

- (HMMTRAttestationDataStore)initWithFileURL:(id)l uarpController:(id)controller fileManager:(id)manager
{
  lCopy = l;
  controllerCopy = controller;
  managerCopy = manager;
  if (!lCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!controllerCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = managerCopy;
  if (!managerCopy)
  {
LABEL_9:
    v16 = _HMFPreconditionFailure();
    return [(HMMTRAttestationDataStore *)v16 initWithFileURL:v17, v18];
  }

  v19.receiver = self;
  v19.super_class = HMMTRAttestationDataStore;
  v13 = [(HMMTRAttestationDataStore *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_fileURL, l);
    objc_storeStrong(&v14->_uarpController, controller);
    [(UARPController *)v14->_uarpController setDelegate:v14];
    objc_storeStrong(&v14->_fileManager, manager);
  }

  return v14;
}

- (HMMTRAttestationDataStore)initWithFileURL:(id)l
{
  v4 = MEMORY[0x277D02620];
  lCopy = l;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(HMMTRFileManager);
  v8 = [(HMMTRAttestationDataStore *)self initWithFileURL:lCopy uarpController:v6 fileManager:v7];

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_11819 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_11819, &__block_literal_global_11820);
  }

  v3 = logCategory__hmf_once_v21_11821;

  return v3;
}

uint64_t __40__HMMTRAttestationDataStore_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v21_11821;
  logCategory__hmf_once_v21_11821 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end