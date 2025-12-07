@interface UARPSupportedAccessoryA3351
- (UARPSupportedAccessoryA3351)init;
@end

@implementation UARPSupportedAccessoryA3351

- (UARPSupportedAccessoryA3351)init
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = UARPSupportedAccessoryA3351;
  v2 = [(UARPSupportedAccessoryUSBPDPowerAdapter *)&v16 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA3351 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Power Adapter"];
    [(UARPSupportedAccessory *)v2 setSupportsAnalytics:1];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = +[UARPSupportedAccessoryA3351 alternativeAppleModelNumbers];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(UARPSupportedAccessory *)v2 addAlternativeAppleModelNumber:*(*(&v12 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v6);
    }

    v9 = [[UARPAccessoryHardwareUSBPD alloc] initWithVendorID:+[UARPSupportedAccessoryUSBPD vendorID](UARPSupportedAccessoryUSBPD productID:"vendorID") usbpdClass:+[UARPSupportedAccessoryA3351 productID](UARPSupportedAccessoryA3351 locationType:"productID") supportsAccMode7:+[UARPSupportedAccessoryUSBPDPowerAdapter deviceClass](UARPSupportedAccessoryUSBPDPowerAdapter, "deviceClass"), +[UARPSupportedAccessoryUSBPD locationType], [(UARPSupportedAccessory *)v2 supportsAccMode7]];
    hwID = v2->hwID;
    v2->hwID = v9;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end