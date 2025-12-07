@interface ACCBLEPairingFeaturePlugin
- (BOOL)_isSupportedType:(unsigned __int8)type supportedListData:(id)data;
- (NSString)description;
- (NSString)pluginName;
- (id)bleAccessoryForConnectionID:(unsigned int)d;
- (void)blePairing:(id)pairing accessoryAttached:(id)attached blePairingUUID:(id)d accInfoDict:(id)dict supportedPairTypes:(id)types;
- (void)blePairing:(id)pairing accessoryDetached:(id)detached blePairingUUID:(id)d;
- (void)blePairingDataUpdate:(id)update pairType:(int)type pairData:(id)data accessory:(id)accessory blePairingUUID:(id)d;
- (void)blePairingInfoUpdate:(id)update pairType:(int)type pairInfoList:(id)list accessory:(id)accessory blePairingUUID:(id)d;
- (void)blePairingStateUpdate:(id)update validMask:(unsigned int)mask btRadioOn:(BOOL)on pairingState:(int)state pairingModeOn:(BOOL)modeOn accessory:(id)accessory blePairingUUID:(id)d;
- (void)deviceSend:(id)send pairType:(int)type pairingData:(id)data;
- (void)deviceStartBLEUpdates:(id)updates pairType:(int)type btRadio:(BOOL)radio pairInfo:(BOOL)info;
- (void)deviceStateUpdate:(id)update btRadio:(unsigned __int8)radio pairStatus:(int)status pairModeOn:(BOOL)on forceUpdates:(BOOL)updates;
- (void)deviceStopBLEUpdates:(id)updates;
- (void)deviceUpdate:(id)update pairType:(int)type pairInfo:(id)info;
- (void)initPlugin;
- (void)startPlugin;
- (void)stopPlugin;
@end

@implementation ACCBLEPairingFeaturePlugin

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  pluginName = [(ACCBLEPairingFeaturePlugin *)self pluginName];
  v5 = obfuscatedPointer(self);
  isRunning = [(ACCBLEPairingFeaturePlugin *)self isRunning];
  v7 = "NO";
  if (isRunning)
  {
    v7 = "YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> isRunning: %s", pluginName, v5, v7];

  return v8;
}

- (void)initPlugin
{
  init_logging();
  iap2server = self->_iap2server;
  self->_iap2server = 0;

  blePairingProvider = self->_blePairingProvider;
  self->_blePairingProvider = 0;

  blePairingAccessoryList = self->_blePairingAccessoryList;
  self->_blePairingAccessoryList = 0;

  [(ACCBLEPairingFeaturePlugin *)self setIsRunning:0];
  v6 = MEMORY[0x277CE84E8];

  [v6 resetServerState];
}

- (void)startPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2335AD000, v5, OS_LOG_TYPE_DEFAULT, "Starting BLE Pairing feature plugin...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v6 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v24 = 0;
    _os_log_impl(&dword_2335AD000, v6, OS_LOG_TYPE_INFO, "Create/Get shared ACCiAP2ShimServer...", v24, 2u);
  }

  mEMORY[0x277CE84E8] = [MEMORY[0x277CE84E8] sharedInstance];
  iap2server = self->_iap2server;
  self->_iap2server = mEMORY[0x277CE84E8];

  [(ACCiAP2ShimServer *)self->_iap2server startServer];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v10 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&dword_2335AD000, v10, OS_LOG_TYPE_INFO, "Create ACCBLEPairingProvider...", v23, 2u);
  }

  v12 = dispatch_queue_create("com.apple.coreaccessories.plugin.blepairing", 0);
  blePairingQueue = self->_blePairingQueue;
  self->_blePairingQueue = v12;

  v14 = [objc_alloc(MEMORY[0x277CE8100]) initWithDelegate:self];
  blePairingProvider = self->_blePairingProvider;
  self->_blePairingProvider = v14;

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  blePairingAccessoryList = self->_blePairingAccessoryList;
  self->_blePairingAccessoryList = v16;

  v18 = [[ACCBLEPairingShim alloc] initWithDelegate:self];
  blePairingShim = self->_blePairingShim;
  self->_blePairingShim = v18;

  [(ACCiAP2ShimServer *)self->_iap2server addDelegate:self->_blePairingShim];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v20 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&dword_2335AD000, v20, OS_LOG_TYPE_INFO, "Starting BLE Pairing feature plugin... finished, set isRunning", v22, 2u);
  }

  [(ACCBLEPairingFeaturePlugin *)self setIsRunning:1];
}

