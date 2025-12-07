@interface HDHealthOntologyCountryConfiguration
- (HDHealthOntologyCountryConfiguration)initWithCountryCode:(id)code supportedCodingSystems:(id)systems analyticsOptions:(unint64_t)options;
@end

@implementation HDHealthOntologyCountryConfiguration

- (HDHealthOntologyCountryConfiguration)initWithCountryCode:(id)code supportedCodingSystems:(id)systems analyticsOptions:(unint64_t)options
{
  codeCopy = code;
  systemsCopy = systems;
  v16.receiver = self;
  v16.super_class = HDHealthOntologyCountryConfiguration;
  v10 = [(HDHealthOntologyCountryConfiguration *)&v16 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(codeCopy);
    countryCode = v10->_countryCode;
    v10->_countryCode = v11;

    v13 = objc_msgSend_copy(systemsCopy);
    supportedCodingSystems = v10->_supportedCodingSystems;
    v10->_supportedCodingSystems = v13;

    v10->_analyticsOptions = options;
  }

  return v10;
}

@end