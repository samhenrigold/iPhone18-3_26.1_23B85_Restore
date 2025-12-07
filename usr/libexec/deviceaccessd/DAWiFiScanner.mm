@interface DAWiFiScanner
- (DAWiFiScanner)init;
- (id)_coalesceResults:(id)results descriptors:(id)descriptors;
- (id)_defaultScanParameters;
- (id)_resultForSubscriber:(id)subscriber descriptors:(id)descriptors discoveryResult:(id)result;
- (id)deauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d;
- (id)reauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d;
- (id)uninstallPairedDeviceFor:(id)for withAppPairingID:(unint64_t)d;
- (id)updatePairedDeviceNameFor:(id)for withAppPairingID:(unint64_t)d toNewName:(id)name;
- (unint64_t)authorizeNewPairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client error:(id *)error;
- (void)_configurePublisherWithPairingClient:(int64_t)client;
- (void)_configureSubscriber;
- (void)_performScan;
- (void)_queueNextScan;
- (void)authorizePairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client completionHandler:(id)handler;
- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info;
- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info pairingKeyStoreID:(id)d deviceID:(unint64_t)iD;
- (void)dataSession:(id)session failedToStartWithError:(int64_t)error;
- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason;
- (void)dataSessionRequestStarted:(id)started;
- (void)deauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler;
- (void)pairSelectedWiFiAwareDevice:(id)device withBundleID:(id)d;
- (void)pairingPINAccepted:(id)accepted;
- (void)pairingRequestApprovalRequiredByPublisher:(id)publisher forSubscriber:(id)subscriber withPairingMethod:(int64_t)method pairingSetupApprovalCompletion:(id)completion;
- (void)pairingRequestIndicatedForPublisher:(id)publisher bySubscriber:(id)subscriber usingPINCode:(id)code;
- (void)pairingRequestStartedForDataSession:(id)session pinCodeInputCompletionHandler:(id)handler;
- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info pairingKeyStoreID:(id)d deviceID:(unint64_t)iD;
- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error;
- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason;
- (void)publisherStarted:(id)started;
- (void)reauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler;
- (void)removeAllPairedDevices:(id)devices;
- (void)removeAllPairedDevicesFor:(id)for completionHandler:(id)handler;
- (void)respondToWiFiAwarePairingRequest:(unint64_t)request accept:(BOOL)accept pairingType:(int64_t)type passkey:(id)passkey;
- (void)selectWiFiAwareDevice:(id)device withBundleID:(id)d;
- (void)startScanningWithDescriptors:(id)descriptors;
- (void)stopScanning;
- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error;
- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address;
- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result;
- (void)subscriber:(id)subscriber receivedMessage:(id)message fromPublishID:(unsigned __int8)d address:(id)address;
- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason;
- (void)subscriberStarted:(id)started;
- (void)uninstallPairedDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler;
- (void)updatePairedDeviceNameFor:(id)for withAppPairingID:(unint64_t)d newName:(id)name completionHandler:(id)handler;
@end

@implementation DAWiFiScanner

- (DAWiFiScanner)init
{
  v13.receiver = self;
  v13.super_class = DAWiFiScanner;
  v2 = [(DAWiFiScanner *)&v13 init];
  if (v2)
  {
    v3 = [[CWFInterface alloc] initWithServiceType:2];
    wifiInterface = v2->_wifiInterface;
    v2->_wifiInterface = v3;

    [(CWFInterface *)v2->_wifiInterface activate];
    v2->_scanning = 0;
    v5 = +[NSMutableSet set];
    reportedNetworks = v2->_reportedNetworks;
    v2->_reportedNetworks = v5;

    v7 = +[NSMutableSet set];
    discoveredWiFiAwareDevices = v2->_discoveredWiFiAwareDevices;
    v2->_discoveredWiFiAwareDevices = v7;

    v9 = objc_alloc_init(WiFiAwareDevicesStore);
    store = v2->_store;
    v2->_store = v9;

    [(WiFiAwareDevicesStore *)v2->_store activate];
    v11 = v2;
  }

  return v2;
}

- (void)startScanningWithDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v6 = DAWiFiScanDescriptor;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_1000349C0(descriptorsCopy);
  }

  if (self->_scanning)
  {
    if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      sub_100034B88(self);
    }
  }

  else
  {
    v7 = 1;
    self->_scanning = 1;
    objc_storeStrong(&self->_descriptors, descriptors);
    v8 = +[NSMutableSet set];
    SSIDs = self->_SSIDs;
    self->_SSIDs = v8;

    v10 = +[NSMutableSet set];
    prefixes = self->_prefixes;
    self->_prefixes = v10;

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v12 = self->_descriptors;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v13)
    {
      v14 = v13;
      v56 = descriptorsCopy;
      v15 = *v58;
      v7 = 1;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v58 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v57 + 1) + 8 * i);
          sSID = [v17 SSID];
          if (sSID)
          {
            v19 = sSID;
            sSID2 = [v17 SSID];
            v21 = [sSID2 length];

            if (v21)
            {
              v22 = self->_SSIDs;
              sSID3 = [v17 SSID];
              [(NSMutableSet *)v22 addObject:sSID3];
            }
          }

          prefix = [v17 prefix];
          if (prefix)
          {
            v25 = prefix;
            prefix2 = [v17 prefix];
            v27 = [prefix2 length];

            if (v27)
            {
              v28 = self->_prefixes;
              prefix3 = [v17 prefix];
              [(NSMutableSet *)v28 addObject:prefix3];
            }
          }

          serviceName = [v17 serviceName];

          if (serviceName)
          {
            v6 = DAWiFiScanDescriptor;
            if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
            {
              sub_100034A00(v17);
            }

            serviceName2 = [v17 serviceName];
            serviceName = self->_serviceName;
            self->_serviceName = serviceName2;

            configuration = [v17 configuration];
            wifiAwareServiceType = [configuration wifiAwareServiceType];

            if (wifiAwareServiceType == 20)
            {
              if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
              {
                sub_100034A70();
              }

              bundleID = [v17 bundleID];
              wifiAwarePairingBundleID = self->_wifiAwarePairingBundleID;
              self->_wifiAwarePairingBundleID = bundleID;

              configuration2 = [v17 configuration];
              displayName = [configuration2 displayName];

              v40 = MGCopyAnswerWithError();
              v41 = +[NSCharacterSet letterCharacterSet];
              invertedSet = [v41 invertedSet];
              v43 = [v40 componentsSeparatedByCharactersInSet:invertedSet];
              v44 = [v43 componentsJoinedByString:&stru_10005A2C8];

              if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_100060470, "[DAWiFiScanner startScanningWithDescriptors:]", 30, "[WiFi] Setting up publisher displayName='%@' vendorName='%@' modelName='%@' bundleID='%@'", displayName, @"Apple", v44, self->_wifiAwarePairingBundleID);
              }

              v45 = [[WiFiAwarePairedDeviceInfo alloc] initWithName:displayName vendorID:@"Apple" modelName:v44 attributes:&__NSDictionary0__struct];
              wifiAwarePairingInfo = self->_wifiAwarePairingInfo;
              self->_wifiAwarePairingInfo = v45;

              configuration3 = [v17 configuration];
              flags = [configuration3 flags];

              v31 = 1;
              if ((flags & 0x40) != 0)
              {
                v7 = 2;
              }

              else
              {
                v7 = 1;
              }

              wifiAwareServiceType = 20;
              descriptorsCopy = v56;
              v6 = DAWiFiScanDescriptor;
            }

            else
            {
              v7 = 1;
              v31 = 1;
              descriptorsCopy = v56;
            }

            goto LABEL_43;
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v57 objects:v61 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v31 = 0;
      descriptorsCopy = v56;
      v6 = DAWiFiScanDescriptor;
    }

    else
    {
      v31 = 0;
    }

    wifiAwareServiceType = 10;
