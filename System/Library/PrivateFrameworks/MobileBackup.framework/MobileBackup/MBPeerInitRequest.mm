@interface MBPeerInitRequest
- (MBPeerInitRequest)initWithDictionary:(id)dictionary error:(id *)error;
- (MBPeerInitRequest)initWithTargetDeviceUDID:(id)d deviceName:(id)name deviceClass:(id)class buildVersion:(id)version productVersion:(id)productVersion;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerInitRequest

- (id)dictionaryRepresentation
{
  v11[0] = @"MBProtocolVersion";
  targetProtocolVersion = [(MBPeerInitRequest *)self targetProtocolVersion];
  v12[0] = targetProtocolVersion;
  v11[1] = @"MBDeviceUDID";
  targetDeviceUDID = [(MBPeerInitRequest *)self targetDeviceUDID];
  v12[1] = targetDeviceUDID;
  v11[2] = @"MBDeviceClass";
  targetDeviceClass = [(MBPeerInitRequest *)self targetDeviceClass];
  v12[2] = targetDeviceClass;
  v11[3] = @"MBDeviceName";
  targetDeviceName = [(MBPeerInitRequest *)self targetDeviceName];
  v12[3] = targetDeviceName;
  v11[4] = @"MBBuildVersion";
  targetBuildVersion = [(MBPeerInitRequest *)self targetBuildVersion];
  v12[4] = targetBuildVersion;
  v11[5] = @"MBProductVersion";
  targetProductVersion = [(MBPeerInitRequest *)self targetProductVersion];
  v12[5] = targetProductVersion;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

- (MBPeerInitRequest)initWithTargetDeviceUDID:(id)d deviceName:(id)name deviceClass:(id)class buildVersion:(id)version productVersion:(id)productVersion
{
  dCopy = d;
  nameCopy = name;
  classCopy = class;
  versionCopy = version;
  productVersionCopy = productVersion;
  v22.receiver = self;
  v22.super_class = MBPeerInitRequest;
  v17 = [(MBPeerInitRequest *)&v22 init];
  v18 = v17;
  if (v17)
  {
    targetProtocolVersion = v17->_targetProtocolVersion;
    v17->_targetProtocolVersion = &off_1003E0DF8;

    objc_storeStrong(&v18->_targetDeviceUDID, d);
    objc_storeStrong(&v18->_targetDeviceName, name);
    objc_storeStrong(&v18->_targetDeviceClass, class);
    objc_storeStrong(&v18->_targetBuildVersion, version);
    objc_storeStrong(&v18->_targetProductVersion, productVersion);
  }

  return v18;
}

- (MBPeerInitRequest)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = MBPeerInitRequest;
  v7 = [(MBPeerInitRequest *)&v22 init];
  if (!v7 || ([dictionaryCopy objectForKeyedSubscript:@"MBProtocolVersion"], v8 = objc_claimAutoreleasedReturnValue(), targetProtocolVersion = v7->_targetProtocolVersion, v7->_targetProtocolVersion = v8, targetProtocolVersion, objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"MBDeviceUDID"), v10 = objc_claimAutoreleasedReturnValue(), targetDeviceUDID = v7->_targetDeviceUDID, v7->_targetDeviceUDID = v10, targetDeviceUDID, objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"MBDeviceName"), v12 = objc_claimAutoreleasedReturnValue(), targetDeviceName = v7->_targetDeviceName, v7->_targetDeviceName = v12, targetDeviceName, objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"MBDeviceClass"), v14 = objc_claimAutoreleasedReturnValue(), targetDeviceClass = v7->_targetDeviceClass, v7->_targetDeviceClass = v14, targetDeviceClass, objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"MBBuildVersion"), v16 = objc_claimAutoreleasedReturnValue(), targetBuildVersion = v7->_targetBuildVersion, v7->_targetBuildVersion = v16, targetBuildVersion, objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"MBProductVersion"), v18 = objc_claimAutoreleasedReturnValue(), targetProductVersion = v7->_targetProductVersion, v7->_targetProductVersion = v18, targetProductVersion, v7->_targetProtocolVersion) && v7->_targetDeviceUDID && v7->_targetDeviceName && v7->_targetDeviceClass && v7->_targetProductVersion && v7->_targetBuildVersion)
  {
    v20 = v7;
  }

  else if (error)
  {
    [MBError errorWithCode:11 format:@"Failed to decode request. Missing property in dictionary %@", dictionaryCopy];
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (NSString)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  targetProtocolVersion = [(MBPeerInitRequest *)self targetProtocolVersion];
  unsignedLongValue = [targetProtocolVersion unsignedLongValue];
  targetDeviceUDID = [(MBPeerInitRequest *)self targetDeviceUDID];
  targetDeviceName = [(MBPeerInitRequest *)self targetDeviceName];
  targetDeviceClass = [(MBPeerInitRequest *)self targetDeviceClass];
  targetProductVersion = [(MBPeerInitRequest *)self targetProductVersion];
  targetBuildVersion = [(MBPeerInitRequest *)self targetBuildVersion];
  v12 = [NSString stringWithFormat:@"<%s: %p protocol=%lu, deviceUDID=%@, deviceName=%@, deviceClass=%@, productVersion=%@, buildVersion=%@>", Name, self, unsignedLongValue, targetDeviceUDID, targetDeviceName, targetDeviceClass, targetProductVersion, targetBuildVersion];;

  return v12;
}

@end