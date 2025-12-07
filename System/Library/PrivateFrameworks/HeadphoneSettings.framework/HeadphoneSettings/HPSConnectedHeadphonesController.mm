@interface HPSConnectedHeadphonesController
+ (BOOL)_BTMAvailable;
+ (id)controllerForSpecifier:(id)specifier;
+ (id)getDeviceIconSymbolString:(unsigned int)string;
+ (id)shared;
- (BOOL)BOOLFromBluetoothPreferences:(id)preferences;
- (HPSConnectedHeadphonesController)init;
- (id)_BTMPairedDevices;
- (id)connectedHeadphoneInfo;
- (id)getDeviceIcon:(unsigned int)icon;
- (id)initPrivate;
- (id)specifierFor:(id)for btsDevice:(id)device;
- (id)topLevelSpecifiers;
- (id)topLevelSpecifiersLegacey;
- (id)topLevelSpecifiersRedesign;
- (id)topLevelSpecifiersThirdParty;
- (void)addTopLevelEntryWithHpDevice:(id)device;
- (void)dealloc;
- (void)deviceConnectionHandler:(id)handler;
- (void)removeTopLevelEntryWithHpDevice:(id)device;
- (void)setDeviceChangeHandler:(id)handler;
- (void)thirdPartyHeadphonesDatasourceDidUpdate:(id)update;
- (void)topLevelSpecifiersRedesign;
- (void)updateTitleBar;
- (void)updateTopLevelEntryWithHpDevice:(id)device;
@end

@implementation HPSConnectedHeadphonesController

- (HPSConnectedHeadphonesController)init
{
  v3 = +[HPSConnectedHeadphonesController shared];

  return v3;
}

+ (id)shared
{
  v2 = shared_shared_0;
  if (!shared_shared_0)
  {
    if (shared_oncePredicate_0 != -1)
    {
      +[HPSConnectedHeadphonesController shared];
    }

    v2 = shared_shared_0;
  }

  return v2;
}

uint64_t __42__HPSConnectedHeadphonesController_shared__block_invoke()
{
  shared_shared_0 = [[HPSConnectedHeadphonesController alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v19.receiver = self;
  v19.super_class = HPSConnectedHeadphonesController;
  v2 = [(HPSConnectedHeadphonesController *)&v19 init];
  v3 = v2;
  if (v2)
  {
    deviceChangeHandler = v2->_deviceChangeHandler;
    v2->_deviceChangeHandler = 0;

    if (_os_feature_enabled_impl())
    {
      mEMORY[0x277D0FB88] = [MEMORY[0x277D0FB88] sharedInstance];
      [mEMORY[0x277D0FB88] addDelegate:v3];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF3190] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF3188] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF31A0] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF3198] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF31F0] object:0];

    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter6 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF3168] object:0];

    mEMORY[0x277CB8698] = [MEMORY[0x277CB8698] sharedSystemAudioContext];
    avOutputContext = v3->_avOutputContext;
    v3->_avOutputContext = mEMORY[0x277CB8698];

    defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter7 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CB8628] object:v3->_avOutputContext];

    defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter8 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CB8630] object:v3->_avOutputContext];

    v16 = objc_alloc_init(HPSThirdPartyHeadphonesDatasource);
    thirdPartyDatasource = v3->_thirdPartyDatasource;
    v3->_thirdPartyDatasource = v16;
  }

  return v3;
}

- (void)dealloc
{
  deviceChangeHandler = self->_deviceChangeHandler;
  self->_deviceChangeHandler = 0;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = HPSConnectedHeadphonesController;
  [(HPSConnectedHeadphonesController *)&v5 dealloc];
}