LABEL_43:

    if ([(NSMutableSet *)self->_SSIDs count]|| ([(NSMutableSet *)self->_prefixes count]? (v49 = 1) : (v49 = v31), (v49 & 1) != 0))
    {
      if (v31)
      {
        cache = v6[28].cache;
        if (cache <= 30 && (cache != -1 || _LogCategory_Initialize()))
        {
          sub_100034B0C();
        }

        v51 = v6[28].cache;
        if (wifiAwareServiceType == 10)
        {
          if (v51 <= 30 && (v51 != -1 || _LogCategory_Initialize()))
          {
            sub_100034B40(self);
          }

          [(DAWiFiScanner *)self _configureSubscriber];
          [(DAWiFiScanner *)self _startSubscriber];
        }

        else
        {
          if (v51 <= 30 && (v51 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_100060470, "[DAWiFiScanner startScanningWithDescriptors:]", 30, "[WiFi] confguring publisher with service name = '%@' serviceType='%lu'", self->_serviceName, wifiAwareServiceType);
          }

          [(DAWiFiScanner *)self _configurePublisherWithPairingClient:v7];
          [(DAWiFiScanner *)self _startPublisherWithDescriptors:descriptorsCopy];
        }
      }

      else if ([(NSMutableSet *)self->_SSIDs count]|| [(NSMutableSet *)self->_prefixes count])
      {
        v52 = v6[28].cache;
        if (v52 <= 90 && (v52 != -1 || _LogCategory_Initialize()))
        {
          sub_100034AD8();
        }

        [(DAWiFiScanner *)self _performScan];
      }
    }

    else
    {
      v53 = v6[28].cache;
      if (v53 <= 90 && (v53 != -1 || _LogCategory_Initialize()))
      {
        sub_100034AA4();
      }

      resultsHandler = self->_resultsHandler;
      v55 = DAErrorF(350001, "Invalid scan descriptors");
      resultsHandler[2](resultsHandler, v55, 0);
    }
  }
}

- (void)_performScan
{
  if (self->_scanning)
  {
    selfCopy = self;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = sub_10001FA40;
    v10[4] = sub_10001FA50;
    v11 = 0;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = sub_10001FA40;
    v8[4] = sub_10001FA50;
    v9 = 0;
    _defaultScanParameters = [(DAWiFiScanner *)self _defaultScanParameters];
    allObjects = [(NSMutableSet *)selfCopy->_SSIDs allObjects];
    [_defaultScanParameters setSSIDList:allObjects];

    if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100060470, "[DAWiFiScanner _performScan]", 30, "[WiFi] scanning for SSIDs='%@' prefixes='%@'", selfCopy->_SSIDs, selfCopy->_prefixes);
    }

    wifiInterface = [(DAWiFiScanner *)selfCopy wifiInterface];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001FA58;
    v7[3] = &unk_100059808;
    v7[5] = v8;
    v7[6] = v10;
    v7[4] = selfCopy;
    [wifiInterface performScanWithParameters:_defaultScanParameters reply:v7];

    _Block_object_dispose(v8, 8);
    _Block_object_dispose(v10, 8);
  }

  else if (dword_100060470 <= 30)
  {
    if (dword_100060470 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100034BCC(self, a2, v2);
    }
  }
}

- (void)_queueNextScan
{
  v3 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FD44;
  block[3] = &unk_100058B58;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)stopScanning
{
  self->_scanning = 0;
  [(NSMutableSet *)self->_reportedNetworks removeAllObjects];
  discoveredWiFiAwareDevices = self->_discoveredWiFiAwareDevices;

  [(NSMutableSet *)discoveredWiFiAwareDevices removeAllObjects];
}

- (id)_defaultScanParameters
{
  v2 = objc_alloc_init(CWFScanParameters);
  [v2 setMergeScanResults:1];

  return v2;
}

