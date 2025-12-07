@interface NSCharacterSet(SafariCoreExtras)
+ (id)safari_asciiDigitCharacterSet;
+ (id)safari_lockRelatedEmojiCharacterSet;
+ (id)safari_obscuredPasswordCharacterSets;
+ (id)safari_whitespaceAndNewlineCharacterSet;
@end

@implementation NSCharacterSet(SafariCoreExtras)

+ (id)safari_lockRelatedEmojiCharacterSet
{
  if (safari_lockRelatedEmojiCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(SafariCoreExtras) safari_lockRelatedEmojiCharacterSet];
  }

  v2 = safari_lockRelatedEmojiCharacterSet_emojiRelatedToLocks;

  return v2;
}

+ (id)safari_whitespaceAndNewlineCharacterSet
{
  if (safari_whitespaceAndNewlineCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(SafariCoreExtras) safari_whitespaceAndNewlineCharacterSet];
  }

  v1 = safari_whitespaceAndNewlineCharacterSet_whitespaceAndNewlineCharacterSet;

  return v1;
}

+ (id)safari_asciiDigitCharacterSet
{
  if (safari_asciiDigitCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(SafariCoreExtras) safari_asciiDigitCharacterSet];
  }

  v2 = safari_asciiDigitCharacterSet_asciiDigitCharacterSet;

  return v2;
}

+ (id)safari_obscuredPasswordCharacterSets
{
  v5[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*"];
  v1 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@".", v0}];
  v5[1] = v1;
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"•"];
  v5[2] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

@end