@interface SpeakTypingServices
+ (id)sharedInstance;
- (AXUIClient)speakTypingClient;
- (BOOL)notifySpeakServicesForAttributedSpeechOutput:(id)output;
- (BOOL)notifySpeakServicesForSpeakAutoCorrections:(id)corrections forCurrentInputMode:(id)mode;
- (BOOL)notifySpeakServicesForSpeechOutput:(id)output volume:(double)volume speakingRate:(double)rate;
- (BOOL)notifySpeakServicesToFeedbackQuickTypePrediction:(id)prediction forCurrentInputMode:(id)mode;
- (BOOL)notifySpeakServicesToInitializeServerConnection;
- (BOOL)notifySpeakServicesToStopSpeaking;
- (BOOL)notifySpeakServicesToStopSpeakingAutocorrections;
- (BOOL)verifyTestingConnection;
- (SpeakTypingServices)init;
- (id)_clientIdentifier;
- (id)lastSpokenString;
- (id)lastUsedVoiceIdentifier;
- (void)clearLastSpokenString;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client;
- (void)dealloc;
- (void)initializeServerConnection;
- (void)setLetterFeedbackEnabled:(BOOL)enabled;
- (void)setPhoneticFeedbackEnabled:(BOOL)enabled;
- (void)setVoiceIdentifier:(id)identifier forLanguage:(id)language;
- (void)setWordFeedbackEnabled:(BOOL)enabled;
@end

@implementation SpeakTypingServices

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SpeakTypingServices sharedInstance];
  }

  v3 = sharedInstance__Shared;

  return v3;
}

uint64_t __37__SpeakTypingServices_sharedInstance__block_invoke()
{
  sharedInstance__Shared = objc_alloc_init(SpeakTypingServices);

  return MEMORY[0x2821F96F8]();
}

- (SpeakTypingServices)init
{
  v6.receiver = self;
  v6.super_class = SpeakTypingServices;
  v2 = [(SpeakTypingServices *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
  [speakTypingClient setDelegate:0];

  v4.receiver = self;
  v4.super_class = SpeakTypingServices;
  [(SpeakTypingServices *)&v4 dealloc];
}

- (AXUIClient)speakTypingClient
{
  speakTypingClient = self->_speakTypingClient;
  if (!speakTypingClient)
  {
    [(SpeakTypingServices *)self initializeServerConnection];
    speakTypingClient = self->_speakTypingClient;
  }

  return speakTypingClient;
}

- (void)clearLastSpokenString
{
  speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
  v2 = [speakTypingClient sendSynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:9 error:0];
  v3 = [v2 objectForKey:@"result"];
}

- (void)setVoiceIdentifier:(id)identifier forLanguage:(id)language
{
  v12[2] = *MEMORY[0x277D85DE8];
  languageCopy = language;
  identifierCopy = identifier;
  speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
  v11[0] = @"voiceIdentifier";
  v11[1] = @"language";
  v12[0] = identifierCopy;
  v12[1] = languageCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v10 = [speakTypingClient sendSynchronousMessage:v9 withIdentifier:10 error:0];
}

- (id)lastUsedVoiceIdentifier
{
  speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
  v3 = [speakTypingClient sendSynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:8 error:0];
  v4 = [v3 objectForKey:@"result"];

  return v4;
}

- (id)lastSpokenString
{
  speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
  v3 = [speakTypingClient sendSynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:7 error:0];
  v4 = [v3 objectForKey:@"result"];

  return v4;
}

- (BOOL)verifyTestingConnection
{
  speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
  v3 = [speakTypingClient sendSynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:15 error:0];
  v4 = [v3 objectForKey:@"result"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setWordFeedbackEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10[1] = *MEMORY[0x277D85DE8];
  speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
  v9 = @"enabled";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [speakTypingClient sendSynchronousMessage:v6 withIdentifier:12 error:0];
  v8 = [v7 objectForKey:@"result"];
}

- (void)setPhoneticFeedbackEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10[1] = *MEMORY[0x277D85DE8];
  speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
  v9 = @"enabled";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [speakTypingClient sendSynchronousMessage:v6 withIdentifier:13 error:0];
  v8 = [v7 objectForKey:@"result"];
}

- (void)setLetterFeedbackEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10[1] = *MEMORY[0x277D85DE8];
  speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
  v9 = @"enabled";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [speakTypingClient sendSynchronousMessage:v6 withIdentifier:11 error:0];
  v8 = [v7 objectForKey:@"result"];
}

- (BOOL)notifySpeakServicesToStopSpeaking
{
  speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
  [speakTypingClient sendAsynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:5 targetAccessQueue:0 completion:0];

  return 1;
}

- (BOOL)notifySpeakServicesToStopSpeakingAutocorrections
{
  speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
  [speakTypingClient sendAsynchronousMessage:&unk_287BD1608 withIdentifier:5 targetAccessQueue:0 completion:0];

  return 1;
}

- (BOOL)notifySpeakServicesToInitializeServerConnection
{
  if (!self->_speakTypingClient)
  {
    [(SpeakTypingServices *)self initializeServerConnection];
  }

  return 1;
}

- (BOOL)notifySpeakServicesForAttributedSpeechOutput:(id)output
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (output)
  {
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:output requiringSecureCoding:1 error:0];
    speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
    v9 = *MEMORY[0x277CE7C80];
    v10[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [speakTypingClient sendAsynchronousMessage:v7 withIdentifier:6 targetAccessQueue:0 completion:0];
  }

  return output != 0;
}