- (id)topLevelSpecifiers
{
  if (_os_feature_enabled_impl())
  {
    v3 = MEMORY[0x277CBEB18];
    topLevelSpecifiersRedesign = [(HPSConnectedHeadphonesController *)self topLevelSpecifiersRedesign];
    topLevelSpecifiersLegacey = [v3 arrayWithArray:topLevelSpecifiersRedesign];

    topLevelSpecifiersThirdParty = [(HPSConnectedHeadphonesController *)self topLevelSpecifiersThirdParty];
    [topLevelSpecifiersLegacey addObjectsFromArray:topLevelSpecifiersThirdParty];

    if ([topLevelSpecifiersLegacey count])
    {
      [topLevelSpecifiersLegacey sortUsingComparator:&__block_literal_global_39];
      v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DEVICE_TYPE_GROUP_ID"];
      [topLevelSpecifiersLegacey insertObject:v7 atIndex:0];
    }
  }

  else
  {
    topLevelSpecifiersLegacey = [(HPSConnectedHeadphonesController *)self topLevelSpecifiersLegacey];
  }

  return topLevelSpecifiersLegacey;
}

BOOL __54__HPSConnectedHeadphonesController_topLevelSpecifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  return v5 < v6;
}

- (id)topLevelSpecifiersLegacey
{
  v49 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  _BTMAvailable = [objc_opt_class() _BTMAvailable];
  if ((_BTMAvailable & 1) == 0)
  {
    v28 = sharedBluetoothSettingsLogComponent(_BTMAvailable);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [HPSConnectedHeadphonesController topLevelSpecifiersLegacey];
    }

    goto LABEL_29;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  _BTMPairedDevices = [(HPSConnectedHeadphonesController *)self _BTMPairedDevices];
  v5 = [_BTMPairedDevices countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v41;
    v37 = *MEMORY[0x277D3FE58];
    v36 = *MEMORY[0x277D3FF08];
    v35 = *MEMORY[0x277D400B8];
    v34 = *MEMORY[0x277D40138];
    v33 = *MEMORY[0x277D40170];
    v8 = 0x2796B2000uLL;
    v32 = *MEMORY[0x277D3FFB8];
    v31 = *MEMORY[0x277D3FFC0];
    v30 = _BTMPairedDevices;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(_BTMPairedDevices);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        if ([v10 connected] && objc_msgSend(*(v8 + 2304), "isAppleHeadphone:", v10) && (objc_msgSend(v10, "isTemporaryPaired") & 1) == 0 && objc_msgSend(v10, "isGenuineAirPods"))
        {
          v11 = [BTSDeviceClassic deviceWithDevice:v10];
          productName = [v11 productName];
          if ([(HPSConnectedHeadphonesController *)selfCopy nicknameEnabled])
          {
            name = [v11 name];

            productName = name;
          }

          classicDevice = [v11 classicDevice];
          if (classicDevice)
          {
            v15 = classicDevice;
            classicDevice2 = [v11 classicDevice];
            magicPaired = [classicDevice2 magicPaired];

            if (magicPaired)
            {
              name2 = [v11 name];

              productName = name2;
            }

            _BTMPairedDevices = v30;
          }

          if (!productName || (v19 = [(__CFString *)productName isEqualToString:&stru_28634F910], v19))
          {

            productName = @" ";
          }

          v20 = sharedBluetoothSettingsLogComponent(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v47 = productName;
            _os_log_impl(&dword_25126C000, v20, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Adding device to specifiers: %@", buf, 0xCu);
          }

          v21 = objc_alloc(MEMORY[0x277CBEB38]);
          v44[0] = v37;
          v45[0] = objc_opt_class();
          v45[1] = @"BTSPairSetup";
          v44[1] = v36;
          v44[2] = v35;
          v44[3] = v34;
          v45[2] = @"BTSPairController";
          v45[3] = @"PSLinkCell";
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:4];
          v23 = [v21 initWithDictionary:v22];

          [v23 setObject:productName forKey:v33];
          identifier = [v11 identifier];
          [v23 setObject:identifier forKey:v32];

          [v23 setObject:@"BTSDeviceConfigController" forKey:v36];
          v25 = -[HPSConnectedHeadphonesController getDeviceIcon:](selfCopy, "getDeviceIcon:", [v10 productId]);
          [v23 setObject:v25 forKey:v31];

          v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v26 setObject:v11 forKey:@"bt-device"];
          v27 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:productName target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
          [v27 setName:productName];
          [v27 setProperties:v23];
          [v27 setUserInfo:v26];
          [array addObject:v27];

          v8 = 0x2796B2000;
        }
      }

      v6 = [_BTMPairedDevices countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v6);
  }

  if ([array count])
  {
    v28 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DEVICE_TYPE_GROUP_ID"];
    [array insertObject:v28 atIndex:0];
LABEL_29:
  }

  return array;
}