- (id)_coalesceResults:(id)results descriptors:(id)descriptors
{
  resultsCopy = results;
  descriptorsCopy = descriptors;
  v24 = +[NSMutableDictionary dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = descriptorsCopy;
  v27 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v27)
  {
    v25 = *v36;
    do
    {
      v7 = 0;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v35 + 1) + 8 * v7);
        if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
        {
          sub_100034CC0(v8);
        }

        scanResultPredicate = [v8 scanResultPredicate];
        v10 = [resultsCopy filteredArrayUsingPredicate:scanResultPredicate];

        if (v10)
        {
          v30 = v7;
          if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_100060470, "[DAWiFiScanner _coalesceResults:descriptors:]", 30, "[WiFi] descriptor='%@' filtered results='%@'", v8, v10);
          }

          v29 = v8;
          v11 = +[NSMutableArray array];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v28 = v10;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v32;
            do
            {
              v16 = 0;
              do
              {
                if (*v32 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v31 + 1) + 8 * v16);
                v18 = objc_alloc_init(DAWiFiNetwork);
                networkName = [v17 networkName];
                [(DAWiFiNetwork *)v18 setSSID:networkName];

                -[DAWiFiNetwork setUnsecured:](v18, "setUnsecured:", [v17 isOpen]);
                if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                {
                  sub_100034D1C();
                }

                if (([(NSMutableSet *)self->_reportedNetworks containsObject:v18]& 1) != 0)
                {
                  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100034D5C(v18);
                  }
                }

                else
                {
                  [v11 addObject:v18];
                  [(NSMutableSet *)self->_reportedNetworks addObject:v18];
                }

                v16 = v16 + 1;
              }

              while (v14 != v16);
              v20 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
              v14 = v20;
            }

            while (v20);
          }

          [v24 setObject:v11 forKey:v29];
          v7 = v30;
          v10 = v28;
        }

        v7 = v7 + 1;
      }

      while (v7 != v27);
      v21 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      v27 = v21;
    }

    while (v21);
  }

  return v24;
}

- (void)selectWiFiAwareDevice:(id)device withBundleID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = self->_discoveredWiFiAwareDevices;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v9)
  {

    goto LABEL_37;
  }

  v10 = v9;
  selfCopy = self;
  v34 = dCopy;
  v11 = 0;
  v12 = *v36;
  do
  {
    v13 = 0;
    do
    {
      if (*v36 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v35 + 1) + 8 * v13);
      signature = [v14 signature];
      if (signature == [deviceCopy signature])
      {
        if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
        {
          sub_100034DD0();
        }

        v16 = [v14 copy];
LABEL_19:

        v11 = v16;
        goto LABEL_20;
      }

      wifiAwareDevicePairingID = [deviceCopy wifiAwareDevicePairingID];
      if (wifiAwareDevicePairingID)
      {
        v18 = wifiAwareDevicePairingID;
        pairedUUID = [v14 pairedUUID];

        if (pairedUUID)
        {
          pairedUUID2 = [v14 pairedUUID];
          uUIDString = [pairedUUID2 UUIDString];

          wifiAwareDevicePairingID2 = [deviceCopy wifiAwareDevicePairingID];
          uUIDString2 = [wifiAwareDevicePairingID2 UUIDString];

          if ([uUIDString isEqualToString:uUIDString2])
          {
            if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
            {
              sub_100034D9C();
            }

            v24 = [v14 copy];

            v11 = v24;
          }

          v16 = v11;

          v11 = uUIDString;
          goto LABEL_19;
        }
      }

LABEL_20:
      v13 = v13 + 1;
    }

    while (v10 != v13);
    v25 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    v10 = v25;
  }

  while (v25);

  dCopy = v34;
  if (v11)
  {
    v26 = selfCopy->_deviceOTANameToBroadcast;
    if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      sub_100034E04(v26);
    }

    if (([deviceCopy flags] & 0x400) != 0)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    v28 = [[WiFiAwareDataSession alloc] initWithDiscoveryResult:v11 serviceType:0 serviceSpecificInfo:0];
    wifiAwareDataSession = selfCopy->_wifiAwareDataSession;
    selfCopy->_wifiAwareDataSession = v28;

    [(WiFiAwareDataSession *)selfCopy->_wifiAwareDataSession setConnectionMode:2];
    v30 = [WiFiAwarePairingMetadata alloc];
    name = [deviceCopy name];
    v32 = [v30 initWithBundleID:v34 selfPairingName:v26 peerDeviceName:name storageClass:1 lifetime:v27 pairingClient:0.0];
    [(WiFiAwareDataSession *)selfCopy->_wifiAwareDataSession setPairingMetadata:v32];

    [(WiFiAwareDataSession *)selfCopy->_wifiAwareDataSession setPairingDelegate:selfCopy];
    [(WiFiAwareDataSession *)selfCopy->_wifiAwareDataSession setDelegate:selfCopy];
    if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      sub_100034E44();
    }

    goto LABEL_40;
  }

LABEL_37:
  if (dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100034E84();
  }

LABEL_40:
}

- (void)pairSelectedWiFiAwareDevice:(id)device withBundleID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100034EB8(self);
  }

  discoveryConfiguration = [deviceCopy discoveryConfiguration];
  displayName = [discoveryConfiguration displayName];

  wifiAwareVendorName = [deviceCopy wifiAwareVendorName];
  wifiAwareModelName = [deviceCopy wifiAwareModelName];
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060470, "[DAWiFiScanner pairSelectedWiFiAwareDevice:withBundleID:]", 30, "[WiFi] pairSelectedWiFiAwareDevice displayName='%@' vendorName='%@' modelName='%@' bundleID='%@'", displayName, wifiAwareVendorName, wifiAwareModelName, dCopy);
  }

  wifiAwarePairingDevice = self->_wifiAwarePairingDevice;
  self->_wifiAwarePairingDevice = deviceCopy;
  v12 = deviceCopy;

  v13 = [[WiFiAwarePairedDeviceInfo alloc] initWithName:displayName vendorID:wifiAwareVendorName modelName:wifiAwareModelName attributes:&__NSDictionary0__struct];
  wifiAwarePairingInfo = self->_wifiAwarePairingInfo;
  self->_wifiAwarePairingInfo = v13;

  discoveryConfiguration2 = [v12 discoveryConfiguration];
  bundleID = [discoveryConfiguration2 bundleID];
  wifiAwarePairingBundleID = self->_wifiAwarePairingBundleID;
  self->_wifiAwarePairingBundleID = bundleID;

  [(WiFiAwareDataSession *)self->_wifiAwareDataSession start];
}

