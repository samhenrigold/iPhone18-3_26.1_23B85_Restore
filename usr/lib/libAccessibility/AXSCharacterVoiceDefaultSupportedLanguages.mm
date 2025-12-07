@interface AXSCharacterVoiceDefaultSupportedLanguages
@end

@implementation AXSCharacterVoiceDefaultSupportedLanguages

CFArrayRef ___AXSCharacterVoiceDefaultSupportedLanguages_block_invoke()
{
  v1[35] = *MEMORY[0x1E69E9840];
  memcpy(v1, off_1E6F45578, 0x118uLL);
  result = CFArrayCreate(*MEMORY[0x1E695E480], v1, 35, MEMORY[0x1E695E9C0]);
  _AXSCharacterVoiceDefaultSupportedLanguages_supportedLanguages = result;
  return result;
}

@end