- (id)topLevelSpecifiersRedesign
{
  v90 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  _BTMAvailable = [objc_opt_class() _BTMAvailable];
  if ((_BTMAvailable & 1) == 0)
  {
    v3 = sharedBluetoothSettingsLogComponent(_BTMAvailable);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [HPSConnectedHeadphonesController topLevelSpecifiersLegacey];
    }
  }

  _BTMPairedDevices = [(HPSConnectedHeadphonesController *)self _BTMPairedDevices];
  v5 = [MEMORY[0x277CBEC10] mutableCopy];
  v6 = [_BTMPairedDevices bs_reduce:v5 block:&__block_literal_global_71];

  obj = [MEMORY[0x277D0FC08] shared];
  objc_sync_enter(obj);
  mEMORY[0x277D0FC08] = [MEMORY[0x277D0FC08] shared];
  connectedHeadphones = [mEMORY[0x277D0FC08] connectedHeadphones];
  allValues = [connectedHeadphones allValues];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __62__HPSConnectedHeadphonesController_topLevelSpecifiersRedesign__block_invoke_2;
  v79[3] = &unk_2796B2CC8;
  v54 = v6;
  v80 = v54;
  v10 = [allValues bs_map:v79];
  [(HPSConnectedHeadphonesController *)self setDevices:v10];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  devices = [(HPSConnectedHeadphonesController *)self devices];
  v12 = [devices countByEnumeratingWithState:&v75 objects:v89 count:16];
  if (v12)
  {
    v74 = *v76;
    v62 = *MEMORY[0x277D3FE58];
    v64 = *MEMORY[0x277D3FF08];
    v60 = *MEMORY[0x277D40138];
    v61 = *MEMORY[0x277D400B8];
    v58 = *MEMORY[0x277D3FFB8];
    v59 = *MEMORY[0x277D40170];
    v57 = *MEMORY[0x277D3FFC0];
    v71 = devices;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v76 != v74)
        {
          objc_enumerationMutation(v71);
        }

        v14 = *(*(&v75 + 1) + 8 * i);
        if ([v14 connected] && +[HPSProductUtils isAppleHeadphone:](HPSProductUtils, "isAppleHeadphone:", v14) && (objc_msgSend(v14, "isTemporaryPaired") & 1) == 0 && (objc_msgSend(v14, "isGenuineAirPods") & 1) != 0)
        {
          classicDevice = [v14 classicDevice];
          productName = [classicDevice productName];
          if ([(HPSConnectedHeadphonesController *)self nicknameEnabled])
          {
            name = [classicDevice name];

            productName = name;
          }

          v73ClassicDevice = [classicDevice classicDevice];
          if (v73ClassicDevice)
          {
            v73ClassicDevice2 = [classicDevice classicDevice];
            magicPaired = [v73ClassicDevice2 magicPaired];

            if (magicPaired)
            {
              name2 = [classicDevice name];

              productName = name2;
            }
          }

          v20 = productName;
          if (!productName || (v21 = [(__CFString *)productName isEqualToString:&stru_28634F910], v20 = productName, v21))
          {

            productName = @" ";
          }

          v22 = sharedBluetoothSettingsLogComponent(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v84 = productName;
            _os_log_impl(&dword_25126C000, v22, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Adding device to specifiers: %@", buf, 0xCu);
          }

          v23 = objc_alloc(MEMORY[0x277CBEB38]);
          v87[0] = v62;
          v88[0] = objc_opt_class();
          v88[1] = @"BTSPairSetup";
          v87[1] = v64;
          v87[2] = v61;
          v87[3] = v60;
          v88[2] = @"BTSPairController";
          v88[3] = @"PSLinkCell";
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:4];
          v70 = [v23 initWithDictionary:v24];

          [v70 setObject:productName forKey:v59];
          btsDevice = [classicDevice btsDevice];
          classicDevice2 = [btsDevice classicDevice];
          if (classicDevice2)
          {
            v27 = MEMORY[0x277CCACA8];
            btsDevice2 = [classicDevice btsDevice];
            classicDevice3 = [btsDevice2 classicDevice];
            v67 = [v27 stringWithFormat:@"%p", classicDevice3];
          }

          else
          {
            v67 = @"none";
          }

          v30 = MEMORY[0x277CCACA8];
          identifier = [classicDevice identifier];
          v69 = [v30 stringWithFormat:@"%@-%@", identifier, v67];

          [v70 setObject:v69 forKey:v58];
          [v70 setObject:@"BTSDeviceConfigController" forKey:v64];
          v32 = -[HPSConnectedHeadphonesController getDeviceIcon:](self, "getDeviceIcon:", [v14 productId]);
          [v70 setObject:v32 forKey:v57];

          v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
          btsDevice3 = [classicDevice btsDevice];

          if (btsDevice3)
          {
            btsDevice4 = [classicDevice btsDevice];
            [v33 setObject:btsDevice4 forKey:@"bt-device"];
          }

          deviceKey = [MEMORY[0x277D0FB78] deviceKey];
          [v33 setObject:classicDevice forKey:deviceKey];

          v37 = [v33 objectForKeyedSubscript:@"bt-device"];
          if (v37)
          {
            v66 = [v33 objectForKeyedSubscript:@"bt-device"];
          }

          else
          {
            v66 = @"NIL";
          }

          deviceKey2 = [MEMORY[0x277D0FB78] deviceKey];
          v39 = [v33 objectForKeyedSubscript:deviceKey2];
          if (v39)
          {
            deviceKey3 = [MEMORY[0x277D0FB78] deviceKey];
            v65 = [v33 objectForKeyedSubscript:deviceKey3];
          }

          else
          {
            v65 = @"NIL";
          }

          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"DEVICE_KEY %@, HPS_DEVICE_KEY: %@, PS_IDENTIFIER %@", v66, v65, v69];
          [v33 setObject:v41 forKey:@"HPS_DeviceInfo"];
          v42 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:productName target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
          [v42 setName:productName];
          [v42 setProperties:v70];
          [v42 setUserInfo:v33];
          headphoneDevice = [classicDevice headphoneDevice];
          if (headphoneDevice)
          {
            btsDevice5 = [classicDevice btsDevice];
            v63 = btsDevice5;
            if (btsDevice5)
            {

LABEL_41:
              v50 = sharedBluetoothSettingsLogComponent([array addObject:v42]);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                v51 = [v42 debugDescription];
                *buf = 138412546;
                v84 = v51;
                v85 = 2112;
                v86 = v41;
                _os_log_impl(&dword_25126C000, v50, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Adding specifier %@ with connected devices %@", buf, 0x16u);
              }

              goto LABEL_46;
            }

            v63 = 0;
          }

          headphoneDevice2 = [classicDevice headphoneDevice];
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v48 = [v47 isEqualToString:@"HeadphoneManager.HeadphoneReplayDevice"];

          if (headphoneDevice)
          {

            if (v48)
            {
              goto LABEL_41;
            }
          }

          else if (v48)
          {
            goto LABEL_41;
          }

          v50 = sharedBluetoothSettingsLogComponent(v49);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v52 = [classicDevice debugDescription];
            [(HPSConnectedHeadphonesController *)v52 topLevelSpecifiersRedesign:v81];
          }