- (void)respondToWiFiAwarePairingRequest:(unint64_t)request accept:(BOOL)accept pairingType:(int64_t)type passkey:(id)passkey
{
  passkeyCopy = passkey;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100034EFC(type);
    if (accept)
    {
LABEL_5:
      if (type == 30)
      {
        if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
        {
          sub_100034F3C(self);
        }

        (*(self->_pinCodeInputHandler + 2))();
      }

      goto LABEL_13;
    }
  }

  else if (accept)
  {
    goto LABEL_5;
  }

  wifiAwareDevicePairedHandler = self->_wifiAwareDevicePairedHandler;
  if (wifiAwareDevicePairedHandler)
  {
    v10 = DAErrorF(350017, "User did not accept and canceled pairing");
    wifiAwareDevicePairedHandler[2](wifiAwareDevicePairedHandler, v10, -1, 0);
  }

LABEL_13:
}

- (void)pairingPINAccepted:(id)accepted
{
  acceptedCopy = accepted;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100034F98(self);
  }

  v4 = [WiFiAwarePairingInfo alloc];
  name = [acceptedCopy name];
  v6 = [v4 initWithPeerDeviceName:name];

  (*(self->_approvePINHandler + 2))();
}

- (id)_resultForSubscriber:(id)subscriber descriptors:(id)descriptors discoveryResult:(id)result
{
  subscriberCopy = subscriber;
  descriptorsCopy = descriptors;
  resultCopy = result;
  v10 = +[NSMutableDictionary dictionary];
  v51 = +[NSMutableArray array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = descriptorsCopy;
  v50 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v50)
  {
    v11 = DAWiFiScanDescriptor;
    v49 = *v53;
    v41 = subscriberCopy;
    v45 = v10;
    v46 = resultCopy;
    do
    {
      v12 = 0;
      do
      {
        if (*v53 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v52 + 1) + 8 * v12);
        cache = v11[28].cache;
        if (cache <= 30 && (cache != -1 || _LogCategory_Initialize()))
        {
          sub_100034FF4(subscriberCopy, v13);
        }

        configuration = [subscriberCopy configuration];
        serviceName = [configuration serviceName];
        serviceName2 = [v13 serviceName];
        v18 = [serviceName isEqualToString:serviceName2];

        if (v18)
        {
          v19 = v11[28].cache;
          if (v19 <= 30 && (v19 != -1 || _LogCategory_Initialize()))
          {
            sub_100035068(subscriberCopy, v13);
          }

          v20 = objc_alloc_init(DAWiFiNetwork);
          configuration2 = [subscriberCopy configuration];
          serviceName3 = [configuration2 serviceName];
          [(DAWiFiNetwork *)v20 setServiceName:serviceName3];

          -[DAWiFiNetwork setSignature:](v20, "setSignature:", [resultCopy signature]);
          pairedUUID = [resultCopy pairedUUID];
          [(DAWiFiNetwork *)v20 setWifiAwarePairedID:pairedUUID];

          serviceSpecificInfo = [resultCopy serviceSpecificInfo];
          txtRecordData = [serviceSpecificInfo txtRecordData];

          if (txtRecordData)
          {
            v27 = CUTXTDictionaryCreateWithTXTData(txtRecordData, v26, 0);
            v28 = [v27 objectForKeyedSubscript:@"vendorName"];
            v29 = [v27 objectForKeyedSubscript:@"modelName"];
            v30 = [v27 objectForKeyedSubscript:@"pairingName"];
            v31 = v30;
            if (v28 && v29)
            {
              v44 = v30;
              configuration3 = [v13 configuration];
              flags = [configuration3 flags];

              if (![v28 isEqualToString:@"Apple Inc."] || self->_allowAppleToAppleWiFiAware || (flags & 0x40) != 0)
              {
                wifiAwareVendorNameMatch = [v13 wifiAwareVendorNameMatch];
                wifiAwareModelNameMatch = [v13 wifiAwareModelNameMatch];
                string = [wifiAwareVendorNameMatch string];
                v43 = wifiAwareVendorNameMatch;
                v42 = [string compare:v28 options:{objc_msgSend(wifiAwareVendorNameMatch, "compareOptions")}];

                string2 = [wifiAwareModelNameMatch string];
                v38 = [string2 compare:v29 options:{objc_msgSend(wifiAwareModelNameMatch, "compareOptions")}];

                if (v42 | v38)
                {
                  subscriberCopy = v41;
                  v31 = v44;
                  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                  {
                    sub_10003511C(v13);
                  }
                }

                else
                {
                  v31 = v44;
                  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100035174(v20, v44);
                  }

                  [(DAWiFiNetwork *)v20 setWifiAwareOTAName:v44];
                  [(DAWiFiNetwork *)v20 setWifiAwareVendorName:v28];
                  [(DAWiFiNetwork *)v20 setWifiAwareModelName:v29];
                  subscriberCopy = v41;
                }
              }

              else
              {
                v31 = v44;
                if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                {
                  sub_1000350DC(v44);
                }
              }
            }

            v10 = v45;
          }

          resultCopy = v46;
          if (([(NSMutableSet *)self->_discoveredWiFiAwareDevices containsObject:v46]& 1) == 0)
          {
            if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
            {
              sub_1000351D0(v46);
            }

            [v51 addObject:v20];
            [(NSMutableSet *)self->_discoveredWiFiAwareDevices addObject:v46];
          }

          v11 = DAWiFiScanDescriptor;
        }

        [v10 setObject:v51 forKey:v13];
        v12 = v12 + 1;
      }

      while (v50 != v12);
      v39 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      v50 = v39;
    }

    while (v39);
  }

  return v10;
}

- (void)_configureSubscriber
{
  v5 = [[WiFiAwareSubscribeConfiguration alloc] initWithServiceName:self->_serviceName];
  [v5 setAuthenticationType:0];
  [v5 setDiscoveryMode:3];
  v3 = [[WiFiAwareSubscriber alloc] initWithConfiguration:v5];
  subscriber = self->_subscriber;
  self->_subscriber = v3;

  [(WiFiAwareSubscriber *)self->_subscriber setDelegate:self];
  if (!self->_subscriber && dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035210();
  }
}

