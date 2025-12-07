@interface NDOCoverageCentralViewControllerLegacy
- (BOOL)shouldDeferPushForSpecifierID:(id)d;
- (BOOL)shouldShowDeviceListUI;
- (NDOACController)acController;
- (NDOCoverageCentralViewControllerLegacy)init;
- (NDOCoverageCentralViewControllerLegacy)initWithIsSignedIn:(BOOL)in deviceManager:(id)manager;
- (id)_errorStateConfig;
- (id)_getParamsDictFromPath:(id)path;
- (id)_localizedResourceWithString:(id)string;
- (id)_noAccountConfig;
- (id)offerTextForDeviceInfo:(id)info;
- (id)specifiers;
- (id)updateCells;
- (void)_getUpdatedParamsFromPath:(id)path withCompletion:(id)completion;
- (void)_refreshAndForcePostFollowUp:(BOOL)up refreshControlToStop:(id)stop;
- (void)addFooterLabelToSpecifier:(id)specifier;
- (void)completeWithStatus:(unint64_t)status params:(id)params;
- (void)dismissAMSUI;
- (void)fetchAllDeviceInfoUsingPolicy:(unint64_t)policy sessionID:(id)d params:(id)params isSales:(BOOL)sales withReply:(id)reply;
- (void)fetchAllLocalDevices;
- (void)getAllDeviceInfoUsingPolicy:(unint64_t)policy sessionID:(id)d params:(id)params isSales:(BOOL)sales andForcePostFollowup:(BOOL)followup withReply:(id)reply;
- (void)getDeviceInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy sessionID:(id)d params:(id)params andForcePostFollowup:(BOOL)followup withReply:(id)reply;
- (void)handlePurchaseCompleted;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)init;
- (void)loadView;
- (void)openAMSUIWithURL:(id)l httpBody:(id)body;
- (void)openURL:(id)l;
- (void)resetAll;
- (void)showUI;
- (void)specifiers;
- (void)updateCells;
- (void)updateDefaultDeviceWithDeviceInfo:(id)info;
- (void)updateDeviceInfoForDevice:(id)device usingPolicy:(unint64_t)policy params:(id)params forceUpdateFollowup:(BOOL)followup withReply:(id)reply;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation NDOCoverageCentralViewControllerLegacy

- (NDOCoverageCentralViewControllerLegacy)init
{
  v3 = _NDOLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(NDOCoverageCentralViewControllerLegacy *)v3 init:v4];
  }

  isSignedIntoAppleAccount = [MEMORY[0x277D2D0B0] isSignedIntoAppleAccount];
  v12 = objc_opt_new();
  v13 = [(NDOCoverageCentralViewControllerLegacy *)self initWithIsSignedIn:isSignedIntoAppleAccount deviceManager:v12];

  return v13;
}

- (NDOCoverageCentralViewControllerLegacy)initWithIsSignedIn:(BOOL)in deviceManager:(id)manager
{
  inCopy = in;
  managerCopy = manager;
  v30.receiver = self;
  v30.super_class = NDOCoverageCentralViewControllerLegacy;
  v7 = [(NDOCoverageCentralViewControllerLegacy *)&v30 init];
  v8 = v7;
  if (v7)
  {
    [(NDOCoverageCentralViewControllerLegacy *)v7 setIsSignedIn:inCopy];
    if ([(NDOCoverageCentralViewControllerLegacy *)v8 isSignedIn])
    {
      [(NDOCoverageCentralViewControllerLegacy *)v8 setNdoManager:managerCopy];
      ndoManager = [(NDOCoverageCentralViewControllerLegacy *)v8 ndoManager];
      defaultDevice = [ndoManager defaultDevice];
      [(NDOCoverageCentralViewControllerLegacy *)v8 setDefaultDevice:defaultDevice];

      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(NDOCoverageCentralViewControllerLegacy *)v8 setPairedDevices:v11];

      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(NDOCoverageCentralViewControllerLegacy *)v8 setAllLocalDevices:v12];

      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NDOCoverageCentralViewControllerLegacy *)v8 setDeviceInfoDict:v13];

      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NDOCoverageCentralViewControllerLegacy *)v8 setDeviceSequenceDict:v14];

      v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v16 = dispatch_queue_create("com.apple.newdeviceoutreach.ndoccvc.policyqueue", v15);
      policyLookupQueue = v8->_policyLookupQueue;
      v8->_policyLookupQueue = v16;

      v18 = dispatch_group_create();
      group = v8->_group;
      v8->_group = v18;

      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [(NDOCoverageCentralViewControllerLegacy *)v8 setSessionID:uUIDString];
    }

    else
    {
      uUID = _NDOLogSystem();
      if (os_log_type_enabled(uUID, OS_LOG_TYPE_ERROR))
      {
        [(NDOCoverageCentralViewControllerLegacy *)uUID initWithIsSignedIn:v22 deviceManager:v23, v24, v25, v26, v27, v28];
      }
    }
  }

  return v8;
}

- (void)loadView
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDOCoverageCentralViewControllerLegacy loadView]";
  OUTLINED_FUNCTION_0_2(&dword_25BD8D000, self, a3, "%{public}s: Not signed in to icloud. Leaving...", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __50__NDOCoverageCentralViewControllerLegacy_loadView__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setOnViewIsAppearing:0];
    v3 = _NDOLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __50__NDOCoverageCentralViewControllerLegacy_loadView__block_invoke_cold_1(v2);
    }

    if (([v2 launchedWithUrl] & 1) == 0)
    {
      v4 = [v2 specifier];
      v5 = [v4 propertyForKey:@"NDODeviceInfo"];

      v6 = [v5 warranty];

      if (v6)
      {
        v7 = _NDOLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v5 warranty];
          v9 = 136446466;
          v10 = "[NDOCoverageCentralViewControllerLegacy loadView]_block_invoke";
          v11 = 2112;
          v12 = v8;
          _os_log_impl(&dword_25BD8D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Updating default device info with warranty:%@: ", &v9, 0x16u);
        }

        [v2 updateDefaultDeviceWithDeviceInfo:v5];
      }

      [v2 fetchAllDeviceInfoUsingPolicy:0 sessionID:v2[189] params:0 isSales:0 withReply:0];
    }
  }
}

- (id)_localizedResourceWithString:(id)string
{
  v3 = MEMORY[0x277CCAEB8];
  stringCopy = string;
  v5 = [v3 alloc];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:stringCopy table:0 locale:currentLocale bundleURL:bundleURL];

  return v9;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v6.receiver = self;
  v6.super_class = NDOCoverageCentralViewControllerLegacy;
  [(NDOCoverageCentralViewControllerLegacy *)&v6 viewIsAppearing:appearing];
  onViewIsAppearing = [(NDOCoverageCentralViewControllerLegacy *)self onViewIsAppearing];

  if (onViewIsAppearing)
  {
    onViewIsAppearing2 = [(NDOCoverageCentralViewControllerLegacy *)self onViewIsAppearing];
    onViewIsAppearing2[2]();
  }
}

- (id)specifiers
{
  v3 = _NDOLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(NDOCoverageCentralViewControllerLegacy *)v3 specifiers:v4];
  }

  v11 = *MEMORY[0x277D3FC48];
  v12 = *(&self->super.super.super.super.super.isa + v11);
  if (!v12)
  {
    updateCells = [(NDOCoverageCentralViewControllerLegacy *)self updateCells];
    v14 = *(&self->super.super.super.super.super.isa + v11);
    *(&self->super.super.super.super.super.isa + v11) = updateCells;

    v12 = *(&self->super.super.super.super.super.isa + v11);
  }

  return v12;
}

