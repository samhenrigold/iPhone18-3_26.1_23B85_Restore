@interface PNRResourceManager
+ (id)sharedManager;
- (BOOL)_lookupString:(id)string inTrieMemory:(void *)memory value:(unsigned int *)value;
- (PNRResourceManager)init;
- (id)_assetQueryForPNRResource:(id)resource;
- (id)_getDataFrom:(id)from zeroCacheCost:(BOOL)cost logId:(id)id;
- (id)_lastCatalogLoadTime;
- (void)_URLForInstalledResourceOfType:(id)type logId:(id)id resultBlock:(id)block;
- (void)_bestStringForInCountryPhoneNumber:(id)number phoneNumberCC:(id)c countryOfDevice:(id)device countryTrieData:(id)data countryStrings:(id)strings logId:(id)id resultBlock:(id)block;
- (void)_catalogDownloadFinishedWithResult:(int64_t)result;
- (void)_openLatestAssetWithBasename:(id)basename maType:(id)type logId:(id)id resultBlock:(id)block;
- (void)_setLastCatalogLoadTime:(id)time;
- (void)_updateCatalog;
- (void)_updateCatalogAfterDelay:(double)delay;
- (void)catalogLoadThen:(id)then;
- (void)dealloc;
- (void)lookupCCForPhoneNumber:(id)number logId:(id)id withResult:(id)result;
- (void)lookupISOCountryCodeFromNANPNumber:(id)number logId:(id)id withResult:(id)result;
- (void)lookupStringForPhoneNumber:(id)number inCC:(id)c countryCodeOfDevice:(id)device logId:(id)id withResult:(id)result;
- (void)openPNRFilesForPrefix:(id)prefix logId:(id)id withResult:(id)result;
@end

@implementation PNRResourceManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[PNRResourceManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __35__PNRResourceManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_alloc_init(PNRResourceManager);

  return MEMORY[0x2821F96F8]();
}

- (PNRResourceManager)init
{
  v14.receiver = self;
  v14.super_class = PNRResourceManager;
  v2 = [(PNRResourceManager *)&v14 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.PhoneNumberResolver", "ResourceManager");
    log = v2->_log;
    v2->_log = v3;

    _lastCatalogLoadTime = [(PNRResourceManager *)v2 _lastCatalogLoadTime];
    lastCatalogLoadTime = v2->_lastCatalogLoadTime;
    v2->_lastCatalogLoadTime = _lastCatalogLoadTime;

    v2->_catalogLoadRetryMultiplier = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEA78]);
    fileDataCache = v2->_fileDataCache;
    v2->_fileDataCache = v7;

    [(NSCache *)v2->_fileDataCache setTotalCostLimit:10485760];
    [(NSCache *)v2->_fileDataCache setName:@"PNR data cache"];
    v9 = objc_alloc_init(MEMORY[0x277CBEA78]);
    maURLCache = v2->_maURLCache;
    v2->_maURLCache = v9;

    [(NSCache *)v2->_maURLCache setName:@"MA URL cache"];
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    downloadsInflight = v2->_downloadsInflight;
    v2->_downloadsInflight = v11;

    v2->_downloadsInflightLock._os_unfair_lock_opaque = 0;
    [(PNRResourceManager *)v2 _updateCatalog];
  }

  return v2;
}

- (id)_lastCatalogLoadTime
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults valueForKey:@"PNRltc"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_catalogLoadRetryMultiplier = 0;
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateCatalog
{
  v3 = objc_alloc_init(MEMORY[0x277D28A10]);
  [v3 setAllowsCellularAccess:1];
  [v3 setAllowsExpensiveAccess:1];
  _lastCatalogLoadTime = [(PNRResourceManager *)self _lastCatalogLoadTime];
  [v3 setDiscretionary:_lastCatalogLoadTime != 0];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PNRResourceManager__updateCatalog__block_invoke;
  v5[3] = &unk_279A24030;
  v5[4] = self;
  [MEMORY[0x277D289C0] startCatalogDownload:@"com.apple.MobileAsset.phoneNumberResolver" options:v3 then:v5];
}

- (void)dealloc
{
  os_state_remove_handler();
  v3.receiver = self;
  v3.super_class = PNRResourceManager;
  [(PNRResourceManager *)&v3 dealloc];
}

- (void)_openLatestAssetWithBasename:(id)basename maType:(id)type logId:(id)id resultBlock:(id)block
{
  basenameCopy = basename;
  typeCopy = type;
  idCopy = id;
  blockCopy = block;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__PNRResourceManager__openLatestAssetWithBasename_maType_logId_resultBlock___block_invoke;
  v18[3] = &unk_279A23F40;
  v19 = basenameCopy;
  selfCopy = self;
  v22 = typeCopy;
  v23 = blockCopy;
  v21 = idCopy;
  v14 = typeCopy;
  v15 = blockCopy;
  v16 = idCopy;
  v17 = basenameCopy;
  [(PNRResourceManager *)self _URLForInstalledResourceOfType:v14 logId:v16 resultBlock:v18];
}