- (void)stopPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2335AD000, v5, OS_LOG_TYPE_DEFAULT, "Stopping BLE Pairing feature plugin...", buf, 2u);
  }

  [(ACCBLEPairingFeaturePlugin *)self setIsRunning:0];
  [(ACCiAP2ShimServer *)self->_iap2server removeDelegate:self->_blePairingShim];
  blePairingShim = self->_blePairingShim;
  self->_blePairingShim = 0;

  dispatch_sync(self->_blePairingQueue, &__block_literal_global);
  blePairingProvider = self->_blePairingProvider;
  self->_blePairingProvider = 0;

  blePairingQueue = self->_blePairingQueue;
  self->_blePairingQueue = 0;

  blePairingAccessoryList = self->_blePairingAccessoryList;
  self->_blePairingAccessoryList = 0;

  [(ACCiAP2ShimServer *)self->_iap2server stopServer];
  iap2server = self->_iap2server;
  self->_iap2server = 0;

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_2335AD000, v11, OS_LOG_TYPE_DEFAULT, "Stopping BLE Pairing feature plugin... finished", v13, 2u);
  }
}

- (void)blePairing:(id)pairing accessoryAttached:(id)attached blePairingUUID:(id)d accInfoDict:(id)dict supportedPairTypes:(id)types
{
  v45 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  attachedCopy = attached;
  dCopy = d;
  dictCopy = dict;
  typesCopy = types;
  if (gLogObjects)
  {
    v17 = gNumLogObjects < 1;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v19 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  else
  {
    v19 = *gLogObjects;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    blePairingShim = self->_blePairingShim;
    iap2server = self->_iap2server;
    blePairingProvider = self->_blePairingProvider;
    *buf = 138413570;
    v34 = pairingCopy;
    v35 = 2112;
    v36 = attachedCopy;
    v37 = 2112;
    v38 = dCopy;
    v39 = 2112;
    v40 = blePairingProvider;
    v41 = 2112;
    v42 = blePairingShim;
    v43 = 2112;
    v44 = iap2server;
    _os_log_impl(&dword_2335AD000, v19, OS_LOG_TYPE_INFO, "blePairing: %@ accessoryAttached: %@, blePairingUUID=%@, _blePairingProvider=%@ _blePairingShim=%@ _iap2server=%@", buf, 0x3Eu);
  }

  if (dictCopy)
  {
    v23 = [dictCopy objectForKey:*MEMORY[0x277CE8070]];
  }

  else
  {
    v23 = 0;
  }

  if ([v23 isEqualToString:@"A1603"] && !-[ACCBLEPairingFeaturePlugin _isSupportedType:supportedListData:](self, "_isSupportedType:supportedListData:", 1, typesCopy))
  {
    blePairingQueue = self->_blePairingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__ACCBLEPairingFeaturePlugin_blePairing_accessoryAttached_blePairingUUID_accInfoDict_supportedPairTypes___block_invoke;
    block[3] = &unk_2789E0FF8;
    v28 = attachedCopy;
    v29 = dictCopy;
    v30 = dCopy;
    v31 = typesCopy;
    selfCopy = self;
    dispatch_async(blePairingQueue, block);

    v24 = v28;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v24 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v24 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v34 = pairingCopy;
      v35 = 2112;
      v36 = attachedCopy;
      v37 = 2112;
      v38 = dCopy;
      _os_log_impl(&dword_2335AD000, v24, OS_LOG_TYPE_INFO, "blePairing: %@ accessoryAttached: %@, blePairingUUID=%@, detected non-supported, don't use shim plugin", buf, 0x20u);
    }
  }
}

