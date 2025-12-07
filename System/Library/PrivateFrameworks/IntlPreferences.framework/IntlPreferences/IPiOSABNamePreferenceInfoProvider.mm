@interface IPiOSABNamePreferenceInfoProvider
+ (id)canonicalKeyToValueIdentifierToNumericValueMap;
+ (id)canonicalNameToNativeKeyName;
+ (id)nativeKeyNameToCanonicalKeyName;
+ (id)valueIdentifierToValueMapFromCanonicalKey:(id)key;
+ (id)valueToValueIdentifierMapFromCanonicalKey:(id)key;
@end

@implementation IPiOSABNamePreferenceInfoProvider

+ (id)nativeKeyNameToCanonicalKeyName
{
  if (nativeKeyNameToCanonicalKeyName_onceToken != -1)
  {
    +[IPiOSABNamePreferenceInfoProvider nativeKeyNameToCanonicalKeyName];
  }

  v3 = nativeKeyNameToCanonicalKeyName_sMapping;

  return v3;
}

void __68__IPiOSABNamePreferenceInfoProvider_nativeKeyNameToCanonicalKeyName__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"personNameOrdering";
  v2[1] = @"personShortNameFormat";
  v3[0] = @"nameOrder";
  v3[1] = @"shortNameFormat";
  v2[2] = @"personShortNamePreferNicknames";
  v2[3] = @"personShortNameFormatEnabled";
  v3[2] = @"preferNicknames";
  v3[3] = @"shortNameEnabled";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = nativeKeyNameToCanonicalKeyName_sMapping;
  nativeKeyNameToCanonicalKeyName_sMapping = v0;
}

+ (id)canonicalNameToNativeKeyName
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__IPiOSABNamePreferenceInfoProvider_canonicalNameToNativeKeyName__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (canonicalNameToNativeKeyName_onceToken != -1)
  {
    dispatch_once(&canonicalNameToNativeKeyName_onceToken, block);
  }

  v2 = canonicalNameToNativeKeyName_sMapping;

  return v2;
}

void __65__IPiOSABNamePreferenceInfoProvider_canonicalNameToNativeKeyName__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) nativeKeyNameToCanonicalKeyName];
  v1 = [v3 invertedDictionary];
  v2 = canonicalNameToNativeKeyName_sMapping;
  canonicalNameToNativeKeyName_sMapping = v1;
}

+ (id)valueIdentifierToValueMapFromCanonicalKey:(id)key
{
  keyCopy = key;
  canonicalKeyToValueIdentifierToNumericValueMap = [self canonicalKeyToValueIdentifierToNumericValueMap];
  v6 = [canonicalKeyToValueIdentifierToNumericValueMap objectForKeyedSubscript:keyCopy];

  return v6;
}

+ (id)valueToValueIdentifierMapFromCanonicalKey:(id)key
{
  keyCopy = key;
  canonicalKeyToValueIdentifierToNumericValueMap = [self canonicalKeyToValueIdentifierToNumericValueMap];
  v6 = [canonicalKeyToValueIdentifierToNumericValueMap objectForKeyedSubscript:keyCopy];

  invertedDictionary = [v6 invertedDictionary];

  return invertedDictionary;
}

+ (id)canonicalKeyToValueIdentifierToNumericValueMap
{
  if (canonicalKeyToValueIdentifierToNumericValueMap_onceToken != -1)
  {
    +[IPiOSABNamePreferenceInfoProvider canonicalKeyToValueIdentifierToNumericValueMap];
  }

  v3 = canonicalKeyToValueIdentifierToNumericValueMap_sMapping;

  return v3;
}

void __83__IPiOSABNamePreferenceInfoProvider_canonicalKeyToValueIdentifierToNumericValueMap__block_invoke()
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14[0] = @"nameOrder";
  v12[0] = @"givenFirst";
  v12[1] = @"familyFirst";
  v13[0] = &unk_2841A2410;
  v13[1] = &unk_2841A2428;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v0;
  v14[1] = @"shortNameFormat";
  v10[0] = @"givenNameFamilyInitial";
  v10[1] = @"familyNameGivenInitial";
  v11[0] = &unk_2841A2410;
  v11[1] = &unk_2841A2428;
  v10[2] = @"givenOnly";
  v10[3] = @"familyOnly";
  v11[2] = &unk_2841A2440;
  v11[3] = &unk_2841A2458;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v15[1] = v1;
  v14[2] = @"preferNicknames";
  v8[0] = @"preferNicknamesEnabled";
  v8[1] = @"preferNicknamesDisabled";
  v9[0] = &unk_2841A2428;
  v9[1] = &unk_2841A2410;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v15[2] = v2;
  v14[3] = @"shortNameEnabled";
  v6[0] = @"shortNamesEnabled";
  v6[1] = @"shortNamesDisabled";
  v7[0] = &unk_2841A2428;
  v7[1] = &unk_2841A2410;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v15[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v5 = canonicalKeyToValueIdentifierToNumericValueMap_sMapping;
  canonicalKeyToValueIdentifierToNumericValueMap_sMapping = v4;
}

@end