@interface PLAccessibilityAgent
+ (id)entryEventForwardDefinitions;
+ (id)entryEventForwardNameBackTap;
+ (id)entryEventForwardNameBackgroundContrast;
+ (id)entryEventForwardNameFacetimeCaptioning;
+ (id)entryEventForwardNameReduceMotion;
+ (id)entryEventForwardNameSoundRecognition;
+ (id)entryEventForwardNameSpeakScreen;
+ (id)entryEventForwardNameSpeakSelection;
+ (id)entryEventForwardNameSystemCaptioning;
+ (id)entryEventForwardNameVoiceControl;
+ (void)load;
- (PLAccessibilityAgent)init;
- (void)initOperatorDependancies;
- (void)initTaskOperatorDependancies;
- (void)log;
- (void)logEventForwardBackTap;
- (void)logEventForwardBackgroundContrast;
- (void)logEventForwardEyeTracking;
- (void)logEventForwardFacetimeCaptioning;
- (void)logEventForwardMotionCues:(BOOL)cues;
- (void)logEventForwardReduceMotion;
- (void)logEventForwardSoundRecognition:(int)recognition;
- (void)logEventForwardSpeakScreen;
- (void)logEventForwardSpeakSelection;
- (void)logEventForwardSystemCaptioning;
- (void)logEventForwardVoiceControl;
- (void)logEventForwardZoom;
@end

@implementation PLAccessibilityAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccessibilityAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v17[11] = *MEMORY[0x277D85DE8];
  v16[0] = @"ReduceMotion";
  entryEventForwardNameReduceMotion = [self entryEventForwardNameReduceMotion];
  v17[0] = entryEventForwardNameReduceMotion;
  v16[1] = @"BackgroundContrast";
  entryEventForwardNameBackgroundContrast = [self entryEventForwardNameBackgroundContrast];
  v17[1] = entryEventForwardNameBackgroundContrast;
  v16[2] = @"AssistiveTouch";
  entryEventForwardNameAssistiveTouch = [self entryEventForwardNameAssistiveTouch];
  v17[2] = entryEventForwardNameAssistiveTouch;
  v16[3] = @"HandGestures";
  entryEventForwardNameHandGestures = [self entryEventForwardNameHandGestures];
  v17[3] = entryEventForwardNameHandGestures;
  v16[4] = @"VoiceControl";
  entryEventForwardNameVoiceControl = [self entryEventForwardNameVoiceControl];
  v17[4] = entryEventForwardNameVoiceControl;
  v16[5] = @"BackTap";
  entryEventForwardNameBackTap = [self entryEventForwardNameBackTap];
  v17[5] = entryEventForwardNameBackTap;
  v16[6] = @"SoundRecognition";
  entryEventForwardNameSoundRecognition = [self entryEventForwardNameSoundRecognition];
  v17[6] = entryEventForwardNameSoundRecognition;
  v16[7] = @"SpeakSelection";
  entryEventForwardNameSpeakSelection = [self entryEventForwardNameSpeakSelection];
  v17[7] = entryEventForwardNameSpeakSelection;
  v16[8] = @"SpeakScreen";
  entryEventForwardNameSpeakScreen = [self entryEventForwardNameSpeakScreen];
  v17[8] = entryEventForwardNameSpeakScreen;
  v16[9] = @"SystemCaptioning";
  entryEventForwardNameSystemCaptioning = [self entryEventForwardNameSystemCaptioning];
  v17[9] = entryEventForwardNameSystemCaptioning;
  v16[10] = @"FacetimeCaptioning";
  entryEventForwardNameFacetimeCaptioning = [self entryEventForwardNameFacetimeCaptioning];
  v17[10] = entryEventForwardNameFacetimeCaptioning;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:11];

  return v12;
}