void __105__ACCBLEPairingFeaturePlugin_blePairing_accessoryAttached_blePairingUUID_accInfoDict_supportedPairTypes___block_invoke(void *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CE84E0]) initWithUID:a1[4] keyTag:@"BLEPairing" features:0];
  v3 = a1[5];
  if (v3)
  {
    v4 = [v3 objectForKey:*MEMORY[0x277CE8070]];
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    v6 = [v5 objectForKey:*MEMORY[0x277CE8068]];
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[5];
  if (v7)
  {
    v8 = [v7 objectForKey:*MEMORY[0x277CE8078]];
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[5];
  if (v9)
  {
    v10 = [v9 objectForKey:*MEMORY[0x277CE8080]];
  }

  else
  {
    v10 = 0;
  }

  v11 = a1[5];
  if (v11)
  {
    v12 = [v11 objectForKey:*MEMORY[0x277CE8058]];
  }

  else
  {
    v12 = 0;
  }

  v13 = a1[5];
  if (v13)
  {
    v14 = [v13 objectForKey:*MEMORY[0x277CE8060]];
  }

  else
  {
    v14 = 0;
  }

  if (v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = &stru_2848E3990;
  }

  [v2 setName:v15];
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v16 = &stru_2848E3990;
  }

  [v2 setModel:v16];
  if (v6)
  {
    v17 = v6;
  }

  else
  {
    v17 = &stru_2848E3990;
  }

  [v2 setManufacturer:v17];
  if (v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = &stru_2848E3990;
  }

  [v2 setSerialNumber:v18];
  if (v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = &stru_2848E3990;
  }

  [v2 setFirmwareVersion:{v19, v12}];
  if (v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = &stru_2848E3990;
  }

  [v2 setHardwareVersion:v20];
  [v2 addFeature:4];
  v21 = objc_alloc_init(ACCBLEPairingAccessory);
  [(ACCBLEPairingAccessory *)v21 setIap2ShimAccessory:v2];
  [(ACCBLEPairingAccessory *)v21 setBlePairingUUID:a1[6]];
  [(ACCBLEPairingAccessory *)v21 setSupportedPairTypes:a1[7]];
  v38 = v10;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v22 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v22 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
  }

  v24 = v4;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __105__ACCBLEPairingFeaturePlugin_blePairing_accessoryAttached_blePairingUUID_accInfoDict_supportedPairTypes___block_invoke_cold_2(v2, v22);
  }

  v25 = *(a1[8] + 48);
  v26 = [v2 connectionIDObj];
  [v25 setObject:v21 forKey:v26];

  [*(a1[8] + 16) addAccessory:v2];
  if (a1[6] && *(a1[8] + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v27 = [v2 accessoryInfoDict];
    v28 = [v27 mutableCopy];

    v29 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v28 setObject:v29 forKey:*MEMORY[0x277CE80B8]];

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v30 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v30 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v35 = a1[6];
      v36 = a1[7];
      *buf = 138413058;
      v40 = v21;
      v41 = 2112;
      v42 = v35;
      v43 = 2112;
      v44 = v28;
      v45 = 2112;
      v46 = v36;
      _os_log_debug_impl(&dword_2335AD000, v30, OS_LOG_TYPE_DEBUG, "accessoryAttached: call shim accessoryAttached: bleAccessory=%@ blePairingUUID=%@ pAccDict=%@ supportedPairTypes=%@", buf, 0x2Au);
    }

    [*(a1[8] + 40) accessoryAttached:v21 blePairingUUID:a1[6] accInfoDict:v28 supportedPairTypes:a1[7]];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v28 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v28 = MEMORY[0x277D86220];
      v31 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v32 = a1[6];
      v33 = *(a1[8] + 40);
      *buf = 138412546;
      v40 = v32;
      v41 = 2112;
      v42 = v33;
      _os_log_impl(&dword_2335AD000, v28, OS_LOG_TYPE_INFO, "Invalid blePairingUUID(%@) or _blePairingShim(%@)", buf, 0x16u);
    }
  }
}

