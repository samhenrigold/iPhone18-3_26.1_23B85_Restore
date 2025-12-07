@interface NPKAudioPlayer
+ (void)_playSoundsWithIdentifier:(unsigned int)identifier;
@end

@implementation NPKAudioPlayer

+ (void)_playSoundsWithIdentifier:(unsigned int)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      identifierCopy = identifier;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Audio player playing sound %u", buf, 8u);
    }
  }

  if (ringerStateIsSilent_onceToken != -1)
  {
    +[NPKAudioPlayer _playSoundsWithIdentifier:];
  }

  if (ringerStateIsSilent_ringerState)
  {
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x277CBEAC0];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    v8 = [v9 dictionaryWithObjectsAndKeys:{v10, *MEMORY[0x277CBA640], 0}];
  }

  AudioServicesPlaySystemSoundWithOptions();
}

@end