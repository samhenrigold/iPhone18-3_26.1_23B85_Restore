@interface HMDVendorDataManager
+ (id)dbURL;
+ (id)logCategory;
+ (id)sharedVendorDataManager;
- (BOOL)_loadDatabaseFromDictionary:(id)dictionary;
- (BOOL)_loadDatabaseFromFilePath:(id)path fileDescription:(id)description;
- (BOOL)_loadDatabaseFromFileURL:(id)l fileDescription:(id)description;
- (BOOL)_parseDatabaseFromDictionary:(id)dictionary dataVersion:(int64_t *)version collectionsByManufacturer:(id *)manufacturer entriesByProductData:(id *)data;
- (BOOL)_parseManufacturersList:(id)list collectionsByManufacturer:(id *)manufacturer entriesByProductData:(id *)data;
- (BOOL)databaseContainsManufacturer:(id)manufacturer;
- (HMDVendorDataManager)init;
- (HMDVendorDataManager)initWithDefaults;
- (HMDVendorDataManager)initWithWorkQueue:(id)queue downloader:(id)downloader fetchTimer:(id)timer;
- (NSDictionary)collectionsByManufacturer;
- (NSURL)urlForBundledInternalPlist;
- (NSURL)urlForBundledPlist;
- (id)_createMmapFromEncodedData:(id)data errorContext:(id)context;
- (id)_modelsStringForManufacturer:(id)manufacturer model:(id)model dictionary:(id)dictionary key:(id)key;
- (id)_parseVendorModelEntryForManufacturer:(id)manufacturer model:(id)model dictionary:(id)dictionary;
- (id)modelCollectionForManufacturer:(id)manufacturer;
- (id)vendorModelEntryForManufacturer:(id)manufacturer model:(id)model;
- (id)vendorModelEntryForProductData:(id)data;
- (void)_fetchDataFromServer;
- (void)_handleDataFromServer:(id)server;
- (void)_handleServerResponse:(id)response withData:(id)data error:(id)error;
- (void)_loadDatabaseFromLocalFiles;
- (void)_start;
- (void)setCollectionsByManufacturer:(id)manufacturer;
- (void)setEntriesByProductData:(id)data;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDVendorDataManager

- (void)timerDidFire:(id)fire
{
  v14 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDVendorDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v9;
    v12 = 2048;
    v13 = vendorInfoFetchPeriod;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Timer fired after %.0lf sec", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDVendorDataManager *)selfCopy _fetchDataFromServer];
}

- (BOOL)_parseManufacturersList:(id)list collectionsByManufacturer:(id *)manufacturer entriesByProductData:(id *)data
{
  v110 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v104 = v11;
    v105 = 2112;
    v106 = listCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Parsing manufacturers dictionary: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v15 = listCopy;
  v16 = [(__CFString *)v15 countByEnumeratingWithState:&v98 objects:v109 count:16];
  if (!v16)
  {
LABEL_37:

    v47 = objc_autoreleasePoolPush();
    v48 = selfCopy;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v51 = v50 = dictionary2;
      *buf = 138543618;
      v104 = v51;
      v105 = 2112;
      v106 = dictionary;
      _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_DEBUG, "%{public}@Prepared vendor model entries: %@", buf, 0x16u);

      dictionary2 = v50;
    }

    objc_autoreleasePoolPop(v47);
    *manufacturer = objc_msgSend_copy(dictionary);
    *data = objc_msgSend_copy(dictionary2);
    v52 = 1;
    goto LABEL_49;
  }

  v17 = *v99;
  v88 = whitespaceCharacterSet;
  v85 = v15;
  v92 = selfCopy;
  v78 = *v99;
  dataCopy = data;
LABEL_5:
  v18 = 0;
  v80 = v16;
LABEL_6:
  if (*v99 != v17)
  {
    objc_enumerationMutation(v15);
  }

  v81 = v18;
  v19 = *(*(&v98 + 1) + 8 * v18);
  v20 = objc_autoreleasePoolPush();
  v21 = v19;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = [(__CFString *)v23 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  v89 = v24;
  if (![(__CFString *)v24 length])
  {
    v61 = v20;
    v62 = objc_autoreleasePoolPush();
    v63 = v92;
    v64 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v66 = v65 = dictionary2;
      *buf = 138543618;
      v104 = v66;
      v105 = 2112;
      v106 = v21;
      _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@Manufacturers dictionary contains invalid key: %@", buf, 0x16u);

      dictionary2 = v65;
      whitespaceCharacterSet = v88;
    }

    objc_autoreleasePoolPop(v62);
    v20 = v61;
    v24 = v89;
    goto LABEL_48;
  }

  lowercaseString = [(__CFString *)v24 lowercaseString];
  v26 = [(__CFString *)dictionary objectForKeyedSubscript:lowercaseString];
  if (!v26)
  {
    v26 = objc_alloc_init(HMDVendorModelCollection);
    [(__CFString *)dictionary setObject:v26 forKeyedSubscript:lowercaseString];
  }

  dataCopy = [(__CFString *)v15 hmf_dictionaryForKey:v24, v78, dataCopy];
  v86 = lowercaseString;
  v91 = v26;
  if (!dataCopy)
  {
    v67 = objc_autoreleasePoolPush();
    v68 = v92;
    v69 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v70 = v20;
      v72 = v71 = dictionary2;
      *buf = 138543618;
      v104 = v72;
      v105 = 2112;
      v106 = v89;
      _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_ERROR, "%{public}@Manufacturers dictionary contains an invalid entry for %@", buf, 0x16u);

      dictionary2 = v71;
      v20 = v70;
      v24 = v89;
    }

    objc_autoreleasePoolPop(v67);
    goto LABEL_48;
  }

  v87 = dataCopy;
  v28 = [dataCopy hmf_dictionaryForKey:@"Models"];
  if (v28)
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v94 objects:v102 count:16];
    if (!v30)
    {
      goto LABEL_33;
    }

    v31 = v30;
    v32 = *v95;
    v82 = dictionary;
    v84 = v20;
