@interface IMTranscriptEffectHelper
+ (BOOL)effectIdentifierIsFullScreenMoment:(id)moment;
+ (BOOL)effectIdentifierIsImpactEffect:(id)effect;
+ (BOOL)identifierIsEffectIdentifier:(id)identifier;
+ (BOOL)shouldShowReplayButtonForEffectIdentifier:(id)identifier;
+ (id)allEffectIdentifiers;
+ (id)findIdentifierByMathcingPartialSufix:(id)sufix;
+ (id)identifierNameMap;
+ (id)nameForEffectIdentifier:(id)identifier;
+ (id)replayStringForEffectIdentifier:(id)identifier;
+ (id)replayStringMap;
+ (id)sendWithEffectStringMap;
+ (id)sendWithStringForEffectIdentifier:(id)identifier;
@end

@implementation IMTranscriptEffectHelper

+ (id)allEffectIdentifiers
{
  if (qword_1EB2EA2A8 != -1)
  {
    sub_1A84E0C78();
  }

  v3 = qword_1EB2EA2A0;

  return v3;
}

+ (BOOL)identifierIsEffectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierNameMap = [self identifierNameMap];
  v6 = [identifierNameMap objectForKey:identifierCopy];

  return v6 != 0;
}

+ (BOOL)effectIdentifierIsFullScreenMoment:(id)moment
{
  momentCopy = moment;
  if ([self identifierIsEffectIdentifier:momentCopy])
  {
    [momentCopy rangeOfString:@"com.apple.messages.effect"];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)effectIdentifierIsImpactEffect:(id)effect
{
  effectCopy = effect;
  if ([self identifierIsEffectIdentifier:effectCopy])
  {
    [effectCopy rangeOfString:@"com.apple.MobileSMS.expressivesend"];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)identifierNameMap
{
  if (qword_1EB2EA2B8 != -1)
  {
    sub_1A84E0C8C();
  }

  v3 = qword_1EB2EA2B0;

  return v3;
}

+ (id)replayStringMap
{
  if (qword_1EB2EA2C8 != -1)
  {
    sub_1A84E0CA0();
  }

  v3 = qword_1EB2EA2C0;

  return v3;
}

+ (id)sendWithEffectStringMap
{
  if (qword_1EB2EA2D8 != -1)
  {
    sub_1A84E0CB4();
  }

  v3 = qword_1EB2EA2D0;

  return v3;
}

+ (id)findIdentifierByMathcingPartialSufix:(id)sufix
{
  v16 = *MEMORY[0x1E69E9840];
  sufixCopy = sufix;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allEffectIdentifiers = [self allEffectIdentifiers];
  v6 = [allEffectIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allEffectIdentifiers);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 localizedCaseInsensitiveContainsString:sufixCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allEffectIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)nameForEffectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierNameMap = [self identifierNameMap];
  v6 = [identifierNameMap objectForKey:identifierCopy];

  return v6;
}

+ (id)replayStringForEffectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  replayStringMap = [self replayStringMap];
  v6 = [replayStringMap objectForKey:identifierCopy];

  return v6;
}

+ (id)sendWithStringForEffectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sendWithEffectStringMap = [self sendWithEffectStringMap];
  v6 = [sendWithEffectStringMap objectForKey:identifierCopy];

  return v6;
}

+ (BOOL)shouldShowReplayButtonForEffectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  isFeatureEnabled = [self isFeatureEnabled];
  LOBYTE(self) = 0;
  if (identifierCopy && isFeatureEnabled)
  {
    LODWORD(self) = [*MEMORY[0x1E69A7D78] isEqualToString:identifierCopy] ^ 1;
  }

  return self;
}

@end