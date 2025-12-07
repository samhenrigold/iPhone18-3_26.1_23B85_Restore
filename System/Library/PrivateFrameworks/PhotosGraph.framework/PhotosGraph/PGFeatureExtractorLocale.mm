@interface PGFeatureExtractorLocale
- (PGFeatureExtractorLocale)init;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorLocale

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v5 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorLocale featureLength](self, "featureLength", entity, error)}];
  featureNames = [(PGFeatureExtractorLocale *)self featureNames];
  currentLocale = [(PGFeatureExtractorLocale *)self currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v9 = [featureNames indexOfObject:localeIdentifier];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  LODWORD(v10) = 1.0;
  [v5 setFloat:v11 atIndex:v10];

  return v5;
}

- (id)featureNames
{
  v4[21] = *MEMORY[0x277D85DE8];
  v4[0] = @"Other";
  v4[1] = @"en_US";
  v4[2] = @"zh_CN";
  v4[3] = @"ja_JP";
  v4[4] = @"pt_BR";
  v4[5] = @"en_GB";
  v4[6] = @"es_MX";
  v4[7] = @"de_DE";
  v4[8] = @"en_CA";
  v4[9] = @"it_IT";
  v4[10] = @"ru_RU";
  v4[11] = @"tr_TR";
  v4[12] = @"fr_FR";
  v4[13] = @"en_AU";
  v4[14] = @"ko_KR";
  v4[15] = @"es_ES";
  v4[16] = @"es_US";
  v4[17] = @"en_IN";
  v4[18] = @"vi_VN";
  v4[19] = @"nl_NL";
  v4[20] = @"th_TH";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:21];

  return v2;
}

- (PGFeatureExtractorLocale)init
{
  v6.receiver = self;
  v6.super_class = PGFeatureExtractorLocale;
  v2 = [(PGFeatureExtractorLocale *)&v6 init];
  if (v2)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    currentLocale = v2->_currentLocale;
    v2->_currentLocale = currentLocale;
  }

  return v2;
}

@end