@interface BTCloudServicesXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (void)clientReportHMDeviceCloudRecordInfosUpdated:(id)updated;
- (void)cloudServicesClientActivate:(id)activate completion:(id)completion;
- (void)createDeviceRecord:(id)record completion:(id)completion;
- (void)createDeviceSupportInformationRecord:(id)record completion:(id)completion;
- (void)createMagicSettingsRecord:(id)record completion:(id)completion;
- (void)deleteDeviceRecord:(id)record completion:(id)completion;
- (void)deleteDeviceSupportInformationRecord:(id)record completion:(id)completion;
- (void)deleteMagicSettingsRecord:(id)record completion:(id)completion;
- (void)deleteSoundProfileRecordWithCompletion:(id)completion;
- (void)fetchAAProxCardsInfoForDeviceWithAddress:(id)address completion:(id)completion;
- (void)fetchAllBTCloudDeviceSupportInformationWithCompletion:(id)completion;
- (void)fetchAllMagicSettingsRecordsWithCompletion:(id)completion;
- (void)fetchBTCloudDeviceSupportInformation:(id)information completion:(id)completion;
- (void)fetchCloudAccountInfoUpdatedWithCompletion:(id)completion;
- (void)fetchCloudPairingIdentifierForPeripheral:(id)peripheral completion:(id)completion;
- (void)fetchDeviceRecord:(id)record completion:(id)completion;
- (void)fetchDeviceRecordsWithCompletion:(id)completion;
- (void)fetchHMDeviceCloudRecordInfoWithAddress:(id)address completion:(id)completion;
- (void)fetchMagicSettingsRecord:(id)record completion:(id)completion;
- (void)fetchSoundProfileRecordWithCompletion:(id)completion;
- (void)finishSoundProfileRecordSessionHandle:(id)handle completion:(id)completion;
- (void)forceCloudPairingForIdentifiers:(id)identifiers completion:(id)completion;
- (void)modifyAAProxCardsInfo:(id)info completion:(id)completion;
- (void)modifyDeviceRecord:(id)record completion:(id)completion;
- (void)modifyDeviceSupportInformationRecord:(id)record completion:(id)completion;
- (void)modifyHMDeviceCloudRecordInfo:(id)info completion:(id)completion;
- (void)modifyMagicSettingsRecord:(id)record completion:(id)completion;
- (void)removeAAProxCardsInfoForDeviceWithAddress:(id)address completion:(id)completion;
- (void)removeHMDeviceCloudRecordInfoForDeviceWithAddress:(id)address completion:(id)completion;
- (void)startSoundProfileRecordFileHandleSessionWithCompletion:(id)completion;
@end

@implementation BTCloudServicesXPCConnection

- (void)cloudServicesClientActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003978;
  v23 = sub_100003868;
  v24 = 0;
  v9 = +[CloudXPCService sharedInstance];
  deviceManager = [v9 deviceManager];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A5F60;
  v16[3] = &unk_1002B7120;
  v18 = &v19;
  v16[4] = deviceManager;
  v11 = completionCopy;
  v17 = v11;
  v12 = objc_retainBlock(v16);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection cloudServicesClientActivate:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v13 = (v20 + 5);
  obj = v20[5];
  v14 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v13, obj);
  if (v14)
  {
    objc_storeStrong(&self->_client, activate);
    if (v11)
    {
      (*(v11 + 2))(v11, v20[5]);
    }
  }

  (v12[2])(v12);

  _Block_object_dispose(&v19, 8);
}

- (BOOL)_entitledAndReturnError:(id *)error
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v8 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.BluetoothServices"];
  v9 = [v8 isEqual:&__kCFBooleanTrue];
  if (v9)
  {
    v3 = [(NSXPCConnection *)*p_xpcCnx cuValueForEntitlementNoCache:@"com.apple.BluetoothServices.cloud"];
    if ([v3 isEqual:&__kCFBooleanTrue])
    {

LABEL_14:
      result = 1;
      self->_entitled = 1;
      return result;
    }
  }

  v10 = [(NSXPCConnection *)*p_xpcCnx cuValueForEntitlementNoCache:@"com.apple.bluetooth.internal"];
  v11 = [v10 isEqual:&__kCFBooleanTrue];

  if (v9)
  {

    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_14;
    }
  }

  if (dword_1002F6ED8 <= 90 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F46E0(p_xpcCnx);
    if (error)
    {
      goto LABEL_12;
    }
  }

  else if (error)
  {
LABEL_12:
    v12 = BTErrorF(4294896128, "Missing entitlement '%@' and/or '%@", @"com.apple.BluetoothServices", @"com.apple.BluetoothServices.cloud");
    v13 = v12;
    result = 0;
    *error = v12;
    return result;
  }

  return 0;
}

