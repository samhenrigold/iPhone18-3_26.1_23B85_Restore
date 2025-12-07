@interface WPZoneTrackingRequest
- (WPZoneTrackingRequest)init;
- (WPZoneTrackingRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WPZoneTrackingRequest

- (WPZoneTrackingRequest)init
{
  v4.receiver = self;
  v4.super_class = WPZoneTrackingRequest;
  result = [(WPZoneTrackingRequest *)&v4 init];
  if (result)
  {
    *&v3 = 0xFFFFLL;
    *(&v3 + 1) = 0xFFFFLL;
    *&result->_scanningRates.screenOnInterval = v3;
    result->_scanningRates.window = 0xFFFFLL;
    *&result->_clientType = 28;
  }

  return result;
}

- (WPZoneTrackingRequest)initWithCoder:(id)coder
{
  v13[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WPZoneTrackingRequest;
  v5 = [(WPZoneTrackingRequest *)&v12 init];
  if (v5)
  {
    v5->_clientType = [coderCopy decodeIntegerForKey:@"kClientType"];
    v5->_scanningRates.screenOffInterval = [coderCopy decodeIntegerForKey:@"kScanningRatesScreenOff"];
    v5->_scanningRates.screenOnInterval = [coderCopy decodeIntegerForKey:@"kScanningRatesScreenOn"];
    v5->_scanningRates.window = [coderCopy decodeIntegerForKey:@"kScanningRatesWindow"];
    v5->_scanWhenScreenOff = [coderCopy decodeBoolForKey:@"kScanWhenScreenOff"];
    v6 = MEMORY[0x277CBEB98];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kZonesValue"];
    zones = v5->_zones;
    v5->_zones = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WPZoneTrackingRequest clientType](self forKey:{"clientType"), @"kClientType"}];
  objc_msgSend_scanningRates(self);
  [coderCopy encodeInteger:v8[0] forKey:@"kScanningRatesScreenOn"];
  objc_msgSend_scanningRates(self);
  [coderCopy encodeInteger:v7 forKey:@"kScanningRatesScreenOff"];
  objc_msgSend_scanningRates(self);
  [coderCopy encodeInteger:v6 forKey:@"kScanningRatesWindow"];
  [coderCopy encodeBool:-[WPZoneTrackingRequest scanWhenScreenOff](self forKey:{"scanWhenScreenOff"), @"kScanWhenScreenOff"}];
  zones = [(WPZoneTrackingRequest *)self zones];
  [coderCopy encodeObject:zones forKey:@"kZonesValue"];
}

@end