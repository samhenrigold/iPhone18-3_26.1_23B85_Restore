@interface SRBudswapDevice
- (void)cacheInfo:(id)info andAddress:(id)address andName:(id)name andVersion:(id)version;
@end

@implementation SRBudswapDevice

- (void)cacheInfo:(id)info andAddress:(id)address andName:(id)name andVersion:(id)version
{
  infoCopy = info;
  addressCopy = address;
  nameCopy = name;
  versionCopy = version;
  v14 = infoCopy;
  cachedBudswapAddress = self->cachedBudswapAddress;
  if (v14 | cachedBudswapAddress && ![(NSString *)cachedBudswapAddress isEqualToString:v14]&& dword_1002F70D8 <= 30 && (dword_1002F70D8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F70D8, "[SRBudswapDevice cacheInfo:andAddress:andName:andVersion:]", 30, "Cache budswap Wx %@ -> %@ otherTipi %@ -> %@ name %@ version %@", self->cachedBudswapAddress, v14, self->otherTipiDeviceBTAddress, addressCopy, nameCopy, versionCopy);
  }

  v16 = self->cachedBudswapAddress;
  self->cachedBudswapAddress = v14;
  v22 = v14;

  otherTipiDeviceBTAddress = self->otherTipiDeviceBTAddress;
  self->otherTipiDeviceBTAddress = addressCopy;
  v18 = addressCopy;

  otherTipiDeviceBTName = self->otherTipiDeviceBTName;
  self->otherTipiDeviceBTName = nameCopy;
  v20 = nameCopy;

  otherTipiDeviceVersion = self->otherTipiDeviceVersion;
  self->otherTipiDeviceVersion = versionCopy;
}

@end