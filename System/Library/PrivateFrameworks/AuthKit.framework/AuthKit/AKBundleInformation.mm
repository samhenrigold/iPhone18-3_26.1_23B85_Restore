@interface AKBundleInformation
- (AKBundleInformation)initWithBundleIdentifier:(id)identifier bundleName:(id)name bundleDescription:(id)description bundleType:(unint64_t)type otherInfo:(id)info;
- (AKBundleInformation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKBundleInformation

- (AKBundleInformation)initWithBundleIdentifier:(id)identifier bundleName:(id)name bundleDescription:(id)description bundleType:(unint64_t)type otherInfo:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v19 = 0;
  objc_storeStrong(&v19, name);
  v18 = 0;
  objc_storeStrong(&v18, description);
  typeCopy = type;
  v16 = 0;
  objc_storeStrong(&v16, info);
  v7 = selfCopy;
  selfCopy = 0;
  v15.receiver = v7;
  v15.super_class = AKBundleInformation;
  v14 = [(AKBundleInformation *)&v15 init];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    objc_storeStrong(&selfCopy->_bundleName, v19);
    objc_storeStrong(&selfCopy->_bundleIdentifier, location[0]);
    objc_storeStrong(&selfCopy->_bundleDescription, v18);
    selfCopy->_bundleType = typeCopy;
    objc_storeStrong(&selfCopy->_otherInfo, v16);
  }

  v9 = _objc_retain(selfCopy);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_bundleName forKey:@"_bundleName"];
  [location[0] encodeObject:selfCopy->_bundleIdentifier forKey:@"_bundleIdentifier"];
  [location[0] encodeObject:selfCopy->_bundleDescription forKey:@"_bundleDescription"];
  v3 = location[0];
  v4 = [NSNumber numberWithUnsignedInteger:selfCopy->_bundleType];
  [v3 encodeObject:? forKey:?];
  _objc_release(v4);
  [location[0] encodeObject:selfCopy->_otherInfo forKey:@"_otherInfo"];
  objc_storeStrong(location, 0);
}

- (AKBundleInformation)initWithCoder:(id)coder
{
  v30 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v31 = [(AKBundleInformation *)v3 init];
  selfCopy = v31;
  objc_storeStrong(&selfCopy, v31);
  if (v31)
  {
    v19 = location[0];
    v24 = AKBiometricRatchetController_ptr;
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bundleName"];
    bundleName = selfCopy->_bundleName;
    selfCopy->_bundleName = v4;
    _objc_release(bundleName);
    v20 = location[0];
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    bundleIdentifier = selfCopy->_bundleIdentifier;
    selfCopy->_bundleIdentifier = v6;
    _objc_release(bundleIdentifier);
    v21 = location[0];
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bundleDescription"];
    bundleDescription = selfCopy->_bundleDescription;
    selfCopy->_bundleDescription = v8;
    _objc_release(bundleDescription);
    v22 = location[0];
    v23 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bundleType"];
    integerValue = [v23 integerValue];
    v11 = v23;
    selfCopy->_bundleType = integerValue;
    _objc_release(v11);
    v27 = NSSet;
    v26 = objc_opt_class();
    v25 = objc_opt_class();
    v29 = 0;
    v12 = [NSSet setWithObjects:v26, v25, objc_opt_class(), 0];
    v28 = &v32;
    v32 = v12;
    v13 = [location[0] decodeObjectOfClasses:v12 forKey:@"_otherInfo"];
    otherInfo = selfCopy->_otherInfo;
    selfCopy->_otherInfo = v13;
    _objc_release(otherInfo);
    objc_storeStrong(v28, v29);
  }

  v16 = &selfCopy;
  v18 = _objc_retain(selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v16, obj);
  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v13[2] = a2;
  v13[1] = zone;
  v13[0] = objc_alloc_init(AKBundleInformation);
  v3 = [(NSString *)selfCopy->_bundleName copy];
  v4 = *(v13[0] + 2);
  *(v13[0] + 2) = v3;
  _objc_release(v4);
  v5 = [(NSString *)selfCopy->_bundleIdentifier copy];
  v6 = *(v13[0] + 1);
  *(v13[0] + 1) = v5;
  _objc_release(v6);
  v7 = [(NSString *)selfCopy->_bundleDescription copy];
  v8 = *(v13[0] + 3);
  *(v13[0] + 3) = v7;
  _objc_release(v8);
  *(v13[0] + 4) = selfCopy->_bundleType;
  v9 = [(NSDictionary *)selfCopy->_otherInfo copy];
  v10 = *(v13[0] + 5);
  *(v13[0] + 5) = v9;
  _objc_release(v10);
  v12 = _objc_retain(v13[0]);
  objc_storeStrong(v13, 0);
  return v12;
}

@end