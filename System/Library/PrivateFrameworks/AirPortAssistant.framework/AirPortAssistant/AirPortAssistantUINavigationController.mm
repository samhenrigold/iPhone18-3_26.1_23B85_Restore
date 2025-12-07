@interface AirPortAssistantUINavigationController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation AirPortAssistantUINavigationController

- (unint64_t)supportedInterfaceOrientations
{
  v5 = objc_msgSend_currentDevice(MEMORY[0x277D75418], a2, v2, v3);
  if (objc_msgSend_userInterfaceIdiom(v5, v6, v7, v8) == 1 && sub_23EC13460(self, v9, v10, v11) == 2)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end