void __76__PNRResourceManager__openLatestAssetWithBasename_maType_logId_resultBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.pnr", *(a1 + 32)];
    v8 = [v5 URLByAppendingPathComponent:v7];
    v9 = [*(a1 + 40) _getDataFrom:v8 zeroCacheCost:1 logId:*(a1 + 48)];
    if (v9)
    {
      v10 = v9;
      goto LABEL_6;
    }
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-default", *(a1 + 32)];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v11 URLForResource:v7 withExtension:@"pnr"];

  v10 = [*(a1 + 40) _getDataFrom:v8 zeroCacheCost:1 logId:*(a1 + 48)];
  if (!v10)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *(a1 + 56);
    v16 = @"type";
    v17[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v15 = [v12 _PNRAssetUnavailableErrorWithUserInfo:v14];

    (*(*(a1 + 64) + 16))();
    goto LABEL_8;
  }

LABEL_6:
  (*(*(a1 + 64) + 16))();
LABEL_8:
}

- (void)lookupCCForPhoneNumber:(id)number logId:(id)id withResult:(id)result
{
  numberCopy = number;
  resultCopy = result;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__PNRResourceManager_lookupCCForPhoneNumber_logId_withResult___block_invoke;
  v12[3] = &unk_279A23F68;
  v13 = numberCopy;
  v14 = resultCopy;
  v12[4] = self;
  v10 = numberCopy;
  v11 = resultCopy;
  [(PNRResourceManager *)self openCountryCodeFileUsingLogId:id withResult:v12];
}

void __62__PNRResourceManager_lookupCCForPhoneNumber_logId_withResult___block_invoke(uint64_t a1, id a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = [a2 bytes];
    if (*v5 == 1329811267)
    {
      v11 = 0;
      if ([*(a1 + 32) _lookupString:*(a1 + 40) inTrieMemory:v5 + 8 value:&v11])
      {
        v10 = *(a1 + 48);
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v11];
        (*(v10 + 16))(v10, v6, 0);
      }

      else
      {
        v6 = [MEMORY[0x277CCA9B8] _PNRNotFoundErrorWithUserInfo:&unk_28703B980];
        (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v6);
      }
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v5 length:4 encoding:1];
      v7 = MEMORY[0x277CCA9B8];
      v12[0] = @"expected";
      v12[1] = @"found";
      v13[0] = @"COCO";
      v13[1] = v6;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
      v9 = [v7 _PNRBadMagicErrorWithUserInfo:v8];

      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)lookupISOCountryCodeFromNANPNumber:(id)number logId:(id)id withResult:(id)result
{
  numberCopy = number;
  resultCopy = result;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__PNRResourceManager_lookupISOCountryCodeFromNANPNumber_logId_withResult___block_invoke;
  v12[3] = &unk_279A23F68;
  v13 = numberCopy;
  v14 = resultCopy;
  v12[4] = self;
  v10 = numberCopy;
  v11 = resultCopy;
  [(PNRResourceManager *)self openNANPFileUsingLogId:id withResult:v12];
}