LABEL_18:
    v33 = 0;
    while (1)
    {
      if (*v95 != v32)
      {
        objc_enumerationMutation(v29);
      }

      v34 = *(*(&v94 + 1) + 8 * v33);
      objc_opt_class();
      v35 = (objc_opt_isKindOfClass() & 1) != 0 ? v34 : 0;
      v36 = v35;

      v37 = [v36 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      if (![v37 length])
      {
        break;
      }

      v38 = [v29 hmf_dictionaryForKey:v37];
      if (!v38)
      {
        v57 = objc_autoreleasePoolPush();
        v58 = v92;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543874;
          v104 = v59;
          v105 = 2112;
          v106 = v24;
          v107 = 2112;
          v108 = v37;
          _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Manufacturer %@ contains an invalid model entry for %@", buf, 0x20u);
        }

        dictionary = v82;
        v15 = v85;
        v56 = v86;
LABEL_46:

        objc_autoreleasePoolPop(v57);
        goto LABEL_47;
      }

      v39 = v38;
      v40 = [(HMDVendorDataManager *)v92 _parseVendorModelEntryForManufacturer:v24 model:v37 dictionary:v38];
      [(HMDVendorModelCollection *)v91 addEntry:v40];
      productData = [v40 productData];
      if (productData)
      {
        v42 = dictionary2;
        v43 = [dictionary2 objectForKeyedSubscript:productData];
        v44 = v43;
        if (!v43 || [v43 compare:v40] == -1)
        {
          [v42 setObject:v40 forKeyedSubscript:productData];
        }

        dictionary2 = v42;
        whitespaceCharacterSet = v88;
      }

      ++v33;
      v24 = v89;
      if (v31 == v33)
      {
        v31 = [v29 countByEnumeratingWithState:&v94 objects:v102 count:16];
        dictionary = v82;
        v20 = v84;
        if (v31)
        {
          goto LABEL_18;
        }

LABEL_33:

        v45 = [v87 hmf_dictionaryForKey:@"DefaultModel"];
        if (v45)
        {
          v46 = [(HMDVendorDataManager *)v92 _parseVendorModelEntryForManufacturer:v24 model:@"DefaultModel" dictionary:v45];
          [(HMDVendorModelCollection *)v91 setDefaultEntry:v46];
        }

        objc_autoreleasePoolPop(v20);
        v18 = v81 + 1;
        v15 = v85;
        selfCopy = v92;
        v17 = v78;
        data = dataCopy;
        if (v81 + 1 == v80)
        {
          v16 = [(__CFString *)v85 countByEnumeratingWithState:&v98 objects:v109 count:16];
          if (!v16)
          {
            goto LABEL_37;
          }

          goto LABEL_5;
        }

        goto LABEL_6;
      }
    }

    v90 = objc_autoreleasePoolPush();
    v53 = v92;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = HMFGetLogIdentifier();
      *buf = 138543874;
      v104 = v55;
      v105 = 2112;
      v106 = v24;
      v107 = 2112;
      v108 = v34;
      _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Models dictionary for %@ contains invalid key: %@", buf, 0x20u);
    }

    dictionary = v82;
    v15 = v85;
    v56 = v86;
    v57 = v90;
    goto LABEL_46;
  }

  v84 = v20;
  v73 = objc_autoreleasePoolPush();
  v74 = v92;
  v75 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
  {
    v76 = HMFGetLogIdentifier();
    [v87 objectForKeyedSubscript:@"Models"];
    v77 = v93 = dictionary2;
    *buf = 138543874;
    v104 = v76;
    v105 = 2112;
    v106 = @"Models";
    v107 = 2112;
    v108 = v77;
    _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_ERROR, "%{public}@Manufacturers dictionary contains an invalid %@ value: %@", buf, 0x20u);

    dictionary2 = v93;
    whitespaceCharacterSet = v88;
  }

  objc_autoreleasePoolPop(v73);
  v29 = 0;
  v56 = v86;
LABEL_47:

  v20 = v84;
LABEL_48:

  objc_autoreleasePoolPop(v20);
  v52 = 0;
LABEL_49:

  return v52;
}

- (id)_parseVendorModelEntryForManufacturer:(id)manufacturer model:(id)model dictionary:(id)dictionary
{
  v39 = *MEMORY[0x277D85DE8];
  manufacturerCopy = manufacturer;
  modelCopy = model;
  dictionaryCopy = dictionary;
  v32 = [(HMDVendorDataManager *)self _modelsStringForManufacturer:manufacturerCopy model:modelCopy dictionary:dictionaryCopy key:@"BundleID"];
  v31 = [(HMDVendorDataManager *)self _modelsStringForManufacturer:manufacturerCopy model:modelCopy dictionary:dictionaryCopy key:@"StoreID"];
  v30 = [(HMDVendorDataManager *)self _modelsStringForManufacturer:manufacturerCopy model:modelCopy dictionary:dictionaryCopy key:@"FirmwareVersion"];
  v11 = [(HMDVendorDataManager *)self _modelsStringForManufacturer:manufacturerCopy model:modelCopy dictionary:dictionaryCopy key:@"ProductData"];
  if (v11 && ![HMDAccessory validateProductData:v11])
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [dictionaryCopy objectForKeyedSubscript:@"ProductData"];
      *buf = 138544386;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = manufacturerCopy;
      *&buf[22] = 2112;
      v37 = modelCopy;
      *v38 = 2112;
      *&v38[2] = @"ProductData";
      *&v38[10] = 2112;
      *&v38[12] = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Models dictionary for %@:%@ contains an invalid %@ value: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(context);
    v11 = 0;
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"ProductDataChangeAllowedTo"];

  if (v16)
  {
    v17 = [dictionaryCopy hmf_arrayForKey:@"ProductDataChangeAllowedTo"];
    if (![v17 count] || ((objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet"), v18 = objc_claimAutoreleasedReturnValue(), *buf = 0, *&buf[8] = buf, *&buf[16] = 0x3032000000, v37 = __Block_byref_object_copy__191167, *v38 = __Block_byref_object_dispose__191168, objc_msgSend(MEMORY[0x277CBEB18], "arrayWithCapacity:", objc_msgSend(v17, "count")), *&v38[8] = objc_claimAutoreleasedReturnValue(), v33[0] = MEMORY[0x277D85DD0], v33[1] = 3221225472, v33[2] = __79__HMDVendorDataManager__parseVendorModelEntryForManufacturer_model_dictionary___block_invoke, v33[3] = &unk_27867E400, v19 = v18, v34 = v19, v35 = buf, objc_msgSend(v17, "hmf_enumerateWithAutoreleasePoolUsingBlock:", v33), (v20 = *(*&buf[8] + 40)) == 0) ? (v21 = 0) : (v21 = objc_msgSend_copy(v20)), v34, _Block_object_dispose(buf, 8), *&v38[8], v19, !v21))
    {
      contexta = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [dictionaryCopy objectForKeyedSubscript:@"ProductDataChangeAllowedTo"];
        *buf = 138544386;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = manufacturerCopy;
        *&buf[22] = 2112;
        v37 = modelCopy;
        *v38 = 2112;
        *&v38[2] = @"ProductDataChangeAllowedTo";
        *&v38[10] = 2112;
        *&v38[12] = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Models dictionary for %@:%@ contains an invalid %@ value: %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(contexta);
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v26 = [[HMDVendorModelEntry alloc] initWithManufacturer:manufacturerCopy model:modelCopy appBundleID:v32 appStoreID:v31 firmwareVersion:v30 productData:v11 productDataAlternates:v21];

  return v26;
}

void __79__HMDVendorDataManager__parseVendorModelEntryForManufacturer_model_dictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v12;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 stringByTrimmingCharactersInSet:*(a1 + 32)];

  v9 = [v8 lowercaseString];

  if (v9 && [HMDAccessory validateProductData:v9])
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v9];
  }

  else
  {
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    *a4 = 1;
  }
}

