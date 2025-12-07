@interface HMDAccessoryMetricTransportDetails
- (HMDAccessoryMetricTransportDetails)initWithAccessory:(id)accessory;
- (id)attributeDescriptions;
@end

@implementation HMDAccessoryMetricTransportDetails

- (id)attributeDescriptions
{
  v20[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryProtocol = [(HMDAccessoryMetricTransportDetails *)self accessoryProtocol];
  v4 = [v3 initWithName:@"accessoryProtocol" value:accessoryProtocol];
  v20[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryMetricTransportDetails *)self isAccessoryBatteryPowered];
  v6 = HMFBooleanToString();
  v7 = [v5 initWithName:@"isAccessoryBatteryPowered" value:v6];
  v20[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryMetricTransportDetails *)self isAccessoryBridged];
  v9 = HMFBooleanToString();
  v10 = [v8 initWithName:@"isAccessoryBridged" value:v9];
  v20[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryMetricTransportDetails *)self isThreadAccessory];
  v12 = HMFBooleanToString();
  v13 = [v11 initWithName:@"isThreadAccessory" value:v12];
  v20[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryMetricTransportDetails *)self isHH2Enabled];
  v15 = HMFBooleanToString();
  v16 = [v14 initWithName:@"isHH2Enabled" value:v15];
  v20[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];

  return v17;
}

- (HMDAccessoryMetricTransportDetails)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v13.receiver = self;
  v13.super_class = HMDAccessoryMetricTransportDetails;
  v5 = [(HMDAccessoryMetricTransportDetails *)&v13 init];
  if (v5)
  {
    v6 = accessoryCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if ([v8 supportsHAP])
    {
      v9 = @"HAP";
    }

    else if ([v8 supportsCHIP])
    {
      v9 = @"Matter";
    }

    else
    {
      v9 = @"Unknown";
    }

    objc_storeStrong(&v5->_accessoryProtocol, v9);
    v5->_isAccessoryBatteryPowered = [v8 hasBattery];
    bridge = [v8 bridge];
    v5->_isAccessoryBridged = bridge != 0;

    if (([v8 supportsThread] & 1) != 0 || objc_msgSend(v8, "hasThreadServer"))
    {
      v5->_isThreadAccessory = 1;
    }

    else
    {
      supportedLinkLayerTypes = [v8 supportedLinkLayerTypes];
      v5->_isThreadAccessory = ([supportedLinkLayerTypes unsignedIntValue] & 0x10) != 0;
    }

    v5->_isHH2Enabled = HAPIsHH2Enabled();
  }

  return v5;
}

@end