+ (id)entryEventForwardNameReduceMotion
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1C4C8;
  v12[1] = MEMORY[0x277CBEC38];
  v11[2] = *MEMORY[0x277D3F508];
  v12[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"ReduceMotionEnabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardNameBackgroundContrast
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1C4C8;
  v12[1] = MEMORY[0x277CBEC38];
  v11[2] = *MEMORY[0x277D3F508];
  v12[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"BackgroundContrastEnabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardNameVoiceControl
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1C4D8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"VoiceControlEnabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardNameBackTap
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1C4D8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"BackTapEnabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardNameSoundRecognition
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1C4E8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"SoundRecognitionEnabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardNameSpeakSelection
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1C4D8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"SpeakSelectionEnabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardNameSpeakScreen
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1C4D8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"SpeakScreenEnabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardNameSystemCaptioning
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1C4D8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"SystemCaptioningEnabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardNameFacetimeCaptioning
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1C4C8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"FacetimeCaptioningEnabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

- (PLAccessibilityAgent)init
{
  v3.receiver = self;
  v3.super_class = PLAccessibilityAgent;
  return [(PLAgent *)&v3 init];
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F160]);
  v4 = *MEMORY[0x277D81C90];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke;
  v60[3] = &unk_2782597E8;
  v60[4] = self;
  v5 = [v3 initWithOperator:self forNotification:v4 requireState:0 withBlock:v60];
  notificationVoiceControlChanged = self->_notificationVoiceControlChanged;
  self->_notificationVoiceControlChanged = v5;

  v7 = objc_alloc(MEMORY[0x277D3F160]);
  v8 = *MEMORY[0x277D81C68];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_80;
  v59[3] = &unk_2782597E8;
  v59[4] = self;
  v9 = [v7 initWithOperator:self forNotification:v8 requireState:0 withBlock:v59];
  notificationBackTapChanged = self->_notificationBackTapChanged;
  self->_notificationBackTapChanged = v9;

  v11 = objc_alloc(MEMORY[0x277D3F160]);
  v12 = *MEMORY[0x277D81DC8];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_81;
  v58[3] = &unk_2782597E8;
  v58[4] = self;
  v13 = [v11 initWithOperator:self forNotification:v12 requireState:0 withBlock:v58];
  notificationEyeTrackingChanged = self->_notificationEyeTrackingChanged;
  self->_notificationEyeTrackingChanged = v13;

  v15 = objc_alloc(MEMORY[0x277D3F160]);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_85;
  v57[3] = &unk_2782597E8;
  v57[4] = self;
  v16 = [v15 initWithOperator:self forNotification:@"com.apple.accessibility.motion.cues.start" requireState:0 withBlock:v57];
  notificationMotionCuesStart = self->_notificationMotionCuesStart;
  self->_notificationMotionCuesStart = v16;

  v18 = objc_alloc(MEMORY[0x277D3F160]);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_89;
  v56[3] = &unk_2782597E8;
  v56[4] = self;
  v19 = [v18 initWithOperator:self forNotification:@"com.apple.accessibility.motion.cues.stop" requireState:0 withBlock:v56];
  notificationMotionCuesStop = self->_notificationMotionCuesStop;
  self->_notificationMotionCuesStop = v19;

  v21 = objc_alloc(MEMORY[0x277D3F160]);
  v22 = *MEMORY[0x277D81E28];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_90;
  v55[3] = &unk_2782597E8;
  v55[4] = self;
  v23 = [v21 initWithOperator:self forNotification:v22 requireState:0 withBlock:v55];
  notificationSoundRecognitionDisabled = self->_notificationSoundRecognitionDisabled;
  self->_notificationSoundRecognitionDisabled = v23;

  v25 = objc_alloc(MEMORY[0x277D3F160]);
  v26 = *MEMORY[0x277D81E30];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_91;
  v54[3] = &unk_2782597E8;
  v54[4] = self;
  v27 = [v25 initWithOperator:self forNotification:v26 requireState:0 withBlock:v54];
  notificationSoundRecognitionRunning = self->_notificationSoundRecognitionRunning;
  self->_notificationSoundRecognitionRunning = v27;

  v29 = objc_alloc(MEMORY[0x277D3F160]);
  v30 = *MEMORY[0x277D81DE0];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_92;
  v53[3] = &unk_2782597E8;
  v53[4] = self;
  v31 = [v29 initWithOperator:self forNotification:v30 requireState:0 withBlock:v53];
  notificationSpeakSelectionChanged = self->_notificationSpeakSelectionChanged;
  self->_notificationSpeakSelectionChanged = v31;

  v33 = objc_alloc(MEMORY[0x277D3F160]);
  v34 = *MEMORY[0x277D81E40];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_93;
  v52[3] = &unk_2782597E8;
  v52[4] = self;
  v35 = [v33 initWithOperator:self forNotification:v34 requireState:0 withBlock:v52];
  notificationSpeakScreenChanged = self->_notificationSpeakScreenChanged;
  self->_notificationSpeakScreenChanged = v35;

  v37 = objc_alloc(MEMORY[0x277D3F160]);
  v38 = *MEMORY[0x277D81DB8];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_94;
  v51[3] = &unk_2782597E8;
  v51[4] = self;
  v39 = [v37 initWithOperator:self forNotification:v38 requireState:0 withBlock:v51];
  notificationSystemCaptioningChanged = self->_notificationSystemCaptioningChanged;
  self->_notificationSystemCaptioningChanged = v39;

  v41 = objc_alloc(MEMORY[0x277D3F160]);
  v42 = *MEMORY[0x277D81BF0];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_95;
  v50[3] = &unk_2782597E8;
  v50[4] = self;
  v43 = [v41 initWithOperator:self forNotification:v42 requireState:0 withBlock:v50];
  notificationFacetimeCaptioningChanged = self->_notificationFacetimeCaptioningChanged;
  self->_notificationFacetimeCaptioningChanged = v43;

  v45 = objc_alloc(MEMORY[0x277D3F160]);
  v46 = *MEMORY[0x277D81EE8];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_96;
  v49[3] = &unk_2782597E8;
  v49[4] = self;
  v47 = [v45 initWithOperator:self forNotification:v46 requireState:0 withBlock:v49];
  notificationZoomChanged = self->_notificationZoomChanged;
  self->_notificationZoomChanged = v47;
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Voice Control Changed: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardVoiceControl];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_80(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Back Tap changed: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardBackTap];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_81(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Eye Tracking changed: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardEyeTracking];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_85(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Motion Cues Started: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardMotionCues:1];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_89(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Motion Cues Stopped: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardMotionCues:0];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_90(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Sound Recognition is disabled: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardSoundRecognition:0];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_91(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Sound Recognition is running: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardSoundRecognition:2];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_92(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Speak Selection changed: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardSpeakSelection];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_93(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Speak Screen changed: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardSpeakScreen];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_94(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "System Captioning changed: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardSystemCaptioning];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_95(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Facetime Captioning changed: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardFacetimeCaptioning];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_96(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Zoom changed: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardZoom];
}