- (void)blePairing:(id)pairing accessoryDetached:(id)detached blePairingUUID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  detachedCopy = detached;
  dCopy = d;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    blePairingShim = self->_blePairingShim;
    iap2server = self->_iap2server;
    blePairingProvider = self->_blePairingProvider;
    *buf = 138413570;
    v24 = pairingCopy;
    v25 = 2112;
    v26 = detachedCopy;
    v27 = 2112;
    v28 = dCopy;
    v29 = 2112;
    v30 = blePairingProvider;
    v31 = 2112;
    v32 = blePairingShim;
    v33 = 2112;
    v34 = iap2server;
    _os_log_impl(&dword_2335AD000, v13, OS_LOG_TYPE_INFO, "blePairing: %@ accessoryDetached: %@, blePairingUUID=%@, _blePairingProvider=%@ _blePairingShim=%@ _iap2server=%@", buf, 0x3Eu);
  }

  blePairingQueue = self->_blePairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ACCBLEPairingFeaturePlugin_blePairing_accessoryDetached_blePairingUUID___block_invoke;
  block[3] = &unk_2789E1020;
  block[4] = self;
  v21 = detachedCopy;
  v22 = dCopy;
  v18 = dCopy;
  v19 = detachedCopy;
  dispatch_async(blePairingQueue, block);
}

void __74__ACCBLEPairingFeaturePlugin_blePairing_accessoryDetached_blePairingUUID___block_invoke(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 16) findAccessoryForAccessoryUID:a1[5] andKeyTag:@"BLEPairing"];
  if (v2 && a1[6] && *(a1[4] + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1[4] + 16) removeAccessory:v2];
    v3 = *(a1[4] + 48);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v2, "connectionID")}];
    v5 = [v3 objectForKey:v4];

    [*(a1[4] + 40) accessoryDetached:v5 blePairingUUID:a1[6]];
    v6 = *(a1[4] + 48);
    v7 = [v2 connectionIDObj];
    [v6 removeObjectForKey:v7];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v5 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = a1[6];
      v11 = *(a1[4] + 40);
      v12 = 138412802;
      v13 = v2;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2335AD000, v5, OS_LOG_TYPE_INFO, "Invalid accessory(%@) or blePairingUUID(%@) or _blePairingShim(%@)", &v12, 0x20u);
    }
  }
}

- (void)blePairingStateUpdate:(id)update validMask:(unsigned int)mask btRadioOn:(BOOL)on pairingState:(int)state pairingModeOn:(BOOL)modeOn accessory:(id)accessory blePairingUUID:(id)d
{
  modeOnCopy = modeOn;
  onCopy = on;
  v51 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  accessoryCopy = accessory;
  dCopy = d;
  if (gLogObjects)
  {
    v18 = gNumLogObjects < 1;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v20 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  else
  {
    v20 = *gLogObjects;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138414338;
    v34 = updateCopy;
    v35 = 1024;
    maskCopy = mask;
    v37 = 1024;
    v38 = onCopy;
    v39 = 1024;
    stateCopy = state;
    v41 = 1024;
    v42 = modeOnCopy;
    v43 = 2112;
    v44 = accessoryCopy;
    v45 = 2112;
    v46 = dCopy;
    v47 = 2112;
    v48 = blePairingProvider;
    v49 = 2112;
    v50 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v20, OS_LOG_TYPE_INFO, "blePairingStateUpdate: %@ validMask: %d btRadioOn: %d pairingState: %d pairingModeOn: %d accessory: %@ blePairingUUID: %@, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x4Cu);
  }

  blePairingQueue = self->_blePairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__ACCBLEPairingFeaturePlugin_blePairingStateUpdate_validMask_btRadioOn_pairingState_pairingModeOn_accessory_blePairingUUID___block_invoke;
  block[3] = &unk_2789E1048;
  block[4] = self;
  v27 = accessoryCopy;
  v28 = dCopy;
  v31 = onCopy;
  maskCopy2 = mask;
  stateCopy2 = state;
  v32 = modeOnCopy;
  v24 = dCopy;
  v25 = accessoryCopy;
  dispatch_async(blePairingQueue, block);
}

void __124__ACCBLEPairingFeaturePlugin_blePairingStateUpdate_validMask_btRadioOn_pairingState_pairingModeOn_accessory_blePairingUUID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) findAccessoryForAccessoryUID:*(a1 + 40) andKeyTag:@"BLEPairing"];
  if (v2 && *(a1 + 48) && *(*(a1 + 32) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = *(*(a1 + 32) + 48);
    v4 = [v2 connectionIDObj];
    v5 = [v3 objectForKey:v4];

    [*(*(a1 + 32) + 40) stateUpdate:v5 blePairingUUID:*(a1 + 48) validMask:*(a1 + 56) btRadioOn:*(a1 + 64) pairingState:*(a1 + 60) pairingModeOn:*(a1 + 65)];
  }

  else
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v5 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 48);
      v9 = *(*(a1 + 32) + 40);
      v10 = 138412802;
      v11 = v2;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2335AD000, v5, OS_LOG_TYPE_INFO, "Invalid accessory(%@) or blePairingUUID(%@) or _blePairingShim(%@)", &v10, 0x20u);
    }
  }
}

