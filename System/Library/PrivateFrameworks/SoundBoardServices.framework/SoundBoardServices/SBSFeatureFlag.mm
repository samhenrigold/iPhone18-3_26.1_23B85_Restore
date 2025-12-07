@interface SBSFeatureFlag
- (NSDictionary)dictionaryRepresentation;
- (SBSFeatureFlag)initWith:(id)with andFeature:(id)feature andValue:(id)value;
- (SBSFeatureFlag)initWithDictionaryRepresentation:(id)representation;
@end

@implementation SBSFeatureFlag

- (NSDictionary)dictionaryRepresentation
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *&self->_domain;
  v5[0] = @"domain";
  v5[1] = @"feature";
  v6 = v2;
  v5[2] = @"value";
  value = self->_value;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:v5 count:3];

  return v3;
}

- (SBSFeatureFlag)initWithDictionaryRepresentation:(id)representation
{
  v24 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v19.receiver = self;
  v19.super_class = SBSFeatureFlag;
  v5 = [(SBSFeatureFlag *)&v19 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [representationCopy objectForKeyedSubscript:@"domain"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = [representationCopy objectForKeyedSubscript:@"feature"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  v8 = [representationCopy objectForKeyedSubscript:@"value"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [representationCopy objectForKeyedSubscript:@"domain"];
    domain = v5->_domain;
    v5->_domain = v10;

    v12 = [representationCopy objectForKeyedSubscript:@"feature"];
    feature = v5->_feature;
    v5->_feature = v12;

    v14 = [representationCopy objectForKeyedSubscript:@"value"];
    value = v5->_value;
    v5->_value = v14;

LABEL_6:
    v16 = v5;
    goto LABEL_12;
  }

LABEL_9:
  v17 = _SBSLoggingFacility();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[SBSFeatureFlag initWithDictionaryRepresentation:]";
    v22 = 2112;
    v23 = representationCopy;
    _os_log_error_impl(&dword_26B246000, v17, OS_LOG_TYPE_ERROR, "%s: Trying to set feature flag with incorrect entry: %@", buf, 0x16u);
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (SBSFeatureFlag)initWith:(id)with andFeature:(id)feature andValue:(id)value
{
  withCopy = with;
  featureCopy = feature;
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = SBSFeatureFlag;
  v12 = [(SBSFeatureFlag *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_domain, with);
    objc_storeStrong(&v13->_feature, feature);
    objc_storeStrong(&v13->_value, value);
  }

  return v13;
}

@end