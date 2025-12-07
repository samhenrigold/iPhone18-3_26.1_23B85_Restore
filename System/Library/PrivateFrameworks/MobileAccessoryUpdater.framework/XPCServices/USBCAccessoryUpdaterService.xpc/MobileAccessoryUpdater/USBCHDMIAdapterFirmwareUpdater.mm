@interface USBCHDMIAdapterFirmwareUpdater
- (USBCHDMIAdapterFirmwareUpdater)initWithRegistryEntry:(unsigned int)entry;
- (id)downloadFirmware:(id)firmware hardware:(id)hardware progress:(id)progress;
- (id)findFirmware:(id)firmware hardware:(id)hardware searchRemote:(BOOL)remote;
- (id)validateFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress;
@end

@implementation USBCHDMIAdapterFirmwareUpdater

- (id)findFirmware:(id)firmware hardware:(id)hardware searchRemote:(BOOL)remote
{
  remoteCopy = remote;
  firmwareCopy = firmware;
  hardwareCopy = hardware;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_10000BFAC;
  v36[4] = sub_10000BFBC;
  v37 = 0;
  deviceSerialNumber = [(USBCSimpleUVDMFirmwareUpdater *)self DeviceSerialNumber];
  v10 = dispatch_semaphore_create(0);
  v11 = [hardwareCopy objectForKey:@"UseDropboxLocation"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    self->super._useDropboxLocation = 1;
    v13 = [NSString stringWithFormat:@"%@%@", @"/var/tmp/", @"A2119-22G/"];
    [(FudPluginDelegate *)self->super.super._delegate log:7 format:@"Getting firmware from dropbox path: %@\n", v13];
    v14 = +[NSFileManager defaultManager];
    v35 = 0;
    v15 = [v14 contentsOfDirectoryAtPath:v13 error:&v35];
    v16 = v35;

    [(FudPluginDelegate *)self->super.super._delegate log:7 format:@"firmwareFiles found: %@\n", v15];
    v17 = 0;
    if (!v16 && v15)
    {
      if ([v15 count])
      {
        firstObject = [v15 firstObject];
        v17 = [NSString stringWithFormat:@"%@%@", v13, firstObject];

        v19 = [NSData dataWithContentsOfFile:v17];
        firmware = self->super._firmware;
        self->super._firmware = v19;

        if (self->super._firmware)
        {
          [(FudPluginDelegate *)self->super.super._delegate log:7 format:@"Using firmware: %@\n", v17];
          v16 = 0;
          *(v43 + 24) = 1;
        }

        else
        {
          v16 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:1536 userInfo:0];
        }
      }

      else
      {
        v17 = 0;
        v16 = 0;
      }
    }
  }

  else
  {
    [(MobileAsset *)self->super._mobileAsset setAssetType:@"com.apple.MobileAsset.MobileAccessoryUpdate.A2119-22G"];
    mobileAsset = self->super._mobileAsset;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10000BFC4;
    v28[3] = &unk_1000245B8;
    v32 = &v42;
    v28[4] = self;
    v33 = &v38;
    v29 = deviceSerialNumber;
    v34 = v36;
    v31 = firmwareCopy;
    v22 = v10;
    v30 = v22;
    v23 = [(MobileAsset *)mobileAsset findAsset:remoteCopy completion:v28];
    v24 = dispatch_time(0, 120000000000);
    if (dispatch_semaphore_wait(v22, v24))
    {
      [(FudPluginDelegate *)self->super.super._delegate log:7 format:@"Error: Timed out waiting for MobileAsset download\n"];
    }

    v15 = 0;
    v13 = 0;
    v17 = 0;
    v16 = 0;
  }

  if (firmwareCopy && self->super._useDropboxLocation)
  {
    (*(firmwareCopy + 2))(firmwareCopy, *(v43 + 24), *(v39 + 24), 0, v16);
  }

  v25 = v16;

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return v25;
}

- (id)validateFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress
{
  firmwareCopy = firmware;
  fwBundleFileName = [(MobileAsset *)self->super._mobileAsset fwBundleFileName];
  if (fwBundleFileName)
  {

    goto LABEL_4;
  }

  if (self->super._firmware)
  {
LABEL_4:
    v9 = 0;
    if (!firmwareCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1000111E8(&v11);
  v9 = v11;
  if (firmwareCopy)
  {
LABEL_5:
    firmwareCopy[2](firmwareCopy, 1, 0, v9);
  }

LABEL_6:

  return v9;
}

- (id)downloadFirmware:(id)firmware hardware:(id)hardware progress:(id)progress
{
  firmwareCopy = firmware;
  v7 = dispatch_semaphore_create(0);
  mobileAsset = self->super._mobileAsset;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000C358;
  v14[3] = &unk_100024448;
  v9 = firmwareCopy;
  v16 = v9;
  v10 = v7;
  v15 = v10;
  v11 = [(MobileAsset *)mobileAsset downloadAsset:v14];
  v12 = dispatch_time(0, 120000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    sub_1000111B4(self);
  }

  return 0;
}

- (USBCHDMIAdapterFirmwareUpdater)initWithRegistryEntry:(unsigned int)entry
{
  v4.receiver = self;
  v4.super_class = USBCHDMIAdapterFirmwareUpdater;
  result = [(USBCSimpleUVDMFirmwareUpdater *)&v4 initWithRegistryEntry:*&entry];
  if (result)
  {
    result->super._initialDelay = 10.0;
  }

  return result;
}

@end