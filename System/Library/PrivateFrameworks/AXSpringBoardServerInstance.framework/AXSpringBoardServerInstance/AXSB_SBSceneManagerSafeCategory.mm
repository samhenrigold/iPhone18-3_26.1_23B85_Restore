@interface AXSB_SBSceneManagerSafeCategory
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)userInterfaceStyleProvider:(id)provider didUpdateStyle:(int64_t)style preferredAnimationSettings:(id)settings completion:(id)completion;
@end

@implementation AXSB_SBSceneManagerSafeCategory

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBSceneManager" conformsToProtocol:@"SBUserInterfaceStyleObserver"];
  [validationsCopy validateProtocol:@"SBUserInterfaceStyleObserver" hasRequiredInstanceMethod:@"userInterfaceStyleProvider:didUpdateStyle:preferredAnimationSettings:completion:"];
}

- (void)userInterfaceStyleProvider:(id)provider didUpdateStyle:(int64_t)style preferredAnimationSettings:(id)settings completion:(id)completion
{
  v13[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = AXSB_SBSceneManagerSafeCategory;
  [(AXSB_SBSceneManagerSafeCategory *)&v11 userInterfaceStyleProvider:provider didUpdateStyle:style preferredAnimationSettings:settings completion:completion];
  v6 = +[AXSpringBoardServerHelper sharedServerHelper];
  if ([v6 _isDarkModeActive])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  v12 = *MEMORY[0x277CE7C98];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  v13[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v8 springBoardActionOccurred:13 withPayload:v10];
}

@end