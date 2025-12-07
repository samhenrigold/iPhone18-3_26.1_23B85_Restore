@interface HeadphoneAdaptiveControlsConversationAwarenessViewController
- (_TtC20HeadphoneProxService60HeadphoneAdaptiveControlsConversationAwarenessViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadphoneAdaptiveControlsConversationAwarenessViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10001E664();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadphoneAdaptiveControlsConversationAwarenessViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService60HeadphoneAdaptiveControlsConversationAwarenessViewController_type]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC20HeadphoneProxService60HeadphoneAdaptiveControlsConversationAwarenessViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  *&self->presenter[OBJC_IVAR____TtC20HeadphoneProxService60HeadphoneAdaptiveControlsConversationAwarenessViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService60HeadphoneAdaptiveControlsConversationAwarenessViewController_type] = 11;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneAdaptiveControlsConversationAwarenessViewController *)&v7 initWithContentView:view];
}

@end