void __74__PNRResourceManager_lookupISOCountryCodeFromNANPNumber_logId_withResult___block_invoke(uint64_t a1, id a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = [a2 bytes];
    if (*v5 == 1347305806)
    {
      v12 = 0;
      v11 = 0;
      if ([*(a1 + 32) _lookupString:*(a1 + 40) inTrieMemory:v5 + 8 value:&v11])
      {
        v10 = *(a1 + 48);
        v6 = [MEMORY[0x277CCACA8] stringWithCString:&v11 encoding:1];
        (*(v10 + 16))(v10, v6, 0);
      }

      else
      {
        v6 = [MEMORY[0x277CCA9B8] _PNRNotFoundErrorWithUserInfo:&unk_28703B9A8];
        (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v6);
      }
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v5 length:4 encoding:1];
      v7 = MEMORY[0x277CCA9B8];
      v13[0] = @"expected";
      v13[1] = @"found";
      v14[0] = @"NANP";
      v14[1] = v6;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
      v9 = [v7 _PNRBadMagicErrorWithUserInfo:v8];

      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)_bestStringForInCountryPhoneNumber:(id)number phoneNumberCC:(id)c countryOfDevice:(id)device countryTrieData:(id)data countryStrings:(id)strings logId:(id)id resultBlock:(id)block
{
  v163[2] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  cCopy = c;
  deviceCopy = device;
  dataCopy = data;
  stringsCopy = strings;
  idCopy = id;
  blockCopy = block;
  bytes = [dataCopy bytes];
  if (!bytes)
  {
    v30 = MEMORY[0x277CCA9B8];
    v31 = &unk_28703B9D0;
LABEL_6:
    v23 = [v30 _PNRAssetUnavailableErrorWithUserInfo:v31];
LABEL_7:
    (*(blockCopy + 2))(blockCopy, 0, 0, v23);
    goto LABEL_8;
  }

  v22 = bytes;
  if (*bytes != 1380864110)
  {
    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:bytes length:4 encoding:1];
    v24 = MEMORY[0x277CCA9B8];
    v162[0] = @"expected";
    v162[1] = @"found";
    v163[0] = @"nPNR";
    v163[1] = v23;
    v25 = MEMORY[0x277CBEAC0];
    v26 = v163;
    v27 = v162;
LABEL_4:
    v28 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:2];
    v29 = [v24 _PNRBadMagicErrorWithUserInfo:v28];

    (*(blockCopy + 2))(blockCopy, 0, 0, v29);
    goto LABEL_8;
  }

  bytes2 = [stringsCopy bytes];
  if (!bytes2)
  {
    v30 = MEMORY[0x277CCA9B8];
    v31 = &unk_28703B9F8;
    goto LABEL_6;
  }

  v33 = bytes2;
  if (*bytes2 != 1397902928)
  {
    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:bytes2 length:4 encoding:1];
    v24 = MEMORY[0x277CCA9B8];
    v160[0] = @"expected";
    v160[1] = @"found";
    v161[0] = @"PNRS";
    v161[1] = v23;
    v25 = MEMORY[0x277CBEAC0];
    v26 = v161;
    v27 = v160;
    goto LABEL_4;
  }

  v145 = 0;
  if (![(PNRResourceManager *)self _lookupString:numberCopy inTrieMemory:v22 + 34 value:&v145])
  {
    v105 = MEMORY[0x277CCA9B8];
    v158[0] = @"type";
    v158[1] = @"resource";
    v159[0] = @"trie";
    v159[1] = cCopy;
    v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v159 forKeys:v158 count:2];
    v23 = [v105 _PNRNotFoundErrorWithUserInfo:v106];

    goto LABEL_7;
  }

  v127 = blockCopy;
  v116 = idCopy;
  v117 = deviceCopy;
  v114 = dataCopy;
  v115 = numberCopy;
  v118 = cCopy;
  v34 = v33[9];
  v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:v34];
  v36 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v34];
  if (v34)
  {
    v37 = (v33 + 10);
    do
    {
      LODWORD(v34) = v34 - 1;
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:v37];
      [v35 addObject:v38];
      v39 = [MEMORY[0x277CCABB0] numberWithInt:*&v37[strlen(v37) + 1]];
      [v36 setObject:v39 forKey:v38];

      v37 += strlen(v37) + 5;
    }

    while (v34);
  }

  v113 = v35;
  v40 = [MEMORY[0x277CBEA60] arrayWithArray:v35];
  v41 = v36;
  v42 = v40;
  v112 = v41;
  v124 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
  v43 = +[PNRUtils _preferredLanguages];
  array = [MEMORY[0x277CBEB18] array];
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  obj = v43;
  v45 = [obj countByEnumeratingWithState:&v141 objects:v157 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v142;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v142 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v49 = MEMORY[0x277CBEAF8];
        v156 = *(*(&v141 + 1) + 8 * i);
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v156 count:1];
        v51 = [v49 mostPreferredLanguageOf:v42 withPreferredLanguages:v50 forUsage:1 options:0];

        if (v51)
        {
          [array addObject:v51];
        }
      }

      v46 = [obj countByEnumeratingWithState:&v141 objects:v157 count:16];
    }

    while (v46);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v119 = array;
  v123 = [v119 countByEnumeratingWithState:&v137 objects:v155 count:16];
  if (!v123)
  {
    v120 = 0;
    v53 = 0;
    blockCopy = v127;
    goto LABEL_102;
  }

  v120 = 0;
  v53 = 0;
  v122 = *v138;
  *&v52 = 138544130;
  v111 = v52;
  v121 = stringsCopy;
  do
  {
    v54 = 0;
    do
    {
      v129 = v53;
      if (*v138 != v122)
      {
        objc_enumerationMutation(v119);
      }

      v128 = v54;
      v55 = *(*(&v137 + 1) + 8 * v54);
      v56 = v145;
      bytes3 = [stringsCopy bytes];
      v58 = [stringsCopy length];
      v59 = bytes3 + v58;
      v60 = [v124 objectForKey:v55];
      v61 = bytes3 + [v60 unsignedIntValue];

      v62 = (v61 + 4 * (v56 & 0x1F));
      if ((v62 + 1) >= bytes3 + v58)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          [PNRResourceManager _bestStringForInCountryPhoneNumber:v136 phoneNumberCC:? countryOfDevice:? countryTrieData:? countryStrings:? logId:? resultBlock:?];
        }

        log = self->_log;
        v53 = v129;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v92 = log;
          v93 = [stringsCopy length];
          *buf = 138543618;
          *&buf[4] = v116;
          v149 = 2050;
          v150 = v93;
          _os_log_error_impl(&dword_25E515000, v92, OS_LOG_TYPE_ERROR, "[%{public}@] truncated pnrs data?; size %{public}lu ", buf, 0x16u);
        }

        v83 = self->_log;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          *buf = v111;
          *&buf[4] = v116;
          v149 = 2050;
          v150 = bytes3;
          v151 = 2050;
          v152 = bytes3 + v58;
          v153 = 2050;
          v154 = v62;
          _os_log_error_impl(&dword_25E515000, v83, OS_LOG_TYPE_ERROR, "[%{public}@] begin: %{public}p, end: %{public}p, offsetPtr: %{public}p", buf, 0x2Au);
        }

        v84 = self->_log;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v94 = v84;
          v95 = [v114 length];
          *buf = 138543618;
          *&buf[4] = v116;
          v149 = 2050;
          v150 = v95;
          _os_log_error_impl(&dword_25E515000, v94, OS_LOG_TYPE_ERROR, "[%{public}@] pnr data size: %{public}lu", buf, 0x16u);
        }

        v85 = self->_log;
        blockCopy = v127;
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
LABEL_93:
          *buf = v111;
          *&buf[4] = v116;
          v149 = 2114;
          v150 = v118;
          v151 = 2114;
          v152 = v115;
          v153 = 2114;
          v154 = v117;
          _os_log_error_impl(&dword_25E515000, v85, OS_LOG_TYPE_ERROR, "[%{public}@] prefix: '%{public}@', number: '%{public}@', country: %{public}@", buf, 0x2Au);
        }
      }

      else
      {
        v126 = v55;
        v63 = (v61 + 4 * (v56 >> 5));
        if ((v63 + 1) >= v59)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            [PNRResourceManager _bestStringForInCountryPhoneNumber:v134 phoneNumberCC:? countryOfDevice:? countryTrieData:? countryStrings:? logId:? resultBlock:?];
          }

          v86 = self->_log;
          v53 = v129;
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            v96 = v86;
            v97 = [stringsCopy length];
            *buf = 138543618;
            *&buf[4] = v116;
            v149 = 2050;
            v150 = v97;
            _os_log_error_impl(&dword_25E515000, v96, OS_LOG_TYPE_ERROR, "[%{public}@] truncated pnrs data?; size %{public}lu ", buf, 0x16u);
          }

          v87 = self->_log;
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            *buf = v111;
            *&buf[4] = v116;
            v149 = 2050;
            v150 = bytes3;
            v151 = 2050;
            v152 = bytes3 + v58;
            v153 = 2050;
            v154 = v63;
            _os_log_error_impl(&dword_25E515000, v87, OS_LOG_TYPE_ERROR, "[%{public}@] begin: %{public}p, end: %{public}p, offsetPtr: %{public}p", buf, 0x2Au);
          }

          v88 = self->_log;
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v98 = v88;
            v99 = [v114 length];
            *buf = 138543618;
            *&buf[4] = v116;
            v149 = 2050;
            v150 = v99;
            _os_log_error_impl(&dword_25E515000, v98, OS_LOG_TYPE_ERROR, "[%{public}@] pnr data size: %{public}lu", buf, 0x16u);
          }

          v85 = self->_log;
          blockCopy = v127;
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_93;
          }
        }

        else
        {
          v64 = (v61 + 4 * (v56 >> 13));
          if ((v64 + 1) < v59)
          {
            v65 = *v62;
            v66 = *v63;
            v67 = *v64;
            v68 = bytes3 + v65;
            if (v58 < v65)
            {
LABEL_38:
              [PNRResourceManager _bestStringForInCountryPhoneNumber:phoneNumberCC:countryOfDevice:countryTrieData:countryStrings:logId:resultBlock:];
              v69 = *buf;
            }

            else
            {
              v69 = 0;
              while (*(v68 + v69))
              {
                ++v69;
                if (v68 + v69 > v59)
                {
                  goto LABEL_38;
                }
              }
            }

            v70 = bytes3 + v66;
            if (v58 < v66)
            {
LABEL_43:
              [PNRResourceManager _bestStringForInCountryPhoneNumber:phoneNumberCC:countryOfDevice:countryTrieData:countryStrings:logId:resultBlock:];
              v71 = *buf;
            }

            else
            {
              v71 = 0;
              while (*(v70 + v71))
              {
                ++v71;
                if (v70 + v71 > v59)
                {
                  goto LABEL_43;
                }
              }
            }

            v72 = bytes3 + v67;
            if (v58 < v67)
            {
              [PNRResourceManager _bestStringForInCountryPhoneNumber:phoneNumberCC:countryOfDevice:countryTrieData:countryStrings:logId:resultBlock:];
              v73 = *buf;
              v53 = v129;
            }

            else
            {
              v73 = 0;
              v53 = v129;
              while (v73[v72])
              {
                ++v73;
                if (&v73[v72] > v59)
                {
                  [PNRResourceManager _bestStringForInCountryPhoneNumber:phoneNumberCC:countryOfDevice:countryTrieData:countryStrings:logId:resultBlock:];
                  v73 = *buf;
                  break;
                }
              }
            }

            blockCopy = v127;
            if (v69)
            {
              v74 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v68 length:v69 encoding:4];
            }

            else
            {
              v74 = 0;
            }

            stringsCopy = v121;
            if (v71)
            {
              v75 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v70 length:v71 encoding:4];
              if (!v73)
              {
                goto LABEL_55;
              }
            }

            else
            {
              v75 = 0;
              if (!v73)
              {
LABEL_55:
                v76 = [[PNRStringsFileReaderResult alloc] initWithCountry:v74 region:v75 city:v73];
                v77 = v76;
                if (v76)
                {
                  score = [(PNRStringsFileReaderResult *)v76 score];
                  if (score > [(PNRStringsFileReaderResult *)v53 score])
                  {
                    v79 = v77;

                    v80 = v126;
                    v120 = v80;
                    blockCopy = v127;
                    v53 = v79;
                  }

                  score2 = [(PNRStringsFileReaderResult *)v53 score];
                  if (score2 == +[PNRStringsFileReaderResult maxPossibleScore])
                  {

                    goto LABEL_102;
                  }
                }

                goto LABEL_60;
              }
            }

            v73 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v72 length:v73 encoding:4];
            goto LABEL_55;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            [PNRResourceManager _bestStringForInCountryPhoneNumber:v132 phoneNumberCC:? countryOfDevice:? countryTrieData:? countryStrings:? logId:? resultBlock:?];
          }

          v89 = self->_log;
          v53 = v129;
          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
          {
            v100 = v89;
            v101 = [stringsCopy length];
            *buf = 138543618;
            *&buf[4] = v116;
            v149 = 2050;
            v150 = v101;
            _os_log_error_impl(&dword_25E515000, v100, OS_LOG_TYPE_ERROR, "[%{public}@] truncated pnrs data?; size %{public}lu ", buf, 0x16u);
          }

          v90 = self->_log;
          if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            *buf = v111;
            *&buf[4] = v116;
            v149 = 2050;
            v150 = bytes3;
            v151 = 2050;
            v152 = bytes3 + v58;
            v153 = 2050;
            v154 = v64;
            _os_log_error_impl(&dword_25E515000, v90, OS_LOG_TYPE_ERROR, "[%{public}@] begin: %{public}p, end: %{public}p, offsetPtr: %{public}p", buf, 0x2Au);
          }

          v91 = self->_log;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            v102 = v91;
            v103 = [v114 length];
            *buf = 138543618;
            *&buf[4] = v116;
            v149 = 2050;
            v150 = v103;
            _os_log_error_impl(&dword_25E515000, v102, OS_LOG_TYPE_ERROR, "[%{public}@] pnr data size: %{public}lu", buf, 0x16u);
          }

          v85 = self->_log;
          blockCopy = v127;
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_93;
          }
        }
      }

