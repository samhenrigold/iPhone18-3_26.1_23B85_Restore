@interface ICASOnboardingScreenData
- (ICASOnboardingScreenData)initWithOnboardingScreenType:(id)type onboardingUserAction:(id)action;
- (id)toDict;
@end

@implementation ICASOnboardingScreenData

- (ICASOnboardingScreenData)initWithOnboardingScreenType:(id)type onboardingUserAction:(id)action
{
  typeCopy = type;
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = ICASOnboardingScreenData;
  v9 = [(ICASOnboardingScreenData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_onboardingScreenType, type);
    objc_storeStrong(&v10->_onboardingUserAction, action);
  }

  return v10;
}

- (id)toDict
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"onboardingScreenType";
  onboardingScreenType = [(ICASOnboardingScreenData *)self onboardingScreenType];
  if (onboardingScreenType)
  {
    onboardingScreenType2 = [(ICASOnboardingScreenData *)self onboardingScreenType];
  }

  else
  {
    onboardingScreenType2 = objc_opt_new();
  }

  v5 = onboardingScreenType2;
  v11[1] = @"onboardingUserAction";
  v12[0] = onboardingScreenType2;
  onboardingUserAction = [(ICASOnboardingScreenData *)self onboardingUserAction];
  if (onboardingUserAction)
  {
    onboardingUserAction2 = [(ICASOnboardingScreenData *)self onboardingUserAction];
  }

  else
  {
    onboardingUserAction2 = objc_opt_new();
  }

  v8 = onboardingUserAction2;
  v12[1] = onboardingUserAction2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end