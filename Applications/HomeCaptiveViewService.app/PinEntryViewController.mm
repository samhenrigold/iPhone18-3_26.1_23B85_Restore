@interface PinEntryViewController
- (_TtC22HomeCaptiveViewService22PinEntryViewController)initWithContentView:(id)view;
- (void)didCompleteTextEntry:(id)entry;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PinEntryViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100008B44(selfCopy);
}

- (void)didCompleteTextEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_10000949C();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PinEntryViewController();
  v4 = v5.receiver;
  [(PinEntryViewController *)&v5 viewWillDisappear:disappearCopy];
  [v4 hideActivityIndicator];
}

- (_TtC22HomeCaptiveViewService22PinEntryViewController)initWithContentView:(id)view
{
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = type metadata accessor for PinEntryViewController();
  return [(PinEntryViewController *)&v6 initWithContentView:view];
}

@end