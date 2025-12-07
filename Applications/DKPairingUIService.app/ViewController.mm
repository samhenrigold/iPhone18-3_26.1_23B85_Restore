@interface ViewController
- (_TtC18DKPairingUIService14ViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)pairingStatusWithInfo:(id)info state:(int64_t)state metadata:(id)metadata error:(id)error;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)proxCardFlowDidDismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ViewController(0);
  [(ViewController *)&v2 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ViewController(0);
  [(ViewController *)&v4 viewDidAppear:appearCopy];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = sub_10000A48C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = *&self->context[OBJC_IVAR____TtC18DKPairingUIService14ViewController_context];
  *&self->context[OBJC_IVAR____TtC18DKPairingUIService14ViewController_context] = context;
  selfCopy = self;
  contextCopy = context;

  v14 = contextCopy;
  v12 = sub_100002ECC();
  if (v12)
  {
    [v12 setAllowsAlertStacking:1];
    v12 = swift_unknownObjectRelease();
  }

  if (v6)
  {
    (v8)(v12);

    sub_10000A27C(v8, v7);
    v13 = v14;
  }

  else
  {

    v13 = selfCopy;
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10000A2C4;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_1000089E0(v6, v7);
  sub_10000A27C(v6, v7);
}

- (void)pairingStatusWithInfo:(id)info state:(int64_t)state metadata:(id)metadata error:(id)error
{
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  errorCopy = error;
  selfCopy = self;
  sub_100009E70(state, v9, error);
}

- (_TtC18DKPairingUIService14ViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100007A0C(v5, v7, bundle);
}

- (void)proxCardFlowDidDismiss
{
  selfCopy = self;
  sub_100007F48();
}

@end