@interface MSLaunchNotificationsController
- (BOOL)_hasDisplayedFamilySetup;
- (MSLaunchNotificationsController)initWithParentViewController:(id)controller;
- (void)_showFamilySetupPrompt;
- (void)checkForNotifications;
@end

@implementation MSLaunchNotificationsController

- (MSLaunchNotificationsController)initWithParentViewController:(id)controller
{
  objc_initWeak(&location, controller);
  v7.receiver = self;
  v7.super_class = MSLaunchNotificationsController;
  v4 = [(MSLaunchNotificationsController *)&v7 init];
  if (v4)
  {
    v5 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v4->_parentViewController, v5);
  }

  objc_destroyWeak(&location);
  return v4;
}

- (void)checkForNotifications
{
  if (![(MSLaunchNotificationsController *)self _hasDisplayedFamilySetup])
  {

    [(MSLaunchNotificationsController *)self _showFamilySetupPrompt];
  }
}

- (BOOL)_hasDisplayedFamilySetup
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"SUUIFamilySetupDisplayed"];

  return v3;
}

- (void)_showFamilySetupPrompt
{
  v3 = +[SSAccountStore defaultStore];
  activeAccount = [v3 activeAccount];

  if (activeAccount)
  {
    v5 = sub_100003088(activeAccount, v4);
    v6 = [objc_alloc(sub_100003150(@"AAUIFamilySetupPrompter" v5))];
    familySetupPrompter = self->_familySetupPrompter;
    self->_familySetupPrompter = v6;

    v8 = self->_familySetupPrompter;
    WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
    [(AAUIFamilySetupPrompter *)v8 promptIfEligibleWithPresentingViewController:WeakRetained isFirstRun:1];

    v10 = +[NSUserDefaults standardUserDefaults];
    [v10 setBool:1 forKey:@"SUUIFamilySetupDisplayed"];
    [v10 synchronize];
  }
}

@end