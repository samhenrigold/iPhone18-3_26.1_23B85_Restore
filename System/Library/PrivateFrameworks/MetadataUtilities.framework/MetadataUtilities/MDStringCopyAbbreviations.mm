@interface MDStringCopyAbbreviations
@end

@implementation MDStringCopyAbbreviations

void ___MDStringCopyAbbreviations_block_invoke()
{
  Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
  _MDStringCopyAbbreviations_characterSet = Mutable;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetSymbol);
  CFCharacterSetUnion(Mutable, Predefined);
  v2 = _MDStringCopyAbbreviations_characterSet;
  v3 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  CFCharacterSetUnion(v2, v3);
  v4 = _MDStringCopyAbbreviations_characterSet;
  v5 = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);

  CFCharacterSetUnion(v4, v5);
}

@end