@interface KNLiveVideoCaptureDeviceIdentifier
- (BOOL)isEqual:(id)equal;
- (KNLiveVideoCaptureDeviceIdentifier)initWithUniqueID:(id)d modelID:(id)iD underlyingPosition:(int64_t)position underlyingDeviceType:(id)type localizedName:(id)name isIOSScreenRecordingDevice:(BOOL)device;
- (id)description;
- (unint64_t)hash;
@end

@implementation KNLiveVideoCaptureDeviceIdentifier

- (KNLiveVideoCaptureDeviceIdentifier)initWithUniqueID:(id)d modelID:(id)iD underlyingPosition:(int64_t)position underlyingDeviceType:(id)type localizedName:(id)name isIOSScreenRecordingDevice:(BOOL)device
{
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  nameCopy = name;
  v28.receiver = self;
  v28.super_class = KNLiveVideoCaptureDeviceIdentifier;
  v18 = [(KNLiveVideoCaptureDeviceIdentifier *)&v28 init];
  if (v18)
  {
    v19 = [dCopy copy];
    uniqueID = v18->_uniqueID;
    v18->_uniqueID = v19;

    v21 = [iDCopy copy];
    modelID = v18->_modelID;
    v18->_modelID = v21;

    v18->_position = position;
    v23 = [typeCopy copy];
    deviceType = v18->_deviceType;
    v18->_deviceType = v23;

    v25 = [nameCopy copy];
    localizedName = v18->_localizedName;
    v18->_localizedName = v25;

    v18->_isIOSScreenRecordingDevice = device;
  }

  return v18;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  if (self->_isIOSScreenRecordingDevice)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [v3 initWithFormat:@"<%@ %p: uniqueID=%@, modelID=%@, position=%zd, deviceType=%@, localizedName=%@, isIOSScreenRecordingDevice=%@>", v4, self, self->_uniqueID, self->_modelID, self->_position, self->_deviceType, self->_localizedName, v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  v9 = v5 && ((uniqueID = self->_uniqueID, !(uniqueID | *(v5 + 8))) || [(NSString *)uniqueID isEqual:?]) && ((modelID = self->_modelID, !(modelID | *(v5 + 16))) || [(NSString *)modelID isEqual:?]) && self->_position == *(v5 + 24) && [(NSString *)self->_deviceType isEqualToString:*(v5 + 32)]&& ((localizedName = self->_localizedName, !(localizedName | *(v5 + 40))) || [(NSString *)localizedName isEqual:?]) && self->_isIOSScreenRecordingDevice == *(v5 + 48);
  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  [v3 addObject:self->_uniqueID];
  [v3 addObject:self->_modelID];
  [v3 addInteger:self->_position];
  [v3 addObject:self->_deviceType];
  [v3 addObject:self->_localizedName];
  [v3 addBool:self->_isIOSScreenRecordingDevice];
  hashValue = [v3 hashValue];

  return hashValue;
}

@end