- (id)offerTextForDeviceInfo:(id)info
{
  v3 = MEMORY[0x277D2D0E8];
  warranty = [info warranty];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [v3 ctaTextWithWarranty:warranty forDate:date];

  return v6;
}

- (id)updateCells
{
  v169 = *MEMORY[0x277D85DE8];
  v143 = objc_opt_new();
  shouldShowDeviceListUI = [(NDOCoverageCentralViewControllerLegacy *)self shouldShowDeviceListUI];
  v4 = _NDOLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (!shouldShowDeviceListUI)
  {
    if (v5)
    {
      [(NDOCoverageCentralViewControllerLegacy *)v4 updateCells:v6];
    }

    defaultDevice = [(NDOCoverageCentralViewControllerLegacy *)self defaultDevice];

    v50 = MEMORY[0x277D40140];
    v51 = MEMORY[0x277D76F30];
    v52 = MEMORY[0x277D3FFB8];
    if (defaultDevice)
    {
      v53 = _NDOLogSystem();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        [(NDOCoverageCentralViewControllerLegacy *)v53 updateCells:v54];
      }

      deviceInfoDict = [(NDOCoverageCentralViewControllerLegacy *)self deviceInfoDict];
      defaultDevice2 = [(NDOCoverageCentralViewControllerLegacy *)self defaultDevice];
      serialNumber = [defaultDevice2 serialNumber];
      v64 = [deviceInfoDict objectForKeyedSubscript:serialNumber];

      v65 = _NDOLogSystem();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        [(NDOCoverageCentralViewControllerLegacy *)v64 updateCells];
      }

      warranty = [v64 warranty];

      if (warranty)
      {
        v67 = MEMORY[0x277D3FAD8];
        v68 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
        v69 = [v68 localizedStringForKey:@"CC_DEFAULT_TITLE" value:&stru_286D71538 table:@"Localizable"];
        v70 = [v67 preferenceSpecifierNamed:v69 target:self set:0 get:0 detail:0 cell:0 edit:0];

        v134 = v70;
        [v143 addObject:v70];
        v163[0] = *MEMORY[0x277D3FE58];
        v164[0] = objc_opt_class();
        v163[1] = *v50;
        v71 = [MEMORY[0x277CCABB0] numberWithDouble:*v51];
        v164[1] = v71;
        v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v163 count:2];

        v73 = MEMORY[0x277D3FAD8];
        device = [v64 device];
        name = [device name];
        v76 = [v73 preferenceSpecifierNamed:name target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

        [v76 setProperties:v72];
        [v76 setProperty:@"DEFAULT_COVERAGE" forKey:*v52];
        v77 = _NDOLogSystem();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          [(NDOCoverageCentralViewControllerLegacy *)self updateCells];
          v78 = v159;
        }

        else
        {
          v78 = @"NDOHostingController";
        }

        [v76 setProperty:self forKey:v78];
        v79 = MEMORY[0x277CBEC38];
        [v76 setProperty:MEMORY[0x277CBEC38] forKey:@"isCoverageCentralContainer"];
        warranty2 = [v64 warranty];
        [v76 setProperty:warranty2 forKey:@"NDOWarranty"];

        [v76 setProperty:v64 forKey:@"NDODeviceInfo"];
        [v76 setProperty:v79 forKey:@"isSettingsContainer"];
        warranty3 = [v64 warranty];
        coverageLocalizedLabel = [warranty3 coverageLocalizedLabel];
        [v76 setObject:coverageLocalizedLabel forKeyedSubscript:@"NDOCoverageItemCellCoverageLabelKey"];

        v83 = [(NDOCoverageCentralViewControllerLegacy *)self offerTextForDeviceInfo:v64];
        [v76 setObject:v83 forKeyedSubscript:@"NDOCoverageItemCellOfferLabelKey"];

        warranty4 = [v64 warranty];
        deviceImageUrl = [warranty4 deviceImageUrl];
        [v76 setObject:deviceImageUrl forKeyedSubscript:@"NDOCoverageItemCellImageURLKey"];

        device2 = [v64 device];
        productPlaceholderImage = [device2 productPlaceholderImage];
        [v76 setObject:productPlaceholderImage forKeyedSubscript:@"NDOCoverageItemCellFallbackImageKey"];

        deeplinkParams = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];

        if (deeplinkParams)
        {
          deeplinkParams2 = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];
          [v76 setProperty:deeplinkParams2 forKey:@"NDODeeplinkParams"];
        }

        [v143 addObject:v76];
      }

      else
      {
        v134 = 0;
      }
    }

    else
    {
      v134 = 0;
    }

    pairedDevices = [(NDOCoverageCentralViewControllerLegacy *)self pairedDevices];
    v91 = MEMORY[0x277D3FAD8];
    v92 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    v93 = [v92 localizedStringForKey:@"CC_OTHER_TITLE" value:&stru_286D71538 table:@"Localizable"];
    v132 = [v91 preferenceSpecifierNamed:v93 target:self set:0 get:0 detail:0 cell:0 edit:0];

    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v94 = pairedDevices;
    v95 = [v94 countByEnumeratingWithState:&v144 objects:v162 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = 0;
      v98 = *v145;
      v140 = *v50;
      v142 = *MEMORY[0x277D3FE58];
      v99 = *v51;
      v138 = *v52;
      v136 = v94;
      do
      {
        for (i = 0; i != v96; ++i)
        {
          if (*v145 != v98)
          {
            objc_enumerationMutation(v136);
          }

          v101 = *(*(&v144 + 1) + 8 * i);
          deviceInfoDict2 = [(NDOCoverageCentralViewControllerLegacy *)self deviceInfoDict];
          serialNumber2 = [v101 serialNumber];
          v104 = [deviceInfoDict2 objectForKeyedSubscript:serialNumber2];

          warranty5 = [v104 warranty];

          if (warranty5)
          {
            if ((v97 & 1) == 0)
            {
              [v143 addObject:v132];
            }

            v160[0] = v142;
            v106 = objc_opt_class();
            v160[1] = v140;
            v161[0] = v106;
            v107 = [MEMORY[0x277CCABB0] numberWithDouble:v99];
            v161[1] = v107;
            v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v161 forKeys:v160 count:2];

            v109 = MEMORY[0x277D3FAD8];
            device3 = [v104 device];
            name2 = [device3 name];
            v112 = [v109 preferenceSpecifierNamed:name2 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

            [v112 setProperties:v108];
            name3 = [v101 name];
            v114 = name3;
            if (name3)
            {
              v115 = name3;
            }

            else
            {
              v115 = @"COVERAGE_ITEM1";
            }

            [v112 setProperty:v115 forKey:v138];

            [v112 setProperty:self forKey:@"NDOHostingController"];
            v116 = MEMORY[0x277CBEC38];
            [v112 setProperty:MEMORY[0x277CBEC38] forKey:@"isCoverageCentralContainer"];
            [v112 setProperty:v116 forKey:@"isSettingsContainer"];
            warranty6 = [v104 warranty];
            [v112 setProperty:warranty6 forKey:@"NDOWarranty"];

            [v112 setProperty:v104 forKey:@"NDODeviceInfo"];
            warranty7 = [v104 warranty];
            coverageLocalizedLabel2 = [warranty7 coverageLocalizedLabel];
            [v112 setObject:coverageLocalizedLabel2 forKeyedSubscript:@"NDOCoverageItemCellCoverageLabelKey"];

            v120 = [(NDOCoverageCentralViewControllerLegacy *)self offerTextForDeviceInfo:v104];
            [v112 setObject:v120 forKeyedSubscript:@"NDOCoverageItemCellOfferLabelKey"];

            warranty8 = [v104 warranty];
            deviceImageUrl2 = [warranty8 deviceImageUrl];
            [v112 setObject:deviceImageUrl2 forKeyedSubscript:@"NDOCoverageItemCellImageURLKey"];

            device4 = [v104 device];
            productPlaceholderImage2 = [device4 productPlaceholderImage];
            [v112 setObject:productPlaceholderImage2 forKeyedSubscript:@"NDOCoverageItemCellFallbackImageKey"];

            deeplinkParams3 = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];

            if (deeplinkParams3)
            {
              deeplinkParams4 = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];
              [v112 setProperty:deeplinkParams4 forKey:@"NDODeeplinkParams"];
            }

            [v143 addObject:v112];

            v97 = 1;
          }
        }

        v94 = v136;
        v96 = [v136 countByEnumeratingWithState:&v144 objects:v162 count:16];
      }

      while (v96);

      if (v97)
      {
        [(NDOCoverageCentralViewControllerLegacy *)self addFooterLabelToSpecifier:v132];
        v13 = v134;
LABEL_64:

        goto LABEL_65;
      }
    }

    else
    {
    }

    v13 = v134;
    if (v134)
    {
      [(NDOCoverageCentralViewControllerLegacy *)self addFooterLabelToSpecifier:v134];
    }

    goto LABEL_64;
  }

  if (v5)
  {
    [(NDOCoverageCentralViewControllerLegacy *)v4 updateCells:v6];
  }

  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  obj = [(NDOCoverageCentralViewControllerLegacy *)self deviceListAPISections];
  v130 = [obj countByEnumeratingWithState:&v155 objects:v168 count:16];
  v13 = 0;
  if (v130)
  {
    v129 = *v156;
    v141 = *MEMORY[0x277D3FE58];
    v139 = *MEMORY[0x277D40140];
    v14 = *MEMORY[0x277D76F30];
    v137 = *MEMORY[0x277D3FFB8];
    v15 = MEMORY[0x277CBEC38];
    do
    {
      v16 = 0;
      v17 = v13;
      do
      {
        if (*v156 != v129)
        {
          objc_enumerationMutation(obj);
        }

        v131 = v16;
        v18 = *(*(&v155 + 1) + 8 * v16);
        v19 = MEMORY[0x277D3FAD8];
        identifier = [v18 identifier];
        label = [v18 label];
        v22 = [v19 groupSpecifierWithID:identifier name:label];

        v23 = v22;
        v133 = v23;
        [v143 addObject:v23];
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        deviceList = [v18 deviceList];
        v24 = [deviceList countByEnumeratingWithState:&v151 objects:v167 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v152;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v152 != v26)
              {
                objc_enumerationMutation(deviceList);
              }

              v28 = *(*(&v151 + 1) + 8 * j);
              deviceInfoDict3 = [(NDOCoverageCentralViewControllerLegacy *)self deviceInfoDict];
              serialNumber3 = [v28 serialNumber];
              v31 = [deviceInfoDict3 objectForKeyedSubscript:serialNumber3];

              v165[0] = v141;
              v166[0] = objc_opt_class();
              v165[1] = v139;
              v32 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
              v166[1] = v32;
              v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v166 forKeys:v165 count:2];

              v34 = MEMORY[0x277D3FAD8];
              name4 = [v28 name];
              v36 = [v34 preferenceSpecifierNamed:name4 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

              [v36 setProperties:v33];
              name5 = [v28 name];
              v38 = name5;
              if (name5)
              {
                v39 = name5;
              }

              else
              {
                v39 = @"COVERAGE_ITEM";
              }

              [v36 setProperty:v39 forKey:v137];

              [v36 setProperty:self forKey:@"NDOHostingController"];
              [v36 setProperty:v15 forKey:@"isCoverageCentralContainer"];
              [v36 setProperty:v15 forKey:@"isSettingsContainer"];
              coverageLocalizedLabel3 = [v28 coverageLocalizedLabel];
              [v36 setObject:coverageLocalizedLabel3 forKeyedSubscript:@"NDOCoverageItemCellCoverageLabelKey"];

              if (v31)
              {
                [(NDOCoverageCentralViewControllerLegacy *)self offerTextForDeviceInfo:v31];
              }

              else
              {
                [(NDOCoverageCentralViewControllerLegacy *)self offerTextForDevice:v28];
              }
              v41 = ;
              [v36 setObject:v41 forKeyedSubscript:@"NDOCoverageItemCellOfferLabelKey"];

              deviceImageUrl3 = [v28 deviceImageUrl];
              [v36 setObject:deviceImageUrl3 forKeyedSubscript:@"NDOCoverageItemCellImageURLKey"];

              productPlaceholderImage3 = [v28 productPlaceholderImage];
              [v36 setObject:productPlaceholderImage3 forKeyedSubscript:@"NDOCoverageItemCellFallbackImageKey"];

              [v36 setObject:v28 forKeyedSubscript:@"NDODevice"];
              allLocalDevices = [(NDOCoverageCentralViewControllerLegacy *)self allLocalDevices];
              v148[0] = MEMORY[0x277D85DD0];
              v148[1] = 3221225472;
              v148[2] = __53__NDOCoverageCentralViewControllerLegacy_updateCells__block_invoke;
              v148[3] = &unk_2799785F0;
              v148[4] = v28;
              v45 = v36;
              v149 = v45;
              v150 = v31;
              v46 = v31;
              [allLocalDevices enumerateObjectsUsingBlock:v148];

              deeplinkParams5 = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];

              if (deeplinkParams5)
              {
                deeplinkParams6 = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];
                [v45 setProperty:deeplinkParams6 forKey:@"NDODeeplinkParams"];
              }

              [v143 addObject:v45];
            }

            v25 = [deviceList countByEnumeratingWithState:&v151 objects:v167 count:16];
          }

          while (v25);
        }

        v13 = v133;
        v16 = v131 + 1;
        v17 = v133;
      }

      while (v131 + 1 != v130);
      v130 = [obj countByEnumeratingWithState:&v155 objects:v168 count:16];
    }

    while (v130);
  }

  [(NDOCoverageCentralViewControllerLegacy *)self addFooterLabelToSpecifier:v13];