- (void)fetchAAProxCardsInfoForDeviceWithAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100003978;
  v26 = sub_100003868;
  v27 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A645C;
  v19[3] = &unk_1002B7120;
  v21 = &v22;
  v19[4] = deviceManager;
  v10 = completionCopy;
  v20 = v10;
  v11 = objc_retainBlock(v19);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection fetchAAProxCardsInfoForDeviceWithAddress:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v12 = (v23 + 5);
  obj = v23[5];
  v13 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v14 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v14 deviceManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A652C;
    v16[3] = &unk_1002BA448;
    v17 = v10;
    [deviceManager2 fetchAAProxCardsInfoWithAddress:addressCopy completion:v16];
  }

  (v11[2])(v11);

  _Block_object_dispose(&v22, 8);
}

- (void)modifyAAProxCardsInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A680C;
  v17[3] = &unk_1002B7120;
  v19 = &v20;
  v17[4] = deviceManager;
  v10 = completionCopy;
  v18 = v10;
  v11 = objc_retainBlock(v17);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection modifyAAProxCardsInfo:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v12 = (v21 + 5);
  obj = v21[5];
  v13 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v14 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v14 deviceManager];
    [deviceManager2 updateAAProxCardsInfoWithProxCardsInfo:infoCopy completion:v10];
  }

  (v11[2])(v11);

  _Block_object_dispose(&v20, 8);
}

- (void)removeAAProxCardsInfoForDeviceWithAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A6B1C;
  v17[3] = &unk_1002B7120;
  v19 = &v20;
  v17[4] = deviceManager;
  v10 = completionCopy;
  v18 = v10;
  v11 = objc_retainBlock(v17);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection removeAAProxCardsInfoForDeviceWithAddress:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v12 = (v21 + 5);
  obj = v21[5];
  v13 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v14 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v14 deviceManager];
    [deviceManager2 removeAAProxCardsInfoWithBluetoothAddress:addressCopy completion:v10];
  }

  (v11[2])(v11);

  _Block_object_dispose(&v20, 8);
}

- (void)createDeviceRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F477C(recordCopy);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003978;
  v23 = sub_100003868;
  v24 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A6EAC;
  v18[3] = &unk_1002B6ED8;
  v18[4] = deviceManager;
  v18[5] = &v19;
  v10 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection createDeviceRecord:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v11 = (v20 + 5);
  obj = v20[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v13 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A6F4C;
    v15[3] = &unk_1002B69C0;
    v15[4] = self;
    v16 = completionCopy;
    [deviceManager2 addDeviceWithRecord:recordCopy completion:v15];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v19, 8);
}

- (void)modifyDeviceRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F47BC(recordCopy);
  }

  [(BTCloudServicesXPCConnection *)self createDeviceRecord:recordCopy completion:completionCopy];
}

- (void)deleteDeviceRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F47FC(recordCopy);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003978;
  v23 = sub_100003868;
  v24 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A7378;
  v18[3] = &unk_1002B6ED8;
  v18[4] = deviceManager;
  v18[5] = &v19;
  v10 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection deleteDeviceRecord:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v11 = (v20 + 5);
  obj = v20[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v13 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A7418;
    v15[3] = &unk_1002B69C0;
    v15[4] = self;
    v16 = completionCopy;
    [deviceManager2 removeDeviceWithBluetoothAddress:recordCopy completion:v15];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v19, 8);
}

- (void)fetchDeviceRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F483C(recordCopy);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003978;
  v23 = sub_100003868;
  v24 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A77A8;
  v18[3] = &unk_1002B6ED8;
  v18[4] = deviceManager;
  v18[5] = &v19;
  v10 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection fetchDeviceRecord:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v11 = (v20 + 5);
  obj = v20[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v13 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A7848;
    v15[3] = &unk_1002BA470;
    v15[4] = self;
    v16 = completionCopy;
    [deviceManager2 fetchDeviceWithAddress:recordCopy completion:v15];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v19, 8);
}