LABEL_60:
      v54 = v128 + 1;
    }

    while (v128 + 1 != v123);
    v104 = [v119 countByEnumeratingWithState:&v137 objects:v155 count:16];
    v123 = v104;
  }

  while (v104);
LABEL_102:

  numberCopy = v115;
  if ([(PNRStringsFileReaderResult *)v53 isPlaceHolderForEmpty])
  {
    (*(blockCopy + 2))(blockCopy, 0, 0, 0);
  }

  else
  {
    v107 = [(PNRStringsFileReaderResult *)v53 aggregateStringWhileInCountry:v117 forLanguage:v120 ccOfNumber:v118];
    if (v107)
    {
      (*(blockCopy + 2))(blockCopy, v107, 1, 0);
    }

    else
    {
      v108 = MEMORY[0x277CCA9B8];
      v146[0] = @"type";
      v146[1] = @"resource";
      v147[0] = @"strings";
      v147[1] = v118;
      v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:2];
      v110 = [v108 _PNRNotFoundErrorWithUserInfo:v109];

      (*(blockCopy + 2))(blockCopy, 0, 0, v110);
    }
  }

  deviceCopy = v117;
  cCopy = v118;
  v23 = v113;
  dataCopy = v114;
  idCopy = v116;
LABEL_8:
}