LABEL_65:

  return v143;
}

void __53__NDOCoverageCentralViewControllerLegacy_updateCells__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 serialNumber];
  v6 = [v4 serialNumber];

  LODWORD(v4) = [v5 isEqualToString:v6];
  if (v4)
  {
    v7 = [*(a1 + 48) warranty];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:@"NDOWarranty"];

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);

    [v8 setObject:v9 forKeyedSubscript:@"NDODeviceInfo"];
  }
}

- (void)addFooterLabelToSpecifier:(id)specifier
{
  v3 = MEMORY[0x277CCA8D8];
  specifierCopy = specifier;
  v6 = [v3 bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v5 = [v6 localizedStringForKey:@"CC_FOOTER_APPLEID" value:&stru_286D71538 table:@"Localizable"];
  [specifierCopy setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FF88]];
}

- (void)openURL:(id)l
{
  lCopy = l;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [NDOCoverageCentralViewControllerLegacy openURL:];
  }

  [*MEMORY[0x277D76620] openURL:lCopy options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)fetchAllLocalDevices
{
  allLocalDevices = [self allLocalDevices];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)fetchAllDeviceInfoUsingPolicy:(unint64_t)policy sessionID:(id)d params:(id)params isSales:(BOOL)sales withReply:(id)reply
{
  salesCopy = sales;
  paramsCopy = params;
  replyCopy = reply;
  v13 = _NDOLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [NDOCoverageCentralViewControllerLegacy fetchAllDeviceInfoUsingPolicy:paramsCopy sessionID:? params:? isSales:? withReply:?];
  }

  [(NDOCoverageCentralViewControllerLegacy *)self fetchAllLocalDevices];
  isSignedIn = [(NDOCoverageCentralViewControllerLegacy *)self isSignedIn];
  v15 = _NDOLogSystem();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (isSignedIn)
  {
    policyCopy = policy;
    if (v16)
    {
      [(NDOCoverageCentralViewControllerLegacy *)v15 fetchAllDeviceInfoUsingPolicy:v17 sessionID:v18 params:v19 isSales:v20 withReply:v21, v22, v23];
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke;
    aBlock[3] = &unk_279978660;
    aBlock[4] = self;
    v24 = paramsCopy;
    v35 = v24;
    v25 = _Block_copy(aBlock);
    ndoManager = [(NDOCoverageCentralViewControllerLegacy *)self ndoManager];
    allLocalDevices = [(NDOCoverageCentralViewControllerLegacy *)self allLocalDevices];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    if (salesCopy)
    {
      v30 = v25;
    }

    else
    {
      v30 = 0;
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_68;
    v32[3] = &unk_2799786B0;
    v32[4] = self;
    v33 = replyCopy;
    [ndoManager getDeviceListForLocalDevices:allLocalDevices sessionID:uUIDString policy:policyCopy params:v24 salesReplyOnly:0 salesInfoReply:v30 deviceInfoReply:0 completionBlock:v32];
  }

  else
  {
    if (v16)
    {
      [(NDOCoverageCentralViewControllerLegacy *)v15 fetchAllDeviceInfoUsingPolicy:v17 sessionID:v18 params:v19 isSales:v20 withReply:v21, v22, v23];
    }

    if (replyCopy)
    {
      (*(replyCopy + 2))(replyCopy, 0);
    }
  }
}

void __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _getParamsDictFromPath:*(a1 + 40)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_2;
  v11[3] = &unk_279978638;
  v12 = v6;
  v13 = v7;
  v14 = *(a1 + 32);
  v15 = v5;
  v8 = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  if ([*(a1 + 32) count])
  {
    [v2 setObject:*(a1 + 32) forKeyedSubscript:@"devices"];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    [v2 setObject:v3 forKeyedSubscript:@"additionalInfo"];
  }

  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[NDOCoverageCentralViewControllerLegacy fetchAllDeviceInfoUsingPolicy:sessionID:params:isSales:withReply:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_25BD8D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: amsui payload: %@", &v5, 0x16u);
  }

  [*(a1 + 48) openAMSUIWithURL:*(a1 + 56) httpBody:v2];
}

