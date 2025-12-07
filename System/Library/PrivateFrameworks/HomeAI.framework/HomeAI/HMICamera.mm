@interface HMICamera
- (BOOL)isEqual:(id)equal;
- (HMICamera)initWithCoder:(id)coder;
- (HMICamera)initWithIdentifier:(id)identifier name:(id)name manufacturer:(id)manufacturer model:(id)model firmwareVersion:(id)version hasBattery:(BOOL)battery;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMICamera

- (HMICamera)initWithIdentifier:(id)identifier name:(id)name manufacturer:(id)manufacturer model:(id)model firmwareVersion:(id)version hasBattery:(BOOL)battery
{
  identifierCopy = identifier;
  nameCopy = name;
  manufacturerCopy = manufacturer;
  modelCopy = model;
  versionCopy = version;
  if (!identifierCopy)
  {
    [HMICamera initWithIdentifier:name:manufacturer:model:firmwareVersion:hasBattery:];
    goto LABEL_7;
  }

  if (!nameCopy)
  {
LABEL_7:
    v32 = [HMICamera initWithIdentifier:name:manufacturer:model:firmwareVersion:hasBattery:];
    return +[(HMICamera *)v32];
  }

  v19 = versionCopy;
  v34.receiver = self;
  v34.super_class = HMICamera;
  v20 = [(HMICamera *)&v34 init];
  if (v20)
  {
    v21 = [identifierCopy copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v23;

    v25 = [manufacturerCopy copy];
    manufacturer = v20->_manufacturer;
    v20->_manufacturer = v25;

    v27 = [modelCopy copy];
    model = v20->_model;
    v20->_model = v27;

    v29 = [v19 copy];
    firmwareVersion = v20->_firmwareVersion;
    v20->_firmwareVersion = v29;

    v20->_hasBattery = battery;
  }

  return v20;
}

- (id)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMICamera *)self identifier];
  v18 = [v3 initWithName:? value:?];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMICamera *)self name];
  v19 = [v4 initWithName:? value:?];
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  manufacturer = [(HMICamera *)self manufacturer];
  v20 = [v5 initWithName:? value:?];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  model = [(HMICamera *)self model];
  v21 = [v7 initWithName:? value:?];
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  firmwareVersion = [(HMICamera *)self firmwareVersion];
  v22 = [v9 initWithName:? value:?];
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = MEMORY[0x277CCABB0];
  [(HMICamera *)self hasBattery];
  v13 = [v12 numberWithBool:?];
  v23 = [v11 initWithName:? value:?];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(HMICamera *)self identifier];
      identifier2 = [(HMICamera *)v5 identifier];
      v8 = HMFEqualObjects();

      name = [(HMICamera *)self name];
      name2 = [(HMICamera *)v5 name];
      v11 = HMFEqualObjects();

      v12 = v8 & v11;
      manufacturer = [(HMICamera *)self manufacturer];
      manufacturer2 = [(HMICamera *)v5 manufacturer];
      v15 = HMFEqualObjects();

      model = [(HMICamera *)self model];
      model2 = [(HMICamera *)v5 model];
      v18 = HMFEqualObjects();

      v19 = v12 & v15 & v18;
      firmwareVersion = [(HMICamera *)self firmwareVersion];
      firmwareVersion2 = [(HMICamera *)v5 firmwareVersion];
      v22 = HMFEqualObjects();

      hasBattery = [(HMICamera *)self hasBattery];
      LOBYTE(firmwareVersion) = [(HMICamera *)v5 hasBattery];

      v24 = v19 & v22 & (hasBattery ^ firmwareVersion ^ 1);
    }

    else
    {
      v24 = 0;
    }
  }

  return v24;
}

- (unint64_t)hash
{
  identifier = [(HMICamera *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (HMICamera)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = NSStringFromSelector(sel_identifier);
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];

  objc_opt_class();
  v7 = NSStringFromSelector(sel_name);
  v8 = [coderCopy decodeObjectOfClass:? forKey:?];

  objc_opt_class();
  v9 = NSStringFromSelector(sel_manufacturer);
  v10 = [coderCopy decodeObjectOfClass:? forKey:?];

  objc_opt_class();
  v11 = NSStringFromSelector(sel_model);
  v12 = [coderCopy decodeObjectOfClass:? forKey:?];

  objc_opt_class();
  v13 = NSStringFromSelector(sel_firmwareVersion);
  v14 = [coderCopy decodeObjectOfClass:? forKey:?];

  v15 = NSStringFromSelector(sel_hasBattery);
  [coderCopy decodeBoolForKey:?];

  v16 = [HMICamera initWithIdentifier:"initWithIdentifier:name:manufacturer:model:firmwareVersion:hasBattery:" name:? manufacturer:? model:? firmwareVersion:? hasBattery:?];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMICamera *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:? forKey:?];

  name = [(HMICamera *)self name];
  v8 = NSStringFromSelector(sel_name);
  [coderCopy encodeObject:? forKey:?];

  manufacturer = [(HMICamera *)self manufacturer];
  v10 = NSStringFromSelector(sel_manufacturer);
  [coderCopy encodeObject:? forKey:?];

  model = [(HMICamera *)self model];
  v12 = NSStringFromSelector(sel_model);
  [coderCopy encodeObject:? forKey:?];

  firmwareVersion = [(HMICamera *)self firmwareVersion];
  v14 = NSStringFromSelector(sel_firmwareVersion);
  [coderCopy encodeObject:? forKey:?];

  [(HMICamera *)self hasBattery];
  v15 = NSStringFromSelector(sel_hasBattery);
  [coderCopy encodeBool:? forKey:?];
}

@end