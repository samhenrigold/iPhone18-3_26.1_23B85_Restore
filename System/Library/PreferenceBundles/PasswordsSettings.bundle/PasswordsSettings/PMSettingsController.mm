@interface PMSettingsController
- (PMSettingsController)initWithCoder:(id)coder;
- (PMSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)openAutoFillSettings;
- (id)specifiers;
- (void)accountStoreDidChange;
- (void)openPasswordsApp;
- (void)presentNeverSavedSheetView;
- (void)presentPasskeysLearnMoreView;
- (void)showPasswordsPrivacySheet;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PMSettingsController

- (PMSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_12808();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_26C4(v5, v7, bundle);
}

- (PMSettingsController)initWithCoder:(id)coder
{
  v3 = &self->PSListController_opaque[OBJC_IVAR___PMSettingsController_passwordsPrivacySplashIdentifier];
  *v3 = 0xD00000000000001ELL;
  *(v3 + 1) = 0x8000000000015830;
  self->PSListController_opaque[OBJC_IVAR___PMSettingsController_shouldShowNeverSavedSheet] = 0;
  *&self->PSListController_opaque[OBJC_IVAR___PMSettingsController_subscriptions] = &_swiftEmptySetSingleton;
  *&self->PSListController_opaque[OBJC_IVAR___PMSettingsController_appPolicy] = 0;
  *&self->PSListController_opaque[OBJC_IVAR___PMSettingsController__specifiers] = 0;
  result = sub_12B88();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2998(appear);
}

- (id)specifiers
{
  selfCopy = self;
  sub_2C3C();

  v3.super.isa = sub_12858().super.isa;

  return v3.super.isa;
}

- (void)showPasswordsPrivacySheet
{
  selfCopy = self;
  v2 = sub_127F8();
  v3 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v2];

  if (v3)
  {
    [v3 setPresentingViewController:selfCopy];
    [v3 present];
  }
}

- (void)presentNeverSavedSheetView
{
  v3 = sub_7114(&qword_1D068, &qword_13830);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_128E8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_128C8();
  selfCopy = self;
  v8 = sub_128B8();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_5B50(0, 0, v5, &unk_13840, v9);
}

- (void)accountStoreDidChange
{
  selfCopy = self;
  sub_5F2C();
}

- (void)presentPasskeysLearnMoreView
{
  selfCopy = self;
  sub_6098();
}

- (void)openPasswordsApp
{
  v0 = sub_12418();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultWorkspace = [objc_opt_self() defaultWorkspace];
  if (defaultWorkspace)
  {
    v5 = defaultWorkspace;
    passwordManagerURL = [objc_opt_self() passwordManagerURL];
    sub_123F8();

    sub_123E8(v7);
    v9 = v8;
    (*(v1 + 8))(v3, v0);
    sub_7508(&_swiftEmptyArrayStorage);
    isa = sub_127E8().super.isa;

    [v5 openSensitiveURL:v9 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

- (id)openAutoFillSettings
{
  v0 = sub_7114(&qword_1D080, &qword_13850);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_12418();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12408();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v9 = result;
      sub_123E8(v8);
      v11 = v10;
      sub_7508(&_swiftEmptyArrayStorage);
      isa = sub_127E8().super.isa;

      [v9 openSensitiveURL:v11 withOptions:isa];

      return (*(v4 + 8))(v6, v3);
    }
  }

  __break(1u);
  return result;
}

@end