void __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_2_69;
  block[3] = &unk_279978688;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_2_69(uint64_t a1, uint64_t a2)
{
  v3 = _NDOLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_2_69_cold_1(a1, v3, v4);
  }

  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) setDeviceLoadCompleted:1];
    [*(a1 + 40) setDeviceListAPISections:*(a1 + 32)];
    [*(a1 + 40) showUI];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)getAllDeviceInfoUsingPolicy:(unint64_t)policy sessionID:(id)d params:(id)params isSales:(BOOL)sales andForcePostFollowup:(BOOL)followup withReply:(id)reply
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  paramsCopy = params;
  replyCopy = reply;
  v16 = _NDOLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[NDOCoverageCentralViewControllerLegacy getAllDeviceInfoUsingPolicy:sessionID:params:isSales:andForcePostFollowup:withReply:]";
    _os_log_impl(&dword_25BD8D000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__1;
  v39 = __Block_byref_object_dispose__1;
  array = [MEMORY[0x277CBEB18] array];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__1;
  v34[4] = __Block_byref_object_dispose__1;
  v35 = 0;
  allLocalDevices = [(NDOCoverageCentralViewControllerLegacy *)self allLocalDevices];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke;
  v27[3] = &unk_279978700;
  v27[4] = self;
  policyCopy = policy;
  v18 = dCopy;
  v28 = v18;
  v19 = paramsCopy;
  followupCopy = followup;
  v29 = v19;
  v30 = v34;
  p_buf = &buf;
  [allLocalDevices enumerateObjectsUsingBlock:v27];
  group = self->_group;
  policyLookupQueue = self->_policyLookupQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_74;
  block[3] = &unk_279978750;
  v25 = &buf;
  v26 = v34;
  block[4] = self;
  v24 = replyCopy;
  v22 = replyCopy;
  dispatch_group_notify(group, policyLookupQueue, block);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&buf, 8);
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(*(a1 + 32) + 1464));
  v4 = *(a1 + 32);
  v5 = [v3 serialNumber];
  v6 = *(a1 + 72);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2;
  v12[3] = &unk_2799786D8;
  v10 = *(a1 + 32);
  v13 = v3;
  v14 = v10;
  v15 = *(a1 + 56);
  v11 = v3;
  [v4 getDeviceInfoForSerialNumber:v5 usingPolicy:v6 sessionID:v7 params:v8 andForcePostFollowup:v9 withReply:v12];
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_1(v3, a1);
  }

  v5 = [v3 device];
  v6 = [v5 serialNumber];
  if (v6)
  {
    v7 = [v3 device];
  }

  else
  {
    v7 = *(a1 + 32);
  }

  v8 = v7;

  if (v3)
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_2(v8, v3);
    }

    v10 = [v3 warranty];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = [*(a1 + 40) deviceInfoDict];
      v22 = [v8 serialNumber];
      v23 = [v11 objectForKeyedSubscript:v22];
      if (v23)
      {
        v24 = v23;
        v25 = [*(a1 + 40) deviceInfoDict];
        v26 = [v8 serialNumber];
        v27 = [v25 objectForKeyedSubscript:v26];
        v28 = [v27 warranty];

        if (!v28)
        {
LABEL_13:
          v13 = [v3 warranty];
          v14 = [v13 agsULURL];
          if (v14)
          {
            v15 = *(*(*(a1 + 48) + 8) + 40);

            if (v15)
            {
LABEL_17:
              v19 = _NDOLogSystem();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_4(v8, v3);
              }

              v20 = [*(a1 + 40) deviceInfoDict];
              v21 = [v8 serialNumber];
              [v20 setObject:v3 forKeyedSubscript:v21];

              [*(*(*(a1 + 56) + 8) + 40) addObject:v3];
              goto LABEL_20;
            }

            v13 = [v3 warranty];
            v16 = [v13 agsULURL];
            v17 = *(*(a1 + 48) + 8);
            v18 = *(v17 + 40);
            *(v17 + 40) = v16;
          }

          goto LABEL_17;
        }

        v29 = MEMORY[0x277D2D0B8];
        v30 = [*(a1 + 40) deviceInfoDict];
        v31 = [v8 serialNumber];
        v32 = [v30 objectForKeyedSubscript:v31];
        v33 = [v32 warranty];
        v12 = [v29 deviceInfoWithDevice:v8 warranty:v33];

        v11 = _NDOLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_3(v12, v8);
        }