- (void)lookupStringForPhoneNumber:(id)number inCC:(id)c countryCodeOfDevice:(id)device logId:(id)id withResult:(id)result
{
  numberCopy = number;
  cCopy = c;
  deviceCopy = device;
  idCopy = id;
  resultCopy = result;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __91__PNRResourceManager_lookupStringForPhoneNumber_inCC_countryCodeOfDevice_logId_withResult___block_invoke;
  v22[3] = &unk_279A23F90;
  v22[4] = self;
  v23 = numberCopy;
  v24 = cCopy;
  v25 = deviceCopy;
  v26 = idCopy;
  v27 = resultCopy;
  v17 = idCopy;
  v18 = deviceCopy;
  v19 = cCopy;
  v20 = numberCopy;
  v21 = resultCopy;
  [(PNRResourceManager *)self openPNRFilesForPrefix:v19 logId:v17 withResult:v22];
}

uint64_t __91__PNRResourceManager_lookupStringForPhoneNumber_inCC_countryCodeOfDevice_logId_withResult___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return [*(a1 + 32) _bestStringForInCountryPhoneNumber:*(a1 + 40) phoneNumberCC:*(a1 + 48) countryOfDevice:*(a1 + 56) countryTrieData:a2 countryStrings:a3 logId:*(a1 + 64) resultBlock:*(a1 + 72)];
  }

  v5 = *(*(a1 + 72) + 16);

  return v5();
}

