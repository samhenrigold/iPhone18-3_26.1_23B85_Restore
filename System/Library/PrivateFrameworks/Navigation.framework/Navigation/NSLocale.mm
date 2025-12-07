@interface NSLocale
@end

@implementation NSLocale

void __63__NSLocale_MNExtras___localeOverridesForLocaleWithCountryCode___block_invoke()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"GB";
  v5[0] = *MEMORY[0x1E695DA08];
  v0 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v5[1] = @"MNLocaleUseYardForShortDistance";
  v6[0] = v0;
  v1 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = _localeOverridesForLocaleWithCountryCode__overridesPerCountryCode;
  _localeOverridesForLocaleWithCountryCode__overridesPerCountryCode = v3;
}

@end