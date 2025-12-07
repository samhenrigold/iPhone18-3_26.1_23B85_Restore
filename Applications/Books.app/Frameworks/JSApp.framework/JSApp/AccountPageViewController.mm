@interface AccountPageViewController
- (BOOL)shouldAutorotate;
- (_TtC5JSApp25AccountPageViewController)initWithAccountURL:(id)l;
- (_TtC5JSApp25AccountPageViewController)initWithCoder:(id)coder;
- (_TtC5JSApp25AccountPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)accountPageViewControllerDidFinish:(id)finish;
@end

@implementation AccountPageViewController

- (_TtC5JSApp25AccountPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_843AC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_6B660(v5, v7, bundle);
}

- (_TtC5JSApp25AccountPageViewController)initWithCoder:(id)coder
{
  self->SKAccountPageViewController_opaque[OBJC_IVAR____TtC5JSApp25AccountPageViewController_pageType] = 0;
  v3 = &self->SKAccountPageViewController_opaque[OBJC_IVAR____TtC5JSApp25AccountPageViewController_contentID];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &self->SKAccountPageViewController_opaque[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish];
  *v4 = 0;
  *(v4 + 1) = 0;
  result = sub_84AFC();
  __break(1u);
  return result;
}

- (BOOL)shouldAutorotate
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return userInterfaceIdiom == &dword_0 + 1;
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_0 + 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (_TtC5JSApp25AccountPageViewController)initWithAccountURL:(id)l
{
  v4 = sub_2805C(&unk_CAE60, &qword_A1800);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  if (l)
  {
    sub_8396C();
    v7 = sub_839CC();
    v9 = 0;
    v8 = (*(v7 - 8) + 56);
  }

  else
  {
    v7 = sub_839CC();
    v8 = (*(v7 - 8) + 56);
    v9 = 1;
  }

  (*v8)(v6, v9, 1, v7);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)accountPageViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  sub_6BA70(finishCopy);
}

@end