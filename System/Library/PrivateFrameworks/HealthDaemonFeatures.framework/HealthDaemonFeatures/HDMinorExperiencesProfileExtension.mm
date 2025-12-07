@interface HDMinorExperiencesProfileExtension
- (HDMinorExperiencesProfileExtension)initWithProfile:(id)profile;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier;
@end

@implementation HDMinorExperiencesProfileExtension

- (HDMinorExperiencesProfileExtension)initWithProfile:(id)profile
{
  v14[4] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = HDMinorExperiencesProfileExtension;
  v5 = [(HDMinorExperiencesProfileExtension *)&v13 init];
  if (v5)
  {
    v6 = [[HDExampleFeatureProfileExtension alloc] initWithProfile:profileCopy];
    v14[0] = v6;
    v7 = [[HDGlucoseExperienceProfileExtension alloc] initWithProfile:profileCopy];
    v14[1] = v7;
    v8 = [[HDRespiratoryRateMeasurementsProfileExtension alloc] initWithProfile:profileCopy];
    v14[2] = v8;
    v9 = [[HDWristTemperatureMeasurementsProfileExtension alloc] initWithProfile:profileCopy];
    v14[3] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
    minorExperiences = v5->_minorExperiences;
    v5->_minorExperiences = v10;
  }

  return v5;
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  minorExperiences = self->_minorExperiences;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__HDMinorExperiencesProfileExtension_featureAvailabilityExtensionForFeatureIdentifier___block_invoke;
  v10[3] = &unk_2796BCCE0;
  v11 = identifierCopy;
  v6 = identifierCopy;
  v7 = [(NSArray *)minorExperiences hk_map:v10];
  firstObject = [v7 firstObject];

  return firstObject;
}

@end