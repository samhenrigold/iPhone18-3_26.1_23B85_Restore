@interface CRFDRUtils
+ (BOOL)_getAllLiveDataClasses:(id *)classes liveInstances:(id *)instances missingLiveData:(id)data mesaState:(id)state error:(id *)error;
+ (BOOL)_getAllSealedDataAndPropertiesFromManifest:(id)manifest properties:(id *)properties classes:(id *)classes instances:(id *)instances error:(id *)error;
+ (BOOL)isDataClassSupported:(id)supported;
+ (BOOL)isDcSignedCombinedDataClass:(id)class error:(id *)error;
+ (BOOL)isDcSignedDataClass:(id)class instance:(id)instance error:(id *)error;
+ (BOOL)isDcSignedSealingManifest:(id *)manifest;
+ (BOOL)isPrimaryDataClassSupported:(id)supported;
+ (BOOL)isPropertySupported:(id)supported;
+ (BOOL)isRepairASIDSupported;
+ (BOOL)queryDeviceStagedSealedFromEAN:(BOOL)n error:(id *)error;
+ (__AMFDR)_createFDRLocal;
+ (id)_getDataClassesFromSealingManifest;
+ (id)_getDataClassesFromSealingMap;
+ (id)_getManifestForDataClass:(id)class;
+ (id)_getMesaState;
+ (id)_getPropertiesFromSealingMap;
+ (id)_getUnsealedMesaData:(id)data mesaState:(id)state;
+ (id)extractComponentsAndIdentifiers:(id)identifiers;
+ (id)findUnsealedDataWithError:(id *)error;
+ (id)findUnsealedDataWithKey:(id)key error:(id *)error;
+ (id)getData:(id)data instance:(id)instance;
+ (id)getDataPayload:(id)payload instance:(id)instance;
+ (id)getDataPayloadDictWithClass:(id)class instance:(id)instance;
+ (id)getLocalSealingManifestWithError:(id *)error;
+ (id)getSealedInstancesWithClass:(id)class error:(id *)error;
+ (id)getStringFromCert:(id)cert WithTag:(unint64_t)tag AndOID:(id)d;
+ (id)isServicePartWithError:(id *)error;
+ (id)localManifestProperties;
+ (void)_compareSealedAndLiveDataClasses:(id)classes instances:(id)instances liveClasses:(id)liveClasses liveInstances:(id)liveInstances results:(id)results;
+ (void)_compareSerialNumberProperties:(id)properties missingLiveData:(id)data results:(id)results;
+ (void)_getDataClassesFromSealingManifest;
+ (void)_getDataClassesFromSealingMap;
+ (void)_getPropertiesFromSealingMap;
+ (void)isRepairASIDSupported;
+ (void)localManifestProperties;
@end

@implementation CRFDRUtils

+ (__AMFDR)_createFDRLocal
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"DataStore";
  v6[0] = @"Local";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = AMFDRCreateWithOptions();

  return v3;
}

+ (id)getLocalSealingManifestWithError:(id *)error
{
  [self _createFDRLocal];
  v9 = 0;
  v10 = 0;
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_247864000, v4, OS_LOG_TYPE_DEFAULT, "Getting local sealing manifest", v8, 2u);
  }

  if (AMFDRSealingMapPopulateSealingManifest())
  {
    v5 = v9;
  }

  else
  {
    v6 = handleForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils getLocalSealingManifestWithError:];
    }

    v5 = 0;
    if (error && v10)
    {
      v5 = 0;
      *error = v10;
    }
  }

  AMSupportSafeRelease();

  return v5;
}

+ (id)getStringFromCert:(id)cert WithTag:(unint64_t)tag AndOID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  certCopy = cert;
  dCopy = d;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26[0] = 0;
  v26[1] = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  while (!DERDecodeSeqNext(&certCopy, &v20))
  {
    v9 = [MEMORY[0x277CCAE60] valueWithBytes:&v20 objCType:"{?=Q{?=*Q}}"];
    [v7 addObject:v9];
  }

  if ([v7 count])
  {
    v11 = 0;
    *&v10 = 138412290;
    v19 = v10;
    while (1)
    {
      v12 = [v7 objectAtIndex:{0, v19, v20, v21, v22}];
      [v12 getValue:&v23];
      v13 = objc_alloc(MEMORY[0x277CBEA90]);
      v14 = [v13 initWithBytes:v24 length:v25];
      if (v23 != tag || ([dCopy isEqual:v14] & 1) == 0)
      {
        break;
      }

      v11 = 1;
LABEL_15:
      [v7 removeObjectAtIndex:0];

      if (![v7 count])
      {
        goto LABEL_20;
      }
    }

    if (v11)
    {
      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
      [v8 addObject:v15];
    }

    else
    {
      if (!DERDecodeSeqContentInit(&v24, v26))
      {
        while (!DERDecodeSeqNext(v26, &v20))
        {
          v16 = [MEMORY[0x277CCAE60] valueWithBytes:&v20 objCType:"{?=Q{?=*Q}}"];
          [v7 addObject:v16];
        }

        goto LABEL_14;
      }

      v15 = handleForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = v19;
        v29 = v14;
        _os_log_error_impl(&dword_247864000, v15, OS_LOG_TYPE_ERROR, "Failed to parse node in cert chain data = %@", buf, 0xCu);
      }
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

LABEL_20:
  v17 = [v8 copy];

  return v17;
}

