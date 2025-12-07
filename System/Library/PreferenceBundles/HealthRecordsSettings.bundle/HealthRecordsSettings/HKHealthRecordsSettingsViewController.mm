@interface HKHealthRecordsSettingsViewController
- (HKHealthRecordsSettingsViewController)init;
- (HKHealthSettingsNavigationDonating)settingsNavigationDonatingDelegate;
- (PSController)parentController;
- (PSRootController)rootController;
- (id)readPreferenceValue:(id)value;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)showController:(id)controller;
- (void)showController:(id)controller animate:(BOOL)animate;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation HKHealthRecordsSettingsViewController

- (HKHealthRecordsSettingsViewController)init
{
  v3.receiver = self;
  v3.super_class = HKHealthRecordsSettingsViewController;
  return [(HKHealthRecordsSettingsViewController *)&v3 init];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = HKHealthRecordsSettingsViewController;
  [(HKHealthRecordsSettingsViewController *)&v7 viewDidAppear:appear];
  settingsNavigationDonatingDelegate = [(HKHealthRecordsSettingsViewController *)self settingsNavigationDonatingDelegate];
  v5 = +[HAServicesDefines healthSettingsHealthRecordsSpecifier];
  v6 = [HAServicesDefines internalHealthSettingsURLTo:v5];
  [settingsNavigationDonatingDelegate donateWithDeepLink:v6 andTitle:@"Health Records"];
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained handleURL:lCopy withCompletion:completionCopy];
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  specifierCopy = specifier;
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained setPreferenceValue:valueCopy specifier:specifierCopy];
}

- (id)readPreferenceValue:(id)value
{
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  v6 = [WeakRetained readPreferenceValue:valueCopy];

  return v6;
}

- (void)showController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained showController:controllerCopy];
}

- (void)showController:(id)controller animate:(BOOL)animate
{
  animateCopy = animate;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained showController:controllerCopy animate:animateCopy];
}

- (HKHealthSettingsNavigationDonating)settingsNavigationDonatingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsNavigationDonatingDelegate);

  return WeakRetained;
}

- (PSController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

- (PSRootController)rootController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootController);

  return WeakRetained;
}

@end