@interface IMBAuthenticationViewController
- (BOOL)shouldHandleRedirectURI:(id)i;
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
- (void)didChangeNavigationURL:(id)l;
- (void)didChangeSecureStatus:(BOOL)status;
- (void)didReceiveCallbackRequest:(id)request;
- (void)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation IMBAuthenticationViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000493F4();
}

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  result = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_aswasWindow);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for IMBAuthenticationViewController();
  v4 = v5.receiver;
  [(IMBAuthenticationViewController *)&v5 viewDidAppear:appearCopy];
  if ((v4[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_didShowAuth] & 1) == 0)
  {
    v4[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_didShowAuth] = 1;
    sub_100049558();
  }
}

- (BOOL)shouldHandleRedirectURI:(id)i
{
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB6AC();
  selfCopy = self;
  v9 = sub_10004ACFC();

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (void)didReceiveCallbackRequest:(id)request
{
  v4 = sub_1000AB57C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB54C();
  selfCopy = self;
  sub_10004AE98();

  (*(v5 + 8))(v7, v4);
}

- (void)didChangeSecureStatus:(BOOL)status
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController);
  selfCopy = self;
  v4 = v3;
  sub_100072924();
}

- (void)didChangeNavigationURL:(id)l
{
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB6AC();
  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController);
  selfCopy = self;
  v10 = v8;
  sub_100072924();

  (*(v5 + 8))(v7, v4);
}

- (void)dismiss
{
  v3 = self + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 1);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 16);
      v7 = type metadata accessor for IMBAuthenticationViewController();
      v6(selfCopy, v7, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

@end