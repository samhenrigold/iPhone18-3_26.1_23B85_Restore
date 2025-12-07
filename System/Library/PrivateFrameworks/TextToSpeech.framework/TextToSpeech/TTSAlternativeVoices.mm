@interface TTSAlternativeVoices
+ (BOOL)isCombinedVocalizerVoiceIdentifier:(id)identifier;
+ (BOOL)isCompactVocalizerVoiceIdentifier:(id)identifier;
+ (BOOL)isVocalizerVoiceIdentifier:(id)identifier;
+ (id)nameForVoiceIdentifier:(id)identifier;
@end

@implementation TTSAlternativeVoices

+ (BOOL)isVocalizerVoiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"com.apple.ttsbundle"] && (objc_msgSend(self, "isOldSiriVoiceIdentifier:", identifierCopy) & 1) == 0)
  {
    v5 = [self isSiriVoiceIdentifier:identifierCopy] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)isCompactVocalizerVoiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([self isVocalizerVoiceIdentifier:identifierCopy])
  {
    v10 = 0;
    v11 = 0;
    v5 = TTSGetComponentsInNashvilleVoiceIdentifier(identifierCopy, &v11, &v10);
    v6 = v11;
    v7 = v10;
    v8 = v7;
    if (v5)
    {
      LOBYTE(v5) = [v7 isEqualToString:@"compact"];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)isCombinedVocalizerVoiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([self isVocalizerVoiceIdentifier:identifierCopy])
  {
    v9 = 0;
    v10 = 0;
    v5 = TTSGetComponentsInNashvilleVoiceIdentifier(identifierCopy, &v10, &v9);
    v6 = v10;
    if (v9)
    {
      v7 = !v5;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)nameForVoiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[TTSAXResourceManager sharedInstance];
  v6 = [v5 resourceWithVoiceId:identifierCopy];

  LODWORD(self) = [self isSiriVoiceIdentifier:identifierCopy];
  if (self)
  {
    localizedName = [v6 localizedName];
  }

  else
  {
    localizedName = 0;
  }

  return localizedName;
}

@end