- (void)fetchDeviceRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (dword_1002F6ED8 <= 30)
  {
    if (dword_1002F6ED8 != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      sub_1001F48C0(completionCopy, v5, v6);
    }
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003978;
  v23 = sub_100003868;
  v24 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A7C20;
  v18[3] = &unk_1002B6ED8;
  v18[4] = deviceManager;
  v18[5] = &v19;
  v10 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection fetchDeviceRecordsWithCompletion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v11 = (v20 + 5);
  obj = v20[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v13 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A7CC0;
    v15[3] = &unk_1002BA498;
    v15[4] = self;
    v16 = v7;
    [deviceManager2 fetchDeviceRecordsWithCompletion:v15];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v19, 8);
}

- (void)createDeviceSupportInformationRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  v10 = completionCopy;
  if (dword_1002F6ED8 <= 30)
  {
    if (dword_1002F6ED8 != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      sub_1001F4920(completionCopy, v8, v9);
    }
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100003978;
  v26 = sub_100003868;
  v27 = 0;
  v11 = +[CloudXPCService sharedInstance];
  deviceManager = [v11 deviceManager];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000A80E0;
  v21[3] = &unk_1002B6ED8;
  v21[4] = deviceManager;
  v21[5] = &v22;
  v13 = objc_retainBlock(v21);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection createDeviceSupportInformationRecord:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v14 = (v23 + 5);
  obj = v23[5];
  v15 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v14, obj);
  if (v15)
  {
    v16 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v16 deviceManager];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000A8180;
    v18[3] = &unk_1002B69C0;
    v18[4] = self;
    v19 = v10;
    [deviceManager2 addDeviceSupportInformationWithRecord:recordCopy completion:v18];
  }

  (v13[2])(v13);

  _Block_object_dispose(&v22, 8);
}

- (void)deleteDeviceSupportInformationRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F493C(recordCopy);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003978;
  v23 = sub_100003868;
  v24 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A8510;
  v18[3] = &unk_1002B6ED8;
  v18[4] = deviceManager;
  v18[5] = &v19;
  v10 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection deleteDeviceSupportInformationRecord:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v11 = (v20 + 5);
  obj = v20[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v13 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A85B0;
    v15[3] = &unk_1002B69C0;
    v15[4] = self;
    v16 = completionCopy;
    [deviceManager2 removeDeviceSupportInformationWithBluetoothAddress:recordCopy completion:v15];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v19, 8);
}

- (void)fetchBTCloudDeviceSupportInformation:(id)information completion:(id)completion
{
  informationCopy = information;
  completionCopy = completion;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F497C(informationCopy);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003978;
  v23 = sub_100003868;
  v24 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A8940;
  v18[3] = &unk_1002B6ED8;
  v18[4] = deviceManager;
  v18[5] = &v19;
  v10 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection fetchBTCloudDeviceSupportInformation:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v11 = (v20 + 5);
  obj = v20[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v13 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A89E0;
    v15[3] = &unk_1002BA4C0;
    v15[4] = self;
    v16 = completionCopy;
    [deviceManager2 fetchDeviceSupportInformationRecordWithAddress:informationCopy completion:v15];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v19, 8);
}

- (void)fetchAllBTCloudDeviceSupportInformationWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (dword_1002F6ED8 <= 30)
  {
    if (dword_1002F6ED8 != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      sub_1001F49FC(completionCopy, v5, v6);
    }
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003978;
  v23 = sub_100003868;
  v24 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A8D8C;
  v18[3] = &unk_1002B6ED8;
  v18[4] = deviceManager;
  v18[5] = &v19;
  v10 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection fetchAllBTCloudDeviceSupportInformationWithCompletion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v11 = (v20 + 5);
  obj = v20[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v13 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A8E2C;
    v15[3] = &unk_1002BA498;
    v15[4] = self;
    v16 = v7;
    [deviceManager2 fetchDeviceSupportInformationRecordsWithCompletion:v15];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v19, 8);
}

- (void)modifyDeviceSupportInformationRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4A58(recordCopy);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003978;
  v23 = sub_100003868;
  v24 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A91F8;
  v18[3] = &unk_1002B6ED8;
  v18[4] = deviceManager;
  v18[5] = &v19;
  v10 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection modifyDeviceSupportInformationRecord:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v11 = (v20 + 5);
  obj = v20[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v13 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A9298;
    v15[3] = &unk_1002B69C0;
    v15[4] = self;
    v16 = completionCopy;
    [deviceManager2 updateDeviceSupportInformationWithDevice:recordCopy completion:v15];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v19, 8);
}

- (void)createMagicSettingsRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4A98(recordCopy);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003978;
  v23 = sub_100003868;
  v24 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A9628;
  v18[3] = &unk_1002B6ED8;
  v18[4] = deviceManager;
  v18[5] = &v19;
  v10 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection createMagicSettingsRecord:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v11 = (v20 + 5);
  obj = v20[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v13 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A96C8;
    v15[3] = &unk_1002B69C0;
    v15[4] = self;
    v16 = completionCopy;
    [deviceManager2 addDeviceMagicSettingsWithRecord:recordCopy completion:v15];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v19, 8);
}

- (void)deleteMagicSettingsRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4AD8(recordCopy);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003978;
  v23 = sub_100003868;
  v24 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A9A58;
  v18[3] = &unk_1002B6ED8;
  v18[4] = deviceManager;
  v18[5] = &v19;
  v10 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection deleteMagicSettingsRecord:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v11 = (v20 + 5);
  obj = v20[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v13 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A9AF8;
    v15[3] = &unk_1002B69C0;
    v15[4] = self;
    v16 = completionCopy;
    [deviceManager2 removeDeviceMagicSettingsWithBluetoothAddress:recordCopy completion:v15];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v19, 8);
}

- (void)fetchMagicSettingsRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4B18(recordCopy);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003978;
  v23 = sub_100003868;
  v24 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A9E88;
  v18[3] = &unk_1002B6ED8;
  v18[4] = deviceManager;
  v18[5] = &v19;
  v10 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection fetchMagicSettingsRecord:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v11 = (v20 + 5);
  obj = v20[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v13 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A9F28;
    v15[3] = &unk_1002BA4E8;
    v15[4] = self;
    v16 = completionCopy;
    [deviceManager2 fetchMagicSettingsRecordWithAddress:recordCopy completion:v15];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v19, 8);
}

- (void)fetchAllMagicSettingsRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (dword_1002F6ED8 <= 30)
  {
    if (dword_1002F6ED8 != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      sub_1001F4B98(completionCopy, v5, v6);
    }
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003978;
  v23 = sub_100003868;
  v24 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000AA2D4;
  v18[3] = &unk_1002B6ED8;
  v18[4] = deviceManager;
  v18[5] = &v19;
  v10 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection fetchAllMagicSettingsRecordsWithCompletion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v11 = (v20 + 5);
  obj = v20[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v13 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000AA374;
    v15[3] = &unk_1002BA498;
    v15[4] = self;
    v16 = v7;
    [deviceManager2 fetchMagicPairingSettingsRecordsWithCompletion:v15];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v19, 8);
}

- (void)modifyMagicSettingsRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4BF4(recordCopy);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003978;
  v23 = sub_100003868;
  v24 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000AA740;
  v18[3] = &unk_1002B6ED8;
  v18[4] = deviceManager;
  v18[5] = &v19;
  v10 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection modifyMagicSettingsRecord:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v11 = (v20 + 5);
  obj = v20[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v13 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000AA7E0;
    v15[3] = &unk_1002B69C0;
    v15[4] = self;
    v16 = completionCopy;
    [deviceManager2 updateDeviceMagicSettingsWithMagicPairingSettings:recordCopy completion:v15];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v19, 8);
}

- (void)fetchCloudAccountInfoUpdatedWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (dword_1002F6ED8 <= 30)
  {
    if (dword_1002F6ED8 != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      sub_1001F4C34(completionCopy, v5, v6);
    }
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100003978;
  v22 = sub_100003868;
  v23 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AAB68;
  v17[3] = &unk_1002B6ED8;
  v17[4] = deviceManager;
  v17[5] = &v18;
  v10 = objc_retainBlock(v17);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection fetchCloudAccountInfoUpdatedWithCompletion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v11 = (v19 + 5);
  obj = v19[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v13 deviceManager];
    cloudAccountInfo = [deviceManager2 cloudAccountInfo];

    if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection fetchCloudAccountInfoUpdatedWithCompletion:]", 30, "Fetched Account Info: %@", cloudAccountInfo);
    }

    (v7)[2](v7, cloudAccountInfo, 0);
  }

  (v10[2])(v10);

  _Block_object_dispose(&v18, 8);
}