- (BOOL)_lookupString:(id)string inTrieMemory:(void *)memory value:(unsigned int *)value
{
  stringCopy = string;
  if (CFBurstTrieCreateFromMapBytes())
  {
    if (CFBurstTrieCreateCursorForBytes())
    {
      uTF8String = [stringCopy UTF8String];
      if (*uTF8String)
      {
        v8 = uTF8String;
        v9 = 0;
        do
        {
          if (!CFBurstTrieCursorAdvanceForBytes())
          {
            break;
          }

          if (CFBurstTrieCursorGetPayload())
          {
            *value = 0;
            v9 = 1;
          }
        }

        while (*++v8);
      }

      else
      {
        v9 = 0;
      }

      CFBurstTrieCursorRelease();
    }

    else
    {
      v9 = 0;
    }

    CFBurstTrieRelease();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)openPNRFilesForPrefix:(id)prefix logId:(id)id withResult:(id)result
{
  prefixCopy = prefix;
  idCopy = id;
  resultCopy = result;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__PNRResourceManager_openPNRFilesForPrefix_logId_withResult___block_invoke;
  v14[3] = &unk_279A23FB8;
  v15 = prefixCopy;
  selfCopy = self;
  v17 = idCopy;
  v18 = resultCopy;
  v11 = idCopy;
  v12 = prefixCopy;
  v13 = resultCopy;
  [(PNRResourceManager *)self _URLForInstalledResourceOfType:v12 logId:v11 resultBlock:v14];
}

void __61__PNRResourceManager_openPNRFilesForPrefix_logId_withResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.pnr", *(a1 + 32)];
    v8 = [v14 URLByAppendingPathComponent:v7];
    if (v8 && ([*(a1 + 40) _getDataFrom:v8 zeroCacheCost:0 logId:*(a1 + 48)], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.pnrs", *(a1 + 32)];
      v12 = [v14 URLByAppendingPathComponent:v11];
      v13 = [*(a1 + 40) _getDataFrom:v12 zeroCacheCost:0 logId:*(a1 + 48)];
      if (v13)
      {
        (*(*(a1 + 56) + 16))();
        v6 = 0;
      }

      else
      {
        v6 = [MEMORY[0x277CCA9B8] _PNRAssetUnavailableErrorWithUserInfo:&unk_28703BA48];
        (*(*(a1 + 56) + 16))();
      }
    }

    else
    {
      v6 = [MEMORY[0x277CCA9B8] _PNRAssetUnavailableErrorWithUserInfo:&unk_28703BA20];
      (*(*(a1 + 56) + 16))();
    }
  }
}

- (id)_getDataFrom:(id)from zeroCacheCost:(BOOL)cost logId:(id)id
{
  v32 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  idCopy = id;
  log = self->_log;
  if (fromCopy)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [PNRResourceManager _getDataFrom:zeroCacheCost:logId:];
    }

    v11 = [(NSCache *)self->_fileDataCache objectForKey:fromCopy];
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        [PNRResourceManager _getDataFrom:zeroCacheCost:logId:];
      }

      v13 = v12;
      goto LABEL_21;
    }

    [fromCopy startAccessingSecurityScopedResource];
    v23 = 0;
    v14 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:fromCopy options:1 error:&v23];
    v15 = v23;
    [fromCopy stopAccessingSecurityScopedResource];
    if (v15 && (v16 = self->_log, os_log_type_enabled(v16, OS_LOG_TYPE_ERROR)))
    {
      *buf = 138543874;
      v25 = idCopy;
      v26 = 2114;
      v27 = fromCopy;
      v28 = 2114;
      v29 = v15;
      _os_log_error_impl(&dword_25E515000, v16, OS_LOG_TYPE_ERROR, "[%{public}@] failed to read file contents at %{public}@ : %{public}@", buf, 0x20u);
      if (v14)
      {
        goto LABEL_14;
      }
    }

    else if (v14)
    {
LABEL_14:
      if (cost)
      {
        v17 = 0;
      }

      else
      {
        v17 = [v14 length];
      }

      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = MEMORY[0x277CCABB0];
        v20 = v18;
        v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(v14, "length")}];
        *buf = 138544130;
        v25 = idCopy;
        v26 = 2114;
        v27 = v21;
        v28 = 2114;
        v29 = fromCopy;
        v30 = 2050;
        v31 = v17;
        _os_log_impl(&dword_25E515000, v20, OS_LOG_TYPE_INFO, "[%{public}@] cached data of size %{public}@ with key %{public}@ and cost %{public}lu", buf, 0x2Au);
      }

      [(NSCache *)self->_fileDataCache setObject:v14 forKey:fromCopy cost:v17];
    }

    v13 = v14;