- (void)blePairingInfoUpdate:(id)update pairType:(int)type pairInfoList:(id)list accessory:(id)accessory blePairingUUID:(id)d
{
  v44 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  listCopy = list;
  accessoryCopy = accessory;
  dCopy = d;
  if (gLogObjects)
  {
    v16 = gNumLogObjects < 1;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v18 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  else
  {
    v18 = *gLogObjects;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138413826;
    v31 = updateCopy;
    v32 = 1024;
    typeCopy = type;
    v34 = 2112;
    v35 = listCopy;
    v36 = 2112;
    v37 = accessoryCopy;
    v38 = 2112;
    v39 = dCopy;
    v40 = 2112;
    v41 = blePairingProvider;
    v42 = 2112;
    v43 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v18, OS_LOG_TYPE_INFO, "blePairingInfoUpdate: %@ pairType: %d pairInfoList: %@ accessory: %@ blePairingUUID: %@, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x44u);
  }

  blePairingQueue = self->_blePairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__ACCBLEPairingFeaturePlugin_blePairingInfoUpdate_pairType_pairInfoList_accessory_blePairingUUID___block_invoke;
  block[3] = &unk_2789E1070;
  block[4] = self;
  v26 = accessoryCopy;
  typeCopy2 = type;
  v27 = dCopy;
  v28 = listCopy;
  v22 = listCopy;
  v23 = dCopy;
  v24 = accessoryCopy;
  dispatch_async(blePairingQueue, block);
}

void __98__ACCBLEPairingFeaturePlugin_blePairingInfoUpdate_pairType_pairInfoList_accessory_blePairingUUID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) findAccessoryForAccessoryUID:*(a1 + 40) andKeyTag:@"BLEPairing"];
  if (v2 && *(a1 + 48) && *(*(a1 + 32) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = *(*(a1 + 32) + 48);
    v4 = [v2 connectionIDObj];
    v5 = [v3 objectForKey:v4];

    [*(*(a1 + 32) + 40) stateUpdate:v5 blePairingUUID:*(a1 + 48) pairType:*(a1 + 64) pairInfoList:*(a1 + 56)];
  }

  else
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v5 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 48);
      v9 = *(*(a1 + 32) + 40);
      v10 = 138412802;
      v11 = v2;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2335AD000, v5, OS_LOG_TYPE_INFO, "Invalid accessory(%@) or blePairingUUID(%@) or _blePairingShim(%@)", &v10, 0x20u);
    }
  }
}

