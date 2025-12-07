@interface AppPrivacySettingsController
- (_TtC21WalletPrivacySettings28AppPrivacySettingsController)initWithCoder:(id)coder;
- (_TtC21WalletPrivacySettings28AppPrivacySettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AppPrivacySettingsController

- (_TtC21WalletPrivacySettings28AppPrivacySettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_3BA0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1E64(v5, v7, bundle);
}

- (_TtC21WalletPrivacySettings28AppPrivacySettingsController)initWithCoder:(id)coder
{
  v3 = &self->PSListController_opaque[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController_bundleIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&self->PSListController_opaque[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___walletProvider] = 1;
  *&self->PSListController_opaque[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___financeKitProvider] = 1;
  result = sub_3C20();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(AppPrivacySettingsController *)&v7 viewWillAppear:appearCopy];
  v5 = sub_1998(&OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___walletProvider, sub_180C);
  if (v5)
  {
    [v5 reloadStaleSpecifiers];
    swift_unknownObjectRelease();
  }

  v6 = sub_1998(&OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___financeKitProvider, sub_1A08);
  if (v6)
  {
    [v6 reloadStaleSpecifiers];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(AppPrivacySettingsController *)&v9 viewWillDisappear:disappearCopy];
  specifier = [v4 specifier];
  if (specifier)
  {
    v6 = specifier;
    isa = sub_3BD0().super.super.isa;
    v8 = sub_3B90();
    [v6 setProperty:isa forKey:v8];
  }
}

- (id)specifiers
{
  selfCopy = self;
  v3 = AppPrivacySettingsController.specifiers()();

  if (v3)
  {
    v4.super.isa = sub_3BB0().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

@end