LABEL_46:

          continue;
        }
      }

      devices = v71;
      v12 = [v71 countByEnumeratingWithState:&v75 objects:v89 count:16];
    }

    while (v12);
  }

  objc_sync_exit(obj);

  return array;
}

id __62__HPSConnectedHeadphonesController_topLevelSpecifiersRedesign__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [BTSDeviceClassic deviceWithDevice:v5];
  v7 = [v5 address];

  [v4 setObject:v6 forKey:v7];

  return v4;
}

id __62__HPSConnectedHeadphonesController_topLevelSpecifiersRedesign__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 btAddress];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"-" withString:@":"];

  v6 = objc_alloc(MEMORY[0x277D0FB78]);
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v6 initWithHeadphoneDevice:v3 btsDevice:v7];

  return v8;
}

- (id)topLevelSpecifiersThirdParty
{
  v39 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEB18] array];
  v31 = v30 = self;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(HPSThirdPartyHeadphonesDatasource *)self->_thirdPartyDatasource routedThirdPartyHeadphones];
  v3 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v3)
  {
    v4 = v3;
    v29 = *v33;
    v28 = *MEMORY[0x277D3FE58];
    v5 = *MEMORY[0x277D3FF08];
    v27 = *MEMORY[0x277D400B8];
    v26 = *MEMORY[0x277D40138];
    v25 = *MEMORY[0x277D40170];
    v6 = *MEMORY[0x277D3FFB8];
    v7 = *MEMORY[0x277D3FFC0];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = MEMORY[0x277D3FAD8];
        name = [v9 name];
        v12 = [v10 preferenceSpecifierNamed:name target:v30 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

        name2 = [v9 name];
        [v12 setName:name2];

        v14 = objc_alloc(MEMORY[0x277CBEB38]);
        v36[0] = v28;
        v37[0] = objc_opt_class();
        v37[1] = @"BTSPairSetup";
        v36[1] = v5;
        v36[2] = v27;
        v36[3] = v26;
        v37[2] = @"BTSPairController";
        v37[3] = @"PSLinkCell";
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
        v16 = [v14 initWithDictionary:v15];

        name3 = [v9 name];
        [v16 setObject:name3 forKey:v25];

        identifier = [v9 identifier];
        [v16 setObject:identifier forKey:v6];

        [v16 setObject:@"BTSDeviceConfigController" forKey:v5];
        image = [v9 image];
        [v16 setObject:image forKey:v7];

        [v12 setProperties:v16];
        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
        classicDevice = [v9 classicDevice];
        [v20 setObject:classicDevice forKey:@"bt-device"];

        leDevice = [v9 leDevice];
        [v20 setObject:leDevice forKey:@"ctkd-device"];

        [v12 setUserInfo:v20];
        [v31 addObject:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v4);
  }

  return v31;
}