- (void)_configurePublisherWithPairingClient:(int64_t)client
{
  v14 = [[NSNumber alloc] initWithInteger:2];
  v5 = objc_alloc_init(NSMutableArray);
  [v5 addObject:v14];
  v6 = [[WiFiAwarePairingConfiguration alloc] initWithSupportedPairSetupMethods:v5 pairingCachingEnabled:1];
  [v6 setPairingSetupMode:1];
  v7 = [[WiFiAwarePublishDatapathSecurityConfiguration alloc] initWithPairingConfiguration:v6 usingPairingDelegate:self];
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035250(v6);
  }

  v8 = [[WiFiAwarePublishDatapathConfiguration alloc] initWithServiceType:0 securityConfiguration:v7 connectionMode:2];
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035290(v7);
  }

  v9 = [[WiFiAwarePublishConfiguration alloc] initWithServiceName:self->_serviceName];
  v10 = self->_deviceOTANameToBroadcast;
  v11 = [[WiFiAwarePairingMetadata alloc] initWithBundleID:self->_wifiAwarePairingBundleID selfPairingName:v10 peerDeviceName:0 storageClass:1 lifetime:client pairingClient:0.0];
  [v9 setPairingMetadata:v11];

  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_1000352D0(self);
  }

  [v9 setDatapathConfiguration:v8];
  [v9 setAuthenticationType:0];
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035330(v9);
  }

  v12 = [[WiFiAwarePublisher alloc] initWithConfiguration:v9];
  publisher = self->_publisher;
  self->_publisher = v12;

  [(WiFiAwarePublisher *)self->_publisher setDelegate:self];
  if (!self->_publisher && dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035370();
  }
}

- (void)authorizePairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client completionHandler:(id)handler
{
  forCopy = for;
  dCopy = d;
  handlerCopy = handler;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060470, "[DAWiFiScanner authorizePairedDeviceFor:pairingKeyStoreID:storageClass:lifetime:client:completionHandler:]", 30, "[WiFi] authorizing WiFi aware device with  devicePairingID='%@' and bundleID = '%@'", dCopy, forCopy);
  }

  [(WiFiAwareDevicesStore *)self->_store authorizeNewPairedDeviceFor:forCopy pairingKeyStoreID:dCopy storageClass:class lifetime:client client:handlerCopy completionHandler:lifetime];
}

- (unint64_t)authorizeNewPairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client error:(id *)error
{
  forCopy = for;
  dCopy = d;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060470, "[DAWiFiScanner authorizeNewPairedDeviceFor:pairingKeyStoreID:storageClass:lifetime:client:error:]", 30, "[WiFi] authorizing WiFi aware device with  devicePairingID='%@' and bundleID = '%@'", dCopy, forCopy);
  }

  v16 = [(WiFiAwareDevicesStore *)self->_store authorizeNewPairedDeviceFor:forCopy pairingKeyStoreID:dCopy storageClass:class lifetime:client client:error error:lifetime];

  return v16;
}

- (void)reauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060470, "[DAWiFiScanner reauthorizePairedDeviceFor:withAppPairingID:completionHandler:]", 30, "[WiFi] re-authorizing WiFi aware device with pairing ID='%lld' and bundleID = '%@'", d, forCopy);
  }

  [(WiFiAwareDevicesStore *)self->_store reauthorizePairedDeviceFor:forCopy withDeviceID:d completionHandler:handlerCopy];
}

- (id)reauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d
{
  forCopy = for;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060470, "[DAWiFiScanner reauthorizePairedDeviceFor:withAppPairingID:]", 30, "[WiFi] re-authorizing WiFi aware device with pairing ID='%lld' and bundleID = '%@'", d, forCopy);
  }

  v7 = [(WiFiAwareDevicesStore *)self->_store reauthorizePairedDeviceFor:forCopy withDeviceID:d];

  return v7;
}

- (void)deauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060470, "[DAWiFiScanner deauthorizePairedDeviceFor:withAppPairingID:completionHandler:]", 30, "[WiFi] Deauthorizing WiFi aware device with pairing ID='%lld' and bundleID = '%@'", d, forCopy);
  }

  [(WiFiAwareDevicesStore *)self->_store deauthorizePairedDeviceFor:forCopy withDeviceID:d remove:0 completionHandler:handlerCopy];
}

- (id)deauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d
{
  forCopy = for;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060470, "[DAWiFiScanner deauthorizePairedDeviceFor:withAppPairingID:]", 30, "[WiFi] Deauthorizing WiFi aware device with pairing ID='%lld' and bundleID = '%@'", d, forCopy);
  }

  v7 = [(WiFiAwareDevicesStore *)self->_store deauthorizePairedDeviceFor:forCopy withDeviceID:d remove:0];

  return v7;
}

- (void)uninstallPairedDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060470, "[DAWiFiScanner uninstallPairedDeviceFor:withAppPairingID:completionHandler:]", 30, "[WiFi] Uninstalling WiFi aware device for bundleID='%@' and pairingID = '%lld'", forCopy, d);
  }

  [(WiFiAwareDevicesStore *)self->_store deauthorizePairedDeviceFor:forCopy withDeviceID:d remove:1 completionHandler:handlerCopy];
}

- (id)uninstallPairedDeviceFor:(id)for withAppPairingID:(unint64_t)d
{
  forCopy = for;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060470, "[DAWiFiScanner uninstallPairedDeviceFor:withAppPairingID:]", 30, "[WiFi] Uninstalling WiFi aware device for bundleID='%@' and pairingID = '%lld'", forCopy, d);
  }

  v7 = [(WiFiAwareDevicesStore *)self->_store deauthorizePairedDeviceFor:forCopy withDeviceID:d remove:1];

  return v7;
}

- (void)removeAllPairedDevicesFor:(id)for completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_1000353B0(forCopy);
  }

  [(WiFiAwareDevicesStore *)self->_store removeAllPairedDevicesFor:forCopy completionHandler:handlerCopy];
}

