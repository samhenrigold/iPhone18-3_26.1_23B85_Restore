@interface DAEndpoint
- (BOOL)matchesSelectedEndpoint:(id)endpoint allowName:(BOOL)name;
- (BOOL)sameDeviceAsEndpoint:(id)endpoint;
- (DADevice)parentDevice;
- (DAEndpoint)initWithPersistentDictionaryRepresentation:(id)representation error:(id *)error;
- (NSDictionary)persistentDictionaryRepresentation;
- (id)descriptionWithLevel:(int)level;
- (void)mergeMissingInfoFromEndpoint:(id)endpoint;
- (void)updateWithEndpoint:(id)endpoint;
@end

@implementation DAEndpoint

- (DAEndpoint)initWithPersistentDictionaryRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v22.receiver = self;
  v22.super_class = DAEndpoint;
  v7 = [(DAEndpoint *)&v22 init];
  if (v7)
  {
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    airplayDeviceID = v7->_airplayDeviceID;
    v7->_airplayDeviceID = v8;

    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    bonjourHostname = v7->_bonjourHostname;
    v7->_bonjourHostname = v10;

    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    identifier = v7->_identifier;
    v7->_identifier = v12;

    CFStringGetTypeID();
    v14 = CFDictionaryGetTypedValue();
    ipv4String = v7->_ipv4String;
    v7->_ipv4String = v14;

    CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue();
    name = v7->_name;
    v7->_name = v16;

    CFStringGetTypeID();
    v18 = CFDictionaryGetTypedValue();
    protocolTypeString = v7->_protocolTypeString;
    v7->_protocolTypeString = v18;

    v20 = v7;
  }

  else
  {
    [DADeviceAppAccessInfo initWithPersistentDictionaryRepresentation:error error:?];
  }

  return v7;
}

- (NSDictionary)persistentDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v3;
  airplayDeviceID = self->_airplayDeviceID;
  if (airplayDeviceID)
  {
    [v3 setObject:airplayDeviceID forKeyedSubscript:@"airplayDeviceID"];
  }

  bonjourHostname = self->_bonjourHostname;
  if (bonjourHostname)
  {
    [v4 setObject:bonjourHostname forKeyedSubscript:@"bonjourHostname"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v4 setObject:identifier forKeyedSubscript:@"identifier"];
  }

  ipv4String = self->_ipv4String;
  if (ipv4String)
  {
    [v4 setObject:ipv4String forKeyedSubscript:@"ipv4String"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKeyedSubscript:@"name"];
  }

  protocolTypeString = self->_protocolTypeString;
  if (protocolTypeString)
  {
    [v4 setObject:protocolTypeString forKeyedSubscript:@"protocolType"];
  }

  v11 = [v4 copy];

  return v11;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v59 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v58 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v58, &v59, "%@", v5);
    v6 = v58;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    v57 = v6;
    v8 = identifier;
    CUAppendF(&v57, &v59, "ID %@", v8);
    v9 = v57;

    v6 = v9;
  }

  name = self->_name;
  if (name)
  {
    v56 = v6;
    v11 = name;
    CUAppendF(&v56, &v59, "name '%@'", v11);
    v12 = v56;

    v6 = v12;
  }

  protocolTypeString = self->_protocolTypeString;
  if (protocolTypeString)
  {
    v55 = v6;
    v14 = protocolTypeString;
    CUAppendF(&v55, &v59, "protocol %@", v14);
    v15 = v55;

    v6 = v15;
  }

  if (self->_selected)
  {
    v54 = v6;
    CUAppendF(&v54, &v59, "selected");
    v16 = v54;

    v6 = v16;
  }

  if (self->_missing)
  {
    v53 = v6;
    CUAppendF(&v53, &v59, "missing");
    v17 = v53;

    v6 = v17;
  }

  airplayDeviceID = self->_airplayDeviceID;
  if (airplayDeviceID)
  {
    v52 = v6;
    v19 = airplayDeviceID;
    CUAppendF(&v52, &v59, "apID %@", v19);
    v20 = v52;

    v6 = v20;
  }

  bonjourFullName = self->_bonjourFullName;
  if (bonjourFullName)
  {
    v51 = v6;
    v22 = bonjourFullName;
    CUAppendF(&v51, &v59, "bjFN '%@'", v22);
    v23 = v51;

    v6 = v23;
  }

  bonjourHostname = self->_bonjourHostname;
  if (bonjourHostname)
  {
    v50 = v6;
    v25 = bonjourHostname;
    CUAppendF(&v50, &v59, "bjHN '%@'", v25);
    v26 = v50;

    v6 = v26;
  }

  bonjourName = self->_bonjourName;
  if (bonjourName)
  {
    v49 = v6;
    v28 = bonjourName;
    CUAppendF(&v49, &v59, "bjNm '%@'", v28);
    v29 = v49;

    v6 = v29;
  }

  bonjourType = self->_bonjourType;
  if (bonjourType)
  {
    v48 = v6;
    v31 = bonjourType;
    CUAppendF(&v48, &v59, "bjST %@", v31);
    v32 = v48;

    v6 = v32;
  }

  bonjourInterfaceIndex = self->_bonjourInterfaceIndex;
  if (bonjourInterfaceIndex)
  {
    v47 = v6;
    CUAppendF(&v47, &v59, "bjII %u", bonjourInterfaceIndex);
    v34 = v47;

    v6 = v34;
  }

  ipv4String = self->_ipv4String;
  if (ipv4String)
  {
    v46 = v6;
    v36 = ipv4String;
    v37 = CUPrintNSObjectOneLine();
    CUAppendF(&v46, &v59, "IPv4 %@", v37);
    v38 = v46;

    v6 = v38;
  }

  underlyingDADevice = self->_underlyingDADevice;
  if (underlyingDADevice)
  {
    v45 = v6;
    v40 = underlyingDADevice;
    CUAppendF(&v45, &v59, "daDv %@", v40);
    v41 = v45;

    v6 = v41;
  }

  v42 = &stru_285B4C350;
  if (v6)
  {
    v42 = v6;
  }

  v43 = v42;

  return v43;
}