- (id)connectedHeadphoneInfo
{
  topLevelSpecifiers = [(HPSConnectedHeadphonesController *)self topLevelSpecifiers];
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HPSConnectedHeadphonesController_connectedHeadphoneInfo__block_invoke;
  v6[3] = &unk_2796B2CF0;
  v4 = array;
  v7 = v4;
  [topLevelSpecifiers enumerateObjectsUsingBlock:v6];

  return v4;
}

void __58__HPSConnectedHeadphonesController_connectedHeadphoneInfo__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a2;
    v5 = [v4 properties];
    v6 = [v5 objectForKey:*MEMORY[0x277D40170]];

    v7 = [v4 properties];
    v8 = [v7 objectForKey:*MEMORY[0x277D3FFB8]];

    v9 = [v4 properties];
    v10 = [v9 objectForKey:*MEMORY[0x277D3FFC0]];

    v11 = [[HPSConnectedHeadphoneInfo alloc] initWithID:v8 name:v6 image:v10 specifier:v4];
    v13 = sharedBluetoothSettingsLogComponent(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HPSConnectedHeadphoneInfo *)v11 deviceID];
      v15 = [(HPSConnectedHeadphoneInfo *)v11 deviceName];
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_25126C000, v13, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Adding device, ID: %@, Name: %@", &v16, 0x16u);
    }

    [*(a1 + 32) addObject:v11];
  }
}