- (void)blePairingDataUpdate:(id)update pairType:(int)type pairData:(id)data accessory:(id)accessory blePairingUUID:(id)d
{
  v44 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  dataCopy = data;
  accessoryCopy = accessory;
  dCopy = d;
  if (gLogObjects)
  {
    v16 = gNumLogObjects < 1;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v18 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  else
  {
    v18 = *gLogObjects;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138413826;
    v31 = updateCopy;
    v32 = 1024;
    typeCopy = type;
    v34 = 2112;
    v35 = dataCopy;
    v36 = 2112;
    v37 = accessoryCopy;
    v38 = 2112;
    v39 = dCopy;
    v40 = 2112;
    v41 = blePairingProvider;
    v42 = 2112;
    v43 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v18, OS_LOG_TYPE_INFO, "blePairingDataUpdate: %@ pairType: %d pairData: %@ accessory: %@ blePairingUUID: %@, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x44u);
  }

  blePairingQueue = self->_blePairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__ACCBLEPairingFeaturePlugin_blePairingDataUpdate_pairType_pairData_accessory_blePairingUUID___block_invoke;
  block[3] = &unk_2789E1070;
  block[4] = self;
  v26 = accessoryCopy;
  typeCopy2 = type;
  v27 = dCopy;
  v28 = dataCopy;
  v22 = dataCopy;
  v23 = dCopy;
  v24 = accessoryCopy;
  dispatch_async(blePairingQueue, block);
}

void __94__ACCBLEPairingFeaturePlugin_blePairingDataUpdate_pairType_pairData_accessory_blePairingUUID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) findAccessoryForAccessoryUID:*(a1 + 40) andKeyTag:@"BLEPairing"];
  if (v2 && *(a1 + 48) && *(*(a1 + 32) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = *(*(a1 + 32) + 48);
    v4 = [v2 connectionIDObj];
    v5 = [v3 objectForKey:v4];

    [*(*(a1 + 32) + 40) dataUpdate:v5 blePairingUUID:*(a1 + 48) pairType:*(a1 + 64) pairData:*(a1 + 56)];
  }

  else
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v5 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 48);
      v9 = *(*(a1 + 32) + 40);
      v10 = 138412802;
      v11 = v2;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2335AD000, v5, OS_LOG_TYPE_INFO, "Invalid accessory(%@) or blePairingUUID(%@) or _blePairingShim(%@)", &v10, 0x20u);
    }
  }
}

- (id)bleAccessoryForConnectionID:(unsigned int)d
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  blePairingQueue = self->_blePairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ACCBLEPairingFeaturePlugin_bleAccessoryForConnectionID___block_invoke;
  block[3] = &unk_2789E1098;
  block[4] = self;
  block[5] = &v8;
  dCopy = d;
  dispatch_sync(blePairingQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __58__ACCBLEPairingFeaturePlugin_bleAccessoryForConnectionID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 48)];
  v3 = [v2 objectForKey:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)deviceStartBLEUpdates:(id)updates pairType:(int)type btRadio:(BOOL)radio pairInfo:(BOOL)info
{
  infoCopy = info;
  radioCopy = radio;
  v35 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138413570;
    v24 = updatesCopy;
    v25 = 1024;
    typeCopy = type;
    v27 = 1024;
    v28 = radioCopy;
    v29 = 1024;
    v30 = infoCopy;
    v31 = 2112;
    v32 = blePairingProvider;
    v33 = 2112;
    v34 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v13, OS_LOG_TYPE_INFO, "blePairing deviceStartBLEUpdates: %@ pairType:%d btRadio:%d pairInfoUpdateOn:%d, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x32u);
  }

  blePairingQueue = self->_blePairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__ACCBLEPairingFeaturePlugin_deviceStartBLEUpdates_pairType_btRadio_pairInfo___block_invoke;
  block[3] = &unk_2789E10C0;
  block[4] = self;
  v19 = updatesCopy;
  typeCopy2 = type;
  v21 = radioCopy;
  v22 = infoCopy;
  v17 = updatesCopy;
  dispatch_async(blePairingQueue, block);
}

void __78__ACCBLEPairingFeaturePlugin_deviceStartBLEUpdates_pairType_btRadio_pairInfo___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v11 = [*(a1 + 40) iap2ShimAccessory];
    v3 = [v11 accessoryUID];
    v4 = [*(a1 + 40) blePairingUUID];
    [v2 startBLEUpdates:v3 blePairingUUID:v4 pairType:*(a1 + 48) bRadioUpdatesOn:*(a1 + 52) bPairInfoUpdatesOn:*(a1 + 53)];
  }

  else
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *gLogObjects;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) iap2ShimAccessory];
      v9 = [v8 accessoryUID];
      v10 = *(*(a1 + 32) + 24);
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_2335AD000, v7, OS_LOG_TYPE_DEFAULT, "blePairing deviceStartBLEUpdates: %@, skip processing, _blePairingProvider(%@) nil", buf, 0x16u);
    }
  }
}

