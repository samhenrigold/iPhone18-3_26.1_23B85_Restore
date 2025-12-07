@interface ASTTestAutomation
+ (id)sharedInstance;
+ (void)conditionallyPostAccessibilityNotification:(unsigned int)notification argument:(id)argument;
+ (void)postServerRequest:(id)request;
+ (void)postServerResponse:(id)response;
- (ASTTestAutomation)init;
@end

@implementation ASTTestAutomation

- (ASTTestAutomation)init
{
  v8.receiver = self;
  v8.super_class = ASTTestAutomation;
  v2 = [(ASTTestAutomation *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_testAutomationEnabled = 0;
    CFPreferencesAppSynchronize(@"com.apple.AppleServiceToolkit");
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"TestAutomation", @"com.apple.AppleServiceToolkit", &keyExistsAndHasValidFormat))
    {
      v4 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = !v4;
    v3->_testAutomationEnabled = v5;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ASTTestAutomation sharedInstance];
  }

  v3 = sharedInstance_singleton;

  return v3;
}

uint64_t __35__ASTTestAutomation_sharedInstance__block_invoke()
{
  sharedInstance_singleton = objc_alloc_init(ASTTestAutomation);

  return MEMORY[0x2821F96F8]();
}

+ (void)postServerResponse:(id)response
{
  v9[3] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if (+[ASTLinking isAXRuntimeFrameworkAvailable])
  {
    v5 = +[ASTTestAutomation sharedInstance];
    testAutomationEnabled = [v5 testAutomationEnabled];

    if (testAutomationEnabled)
    {
      v8[0] = @"event";
      v8[1] = @"type";
      v9[0] = @"ASTTestAutomationEvent";
      v9[1] = @"ServerResponse";
      v8[2] = @"info";
      v9[2] = responseCopy;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
      [self conditionallyPostAccessibilityNotification:4002 argument:v7];
    }
  }
}

+ (void)postServerRequest:(id)request
{
  v9[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (+[ASTLinking isAXRuntimeFrameworkAvailable])
  {
    v5 = +[ASTTestAutomation sharedInstance];
    testAutomationEnabled = [v5 testAutomationEnabled];

    if (testAutomationEnabled)
    {
      v8[0] = @"event";
      v8[1] = @"type";
      v9[0] = @"ASTTestAutomationEvent";
      v9[1] = @"ServerRequest";
      v8[2] = @"info";
      v9[2] = requestCopy;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
      [self conditionallyPostAccessibilityNotification:4002 argument:v7];
    }
  }
}

+ (void)conditionallyPostAccessibilityNotification:(unsigned int)notification argument:(id)argument
{
  v4 = *&notification;
  argumentCopy = argument;
  v5 = dlopen(0, 1);
  v6 = dlsym(v5, "UIAccessibilityPostNotification");
  if (v6)
  {
    v6(v4, argumentCopy);
  }

  dlclose(v5);
}

@end