@interface SRCSSmartReplace
+ (BOOL)isCharacterSmartReplaceExempt:(unsigned __int16)exempt isPreviousCharacter:(BOOL)character;
@end

@implementation SRCSSmartReplace

+ (BOOL)isCharacterSmartReplaceExempt:(unsigned __int16)exempt isPreviousCharacter:(BOOL)character
{
  exemptCopy = exempt;
  if (character)
  {
    if (_getPreSmartSet_onceToken != -1)
    {
      +[SRCSSmartReplace isCharacterSmartReplaceExempt:isPreviousCharacter:];
    }

    v5 = &_getPreSmartSet___preSmartSet;
  }

  else
  {
    if (_getPostSmartSet_onceToken != -1)
    {
      +[SRCSSmartReplace isCharacterSmartReplaceExempt:isPreviousCharacter:];
    }

    v5 = &_getPostSmartSet___postSmartSet;
  }

  v6 = *v5;

  return [v6 characterIsMember:exemptCopy];
}

@end