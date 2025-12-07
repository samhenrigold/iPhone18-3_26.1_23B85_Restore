@interface StickerImageConfirmationController
- (_TtC22StickersUltraExtension34StickerImageConfirmationController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapImageView:(id)view;
- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)analysis;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation StickerImageConfirmationController

- (void)loadView
{
  selfCopy = self;
  sub_100007DDC();
}

- (void)didTapImageView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_100008800(viewCopy);
}

- (void)viewDidLoad
{
  v3 = sub_100006D40(&unk_1000B2960, &qword_10008D8D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for StickerImageConfirmationController(0);
  v12.receiver = self;
  v12.super_class = v6;
  selfCopy = self;
  [(StickerImageConfirmationController *)&v12 viewDidLoad];
  v8 = sub_10007D990();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_10007D960();
  v9 = selfCopy;
  v10 = sub_10007D950();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_100009514(0, 0, v5, &unk_10008C4C8, v11);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for StickerImageConfirmationController(0);
  v4 = v7.receiver;
  [(StickerImageConfirmationController *)&v7 viewWillDisappear:disappearCopy];
  presentedViewController = [v4 presentedViewController];
  if (presentedViewController)
  {
    v6 = presentedViewController;
    sub_10007C850();
    if (swift_dynamicCastClass())
    {

      [v4 dismissViewControllerAnimated:disappearCopy completion:0];
      swift_unknownObjectWeakAssign();
    }

    else
    {

      v4 = v6;
    }
  }
}

- (_TtC22StickersUltraExtension34StickerImageConfirmationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)analysis
{
  analysisCopy = analysis;
  selfCopy = self;
  sub_100009D20(analysisCopy);
}

@end