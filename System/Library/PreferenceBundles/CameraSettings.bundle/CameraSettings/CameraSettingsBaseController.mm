@interface CameraSettingsBaseController
+ (CAMCaptureCapabilities)capabilities;
+ (NSNumberFormatter)integerFormatter;
+ (void)allowMultilineTitlesForSpecifiers:(id)specifiers;
- (id)groupSpecifierWithTitle:(id)title footer:(id)footer identifier:(id)identifier;
- (id)switchSpecifierWithLabel:(id)label key:(id)key domain:(id)domain defaultValue:(BOOL)value;
- (void)reloadSpecifiers;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CameraSettingsBaseController

+ (CAMCaptureCapabilities)capabilities
{
  if (qword_36A90 != -1)
  {
    sub_1B7B0();
  }

  if (byte_36A98 == 1)
  {
    if (qword_36AA0 != -1)
    {
      sub_1B7D8();
    }

    v2 = &qword_36AA8;
  }

  else
  {
    if (qword_36AB0 != -1)
    {
      sub_1B7C4();
    }

    v2 = &qword_36AB8;
  }

  v3 = *v2;

  return v3;
}

- (void)reloadSpecifiers
{
  byte_36A98 = +[CAMCaptureCapabilities isCameraAppInstalled];
  v3.receiver = self;
  v3.super_class = CameraSettingsBaseController;
  [(CameraSettingsBaseController *)&v3 reloadSpecifiers];
}

- (void)viewDidLoad
{
  byte_36A98 = +[CAMCaptureCapabilities isCameraAppInstalled];
  v3.receiver = self;
  v3.super_class = CameraSettingsBaseController;
  [(CameraSettingsBaseController *)&v3 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CameraSettingsBaseController;
  [(CameraSettingsBaseController *)&v4 viewWillAppear:appear];
  if ([(CameraSettingsBaseController *)self _didAppearAtLeastOnce])
  {
    [(CameraSettingsBaseController *)self reloadSpecifiers];
  }

  [(CameraSettingsBaseController *)self set_didAppearAtLeastOnce:1];
}

+ (void)allowMultilineTitlesForSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [specifiersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    v7 = PSAllowMultilineTitleKey;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(specifiersCopy);
        }

        [*(*(&v9 + 1) + 8 * v8) setProperty:&__kCFBooleanTrue forKey:v7];
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [specifiersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (NSNumberFormatter)integerFormatter
{
  if (qword_36AC0 != -1)
  {
    sub_1B7EC();
  }

  v3 = qword_36AC8;

  return v3;
}

- (id)groupSpecifierWithTitle:(id)title footer:(id)footer identifier:(id)identifier
{
  titleCopy = title;
  footerCopy = footer;
  v9 = [PSSpecifier groupSpecifierWithID:identifier];
  if (titleCopy)
  {
    v10 = sub_3A24(titleCopy);
    [v9 setName:v10];
  }

  if (footerCopy)
  {
    v11 = sub_3A24(footerCopy);
    [v9 setObject:v11 forKeyedSubscript:PSFooterTextGroupKey];
  }

  return v9;
}

- (id)switchSpecifierWithLabel:(id)label key:(id)key domain:(id)domain defaultValue:(BOOL)value
{
  valueCopy = value;
  domainCopy = domain;
  keyCopy = key;
  v12 = sub_3A24(label);
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];
  [v13 setObject:domainCopy forKeyedSubscript:PSDefaultsKey];

  [v13 setObject:keyCopy forKeyedSubscript:PSKeyNameKey];
  v14 = [NSNumber numberWithBool:valueCopy];
  [v13 setObject:v14 forKeyedSubscript:PSDefaultValueKey];

  return v13;
}

@end