LABEL_12:

        v3 = v12;
        goto LABEL_13;
      }
    }

    v12 = v3;
    goto LABEL_12;
  }

LABEL_20:
  dispatch_group_leave(*(*(a1 + 40) + 1464));
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_74(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = _NDOLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 136446466;
    v13 = "[NDOCoverageCentralViewControllerLegacy getAllDeviceInfoUsingPolicy:sessionID:params:isSales:andForcePostFollowup:withReply:]_block_invoke";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_25BD8D000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: finishing with device infos: %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_75;
  block[3] = &unk_279978728;
  v8 = *(a1 + 32);
  v7 = *(a1 + 56);
  v5 = *(&v8 + 1);
  *&v6 = v7;
  *(&v6 + 1) = *(a1 + 48);
  v10 = v8;
  v11 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_75(uint64_t a1, uint64_t a2)
{
  v3 = _NDOLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_75_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  [*(a1 + 32) setUlSalesURL:*(*(*(a1 + 48) + 8) + 40)];
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, *(*(*(a1 + 56) + 8) + 40));
  }

  [*(a1 + 32) setDeviceLoadCompleted:1];
  return [*(a1 + 32) showUI];
}

- (void)getDeviceInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy sessionID:(id)d params:(id)params andForcePostFollowup:(BOOL)followup withReply:(id)reply
{
  followupCopy = followup;
  numberCopy = number;
  dCopy = d;
  paramsCopy = params;
  replyCopy = reply;
  if ([(NDOCoverageCentralViewControllerLegacy *)self isSignedIn])
  {
    ndoManager = [(NDOCoverageCentralViewControllerLegacy *)self ndoManager];
    [ndoManager getDeviceInfoForSerialNumber:numberCopy usingPolicy:policy sessionID:dCopy params:paramsCopy andForcePostFollowup:followupCopy withReply:replyCopy];
  }

  else
  {
    v19 = _NDOLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [(NDOCoverageCentralViewControllerLegacy *)v19 getDeviceInfoForSerialNumber:v20 usingPolicy:v21 sessionID:v22 params:v23 andForcePostFollowup:v24 withReply:v25, v26];
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0);
    }
  }
}

- (void)updateDefaultDeviceWithDeviceInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
    deviceInfoDict = [(NDOCoverageCentralViewControllerLegacy *)self deviceInfoDict];
    defaultDevice = [(NDOCoverageCentralViewControllerLegacy *)self defaultDevice];
    serialNumber = [defaultDevice serialNumber];
    [deviceInfoDict setObject:infoCopy forKeyedSubscript:serialNumber];
  }
}

- (void)updateDeviceInfoForDevice:(id)device usingPolicy:(unint64_t)policy params:(id)params forceUpdateFollowup:(BOOL)followup withReply:(id)reply
{
  followupCopy = followup;
  deviceCopy = device;
  replyCopy = reply;
  paramsCopy = params;
  v15 = _NDOLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [NDOCoverageCentralViewControllerLegacy updateDeviceInfoForDevice:usingPolicy:params:forceUpdateFollowup:withReply:];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke;
  aBlock[3] = &unk_2799787A0;
  aBlock[4] = self;
  v25 = deviceCopy;
  v26 = replyCopy;
  v16 = replyCopy;
  v17 = deviceCopy;
  v18 = _Block_copy(aBlock);
  serialNumber = [v17 serialNumber];
  sessionID = [(NDOCoverageCentralViewControllerLegacy *)self sessionID];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_76;
  v22[3] = &unk_279978440;
  v23 = v18;
  v21 = v18;
  [(NDOCoverageCentralViewControllerLegacy *)self getDeviceInfoForSerialNumber:serialNumber usingPolicy:policy sessionID:sessionID params:paramsCopy andForcePostFollowup:followupCopy withReply:v22];
}

void __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_2;
  v7[3] = &unk_279978778;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) warranty];

  if (v2)
  {
    v3 = *(v1 + 32);
    v4 = [*(v1 + 40) deviceInfoDict];
    v5 = [*(v1 + 32) device];
    v6 = [v5 serialNumber];
    [v4 setObject:v3 forKeyedSubscript:v6];

    v7 = _NDOLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v1 + 32);
      v9 = [v8 device];
      v10 = [v9 serialNumber];
      *buf = 136446722;
      v30 = "[NDOCoverageCentralViewControllerLegacy updateDeviceInfoForDevice:usingPolicy:params:forceUpdateFollowup:withReply:]_block_invoke_2";
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_25BD8D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: updating deviceInfo: %@ for sn: %@", buf, 0x20u);
    }
  }

  if ([*(v1 + 40) shouldShowDeviceListUI])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [*(v1 + 40) specifiers];
    v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v23 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"NDODevice"];
          v16 = [v15 serialNumber];
          [*(v1 + 32) device];
          v18 = v17 = v1;
          v19 = [v18 serialNumber];
          v20 = [v16 isEqualToString:v19];

          v1 = v17;
          if (v20)
          {
            [v14 setObject:*(v17 + 48) forKeyedSubscript:@"NDODevice"];
            [v14 setObject:*(v17 + 32) forKeyedSubscript:@"NDODeviceInfo"];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }
  }

  [*(v1 + 40) reloadSpecifiers];
  return (*(*(v1 + 56) + 16))();
}

void __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_2_77;
  v5[3] = &unk_2799783F0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_2_77(uint64_t a1, uint64_t a2)
{
  v3 = _NDOLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_2_77_cold_1(a1);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[NDOCoverageCentralViewControllerLegacy handleURL:withCompletion:]";
    v22 = 2112;
    v23 = lCopy;
    _os_log_impl(&dword_25BD8D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Handle url with dict: %@", buf, 0x16u);
  }

  if ([(NDOCoverageCentralViewControllerLegacy *)self isSignedIn])
  {
    v9 = [lCopy objectForKeyedSubscript:@"path"];
    if ([MEMORY[0x277D2D0D0] isNotEmptyString:v9])
    {
      [(NDOCoverageCentralViewControllerLegacy *)self setLaunchedWithUrl:1];
      if ([v9 hasPrefix:@"DEFAULT_COVERAGE"])
      {
        specifiers = [(NDOCoverageCentralViewControllerLegacy *)self specifiers];
        v11 = [specifiers specifierForID:@"DEFAULT_COVERAGE"];

        v12 = [[NDOWarrantyInfoController alloc] initWithSpecifier:v11];
        navigationController = [(NDOCoverageCentralViewControllerLegacy *)self navigationController];
        [navigationController pushViewController:v12 animated:1];

        completionCopy[2](completionCopy);
      }

      else
      {
        objc_initWeak(buf, self);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __67__NDOCoverageCentralViewControllerLegacy_handleURL_withCompletion___block_invoke;
        v15[3] = &unk_2799787F0;
        objc_copyWeak(&v17, buf);
        v16 = completionCopy;
        [(NDOCoverageCentralViewControllerLegacy *)self _getUpdatedParamsFromPath:v9 withCompletion:v15];

        objc_destroyWeak(&v17);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v18.receiver = self;
      v18.super_class = NDOCoverageCentralViewControllerLegacy;
      [(NDOCoverageCentralViewControllerLegacy *)&v18 handleURL:lCopy withCompletion:completionCopy];
    }
  }

  else
  {
    v14 = _NDOLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v21 = "[NDOCoverageCentralViewControllerLegacy handleURL:withCompletion:]";
      _os_log_impl(&dword_25BD8D000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring handle as the user is not signed in to icloud.", buf, 0xCu);
    }

    v19.receiver = self;
    v19.super_class = NDOCoverageCentralViewControllerLegacy;
    [(NDOCoverageCentralViewControllerLegacy *)&v19 handleURL:lCopy withCompletion:completionCopy];
  }
}

void __67__NDOCoverageCentralViewControllerLegacy_handleURL_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDeeplinkParams:v3];
  v5 = [WeakRetained _getParamsDictFromPath:v3];
  v6 = _NDOLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "[NDOCoverageCentralViewControllerLegacy handleURL:withCompletion:]_block_invoke";
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_25BD8D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: fetching devices with params dict: %@", buf, 0x16u);
  }

  v7 = [v5 objectForKey:@"type"];
  v8 = v7;
  if (v7 && [v7 length])
  {
    v9 = [v8 lowercaseString];
    v10 = [v9 isEqualToString:@"sales"];
  }

  else
  {
    v10 = 0;
  }

  v11 = [WeakRetained sessionID];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__NDOCoverageCentralViewControllerLegacy_handleURL_withCompletion___block_invoke_90;
  v12[3] = &unk_2799787C8;
  v13 = *(a1 + 32);
  [WeakRetained fetchAllDeviceInfoUsingPolicy:2 sessionID:v11 params:v3 isSales:v10 withReply:v12];
}

