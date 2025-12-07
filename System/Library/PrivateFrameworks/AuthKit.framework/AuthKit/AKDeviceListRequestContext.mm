@interface AKDeviceListRequestContext
- (AKDeviceListRequestContext)init;
- (AKDeviceListRequestContext)initWithCoder:(id)coder;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKDeviceListRequestContext

- (AKDeviceListRequestContext)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AKDeviceListRequestContext;
  v8 = [(AKDeviceListRequestContext *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v8->_identifier;
    v8->_identifier = uUID;
    MEMORY[0x1E69E5920](identifier);
    v8->_forceFetch = 0;
    v8->_type = 1;
  }

  v5 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (AKDeviceListRequestContext)initWithCoder:(id)coder
{
  v44 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v46.receiver = v3;
  v46.super_class = AKDeviceListRequestContext;
  v45 = [(AKDeviceListRequestContext *)&v46 init];
  selfCopy = v45;
  objc_storeStrong(&selfCopy, v45);
  if (v45)
  {
    v26 = location[0];
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = selfCopy->_identifier;
    selfCopy->_identifier = v4;
    MEMORY[0x1E69E5920](identifier);
    v27 = location[0];
    v42 = 0x1E696A000uLL;
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v6;
    MEMORY[0x1E69E5920](altDSID);
    v30 = location[0];
    v36 = 0x1E695D000uLL;
    v29 = MEMORY[0x1E695DFD8];
    v37 = 0x1E695D000uLL;
    v28 = objc_opt_class();
    v31 = [v29 setWithObjects:{v28, objc_opt_class(), 0}];
    v8 = [v30 decodeObjectOfClasses:? forKey:?];
    services = selfCopy->_services;
    selfCopy->_services = v8;
    MEMORY[0x1E69E5920](services);
    MEMORY[0x1E69E5920](v31);
    v34 = location[0];
    v33 = *(v36 + 4056);
    v32 = objc_opt_class();
    v35 = [v33 setWithObjects:{v32, objc_opt_class(), 0}];
    v10 = [v34 decodeObjectOfClasses:? forKey:?];
    operatingSystems = selfCopy->_operatingSystems;
    selfCopy->_operatingSystems = v10;
    MEMORY[0x1E69E5920](operatingSystems);
    MEMORY[0x1E69E5920](v35);
    v12 = [location[0] decodeBoolForKey:@"_includeUntrustedDevices"];
    selfCopy->_includeUntrustedDevices = v12;
    v13 = [location[0] decodeBoolForKey:@"_includeFamilyDevices"];
    v14 = v36;
    selfCopy->_includeFamilyDevices = v13;
    v40 = location[0];
    v39 = *(v14 + 4056);
    v38 = objc_opt_class();
    v41 = [v39 setWithObjects:{v38, objc_opt_class(), 0}];
    v15 = [v40 decodeObjectOfClasses:? forKey:?];
    serialNumbers = selfCopy->_serialNumbers;
    selfCopy->_serialNumbers = v15;
    MEMORY[0x1E69E5920](serialNumbers);
    MEMORY[0x1E69E5920](v41);
    v17 = [location[0] decodeBoolForKey:@"_forceFetch"];
    selfCopy->_forceFetch = v17;
    v18 = [location[0] decodeIntegerForKey:@"_type"];
    selfCopy->_type = v18;
    v19 = [location[0] decodeBoolForKey:@"_fetchDeviceSafetyState"];
    selfCopy->_fetchDeviceSafetyState = v19;
    v43 = location[0];
    v20 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedBundleID"];
    proxiedBundleID = selfCopy->_proxiedBundleID;
    selfCopy->_proxiedBundleID = v20;
    MEMORY[0x1E69E5920](proxiedBundleID);
  }

  v23 = &selfCopy;
  v25 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v23, obj);
  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_identifier];
  [location[0] encodeObject:selfCopy->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:selfCopy->_services forKey:@"_services"];
  [location[0] encodeObject:selfCopy->_operatingSystems forKey:@"_operatingSystems"];
  [location[0] encodeBool:selfCopy->_includeUntrustedDevices forKey:@"_includeUntrustedDevices"];
  [location[0] encodeBool:selfCopy->_includeFamilyDevices forKey:@"_includeFamilyDevices"];
  [location[0] encodeObject:selfCopy->_serialNumbers forKey:@"_serialNumbers"];
  [location[0] encodeBool:selfCopy->_forceFetch forKey:@"_forceFetch"];
  [location[0] encodeInteger:selfCopy->_type forKey:@"_type"];
  [location[0] encodeBool:selfCopy->_fetchDeviceSafetyState forKey:@"_fetchDeviceSafetyState"];
  [location[0] encodeObject:selfCopy->_proxiedBundleID forKey:@"_proxiedBundleID"];
  objc_storeStrong(location, 0);
}

- (NSString)description
{
  v5 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  type = self->_type;
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v7 = [v5 stringWithFormat:@"{<%@:%p>: type: %ld, identifier: %@, altDSID: %@, forceFetch: %d, fetchDeviceSafetyState: %d, os: %@, services: %@, untrusted: %d, family: %d, serialNumbers: %@, proxiedBundleID: %@, }", v3, self, type, uUIDString, self->_altDSID, self->_forceFetch, self->_fetchDeviceSafetyState, self->_operatingSystems, self->_services, self->_includeUntrustedDevices, self->_includeFamilyDevices, self->_serialNumbers, self->_proxiedBundleID];
  MEMORY[0x1E69E5920](uUIDString);

  return v7;
}

@end