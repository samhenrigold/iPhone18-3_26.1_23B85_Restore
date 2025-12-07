@interface MRUPersonalizationInfo
- (MRUPersonalizationInfo)initWithCoder:(id)coder;
- (MRUPersonalizationInfo)initWithHardwareInfo:(id)info componentName:(id)name objectName:(id)objectName nonce:(id)nonce;
- (MRUPersonalizationInfo)initWithHardwareInfo:(id)info componentName:(id)name objectName:(id)objectName nonce:(id)nonce tagNumber:(id)number;
- (MRUPersonalizationInfo)initWithOptions:(id)options error:(id *)error;
- (NSDictionary)asDictionary;
- (NSString)_componentNameSuffix;
- (NSString)_propertyNameSuffix;
- (NSString)boardIDPropertyName;
- (NSString)chipIDPropertyName;
- (NSString)ecidPropertyName;
- (NSString)noncePropertyName;
- (NSString)productionModePropertyName;
- (NSString)securityDomainPropertyName;
- (NSString)securityModePropertyName;
- (NSString)tag;
- (NSString)ticketName;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRUPersonalizationInfo

- (MRUPersonalizationInfo)initWithHardwareInfo:(id)info componentName:(id)name objectName:(id)objectName nonce:(id)nonce
{
  infoCopy = info;
  nameCopy = name;
  objectNameCopy = objectName;
  nonceCopy = nonce;
  v19.receiver = self;
  v19.super_class = MRUPersonalizationInfo;
  v15 = [(MRUPersonalizationInfo *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_hardwareInfo, info);
    objc_storeStrong(&v16->_componentName, name);
    objc_storeStrong(&v16->_objectName, objectName);
    objc_storeStrong(&v16->_nonce, nonce);
    tagNumber = v16->_tagNumber;
    v16->_tagNumber = 0;
  }

  return v16;
}

- (MRUPersonalizationInfo)initWithHardwareInfo:(id)info componentName:(id)name objectName:(id)objectName nonce:(id)nonce tagNumber:(id)number
{
  numberCopy = number;
  v14 = [(MRUPersonalizationInfo *)self initWithHardwareInfo:info componentName:name objectName:objectName nonce:nonce];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_tagNumber, number);
  }

  return v15;
}

- (MRUPersonalizationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MRUPersonalizationInfo;
  v5 = [(MRUPersonalizationInfo *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"hardwareInfo"];
    hardwareInfo = v5->_hardwareInfo;
    v5->_hardwareInfo = v6;

    v8 = [coderCopy decodeObjectForKey:@"componentName"];
    componentName = v5->_componentName;
    v5->_componentName = v8;

    v10 = [coderCopy decodeObjectForKey:@"objectName"];
    objectName = v5->_objectName;
    v5->_objectName = v10;

    v12 = [coderCopy decodeObjectForKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v12;

    if ([coderCopy containsValueForKey:@"tagNumber"])
    {
      v14 = [coderCopy decodeObjectForKey:@"tagNumber"];
    }

    else
    {
      v14 = 0;
    }

    tagNumber = v5->_tagNumber;
    v5->_tagNumber = v14;
  }

  return v5;
}

- (MRUPersonalizationInfo)initWithOptions:(id)options error:(id *)error
{
  v46[1] = *MEMORY[0x29EDCA608];
  optionsCopy = options;
  v36.receiver = self;
  v36.super_class = MRUPersonalizationInfo;
  v7 = [(MRUPersonalizationInfo *)&v36 init];
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = [optionsCopy objectForKeyedSubscript:@"HardwareInfo"];
  if (!v8)
  {
    if (*error)
    {
      v19 = MEMORY[0x29EDB9FA0];
      v45 = *MEMORY[0x29EDB9ED8];
      v20 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No hardwareInfo in options dict"];
      v46[0] = v20;
      v21 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      *error = [v19 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v21];
    }

    goto LABEL_19;
  }

  v9 = v8;
  v35 = 0;
  v10 = [[MRUHardwareInfo alloc] initWithOptions:v8 error:&v35];
  v11 = v35;
  if (!v10)
  {
    if (*error)
    {
      v22 = MEMORY[0x29EDB9FA0];
      v43[0] = *MEMORY[0x29EDB9ED8];
      v23 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to create hardwareInfo, options: %@", v9];
      v43[1] = *MEMORY[0x29EDB9F18];
      v44[0] = v23;
      v44[1] = v11;
      v24 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
      *error = [v22 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:3 userInfo:v24];
    }

    goto LABEL_18;
  }

  objc_storeStrong(&v7->_hardwareInfo, v10);
  v12 = [optionsCopy objectForKeyedSubscript:@"ComponentName"];
  if (!v12)
  {
    if (*error)
    {
      v25 = MEMORY[0x29EDB9FA0];
      v41 = *MEMORY[0x29EDB9ED8];
      v26 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No component name in options dict"];
      v42 = v26;
      v27 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *error = [v25 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v27];
    }

    goto LABEL_17;
  }

  v13 = v12;
  objc_storeStrong(&v7->_componentName, v12);
  v14 = [optionsCopy objectForKeyedSubscript:@"ObjectName"];
  if (!v14)
  {
    if (*error)
    {
      v33 = MEMORY[0x29EDB9FA0];
      v39 = *MEMORY[0x29EDB9ED8];
      v28 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No object name in options dict"];
      v40 = v28;
      v29 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *error = [v33 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v29];
    }

LABEL_17:
LABEL_18:

    goto LABEL_19;
  }

  v15 = v14;
  objc_storeStrong(&v7->_objectName, v14);
  v16 = [optionsCopy objectForKeyedSubscript:@"Nonce"];
  if (v16)
  {
    objc_storeStrong(&v7->_nonce, v16);
    v17 = [optionsCopy objectForKeyedSubscript:@"TagNumber"];
    tagNumber = v7->_tagNumber;
    v7->_tagNumber = v17;
  }

  else
  {
    if (!*error)
    {
      goto LABEL_23;
    }

    v34 = MEMORY[0x29EDB9FA0];
    v37 = *MEMORY[0x29EDB9ED8];
    tagNumber = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No nonce in options dict"];
    v38 = tagNumber;
    v32 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    *error = [v34 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v32];
  }

LABEL_23:
  if (v16)
  {
LABEL_24:
    v30 = v7;
    goto LABEL_25;
  }

LABEL_19:
  v30 = 0;
LABEL_25:

  return v30;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_hardwareInfo forKey:@"hardwareInfo"];
  [coderCopy encodeObject:self->_componentName forKey:@"componentName"];
  [coderCopy encodeObject:self->_objectName forKey:@"objectName"];
  [coderCopy encodeObject:self->_nonce forKey:@"nonce"];
  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    [coderCopy encodeObject:tagNumber forKey:@"tagNumber"];
  }
}

