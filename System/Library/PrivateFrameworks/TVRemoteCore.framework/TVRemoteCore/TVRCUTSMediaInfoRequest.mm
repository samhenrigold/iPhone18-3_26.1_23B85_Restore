@interface TVRCUTSMediaInfoRequest
- (void)requestForCanonicalID:(id)d includeRoles:(BOOL)roles completion:(id)completion;
@end

@implementation TVRCUTSMediaInfoRequest

- (void)requestForCanonicalID:(id)d includeRoles:(BOOL)roles completion:(id)completion
{
  rolesCopy = roles;
  v45[8] = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if ([dCopy length])
  {
    selfCopy = self;
    ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
    ams_storefront = [ams_activeiTunesAccount ams_storefront];
    v13 = [ams_storefront componentsSeparatedByString:@"-"];
    firstObject = [v13 firstObject];
    v15 = firstObject;
    v16 = @"143441";
    if (firstObject)
    {
      v16 = firstObject;
    }

    v37 = v16;

    v17 = &unk_287E669E8;
    if (rolesCopy)
    {
      v17 = &unk_287E669D0;
    }

    v18 = v17;
    if (rolesCopy)
    {
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"view/product/%@", dCopy];
      v20 = &unk_287E66C28;
    }

    else
    {
      v20 = MEMORY[0x277CBEC10];
      dCopy = @"contents";
    }

    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject2 = [preferredLanguages firstObject];
    v24 = firstObject2;
    v25 = @"en-US";
    if (firstObject2)
    {
      v25 = firstObject2;
    }

    v26 = v25;

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    countryCode = [currentLocale countryCode];
    v29 = countryCode;
    v30 = @"US";
    if (countryCode)
    {
      v30 = countryCode;
    }

    v31 = v30;

    if (rolesCopy)
    {
      v32 = &unk_287E66C50;
    }

    else
    {
      v44[0] = @"ids";
      v44[1] = @"profile";
      v45[0] = dCopy;
      v45[1] = @"Full";
      v44[2] = @"caller";
      v44[3] = @"locale";
      v45[2] = @"tv-remote";
      v45[3] = v26;
      v44[4] = @"country";
      v44[5] = @"sf";
      v45[4] = v31;
      v45[5] = v37;
      v44[6] = @"pfm";
      v44[7] = @"v";
      v45[6] = @"AppleTV";
      v45[7] = @"82";
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:8];
    }

    v33 = [(TVRCUTSMediaInfoRequest *)selfCopy _requestPropertiesForEndPoint:dCopy apiVersion:v18 headersDict:v20 queryParamsDict:v32];

    v34 = [objc_alloc(MEMORY[0x277D7A980]) initWithRequestProperties:v33];
    objc_initWeak(&location, v34);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __73__TVRCUTSMediaInfoRequest_requestForCanonicalID_includeRoles_completion___block_invoke;
    v38[3] = &unk_279D82370;
    objc_copyWeak(&v41, &location);
    v42 = rolesCopy;
    v39 = dCopy;
    v40 = completionCopy;
    [v34 setCompletionBlock:v38];
    wlkDefaultConcurrentQueue = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];
    [wlkDefaultConcurrentQueue addOperation:v34];

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  else
  {
    v21 = [TVRCMediaInfo mediaInfoWithDictionary:MEMORY[0x277CBEC10]];
    (*(completionCopy + 2))(completionCopy, v21, 0);
  }
}

void __73__TVRCUTSMediaInfoRequest_requestForCanonicalID_includeRoles_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 responseDictionary];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__TVRCUTSMediaInfoRequest_requestForCanonicalID_includeRoles_completion___block_invoke_2;
  block[3] = &unk_279D82348;
  v10 = v5;
  v14 = *(a1 + 56);
  v11 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v3;
  v13 = v6;
  v7 = v3;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __73__TVRCUTSMediaInfoRequest_requestForCanonicalID_includeRoles_completion___block_invoke_2(uint64_t a1)
{
  v6 = *(a1 + 32);
  if ((*(a1 + 64) & 1) == 0)
  {
    v2 = [*(a1 + 32) objectForKeyedSubscript:@"content"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

      v6 = v3;
    }
  }

  v4 = *(a1 + 56);
  v5 = [TVRCMediaInfo mediaInfoWithDictionary:v6];
  (*(v4 + 16))(v4, v5, *(a1 + 48));
}

@end