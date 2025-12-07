@interface ICBSettingsBundleController
+ (id)localizedStringForKey:(id)key;
- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)controller;
- (ICBSettingsBundleController)initWithParentListController:(id)controller;
- (PSListController)parentListController;
- (id)incomingCallStyleIcon;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)handleICSPreferencesDidChangeNotification:(id)notification;
- (void)handleUserDidTapOnMainSpecifier:(id)specifier parentController:(id)controller;
- (void)performButtonActionForSpecifier:(id)specifier;
@end

@implementation ICBSettingsBundleController

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (ICBSettingsBundleController)initWithParentListController:(id)controller
{
  v7.receiver = self;
  v7.super_class = ICBSettingsBundleController;
  v3 = [(ICBSettingsBundleController *)&v7 initWithParentListController:controller];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = +[ICSPreferences sharedPreferences];
    [v4 addObserver:v3 selector:"handleICSPreferencesDidChangeNotification:" name:@"ICSPreferencesDidChangeNotification" object:v5];
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  v4 = +[NSMutableArray array];
  if (_os_feature_enabled_impl())
  {
    styleSpecifier = [(ICBSettingsBundleController *)self styleSpecifier];

    if (!styleSpecifier)
    {
      v6 = [objc_opt_class() localizedStringForKey:@"INCOMING_CALL_STYLE_LIST_TITLE"];
      parentListController = [(ICBSettingsBundleController *)self parentListController];
      v8 = [(ICBSettingsBundleController *)self isStateDrivenNavigationPossibleWithParentController:parentListController];

      if (v8)
      {
        v9 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"incomingCallStyleText:" detail:0 cell:2 edit:0];
        [v9 setButtonAction:"performButtonActionForSpecifier:"];
        if (!v9)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v9 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"incomingCallStyleText:" detail:objc_opt_class() cell:2 edit:0];
        if (!v9)
        {
LABEL_8:
          [(ICBSettingsBundleController *)self setStyleSpecifier:v9];

          goto LABEL_9;
        }
      }

      [v9 setIdentifier:@"INCOMING_CALL_STYLE"];
      incomingCallStyleIcon = [(ICBSettingsBundleController *)self incomingCallStyleIcon];
      [v9 setProperty:incomingCallStyleIcon forKey:PSIconImageKey];

      [v4 addObject:v9];
      goto LABEL_8;
    }
  }

LABEL_9:
  v11 = [v4 copy];

  return v11;
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  localizationTableName = [self localizationTableName];
  v7 = [v5 localizedStringForKey:keyCopy value:&stru_8758 table:localizationTableName];

  return v7;
}

- (id)incomingCallStyleIcon
{
  parentListController = [(ICBSettingsBundleController *)self parentListController];
  specifier = [parentListController specifier];
  identifier = [specifier identifier];
  v5 = [identifier isEqualToString:@"FACETIME"];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  if (v5)
  {
    v7 = @"incomingcalls_facetime";
  }

  else
  {
    v7 = @"incomingcalls_phone";
  }

  v8 = [UIImage imageNamed:v7 inBundle:v6];

  return v8;
}

- (void)performButtonActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  parentListController = [(ICBSettingsBundleController *)self parentListController];
  [(ICBSettingsBundleController *)self handleUserDidTapOnMainSpecifier:specifierCopy parentController:parentListController];
}

- (void)handleICSPreferencesDidChangeNotification:(id)notification
{
  parentListController = [(ICBSettingsBundleController *)self parentListController];
  styleSpecifier = [(ICBSettingsBundleController *)self styleSpecifier];
  [parentListController reloadSpecifier:styleSpecifier];
}

- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)controller
{
  v4 = sub_41BC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_41FC();
  sub_41EC();
  sub_41DC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  traitCollection = [controllerCopy traitCollection];
  sub_420C();

  LOBYTE(traitCollection) = sub_419C();
  (*(v5 + 8))(v7, v4);

  return traitCollection & 1;
}

- (void)handleUserDidTapOnMainSpecifier:(id)specifier parentController:(id)controller
{
  v15 = sub_41BC();
  v5 = *(v15 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_422C();
  __chkstk_darwin();
  v8 = sub_418C();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_41FC();
  sub_41EC();
  sub_41DC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  sub_421C();
  sub_417C();
  traitCollection = [controllerCopy traitCollection];
  sub_420C();

  sub_3DCC();
  sub_41AC();

  (*(v5 + 8))(v7, v15);
  (*(v9 + 8))(v11, v8);
}

@end