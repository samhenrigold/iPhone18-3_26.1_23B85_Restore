@interface DKUncertifiedAlertView
- (_TtC18DKPairingUIService22DKUncertifiedAlertView)initWithCoder:(id)coder;
- (_TtC18DKPairingUIService22DKUncertifiedAlertView)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation DKUncertifiedAlertView

- (_TtC18DKPairingUIService22DKUncertifiedAlertView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_logger;
  Logger.init(subsystem:category:)();
  v5 = OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_viewAlert;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_viewAlert) = 0;
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(self + v4, v6);

  type metadata accessor for DKUncertifiedAlertView(0);
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for DKUncertifiedAlertView(0);
  [(DKUncertifiedAlertView *)&v2 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DKUncertifiedAlertView(0);
  v4 = v5.receiver;
  [(DKUncertifiedAlertView *)&v5 viewDidAppear:appearCopy];
  sub_100001B3C();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DKUncertifiedAlertView(0);
  [(DKUncertifiedAlertView *)&v4 viewDidDisappear:disappearCopy];
}

- (_TtC18DKPairingUIService22DKUncertifiedAlertView)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end