+ (id)getData:(id)data instance:(id)instance
{
  dataCopy = data;
  instanceCopy = instance;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"VerifyData", *MEMORY[0x277CBED28]);
  if (instanceCopy)
  {
    v8 = AMFDRSealingMapCopyLocalData();
  }

  else
  {
    v8 = AMFDRSealingManifestCopyLocalDataForClass();
  }

  v9 = v8;
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"VerifyData", *MEMORY[0x277CBED10]);
    if (instanceCopy)
    {
      v10 = AMFDRSealingMapCopyLocalData();
    }

    else
    {
      v10 = AMFDRSealingManifestCopyLocalDataForClass();
    }

    v11 = v10;
  }

  else
  {

    v13 = handleForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils getData:instance:];
    }

    v11 = 0;
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();

  return v11;
}

+ (id)getDataPayload:(id)payload instance:(id)instance
{
  payloadCopy = payload;
  v7 = [self getData:payloadCopy instance:instance];
  v8 = v7;
  if (v7)
  {
    [v7 bytes];
    [v8 length];
    if (Img4DecodeInit())
    {
      +[CRFDRUtils getDataPayload:instance:];
    }

    else
    {
      if (!Img4DecodeGetPayload())
      {
        v9 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
        goto LABEL_5;
      }

      +[CRFDRUtils getDataPayload:instance:];
    }
  }

  else
  {
    +[CRFDRUtils getDataPayload:instance:];
  }

  v9 = 0;
LABEL_5:

  return v9;
}

+ (id)getDataPayloadDictWithClass:(id)class instance:(id)instance
{
  v16[1] = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v13 = 0;
  v15 = @"DataStore";
  v16[0] = @"Local";
  v6 = MEMORY[0x277CBEAC0];
  classCopy = class;
  v8 = [v6 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  if (instanceCopy)
  {
    v9 = AMFDRSealingMapCopyLocalDict();
  }

  else
  {
    v9 = AMFDRSealingManifestCopyLocalDictForClass();
  }

  v10 = v9;

  if (v10)
  {
    v11 = v13 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    [CRFDRUtils getDataPayloadDictWithClass:&v14 instance:?];
  }

  AMSupportSafeRelease();

  return v10;
}

+ (id)getSealedInstancesWithClass:(id)class error:(id *)error
{
  classCopy = class;
  v6 = AMFDRSealingManifestCopyMultiInstanceForClass();
  if (!v6)
  {
    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils getSealedInstancesWithClass:error:];
    }
  }

  if (error)
  {
    v8 = 0;
    *error = 0;
  }

  return v6;
}

+ (BOOL)isDataClassSupported:(id)supported
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CRFDRUtils_isDataClassSupported___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = isDataClassSupported__onceToken;
  supportedCopy = supported;
  if (v3 != -1)
  {
    dispatch_once(&isDataClassSupported__onceToken, block);
  }

  v5 = [isDataClassSupported__classes containsObject:supportedCopy];

  return v5;
}

void __35__CRFDRUtils_isDataClassSupported___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _getDataClassesFromSealingMap];
  v4 = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = [MEMORY[0x277CBEB98] set];
  }

  v3 = isDataClassSupported__classes;
  isDataClassSupported__classes = v2;
}

+ (BOOL)isPropertySupported:(id)supported
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CRFDRUtils_isPropertySupported___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = isPropertySupported__onceToken;
  supportedCopy = supported;
  if (v3 != -1)
  {
    dispatch_once(&isPropertySupported__onceToken, block);
  }

  v5 = [isPropertySupported__properties containsObject:supportedCopy];

  return v5;
}

void __34__CRFDRUtils_isPropertySupported___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _getPropertiesFromSealingMap];
  v4 = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = [MEMORY[0x277CBEB98] set];
  }

  v3 = isPropertySupported__properties;
  isPropertySupported__properties = v2;
}

+ (BOOL)isPrimaryDataClassSupported:(id)supported
{
  supportedCopy = supported;
  v5 = objc_opt_new();
  if ([self isDataClassSupported:supportedCopy])
  {
    [v5 addObject:@"vcrt"];
    if ([self isDataClassSupported:@"tcrt"])
    {
      v6 = @"tcrt";
    }

    else
    {
      v6 = @"dCfg";
    }

    [v5 addObject:v6];
    if ([self isDataClassSupported:@"prpc"])
    {
      v7 = @"prpc";
    }

    else
    {
      v7 = @"PlCl";
    }

    [v5 addObject:v7];
    [v5 addObject:@"CmCl"];
    [v5 addObject:@"NBCl"];
    [v5 addObject:@"TBCl"];
    [v5 addObject:@"MSRk"];
    [v5 addObject:@"FSCl"];
    [v5 addObject:@"LCfg"];
    [v5 addObject:@"bcrt"];
    [v5 addObject:@"wcrt"];
    v8 = [v5 containsObject:supportedCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isRepairASIDSupported
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[CRFDRUtils getLocalSealingManifest];
  if (v2)
  {
    if (AMFDRCreateTypeWithOptions())
    {
      AMFDRSetOption();
      v3 = AMFDRDataCopySealingManifestProperty();
      v4 = handleForCategory(0);
      v5 = v4;
      if (v3)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v8 = 0;
          _os_log_impl(&dword_247864000, v5, OS_LOG_TYPE_DEFAULT, "supm: %@", buf, 0xCu);
        }
      }

      else
      {
        +[(CRFDRUtils *)v4];
      }
    }

    else
    {
      +[CRFDRUtils isRepairASIDSupported];
    }
  }

  else
  {
    +[CRFDRUtils isRepairASIDSupported];
  }

  AMSupportSafeRelease();

  return 0;
}

