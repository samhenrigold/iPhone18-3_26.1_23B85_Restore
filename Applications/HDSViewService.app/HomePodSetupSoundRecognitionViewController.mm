@interface HomePodSetupSoundRecognitionViewController
- (_TtC14HDSViewService42HomePodSetupSoundRecognitionViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HomePodSetupSoundRecognitionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000939A0();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupSoundRecognitionViewController(0);
  v4 = v5.receiver;
  [(HomePodSetupSoundRecognitionViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }
}

- (_TtC14HDSViewService42HomePodSetupSoundRecognitionViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_100095084(view);

  return v5;
}

@end