- (id)_modelsStringForManufacturer:(id)manufacturer model:(id)model dictionary:(id)dictionary key:(id)key
{
  v34 = *MEMORY[0x277D85DE8];
  manufacturerCopy = manufacturer;
  modelCopy = model;
  dictionaryCopy = dictionary;
  keyCopy = key;
  v14 = [dictionaryCopy hmf_stringForKey:keyCopy];
  if (v14)
  {
    v15 = v14;
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v17 = [v15 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    if ([v17 length])
    {
      if (v17)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_7:
  v17 = [dictionaryCopy objectForKeyedSubscript:keyCopy];

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
      v24 = 138544386;
      v25 = v21;
      v26 = 2112;
      v27 = manufacturerCopy;
      v28 = 2112;
      v29 = modelCopy;
      v30 = 2112;
      v31 = keyCopy;
      v32 = 2112;
      v33 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Models dictionary for %@:%@ contains an invalid %@ value: %@", &v24, 0x34u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

LABEL_11:

  return v17;
}

- (BOOL)_parseDatabaseFromDictionary:(id)dictionary dataVersion:(int64_t *)version collectionsByManufacturer:(id *)manufacturer entriesByProductData:(id *)data
{
  v137[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  HMFUptime();
  v12 = v11;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138544386;
    v115 = v16;
    v116 = 2114;
    v117 = @"vendorDataManagerStart";
    v118 = 2112;
    v119 = @"Parsing vendor database";
    v120 = 2114;
    v121 = @"state";
    v122 = 2112;
    v123 = @"vendorDataManagerParsingData";
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
  v18 = objc_alloc(MEMORY[0x277D17DF8]);
  v136 = @"state";
  v137[0] = @"vendorDataManagerParsingData";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:&v136 count:1];
  v20 = [v18 initWithTag:@"vendorDataManagerStart" data:v19];
  currentTagProcessorList = [MEMORY[0x277D0F770] currentTagProcessorList];
  [mEMORY[0x277D17DE8] submitTaggedEvent:v20 processorList:currentTagProcessorList];

  v22 = [dictionaryCopy hmf_numberForKey:@"SchemaVersion"];
  integerValue = [v22 integerValue];

  if (integerValue != 1)
  {
    v37 = objc_autoreleasePoolPush();
    v38 = selfCopy;
    v39 = HMFGetOSLogHandle();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    v41 = MEMORY[0x277CBEC28];
    if (v40)
    {
      v42 = HMFGetLogIdentifier();
      v43 = [dictionaryCopy hmf_numberForKey:@"SchemaVersion"];
      *buf = 138545410;
      v115 = v42;
      v116 = 2114;
      v117 = @"vendorDataManagerStart";
      v118 = 2112;
      v119 = @"Error: Unsupported schema version";
      v120 = 2114;
      v121 = @"state";
      v122 = 2112;
      v123 = @"vendorDataManagerParsedData";
      v124 = 2114;
      v125 = @"success";
      v126 = 2112;
      v127 = v41;
      v128 = 2114;
      v129 = @"DataVersion";
      v130 = 2112;
      v131 = v43;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
    }

    objc_autoreleasePoolPop(v37);
    mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
    v44 = objc_alloc(MEMORY[0x277D17DF8]);
    mEMORY[0x277D17DE8]3 = [dictionaryCopy hmf_numberForKey:@"SchemaVersion"];
    v34 = HMDTaggedLoggingCreateDictionary();
    v35 = [v44 initWithTag:@"vendorDataManagerStart" data:{v34, @"state", @"vendorDataManagerParsedData", @"success", v41, @"DataVersion", mEMORY[0x277D17DE8]3}];
    v36 = MEMORY[0x277D0F770];
    goto LABEL_12;
  }

  v24 = [dictionaryCopy hmf_numberForKey:@"DataVersion"];
  integerValue2 = [v24 integerValue];

  if (integerValue2 <= 52)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v30 = [dictionaryCopy hmf_numberForKey:@"DataVersion"];
      *buf = 138545922;
      v115 = v29;
      v116 = 2114;
      v117 = @"vendorDataManagerStart";
      v118 = 2112;
      v119 = @"Error: Data version is lower than minimum";
      v120 = 2114;
      v121 = @"state";
      v122 = 2112;
      v123 = @"vendorDataManagerParsedData";
      v124 = 2114;
      v125 = @"success";
      v126 = 2112;
      v127 = MEMORY[0x277CBEC28];
      v128 = 2114;
      v129 = @"DataVersion";
      v130 = 2112;
      v131 = v30;
      v132 = 2114;
      v133 = @"MinVersion";
      v134 = 2112;
      v135 = &unk_283E73A48;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x70u);
    }

    objc_autoreleasePoolPop(v26);
    mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
    v32 = objc_alloc(MEMORY[0x277D17DF8]);
    mEMORY[0x277D17DE8]3 = [dictionaryCopy hmf_numberForKey:@"DataVersion"];
    v98 = mEMORY[0x277D17DE8]3;
    v94 = MEMORY[0x277CBEC28];
LABEL_8:
    v34 = HMDTaggedLoggingCreateDictionary();
    v35 = [v32 initWithTag:@"vendorDataManagerStart" data:{v34, @"state", @"vendorDataManagerParsedData", @"success", v94, @"DataVersion", v98}];
    v36 = MEMORY[0x277D0F770];
LABEL_12:
    currentTagProcessorList2 = [v36 currentTagProcessorList];
    [(__CFString *)mEMORY[0x277D17DE8]2 submitTaggedEvent:v35 processorList:currentTagProcessorList2];
LABEL_13:

LABEL_14:
    v46 = 0;
    goto LABEL_15;
  }

  if (integerValue2 < [(HMDVendorDataManager *)selfCopy dataVersion])
  {
    v48 = objc_autoreleasePoolPush();
    v49 = selfCopy;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = HMFGetLogIdentifier();
      v52 = [MEMORY[0x277CCABB0] numberWithLong:integerValue2];
      v53 = [MEMORY[0x277CCABB0] numberWithLong:{-[HMDVendorDataManager dataVersion](v49, "dataVersion")}];
      *buf = 138545922;
      v115 = v51;
      v116 = 2114;
      v117 = @"vendorDataManagerStart";
      v118 = 2112;
      v119 = @"Error: Data version is lower than current";
      v120 = 2114;
      v121 = @"state";
      v122 = 2112;
      v123 = @"vendorDataManagerParsedData";
      v124 = 2114;
      v125 = @"success";
      v126 = 2112;
      v127 = MEMORY[0x277CBEC28];
      v128 = 2114;
      v129 = @"DataVersion";
      v130 = 2112;
      v131 = v52;
      v132 = 2114;
      v133 = @"CurrentVersion";
      v134 = 2112;
      v135 = v53;
      _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x70u);
    }

    objc_autoreleasePoolPop(v48);
    mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
    v54 = objc_alloc(MEMORY[0x277D17DF8]);
    mEMORY[0x277D17DE8]3 = [MEMORY[0x277CCABB0] numberWithLong:integerValue2];
    v34 = [MEMORY[0x277CCABB0] numberWithLong:{-[HMDVendorDataManager dataVersion](v49, "dataVersion")}];
    v95 = MEMORY[0x277CBEC28];
    v35 = HMDTaggedLoggingCreateDictionary();
    currentTagProcessorList2 = [v54 initWithTag:@"vendorDataManagerStart" data:{v35, @"state", @"vendorDataManagerParsedData", @"success", v95, @"DataVersion", mEMORY[0x277D17DE8]3, @"CurrentVersion", v34}];
    currentTagProcessorList3 = [MEMORY[0x277D0F770] currentTagProcessorList];
    [(__CFString *)mEMORY[0x277D17DE8]2 submitTaggedEvent:currentTagProcessorList2 processorList:currentTagProcessorList3];

    goto LABEL_13;
  }

  dataVersion = [(HMDVendorDataManager *)selfCopy dataVersion];
  v57 = objc_autoreleasePoolPush();
  v58 = selfCopy;
  v59 = HMFGetOSLogHandle();
  v60 = v59;
  if (integerValue2 == dataVersion)
  {
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      v61 = HMFGetLogIdentifier();
      v62 = [MEMORY[0x277CCABB0] numberWithLong:integerValue2];
      *buf = 138545410;
      v115 = v61;
      v116 = 2114;
      v117 = @"vendorDataManagerStart";
      v118 = 2112;
      v119 = @"Data version is the same as current";
      v120 = 2114;
      v121 = @"state";
      v122 = 2112;
      v123 = @"vendorDataManagerParsedData";
      v124 = 2114;
      v125 = @"success";
      v126 = 2112;
      v127 = MEMORY[0x277CBEC28];
      v128 = 2114;
      v129 = @"DataVersion";
      v130 = 2112;
      v131 = v62;
      _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
    }

    objc_autoreleasePoolPop(v57);
    mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
    v32 = objc_alloc(MEMORY[0x277D17DF8]);
    mEMORY[0x277D17DE8]3 = [MEMORY[0x277CCABB0] numberWithLong:integerValue2];
    v98 = mEMORY[0x277D17DE8]3;
    v94 = MEMORY[0x277CBEC28];
    goto LABEL_8;
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v63 = HMFGetLogIdentifier();
    *buf = 138543618;
    v115 = v63;
    v116 = 2048;
    v117 = integerValue2;
    _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@Parsing data version %ld", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v57);
  v64 = [dictionaryCopy hmf_dictionaryForKey:@"Manufacturers"];
  if (!v64)
  {
    v75 = objc_autoreleasePoolPush();
    v76 = v58;
    v77 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      v78 = HMFGetLogIdentifier();
      v79 = [dictionaryCopy objectForKeyedSubscript:@"Manufacturers"];
      *buf = 138545410;
      v115 = v78;
      v116 = 2114;
      v117 = @"vendorDataManagerStart";
      v118 = 2112;
      v119 = @"Error: Data contains invalid manufacturers";
      v120 = 2114;
      v121 = @"state";
      v122 = 2112;
      v123 = @"vendorDataManagerParsedData";
      v124 = 2114;
      v125 = @"success";
      v126 = 2112;
      v127 = MEMORY[0x277CBEC28];
      v128 = 2114;
      v129 = @"Manufacturers";
      v130 = 2112;
      v131 = v79;
      _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
    }

    objc_autoreleasePoolPop(v75);
    mEMORY[0x277D17DE8]3 = [MEMORY[0x277D17DE8] sharedInstance];
    v80 = objc_alloc(MEMORY[0x277D17DF8]);
    v34 = [dictionaryCopy objectForKeyedSubscript:@"Manufacturers"];
    v96 = MEMORY[0x277CBEC28];
    v81 = HMDTaggedLoggingCreateDictionary();
    v82 = [v80 initWithTag:@"vendorDataManagerStart" data:{v81, @"state", @"vendorDataManagerParsedData", @"success", v96, @"Manufacturers", v34}];
    currentTagProcessorList4 = [MEMORY[0x277D0F770] currentTagProcessorList];
    [mEMORY[0x277D17DE8]3 submitTaggedEvent:v82 processorList:currentTagProcessorList4];

    mEMORY[0x277D17DE8]2 = 0;
    goto LABEL_14;
  }

  mEMORY[0x277D17DE8]2 = v64;
  v112 = 0;
  v113 = 0;
  v105 = [(HMDVendorDataManager *)v58 _parseManufacturersList:v64 collectionsByManufacturer:&v113 entriesByProductData:&v112];
  mEMORY[0x277D17DE8]3 = v113;
  v34 = v112;
  context = objc_autoreleasePoolPush();
  v110 = v58;
  v65 = HMFGetOSLogHandle();
  v66 = v65;
  if (!v105)
  {
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v84 = HMFGetLogIdentifier();
      *buf = 138544898;
      v115 = v84;
      v116 = 2114;
      v117 = @"vendorDataManagerStart";
      v118 = 2112;
      v119 = @"Error: Manufacturers failed to parse";
      v120 = 2114;
      v121 = @"state";
      v122 = 2112;
      v123 = @"vendorDataManagerParsedData";
      v124 = 2114;
      v125 = @"success";
      v126 = 2112;
      v127 = MEMORY[0x277CBEC28];
      _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(context);
    mEMORY[0x277D17DE8]4 = [MEMORY[0x277D17DE8] sharedInstance];
    v86 = objc_alloc(MEMORY[0x277D17DF8]);
    v97 = MEMORY[0x277CBEC28];
    v87 = HMDTaggedLoggingCreateDictionary();
    v88 = [v86 initWithTag:@"vendorDataManagerStart" data:{v87, @"state", @"vendorDataManagerParsedData", @"success", v97}];
    currentTagProcessorList5 = [MEMORY[0x277D0F770] currentTagProcessorList];
    [mEMORY[0x277D17DE8]4 submitTaggedEvent:v88 processorList:currentTagProcessorList5];

    v90 = objc_autoreleasePoolPush();
    v91 = v110;
    v92 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v93 = HMFGetLogIdentifier();
      *buf = 138543618;
      v115 = v93;
      v116 = 2112;
      v117 = mEMORY[0x277D17DE8]2;
      _os_log_impl(&dword_229538000, v92, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse manufacturers: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v90);
    goto LABEL_14;
  }

  if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
  {
    v67 = HMFGetLogIdentifier();
    v102 = MEMORY[0x277CCACA8];
    v106 = v67;
    HMFUptime();
    v103 = [v102 stringWithFormat:@"%.3f", v68 - v12];
    v100 = [MEMORY[0x277CCABB0] numberWithLong:integerValue2];
    *buf = 138545922;
    v115 = v106;
    v116 = 2114;
    v117 = @"vendorDataManagerStart";
    v118 = 2112;
    v119 = @"Parsing succeeded";
    v120 = 2114;
    v121 = @"state";
    v122 = 2112;
    v123 = @"vendorDataManagerParsedData";
    v124 = 2114;
    v125 = @"duration";
    v126 = 2112;
    v127 = v103;
    v128 = 2114;
    v129 = @"success";
    v130 = 2112;
    v131 = MEMORY[0x277CBEC38];
    v132 = 2114;
    v133 = @"DataVersion";
    v134 = 2112;
    v135 = v100;
    _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x70u);
  }

  objc_autoreleasePoolPop(context);
  mEMORY[0x277D17DE8]5 = [MEMORY[0x277D17DE8] sharedInstance];
  v104 = objc_alloc(MEMORY[0x277D17DF8]);
  v69 = MEMORY[0x277CCACA8];
  HMFUptime();
  v107 = [v69 stringWithFormat:@"%.3f", v70 - v12];
  contexta = [MEMORY[0x277CCABB0] numberWithLong:integerValue2];
  v99 = MEMORY[0x277CBEC38];
  v101 = HMDTaggedLoggingCreateDictionary();
  v71 = [v104 initWithTag:@"vendorDataManagerStart" data:{v101, @"state", @"vendorDataManagerParsedData", @"duration", v107, @"success", v99, @"DataVersion", contexta}];
  currentTagProcessorList6 = [MEMORY[0x277D0F770] currentTagProcessorList];
  [mEMORY[0x277D17DE8]5 submitTaggedEvent:v71 processorList:currentTagProcessorList6];

  *version = integerValue2;
  v73 = mEMORY[0x277D17DE8]3;
  *manufacturer = mEMORY[0x277D17DE8]3;
  v74 = v34;
  *data = v34;
  v46 = 1;