LABEL_21:
    goto LABEL_22;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = idCopy;
    _os_log_impl(&dword_25E515000, log, OS_LOG_TYPE_INFO, "[%{public}@] fileURL is nil; no data for you", buf, 0xCu);
  }

  v13 = 0;
LABEL_22:

  return v13;
}

- (id)_assetQueryForPNRResource:(id)resource
{
  v3 = MEMORY[0x277D289D8];
  resourceCopy = resource;
  v5 = [[v3 alloc] initWithType:@"com.apple.MobileAsset.phoneNumberResolver"];
  [v5 returnTypes:2];
  [v5 setDoNotBlockBeforeFirstUnlock:1];
  [v5 addKeyValuePair:@"PNRResource" with:resourceCopy];

  [v5 addKeyValuePair:@"FormatVersion" with:@"1"];

  return v5;
}

- (void)_URLForInstalledResourceOfType:(id)type logId:(id)id resultBlock:(id)block
{
  v65[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  idCopy = id;
  blockCopy = block;
  getLocalFileUrl = [(NSCache *)self->_maURLCache objectForKey:typeCopy];
  if (!getLocalFileUrl)
  {
    v37 = [(PNRResourceManager *)self _assetQueryForPNRResource:typeCopy];
    if ([v37 queryMetaDataSync])
    {
      v10 = MEMORY[0x277CCA9B8];
      v64 = @"queryResult";
      v11 = MEMORY[0x25F8B6080]();
      v65[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
      v39 = [v10 _PNRAssetQueryErrorWithUserInfo:v12];

      blockCopy[2](blockCopy, 0, v39);
LABEL_5:
      getLocalFileUrl = 0;
LABEL_39:

      goto LABEL_40;
    }

    results = [v37 results];

    if (!results)
    {
      v30 = MEMORY[0x277CCA9B8];
      v62[0] = @"queryResult";
      v31 = MEMORY[0x25F8B6080](0);
      v62[1] = @"results";
      v63[0] = v31;
      v63[1] = @"none";
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
      v39 = [v30 _PNRAssetQueryErrorWithUserInfo:v32];

      blockCopy[2](blockCopy, 0, v39);
      goto LABEL_5;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = [v37 results];
    v14 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v14)
    {
      v39 = 0;
      v15 = @"Unknown";
      v41 = *v50;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v50 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v49 + 1) + 8 * i);
          attributes = [v17 attributes];
          v19 = [attributes objectForKeyedSubscript:@"Build"];
          v20 = v19;
          v21 = @"Unknown";
          if (v19)
          {
            v21 = v19;
          }

          v22 = v21;

          v15 = v22;
          if ([v17 state] == 1)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *buf = 138543874;
              v56 = idCopy;
              v57 = 2114;
              v58 = typeCopy;
              v59 = 2114;
              v60 = v22;
              _os_log_impl(&dword_25E515000, log, OS_LOG_TYPE_INFO, "[%{public}@] asset %{public}@/%{public}@ not present", buf, 0x20u);
            }

            os_unfair_lock_lock(&self->_downloadsInflightLock);
            if (([(NSMutableSet *)self->_downloadsInflight containsObject:typeCopy]& 1) != 0)
            {
              v24 = self->_log;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 138543874;
                v56 = idCopy;
                v57 = 2114;
                v58 = typeCopy;
                v59 = 2114;
                v60 = v22;
                _os_log_impl(&dword_25E515000, v24, OS_LOG_TYPE_INFO, "[%{public}@] download of asset %{public}@/%{public}@ is already inflight", buf, 0x20u);
              }
            }

            else
            {
              v26 = objc_alloc_init(MEMORY[0x277D28A10]);
              [v26 setAllowsCellularAccess:1];
              [v26 setAllowsExpensiveAccess:1];
              [v26 setDiscretionary:0];
              objc_initWeak(&location, self);
              v43[0] = MEMORY[0x277D85DD0];
              v43[1] = 3221225472;
              v43[2] = __71__PNRResourceManager__URLForInstalledResourceOfType_logId_resultBlock___block_invoke;
              v43[3] = &unk_279A23FE0;
              objc_copyWeak(&v47, &location);
              v27 = typeCopy;
              v44 = v27;
              v28 = v15;
              v45 = v28;
              v46 = v17;
              [v17 startDownload:v26 then:v43];
              [(NSMutableSet *)self->_downloadsInflight addObject:v27];
              v29 = self->_log;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                *buf = 138543874;
                v56 = idCopy;
                v57 = 2114;
                v58 = typeCopy;
                v59 = 2114;
                v60 = v28;
                _os_log_impl(&dword_25E515000, v29, OS_LOG_TYPE_INFO, "[%{public}@] download of asset %{public}@/%{public}@ has been requested", buf, 0x20u);
              }

              objc_destroyWeak(&v47);
              objc_destroyWeak(&location);
            }

            os_unfair_lock_unlock(&self->_downloadsInflightLock);
          }

          else
          {
            if ([v17 state] == 2)
            {
              v33 = v17;

              v39 = v33;
              goto LABEL_32;
            }

            if ([v17 state] == 3)
            {
              v25 = v17;

              v39 = v25;
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

LABEL_32:

      if (v39)
      {
        getLocalFileUrl = [v39 getLocalFileUrl];
        if (getLocalFileUrl)
        {
          [(NSCache *)self->_maURLCache setObject:getLocalFileUrl forKey:typeCopy];
        }

        (blockCopy)[2](blockCopy, getLocalFileUrl, 0);
        goto LABEL_38;
      }
    }

    else
    {

      v15 = @"Unknown";
    }

    v34 = MEMORY[0x277CCA9B8];
    v53[0] = @"type";
    v53[1] = @"build";
    v54[0] = typeCopy;
    v54[1] = v15;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
    v36 = [v34 _PNRAssetUnavailableErrorWithUserInfo:v35];

    blockCopy[2](blockCopy, 0, v36);
    v39 = 0;
    getLocalFileUrl = 0;
LABEL_38:

    goto LABEL_39;
  }

  (blockCopy)[2](blockCopy, getLocalFileUrl, 0);
