@interface SymptomToAnalyticsHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (BOOL)noteSymptom:(id)symptom;
- (void)noteIPAddressAcquisitionFailed:(BOOL)failed forEvent:(id)event;
@end

@implementation SymptomToAnalyticsHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SymptomToAnalyticsHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_37 != -1)
  {
    dispatch_once(&sharedInstance_pred_37, block);
  }

  v2 = sharedInstance_sharedInstance_39;

  return v2;
}

void __43__SymptomToAnalyticsHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_39;
  sharedInstance_sharedInstance_39 = v1;

  v3 = sharedInstance_sharedInstance_39;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[SymptomToAnalyticsHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (BOOL)noteSymptom:(id)symptom
{
  v83 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  eventKey = [symptomCopy eventKey];
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    *buf = 138412546;
    v80 = eventKey;
    v81 = 2048;
    seqNo = [symptomCopy seqNo];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: receiving symptom with key: %@ [#%llu]", buf, 0x16u);
  }

  v8 = [SymptomStore keyFromSymptomName:@"SYMPTOM_DNS_NO_REPLIES"];
  if ([(__CFString *)eventKey isEqualToString:v8])
  {

LABEL_6:
    v77 = eventKey;
    v78 = symptomCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = defaultCenter;
    v14 = @"kNotificationDNSsymptoms";
    goto LABEL_7;
  }

  v9 = [SymptomStore keyFromSymptomName:@"SYMPTOM_DNS_RESUMED_RESPONDING"];
  v10 = [(__CFString *)eventKey isEqualToString:v9];

  if (v10)
  {
    goto LABEL_6;
  }

  v16 = [SymptomStore keyFromSymptomName:@"SYMPTOM_ADDRESS_ACQUISITION_SUCCEEDED"];
  if ([(__CFString *)eventKey isEqualToString:v16])
  {

LABEL_12:
    v19 = [SymptomStore keyFromSymptomName:@"SYMPTOM_ADDRESS_ACQUISITION_FAILED"];
    v20 = [(__CFString *)eventKey isEqualToString:v19];

    [(SymptomToAnalyticsHandler *)self noteIPAddressAcquisitionFailed:v20 forEvent:symptomCopy];
    goto LABEL_8;
  }

  v17 = [SymptomStore keyFromSymptomName:@"SYMPTOM_ADDRESS_ACQUISITION_FAILED"];
  v18 = [(__CFString *)eventKey isEqualToString:v17];

  if (v18)
  {
    goto LABEL_12;
  }

  v21 = [SymptomStore keyFromSymptomName:@"com.apple.neipsecike.establishstats"];
  if (([(__CFString *)eventKey isEqualToString:v21]& 1) != 0)
  {
    goto LABEL_16;
  }

  v22 = [SymptomStore keyFromSymptomName:@"com.apple.neipsecike.sendstats"];
  if ([(__CFString *)eventKey isEqualToString:v22])
  {

LABEL_16:
LABEL_17:
    v75 = eventKey;
    v76 = symptomCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = defaultCenter;
    v14 = @"kNotificationFlowStats";
    goto LABEL_7;
  }

  v23 = [SymptomStore keyFromSymptomName:@"com.apple.neipsecike.disconnectstats"];
  v24 = [(__CFString *)eventKey isEqualToString:v23];

  if (v24)
  {
    goto LABEL_17;
  }

  v25 = [SymptomStore keyFromSymptomName:@"com.apple.wifimanager.link-quality"];
  v26 = [(__CFString *)eventKey isEqualToString:v25];

  if (v26)
  {
    v27 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
      seqNo2 = [symptomCopy seqNo];
      creationTimeStamp = [symptomCopy creationTimeStamp];
      [creationTimeStamp timeIntervalSince1970];
      v32 = dateStringMillisecondsFromTimeInterval(v31);
      *buf = 134218242;
      v80 = seqNo2;
      v81 = 2112;
      seqNo = v32;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEFAULT, "trigger-disconnect: com.apple.wifimanager.link-quality symptom [#%llu], received: %@", buf, 0x16u);
    }

    v33 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v34 = v33;
      v35 = qos_class_self();
      v36 = qos_string(v35);
      *buf = 136315138;
      v80 = v36;
      _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEBUG, "trigger-disconnect: com.apple.wifimanager.link-quality symptom: QoS %s", buf, 0xCu);
    }

    v73 = eventKey;
    v74 = symptomCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = defaultCenter;
    v14 = @"kNotificationTriggerDisconnectThreshold";
    goto LABEL_7;
  }

  v37 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_DATA_STALL"];
  if ([(__CFString *)eventKey isEqualToString:v37])
  {

LABEL_28:
    v71 = eventKey;
    v72 = symptomCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = defaultCenter;
    v14 = @"kNotificationDataStall";
    goto LABEL_7;
  }

  v38 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_TLS_HANDSHAKE_TIMEOUT"];
  v39 = [(__CFString *)eventKey isEqualToString:v38];

  if (v39)
  {
    goto LABEL_28;
  }

  v40 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_EXPECTED_TRANSFER"];
  v41 = [(__CFString *)eventKey isEqualToString:v40];

  if (v41)
  {
    v69 = eventKey;
    v70 = symptomCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = defaultCenter;
    v14 = @"kNotificationExpectedTransfer";
  }

  else
  {
    v42 = [SymptomStore keyFromSymptomName:@"com.apple.coremedia.assetdownload.event"];
    if ([(__CFString *)eventKey isEqualToString:v42])
    {
    }

    else
    {
      v43 = [SymptomStore keyFromSymptomName:@"SYMPTOM_TRANSPORT_DISCONNECT"];
      v44 = [(__CFString *)eventKey isEqualToString:v43];

      if (!v44)
      {
        v46 = [SymptomStore keyFromSymptomName:@"com.apple.symptoms.captivity.url.redirects"];
        v47 = [(__CFString *)eventKey isEqualToString:v46];

        if (v47)
        {
          v65 = eventKey;
          v66 = symptomCopy;
          v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          v13 = defaultCenter;
          v14 = @"kNotificationCaptivityRedirects";
        }

        else
        {
          v48 = [SymptomStore keyFromSymptomName:@"SYMPTOM_CERT_ERROR"];
          v49 = [(__CFString *)eventKey isEqualToString:v48];

          if (v49)
          {
            v63 = eventKey;
            v64 = symptomCopy;
            v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
            defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
            v13 = defaultCenter;
            v14 = @"kNotificationCertError";
          }

          else
          {
            v50 = [SymptomStore keyFromSymptomName:@"SYMPTOM_CAPTIVTY_INDETERMINATE"];
            v51 = [(__CFString *)eventKey isEqualToString:v50];

            if (v51)
            {
              v61 = eventKey;
              v62 = symptomCopy;
              v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
              defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
              v13 = defaultCenter;
              v14 = @"kNotificationCaptivityIndeterminate";
            }

            else
            {
              v52 = [SymptomStore keyFromSymptomName:@"SYMPTOM_BARCODE_ACTIVATION"];
              v53 = [(__CFString *)eventKey isEqualToString:v52];

              if (v53)
              {
                v59 = eventKey;
                v60 = symptomCopy;
                v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
                defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
                v13 = defaultCenter;
                v14 = @"kNotificationBarcodeActivation";
              }

              else
              {
                v54 = [SymptomStore keyFromSymptomName:@"com.apple.das.oversize.load"];
                v55 = [(__CFString *)eventKey isEqualToString:v54];

                if (!v55)
                {
                  goto LABEL_8;
                }

                v57 = eventKey;
                v58 = symptomCopy;
                v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
                v56 = analyticsLogHandle;
                if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v80 = @"kNotificationDASOversizeLoad";
                  v81 = 2112;
                  seqNo = v11;
                  _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: posting event %@ with info %@", buf, 0x16u);
                }

                defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
                v13 = defaultCenter;
                v14 = @"kNotificationDASOversizeLoad";
              }
            }
          }
        }

        goto LABEL_7;
      }
    }

    v67 = eventKey;
    v68 = symptomCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v45 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v80 = @"kNotificationCoreMediaAssetDownload";
      v81 = 2112;
      seqNo = v11;
      _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: posting event %@ with info %@", buf, 0x16u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = defaultCenter;
    v14 = @"kNotificationCoreMediaAssetDownload";
  }