LABEL_15:

  return v46;
}

- (void)_handleDataFromServer:(id)server
{
  v50 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v43 = 0;
  v5 = [MEMORY[0x277CCAC58] propertyListWithData:serverCopy options:0 format:0 error:&v43];
  v6 = v43;
  if (v5)
  {
    v41 = 0;
    v42 = 0;
    v40 = 0;
    v7 = [(HMDVendorDataManager *)self _parseDatabaseFromDictionary:v5 dataVersion:&v42 collectionsByManufacturer:&v41 entriesByProductData:&v40];
    v8 = v41;
    v9 = v40;
    if (v7)
    {
      v35 = v6;
      v37 = v9;
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully parsed database from server, saving to disk", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [serverCopy writeToFile:@"/var/mobile/Library/homed/vendor-database" atomically:1];
      v14 = [MEMORY[0x277CBEB58] set];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __46__HMDVendorDataManager__handleDataFromServer___block_invoke;
      v38[3] = &unk_27867E3D8;
      v38[4] = selfCopy;
      v15 = v14;
      v39 = v15;
      [v8 enumerateKeysAndObjectsUsingBlock:v38];
      v16 = MEMORY[0x277CBEB98];
      allKeys = [v8 allKeys];
      v18 = [v16 setWithArray:allKeys];

      v19 = MEMORY[0x277CBEB58];
      collectionsByManufacturer = [(HMDVendorDataManager *)selfCopy collectionsByManufacturer];
      allKeys2 = [collectionsByManufacturer allKeys];
      v22 = [v19 setWithArray:allKeys2];

      v36 = v18;
      [v22 minusSet:v18];
      if ([v22 count])
      {
        allObjects = [v22 allObjects];
        [v15 addObjectsFromArray:allObjects];
      }

      [(HMDVendorDataManager *)selfCopy setDataVersion:v42];
      [(HMDVendorDataManager *)selfCopy setCollectionsByManufacturer:v8];
      [(HMDVendorDataManager *)selfCopy setEntriesByProductData:v37];
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v27;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Setting entriesByProductData", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v6 = v35;
      if ([v15 count])
      {
        v44 = @"ChangedManufacturer";
        allObjects2 = [v15 allObjects];
        v45 = allObjects2;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:@"kHMDVendorInfoUpdatedNotification" object:v25 userInfo:v29];
      }

      v9 = v37;
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v34;
      v48 = 2112;
      v49 = v6;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Error while deserializing plist from server data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
  }
}