- (void)initTaskOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F160]);
  v4 = *MEMORY[0x277D81DF0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__PLAccessibilityAgent_initTaskOperatorDependancies__block_invoke;
  v12[3] = &unk_2782597E8;
  v12[4] = self;
  v5 = [v3 initWithOperator:self forNotification:v4 requireState:0 withBlock:v12];
  notificationReduceMotionChanged = self->_notificationReduceMotionChanged;
  self->_notificationReduceMotionChanged = v5;

  v7 = objc_alloc(MEMORY[0x277D3F160]);
  v8 = *MEMORY[0x277D81CB8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__PLAccessibilityAgent_initTaskOperatorDependancies__block_invoke_97;
  v11[3] = &unk_2782597E8;
  v11[4] = self;
  v9 = [v7 initWithOperator:self forNotification:v8 requireState:0 withBlock:v11];
  notificationBackgroundContrastChanged = self->_notificationBackgroundContrastChanged;
  self->_notificationBackgroundContrastChanged = v9;
}

void __52__PLAccessibilityAgent_initTaskOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Reduce Motion changed: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardReduceMotion];
}

void __52__PLAccessibilityAgent_initTaskOperatorDependancies__block_invoke_97(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Background Contrast changed: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardBackgroundContrast];
}

- (void)log
{
  [(PLAccessibilityAgent *)self logEventForwardVoiceControl];
  [(PLAccessibilityAgent *)self logEventForwardBackTap];
  [(PLAccessibilityAgent *)self logEventForwardEyeTracking];
  [(PLAccessibilityAgent *)self logEventForwardSoundRecognition:_AXSSoundDetectionRunning()];
  [(PLAccessibilityAgent *)self logEventForwardSpeakSelection];
  [(PLAccessibilityAgent *)self logEventForwardSpeakScreen];
  [(PLAccessibilityAgent *)self logEventForwardSystemCaptioning];
  [(PLAccessibilityAgent *)self logEventForwardFacetimeCaptioning];
  [(PLAccessibilityAgent *)self logEventForwardZoom];
  if (([MEMORY[0x277D3F180] taskMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "fullMode"))
  {
    [(PLAccessibilityAgent *)self logEventForwardReduceMotion];

    [(PLAccessibilityAgent *)self logEventForwardBackgroundContrast];
  }
}

- (void)logEventForwardReduceMotion
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ReduceMotion"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSReduceMotionEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"ReduceMotionEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardBackgroundContrast
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"BackgroundContrast"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSEnhanceBackgroundContrastEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"BackgroundContrastEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardVoiceControl
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"VoiceControl"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSCommandAndControlEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"VoiceControlEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardBackTap
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"BackTap"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSBackTapEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"BackTapEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardEyeTracking
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = PLLogAccessibility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v9 = _AXSOnDeviceEyeTrackingEnabled();
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Eye Tracking state: %d", buf, 8u);
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{_AXSOnDeviceEyeTrackingEnabled(), @"Enabled"}];
  v7 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  [(PLOperator *)self logForSubsystem:@"AccessibilityMetrics" category:@"EyeTracking" data:v5];
}