- (BOOL)matchesSelectedEndpoint:(id)endpoint allowName:(BOOL)name
{
  nameCopy = name;
  endpointCopy = endpoint;
  protocolTypeString = self->_protocolTypeString;
  protocolTypeString = [endpointCopy protocolTypeString];
  LODWORD(protocolTypeString) = [(NSString *)protocolTypeString isEqual:protocolTypeString];

  if (protocolTypeString)
  {
    airplayDeviceID = self->_airplayDeviceID;
    airplayDeviceID = [endpointCopy airplayDeviceID];
    LOBYTE(airplayDeviceID) = [(NSString *)airplayDeviceID isEqual:airplayDeviceID];

    if (airplayDeviceID & 1) != 0 || (bonjourHostname = self->_bonjourHostname, [endpointCopy bonjourHostname], v12 = objc_claimAutoreleasedReturnValue(), LOBYTE(bonjourHostname) = -[NSString isEqual:](bonjourHostname, "isEqual:", v12), v12, (bonjourHostname))
    {
      LOBYTE(protocolTypeString) = 1;
    }

    else
    {
      protocolTypeString = self->_ipv4String;
      ipv4String = [endpointCopy ipv4String];
      LOBYTE(protocolTypeString) = [(NSString *)protocolTypeString isEqual:ipv4String];

      if ((protocolTypeString & 1) == 0 && nameCopy)
      {
        name = self->_name;
        name = [endpointCopy name];
        LOBYTE(protocolTypeString) = [(NSString *)name isEqual:name];
      }
    }
  }

  return protocolTypeString;
}