- (void)removeAllPairedDevices:(id)devices
{
  devicesCopy = devices;
  store = self->_store;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021BF0;
  v7[3] = &unk_100059830;
  v8 = devicesCopy;
  v6 = devicesCopy;
  [(WiFiAwareDevicesStore *)store removeAllPairedDevices:v7];
}

- (void)updatePairedDeviceNameFor:(id)for withAppPairingID:(unint64_t)d newName:(id)name completionHandler:(id)handler
{
  forCopy = for;
  nameCopy = name;
  handlerCopy = handler;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060470, "[DAWiFiScanner updatePairedDeviceNameFor:withAppPairingID:newName:completionHandler:]", 30, "[WiFi] updating device name with newName='%@' bundleID='%@' and pairingID='%lld'", nameCopy, forCopy, d);
  }

  [(WiFiAwareDevicesStore *)self->_store updatePairedDeviceNameFor:forCopy withDeviceID:d toNewName:nameCopy completionHandler:handlerCopy];
}

- (id)updatePairedDeviceNameFor:(id)for withAppPairingID:(unint64_t)d toNewName:(id)name
{
  forCopy = for;
  nameCopy = name;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060470, "[DAWiFiScanner updatePairedDeviceNameFor:withAppPairingID:toNewName:]", 30, "[WiFi] updating device name with newName='%@' bundleID='%@' and pairingID='%lld'", nameCopy, forCopy, d);
  }

  v10 = [(WiFiAwareDevicesStore *)self->_store updatePairedDeviceNameFor:forCopy withDeviceID:d toNewName:nameCopy];

  return v10;
}

- (void)publisherStarted:(id)started
{
  startedCopy = started;
  v4 = startedCopy;
  if (dword_100060470 <= 30)
  {
    v5 = startedCopy;
    if (dword_100060470 != -1 || (startedCopy = _LogCategory_Initialize(), v4 = v5, startedCopy))
    {
      startedCopy = sub_1000353F0(v4);
      v4 = v5;
    }
  }

  _objc_release_x1(startedCopy, v4);
}

- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error
{
  publisherCopy = publisher;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035430(error);
  }

  wifiAwareDevicePairedHandler = self->_wifiAwareDevicePairedHandler;
  if (wifiAwareDevicePairedHandler)
  {
    v7 = [NSError errorWithDomain:WiFiP2PErrorDomain code:error userInfo:0];
    (*(wifiAwareDevicePairedHandler + 2))(wifiAwareDevicePairedHandler, v7, 0, 0);
  }

  [publisherCopy stop];
}

- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason
{
  publisherCopy = publisher;
  v6 = publisherCopy;
  if (dword_100060470 <= 30)
  {
    v7 = publisherCopy;
    if (dword_100060470 != -1 || (publisherCopy = _LogCategory_Initialize(), v6 = v7, publisherCopy))
    {
      publisherCopy = sub_100035470(reason);
      v6 = v7;
    }
  }

  _objc_release_x1(publisherCopy, v6);
}

- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info pairingKeyStoreID:(id)d deviceID:(unint64_t)iD
{
  publisherCopy = publisher;
  handleCopy = handle;
  infoCopy = info;
  dCopy = d;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_1000354B0(self, publisherCopy);
  }

  selfCopy = self;
  configuration = [(WiFiAwarePublisher *)self->_publisher configuration];
  serviceName = [configuration serviceName];
  configuration2 = [publisherCopy configuration];
  serviceName2 = [configuration2 serviceName];
  v20 = [serviceName isEqualToString:serviceName2];

  if (v20)
  {
    v21 = dCopy;
    v24 = v21;
    if (v21)
    {
      v25 = 0;
      v26 = selfCopy;
    }

    else
    {
      v26 = selfCopy;
      if (dword_100060470 <= 90)
      {
        if (dword_100060470 != -1 || (v21 = _LogCategory_Initialize(), v21))
        {
          sub_1000354F8(v21, v22, v23);
        }
      }

      v25 = DAErrorF(350018, "No keyStoreID");
    }

    if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100060470, "[DAWiFiScanner publisher:dataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:pairingKeyStoreID:deviceID:]", 30, "[WiFi] dataConfirmedForHandle Added paired device with deviceID='%lld' pairingUUID='%@'", iD, v24);
    }

    wifiAwareDevicePairedHandler = v26->_wifiAwareDevicePairedHandler;
    if (wifiAwareDevicePairedHandler)
    {
      wifiAwareDevicePairedHandler[2](wifiAwareDevicePairedHandler, v25, iD, v24);
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v28 = v26->_descriptors;
      v29 = [(NSArray *)v28 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v29)
      {
        v30 = v29;
        v44 = v25;
        v45 = v24;
        v46 = dCopy;
        v47 = handleCopy;
        v31 = *v51;
LABEL_19:
        v32 = 0;
        while (1)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v50 + 1) + 8 * v32);
          serviceName3 = [v33 serviceName];
          configuration3 = [publisherCopy configuration];
          serviceName4 = [configuration3 serviceName];
          v37 = [serviceName3 isEqualToString:serviceName4];

          if (v37)
          {
            break;
          }

          if (v30 == ++v32)
          {
            v30 = [(NSArray *)v28 countByEnumeratingWithState:&v50 objects:v55 count:16];
            if (v30)
            {
              goto LABEL_19;
            }

            dCopy = v46;
            handleCopy = v47;
            v25 = v44;
            v24 = v45;
            goto LABEL_28;
          }
        }

        v38 = v33;

        dCopy = v46;
        handleCopy = v47;
        v25 = v44;
        v24 = v45;
        if (!v38)
        {
          goto LABEL_29;
        }

        v39 = objc_alloc_init(DAWiFiNetwork);
        [(DAWiFiNetwork *)v39 setWifiAwarePairedID:v45];
        configuration4 = [publisherCopy configuration];
        serviceName5 = [configuration4 serviceName];
        [(DAWiFiNetwork *)v39 setServiceName:serviceName5];

        v42 = +[NSMutableDictionary dictionary];
        v54 = v39;
        v43 = [NSArray arrayWithObjects:&v54 count:1];
        [v42 setObject:v43 forKey:v38];

        (*(selfCopy->_resultsHandler + 2))();
        v28 = v38;
      }

