@interface PMSafariStreamlinedStrongPasswordViewController
- (PMSafariStreamlinedStrongPasswordViewController)initWithCoder:(id)coder;
- (PMSafariStreamlinedStrongPasswordViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PMSafariStreamlinedStrongPasswordViewControllerDelegate)delegate;
- (id)initForSafariWithURL:(id)l userName:(id)name;
- (void)loadView;
@end

@implementation PMSafariStreamlinedStrongPasswordViewController

- (PMSafariStreamlinedStrongPasswordViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)initForSafariWithURL:(id)l userName:(id)name
{
  v4 = sub_21CB80BE4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80B94();
  v7 = sub_21CB855C4();
  v9 = sub_21C85F448(v6, v7, v8);

  return v9;
}

- (PMSafariStreamlinedStrongPasswordViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = (self + OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController__presentationSource);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController_configurationProvider;
  _s21ConfigurationProviderCMa_0(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtCE17PasswordManagerUICSo47PMSafariStreamlinedStrongPasswordViewController21ConfigurationProvider_badgeImage;
  v8 = type metadata accessor for PMOsloBadge(0);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  sub_21CB81104();
  *(v6 + 59) = 0;
  sub_21C85EF6C(0, &v11);
  v9 = v12[0];
  *(v6 + 16) = v11;
  *(v6 + 32) = v9;
  *(v6 + 43) = *(v12 + 11);
  *(self + v5) = v6;
  result = sub_21CB861C4();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  PMSafariStreamlinedStrongPasswordViewController.loadView()();
}

- (PMSafariStreamlinedStrongPasswordViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end