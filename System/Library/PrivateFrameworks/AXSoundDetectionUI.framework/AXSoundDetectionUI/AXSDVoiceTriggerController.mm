@interface AXSDVoiceTriggerController
+ (id)sharedInstance;
- (AXSDVoiceTriggerController)init;
- (void)postEventToSystemWithSoundActionEvent:(int64_t)event;
- (void)startListeningInPracticeSession;
- (void)stopListening;
@end

@implementation AXSDVoiceTriggerController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[AXSDVoiceTriggerController sharedInstance];
  }

  v3 = sharedInstance___SharedController_1;

  return v3;
}

uint64_t __44__AXSDVoiceTriggerController_sharedInstance__block_invoke()
{
  sharedInstance___SharedController_1 = objc_alloc_init(AXSDVoiceTriggerController);

  return MEMORY[0x2821F96F8]();
}

- (AXSDVoiceTriggerController)init
{
  v8.receiver = self;
  v8.super_class = AXSDVoiceTriggerController;
  v2 = [(AXSDVoiceTriggerController *)&v8 init];
  if (v2)
  {
    v3 = AXIsSoundDetectionMedinaSupportEnabled();
    v4 = off_278BDC9D0;
    if (!v3)
    {
      v4 = off_278BDC9C8;
    }

    v5 = objc_alloc_init(*v4);
    controller = v2->_controller;
    v2->_controller = v5;

    [(AXSDSoundActionsController *)v2->_controller setDelegate:v2];
  }

  return v2;
}

- (void)startListeningInPracticeSession
{
  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AXSDSoundActionsController *)self->_controller stopListening];
      controller = self->_controller;
      self->_controller = 0;

      v4 = objc_alloc_init(_TtC18AXSoundDetectionUI30AXSANSControllerImplementation);
      v5 = self->_controller;
      self->_controller = v4;

      [(AXSDSoundActionsController *)self->_controller setDelegate:self];
    }
  }

  v6 = self->_controller;

  [(AXSDSoundActionsController *)v6 startListening];
}

- (void)stopListening
{
  [(AXSDSoundActionsController *)self->_controller stopListening];
  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      controller = self->_controller;
      self->_controller = 0;

      v4 = objc_alloc_init(_TtC18AXSoundDetectionUI34AXSASecureControllerImplementation);
      v5 = self->_controller;
      self->_controller = v4;

      v6 = self->_controller;

      [(AXSDSoundActionsController *)v6 setDelegate:self];
    }
  }
}

- (void)postEventToSystemWithSoundActionEvent:(int64_t)event
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = AXLogSoundActions();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2048;
    *&buf[14] = event;
    v5 = *&buf[4];
    _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_DEFAULT, "[%@]: posting voice trigger event to system: %ld", buf, 0x16u);
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v6 = getAXEventRepresentationClass_softClass;
  v15 = getAXEventRepresentationClass_softClass;
  if (!getAXEventRepresentationClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAXEventRepresentationClass_block_invoke;
    v17 = &unk_278BDCFE0;
    v18 = &v12;
    __getAXEventRepresentationClass_block_invoke(buf);
    v6 = v13[3];
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);
  v8 = [v6 accessibilityEventRepresentationWithSender:4 usagePage:3 usage:{event, v12}];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v9 = getAXEventTapManagerClass_softClass;
  v15 = getAXEventTapManagerClass_softClass;
  if (!getAXEventTapManagerClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAXEventTapManagerClass_block_invoke;
    v17 = &unk_278BDCFE0;
    v18 = &v12;
    __getAXEventTapManagerClass_block_invoke(buf);
    v9 = v13[3];
  }

  v10 = v9;
  _Block_object_dispose(&v12, 8);
  sharedManager = [v9 sharedManager];
  [sharedManager sendHIDSystemEvent:v8 senderID:0x8000000817319383];
}

@end