LABEL_28:
    }

LABEL_29:
    [publisherCopy stop];
  }
}

- (void)subscriberStarted:(id)started
{
  startedCopy = started;
  v4 = startedCopy;
  if (dword_100060470 <= 30)
  {
    v5 = startedCopy;
    if (dword_100060470 != -1 || (startedCopy = _LogCategory_Initialize(), v4 = v5, startedCopy))
    {
      startedCopy = sub_100035514(v4);
      v4 = v5;
    }
  }

  _objc_release_x1(startedCopy, v4);
}

- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error
{
  subscriberCopy = subscriber;
  if (dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035554(error);
  }

  wifiAwareDevicePairedHandler = self->_wifiAwareDevicePairedHandler;
  if (wifiAwareDevicePairedHandler)
  {
    v7 = [NSError errorWithDomain:WiFiP2PErrorDomain code:error userInfo:0];
    (*(wifiAwareDevicePairedHandler + 2))(wifiAwareDevicePairedHandler, v7, 0, 0);
  }

  [subscriberCopy stop];
}

- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address
{
  subscriberCopy = subscriber;
  addressCopy = address;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035594(d);
  }
}

- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason
{
  subscriberCopy = subscriber;
  v6 = subscriberCopy;
  if (dword_100060470 <= 90)
  {
    v7 = subscriberCopy;
    if (dword_100060470 != -1 || (subscriberCopy = _LogCategory_Initialize(), v6 = v7, subscriberCopy))
    {
      subscriberCopy = sub_1000355D8(reason);
      v6 = v7;
    }
  }

  _objc_release_x1(subscriberCopy, v6);
}

- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result
{
  subscriberCopy = subscriber;
  resultCopy = result;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035618(resultCopy);
  }

  v7 = [(DAWiFiScanner *)self _resultForSubscriber:subscriberCopy descriptors:self->_descriptors discoveryResult:resultCopy];
  (*(self->_resultsHandler + 2))();
}

- (void)subscriber:(id)subscriber receivedMessage:(id)message fromPublishID:(unsigned __int8)d address:(id)address
{
  subscriberCopy = subscriber;
  messageCopy = message;
  addressCopy = address;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035658(messageCopy);
  }
}

- (void)pairingRequestIndicatedForPublisher:(id)publisher bySubscriber:(id)subscriber usingPINCode:(id)code
{
  publisherCopy = publisher;
  subscriberCopy = subscriber;
  codeCopy = code;
  v12 = codeCopy;
  if (dword_100060470 <= 30)
  {
    if (dword_100060470 != -1 || (codeCopy = _LogCategory_Initialize(), codeCopy))
    {
      sub_100035698(codeCopy, v10, v11);
    }
  }

  v13 = [v12 copy];
  storedPin = self->_storedPin;
  self->_storedPin = v13;

  (*(self->_pinCreatedOnPublisher + 2))();
}

- (void)pairingRequestApprovalRequiredByPublisher:(id)publisher forSubscriber:(id)subscriber withPairingMethod:(int64_t)method pairingSetupApprovalCompletion:(id)completion
{
  publisherCopy = publisher;
  subscriberCopy = subscriber;
  completionCopy = completion;
  v13 = completionCopy;
  v14 = DAWiFiScanDescriptor;
  if (dword_100060470 <= 30)
  {
    if (dword_100060470 != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      sub_1000356B4(completionCopy, v11, v12);
    }
  }

  v43 = v13;
  v15 = objc_retainBlock(v13);
  approvePINHandler = self->_approvePINHandler;
  self->_approvePINHandler = v15;

  v17 = +[NSMutableDictionary dictionary];
  v54 = +[NSMutableArray array];
  if (dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_1000356D0(self);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = self->_descriptors;
  v53 = [(NSArray *)obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v53)
  {
    v52 = *v56;
    v45 = subscriberCopy;
    selfCopy = self;
    v50 = v17;
    do
    {
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v56 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v55 + 1) + 8 * i);
        configuration = [(WiFiAwarePublisher *)self->_publisher configuration];
        serviceName = [configuration serviceName];
        serviceName2 = [v19 serviceName];
        v23 = [serviceName isEqualToString:serviceName2];

        if (v23)
        {
          cache = v14[28].cache;
          if (cache <= 30 && (cache != -1 || _LogCategory_Initialize()))
          {
            sub_100035714(&self->_publisher, v19);
          }

          v25 = objc_alloc_init(DAWiFiNetwork);
          [(DAWiFiNetwork *)v25 setServiceName:self->_serviceName];
          txtRecordData = [subscriberCopy txtRecordData];
          v28 = txtRecordData;
          if (txtRecordData)
          {
            v29 = CUTXTDictionaryCreateWithTXTData(txtRecordData, v27, 0);
            v30 = [v29 objectForKeyedSubscript:@"vendorName"];
            v31 = [v29 objectForKeyedSubscript:@"modelName"];
            v32 = [v29 objectForKeyedSubscript:@"pairingName"];
            v33 = v32;
            if (v30 && v31)
            {
              v49 = v32;
              configuration2 = [v19 configuration];
              flags = [configuration2 flags];

              if (![v30 isEqualToString:@"Apple Inc."] || selfCopy->_allowAppleToAppleWiFiAware || (flags & 0x40) != 0)
              {
                wifiAwareVendorNameMatch = [v19 wifiAwareVendorNameMatch];
                wifiAwareModelNameMatch = [v19 wifiAwareModelNameMatch];
                string = [wifiAwareVendorNameMatch string];
                v46 = wifiAwareVendorNameMatch;
                v40 = [string compare:v30 options:{objc_msgSend(wifiAwareVendorNameMatch, "compareOptions")}];

                string2 = [wifiAwareModelNameMatch string];
                v47 = v31;
                v42 = [string2 compare:v31 options:{objc_msgSend(wifiAwareModelNameMatch, "compareOptions")}];

                if (v40 | v42)
                {
                  subscriberCopy = v45;
                  v31 = v47;
                  self = selfCopy;
                  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                  {
                    sub_1000357CC(v19);
                  }
                }

                else
                {
                  self = selfCopy;
                  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&dword_100060470, "[DAWiFiScanner pairingRequestApprovalRequiredByPublisher:forSubscriber:withPairingMethod:pairingSetupApprovalCompletion:]", 30, "[WiFi] Publisher matchedPairingName='%@' matchedServiceName='%@'", v49, selfCopy->_serviceName, v43, publisherCopy);
                  }

                  [(DAWiFiNetwork *)v25 setWifiAwareOTAName:v49];
                  [(DAWiFiNetwork *)v25 setWifiAwareVendorName:v30];
                  v31 = v47;
                  [(DAWiFiNetwork *)v25 setWifiAwareModelName:v47];
                  [v54 addObject:v25];
                  subscriberCopy = v45;
                }

                v14 = DAWiFiScanDescriptor;
LABEL_38:
                v33 = v49;
              }

              else
              {
                v14 = DAWiFiScanDescriptor;
                self = selfCopy;
                v33 = v49;
                if (dword_100060470 <= 30)
                {
                  if (dword_100060470 != -1 || (v36 = _LogCategory_Initialize(), v33 = v49, v36))
                  {
                    sub_10003578C(v33);
                    goto LABEL_38;
                  }
                }
              }
            }
          }

          v17 = v50;
        }

        [v17 setObject:v54 forKey:v19];
      }

      v53 = [(NSArray *)obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v53);
  }

  (*(self->_resultsHandler + 2))();
}

