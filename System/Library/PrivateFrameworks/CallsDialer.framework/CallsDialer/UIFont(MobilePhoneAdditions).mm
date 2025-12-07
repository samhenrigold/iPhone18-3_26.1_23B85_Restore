@interface UIFont(MobilePhoneAdditions)
+ (id)_thinSystemFontWithDialerCharacteristicsOfSize:()MobilePhoneAdditions;
+ (id)phPreferredBoldFontForTextStyle:()MobilePhoneAdditions;
+ (id)phPreferredFontForTextStyle:()MobilePhoneAdditions;
+ (id)phPreferredItalicFontForTextStyle:()MobilePhoneAdditions;
+ (id)phPreferredTightLeadingFontForTextStyle:()MobilePhoneAdditions;
- (id)withCaseSensitiveAttribute;
@end

@implementation UIFont(MobilePhoneAdditions)

+ (id)phPreferredFontForTextStyle:()MobilePhoneAdditions
{
  v0 = [MEMORY[0x277D74310] phPreferredFontDescriptorForTextStyle:?];
  v1 = [MEMORY[0x277D74300] fontWithDescriptor:v0 size:0.0];
  withCaseSensitiveAttribute = [v1 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

+ (id)phPreferredBoldFontForTextStyle:()MobilePhoneAdditions
{
  v3 = [MEMORY[0x277D74310] phPreferredFontDescriptorForTextStyle:a3 addingSymbolicTraits:2];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];
  withCaseSensitiveAttribute = [v4 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

+ (id)phPreferredItalicFontForTextStyle:()MobilePhoneAdditions
{
  v3 = [MEMORY[0x277D74310] phPreferredFontDescriptorForTextStyle:a3 addingSymbolicTraits:1];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];
  withCaseSensitiveAttribute = [v4 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

+ (id)phPreferredTightLeadingFontForTextStyle:()MobilePhoneAdditions
{
  v3 = [MEMORY[0x277D74310] phPreferredFontDescriptorForTextStyle:a3 addingSymbolicTraits:0x8000];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];
  withCaseSensitiveAttribute = [v4 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

+ (id)_thinSystemFontWithDialerCharacteristicsOfSize:()MobilePhoneAdditions
{
  v0 = [MEMORY[0x277D74300] _thinSystemFontOfSize:?];
  withCaseSensitiveAttribute = [v0 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

- (id)withCaseSensitiveAttribute
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D74338];
  v2 = *MEMORY[0x277D74388];
  v10[0] = *MEMORY[0x277D74398];
  v10[1] = v2;
  v11[0] = &unk_285537D10;
  v11[1] = &unk_285537D28;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v12 = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v14[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  fontDescriptor = [self fontDescriptor];
  v7 = [fontDescriptor fontDescriptorByAddingAttributes:v5];

  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];

  return v8;
}

@end