- (void)logEventForwardMotionCues:(BOOL)cues
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"Session";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:cues];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  [(PLOperator *)self logForSubsystem:@"AccessibilityMetrics" category:@"MotionCuesEnabled" data:v5];
}

- (void)logEventForwardSoundRecognition:(int)recognition
{
  v3 = *&recognition;
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SoundRecognition"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  [v6 setObject:v7 forKeyedSubscript:@"SoundRecognitionEnabled"];

  v8 = PLLogAccessibility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13[0] = 67109120;
    v13[1] = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Logging Sound Recognition state: %d", v13, 8u);
  }

  if (!v3)
  {
    v12 = PLLogAccessibility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13[0]) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "Logging Sound Recognition remove distribution event", v13, 2u);
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    entryDate = [v6 entryDate];
    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:51 withRemovingChildNodeName:@"SoundRecognition" withStartDate:entryDate];
    goto LABEL_11;
  }

  if (v3 == 2)
  {
    v9 = PLLogAccessibility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13[0]) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Logging Sound Recognition create distribution event", v13, 2u);
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    entryDate = [v6 entryDate];
    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:51 withAddingChildNodeName:@"SoundRecognition" withStartDate:entryDate];
LABEL_11:
  }

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardSpeakSelection
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SpeakSelection"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSQuickSpeakEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"SpeakSelectionEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardSpeakScreen
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SpeakScreen"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSSpeakThisEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"SpeakScreenEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardSystemCaptioning
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SystemCaptioning"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSLiveTranscriptionEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"SystemCaptioningEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardFacetimeCaptioning
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"FacetimeCaptioning"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSFaceTimeCaptionsEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"FacetimeCaptioningEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardZoom
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"Enabled";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSZoomTouchEnabled()];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  [(PLOperator *)self logForSubsystem:@"AccessibilityMetrics" category:@"ZoomEnabled" data:v4];
}

@end