void __46__HMDVendorDataManager__handleDataFromServer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) collectionsByManufacturer];
  v7 = [v6 objectForKeyedSubscript:v8];

  if (!v7 || ([v7 isEqual:v5] & 1) == 0)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (void)_handleServerResponse:(id)response withData:(id)data error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  fetchTimer = [(HMDVendorDataManager *)self fetchTimer];
  [fetchTimer kick];

  if (errorCopy)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = errorCopy;
      v16 = "%{public}@Failed to get the vendor info with error: %@";
      v17 = v14;
      v18 = 22;
LABEL_9:
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, v16, &v26, v18);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v15;
      v16 = "%{public}@Failed to receive HTTP response";
      v17 = v14;
      v18 = 12;
      goto LABEL_9;
    }

LABEL_10:

    objc_autoreleasePoolPop(v12);
    goto LABEL_11;
  }

  v19 = responseCopy;
  statusCode = [v19 statusCode];
  if (statusCode == 200)
  {
    [(HMDVendorDataManager *)self _handleDataFromServer:dataCopy];
  }

  else
  {
    v21 = statusCode;
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v25;
      v28 = 2048;
      v29 = v21;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Received status code %ld from vendor info request", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }

LABEL_11:
}

- (void)_fetchDataFromServer
{
  objc_initWeak(&location, self);
  v3 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"ManufacturerDB.fetch" parent:0 options:1];
  simpleDownloader = [(HMDVendorDataManager *)self simpleDownloader];
  dbURL = [objc_opt_class() dbURL];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDVendorDataManager__fetchDataFromServer__block_invoke;
  v7[3] = &unk_27867E3B0;
  objc_copyWeak(&v9, &location);
  v6 = v3;
  v8 = v6;
  [simpleDownloader fetchURL:dbURL completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __44__HMDVendorDataManager__fetchDataFromServer__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__HMDVendorDataManager__fetchDataFromServer__block_invoke_2;
    block[3] = &unk_278689550;
    v14 = *(a1 + 32);
    v15 = v11;
    v16 = v8;
    v17 = v7;
    v18 = v9;
    dispatch_async(v12, block);
  }
}

