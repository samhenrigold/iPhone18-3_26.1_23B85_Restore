@interface DKPairingAlertView
- (_TtC18DKPairingUIService18DKPairingAlertView)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation DKPairingAlertView

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for DKPairingAlertView(0);
  [(DKPairingAlertView *)&v2 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DKPairingAlertView(0);
  v4 = v5.receiver;
  [(DKPairingAlertView *)&v5 viewDidAppear:appearCopy];
  sub_10000D0AC();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DKPairingAlertView(0);
  [(DKPairingAlertView *)&v4 viewDidDisappear:disappearCopy];
}

- (_TtC18DKPairingUIService18DKPairingAlertView)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end