- (void)fetchCloudPairingIdentifierForPeripheral:(id)peripheral completion:(id)completion
{
  peripheralCopy = peripheral;
  completionCopy = completion;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4C50(peripheralCopy);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100003978;
  v27 = sub_100003868;
  v28 = 0;
  v8 = +[CBIDSManager sharedInstance];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000AAF14;
  v20[3] = &unk_1002B7120;
  v22 = &v23;
  v20[4] = v8;
  v9 = completionCopy;
  v21 = v9;
  v10 = objc_retainBlock(v20);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection fetchCloudPairingIdentifierForPeripheral:completion:]", 30, "CloudPairingManager: %@", v8);
  }

  v11 = v24;
  obj = v24[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11 + 5, obj);
  if (v12)
  {
    if (v8)
    {
      if ([v8 isReady])
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000AAFE4;
        v15[3] = &unk_1002BA538;
        v15[4] = self;
        v17 = v9;
        v16 = peripheralCopy;
        v18 = &v23;
        [v8 fetchCloudPairingIdentifierForPeripheral:v16 withCompletion:v15];

        goto LABEL_12;
      }

      v13 = BTErrorF(4294960551, "Cloud Pairing is not ready to find cloud identifier for peripheral '%@'", peripheralCopy);
    }

    else
    {
      v13 = BTErrorF(4294960551, "Cloud Pairing is not initialized to find cloud identifier for peripheral '%@'", peripheralCopy);
    }

    v14 = v24[5];
    v24[5] = v13;
  }

LABEL_12:
  (v10[2])(v10);

  _Block_object_dispose(&v23, 8);
}

- (void)forceCloudPairingForIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  signingIdentity = [(BTCloudServicesXPCConnection *)self signingIdentity];
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4CD4(signingIdentity, identifiersCopy);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100003978;
  v26 = sub_100003868;
  v27 = 0;
  v9 = +[CBIDSManager sharedInstance];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000AB4C4;
  v19[3] = &unk_1002B74D0;
  v21 = &v22;
  v10 = completionCopy;
  v20 = v10;
  v11 = objc_retainBlock(v19);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection forceCloudPairingForIdentifiers:completion:]", 30, "CloudPairingManager: %@", v9);
  }

  v12 = (v23 + 5);
  obj = v23[5];
  v13 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    if (v9)
    {
      if ([v9 isReady])
      {
        if ([identifiersCopy count])
        {
          [v9 sendRePairRequest:identifiersCopy forBundleID:signingIdentity];
          (*(v10 + 2))(v10, 0);
          goto LABEL_13;
        }

        v14 = "No cloud identifiers specified '%@'";
        v15 = 4294960591;
LABEL_19:
        v16 = BTErrorF(v15, v14, identifiersCopy);
        v17 = v23[5];
        v23[5] = v16;

        goto LABEL_13;
      }

      v14 = "Cloud Pairing is not ready to force cloud pairing for '%@'";
    }

    else
    {
      v14 = "Cloud Pairing is not initialized to force cloud pairing for '%@'";
    }

    v15 = 4294960551;
    goto LABEL_19;
  }

LABEL_13:
  (v11[2])(v11);

  _Block_object_dispose(&v22, 8);
}

- (void)fetchHMDeviceCloudRecordInfoWithAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100003978;
  v26 = sub_100003868;
  v27 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000AB834;
  v19[3] = &unk_1002B7120;
  v21 = &v22;
  v19[4] = deviceManager;
  v10 = completionCopy;
  v20 = v10;
  v11 = objc_retainBlock(v19);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection fetchHMDeviceCloudRecordInfoWithAddress:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v12 = (v23 + 5);
  obj = v23[5];
  v13 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v14 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v14 deviceManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000AB904;
    v16[3] = &unk_1002BA560;
    v16[4] = self;
    v17 = v10;
    [deviceManager2 fetchHMDeviceCloudRecordWithAddress:addressCopy completion:v16];
  }

  (v11[2])(v11);

  _Block_object_dispose(&v22, 8);
}

- (void)modifyHMDeviceCloudRecordInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000ABC7C;
  v17[3] = &unk_1002B7120;
  v19 = &v20;
  v17[4] = deviceManager;
  v10 = completionCopy;
  v18 = v10;
  v11 = objc_retainBlock(v17);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection modifyHMDeviceCloudRecordInfo:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v12 = (v21 + 5);
  obj = v21[5];
  v13 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v14 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v14 deviceManager];
    [deviceManager2 updateHMDeviceCloudRecordInfoWithRecordInfo:infoCopy completion:v10];
  }

  (v11[2])(v11);

  _Block_object_dispose(&v20, 8);
}

- (void)removeHMDeviceCloudRecordInfoForDeviceWithAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  deviceManager = [v8 deviceManager];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000ABF8C;
  v17[3] = &unk_1002B7120;
  v19 = &v20;
  v17[4] = deviceManager;
  v10 = completionCopy;
  v18 = v10;
  v11 = objc_retainBlock(v17);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection removeHMDeviceCloudRecordInfoForDeviceWithAddress:completion:]", 30, "DeviceManager: %@", deviceManager);
  }

  v12 = (v21 + 5);
  obj = v21[5];
  v13 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v14 = +[CloudXPCService sharedInstance];
    deviceManager2 = [v14 deviceManager];
    [deviceManager2 removeHMDeviceCloudRecordWithBluetoothAddress:addressCopy completion:v10];
  }

  (v11[2])(v11);

  _Block_object_dispose(&v20, 8);
}

- (void)startSoundProfileRecordFileHandleSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (dword_1002F6ED8 <= 30)
  {
    if (dword_1002F6ED8 != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      sub_1001F4D7C(completionCopy, v5, v6);
    }
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100003978;
  v29 = sub_100003868;
  v30 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000AC358;
  v22[3] = &unk_1002B74D0;
  v24 = &v25;
  v8 = v7;
  v23 = v8;
  v9 = objc_retainBlock(v22);
  v10 = (v26 + 5);
  obj = v26[5];
  v11 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    v12 = +[CloudXPCService sharedInstance];
    deviceManager = [v12 deviceManager];

    if (deviceManager)
    {
      createSoundProfileRecordStagingURL = [deviceManager createSoundProfileRecordStagingURL];
      v15 = +[NSFileManager defaultManager];
      path = [createSoundProfileRecordStagingURL path];
      [v15 createFileAtPath:path contents:0 attributes:0];

      v17 = (v26 + 5);
      v20 = v26[5];
      v18 = [NSFileHandle fileHandleForWritingToURL:createSoundProfileRecordStagingURL error:&v20];
      objc_storeStrong(v17, v20);
      if (v18)
      {
        if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection startSoundProfileRecordFileHandleSessionWithCompletion:]", 30, "Created sound profile write-only file handle: %@", createSoundProfileRecordStagingURL);
        }

        (*(v8 + 2))(v8, v18, 0);
      }
    }

    else
    {
      v19 = BTErrorF(4294960551, "Device manager not available");
      createSoundProfileRecordStagingURL = v26[5];
      v26[5] = v19;
    }
  }

  (v9[2])(v9);

  _Block_object_dispose(&v25, 8);
}

