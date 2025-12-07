@interface TypistKoreanHangulJamo
+ (id)leadingConsonants;
+ (id)trailingConsonants;
+ (id)vowels;
- (BOOL)_isConsonantVariant:(unsigned __int16)variant;
- (BOOL)_isVerticalVowel:(unsigned __int16)vowel;
- (TypistKoreanHangulJamo)initWithJamo:(unsigned __int16)jamo position:(unint64_t)position;
- (int)_getJamoType:(unsigned __int16)type withOrderInSyllable:(unint64_t)syllable;
@end

@implementation TypistKoreanHangulJamo

- (TypistKoreanHangulJamo)initWithJamo:(unsigned __int16)jamo position:(unint64_t)position
{
  jamoCopy = jamo;
  v9.receiver = self;
  v9.super_class = TypistKoreanHangulJamo;
  v6 = [(TypistKoreanHangulJamo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_jamo = jamoCopy;
    v6->_hangulJamoPosition = [(TypistKoreanHangulJamo *)v6 _getJamoType:jamoCopy withOrderInSyllable:position];
    v7->_isConsonantVariant = [(TypistKoreanHangulJamo *)v7 _isConsonantVariant:jamoCopy];
    v7->_isVerticalVowel = [(TypistKoreanHangulJamo *)v7 _isVerticalVowel:jamoCopy];
  }

  return v7;
}

- (int)_getJamoType:(unsigned __int16)type withOrderInSyllable:(unint64_t)syllable
{
  typeCopy = type;
  hangulLeadingConsonants = [MEMORY[0x277CCA900] hangulLeadingConsonants];
  v7 = [hangulLeadingConsonants characterIsMember:typeCopy];

  if (!syllable && (v7 & 1) != 0)
  {
    return 0;
  }

  hangulTrailingConsonants = [MEMORY[0x277CCA900] hangulTrailingConsonants];
  v10 = [hangulTrailingConsonants characterIsMember:typeCopy];

  if (syllable && (v10 & 1) != 0)
  {
    return 1;
  }

  hangulHorizontalVowels = [MEMORY[0x277CCA900] hangulHorizontalVowels];
  v12 = [hangulHorizontalVowels characterIsMember:typeCopy];

  if (v12)
  {
    return 2;
  }

  hangulVerticalVowels = [MEMORY[0x277CCA900] hangulVerticalVowels];
  v14 = [hangulVerticalVowels characterIsMember:typeCopy];

  if (v14)
  {
    return 3;
  }

  hangulMixedVowels = [MEMORY[0x277CCA900] hangulMixedVowels];
  v16 = [hangulMixedVowels characterIsMember:typeCopy];

  if (v16)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

- (BOOL)_isConsonantVariant:(unsigned __int16)variant
{
  variantCopy = variant;
  hangulConsonantVariants = [MEMORY[0x277CCA900] hangulConsonantVariants];
  LOBYTE(variantCopy) = [hangulConsonantVariants characterIsMember:variantCopy];

  return variantCopy;
}

- (BOOL)_isVerticalVowel:(unsigned __int16)vowel
{
  vowelCopy = vowel;
  hangulVerticalVowels = [MEMORY[0x277CCA900] hangulVerticalVowels];
  LOBYTE(vowelCopy) = [hangulVerticalVowels characterIsMember:vowelCopy];

  return vowelCopy;
}

+ (id)leadingConsonants
{
  if (leadingConsonants_leadingConsonantsToken != -1)
  {
    +[TypistKoreanHangulJamo leadingConsonants];
  }

  v3 = leadingConsonants_leadingConsonants;

  return v3;
}

void __43__TypistKoreanHangulJamo_leadingConsonants__block_invoke()
{
  v0 = leadingConsonants_leadingConsonants;
  leadingConsonants_leadingConsonants = &unk_28802A468;
}

+ (id)vowels
{
  if (vowels_vowelToken != -1)
  {
    +[TypistKoreanHangulJamo vowels];
  }

  v3 = vowels_hangulVowels;

  return v3;
}

void __32__TypistKoreanHangulJamo_vowels__block_invoke()
{
  v0 = vowels_hangulVowels;
  vowels_hangulVowels = &unk_28802A480;
}

+ (id)trailingConsonants
{
  if (trailingConsonants_trailingConsonantsToken != -1)
  {
    +[TypistKoreanHangulJamo trailingConsonants];
  }

  v3 = trailingConsonants_trailingConsonants;

  return v3;
}

void __44__TypistKoreanHangulJamo_trailingConsonants__block_invoke()
{
  v0 = trailingConsonants_trailingConsonants;
  trailingConsonants_trailingConsonants = &unk_28802A498;
}

@end