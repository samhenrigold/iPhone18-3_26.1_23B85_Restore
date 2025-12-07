@interface HDBackgroundFeatureDeliveryAnalyticsEvent
- (HDBackgroundFeatureDeliveryAnalyticsEvent)initWithFeatureIdentifier:(id)identifier eventType:(id)type countryCode:(id)code countryCodeProvenance:(int64_t)provenance errorCategory:(id)category errorDetail:(id)detail;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HDBackgroundFeatureDeliveryAnalyticsEvent

- (HDBackgroundFeatureDeliveryAnalyticsEvent)initWithFeatureIdentifier:(id)identifier eventType:(id)type countryCode:(id)code countryCodeProvenance:(int64_t)provenance errorCategory:(id)category errorDetail:(id)detail
{
  identifierCopy = identifier;
  typeCopy = type;
  codeCopy = code;
  categoryCopy = category;
  detailCopy = detail;
  v31.receiver = self;
  v31.super_class = HDBackgroundFeatureDeliveryAnalyticsEvent;
  v19 = [(HDBackgroundFeatureDeliveryAnalyticsEvent *)&v31 init];
  if (v19)
  {
    v20 = objc_msgSend_copy(identifierCopy);
    featureIdentifier = v19->_featureIdentifier;
    v19->_featureIdentifier = v20;

    v22 = objc_msgSend_copy(typeCopy);
    eventType = v19->_eventType;
    v19->_eventType = v22;

    v24 = objc_msgSend_copy(codeCopy);
    countryCode = v19->_countryCode;
    v19->_countryCode = v24;

    v19->_countryCodeProvenance = provenance;
    v26 = objc_msgSend_copy(categoryCopy);
    errorCategory = v19->_errorCategory;
    v19->_errorCategory = v26;

    v28 = objc_msgSend_copy(detailCopy);
    errorDetail = v19->_errorDetail;
    v19->_errorDetail = v28;
  }

  return v19;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v20[3] = *MEMORY[0x277D85DE8];
  v19[0] = @"eventType";
  v19[1] = @"featureIdentifier";
  featureIdentifier = self->_featureIdentifier;
  v20[0] = self->_eventType;
  v20[1] = featureIdentifier;
  v19[2] = @"provenance";
  sourceCopy = source;
  v7 = NSStringFromHKOnboardingCompletionCountryCodeProvenance();
  v20[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v9 = [v8 mutableCopy];

  [v9 setObject:self->_errorCategory forKeyedSubscript:@"errorCategory"];
  [v9 setObject:self->_errorDetail forKeyedSubscript:@"errorDetail"];
  v10 = [MEMORY[0x277D73660] clientWithIdentifier:275];
  v11 = [v10 rolloutIdentifiersWithNamespaceName:*MEMORY[0x277CCC5B0]];
  factorPackId = [v11 factorPackId];
  [v9 setObject:factorPackId forKeyedSubscript:@"OTAFactorPackID"];

  environmentDataSource = [sourceCopy environmentDataSource];

  isImproveHealthAndActivityEnabled = [environmentDataSource isImproveHealthAndActivityEnabled];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:isImproveHealthAndActivityEnabled];
  [v9 setObject:v15 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];

  countryCode = self->_countryCode;
  if (countryCode)
  {
    [v9 setObject:countryCode forKeyedSubscript:@"countryCode"];
  }

  v17 = objc_msgSend_copy(v9);

  return v17;
}

@end