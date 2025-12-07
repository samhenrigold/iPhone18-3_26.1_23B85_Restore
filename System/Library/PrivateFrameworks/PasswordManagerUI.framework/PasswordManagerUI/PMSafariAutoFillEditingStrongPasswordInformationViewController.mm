@interface PMSafariAutoFillEditingStrongPasswordInformationViewController
+ (BOOL)shouldShowView;
- (CGSize)contentSize;
- (NSString)websiteTitle;
- (NSURL)formURL;
- (PMSafariAutoFillEditingStrongPasswordInformationViewController)initWithCoder:(id)coder;
- (PMSafariAutoFillEditingStrongPasswordInformationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PMSafariAutoFillEditingStrongPasswordInformationViewController)initWithWebsiteTitle:(id)title url:(id)url;
- (PMSafariAutoFillEditingStrongPasswordInformationViewControllerDelegate)delegate;
- (void)loadView;
- (void)setFormURL:(id)l;
- (void)setWebsiteTitle:(id)title;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PMSafariAutoFillEditingStrongPasswordInformationViewController

+ (BOOL)shouldShowView
{
  isPasswordsAppInstalled = [objc_opt_self() isPasswordsAppInstalled];
  if (isPasswordsAppInstalled)
  {
    pm_defaults = [objc_opt_self() pm_defaults];
    v4 = sub_21CB85584();
    bOOLForKey_ = [pm_defaults BOOLForKey_];

    LOBYTE(isPasswordsAppInstalled) = bOOLForKey_ ^ 1;
  }

  return isPasswordsAppInstalled;
}

- (PMSafariAutoFillEditingStrongPasswordInformationViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CGSize)contentSize
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  selfCopy = self;
  if ([ObjCClassFromMetadata shouldShowView])
  {
    view = [(PMSafariAutoFillEditingStrongPasswordInformationViewController *)selfCopy view];
    if (view)
    {
      v8 = view;
      [view intrinsicContentSize];
      v10 = v9;
      v12 = v11;

      v7 = v12;
      v6 = v10;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v6 = 0.0;
    v7 = 0.0;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (NSString)websiteTitle
{
  v3 = OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anywebsiteTitle;
  swift_beginAccess();
  sub_21C7A3394(self + v3, v6);
  swift_dynamicCast();
  v4 = sub_21CB85584();

  return v4;
}

- (void)setWebsiteTitle:(id)title
{
  v4 = sub_21CB855C4();
  v9 = MEMORY[0x277D837D0];
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v6 = OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anywebsiteTitle;
  swift_beginAccess();
  selfCopy = self;
  __swift_destroy_boxed_opaque_existential_0((self + v6));
  sub_21C731A9C(&v8, (self + v6));
  swift_endAccess();
}

- (NSURL)formURL
{
  v3 = sub_21CB80BE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anyFormURL;
  swift_beginAccess();
  sub_21C7A3394(self + v7, v11);
  swift_dynamicCast();
  v8 = sub_21CB80B74();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)setFormURL:(id)l
{
  v4 = sub_21CB80BE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80B94();
  v13 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(v5 + 32))(boxed_opaque_existential_0, v7, v4);
  v9 = OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anyFormURL;
  swift_beginAccess();
  selfCopy = self;
  __swift_destroy_boxed_opaque_existential_0((self + v9));
  sub_21C731A9C(&v12, (self + v9));
  swift_endAccess();
}

- (PMSafariAutoFillEditingStrongPasswordInformationViewController)initWithWebsiteTitle:(id)title url:(id)url
{
  v4 = sub_21CB80BE4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB855C4();
  v9 = v8;
  sub_21CB80B94();
  return PMSafariAutoFillEditingStrongPasswordInformationViewController.init(websiteTitle:url:)(v7, v9, v6);
}

- (PMSafariAutoFillEditingStrongPasswordInformationViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  result = sub_21CB861C4();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  PMSafariAutoFillEditingStrongPasswordInformationViewController.loadView()();
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PMSafariAutoFillEditingStrongPasswordInformationViewController;
  [(PMSafariAutoFillEditingStrongPasswordInformationViewController *)&v3 viewWillAppear:appear];
}

- (PMSafariAutoFillEditingStrongPasswordInformationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end