- (void)deviceStateUpdate:(id)update btRadio:(unsigned __int8)radio pairStatus:(int)status pairModeOn:(BOOL)on forceUpdates:(BOOL)updates
{
  updatesCopy = updates;
  onCopy = on;
  radioCopy = radio;
  v39 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v15 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  else
  {
    v15 = *gLogObjects;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138413826;
    v26 = updateCopy;
    v27 = 1024;
    v28 = radioCopy;
    v29 = 1024;
    statusCopy = status;
    v31 = 1024;
    v32 = onCopy;
    v33 = 1024;
    v34 = updatesCopy;
    v35 = 2112;
    v36 = blePairingProvider;
    v37 = 2112;
    v38 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v15, OS_LOG_TYPE_INFO, "blePairing deviceStateUpdate: %@ btRadio:%d pairStatus:%d pairModeOn:%d forceUpdates:%d, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x38u);
  }

  blePairingQueue = self->_blePairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__ACCBLEPairingFeaturePlugin_deviceStateUpdate_btRadio_pairStatus_pairModeOn_forceUpdates___block_invoke;
  block[3] = &unk_2789E10C0;
  block[4] = self;
  v21 = updateCopy;
  v23 = radioCopy;
  statusCopy2 = status;
  v24 = onCopy;
  v19 = updateCopy;
  dispatch_async(blePairingQueue, block);
}

void __91__ACCBLEPairingFeaturePlugin_deviceStateUpdate_btRadio_pairStatus_pairModeOn_forceUpdates___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v11 = [*(a1 + 40) iap2ShimAccessory];
    v3 = [v11 accessoryUID];
    v4 = [*(a1 + 40) blePairingUUID];
    [v2 deviceStateUpdate:v3 blePairingUUID:v4 bRadioOn:*(a1 + 52) != 0 pairState:*(a1 + 48) bPairModeOn:*(a1 + 53)];
  }

  else
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *gLogObjects;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) iap2ShimAccessory];
      v9 = [v8 accessoryUID];
      v10 = *(*(a1 + 32) + 24);
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_2335AD000, v7, OS_LOG_TYPE_DEFAULT, "blePairing deviceStateUpdate: %@, skip processing, _blePairingProvider(%@) nil or doesn't support selector", buf, 0x16u);
    }
  }
}

- (void)deviceSend:(id)send pairType:(int)type pairingData:(id)data
{
  v32 = *MEMORY[0x277D85DE8];
  sendCopy = send;
  dataCopy = data;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 1;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *gLogObjects;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138413314;
    v23 = sendCopy;
    v24 = 1024;
    typeCopy = type;
    v26 = 2112;
    v27 = dataCopy;
    v28 = 2112;
    v29 = blePairingProvider;
    v30 = 2112;
    v31 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v12, OS_LOG_TYPE_INFO, "blePairing deviceSend: %@ pairType:%d pairingData:%@, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x30u);
  }

  blePairingQueue = self->_blePairingQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__ACCBLEPairingFeaturePlugin_deviceSend_pairType_pairingData___block_invoke;
  v18[3] = &unk_2789E10E8;
  v18[4] = self;
  v19 = sendCopy;
  typeCopy2 = type;
  v20 = dataCopy;
  v16 = dataCopy;
  v17 = sendCopy;
  dispatch_async(blePairingQueue, v18);
}

void __62__ACCBLEPairingFeaturePlugin_deviceSend_pairType_pairingData___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v11 = [*(a1 + 40) iap2ShimAccessory];
    v3 = [v11 accessoryUID];
    v4 = [*(a1 + 40) blePairingUUID];
    [v2 devicePairingData:v3 blePairingUUID:v4 pairType:*(a1 + 56) pairData:*(a1 + 48)];
  }

  else
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *gLogObjects;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) iap2ShimAccessory];
      v9 = [v8 accessoryUID];
      v10 = *(*(a1 + 32) + 24);
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_2335AD000, v7, OS_LOG_TYPE_DEFAULT, "blePairing deviceSend: %@, skip processing, _blePairingProvider(%@) nil or doesn't support selector", buf, 0x16u);
    }
  }
}