uint64_t __44__HMDVendorDataManager__fetchDataFromServer__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) begin];
  [*(a1 + 40) _handleServerResponse:*(a1 + 48) withData:*(a1 + 56) error:*(a1 + 64)];
  [*(a1 + 32) end];
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)_start
{
  workQueue = [(HMDVendorDataManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HMDVendorDataManager__start__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __30__HMDVendorDataManager__start__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) fetchTimer];
  [v6 resume];

  return [*(a1 + 32) _fetchDataFromServer];
}

- (void)_loadDatabaseFromLocalFiles
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__HMDVendorDataManager__loadDatabaseFromLocalFiles__block_invoke;
  v2[3] = &unk_27868A728;
  v2[4] = self;
  [MEMORY[0x277D0F770] activityWithName:@"ManufacturerDB.load" parent:0 options:1 block:v2];
}

void __51__HMDVendorDataManager__loadDatabaseFromLocalFiles__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"allowVendorDataOverride"];
  if ([v3 BOOLValue])
  {
    v4 = [*(a1 + 32) _loadDatabaseFromFilePath:@"/var/mobile/Library/homed/vendor-database-local" fileDescription:@"side-loaded"];

    if (v4)
    {
      return;
    }
  }

  else
  {
  }

  if (([*(a1 + 32) _loadDatabaseFromFilePath:@"/var/mobile/Library/homed/vendor-database" fileDescription:@"cached"] & 1) == 0)
  {
    v5 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v6 = [v5 preferenceForKey:@"allowVendorDataOverride"];
    v7 = [v6 BOOLValue];

    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = [v8 urlForBundledInternalPlist];
      v10 = @"bundled internal";
    }

    else
    {
      v9 = [v8 urlForBundledPlist];
      v10 = @"bundled";
    }

    v11 = [v8 _loadDatabaseFromFileURL:v9 fileDescription:v10];

    if ((v11 & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to read any local database files", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      [*(a1 + 32) setDataVersion:0];
      [*(a1 + 32) setCollectionsByManufacturer:MEMORY[0x277CBEC10]];
    }
  }
}

- (BOOL)_loadDatabaseFromFilePath:(id)path fileDescription:(id)description
{
  v6 = MEMORY[0x277CBEBC0];
  descriptionCopy = description;
  v8 = [v6 fileURLWithPath:path isDirectory:0];
  LOBYTE(self) = [(HMDVendorDataManager *)self _loadDatabaseFromFileURL:v8 fileDescription:descriptionCopy];

  return self;
}

