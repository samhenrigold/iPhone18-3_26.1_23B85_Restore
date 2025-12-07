@interface SVXSpeechSynthesisConfigurationStateManager
- (BOOL)updateConfiguration:(id)configuration;
@end

@implementation SVXSpeechSynthesisConfigurationStateManager

- (BOOL)updateConfiguration:(id)configuration
{
  v34 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  locale = [(SVXSpeechSynthesisConfiguration *)self->_currentConfiguration locale];
  locale2 = [configurationCopy locale];
  v7 = locale2;
  if (locale2 && ([locale2 isEqual:locale] & 1) == 0)
  {
    v24 = *MEMORY[0x277CEF098];
    v8 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v29 = "[SVXSpeechSynthesisConfigurationStateManager updateConfiguration:]";
      v30 = 2112;
      v31 = locale;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_2695B9000, v24, OS_LOG_TYPE_INFO, "%s locale changed from %@ to %@.", buf, 0x20u);
    }
  }

  else
  {
    v8 = 0;
  }

  outputVoiceInfo = [(SVXSpeechSynthesisConfiguration *)self->_currentConfiguration outputVoiceInfo];
  outputVoiceInfo2 = [configurationCopy outputVoiceInfo];
  v11 = outputVoiceInfo2;
  if (outputVoiceInfo2 && ([outputVoiceInfo2 isEqual:outputVoiceInfo] & 1) == 0)
  {
    v25 = *MEMORY[0x277CEF098];
    v12 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v29 = "[SVXSpeechSynthesisConfigurationStateManager updateConfiguration:]";
      v30 = 2112;
      v31 = outputVoiceInfo;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_2695B9000, v25, OS_LOG_TYPE_INFO, "%s outputVoiceInfo changed from %@ to %@.", buf, 0x20u);
    }
  }

  else
  {
    v12 = 0;
  }

  audioSessionID = [(SVXSpeechSynthesisConfiguration *)self->_currentConfiguration audioSessionID];
  audioSessionID2 = [configurationCopy audioSessionID];
  if (!audioSessionID2 || (v15 = audioSessionID2, audioSessionID2 == audioSessionID))
  {
    v15 = audioSessionID;
    if ((v8 | v12) != 1)
    {
      v23 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v27 = locale;
    v16 = v8;
    v17 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v29 = "[SVXSpeechSynthesisConfigurationStateManager updateConfiguration:]";
      v30 = 2048;
      v31 = audioSessionID;
      v32 = 2048;
      v33 = v15;
      _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_INFO, "%s audioSessionID changed from %lu to %lu.", buf, 0x20u);
    }

    v8 = v16;
    locale = v27;
  }

  if (v8)
  {
    v18 = v7;
  }

  else
  {
    v18 = locale;
  }

  v19 = [SVXSpeechSynthesisConfiguration alloc];
  if (v12)
  {
    v20 = v11;
  }

  else
  {
    v20 = outputVoiceInfo;
  }

  v21 = [(SVXSpeechSynthesisConfiguration *)v19 initWithLocale:v18 outputVoiceInfo:v20 audioSessionID:v15];
  currentConfiguration = self->_currentConfiguration;
  self->_currentConfiguration = v21;

  v23 = 1;
LABEL_25:

  return v23;
}

@end