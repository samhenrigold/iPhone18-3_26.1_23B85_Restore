@interface CSVoiceOverSiriSoundsSettingsReader
+ (BOOL)shouldPlaySiriSounds;
@end

@implementation CSVoiceOverSiriSoundsSettingsReader

+ (BOOL)shouldPlaySiriSounds
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getAXSettingsClass_softClass;
  v12 = getAXSettingsClass_softClass;
  if (!getAXSettingsClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAXSettingsClass_block_invoke;
    v14 = &unk_1E865C120;
    v15 = &v9;
    __getAXSettingsClass_block_invoke(buf);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  sharedInstance = [v2 sharedInstance];
  v5 = [sharedInstance valueForKey:@"voiceOverUseSiriSounds"];
  bOOLValue = [v5 BOOLValue];

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "+[CSVoiceOverSiriSoundsSettingsReader shouldPlaySiriSounds]";
    *&buf[12] = 1024;
    *&buf[14] = bOOLValue;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s shouldPlaySiriSounds: %d", buf, 0x12u);
  }

  return bOOLValue;
}

@end