- (BOOL)shouldDeferPushForSpecifierID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[NDOCoverageCentralViewControllerLegacy shouldDeferPushForSpecifierID:]";
    v8 = 2112;
    v9 = dCopy;
    _os_log_impl(&dword_25BD8D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s specifierId:%@", &v6, 0x16u);
  }

  return 0;
}

- (void)handlePurchaseCompleted
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDOCoverageCentralViewControllerLegacy handlePurchaseCompleted]";
  OUTLINED_FUNCTION_2(&dword_25BD8D000, self, a3, "%{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_refreshAndForcePostFollowUp:(BOOL)up refreshControlToStop:(id)stop
{
  upCopy = up;
  stopCopy = stop;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(NDOCoverageCentralViewControllerLegacy *)v7 _refreshAndForcePostFollowUp:v8 refreshControlToStop:v9, v10, v11, v12, v13, v14];
  }

  table = [(NDOCoverageCentralViewControllerLegacy *)self table];
  isHidden = [table isHidden];

  if (isHidden)
  {
    [(NDOCoverageCentralViewControllerLegacy *)self _setContentUnavailableConfiguration:self->_loadingConfig];
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__NDOCoverageCentralViewControllerLegacy__refreshAndForcePostFollowUp_refreshControlToStop___block_invoke;
  aBlock[3] = &unk_279978840;
  objc_copyWeak(&v25, &location);
  aBlock[4] = self;
  v17 = stopCopy;
  v24 = v17;
  v18 = _Block_copy(aBlock);
  v19 = v18;
  if (upCopy)
  {
    ndoManager = [(NDOCoverageCentralViewControllerLegacy *)self ndoManager];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __92__NDOCoverageCentralViewControllerLegacy__refreshAndForcePostFollowUp_refreshControlToStop___block_invoke_3;
    v21[3] = &unk_279978468;
    v22 = v19;
    [ndoManager clearAllUserInitiatedFollowUpDismissalsWithReply:v21];
  }

  else
  {
    (*(v18 + 2))(v18);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __92__NDOCoverageCentralViewControllerLegacy__refreshAndForcePostFollowUp_refreshControlToStop___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [a1[4] sessionID];
  v4 = [a1[4] deeplinkParams];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __92__NDOCoverageCentralViewControllerLegacy__refreshAndForcePostFollowUp_refreshControlToStop___block_invoke_2;
  v5[3] = &unk_279978818;
  v6 = a1[5];
  [WeakRetained fetchAllDeviceInfoUsingPolicy:2 sessionID:v3 params:v4 isSales:0 withReply:v5];
}

- (void)resetAll
{
  deviceInfoDict = [(NDOCoverageCentralViewControllerLegacy *)self deviceInfoDict];
  [deviceInfoDict removeAllObjects];

  v3 = +[NDOImageManager sharedManager];
  [v3 resetCache];
}

- (BOOL)shouldShowDeviceListUI
{
  deviceListAPISections = [(NDOCoverageCentralViewControllerLegacy *)self deviceListAPISections];
  v3 = [deviceListAPISections count] != 0;

  return v3;
}

- (void)showUI
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDOCoverageCentralViewControllerLegacy showUI]";
  OUTLINED_FUNCTION_0_2(&dword_25BD8D000, self, a3, "%{public}s: No warranties found", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_getUpdatedParamsFromPath:(id)path withCompletion:(id)completion
{
  completionCopy = completion;
  ndoManager = self->_ndoManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__NDOCoverageCentralViewControllerLegacy__getUpdatedParamsFromPath_withCompletion___block_invoke;
  v9[3] = &unk_279978868;
  v10 = completionCopy;
  v8 = completionCopy;
  [(NDOCoverageCentralVCManager *)ndoManager getDecodedParamsForPath:path withReply:v9];
}

void __83__NDOCoverageCentralViewControllerLegacy__getUpdatedParamsFromPath_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_286D71538;
  }

  v5 = [MEMORY[0x277CCAB68] stringWithString:v4];
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 6)
  {
    v8 = @"VisionPro";
  }

  else
  {
    v9 = [MEMORY[0x277D75418] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    v8 = @"iPhone";
    if (v10 == 1)
    {
      v8 = @"iPad";
    }
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"lobType=%@", v8];
  if (v14 && ([(__CFString *)v14 isEqualToString:&stru_286D71538]& 1) == 0)
  {
    [v5 appendString:@"&"];
  }

  [v5 appendString:v11];
  v12 = *(a1 + 32);
  v13 = [v5 copy];
  (*(v12 + 16))(v12, v13);
}

- (id)_getParamsDictFromPath:(id)path
{
  v22 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = pathCopy;
  v5 = [pathCopy componentsSeparatedByString:@"&"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v10 count] == 2)
        {
          firstObject = [v10 firstObject];
          stringByRemovingPercentEncoding = [firstObject stringByRemovingPercentEncoding];

          lastObject = [v10 lastObject];
          stringByRemovingPercentEncoding2 = [lastObject stringByRemovingPercentEncoding];

          [dictionary setObject:stringByRemovingPercentEncoding2 forKey:stringByRemovingPercentEncoding];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return dictionary;
}

