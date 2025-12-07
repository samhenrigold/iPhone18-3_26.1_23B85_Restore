@interface HDConceptResolutionConfiguration
- (HDConceptResolutionConfiguration)init;
- (HDConceptResolutionConfiguration)initWithCountryCode:(id)code recordCategoryType:(int64_t)type options:(unint64_t)options;
- (id)description;
@end

@implementation HDConceptResolutionConfiguration

- (HDConceptResolutionConfiguration)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDConceptResolutionConfiguration)initWithCountryCode:(id)code recordCategoryType:(int64_t)type options:(unint64_t)options
{
  codeCopy = code;
  v13.receiver = self;
  v13.super_class = HDConceptResolutionConfiguration;
  v9 = [(HDConceptResolutionConfiguration *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(codeCopy);
    countryCode = v9->_countryCode;
    v9->_countryCode = v10;

    v9->_recordCategoryType = type;
    v9->_options = options;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  countryCode = self->_countryCode;
  v6 = HKStringFromMedicalRecordCategoryType();
  v7 = [v3 stringWithFormat:@"<%@:%p %@ /'%@/'>", v4, self, countryCode, v6];

  return v7;
}

@end