- (void)setDeviceChangeHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sharedBluetoothSettingsLogComponent(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25126C000, v5, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Setting Device Change Handler", v8, 2u);
  }

  v6 = MEMORY[0x25306F9B0](handlerCopy);
  deviceChangeHandler = self->_deviceChangeHandler;
  self->_deviceChangeHandler = v6;
}

- (void)deviceConnectionHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = sharedBluetoothSettingsLogComponent(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    v11 = 138412290;
    v12 = name;
    _os_log_impl(&dword_25126C000, v5, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Notification received: %@", &v11, 0xCu);
  }

  deviceChangeHandler = self->_deviceChangeHandler;
  v9 = sharedBluetoothSettingsLogComponent(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (deviceChangeHandler)
  {
    if (v10)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_25126C000, v9, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Calling Device Change Handler", &v11, 2u);
    }

    (*(self->_deviceChangeHandler + 2))();
  }

  else
  {
    if (v10)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_25126C000, v9, OS_LOG_TYPE_DEFAULT, "Connected Headphones: No Valid Device Change Handler", &v11, 2u);
    }
  }
}

- (id)getDeviceIcon:(unsigned int)icon
{
  v3 = MEMORY[0x277D755B8];
  v4 = [HPSConnectedHeadphonesController getDeviceIconSymbolString:*&icon];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v3 imageNamed:v4 inBundle:v5];

  return v6;
}

+ (id)getDeviceIconSymbolString:(unsigned int)string
{
  v8 = *MEMORY[0x277D85DE8];
  if (string - 8194 > 0x2D)
  {
    v3 = @"beats.headphones";
  }

  else
  {
    v3 = off_2796B2D60[string - 8194];
  }

  v4 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25126C000, v4, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Icon Name: %@", &v6, 0xCu);
  }

  return v3;
}

+ (BOOL)_BTMAvailable
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  mainThread = [MEMORY[0x277CCACC8] mainThread];

  if (currentThread == mainThread)
  {
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    available = [mEMORY[0x277CF3248] available];
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__HPSConnectedHeadphonesController__BTMAvailable__block_invoke;
    block[3] = &unk_2796B2D18;
    v14 = &v20;
    v15 = &v16;
    v5 = v4;
    v13 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v6 = dispatch_time(0, 1000000000);
    v7 = dispatch_group_wait(v5, v6);
    if (*(v17 + 24) == 1)
    {
      v8 = sharedBluetoothSettingsLogComponent(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[HPSConnectedHeadphonesController _BTMAvailable];
      }
    }

    available = *(v21 + 24);

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
  }

  return available;
}

void __49__HPSConnectedHeadphonesController__BTMAvailable__block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CF3248] sharedInstance];
  *(*(a1[5] + 8) + 24) = [v2 available];

  *(*(a1[6] + 8) + 24) = 0;
  v3 = a1[4];

  dispatch_group_leave(v3);
}

- (id)_BTMPairedDevices
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  mainThread = [MEMORY[0x277CCACC8] mainThread];

  if (currentThread == mainThread)
  {
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    pairedDevices = [mEMORY[0x277CF3248] pairedDevices];
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HPSConnectedHeadphonesController__BTMPairedDevices__block_invoke;
    block[3] = &unk_2796B2D18;
    v14 = &v20;
    v15 = &v16;
    v5 = v4;
    v13 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v6 = dispatch_time(0, 1000000000);
    v7 = dispatch_group_wait(v5, v6);
    if (*(v17 + 24) == 1)
    {
      v8 = sharedBluetoothSettingsLogComponent(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [HPSConnectedHeadphonesController _BTMPairedDevices];
      }
    }

    pairedDevices = v21[5];

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
  }

  return pairedDevices;
}

