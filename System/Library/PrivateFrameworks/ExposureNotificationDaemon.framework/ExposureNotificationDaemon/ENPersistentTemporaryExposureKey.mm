@interface ENPersistentTemporaryExposureKey
- (ENPersistentTemporaryExposureKey)initWithTemporaryExposureKey:(id)key appBundleIdentifier:(id)identifier regionCountryCode:(id)code;
- (id)description;
@end

@implementation ENPersistentTemporaryExposureKey

- (ENPersistentTemporaryExposureKey)initWithTemporaryExposureKey:(id)key appBundleIdentifier:(id)identifier regionCountryCode:(id)code
{
  keyCopy = key;
  identifierCopy = identifier;
  codeCopy = code;
  v19.receiver = self;
  v19.super_class = ENPersistentTemporaryExposureKey;
  v12 = [(ENPersistentTemporaryExposureKey *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, key);
    v14 = [identifierCopy copy];
    appBundleIdentifier = v13->_appBundleIdentifier;
    v13->_appBundleIdentifier = v14;

    v16 = [codeCopy copy];
    regionCountryCode = v13->_regionCountryCode;
    v13->_regionCountryCode = v16;

    v13->_originalReportType = [keyCopy diagnosisReportType];
    v13->_originalVariantOfConcernType = [keyCopy variantOfConcernType];
  }

  return v13;
}

- (id)description
{
  v16 = 0;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSAppendPrintF_safe(&v16, "%@", v4);
  v5 = v16;

  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier)
  {
    v15 = v5;
    NSAppendPrintF_safe(&v15, ", App %@", appBundleIdentifier);
    v7 = v15;

    v5 = v7;
  }

  regionCountryCode = self->_regionCountryCode;
  if (regionCountryCode)
  {
    v14 = v5;
    NSAppendPrintF_safe(&v14, ", Country %@", regionCountryCode);
    v9 = v14;

    v5 = v9;
  }

  v13 = v5;
  NSAppendPrintF_safe(&v13, ", %@", self->_key);
  v10 = v13;
  v11 = v13;

  return v10;
}

@end