LABEL_7:
  [defaultCenter postNotificationName:v14 object:self userInfo:v11];

LABEL_8:
  return 1;
}

- (void)noteIPAddressAcquisitionFailed:(BOOL)failed forEvent:(id)event
{
  failedCopy = failed;
  v19 = *MEMORY[0x277D85DE8];
  eventData = [event eventData];
  if (!eventData)
  {
    v6 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *v14 = 0;
    v7 = "Missing eventData in configd DHCP symptom, returning";
    goto LABEL_15;
  }

  if ((*(eventData + 4) & 1) == 0)
  {
    v6 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *v14 = 0;
    v7 = "Received configd DHCP symptom with no interface index qualifier";
LABEL_15:
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, v7, v14, 2u);
    return;
  }

  v8 = *(eventData + 24);
  if (!v8)
  {
    v6 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *v14 = 0;
    v7 = "Did not receive an interface index from configd DHCP symptom";
    goto LABEL_15;
  }

  v9 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceIndex:v8];
  interfaceName = [v9 interfaceName];
  v11 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = "success";
    *v14 = 136315650;
    if (failedCopy)
    {
      v12 = "failure";
    }

    *&v14[4] = v12;
    v15 = 2112;
    v16 = interfaceName;
    v17 = 1024;
    v18 = v8;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "NDF: About to inform NDFCore of IP address acquisition %s on interface %@ (index %d)", v14, 0x1Cu);
  }

  v13 = +[NDFCoreShim sharedInstance];
  [v13 noteIPAddressAcquisitionFailed:failedCopy forInterface:interfaceName];
}

@end