@interface IMFindMyDevice
+ (id)deviceWithFMFDevice:(id)device;
+ (id)deviceWithFMLDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (BOOL)isThisDevice;
- (IMFindMyDevice)initWithFMFDevice:(id)device fmlDevice:(id)fmlDevice;
- (NSString)deviceName;
- (unint64_t)hash;
@end

@implementation IMFindMyDevice

+ (id)deviceWithFMFDevice:(id)device
{
  deviceCopy = device;
  v4 = [[IMFindMyDevice alloc] initWithFMFDevice:deviceCopy fmlDevice:0];

  return v4;
}

+ (id)deviceWithFMLDevice:(id)device
{
  deviceCopy = device;
  v4 = [[IMFindMyDevice alloc] initWithFMFDevice:0 fmlDevice:deviceCopy];

  return v4;
}

- (IMFindMyDevice)initWithFMFDevice:(id)device fmlDevice:(id)fmlDevice
{
  deviceCopy = device;
  fmlDeviceCopy = fmlDevice;
  v12.receiver = self;
  v12.super_class = IMFindMyDevice;
  v9 = [(IMFindMyDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fmfDevice, device);
    objc_storeStrong(&v10->_fmlDevice, fmlDevice);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      fmfDevice = [(IMFindMyDevice *)self fmfDevice];
      if (fmfDevice || ([(IMFindMyDevice *)v6 fmfDevice], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        fmfDevice2 = [(IMFindMyDevice *)self fmfDevice];
        fmfDevice3 = [(IMFindMyDevice *)v6 fmfDevice];
        v10 = [fmfDevice2 isEqual:fmfDevice3];

        if (fmfDevice)
        {

          if (v10)
          {
            goto LABEL_7;
          }
        }

        else
        {

          if (v10)
          {
            goto LABEL_7;
          }
        }

        v14 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_7:
      fmlDevice = [(IMFindMyDevice *)self fmlDevice];
      if (fmlDevice || ([(IMFindMyDevice *)v6 fmlDevice], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        fmlDevice2 = [(IMFindMyDevice *)self fmlDevice];
        fmlDevice3 = [(IMFindMyDevice *)v6 fmlDevice];
        v14 = [fmlDevice2 isEqual:fmlDevice3];

        if (fmlDevice)
        {
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
        v14 = 1;
      }

      goto LABEL_17;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (BOOL)isThisDevice
{
  fmlDevice = [(IMFindMyDevice *)self fmlDevice];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    fmlDevice2 = [(IMFindMyDevice *)self fmlDevice];
LABEL_5:
    v8 = fmlDevice2;
    isThisDevice = [fmlDevice2 isThisDevice];

    return isThisDevice;
  }

  fmfDevice = [(IMFindMyDevice *)self fmfDevice];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    fmlDevice2 = [(IMFindMyDevice *)self fmfDevice];
    goto LABEL_5;
  }

  return 0;
}

- (NSString)deviceName
{
  fmlDevice = [(IMFindMyDevice *)self fmlDevice];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    fmlDevice2 = [(IMFindMyDevice *)self fmlDevice];
LABEL_5:
    v8 = fmlDevice2;
    deviceName = [fmlDevice2 deviceName];

    goto LABEL_7;
  }

  fmfDevice = [(IMFindMyDevice *)self fmfDevice];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    fmlDevice2 = [(IMFindMyDevice *)self fmfDevice];
    goto LABEL_5;
  }

  deviceName = 0;
LABEL_7:
  if (deviceName)
  {
    v10 = deviceName;
  }

  else
  {
    v10 = &stru_1F1B76F98;
  }

  v11 = v10;

  return &v10->isa;
}

- (unint64_t)hash
{
  fmlDevice = [(IMFindMyDevice *)self fmlDevice];
  v4 = [fmlDevice hash];
  fmfDevice = [(IMFindMyDevice *)self fmfDevice];
  v6 = [fmfDevice hash];

  return v6 ^ v4;
}

@end