- (void)mergeMissingInfoFromEndpoint:(id)endpoint
{
  airplayDeviceID = [endpoint airplayDeviceID];
  v5 = airplayDeviceID;
  if (airplayDeviceID)
  {
    airplayDeviceID = self->_airplayDeviceID;
    p_airplayDeviceID = &self->_airplayDeviceID;
    if (!airplayDeviceID)
    {
      v8 = airplayDeviceID;
      objc_storeStrong(p_airplayDeviceID, airplayDeviceID);
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](airplayDeviceID, v5);
}

- (BOOL)sameDeviceAsEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  airplayDeviceID = self->_airplayDeviceID;
  airplayDeviceID = [endpointCopy airplayDeviceID];
  LOBYTE(airplayDeviceID) = [(NSString *)airplayDeviceID isEqual:airplayDeviceID];

  if (airplayDeviceID)
  {
    v7 = 1;
  }

  else if (self->_protocolTypeString && ([endpointCopy protocolTypeString], v8 = objc_claimAutoreleasedReturnValue(), v8, v8) && (objc_msgSend(endpointCopy, "protocolTypeString"), v9 = objc_claimAutoreleasedReturnValue(), v10 = -[NSString isEqualToString:](self->_protocolTypeString, "isEqualToString:", v9), v9, v10))
  {
    v7 = 0;
  }

  else
  {
    v11 = self->_bonjourHostname;
    bonjourHostname = [endpointCopy bonjourHostname];
    v13 = bonjourHostname;
    if (v11 && bonjourHostname && [(NSString *)v11 caseInsensitiveCompare:bonjourHostname]== NSOrderedSame)
    {
      v7 = 1;
    }

    else
    {
      v14 = self->_ipv4String;
      ipv4String = [endpointCopy ipv4String];
      v16 = ipv4String;
      v7 = v14 && ipv4String && [(NSString *)v14 caseInsensitiveCompare:ipv4String]== NSOrderedSame;
    }
  }

  return v7;
}

- (void)updateWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  airplayDeviceID = [endpointCopy airplayDeviceID];
  v5 = airplayDeviceID;
  if (airplayDeviceID)
  {
    v6 = [airplayDeviceID copy];
    airplayDeviceID = self->_airplayDeviceID;
    self->_airplayDeviceID = v6;
  }

  bonjourFullName = [endpointCopy bonjourFullName];
  v9 = bonjourFullName;
  if (bonjourFullName)
  {
    v10 = [bonjourFullName copy];
    bonjourFullName = self->_bonjourFullName;
    self->_bonjourFullName = v10;
  }

  bonjourHostname = [endpointCopy bonjourHostname];
  v13 = bonjourHostname;
  if (bonjourHostname)
  {
    v14 = [bonjourHostname copy];
    bonjourHostname = self->_bonjourHostname;
    self->_bonjourHostname = v14;
  }

  bonjourName = [endpointCopy bonjourName];
  v17 = bonjourName;
  if (bonjourName)
  {
    v18 = [bonjourName copy];
    bonjourName = self->_bonjourName;
    self->_bonjourName = v18;
  }

  bonjourType = [endpointCopy bonjourType];
  v21 = bonjourType;
  if (bonjourType)
  {
    v22 = [bonjourType copy];
    bonjourType = self->_bonjourType;
    self->_bonjourType = v22;
  }

  self->_bonjourInterfaceIndex = [endpointCopy bonjourInterfaceIndex];
  identifier = [endpointCopy identifier];
  v25 = identifier;
  if (identifier)
  {
    v26 = [identifier copy];
    identifier = self->_identifier;
    self->_identifier = v26;
  }

  ipv4String = [endpointCopy ipv4String];
  v29 = ipv4String;
  if (ipv4String)
  {
    v30 = [ipv4String copy];
    ipv4String = self->_ipv4String;
    self->_ipv4String = v30;
  }

  v47 = v17;
  name = [endpointCopy name];
  v33 = name;
  if (name)
  {
    v34 = [name copy];
    name = self->_name;
    self->_name = v34;
  }

  v36 = v13;
  v48 = v5;
  protocolTypeString = [endpointCopy protocolTypeString];
  v38 = protocolTypeString;
  if (protocolTypeString)
  {
    v39 = [protocolTypeString copy];
    protocolTypeString = self->_protocolTypeString;
    self->_protocolTypeString = v39;
  }

  v41 = v9;
  underlyingDADevice = [endpointCopy underlyingDADevice];
  if (underlyingDADevice)
  {
    objc_storeStrong(&self->_underlyingDADevice, underlyingDADevice);
  }

  userInfo = [endpointCopy userInfo];
  v44 = userInfo;
  if (userInfo)
  {
    v45 = [userInfo copy];
    userInfo = self->_userInfo;
    self->_userInfo = v45;
  }
}

- (DADevice)parentDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_parentDevice);

  return WeakRetained;
}

@end