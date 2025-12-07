@interface CESRFormatter
- (CESRFormatter)initWithAssetConfig:(id)config;
- (id)formatSpeechTokensWithAutoPunctuation:(id)punctuation;
@end

@implementation CESRFormatter

- (id)formatSpeechTokensWithAutoPunctuation:(id)punctuation
{
  v12 = *MEMORY[0x277D85DE8];
  punctuationCopy = punctuation;
  v5 = [CESRUtilities earTokensForAFTokens:punctuationCopy appendedAutoPunctuation:0];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(_EARFormatter *)self->_formatter formatWords:v5 task:@"Dictation" autoPunctuate:1 recognizeEmoji:1];
    v7 = [CESRUtilities afTokensForEARTokens:v6 removeSpaceBefore:0];
  }

  else
  {
    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CESRFormatter formatSpeechTokensWithAutoPunctuation:]";
      _os_log_error_impl(&dword_225EEB000, v8, OS_LOG_TYPE_ERROR, "%s Method 'formatWords' not found in EARFormatter", &v10, 0xCu);
    }

    v7 = punctuationCopy;
  }

  return v7;
}

- (CESRFormatter)initWithAssetConfig:(id)config
{
  configCopy = config;
  v18.receiver = self;
  v18.super_class = CESRFormatter;
  v6 = [(CESRFormatter *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetConfig, config);
    mEMORY[0x277CDCE98] = [MEMORY[0x277CDCE98] sharedInstance];
    v9 = [mEMORY[0x277CDCE98] installedAssetWithConfig:v7->_assetConfig];

    if (v9 && [v9 length])
    {
      v10 = [v9 stringByAppendingPathComponent:@"mini.json"];
      if (_os_feature_enabled_impl())
      {
        v11 = AFIsUODCapableHorsemanDevice() ^ 1;
      }

      else
      {
        v11 = 0;
      }

      v13 = objc_alloc(MEMORY[0x277D07250]);
      language = [(SFEntitledAssetConfig *)v7->_assetConfig language];
      v15 = [v13 initWithQuasarConfig:v10 overrideConfigFiles:0 supportEmojiRecognition:v11 language:language];
      formatter = v7->_formatter;
      v7->_formatter = v15;

      v12 = v7;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end