+ (id)_getDataClassesFromSealingManifest
{
  getLocalSealingManifest = [self getLocalSealingManifest];
  if (getLocalSealingManifest)
  {
    v3 = AMFDRSealingManifestCopyDataClassesInstancesAndProperties();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [MEMORY[0x277CBEB98] setWithArray:0];
        v5 = [v4 setByAddingObject:@"seal"];
        goto LABEL_13;
      }

      v4 = handleForCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        +[CRFDRUtils _getDataClassesFromSealingManifest];
      }
    }

    else
    {
      v4 = handleForCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        +[CRFDRUtils _getDataClassesFromSealingManifest];
      }
    }

    v5 = 0;
  }

  else
  {
    v4 = handleForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getDataClassesFromSealingManifest];
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

+ (id)_getDataClassesFromSealingMap
{
  if (AMFDRSealingMapCopyDataClassesWithAttribute())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [MEMORY[0x277CBEB98] setWithArray:0];
      v3 = [v2 setByAddingObject:@"seal"];
      goto LABEL_9;
    }

    v2 = handleForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getDataClassesFromSealingManifest];
    }
  }

  else
  {
    v2 = handleForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getDataClassesFromSealingMap];
    }
  }

  v3 = 0;
LABEL_9:

  return v3;
}

+ (id)_getPropertiesFromSealingMap
{
  v2 = AMFDRSealingMapCopyPropertyTagsAndIdentifiers();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277CBEB98];
    allKeys = [v2 allKeys];
    v5 = [v3 setWithArray:allKeys];
  }

  else
  {
    allKeys = handleForCategory(0);
    if (os_log_type_enabled(allKeys, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getPropertiesFromSealingMap];
    }

    v5 = 0;
  }

  return v5;
}

+ (id)_getManifestForDataClass:(id)class
{
  classCopy = class;
  [self _createFDRLocal];
  if (classCopy)
  {
    v5 = AMFDRSealingManifestCopyInstanceForClass();
    if (v5)
    {
      if ((AMFDRDataCopyManifest() & 1) == 0)
      {
        v6 = handleForCategory(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          +[CRFDRUtils _getManifestForDataClass:];
        }
      }
    }

    else
    {
      +[CRFDRUtils _getManifestForDataClass:];
    }
  }

  else
  {
    +[CRFDRUtils _getManifestForDataClass:];
    v5 = 0;
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();

  return 0;
}

+ (BOOL)isDcSignedSealingManifest:(id *)manifest
{
  v45 = *MEMORY[0x277D85DE8];
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = 0;
  v20 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&commonNameOIDBytes length:3];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", @"FDR-SS-DC.*"];
  v6 = +[CRFDRUtils getLocalSealingManifest];
  v7 = v6;
  if (!v6)
  {
    v11 = 0;
    v15 = @"Cannot copy sealing manifest from device";
    goto LABEL_16;
  }

  [v6 bytes];
  [v7 length];
  inited = Img4DecodeInitManifest();
  if (inited)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to parse cert as img4; stat: %d", inited];
    v15 = LABEL_14:;
    v13 = 0;
    if (!v15)
    {
      LOBYTE(manifest) = 0;
      v11 = 0;
      goto LABEL_9;
    }

    v11 = 0;
    goto LABEL_16;
  }

  v9 = DERDecodeSeqContentInit(v43 + 1, &v19);
  if (v9)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to parse cert chain; stat: %d", v9];
    goto LABEL_14;
  }

  v10 = [CRFDRUtils getStringFromCert:v19 WithTag:v20 AndOID:6, v4];
  v11 = v10;
  if (v10 && [v10 count])
  {
    manifest = handleForCategory(0);
    if (os_log_type_enabled(manifest, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v11;
      _os_log_impl(&dword_247864000, manifest, OS_LOG_TYPE_DEFAULT, "Parsed the following common names from cert in seal: %@", buf, 0xCu);
    }

    v12 = [v11 filteredArrayUsingPredicate:v5];

    v13 = 0;
    LOBYTE(manifest) = [v12 count] != 0;
    v11 = v12;
    goto LABEL_9;
  }

  v15 = @"Failed to parse cert common name from cert chain";
LABEL_16:
  v16 = handleForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    +[CRFDRUtils isDcSignedSealingManifest:];
  }

  if (manifest)
  {
    v17 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22 = v15;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    *manifest = [v17 errorWithDomain:@"com.apple.corerepair" code:-42 userInfo:v18];

    LOBYTE(manifest) = 0;
  }

  v13 = v15;
LABEL_9:

  return manifest;
}