- (void)pairingRequestStartedForDataSession:(id)session pinCodeInputCompletionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035824(sessionCopy);
  }

  v7 = objc_retainBlock(handlerCopy);
  pinCodeInputHandler = self->_pinCodeInputHandler;
  self->_pinCodeInputHandler = v7;

  (*(self->_showPinInputHandler + 2))();
}

- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info
{
  sessionCopy = session;
  addressCopy = address;
  infoCopy = info;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060470, "[DAWiFiScanner dataSession:confirmedForPeerDataAddress:serviceSpecificInfo:]", 30, "[WiFi] Data session ='%@' confirmed = '%@'", sessionCopy, addressCopy);
  }
}

- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info pairingKeyStoreID:(id)d deviceID:(unint64_t)iD
{
  sessionCopy = session;
  addressCopy = address;
  infoCopy = info;
  dCopy = d;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060470, "[DAWiFiScanner dataSession:confirmedForPeerDataAddress:serviceSpecificInfo:pairingKeyStoreID:deviceID:]", 30, "[WiFi] Data session ='%@' confirmed = '%@' for device='%@' and pairingInfo='%@'", sessionCopy, addressCopy, self->_wifiAwarePairingDevice, self->_wifiAwarePairingInfo);
  }

  v15 = dCopy;
  v18 = v15;
  if (v15)
  {
    v19 = 0;
  }

  else
  {
    if (dword_100060470 <= 90)
    {
      if (dword_100060470 != -1 || (v15 = _LogCategory_Initialize(), v15))
      {
        sub_100035864(v15, v16, v17);
      }
    }

    v19 = DAErrorF(350018, "No keyStoreID");
  }

  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060470, "[DAWiFiScanner dataSession:confirmedForPeerDataAddress:serviceSpecificInfo:pairingKeyStoreID:deviceID:]", 30, "[WiFi] confirmedForPeerDataAddress pairingUUID='%@', deviceID='%lld'", v18, iD);
  }

  wifiAwareDevicePairedHandler = self->_wifiAwareDevicePairedHandler;
  if (wifiAwareDevicePairedHandler)
  {
    wifiAwareDevicePairedHandler[2](wifiAwareDevicePairedHandler, v19, iD, v18);
  }

  [sessionCopy stop];
  [(WiFiAwareSubscriber *)self->_subscriber stop];
}

- (void)dataSession:(id)session failedToStartWithError:(int64_t)error
{
  sessionCopy = session;
  v7 = sessionCopy;
  wifiAwareDevicePairedHandler = self->_wifiAwareDevicePairedHandler;
  v10 = sessionCopy;
  if (wifiAwareDevicePairedHandler)
  {
    v9 = [NSError errorWithDomain:WiFiP2PErrorDomain code:error userInfo:0];
    (*(wifiAwareDevicePairedHandler + 2))(wifiAwareDevicePairedHandler, v9, 0, 0);

    v7 = v10;
  }

  if (dword_100060470 <= 90)
  {
    if (dword_100060470 != -1 || (sessionCopy = _LogCategory_Initialize(), v7 = v10, sessionCopy))
    {
      sessionCopy = LogPrintF(&dword_100060470, "[DAWiFiScanner dataSession:failedToStartWithError:]", 90, "[WiFi] Data session FAILED to start session = '%@' with error = '%ld'", v7, error);
      v7 = v10;
    }
  }

  _objc_release_x1(sessionCopy, v7);
}

- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason
{
  sessionCopy = session;
  v6 = sessionCopy;
  if (dword_100060470 <= 90)
  {
    v7 = sessionCopy;
    if (dword_100060470 != -1 || (sessionCopy = _LogCategory_Initialize(), v6 = v7, sessionCopy))
    {
      sessionCopy = LogPrintF(&dword_100060470, "[DAWiFiScanner dataSession:terminatedWithReason:]", 90, "[WiFi] Data session TERMINATED session = '%@' with reason = '%ld'", v6, reason);
      v6 = v7;
    }
  }

  _objc_release_x1(sessionCopy, v6);
}

- (void)dataSessionRequestStarted:(id)started
{
  startedCopy = started;
  v4 = startedCopy;
  if (dword_100060470 <= 30)
  {
    v5 = startedCopy;
    if (dword_100060470 != -1 || (startedCopy = _LogCategory_Initialize(), v4 = v5, startedCopy))
    {
      startedCopy = sub_100035880(v4);
      v4 = v5;
    }
  }

  _objc_release_x1(startedCopy, v4);
}

@end