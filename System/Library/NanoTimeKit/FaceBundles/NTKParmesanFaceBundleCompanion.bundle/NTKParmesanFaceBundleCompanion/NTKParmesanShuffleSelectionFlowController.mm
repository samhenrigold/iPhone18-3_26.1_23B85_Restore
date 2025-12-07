@interface NTKParmesanShuffleSelectionFlowController
- (NTKParmesanShuffleSelectionDelegate)delegate;
- (NTKParmesanShuffleSelectionFlowController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setDelegate:(id)delegate;
- (void)userDidSelectCancel:(id)cancel;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NTKParmesanShuffleSelectionFlowController

- (NTKParmesanShuffleSelectionDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_23BFEFAC0(delegate);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_23BFEFD1C(appearCopy);
}

- (void)userDidSelectCancel:(id)cancel
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_23BFFA960();
  swift_unknownObjectRelease();
  [(NTKParmesanShuffleSelectionFlowController *)selfCopy dismissViewControllerAnimated:1 completion:0];

  sub_23BF4A9A4(v5);
}

- (NTKParmesanShuffleSelectionFlowController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end