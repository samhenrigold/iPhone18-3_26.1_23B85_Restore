@interface USBCSDCardReaderFirmwareUpdater
- (id)downloadFirmware:(id)firmware hardware:(id)hardware progress:(id)progress;
- (id)findFirmware:(id)firmware hardware:(id)hardware searchRemote:(BOOL)remote;
- (id)validateFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress;
@end

@implementation USBCSDCardReaderFirmwareUpdater

- (id)findFirmware:(id)firmware hardware:(id)hardware searchRemote:(BOOL)remote
{
  remoteCopy = remote;
  firmwareCopy = firmware;
  v8 = dispatch_semaphore_create(0);
  [(MobileAsset *)self->super._mobileAsset setAssetType:@"com.apple.MobileAsset.MobileAccessoryUpdate.A245"];
  mobileAsset = self->super._mobileAsset;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000023DC;
  v15[3] = &unk_100024420;
  v15[4] = self;
  v10 = firmwareCopy;
  v17 = v10;
  v11 = v8;
  v16 = v11;
  v12 = [(MobileAsset *)mobileAsset findAsset:remoteCopy completion:v15];
  v13 = dispatch_time(0, 120000000000);
  if (dispatch_semaphore_wait(v11, v13))
  {
    sub_1000111B4(self);
  }

  return 0;
}

- (id)validateFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress
{
  firmwareCopy = firmware;
  fwBundleFileName = [(MobileAsset *)self->super._mobileAsset fwBundleFileName];

  if (fwBundleFileName)
  {
    v9 = 0;
    if (!firmwareCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1000111E8(&v11);
  v9 = v11;
  if (firmwareCopy)
  {
LABEL_3:
    firmwareCopy[2](firmwareCopy, 1, 0, v9);
  }

LABEL_4:

  return v9;
}

- (id)downloadFirmware:(id)firmware hardware:(id)hardware progress:(id)progress
{
  firmwareCopy = firmware;
  v7 = dispatch_semaphore_create(0);
  mobileAsset = self->super._mobileAsset;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002644;
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

@end