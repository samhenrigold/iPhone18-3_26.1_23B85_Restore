@interface SPBeaconAdvertisement
- (SPBeaconAdvertisement)initWithAddress:(id)address publicKey:(id)key deviceType:(id)type batteryState:(id)state rawStatus:(unsigned __int8)status rssi:(int64_t)rssi scanDate:(id)date recordIdentifier:(id)self0;
- (SPBeaconAdvertisement)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconAdvertisement

- (SPBeaconAdvertisement)initWithAddress:(id)address publicKey:(id)key deviceType:(id)type batteryState:(id)state rawStatus:(unsigned __int8)status rssi:(int64_t)rssi scanDate:(id)date recordIdentifier:(id)self0
{
  statusCopy = status;
  addressCopy = address;
  keyCopy = key;
  typeCopy = type;
  stateCopy = state;
  dateCopy = date;
  identifierCopy = identifier;
  v25.receiver = self;
  v25.super_class = SPBeaconAdvertisement;
  v22 = [(SPBeaconAdvertisement *)&v25 init];
  v23 = v22;
  if (v22)
  {
    [(SPBeaconAdvertisement *)v22 setAddress:addressCopy];
    [(SPBeaconAdvertisement *)v23 setPublicKey:keyCopy];
    [(SPBeaconAdvertisement *)v23 setDeviceType:typeCopy];
    [(SPBeaconAdvertisement *)v23 setBatteryState:stateCopy];
    [(SPBeaconAdvertisement *)v23 setRawStatus:statusCopy];
    [(SPBeaconAdvertisement *)v23 setRssi:rssi];
    [(SPBeaconAdvertisement *)v23 setScanDate:dateCopy];
    [(SPBeaconAdvertisement *)v23 setRecordIdentifier:identifierCopy];
  }

  return v23;
}

- (SPBeaconAdvertisement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  [(SPBeaconAdvertisement *)self setAddress:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
  [(SPBeaconAdvertisement *)self setPublicKey:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceType"];
  [(SPBeaconAdvertisement *)self setDeviceType:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryState"];
  [(SPBeaconAdvertisement *)self setBatteryState:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawStatus"];
  -[SPBeaconAdvertisement setRawStatus:](self, "setRawStatus:", [v9 unsignedIntegerValue]);

  -[SPBeaconAdvertisement setRssi:](self, "setRssi:", [coderCopy decodeIntegerForKey:@"rssi"]);
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scanDate"];
  [(SPBeaconAdvertisement *)self setScanDate:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordIdentifier"];
  [(SPBeaconAdvertisement *)self setRecordIdentifier:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];

  [(SPBeaconAdvertisement *)self setLocation:v12];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  address = [(SPBeaconAdvertisement *)self address];
  [coderCopy encodeObject:address forKey:@"address"];

  publicKey = [(SPBeaconAdvertisement *)self publicKey];
  [coderCopy encodeObject:publicKey forKey:@"publicKey"];

  deviceType = [(SPBeaconAdvertisement *)self deviceType];
  [coderCopy encodeObject:deviceType forKey:@"deviceType"];

  batteryState = [(SPBeaconAdvertisement *)self batteryState];
  [coderCopy encodeObject:batteryState forKey:@"batteryState"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[SPBeaconAdvertisement rawStatus](self, "rawStatus")}];
  [coderCopy encodeObject:v9 forKey:@"rawStatus"];

  [coderCopy encodeInteger:-[SPBeaconAdvertisement rssi](self forKey:{"rssi"), @"rssi"}];
  scanDate = [(SPBeaconAdvertisement *)self scanDate];
  [coderCopy encodeObject:scanDate forKey:@"scanDate"];

  recordIdentifier = [(SPBeaconAdvertisement *)self recordIdentifier];
  [coderCopy encodeObject:recordIdentifier forKey:@"recordIdentifier"];

  location = [(SPBeaconAdvertisement *)self location];
  [coderCopy encodeObject:location forKey:@"location"];
}

@end