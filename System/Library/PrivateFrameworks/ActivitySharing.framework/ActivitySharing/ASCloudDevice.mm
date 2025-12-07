@interface ASCloudDevice
+ (id)cloudDeviceWithRecord:(id)record;
- (ASCloudDevice)initWithBuildNumber:(id)number deviceType:(id)type identifier:(id)identifier modificationDate:(id)date osVersion:(id)version;
- (ASCloudDevice)initWithCoder:(id)coder;
- (ASCloudDevice)initWithDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCloudDevice

+ (id)cloudDeviceWithRecord:(id)record
{
  recordCopy = record;
  valuesByKey = [recordCopy valuesByKey];
  v5 = [valuesByKey objectForKeyedSubscript:@"DeviceOSBuild"];

  if (v5)
  {
    valuesByKey2 = [recordCopy valuesByKey];
    v9 = [valuesByKey2 objectForKeyedSubscript:@"DeviceOSVersionNumber"];

    if (v9)
    {
      valuesByKey3 = [recordCopy valuesByKey];
      v13 = [valuesByKey3 objectForKeyedSubscript:@"DeviceOSType"];

      if (v13)
      {
        modificationDate = [recordCopy modificationDate];
        if (modificationDate)
        {
          v18 = [ASCloudDevice alloc];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          v21 = [(ASCloudDevice *)v18 initWithBuildNumber:v5 deviceType:v13 identifier:recordName modificationDate:modificationDate osVersion:v9];
        }

        else
        {
          ASLoggingInitialize(0, v16);
          if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
          {
            +[ASCloudDevice(CloudKitCodingSupport) cloudDeviceWithRecord:];
          }

          v21 = 0;
        }
      }

      else
      {
        ASLoggingInitialize(v14, v15);
        v24 = ASLogCloudKit;
        if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
        {
          [ASCloudDevice(CloudKitCodingSupport) cloudDeviceWithRecord:v24];
        }

        v21 = 0;
      }
    }

    else
    {
      ASLoggingInitialize(v10, v11);
      v23 = ASLogCloudKit;
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        [ASCloudDevice(CloudKitCodingSupport) cloudDeviceWithRecord:v23];
      }

      v21 = 0;
    }
  }

  else
  {
    ASLoggingInitialize(v6, v7);
    v22 = ASLogCloudKit;
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      [ASCloudDevice(CloudKitCodingSupport) cloudDeviceWithRecord:v22];
    }

    v21 = 0;
  }

  return v21;
}

- (ASCloudDevice)initWithBuildNumber:(id)number deviceType:(id)type identifier:(id)identifier modificationDate:(id)date osVersion:(id)version
{
  numberCopy = number;
  typeCopy = type;
  identifierCopy = identifier;
  dateCopy = date;
  versionCopy = version;
  v21.receiver = self;
  v21.super_class = ASCloudDevice;
  v17 = [(ASCloudDevice *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_buildNumber, number);
    objc_storeStrong(&v18->_deviceType, type);
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v18->_modificationDate, date);
    objc_storeStrong(&v18->_osVersion, version);
  }

  return v18;
}

- (ASCloudDevice)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"buildNumber"];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"deviceType"];
    if (v6)
    {
      v7 = [representationCopy objectForKeyedSubscript:@"identifier"];
      if (v7)
      {
        v8 = [representationCopy objectForKeyedSubscript:@"modificationDate"];
        if (v8)
        {
          v9 = [representationCopy objectForKeyedSubscript:@"osVersion"];
          if (v9)
          {
            self = [(ASCloudDevice *)self initWithBuildNumber:v5 deviceType:v6 identifier:v7 modificationDate:v8 osVersion:v9];
            selfCopy = self;
          }

          else
          {
            selfCopy = 0;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v10 = *MEMORY[0x277D85DE8];
  v6[0] = @"buildNumber";
  v6[1] = @"deviceType";
  deviceType = self->_deviceType;
  v7[0] = self->_buildNumber;
  v7[1] = deviceType;
  v3 = *&self->_identifier;
  v6[2] = @"identifier";
  v6[3] = @"modificationDate";
  v8 = v3;
  v6[4] = @"osVersion";
  osVersion = self->_osVersion;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:5];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  identifier = [(ASCloudDevice *)self identifier];
  identifier2 = [equalCopy identifier];

  LOBYTE(equalCopy) = [identifier isEqualToString:identifier2];
  return equalCopy;
}

- (unint64_t)hash
{
  identifier = [(ASCloudDevice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  buildNumber = self->_buildNumber;
  coderCopy = coder;
  [coderCopy encodeObject:buildNumber forKey:@"buildNumber"];
  [coderCopy encodeObject:self->_deviceType forKey:@"deviceType"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_modificationDate forKey:@"modificationDate"];
  [coderCopy encodeObject:self->_osVersion forKey:@"osVersion"];
}

- (ASCloudDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ASCloudDevice;
  v5 = [(ASCloudDevice *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buildNumber"];
    buildNumber = v5->_buildNumber;
    v5->_buildNumber = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceType"];
    deviceType = v5->_deviceType;
    v5->_deviceType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v14;
  }

  return v5;
}

@end