+ (BOOL)isDcSignedDataClass:(id)class instance:(id)instance error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  classCopy = class;
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = 0;
  v28 = 0;
  v8 = MEMORY[0x277CBEA90];
  instanceCopy = instance;
  v10 = [[v8 alloc] initWithBytes:&commonNameOIDBytes length:3];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", @"FDR-CA\\d{1, 4}-ROOT-DC.*"];
  v12 = [CRFDRUtils getData:classCopy instance:instanceCopy];

  if (!v12)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot copy %@ data from device", classCopy];
    v20 = LABEL_15:;
    v18 = 0;
    if (!v20)
    {
      LOBYTE(error) = 0;
      v16 = 0;
      goto LABEL_9;
    }

    v16 = 0;
    goto LABEL_17;
  }

  [v12 bytes];
  [v12 length];
  v13 = Img4DecodeInit();
  if (v13)
  {
    v21 = MEMORY[0x277CCACA8];
    v26 = v13;
    v22 = @"Failed to parse cert as img4; stat: %d";
LABEL_14:
    [v21 stringWithFormat:v22, v26];
    goto LABEL_15;
  }

  v14 = DERDecodeSeqContentInit(v53 + 1, &v27);
  if (v14)
  {
    v21 = MEMORY[0x277CCACA8];
    v26 = v14;
    v22 = @"Failed to parse cert chain; stat: %d";
    goto LABEL_14;
  }

  v15 = [CRFDRUtils getStringFromCert:v27 WithTag:v28 AndOID:6, v10];
  v16 = v15;
  if (v15 && [v15 count])
  {
    error = handleForCategory(0);
    if (os_log_type_enabled(error, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = classCopy;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_247864000, error, OS_LOG_TYPE_DEFAULT, "Parsed the following common names from cert in %@: %@", buf, 0x16u);
    }

    v17 = [v16 filteredArrayUsingPredicate:v11];

    v18 = 0;
    LOBYTE(error) = [v17 count] != 0;
    v16 = v17;
    goto LABEL_9;
  }

  v20 = @"Failed to parse cert common name from cert chain";
LABEL_17:
  v23 = handleForCategory(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    +[CRFDRUtils isDcSignedSealingManifest:];
  }

  if (error)
  {
    v24 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30 = v20;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    *error = [v24 errorWithDomain:@"com.apple.corerepair" code:-42 userInfo:v25];

    LOBYTE(error) = 0;
  }

  v18 = v20;
LABEL_9:

  return error;
}

+ (BOOL)isDcSignedCombinedDataClass:(id)class error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  classCopy = class;
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = 0;
  v26 = 0;
  v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&commonNameOIDBytes length:3];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", @"FDR-CA\\d{1, 4}-ROOT-DC.*"];
  v9 = [self _getManifestForDataClass:classCopy];
  v10 = v9;
  if (!v9)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot copy %@ manifest from device", classCopy];
    v18 = LABEL_15:;
    v16 = 0;
    if (!v18)
    {
      LOBYTE(error) = 0;
      v14 = 0;
      goto LABEL_9;
    }

    v14 = 0;
    goto LABEL_17;
  }

  [v9 bytes];
  [v10 length];
  inited = Img4DecodeInitManifest();
  if (inited)
  {
    v19 = MEMORY[0x277CCACA8];
    v24 = inited;
    v20 = @"Failed to parse cert as img4; stat: %d";
LABEL_14:
    [v19 stringWithFormat:v20, v24];
    goto LABEL_15;
  }

  v12 = DERDecodeSeqContentInit(v51 + 1, &v25);
  if (v12)
  {
    v19 = MEMORY[0x277CCACA8];
    v24 = v12;
    v20 = @"Failed to parse cert chain; stat: %d";
    goto LABEL_14;
  }

  v13 = [CRFDRUtils getStringFromCert:v25 WithTag:v26 AndOID:6, v7];
  v14 = v13;
  if (v13 && [v13 count])
  {
    error = handleForCategory(0);
    if (os_log_type_enabled(error, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = classCopy;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_247864000, error, OS_LOG_TYPE_DEFAULT, "Parsed the following common names from cert in %@: %@", buf, 0x16u);
    }

    v15 = [v14 filteredArrayUsingPredicate:v8];

    v16 = 0;
    LOBYTE(error) = [v15 count] != 0;
    v14 = v15;
    goto LABEL_9;
  }

  v18 = @"Failed to parse cert common name from cert chain";
LABEL_17:
  v21 = handleForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    +[CRFDRUtils isDcSignedSealingManifest:];
  }

  if (error)
  {
    v22 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28 = v18;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *error = [v22 errorWithDomain:@"com.apple.corerepair" code:-42 userInfo:v23];

    LOBYTE(error) = 0;
  }

  v16 = v18;
LABEL_9:

  return error;
}

