@interface HPSHeadphoneConfigController
+ (BOOL)modernHPSFFEnabled;
+ (id)_controllerForSpecifier:(id)specifier;
+ (id)_handleDeeplink:(id)deeplink specifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HPSHeadphoneConfigController

+ (id)_handleDeeplink:(id)deeplink specifier:(id)specifier
{
  v5 = sub_251210D0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251210CEC();
  specifierCopy = specifier;
  v10 = _sSo28HPSHeadphoneConfigControllerC16HeadphoneConfigsE15_handleDeeplink_9specifierSo11PSSpecifierC10Foundation13URLComponentsV_AGtFZ_0(v8, specifierCopy);

  (*(v6 + 8))(v8, v5);

  return v10;
}

+ (id)_controllerForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  _sSo28HPSHeadphoneConfigControllerC16HeadphoneConfigsE23_controllerForSpecifierySo06PSViewC0CSo11PSSpecifierCFZ_0(specifierCopy);
  v5 = v4;

  return v5;
}

+ (BOOL)modernHPSFFEnabled
{
  sub_25121108C();
  v2 = sub_25121107C();
  v3 = sub_25121104C();

  return v3 & 1;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  HPSHeadphoneConfigController.viewWillAppear(_:)(appear);
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  HPSHeadphoneConfigController.setSpecifier(_:)(specifier);
}

@end