- (BOOL)_loadDatabaseFromFileURL:(id)l fileDescription:(id)description
{
  v32 = *MEMORY[0x277D85DE8];
  lCopy = l;
  descriptionCopy = description;
  v25 = 0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:lCopy error:&v25];
  v9 = v25;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (!v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v27 = v20;
      v28 = 2112;
      v29 = descriptionCopy;
      v30 = 2112;
      v31 = v9;
      v21 = "%{public}@Failed to read %@ plist file on disk: %@";
      v22 = v13;
      v23 = 32;
LABEL_12:
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
    }

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v14;
    v28 = 2112;
    v29 = descriptionCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Read data from %@ plist file on disk", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDVendorDataManager *)selfCopy _loadDatabaseFromDictionary:v8];
  v10 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  v13 = v17;
  if (!v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = descriptionCopy;
      v21 = "%{public}@Failed to parse %@ plist file on disk";
      v22 = v13;
      v23 = 22;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v18;
    v28 = 2112;
    v29 = descriptionCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Loaded database from %@ plist file on disk", buf, 0x16u);
  }

  v19 = 1;
LABEL_14:

  objc_autoreleasePoolPop(v10);
  return v19;
}

- (BOOL)_loadDatabaseFromDictionary:(id)dictionary
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v4 = [(HMDVendorDataManager *)self _parseDatabaseFromDictionary:dictionary dataVersion:&v10 collectionsByManufacturer:&v9 entriesByProductData:&v8];
  v5 = v9;
  v6 = v8;
  if (v4)
  {
    [(HMDVendorDataManager *)self setDataVersion:v10];
    [(HMDVendorDataManager *)self setCollectionsByManufacturer:v5];
    [(HMDVendorDataManager *)self setEntriesByProductData:v6];
  }

  return v4;
}

- (NSURL)urlForBundledInternalPlist
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"ManufacturerDatabase-local" withExtension:@"plist"];

  return v3;
}

- (NSURL)urlForBundledPlist
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"ManufacturerDatabase" withExtension:@"plist"];

  return v3;
}

- (BOOL)databaseContainsManufacturer:(id)manufacturer
{
  v3 = [(HMDVendorDataManager *)self modelCollectionForManufacturer:manufacturer];
  v4 = v3 != 0;

  return v4;
}

- (id)vendorModelEntryForProductData:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA900];
  dataCopy = data;
  whitespaceCharacterSet = [v4 whitespaceCharacterSet];
  v7 = [dataCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  lowercaseString = [v7 lowercaseString];

  if ([HMDAccessory validateProductData:lowercaseString])
  {
    v9 = [(NSData *)self->_entriesByProductDataMmap hmf_objectForKey:lowercaseString forDictionaryAtOffset:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = [[HMDVendorModelEntry alloc] initWithEncodedData:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = lowercaseString;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invalid product data: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  return v12;
}

- (id)vendorModelEntryForManufacturer:(id)manufacturer model:(id)model
{
  modelCopy = model;
  v7 = [(HMDVendorDataManager *)self modelCollectionForManufacturer:manufacturer];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v9 = [modelCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  v10 = [v7 lookupModel:v9];

  return v10;
}

- (id)modelCollectionForManufacturer:(id)manufacturer
{
  manufacturerCopy = manufacturer;
  if (manufacturerCopy)
  {
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v6 = [(HMDVendorModelCollection *)manufacturerCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    lowercaseString = [v6 lowercaseString];

    v8 = [(NSData *)self->_collectionsByManufacturerMmap hmf_objectForKey:lowercaseString forDictionaryAtOffset:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      manufacturerCopy = [[HMDVendorModelCollection alloc] initWithEncodedData:v10];
    }

    else
    {
      manufacturerCopy = 0;
    }
  }

  return manufacturerCopy;
}

- (NSDictionary)collectionsByManufacturer
{
  v14 = 0;
  v2 = [(NSData *)self->_collectionsByManufacturerMmap hmf_readObjectAtOffset:&v14];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __49__HMDVendorDataManager_collectionsByManufacturer__block_invoke;
  v12 = &unk_27867E388;
  v13 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];

  v7 = objc_msgSend_copy(v6, v9, v10, v11, v12);

  return v7;
}

void __49__HMDVendorDataManager_collectionsByManufacturer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[HMDVendorModelCollection alloc] initWithEncodedData:v5];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (void)setCollectionsByManufacturer:(id)manufacturer
{
  v4 = MEMORY[0x277CBEB38];
  manufacturerCopy = manufacturer;
  v6 = [v4 dictionaryWithCapacity:{objc_msgSend(manufacturerCopy, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HMDVendorDataManager_setCollectionsByManufacturer___block_invoke;
  v11[3] = &unk_27867E360;
  v12 = v6;
  v7 = v6;
  [manufacturerCopy enumerateKeysAndObjectsUsingBlock:v11];

  v8 = objc_opt_new();
  [v8 hmf_appendObject:v7];
  v9 = [(HMDVendorDataManager *)self _createMmapFromEncodedData:v8 errorContext:@"Manufacturer Collections"];
  collectionsByManufacturerMmap = self->_collectionsByManufacturerMmap;
  self->_collectionsByManufacturerMmap = v9;
}

void __53__HMDVendorDataManager_setCollectionsByManufacturer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 asEncodedData];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)setEntriesByProductData:(id)data
{
  v4 = MEMORY[0x277CBEB38];
  dataCopy = data;
  v6 = [v4 dictionaryWithCapacity:{objc_msgSend(dataCopy, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HMDVendorDataManager_setEntriesByProductData___block_invoke;
  v11[3] = &unk_27867E338;
  v12 = v6;
  v7 = v6;
  [dataCopy enumerateKeysAndObjectsUsingBlock:v11];

  v8 = objc_opt_new();
  [v8 hmf_appendObject:v7];
  v9 = [(HMDVendorDataManager *)self _createMmapFromEncodedData:v8 errorContext:@"Product Entries"];
  entriesByProductDataMmap = self->_entriesByProductDataMmap;
  self->_entriesByProductDataMmap = v9;
}

void __48__HMDVendorDataManager_setEntriesByProductData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 asEncodedData];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)_createMmapFromEncodedData:(id)data errorContext:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  v8 = NSTemporaryDirectory();
  v9 = objc_opt_new();
  uUIDString = [v9 UUIDString];
  v11 = [v8 stringByAppendingPathComponent:uUIDString];

  [dataCopy writeToFile:v11 atomically:1];
  v27 = 0;
  v12 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v11 options:1 error:&v27];
  v13 = v27;
  if (v13)
  {
    v14 = v13;
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v18;
      v30 = 2112;
      v31 = contextCopy;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to mmap %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = 0;
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    [defaultManager removeItemAtPath:v11 error:&v26];
    v14 = v26;
    if (v14)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543874;
        v29 = v24;
        v30 = 2112;
        v31 = contextCopy;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove %@ mapping file: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
    }

    v19 = v12;
  }

  return v19;
}

- (HMDVendorDataManager)initWithDefaults
{
  v53[1] = *MEMORY[0x277D85DE8];
  HMFUptime();
  v4 = v3;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138544386;
    v39 = v8;
    v40 = 2114;
    v41 = @"vendorDataManagerStart";
    v42 = 2112;
    v43 = @"Vendor Data Manager loading";
    v44 = 2114;
    v45 = @"state";
    v46 = 2112;
    v47 = @"start";
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v5);
  mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
  v10 = objc_alloc(MEMORY[0x277D17DF8]);
  v52 = @"state";
  v53[0] = @"start";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  v12 = [v10 initWithTag:@"vendorDataManagerStart" data:v11];
  currentTagProcessorList = [MEMORY[0x277D0F770] currentTagProcessorList];
  [mEMORY[0x277D17DE8] submitTaggedEvent:v12 processorList:currentTagProcessorList];

  v14 = HMDispatchQueueNameString();
  uTF8String = [v14 UTF8String];
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create(uTF8String, v16);

  v18 = [[HMDDefaultSimpleDownloader alloc] initWithLogIdentifier:@"ManufacturerDB"];
  v19 = objc_alloc(MEMORY[0x277D0F920]);
  v20 = [v19 initWithTimeInterval:5 options:*&vendorInfoFetchPeriod];
  v21 = [(HMDVendorDataManager *)selfCopy initWithWorkQueue:v17 downloader:v18 fetchTimer:v20];
  [(HMDVendorDataManager *)v21 _loadDatabaseFromLocalFiles];
  v22 = objc_autoreleasePoolPush();
  v23 = v21;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    v26 = MEMORY[0x277CCACA8];
    HMFUptime();
    v28 = [v26 stringWithFormat:@"%.3f", v27 - v4];
    *buf = 138544898;
    v39 = v25;
    v40 = 2114;
    v41 = @"vendorDataManagerDone";
    v42 = 2112;
    v43 = @"Vendor Data Manager loaded";
    v44 = 2114;
    v45 = @"state";
    v46 = 2112;
    v47 = @"end";
    v48 = 2114;
    v49 = @"duration";
    v50 = 2112;
    v51 = v28;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v22);
  mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
  v30 = objc_alloc(MEMORY[0x277D17DF8]);
  v31 = MEMORY[0x277CCACA8];
  HMFUptime();
  v33 = [v31 stringWithFormat:@"%.3f", v32 - v4];
  v34 = HMDTaggedLoggingCreateDictionary();
  v35 = [v30 initWithTag:@"vendorDataManagerDone" data:{v34, @"state", @"end", @"duration", v33}];
  currentTagProcessorList2 = [MEMORY[0x277D0F770] currentTagProcessorList];
  [mEMORY[0x277D17DE8]2 submitTaggedEvent:v35 processorList:currentTagProcessorList2];

  return v23;
}