+ (id)isServicePartWithError:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v4 = objc_opt_new();
  if (![v4 isEANSupported])
  {
LABEL_16:
    v8 = 0;
LABEL_17:
    v11 = 0;
    v10 = 0;
    v7 = 0;
    goto LABEL_18;
  }

  if (([v4 readFDRDataFromEANWithDataClass:@"seal" outData:&v29 stripPadding:1] & 1) == 0)
  {
    v14 = handleForCategory(1uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils isServicePartWithError:];
    }

    goto LABEL_16;
  }

  if (!v29)
  {
    v18 = handleForCategory(1uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils isServicePartWithError:];
    }

    v19 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"Local Sealing manifest fetch failed";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v8 = [v19 errorWithDomain:@"com.apple.corerepair" code:-28 userInfo:v20];

    goto LABEL_17;
  }

  v5 = handleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_247864000, v5, OS_LOG_TYPE_DEFAULT, "Local Sealing manifest fetch sucessful", v24, 2u);
  }

  v6 = AMFDRSealingManifestCopyDataClassesInstancesAndProperties();
  v7 = 0;
  v8 = v25;
  if (v6 && (v9 = v28) != 0 && v27)
  {
    v10 = 0;
    v11 = 0;
    if (v26)
    {
      v10 = v26;
      v7 = v27;
      v12 = [v27 count];
      if (v12 == [v10 count] && objc_msgSend(v9, "count"))
      {
        v13 = [v9 objectForKeyedSubscript:@"SrvP"];
        v11 = v9;
        goto LABEL_19;
      }

      v11 = v9;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v21 = handleForCategory(1uLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    +[CRFDRUtils isServicePartWithError:];
  }

  if (!v8)
  {
    v22 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v31 = @"DataInstances and Classes count mismatch";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v8 = [v22 errorWithDomain:@"com.apple.corerepair" code:-28 userInfo:v23];
  }

LABEL_18:
  v13 = 0;
LABEL_19:
  if (error)
  {
    v15 = v8;
    *error = v8;
  }

  v16 = v13;

  return v16;
}

+ (id)findUnsealedDataWithError:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  _getMesaState = [self _getMesaState];
  v8 = +[CRFDRRetryController sharedInstance];
  [v8 disableRetry];

  v39 = 0;
  v9 = [self getLocalSealingManifestWithError:&v39];
  v10 = v39;
  v11 = v10;
  if (v9)
  {
    v29 = dictionary;
    v37 = 0;
    v38 = 0;
    v35 = v10;
    v36 = 0;
    v12 = [self _getAllSealedDataAndPropertiesFromManifest:v9 properties:&v38 classes:&v37 instances:&v36 error:&v35];
    v13 = v38;
    v31 = v37;
    v30 = v36;
    v14 = v35;

    if (v12)
    {
      errorCopy = error;
      v33 = 0;
      v34 = 0;
      v32 = v14;
      v15 = [self _getAllLiveDataClasses:&v34 liveInstances:&v33 missingLiveData:v5 mesaState:_getMesaState error:&v32];
      v16 = _getMesaState;
      v17 = v5;
      v18 = v15;
      v19 = v34;
      v20 = v33;
      v11 = v32;

      if (v18)
      {
        [self _compareSealedAndLiveDataClasses:v31 instances:v30 liveClasses:v19 liveInstances:v20 results:v29];
        v21 = v13;
        dictionary = v29;
        [self _compareSerialNumberProperties:v21 missingLiveData:v17 results:v29];
        v22 = [self _getUnsealedMesaData:v29 mesaState:v16];
        [v29 addEntriesFromDictionary:v22];

        v5 = v17;
        _getMesaState = v16;
        error = errorCopy;
        goto LABEL_9;
      }

      v5 = v17;
      _getMesaState = v16;
      error = errorCopy;
    }

    else
    {
      v20 = 0;
      v19 = 0;
      v11 = v14;
    }

    v21 = v13;
    dictionary = v29;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v21 = 0;
    v30 = 0;
    v31 = 0;
  }

LABEL_9:
  v23 = +[CRFDRRetryController sharedInstance];
  [v23 enableRetry];

  if (v11)
  {
    v24 = handleForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [CRFDRUtils findUnsealedDataWithError:v11];
    }

    if (error)
    {
      v25 = v11;
      *error = v11;
    }
  }

  v26 = handleForCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = dictionary;
    _os_log_impl(&dword_247864000, v26, OS_LOG_TYPE_DEFAULT, "Unsealed: %@", buf, 0xCu);
  }

  return dictionary;
}

+ (BOOL)_getAllSealedDataAndPropertiesFromManifest:(id)manifest properties:(id *)properties classes:(id *)classes instances:(id *)instances error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (properties && classes && instances && error)
  {
    v11 = 0;
    if (AMFDRSealingManifestCopyDataClassesInstancesAndProperties())
    {
      *properties = 0;
      *classes = 0;
      v12 = 0;
      *instances = v12;
      if (*classes)
      {
        if (v12)
        {
          v13 = [*classes count];
          if (v13 == [*instances count])
          {
            return 1;
          }
        }
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20 = @"Number of data classes and instances mismatches";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      *error = [v18 errorWithDomain:@"com.apple.corerepair" code:-42 userInfo:v11];
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA450];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to decode sealing manifest: %@", 0, 0, 0, 0];
      v22[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      *error = [v15 errorWithDomain:@"com.apple.corerepair" code:-28 userInfo:v17];
    }
  }

  else
  {
    v11 = handleForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getAllSealedDataAndPropertiesFromManifest:properties:classes:instances:error:];
    }
  }

  return 0;
}