- (void)openAMSUIWithURL:(id)l httpBody:(id)body
{
  v47 = *MEMORY[0x277D85DE8];
  lCopy = l;
  bodyCopy = body;
  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    deeplinkParams = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];
    *location = 136446978;
    *&location[4] = "[NDOCoverageCentralViewControllerLegacy openAMSUIWithURL:httpBody:]";
    v41 = 2112;
    v42 = lCopy;
    v43 = 2112;
    v44 = bodyCopy;
    v45 = 2112;
    v46 = deeplinkParams;
    _os_log_debug_impl(&dword_25BD8D000, v8, OS_LOG_TYPE_DEBUG, "%{public}s: url: %@, httpBody: %@, deeplinkParams: %@", location, 0x2Au);
  }

  deviceInfoDict = [(NDOCoverageCentralViewControllerLegacy *)self deviceInfoDict];
  defaultDevice = [(NDOCoverageCentralViewControllerLegacy *)self defaultDevice];
  serialNumber = [defaultDevice serialNumber];
  v12 = [deviceInfoDict objectForKeyedSubscript:serialNumber];

  objc_initWeak(location, self);
  v13 = [NDOAMSUILoadingViewController alloc];
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __68__NDOCoverageCentralViewControllerLegacy_openAMSUIWithURL_httpBody___block_invoke;
  v35 = &unk_279978890;
  objc_copyWeak(&v39, location);
  v14 = v12;
  v36 = v14;
  v15 = lCopy;
  v37 = v15;
  v16 = bodyCopy;
  v38 = v16;
  v17 = [(NDOAMSUILoadingViewController *)v13 initWithCreateAMSViewController:&v32];
  [(NDOCoverageCentralViewControllerLegacy *)self setAmsLoadingViewController:v17, v32, v33, v34, v35];

  WeakRetained = objc_loadWeakRetained(location);
  amsLoadingViewController = [(NDOCoverageCentralViewControllerLegacy *)self amsLoadingViewController];
  [amsLoadingViewController setPresenter:WeakRetained];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 6)
  {

LABEL_6:
    amsLoadingViewController2 = [(NDOCoverageCentralViewControllerLegacy *)self amsLoadingViewController];
    [amsLoadingViewController2 setModalPresentationStyle:2];
    goto LABEL_8;
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  v22 = [currentDevice2 userInterfaceIdiom] == 1;

  if (v22)
  {
    goto LABEL_6;
  }

  amsLoadingViewController2 = [(NDOCoverageCentralViewControllerLegacy *)self amsLoadingViewController];
  [amsLoadingViewController2 setModalPresentationStyle:0];
LABEL_8:

  amsLoadingViewController3 = [(NDOCoverageCentralViewControllerLegacy *)self amsLoadingViewController];
  [amsLoadingViewController3 setModalInPresentation:1];

  v25 = objc_alloc(MEMORY[0x277D757A0]);
  amsLoadingViewController4 = [(NDOCoverageCentralViewControllerLegacy *)self amsLoadingViewController];
  v27 = [v25 initWithRootViewController:amsLoadingViewController4];

  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice3 userInterfaceIdiom] == 6)
  {

LABEL_11:
    [v27 setModalPresentationStyle:2];
    goto LABEL_12;
  }

  currentDevice4 = [MEMORY[0x277D75418] currentDevice];
  v30 = [currentDevice4 userInterfaceIdiom] == 1;

  if (v30)
  {
    goto LABEL_11;
  }

LABEL_12:
  [v27 setModalInPresentation:1];
  [(NDOCoverageCentralViewControllerLegacy *)self presentViewController:v27 animated:1 completion:0];

  objc_destroyWeak(&v39);
  objc_destroyWeak(location);
}

void __68__NDOCoverageCentralViewControllerLegacy_openAMSUIWithURL_httpBody___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = [NDOAppleCareAMSUIViewController alloc];
    v5 = [*(a1 + 32) warranty];
    v6 = [WeakRetained defaultDevice];
    v7 = [v6 serialNumber];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"LINK", @"_COVERAGE_CENTRAL"];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [WeakRetained deeplinkParams];
    v12 = [(NDOAppleCareAMSUIViewController *)v4 initWithWarranty:v5 serialNumber:v7 source:v8 url:v9 purchaseBody:v10 deeplinkParams:v11];

    v13 = objc_loadWeakRetained((a1 + 56));
    [(NDOAppleCareAMSUIViewController *)v12 setPresenter:v13];

    v14[2](v14, v12);
  }
}

- (id)_noAccountConfig
{
  emptyProminentConfiguration = [MEMORY[0x277D75390] emptyProminentConfiguration];
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v4 = [v3 localizedStringForKey:@"CC_NO_ACCOUNT_ERROR_TITLE" value:&stru_286D71538 table:@"Localizable"];
  [emptyProminentConfiguration setText:v4];

  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v6 = [v5 localizedStringForKey:@"CC_NO_ACCOUNT_ERROR_SUBTITLE" value:&stru_286D71538 table:@"Localizable"];
  [emptyProminentConfiguration setSecondaryText:v6];

  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle"];
  [emptyProminentConfiguration setImage:v7];

  return emptyProminentConfiguration;
}

- (id)_errorStateConfig
{
  emptyProminentConfiguration = [MEMORY[0x277D75390] emptyProminentConfiguration];
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v5 = [v4 localizedStringForKey:@"CC_ISSUE_ERROR_TITLE" value:&stru_286D71538 table:@"Localizable"];
  [emptyProminentConfiguration setText:v5];

  v6 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v7 = [v6 localizedStringForKey:@"CC_ISSUE_ERROR_SUBTITLE" value:&stru_286D71538 table:@"Localizable"];
  [emptyProminentConfiguration setSecondaryText:v7];

  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
  [emptyProminentConfiguration setImage:v8];

  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  buttonProperties = [emptyProminentConfiguration buttonProperties];
  [buttonProperties setConfiguration:plainButtonConfiguration];

  v11 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v12 = [v11 localizedStringForKey:@"CC_RETRY" value:&stru_286D71538 table:@"Localizable"];
  buttonProperties2 = [emptyProminentConfiguration buttonProperties];
  configuration = [buttonProperties2 configuration];
  [configuration setTitle:v12];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__NDOCoverageCentralViewControllerLegacy__errorStateConfig__block_invoke;
  v18[3] = &unk_2799785A0;
  v18[4] = self;
  v15 = [MEMORY[0x277D750C8] actionWithHandler:v18];
  buttonProperties3 = [emptyProminentConfiguration buttonProperties];
  [buttonProperties3 setPrimaryAction:v15];

  return emptyProminentConfiguration;
}

- (void)dismissAMSUI
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__NDOCoverageCentralViewControllerLegacy_dismissAMSUI__block_invoke;
  v2[3] = &unk_2799785C8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __54__NDOCoverageCentralViewControllerLegacy_dismissAMSUI__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[NDOCoverageCentralViewControllerLegacy dismissAMSUI]_block_invoke";
    _os_log_impl(&dword_25BD8D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }

  v3 = [WeakRetained amsLoadingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  [WeakRetained setAmsLoadingViewController:0];
}

