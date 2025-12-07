@interface HMSoftwareUpdateDocumentation(NSBundle)
+ (id)localizationsForBundle:()NSBundle fileManager:;
- (id)initWithBundle:()NSBundle fileManager:;
@end

@implementation HMSoftwareUpdateDocumentation(NSBundle)

- (id)initWithBundle:()NSBundle fileManager:
{
  v95 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = __resourceBundleForBundle(v6, v7);
    v9 = v8;
    if (!v8)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v92 = v34;
        v93 = 2112;
        v94 = v6;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid bundle: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      selfCopy2 = 0;
      goto LABEL_40;
    }

    v10 = MEMORY[0x277CCA8D8];
    localizations = [v8 localizations];
    v12 = [v10 preferredLocalizationsFromArray:localizations];

    if (![v12 count])
    {

      v12 = &unk_283E75B30;
    }

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v92 = v16;
      v93 = 2112;
      v94 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Parsing using preferred localizations: %@", buf, 0x16u);
    }

    v78 = selfCopy;
    objc_autoreleasePoolPop(v13);
    v17 = __htmlDocumentForResource(v9, v12, @"ReadMeSummary");
    v18 = __htmlDocumentForResource(v9, v12, @"ReadMe");
    v79 = __htmlDocumentForResource(v9, v12, @"License");
    v19 = v9;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v20 = v12;
    v21 = [v20 countByEnumeratingWithState:&v81 objects:buf count:16];
    if (v21)
    {
      v72 = v18;
      v74 = v17;
      v76 = v7;
      v22 = *v82;
      while (2)
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v82 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = [v19 URLForResource:@"ReadMe" withExtension:@"txt" subdirectory:0 localization:*(*(&v81 + 1) + 8 * i)];
          if (v24)
          {
            v29 = v24;
            v80 = 0;
            v21 = [objc_alloc(MEMORY[0x277CD1D08]) initWithURL:v24 error:&v80];
            v30 = v80;
            if (v21)
            {
              v31 = v21;
              v17 = v74;
              v7 = v76;
            }

            else
            {
              v35 = objc_autoreleasePoolPush();
              v36 = HMFGetOSLogHandle();
              v17 = v74;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                contexta = HMFGetLogIdentifier();
                [v29 path];
                v37 = v69 = v35;
                *v85 = 138543874;
                v86 = contexta;
                v87 = 2112;
                v88 = v37;
                v89 = 2112;
                v90 = v30;
                _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Unable to load document, %@, with error: %@", v85, 0x20u);

                v35 = v69;
              }

              objc_autoreleasePoolPop(v35);
              v7 = v76;
            }

            goto LABEL_28;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v81 objects:buf count:16];
        if (v21)
        {
          continue;
        }

        break;
      }

      v17 = v74;
      v7 = v76;
LABEL_28:
      v18 = v72;
    }

    v77 = v6;
    if (v18 && v21)
    {
      v38 = v21;
      v39 = v18;
      v40 = objc_autoreleasePoolPush();
      v41 = v78;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v43 = v17;
        v45 = v44 = v7;
        *buf = 138543362;
        v92 = v45;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Both html and text release notes provided, using text notes", buf, 0xCu);

        v7 = v44;
        v17 = v43;
      }

      objc_autoreleasePoolPop(v40);
      v18 = 0;
      v17 = 0;
      v21 = v38;
      v6 = v77;
    }

    if (!v79)
    {
      v49 = 0;
      goto LABEL_39;
    }

    infoDictionary = [v6 infoDictionary];
    v47 = [infoDictionary hmf_dictionaryForKey:@"MobileAssetProperties"];
    v48 = v47;
    if (v47)
    {
      v49 = [v47 hmf_numberForKey:@"SUSLAVersionRequired"];
      if (v49)
      {
LABEL_37:

LABEL_39:
        self = [v78 initWithReleaseNotesSummary:v17 releaseNotes:v18 textReleaseNotes:v21 licenseAgreement:v79 licenseAgreementVersion:{v49, v69}];

        selfCopy2 = self;
        v6 = v77;
LABEL_40:

        goto LABEL_41;
      }

      v73 = v18;
      v75 = v17;
      v51 = v7;
      v62 = objc_autoreleasePoolPush();
      v63 = v78;
      v64 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
      {
        v65 = HMFGetLogIdentifier();
        *buf = 138543362;
        v92 = v65;
        _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Missing SLA version", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v62);
      v66 = [[HMDAssertionLogEvent alloc] initWithReason:@"Missing SLA version"];
      v67 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v67 submitLogEvent:v66];

      context = objc_autoreleasePoolPush();
      v68 = v63;
      v59 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
LABEL_51:
        v18 = v73;

        objc_autoreleasePoolPop(context);
        v49 = 0;
        v7 = v51;
        v17 = v75;
        goto LABEL_37;
      }

      v60 = HMFGetLogIdentifier();
      *buf = 138543618;
      v92 = v60;
      v93 = 2112;
      v94 = v48;
      v61 = "%{public}@Missing SLA version from asset properties: %@";
    }

    else
    {
      v73 = v18;
      v75 = v17;
      v51 = v7;
      v52 = objc_autoreleasePoolPush();
      v53 = v78;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
      {
        v55 = HMFGetLogIdentifier();
        *buf = 138543362;
        v92 = v55;
        _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Missing asset properties", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v52);
      v56 = [[HMDAssertionLogEvent alloc] initWithReason:@"Missing asset properties"];
      v57 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v57 submitLogEvent:v56];

      context = objc_autoreleasePoolPush();
      v58 = v53;
      v59 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      v60 = HMFGetLogIdentifier();
      *buf = 138543618;
      v92 = v60;
      v93 = 2112;
      v94 = infoDictionary;
      v61 = "%{public}@Missing asset properites from asset info: %@";
    }

    _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, v61, buf, 0x16u);

    goto LABEL_51;
  }

  v25 = objc_autoreleasePoolPush();
  self = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v92 = v27;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@The bundle parameter is required", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v25);
  selfCopy2 = 0;
LABEL_41:

  return selfCopy2;
}

+ (id)localizationsForBundle:()NSBundle fileManager:
{
  v4 = __resourceBundleForBundle(a3, a4);
  v5 = v4;
  if (v4)
  {
    localizations = [v4 localizations];
  }

  else
  {
    localizations = MEMORY[0x277CBEBF8];
  }

  return localizations;
}

@end