+ (BOOL)_getAllLiveDataClasses:(id *)classes liveInstances:(id *)instances missingLiveData:(id)data mesaState:(id)state error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  stateCopy = state;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (dataCopy && classes && instances && error)
  {
    if (+[CRFDRUtils isDataClassSupported:](CRFDRUtils, "isDataClassSupported:", @"FSCl") && (([stateCopy isEqualToString:@"ProvisionedUnknownKey"] & 1) != 0 || objc_msgSend(stateCopy, "isEqualToString:", @"ProvisionedLockedUnknownKey")))
    {
      v14 = handleForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = stateCopy;
        _os_log_impl(&dword_247864000, v14, OS_LOG_TYPE_DEFAULT, "Skip reading unknown Mesa: %@", buf, 0xCu);
      }

      [dictionary setObject:&unk_285978270 forKey:@"SkipRecoverDataClasses"];
      [dataCopy addObjectsFromArray:&unk_285978270];
    }

    [dictionary setObject:MEMORY[0x277CBEC38] forKey:@"AllowIncompleteData"];
    AMFDRCreateTypeWithOptions();
    LODWORD(v15) = AMFDRSealingMapCopyDataClassesAndInstancesWithAttribute();
    v16 = handleForCategory(0);
    v17 = v16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v31) = v15;
      _os_log_impl(&dword_247864000, v17, OS_LOG_TYPE_DEFAULT, "Read live data: %d", buf, 8u);
    }

    *classes = v27;
    v19 = v26;
    *instances = v19;
    if (!*classes || !v19 || (v20 = [*classes count], v20 != objc_msgSend(*instances, "count")))
    {
      v21 = handleForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CRFDRUtils _getAllLiveDataClasses:classes liveInstances:instances missingLiveData:? mesaState:? error:?];
      }

      v22 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v29 = @"Number of live data classes and instances mismatches";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      *error = [v22 errorWithDomain:@"com.apple.corerepair" code:-42 userInfo:v15];

      LOBYTE(v15) = 0;
    }

    AMSupportSafeRelease();
  }

  else
  {
    v18 = handleForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getAllSealedDataAndPropertiesFromManifest:properties:classes:instances:error:];
    }

    LOBYTE(v15) = 0;
  }

  return v15;
}

+ (id)_getMesaState
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([CRFDRUtils isDataClassSupported:@"FSCl"]|| [CRFDRUtils isDataClassSupported:@"MSRk"])
  {
    v5 = @"QueryPath";
    v6[0] = @"QueryPath_Straight";
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    v3 = ZhuGeCopyValue();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)_compareSealedAndLiveDataClasses:(id)classes instances:(id)instances liveClasses:(id)liveClasses liveInstances:(id)liveInstances results:(id)results
{
  v38 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  instancesCopy = instances;
  liveClassesCopy = liveClasses;
  liveInstancesCopy = liveInstances;
  resultsCopy = results;
  if (classesCopy && instancesCopy && liveClassesCopy && resultsCopy)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [MEMORY[0x277CBEB98] setWithArray:classesCopy];
    v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v31)
    {
      v30 = *v34;
      v15 = 0x277CBE000uLL;
      do
      {
        v16 = 0;
        do
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = v16;
          v17 = *(*(&v33 + 1) + 8 * v16);
          v18 = [*(v15 + 2904) set];
          if ([liveClassesCopy count])
          {
            v19 = 0;
            do
            {
              v20 = [liveClassesCopy objectAtIndexedSubscript:v19];
              v21 = [liveInstancesCopy objectAtIndexedSubscript:v19];
              if ([v20 isEqualToString:v17])
              {
                [v18 addObject:v21];
              }

              ++v19;
            }

            while (v19 < [liveClassesCopy count]);
          }

          v22 = [*(v15 + 2904) set];
          if ([classesCopy count])
          {
            v23 = 0;
            do
            {
              v24 = [classesCopy objectAtIndexedSubscript:v23];
              v25 = [instancesCopy objectAtIndexedSubscript:v23];
              if ([v24 isEqualToString:v17])
              {
                [v22 addObject:v25];
              }

              ++v23;
            }

            while (v23 < [classesCopy count]);
          }

          v26 = [v18 mutableCopy];
          [v26 minusSet:v22];
          if ([v26 count])
          {
            allObjects = [v26 allObjects];
            [resultsCopy setObject:allObjects forKeyedSubscript:v17];
          }

          v16 = v32 + 1;
          v15 = 0x277CBE000;
        }

        while (v32 + 1 != v31);
        v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v31);
    }
  }

  else
  {
    obj = handleForCategory(0);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getAllSealedDataAndPropertiesFromManifest:properties:classes:instances:error:];
    }
  }
}

+ (void)_compareSerialNumberProperties:(id)properties missingLiveData:(id)data results:(id)results
{
  v36 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  dataCopy = data;
  resultsCopy = results;
  [self _createFDRLocal];
  if (propertiesCopy && dataCopy && resultsCopy)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [&unk_285978258 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v27;
      *&v11 = 138412546;
      v23 = v11;
      v24 = dataCopy;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(&unk_285978258);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = [propertiesCopy objectForKeyedSubscript:{v15, v23}];
          if (v16)
          {
            v17 = AMFDRSealingMapCopyPropertyWithTag();
            v18 = v17;
            if (v17)
            {
              if (([v17 isEqualToString:v16] & 1) == 0)
              {
                v30 = v18;
                v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
                [resultsCopy setObject:v19 forKeyedSubscript:v15];
              }
            }

            else
            {
              v21 = handleForCategory(0);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = v23;
                v32 = v15;
                v33 = 2112;
                v34 = 0;
                _os_log_error_impl(&dword_247864000, v21, OS_LOG_TYPE_ERROR, "Live property missing for %@: %@", buf, 0x16u);

                dataCopy = v24;
              }

              [dataCopy addObject:v15];
            }
          }

          else
          {
            v20 = handleForCategory(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v32 = v15;
              _os_log_impl(&dword_247864000, v20, OS_LOG_TYPE_DEFAULT, "Property %@ does not exist", buf, 0xCu);
            }
          }
        }

        v12 = [&unk_285978258 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v22 = handleForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getAllSealedDataAndPropertiesFromManifest:properties:classes:instances:error:];
    }
  }

  AMSupportSafeRelease();
}

