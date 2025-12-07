@interface HomePodSetupFileTransferViewController
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HomePodSetupFileTransferViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100010900();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupFileTransferViewController(0);
  v4 = v5.receiver;
  [(HomePodSetupFileTransferViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }
}

@end