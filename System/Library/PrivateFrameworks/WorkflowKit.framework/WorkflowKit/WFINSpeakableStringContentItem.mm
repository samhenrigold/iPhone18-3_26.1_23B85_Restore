@interface WFINSpeakableStringContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
- (INSpeakableString)speakableString;
- (id)generateObjectRepresentationsForClass:(Class)class options:(id)options error:(id *)error;
@end

@implementation WFINSpeakableStringContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Speakable Strings", @"Speakable Strings");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Speakable String", @"Speakable String");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E6996FC8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

- (id)generateObjectRepresentationsForClass:(Class)class options:(id)options error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == class)
  {
    v7 = MEMORY[0x1E6996EC8];
    speakableString = [(WFINSpeakableStringContentItem *)self speakableString];
    spokenPhrase = [speakableString spokenPhrase];
    v10 = [v7 object:spokenPhrase];
    v12[0] = v10;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (INSpeakableString)speakableString
{
  v3 = objc_opt_class();

  return [(WFINSpeakableStringContentItem *)self objectForClass:v3];
}

@end