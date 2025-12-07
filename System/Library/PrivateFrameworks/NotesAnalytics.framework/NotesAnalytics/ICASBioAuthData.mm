@interface ICASBioAuthData
- (ICASBioAuthData)initWithBioAuthType:(id)type;
- (id)toDict;
@end

@implementation ICASBioAuthData

- (ICASBioAuthData)initWithBioAuthType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = ICASBioAuthData;
  v6 = [(ICASBioAuthData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bioAuthType, type);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"bioAuthType";
  bioAuthType = [(ICASBioAuthData *)self bioAuthType];
  if (bioAuthType)
  {
    bioAuthType2 = [(ICASBioAuthData *)self bioAuthType];
  }

  else
  {
    bioAuthType2 = objc_opt_new();
  }

  v5 = bioAuthType2;
  v9[0] = bioAuthType2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end