+ (id)findUnsealedDataWithKey:(id)key error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  array = [MEMORY[0x277CBEA60] array];
  [self _createFDRLocal];
  if (![&unk_285978258 containsObject:keyCopy])
  {
    v7 = AMFDRSealingMapCopyMultiInstanceForClass();
    if (v7)
    {
      localManifestProperties = AMFDRSealingManifestCopyMultiInstanceForClass();
      if (localManifestProperties)
      {
        v12 = [MEMORY[0x277CBEB58] setWithArray:v7];
        v15 = [MEMORY[0x277CBEB58] setWithArray:localManifestProperties];
        goto LABEL_8;
      }

      v18 = handleForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[CRFDRUtils findUnsealedDataWithKey:error:];
      }
    }

    else
    {
      localManifestProperties = handleForCategory(0);
      if (os_log_type_enabled(localManifestProperties, OS_LOG_TYPE_ERROR))
      {
        +[CRFDRUtils findUnsealedDataWithKey:error:];
      }
    }

LABEL_22:

    v12 = 0;
    v15 = 0;
    goto LABEL_23;
  }

  v7 = AMFDRSealingMapCopyPropertyWithTag();
  if (!v7)
  {
    localManifestProperties = handleForCategory(0);
    if (os_log_type_enabled(localManifestProperties, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils findUnsealedDataWithKey:error:];
    }

    goto LABEL_22;
  }

  localManifestProperties = [self localManifestProperties];
  v9 = [localManifestProperties objectForKeyedSubscript:keyCopy];
  if (!v9)
  {
    v17 = handleForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils findUnsealedDataWithKey:error:];
    }

    goto LABEL_22;
  }

  v10 = MEMORY[0x277CBEB58];
  v25[0] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v12 = [v10 setWithArray:v11];

  v13 = MEMORY[0x277CBEB58];
  v24 = v9;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v15 = [v13 setWithArray:v14];

LABEL_8:
  [v12 minusSet:v15];
  if (![v12 count])
  {
    goto LABEL_24;
  }

  v16 = handleForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = keyCopy;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_247864000, v16, OS_LOG_TYPE_DEFAULT, "Unsealed %@: %@", buf, 0x16u);
  }

  [v12 allObjects];
  array = v7 = array;
LABEL_23:

LABEL_24:
  AMSupportSafeRelease();

  return array;
}

+ (id)_getUnsealedMesaData:(id)data mesaState:(id)state
{
  v26[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  stateCopy = state;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = [CRFDRUtils isDataClassSupported:@"FSCl"];
  v9 = [CRFDRUtils isDataClassSupported:@"MSRk"];
  v10 = v9;
  if (v8)
  {
    if ([stateCopy isEqualToString:@"ProvisionedUnknownKey"])
    {
      v11 = handleForCategory(0);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:

        goto LABEL_17;
      }

      *v23 = 0;
      v12 = "mesa unpaired";
    }

    else
    {
      v14 = [dataCopy objectForKey:@"FSCl"];

      if (!v14)
      {
        goto LABEL_30;
      }

      v11 = handleForCategory(0);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *v23 = 0;
      v12 = "mesa unsealed";
    }

    _os_log_impl(&dword_247864000, v11, OS_LOG_TYPE_DEFAULT, v12, v23, 2u);
    goto LABEL_12;
  }

  if (v9)
  {
    if ([stateCopy isEqualToString:@"ProvisionedUnknownKey"])
    {
      v13 = 1;
    }

    else
    {
      v13 = [stateCopy isEqualToString:@"ProvisionedLockedUnknownKey"];
    }

    v15 = handleForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_247864000, v15, OS_LOG_TYPE_DEFAULT, "mesa paired with unknown key", v23, 2u);
    }

    if (v13)
    {
LABEL_17:
      *v23 = 0;
      v16 = ZhuGeCopyValue();
      v17 = v16;
      if (!v16 || *v23)
      {
        v18 = handleForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          +[CRFDRUtils _getUnsealedMesaData:mesaState:];
        }
      }

      else
      {
        if (v8)
        {
          v26[0] = v16;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
          v19 = @"MSRk";
        }

        else
        {
          if (!v10)
          {
LABEL_27:
            v21 = handleForCategory(0);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              +[CRFDRUtils _getUnsealedMesaData:mesaState:];
            }

            goto LABEL_30;
          }

          v25 = v16;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
          [dictionary setObject:v20 forKeyedSubscript:@"MSRk"];

          v24 = v17;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
          v19 = @"FSC2";
        }

        [dictionary setObject:v18 forKeyedSubscript:v19];
      }

      goto LABEL_27;
    }
  }

LABEL_30:

  return dictionary;
}

