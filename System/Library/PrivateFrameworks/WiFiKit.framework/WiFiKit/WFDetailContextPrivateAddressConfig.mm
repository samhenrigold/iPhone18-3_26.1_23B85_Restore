@interface WFDetailContextPrivateAddressConfig
- (WFDetailContextPrivateAddressConfig)initWithRandomMACAddress:(id)address hardwareMACAddress:(id)cAddress privateAddressMode:(unint64_t)mode connectedWithHardwareAddress:(BOOL)hardwareAddress privateAddressSupported:(BOOL)supported;
@end

@implementation WFDetailContextPrivateAddressConfig

- (WFDetailContextPrivateAddressConfig)initWithRandomMACAddress:(id)address hardwareMACAddress:(id)cAddress privateAddressMode:(unint64_t)mode connectedWithHardwareAddress:(BOOL)hardwareAddress privateAddressSupported:(BOOL)supported
{
  supportedCopy = supported;
  hardwareAddressCopy = hardwareAddress;
  v32 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  cAddressCopy = cAddress;
  v21.receiver = self;
  v21.super_class = WFDetailContextPrivateAddressConfig;
  v14 = [(WFDetailContextPrivateAddressConfig *)&v21 init];
  v15 = v14;
  if (v14)
  {
    [(WFDetailContextPrivateAddressConfig *)v14 setRandomMACAddress:addressCopy];
    [(WFDetailContextPrivateAddressConfig *)v15 setHardwareMACAddress:cAddressCopy];
    [(WFDetailContextPrivateAddressConfig *)v15 setPrivateAddressMode:mode];
    [(WFDetailContextPrivateAddressConfig *)v15 setConnectedWithHardwareAddress:hardwareAddressCopy];
    [(WFDetailContextPrivateAddressConfig *)v15 setPrivateAddressSupported:supportedCopy];
  }

  v16 = WFLogForCategory(8uLL);
  v17 = OSLogForWFLogLevel(1uLL);
  v18 = v17;
  if (WFCurrentLogLevel(v17, v19) && v16 && os_log_type_enabled(v16, v18))
  {
    *buf = 138413314;
    v23 = addressCopy;
    v24 = 2112;
    v25 = cAddressCopy;
    v26 = 2048;
    modeCopy = mode;
    v28 = 1024;
    v29 = hardwareAddressCopy;
    v30 = 1024;
    v31 = supportedCopy;
    _os_log_impl(&dword_273ECD000, v16, v18, "WFDetailContextPrivateAddressConfig: randomMACAddress='%@', hardwareMACAddress='%@', privateAddressMode=%ld, connectedWithHardwareAddress=%d, privateAddressSupported=%d", buf, 0x2Cu);
  }

  return v15;
}

@end