- (BOOL)notifySpeakServicesForSpeechOutput:(id)output volume:(double)volume speakingRate:(double)rate
{
  v17[3] = *MEMORY[0x277D85DE8];
  if (output)
  {
    outputCopy = output;
    speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
    v11 = *MEMORY[0x277CE7C80];
    v17[0] = outputCopy;
    v16[0] = v11;
    v16[1] = @"AXSpeakTypingPayloadKeyVolume";
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:volume];
    v17[1] = v12;
    v16[2] = @"AXSpeakTypingPayloadKeyRate";
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
    v17[2] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

    [speakTypingClient sendAsynchronousMessage:v14 withIdentifier:6 targetAccessQueue:0 completion:0];
  }

  return output != 0;
}

- (BOOL)notifySpeakServicesForSpeakAutoCorrections:(id)corrections forCurrentInputMode:(id)mode
{
  v13[2] = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v7 = modeCopy;
  if (corrections)
  {
    if (!modeCopy)
    {
      v7 = &stru_287BD1328;
    }

    correctionsCopy = corrections;
    speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
    v12[0] = *MEMORY[0x277CE7C80];
    v12[1] = @"AXSpeakTypingPayloadKeyLanguage";
    v13[0] = correctionsCopy;
    v13[1] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

    [speakTypingClient sendAsynchronousMessage:v10 withIdentifier:4 targetAccessQueue:0 completion:0];
  }

  return corrections != 0;
}

- (BOOL)notifySpeakServicesToFeedbackQuickTypePrediction:(id)prediction forCurrentInputMode:(id)mode
{
  v13[2] = *MEMORY[0x277D85DE8];
  predictionCopy = prediction;
  modeCopy = mode;
  if (UIAccessibilityIsVoiceOverRunning() || ![predictionCopy length])
  {
    v10 = 0;
  }

  else
  {
    speakTypingClient = [(SpeakTypingServices *)self speakTypingClient];
    v12[0] = *MEMORY[0x277CE7C78];
    v12[1] = @"AXSpeakTypingPayloadKeyLanguage";
    v13[0] = predictionCopy;
    v13[1] = modeCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    [speakTypingClient sendAsynchronousMessage:v9 withIdentifier:3 targetAccessQueue:0 completion:0];

    v10 = 1;
  }

  return v10;
}

- (id)_clientIdentifier
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processIdentifier = [processInfo processIdentifier];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:processIdentifier];
  v6 = [v4 stringWithFormat:@"SpeakTypingClientIdentifier-%@", v5];

  return v6;
}

- (void)initializeServerConnection
{
  if (!self->_speakTypingClient)
  {
    v4 = objc_alloc(MEMORY[0x277CE7740]);
    _clientIdentifier = [(SpeakTypingServices *)self _clientIdentifier];
    v6 = [v4 initWithIdentifier:_clientIdentifier serviceBundleName:@"SpeakServer"];
    speakTypingClient = self->_speakTypingClient;
    self->_speakTypingClient = v6;

    [(AXUIClient *)self->_speakTypingClient setDelegate:self];
    v8 = MEMORY[0x277CBEC10];
    v9 = self->_speakTypingClient;

    [(AXUIClient *)v9 sendAsynchronousMessage:v8 withIdentifier:14 targetAccessQueue:0 completion:0];
  }
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client
{
  if (self->_speakTypingClient == client)
  {
    block[5] = v3;
    block[6] = v4;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__SpeakTypingServices_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke;
    block[3] = &unk_279CD8D40;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __81__SpeakTypingServices_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) speakTypingClient];
  [v2 setDelegate:0];

  [*(a1 + 32) setSpeakTypingClient:0];
  if (_AXSWordFeedbackEnabled() || _AXSLetterFeedbackEnabled() || _AXSPhoneticFeedbackEnabled() || ([MEMORY[0x277CE7E20] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "speakCorrectionsEnabled"), v3, v4))
  {
    v5 = *(a1 + 32);

    [v5 initializeServerConnection];
  }
}

@end