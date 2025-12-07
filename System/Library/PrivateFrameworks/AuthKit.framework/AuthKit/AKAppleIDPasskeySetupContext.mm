@interface AKAppleIDPasskeySetupContext
- (AKAppleIDPasskeySetupContext)initWithAltDSID:(id)d;
- (AKAppleIDPasskeySetupContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAppleIDPasskeySetupContext

- (AKAppleIDPasskeySetupContext)initWithAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKAppleIDPasskeySetupContext;
  v6 = [(AKAppleIDPasskeySetupContext *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_altDSID, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKAppleIDPasskeySetupContext)initWithCoder:(id)coder
{
  v21 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v24.receiver = v3;
  v24.super_class = AKAppleIDPasskeySetupContext;
  v22 = [(AKAppleIDPasskeySetupContext *)&v24 init];
  selfCopy = v22;
  objc_storeStrong(&selfCopy, v22);
  if (v22)
  {
    v13 = location[0];
    v14 = 0x1E696A000uLL;
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v4;
    MEMORY[0x1E69E5920](altDSID);
    v18 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v20 = 0;
    v6 = [v18 setWithObjects:{v17, v15, v16, objc_opt_class(), 0}];
    v19 = &v23;
    v23 = v6;
    v7 = [location[0] decodeObjectOfClasses:v6 forKey:@"_appProvidedData"];
    appProvidedData = selfCopy->_appProvidedData;
    selfCopy->_appProvidedData = v7;
    MEMORY[0x1E69E5920](appProvidedData);
    objc_storeStrong(v19, v20);
  }

  v10 = &selfCopy;
  v12 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v10, obj);
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:selfCopy->_appProvidedData forKey:@"_appProvidedData"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v9[2] = a2;
  v9[1] = zone;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSString *)selfCopy->_altDSID copy];
  v4 = *(v9[0] + 1);
  *(v9[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSDictionary *)selfCopy->_appProvidedData copy];
  v6 = *(v9[0] + 2);
  *(v9[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v8 = MEMORY[0x1E69E5928](v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p {\n\taltDSID: %@, \n\tappProvidedData: %@, \n}>", v5, self, self->_altDSID, self->_appProvidedData];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end