- (HMDVendorDataManager)initWithWorkQueue:(id)queue downloader:(id)downloader fetchTimer:(id)timer
{
  queueCopy = queue;
  downloaderCopy = downloader;
  timerCopy = timer;
  v15.receiver = self;
  v15.super_class = HMDVendorDataManager;
  v12 = [(HMDVendorDataManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, queue);
    objc_storeStrong(&v13->_simpleDownloader, downloader);
    objc_storeStrong(&v13->_fetchTimer, timer);
    [timerCopy setDelegate:v13];
    [timerCopy setDelegateQueue:queueCopy];
  }

  return v13;
}

- (HMDVendorDataManager)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t43_191342 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t43_191342, &__block_literal_global_167);
  }

  v3 = logCategory__hmf_once_v44_191343;

  return v3;
}

void __35__HMDVendorDataManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v44_191343;
  logCategory__hmf_once_v44_191343 = v0;
}

+ (id)dbURL
{
  if (dbURL_onceToken != -1)
  {
    dispatch_once(&dbURL_onceToken, &__block_literal_global_54_191344);
  }

  v3 = dbURL_url;

  return v3;
}

void __29__HMDVendorDataManager_dbURL__block_invoke(uint64_t a1)
{
  if (isInternalBuild())
  {
    v1 = vendorInfoDatabaseServerURLOverride;
    if ([v1 length])
    {
      v2 = [MEMORY[0x277CBEBC0] URLWithString:v1];
      v3 = dbURL_url;
      dbURL_url = v2;
    }
  }

  if (!dbURL_url)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = homeKitConfigurationPath;
    v6 = [v4 stringWithFormat:@"%@%@", v5, @"/v1/ManufacturerDatabase.plist"];

    v7 = MEMORY[0x277CCACE0];
    v12 = v6;
    v8 = objc_alloc_init(v7);
    [v8 setScheme:@"https"];
    [v8 setHost:appleConfigurationServer];
    [v8 setPath:v12];

    v9 = [v8 URL];
    v10 = objc_msgSend_copy(v9);

    v11 = dbURL_url;
    dbURL_url = v10;
  }
}

+ (id)sharedVendorDataManager
{
  if (sharedVendorDataManager_onceToken != -1)
  {
    dispatch_once(&sharedVendorDataManager_onceToken, &__block_literal_global_191352);
  }

  v3 = sharedVendorDataManager_sharedInstance;

  return v3;
}

uint64_t __47__HMDVendorDataManager_sharedVendorDataManager__block_invoke()
{
  v0 = [[HMDVendorDataManager alloc] initWithDefaults];
  v1 = sharedVendorDataManager_sharedInstance;
  sharedVendorDataManager_sharedInstance = v0;

  v2 = sharedVendorDataManager_sharedInstance;

  return [v2 _start];
}

@end