- (void)deviceUpdate:(id)update pairType:(int)type pairInfo:(id)info
{
  v32 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  infoCopy = info;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 1;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *gLogObjects;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138413314;
    v23 = updateCopy;
    v24 = 1024;
    typeCopy = type;
    v26 = 2112;
    v27 = infoCopy;
    v28 = 2112;
    v29 = blePairingProvider;
    v30 = 2112;
    v31 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v12, OS_LOG_TYPE_INFO, "blePairing deviceUpdate: %@ pairType:%d pairingInfo:%@, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x30u);
  }

  blePairingQueue = self->_blePairingQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__ACCBLEPairingFeaturePlugin_deviceUpdate_pairType_pairInfo___block_invoke;
  v18[3] = &unk_2789E10E8;
  v18[4] = self;
  v19 = updateCopy;
  typeCopy2 = type;
  v20 = infoCopy;
  v16 = infoCopy;
  v17 = updateCopy;
  dispatch_async(blePairingQueue, v18);
}

void __61__ACCBLEPairingFeaturePlugin_deviceUpdate_pairType_pairInfo___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v11 = [*(a1 + 40) iap2ShimAccessory];
    v3 = [v11 accessoryUID];
    v4 = [*(a1 + 40) blePairingUUID];
    [v2 deviceUpdatePairingInfo:v3 blePairingUUID:v4 pairType:*(a1 + 56) pairInfo:*(a1 + 48)];
  }

  else
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *gLogObjects;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) iap2ShimAccessory];
      v9 = [v8 accessoryUID];
      v10 = *(*(a1 + 32) + 24);
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_2335AD000, v7, OS_LOG_TYPE_DEFAULT, "blePairing deviceUpdate: %@, skip processing, _blePairingProvider(%@) nil or doesn't support selector", buf, 0x16u);
    }
  }
}

- (void)deviceStopBLEUpdates:(id)updates
{
  v20 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138412802;
    v15 = updatesCopy;
    v16 = 2112;
    v17 = blePairingProvider;
    v18 = 2112;
    v19 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v7, OS_LOG_TYPE_INFO, "blePairing deviceStopBLEUpdates: %@, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x20u);
  }

  blePairingQueue = self->_blePairingQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__ACCBLEPairingFeaturePlugin_deviceStopBLEUpdates___block_invoke;
  v12[3] = &unk_2789E1110;
  v12[4] = self;
  v13 = updatesCopy;
  v11 = updatesCopy;
  dispatch_async(blePairingQueue, v12);
}

void __51__ACCBLEPairingFeaturePlugin_deviceStopBLEUpdates___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v11 = [*(a1 + 40) iap2ShimAccessory];
    v3 = [v11 accessoryUID];
    v4 = [*(a1 + 40) blePairingUUID];
    [v2 stopBLEUpdates:v3 blePairingUUID:v4];
  }

  else
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *gLogObjects;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) iap2ShimAccessory];
      v9 = [v8 accessoryUID];
      v10 = *(*(a1 + 32) + 24);
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_2335AD000, v7, OS_LOG_TYPE_DEFAULT, "blePairing deviceStopBLEUpdates: %@, skip processing, _blePairingProvider(%@) nil or doesn't support selector", buf, 0x16u);
    }
  }
}

- (BOOL)_isSupportedType:(unsigned __int8)type supportedListData:(id)data
{
  typeCopy = type;
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy && [dataCopy length] && objc_msgSend(v6, "length"))
  {
    v7 = 0;
    do
    {
      v8 = *([v6 bytes] + v7);
      v9 = v8 == typeCopy;
      if (v8 == typeCopy)
      {
        break;
      }

      ++v7;
    }

    while ([v6 length] > v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __105__ACCBLEPairingFeaturePlugin_blePairing_accessoryAttached_blePairingUUID_accInfoDict_supportedPairTypes___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a1 connectionIDObj];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_2335AD000, a2, OS_LOG_TYPE_DEBUG, "accessoryAttached: accessory=%@ connectionIDObj=%@", &v5, 0x16u);
}

@end