LABEL_40:
}

void __71__PNRResourceManager__URLForInstalledResourceOfType_logId_resultBlock___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 16);
    [*&v3[14]._os_unfair_lock_opaque removeObject:*(a1 + 32)];
    os_unfair_lock_unlock(v3 + 16);
    v4 = *&v3[12]._os_unfair_lock_opaque;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = v4;
      v9 = [v7 getLocalUrl];
      v10 = 138544130;
      v11 = @"asset";
      v12 = 2114;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_25E515000, v8, OS_LOG_TYPE_INFO, "[%{public}@] Got the download asset reply: %{public}@/%{public}@, and %{public}@", &v10, 0x2Au);
    }
  }
}

- (void)_setLastCatalogLoadTime:(id)time
{
  timeCopy = time;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:timeCopy forKey:@"PNRltc"];

  lastCatalogLoadTime = self->_lastCatalogLoadTime;
  self->_lastCatalogLoadTime = timeCopy;
}

- (void)_updateCatalogAfterDelay:(double)delay
{
  v13 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v10 = @"catalog";
    v11 = 2050;
    delayCopy = delay;
    _os_log_impl(&dword_25E515000, log, OS_LOG_TYPE_INFO, "[%{public}@] phone number db catalog downloads in %{public}ld seconds", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(9, 0);
  v7 = dispatch_time(0, (delay * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PNRResourceManager__updateCatalogAfterDelay___block_invoke;
  block[3] = &unk_279A24008;
  block[4] = self;
  dispatch_after(v7, v6, block);
}

- (void)_catalogDownloadFinishedWithResult:(int64_t)result
{
  v13 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    v10 = @"catalog";
    v11 = 2050;
    resultCopy = result;
    _os_log_impl(&dword_25E515000, log, OS_LOG_TYPE_INFO, "[%{public}@] catalog download results : %{public}ld", &v9, 0x16u);
  }

  if (result)
  {
    catalogLoadRetryMultiplier = self->_catalogLoadRetryMultiplier;
    if (catalogLoadRetryMultiplier <= 0xB)
    {
      self->_catalogLoadRetryMultiplier = ++catalogLoadRetryMultiplier;
    }

    v7 = (600 * catalogLoadRetryMultiplier);
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    [(PNRResourceManager *)self _setLastCatalogLoadTime:v8];

    v7 = 90000.0;
  }

  [(PNRResourceManager *)self _updateCatalogAfterDelay:v7];
}

- (void)catalogLoadThen:(id)then
{
  thenCopy = then;
  v4 = objc_alloc_init(MEMORY[0x277D28A10]);
  [v4 setAllowsCellularAccess:1];
  [v4 setDiscretionary:0];
  v5 = MEMORY[0x277D289C0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PNRResourceManager_catalogLoadThen___block_invoke;
  v7[3] = &unk_279A24058;
  v8 = thenCopy;
  v6 = thenCopy;
  [v5 startCatalogDownload:@"com.apple.MobileAsset.phoneNumberResolver" options:v4 then:v7];
}

- (void)_bestStringForInCountryPhoneNumber:phoneNumberCC:countryOfDevice:countryTrieData:countryStrings:logId:resultBlock:.cold.4()
{
  OUTLINED_FUNCTION_0();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1(&dword_25E515000, MEMORY[0x277D86220], v1, "Assertion failed: r <= end");
  }

  *v0 = 0;
}

@end