@interface UARPSupportedAccessoryA2617USB
- (UARPSupportedAccessoryA2617USB)init;
@end

@implementation UARPSupportedAccessoryA2617USB

- (UARPSupportedAccessoryA2617USB)init
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = UARPSupportedAccessoryA2617USB;
  v2 = [(UARPSupportedAccessoryAirPodsCaseUSB *)&v17 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2617USB appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"AirPods Pro 2 Case"];
    [(UARPSupportedAccessory *)v2 setFusingOverrideUnfused:@"prod"];
    v4 = +[UARPSupportedAccessoryA2699 mobileAssetAppleModelNumber];
    [(UARPSupportedAccessory *)v2 setMobileAssetAppleModelNumber:v4];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = +[UARPSupportedAccessoryA2617USB alternativeAppleModelNumbers];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(UARPSupportedAccessory *)v2 addAlternativeAppleModelNumber:*(*(&v13 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }

    v10 = [[UARPAccessoryHardwareUSB alloc] initWithVendorID:+[UARPSupportedAccessoryAirPodsCaseUSB vendorID](UARPSupportedAccessoryAirPodsCaseUSB productID:"vendorID"), +[UARPSupportedAccessoryA2617USB productID]];
    hwID = v2->hwID;
    v2->hwID = v10;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end