- (NSDictionary)asDictionary
{
  v13 = *MEMORY[0x29EDCA608];
  v9[0] = @"HardwareInfo";
  asDictionary = [(MRUHardwareInfo *)self->_hardwareInfo asDictionary];
  v10 = asDictionary;
  v11 = *&self->_componentName;
  v9[1] = @"ComponentName";
  v9[2] = @"ObjectName";
  v9[3] = @"Nonce";
  nonce = self->_nonce;
  v4 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v10 forKeys:v9 count:4];
  v5 = [v4 mutableCopy];

  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    [v5 setObject:tagNumber forKey:@"TagNumber"];
  }

  v7 = [MEMORY[0x29EDB8DC0] dictionaryWithDictionary:v5];

  return v7;
}

- (NSString)_componentNameSuffix
{
  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%d", -[NSNumber intValue](tagNumber, "intValue")];
  }

  else
  {
    v4 = &stru_2A1EE9D10;
  }

  return v4;
}

- (NSString)_propertyNameSuffix
{
  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@", %d", -[NSNumber intValue](tagNumber, "intValue")];
  }

  else
  {
    v4 = &stru_2A1EE9D10;
  }

  return v4;
}

- (NSString)ticketName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  _componentNameSuffix = [(MRUPersonalizationInfo *)self _componentNameSuffix];
  v5 = [v2 stringWithFormat:@"%@%@, Ticket", componentName, _componentNameSuffix];

  return v5;
}

- (NSString)tag
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  objectName = self->_objectName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v6 = [v2 stringWithFormat:@"%@, %@%@", componentName, objectName, _propertyNameSuffix];

  return v6;
}

- (NSString)boardIDPropertyName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [v2 stringWithFormat:@"%@, BoardID%@", componentName, _propertyNameSuffix];

  return v5;
}

- (NSString)chipIDPropertyName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [v2 stringWithFormat:@"%@, ChipID%@", componentName, _propertyNameSuffix];

  return v5;
}

- (NSString)ecidPropertyName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [v2 stringWithFormat:@"%@, ECID%@", componentName, _propertyNameSuffix];

  return v5;
}

- (NSString)noncePropertyName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [v2 stringWithFormat:@"%@, Nonce%@", componentName, _propertyNameSuffix];

  return v5;
}

- (NSString)productionModePropertyName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [v2 stringWithFormat:@"%@, ProductionMode%@", componentName, _propertyNameSuffix];

  return v5;
}

- (NSString)securityDomainPropertyName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [v2 stringWithFormat:@"%@, SecurityDomain%@", componentName, _propertyNameSuffix];

  return v5;
}

- (NSString)securityModePropertyName
{
  v2 = MEMORY[0x29EDBA0F8];
  componentName = self->_componentName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [v2 stringWithFormat:@"%@, SecurityMode%@", componentName, _propertyNameSuffix];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_msgSend(v3, "stringWithFormat:", @"%@(\n"), v5;

  v7 = [(MRUHardwareInfo *)self->_hardwareInfo description];
  [v6 appendFormat:@"\thardwareInfo: %s\n", objc_msgSend(v7, "UTF8String")];

  ticketName = [(MRUPersonalizationInfo *)self ticketName];
  [v6 appendFormat:@"\tticketName: %s\n", objc_msgSend(ticketName, "UTF8String")];

  v9 = [(MRUPersonalizationInfo *)self tag];
  [v6 appendFormat:@"\ttagName: %s\n", objc_msgSend(v9, "UTF8String")];

  v10 = [(NSData *)self->_nonce description];
  [v6 appendFormat:@"\tnonce: %s\n", objc_msgSend(v10, "UTF8String")];

  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    v12 = [(NSNumber *)tagNumber description];
    [v6 appendFormat:@"\ttagNumber: %s\n", objc_msgSend(v12, "UTF8String")];
  }

  [v6 appendString:@""]);
  v13 = [MEMORY[0x29EDBA0F8] stringWithString:v6];

  return v13;
}

@end