void __53__HPSConnectedHeadphonesController__BTMPairedDevices__block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CF3248] sharedInstance];
  v3 = [v2 pairedDevices];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(a1[6] + 8) + 24) = 0;
  v6 = a1[4];

  dispatch_group_leave(v6);
}

- (id)specifierFor:(id)for btsDevice:(id)device
{
  forCopy = for;
  deviceCopy = device;
  if (deviceCopy)
  {
    v7 = [BTSDeviceClassic deviceWithDevice:deviceCopy];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_alloc(MEMORY[0x277D0FB78]) initWithHeadphoneDevice:forCopy btsDevice:v7];
  [v8 setIsExclusivelyDeeplink:1];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  btsDevice = [v8 btsDevice];

  if (btsDevice)
  {
    btsDevice2 = [v8 btsDevice];
    [v9 setObject:btsDevice2 forKey:@"bt-device"];
  }

  if (forCopy)
  {
    [v9 setObject:forCopy forKey:@"headphone-device"];
  }

  deviceKey = [MEMORY[0x277D0FB78] deviceKey];
  [v9 setObject:v8 forKey:deviceKey];

  v13 = [v9 objectForKeyedSubscript:@"bt-device"];
  if (v13)
  {
    v14 = [v9 objectForKeyedSubscript:@"bt-device"];
  }

  else
  {
    v14 = @"NIL";
  }

  deviceKey2 = [MEMORY[0x277D0FB78] deviceKey];
  v16 = [v9 objectForKeyedSubscript:deviceKey2];
  if (v16)
  {
    deviceKey3 = [MEMORY[0x277D0FB78] deviceKey];
    v18 = [v9 objectForKeyedSubscript:deviceKey3];
  }

  else
  {
    v18 = @"NIL";
  }

  v19 = MEMORY[0x277D3FAD8];
  name = [v8 name];
  v21 = [v19 preferenceSpecifierNamed:name target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  name2 = [v8 name];
  [v21 setName:name2];

  [v21 setUserInfo:v9];

  return v21;
}

- (BOOL)BOOLFromBluetoothPreferences:(id)preferences
{
  keyExistsAndHasValidFormat = 0;
  preferencesCopy = preferences;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(preferencesCopy, @"com.apple.BTServer", &keyExistsAndHasValidFormat);

  if (AppBooleanValue)
  {
    v5 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (void)addTopLevelEntryWithHpDevice:(id)device
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HPSConnectedHeadphonesController_addTopLevelEntryWithHpDevice___block_invoke;
  block[3] = &unk_2796B2D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)removeTopLevelEntryWithHpDevice:(id)device
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HPSConnectedHeadphonesController_removeTopLevelEntryWithHpDevice___block_invoke;
  block[3] = &unk_2796B2D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateTopLevelEntryWithHpDevice:(id)device
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HPSConnectedHeadphonesController_updateTopLevelEntryWithHpDevice___block_invoke;
  block[3] = &unk_2796B2D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateTitleBar
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HPSConnectedHeadphonesController_updateTitleBar__block_invoke;
  block[3] = &unk_2796B2D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)thirdPartyHeadphonesDatasourceDidUpdate:(id)update
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HPSConnectedHeadphonesController_thirdPartyHeadphonesDatasourceDidUpdate___block_invoke;
  block[3] = &unk_2796B2D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

+ (id)controllerForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  userInfo = [specifierCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"ctkd-device"];

  if (v5 && ([v5 underlyingDADevice], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = objc_alloc_init(MEMORY[0x277D0FB70]);
    [v7 setSpecifier:specifierCopy];
  }

  else
  {
    v7 = [MEMORY[0x277D0FB80] controllerForSpecifier:specifierCopy];
  }

  return v7;
}

- (void)topLevelSpecifiersRedesign
{
  *buf = 138412290;
  *a3 = self;
  _os_log_error_impl(&dword_25126C000, log, OS_LOG_TYPE_ERROR, "Connected Headphones: Refusing to add device without both headphone and btsdevice %@", buf, 0xCu);
}

@end