+ (BOOL)queryDeviceStagedSealedFromEAN:(BOOL)n error:(id *)error
{
  nCopy = n;
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v6 = objc_opt_new();
  v7 = v6;
  if (nCopy)
  {
    if (([v6 isEANSupported] & 1) == 0)
    {
      v9 = handleForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CRFDRUtils queryDeviceStagedSealedFromEAN:error:];
      }

      goto LABEL_25;
    }

    if ([v7 readFDRDataFromEANWithDataClass:@"seal" outData:&v15 stripPadding:1])
    {
      v8 = v15 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = handleForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CRFDRUtils queryDeviceStagedSealedFromEAN:error:];
      }

      goto LABEL_25;
    }
  }

  else
  {
    v15 = +[CRFDRUtils getLocalSealingManifest];
    if (!v15)
    {
      v9 = handleForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CRFDRUtils queryDeviceStagedSealedFromEAN:error:];
      }

      goto LABEL_25;
    }
  }

  if (AMFDRCreateTypeWithOptions())
  {
    AMFDRSetOption();
    v10 = AMFDRDataCopySealingManifestProperty();
    v11 = handleForCategory(0);
    v9 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = 0;
        _os_log_impl(&dword_247864000, v9, OS_LOG_TYPE_DEFAULT, "SrvT: %@", buf, 0xCu);
      }

      goto LABEL_27;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils queryDeviceStagedSealedFromEAN:error:];
    }
  }

  else
  {
    v9 = handleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils queryDeviceStagedSealedFromEAN:error:];
    }
  }

LABEL_25:

  if (error)
  {
    v12 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17 = @"Query staged state failed";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    *error = [v12 errorWithDomain:@"com.apple.corerepair" code:-42 userInfo:v13];
  }

LABEL_27:
  AMSupportSafeRelease();

  return 0;
}

+ (id)localManifestProperties
{
  if ([self _createFDRLocal])
  {
    v2 = AMFDRSealingMapCopyManifestProperties();
    if (v2)
    {
      goto LABEL_9;
    }

    v3 = handleForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils localManifestProperties];
    }
  }

  else
  {
    v3 = handleForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils localManifestProperties];
    }

    v2 = 0;
  }

LABEL_9:
  AMSupportSafeRelease();
  AMSupportSafeRelease();

  return v2;
}

+ (id)extractComponentsAndIdentifiers:(id)identifiers
{
  v37 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v28 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"([a-zA-Z0-9#]{4})-(.*$)" options:0 error:0];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v27 = v4;
    do
    {
      v9 = 0;
      v29 = v7;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        v11 = [v4 firstMatchInString:v10 options:0 range:{0, objc_msgSend(v10, "length")}];
        v12 = handleForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          numberOfRanges = [v11 numberOfRanges];
          *buf = 134217984;
          v35 = numberOfRanges;
          _os_log_impl(&dword_247864000, v12, OS_LOG_TYPE_DEFAULT, "number of ranges:%lu", buf, 0xCu);
        }

        if (v11 && [v11 numberOfRanges] >= 2)
        {
          v14 = [v11 rangeAtIndex:1];
          v16 = [v10 substringWithRange:{v14, v15}];
          v17 = [v11 rangeAtIndex:2];
          v19 = [v10 substringWithRange:{v17, v18}];
          v20 = v19;
          if (v16)
          {
            v21 = v19 == 0;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            v22 = v16;
            v23 = objc_opt_new();
            v24 = [v28 objectForKeyedSubscript:v22];
            [v23 addObjectsFromArray:v24];

            [v23 addObject:v20];
            v25 = [v23 copy];
            [v28 setObject:v25 forKeyedSubscript:v22];

            v4 = v27;
            v7 = v29;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  return v28;
}

+ (void)getLocalSealingManifestWithError:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)getData:instance:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)getData:instance:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)getDataPayload:instance:.cold.1()
{
  v1 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

+ (void)getDataPayload:instance:.cold.2()
{
  v1 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

+ (void)getDataPayload:instance:.cold.3()
{
  v1 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

+ (void)getDataPayloadDictWithClass:(void *)a1 instance:(void *)a2 .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_8_0();
    _os_log_error_impl(&dword_247864000, v4, OS_LOG_TYPE_ERROR, "AMFDRDataDictCopy failed, error: %@", v5, 0xCu);
  }

  *a2 = *a1;
}

+ (void)getSealedInstancesWithClass:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)isRepairASIDSupported
{
  v1 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

+ (void)_getDataClassesFromSealingManifest
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_getDataClassesFromSealingMap
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)_getPropertiesFromSealingMap
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_getManifestForDataClass:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_getManifestForDataClass:.cold.2()
{
  v1 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

+ (void)_getManifestForDataClass:.cold.3()
{
  v1 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

+ (void)isDcSignedSealingManifest:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)isServicePartWithError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)isServicePartWithError:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)isServicePartWithError:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)findUnsealedDataWithError:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)_getAllSealedDataAndPropertiesFromManifest:properties:classes:instances:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_getAllLiveDataClasses:liveInstances:missingLiveData:mesaState:error:.cold.2()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

+ (void)_getAllLiveDataClasses:liveInstances:missingLiveData:mesaState:error:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_getAllLiveDataClasses:(id *)a1 liveInstances:(id *)a2 missingLiveData:mesaState:error:.cold.4(id *a1, id *a2)
{
  [*a1 count];
  [*a2 count];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)findUnsealedDataWithKey:error:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)findUnsealedDataWithKey:error:.cold.2()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)findUnsealedDataWithKey:error:.cold.3()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)findUnsealedDataWithKey:error:.cold.4()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)_getUnsealedMesaData:mesaState:.cold.1()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)_getUnsealedMesaData:mesaState:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)queryDeviceStagedSealedFromEAN:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)queryDeviceStagedSealedFromEAN:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)queryDeviceStagedSealedFromEAN:error:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)queryDeviceStagedSealedFromEAN:error:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)queryDeviceStagedSealedFromEAN:error:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)localManifestProperties
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end