- (void)completeWithStatus:(unint64_t)status params:(id)params
{
  v32 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v27 = "[NDOCoverageCentralViewControllerLegacy completeWithStatus:params:]";
    v28 = 2048;
    statusCopy = status;
    v30 = 2112;
    v31 = paramsCopy;
    _os_log_impl(&dword_25BD8D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: status: %lu, params: %@", buf, 0x20u);
  }

  v8 = 1;
  if (status <= 5 && ((1 << status) & 0x2C) != 0)
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[NDOCoverageCentralViewControllerLegacy completeWithStatus:params:]";
      _os_log_impl(&dword_25BD8D000, v9, OS_LOG_TYPE_DEFAULT, "%s: refreshing summary api", buf, 0xCu);
    }

    v10 = [paramsCopy objectForKey:@"deviceSeq"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue = [v10 intValue];
        if ((intValue & 0x80000000) != 0 || (-[NDOCoverageCentralViewControllerLegacy allLocalDevices](self, "allLocalDevices"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 count] > intValue, v12, !v13))
        {
          v8 = 1;
        }

        else
        {
          allLocalDevices = [(NDOCoverageCentralViewControllerLegacy *)self allLocalDevices];
          v15 = [allLocalDevices objectAtIndexedSubscript:intValue];

          ndoManager = self->_ndoManager;
          serialNumber = [v15 serialNumber];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __68__NDOCoverageCentralViewControllerLegacy_completeWithStatus_params___block_invoke;
          v24[3] = &unk_279978278;
          v18 = v15;
          v25 = v18;
          [(NDOCoverageCentralVCManager *)ndoManager dismissFollowUpForSerialNumber:serialNumber completion:v24];

          objc_initWeak(buf, self);
          deeplinkParams = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __68__NDOCoverageCentralViewControllerLegacy_completeWithStatus_params___block_invoke_162;
          v22[3] = &unk_2799788B8;
          objc_copyWeak(&v23, buf);
          [(NDOCoverageCentralViewControllerLegacy *)self updateDeviceInfoForDevice:v18 usingPolicy:2 params:deeplinkParams forceUpdateFollowup:1 withReply:v22];

          objc_destroyWeak(&v23);
          objc_destroyWeak(buf);

          v8 = 0;
        }
      }
    }
  }

  if (status == 5 && v8)
  {
    v20 = _NDOLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[NDOCoverageCentralViewControllerLegacy completeWithStatus:params:]";
      _os_log_impl(&dword_25BD8D000, v20, OS_LOG_TYPE_DEFAULT, "%s: refreshing device list", buf, 0xCu);
    }

    [(NDOCoverageCentralViewControllerLegacy *)self _refreshAndForcePostFollowUp:0 refreshControlToStop:0];
  }

  else if ((status & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    [(NDOCoverageCentralViewControllerLegacy *)self dismissAMSUI];
    v21 = _NDOLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[NDOCoverageCentralViewControllerLegacy completeWithStatus:params:]";
      _os_log_impl(&dword_25BD8D000, v21, OS_LOG_TYPE_DEFAULT, "%s: dismissing amsui", buf, 0xCu);
    }
  }
}

void __68__NDOCoverageCentralViewControllerLegacy_completeWithStatus_params___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v11 = *MEMORY[0x277D85DE8];
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v5 = @"Dismissed";
    }

    else
    {
      v5 = @"Failed to dismiss";
    }

    v6 = [*(a1 + 32) serialNumber];
    v7 = 138543618;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_25BD8D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ followup up for %@", &v7, 0x16u);
  }
}

void __68__NDOCoverageCentralViewControllerLegacy_completeWithStatus_params___block_invoke_162(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (NDOACController)acController
{
  WeakRetained = objc_loadWeakRetained(&self->_acController);

  return WeakRetained;
}

- (void)init
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDOCoverageCentralViewControllerLegacy init]";
  OUTLINED_FUNCTION_2(&dword_25BD8D000, self, a3, "%{public}s:", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithIsSignedIn:(uint64_t)a3 deviceManager:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDOCoverageCentralViewControllerLegacy initWithIsSignedIn:deviceManager:]";
  OUTLINED_FUNCTION_0_2(&dword_25BD8D000, a1, a3, "%{public}s: Not signed in to icloud. Leaving...", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __50__NDOCoverageCentralViewControllerLegacy_loadView__block_invoke_cold_1(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "launchedWithUrl")}];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)specifiers
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDOCoverageCentralViewControllerLegacy specifiers]";
  OUTLINED_FUNCTION_2(&dword_25BD8D000, self, a3, "%{public}s:", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updateCells
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDOCoverageCentralViewControllerLegacy updateCells]";
  OUTLINED_FUNCTION_2(&dword_25BD8D000, self, a3, "%{public}s: generating specifiers from device list api response", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)openURL:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = 136446466;
  OUTLINED_FUNCTION_0_3();
  v4 = v0;
  OUTLINED_FUNCTION_4(&dword_25BD8D000, v1, v2, "%{public}s: Opening url: %@", v3);
}

- (void)fetchAllDeviceInfoUsingPolicy:(void *)a1 sessionID:params:isSales:withReply:.cold.1(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

- (void)fetchAllDeviceInfoUsingPolicy:(uint64_t)a3 sessionID:(uint64_t)a4 params:(uint64_t)a5 isSales:(uint64_t)a6 withReply:(uint64_t)a7 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDOCoverageCentralViewControllerLegacy fetchAllDeviceInfoUsingPolicy:sessionID:params:isSales:withReply:]";
  OUTLINED_FUNCTION_2(&dword_25BD8D000, a1, a3, "%{public}s: skipping fetch: not logged in", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)fetchAllDeviceInfoUsingPolicy:(uint64_t)a3 sessionID:(uint64_t)a4 params:(uint64_t)a5 isSales:(uint64_t)a6 withReply:(uint64_t)a7 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDOCoverageCentralViewControllerLegacy fetchAllDeviceInfoUsingPolicy:sessionID:params:isSales:withReply:]";
  OUTLINED_FUNCTION_2(&dword_25BD8D000, a1, a3, "%{public}s: starting fetch", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_2_69_cold_1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 136446466;
  v5 = "[NDOCoverageCentralViewControllerLegacy fetchAllDeviceInfoUsingPolicy:sessionID:params:isSales:withReply:]_block_invoke_2";
  v6 = 2112;
  v7 = v3;
  OUTLINED_FUNCTION_4(&dword_25BD8D000, a2, a3, "%{public}s: getDeviceListForLocalDevices reply: %@", &v4);
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 32) serialNumber];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_2(void *a1, void *a2)
{
  v3 = [a1 serialNumber];
  v4 = [a2 warranty];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_3(void *a1, void *a2)
{
  v3 = [a2 serialNumber];
  v4 = [a1 warranty];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_4(void *a1, void *a2)
{
  v3 = [a1 serialNumber];
  v4 = [a2 warranty];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_75_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDOCoverageCentralViewControllerLegacy getAllDeviceInfoUsingPolicy:sessionID:params:isSales:andForcePostFollowup:withReply:]_block_invoke";
  OUTLINED_FUNCTION_2(&dword_25BD8D000, a1, a3, "%{public}s: refreshing", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getDeviceInfoForSerialNumber:(uint64_t)a3 usingPolicy:(uint64_t)a4 sessionID:(uint64_t)a5 params:(uint64_t)a6 andForcePostFollowup:(uint64_t)a7 withReply:(uint64_t)a8 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDOCoverageCentralViewControllerLegacy getDeviceInfoForSerialNumber:usingPolicy:sessionID:params:andForcePostFollowup:withReply:]";
  OUTLINED_FUNCTION_2(&dword_25BD8D000, a1, a3, "%{public}s: skipping fetch: not logged in", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updateDeviceInfoForDevice:usingPolicy:params:forceUpdateFollowup:withReply:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = 136446466;
  OUTLINED_FUNCTION_0_3();
  v4 = v0;
  OUTLINED_FUNCTION_4(&dword_25BD8D000, v1, v2, "%{public}s: for device: %@", v3);
}

void __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_2_77_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) device];
  v2 = [v1 serialNumber];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)_refreshAndForcePostFollowUp:(uint64_t)a3 refreshControlToStop:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[NDOCoverageCentralViewControllerLegacy _refreshAndForcePostFollowUp:refreshControlToStop:]";
  OUTLINED_FUNCTION_2(&dword_25BD8D000, a1, a3, "%{public}s:", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end