- (void)finishSoundProfileRecordSessionHandle:(id)handle completion:(id)completion
{
  handleCopy = handle;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100003978;
  v33 = sub_100003868;
  v34 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000AC800;
  v26[3] = &unk_1002B74D0;
  v28 = &v29;
  completionCopy = completion;
  v27 = completionCopy;
  v8 = objc_retainBlock(v26);
  v9 = v30;
  obj = v30[5];
  v10 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v9 + 5, obj);
  if (v10)
  {
    if (fcntl([handleCopy fileDescriptor], 50, v35) == -1)
    {
      v18 = BTErrorF(4294960591, "File handle is not valid");
      v11 = v30[5];
      v30[5] = v18;
    }

    else
    {
      v11 = [NSString stringWithUTF8String:v35];
      v12 = [NSURL fileURLWithPath:v11];
      if ([v11 length])
      {
        if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection finishSoundProfileRecordSessionHandle:completion:]", 30, "Creating sound profile record");
        }

        v13 = +[CloudXPCService sharedInstance];
        deviceManager = [v13 deviceManager];

        if (deviceManager)
        {
          v15 = self->_dispatchQueue;
          v16 = +[CloudXPCService sharedInstance];
          [v16 beginTransaction:@"createSoundProfileRecordURL"];

          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1000AC8C8;
          v23[3] = &unk_1002B69C0;
          v23[4] = v15;
          v24 = completionCopy;
          [deviceManager addSoundProfileRecordWithURL:v12 completion:v23];
          v17 = v30;
          v22 = 0;
          [handleCopy closeAndReturnError:&v22];
          objc_storeStrong(v17 + 5, v22);
        }

        else
        {
          v21 = BTErrorF(4294960551, "Device manager not available");
          v15 = v30[5];
          v30[5] = v21;
        }
      }

      else
      {
        v19 = BTErrorF(4294960591, "File path is not valid");
        v20 = v30[5];
        v30[5] = v19;
      }
    }
  }

  (v8[2])(v8);

  _Block_object_dispose(&v29, 8);
}

- (void)fetchSoundProfileRecordWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (dword_1002F6ED8 <= 30)
  {
    if (dword_1002F6ED8 != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      sub_1001F4D98(completionCopy, v5, v6);
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100003978;
  v28 = sub_100003868;
  v29 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000ACC94;
  v21[3] = &unk_1002B74D0;
  v23 = &v24;
  v8 = v7;
  v22 = v8;
  v9 = objc_retainBlock(v21);
  v10 = (v25 + 5);
  obj = v25[5];
  v11 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    if (v8)
    {
      v12 = +[CloudXPCService sharedInstance];
      deviceManager = [v12 deviceManager];

      if (deviceManager)
      {
        v14 = self->_dispatchQueue;
        v15 = +[CloudXPCService sharedInstance];
        [v15 beginTransaction:@"fetchSoundProfileRecord"];

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000ACD60;
        v18[3] = &unk_1002BA5B0;
        v18[4] = v14;
        v19 = v8;
        [deviceManager fetchSoundProfileRecordWithCompletion:v18];
      }

      else
      {
        v17 = BTErrorF(4294960551, "Device manager not available");
        v14 = v25[5];
        v25[5] = v17;
      }
    }

    else
    {
      v16 = BTErrorF(4294960591, "No completion provided");
      deviceManager = v25[5];
      v25[5] = v16;
    }
  }

  (v9[2])(v9);

  _Block_object_dispose(&v24, 8);
}

- (void)deleteSoundProfileRecordWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (dword_1002F6ED8 <= 30)
  {
    if (dword_1002F6ED8 != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      sub_1001F4DB4(completionCopy, v5, v6);
    }
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100003978;
  v27 = sub_100003868;
  v28 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000AD19C;
  v20[3] = &unk_1002B74D0;
  v22 = &v23;
  v8 = v7;
  v21 = v8;
  v9 = objc_retainBlock(v20);
  v10 = (v24 + 5);
  obj = v24[5];
  v11 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    if (v8)
    {
      v12 = +[CloudXPCService sharedInstance];
      deviceManager = [v12 deviceManager];

      if (deviceManager)
      {
        v14 = self->_dispatchQueue;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000AD264;
        v17[3] = &unk_1002B69C0;
        v17[4] = v14;
        v18 = v8;
        [deviceManager removeSoundProfileRecordWithCompletion:v17];
      }

      else
      {
        v16 = BTErrorF(4294960551, "Device manager not available");
        v14 = v24[5];
        v24[5] = v16;
      }
    }

    else
    {
      v15 = BTErrorF(4294960591, "No completion provided");
      deviceManager = v24[5];
      v24[5] = v15;
    }
  }

  (v9[2])(v9);

  _Block_object_dispose(&v23, 8);
}

- (void)clientReportHMDeviceCloudRecordInfosUpdated:(id)updated
{
  updatedCopy = updated;
  if (([(AACloudServicesClient *)self->_client internalFlags]& 1) != 0)
  {
    if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection clientReportHMDeviceCloudRecordInfosUpdated:]", 30, "Sending hmDeviceCloudRecordInfosUpdated...");
    }

    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy hmDeviceCloudRecordInfosUpdated:updatedCopy];
  }
}

@end