@interface EmojiGenerationController_new
- (STKEmojiGenerationViewControllerDelegate)delegate;
- (_TtC20StickerPickerService29EmojiGenerationController_new)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation EmojiGenerationController_new

- (STKEmojiGenerationViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  selfCopy = self;
  EmojiGenerationController_new.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_10000634C(&unk_10001E0F0, &qword_10000F470);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  selfCopy = self;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = selfCopy;
  sub_1000039BC(0, 0, v7, &unk_10000F6D0, v11);

  v12 = type metadata accessor for EmojiGenerationController_new(0);
  v13.receiver = selfCopy;
  v13.super_class = v12;
  [(EmojiGenerationController_new *)&v13 viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_10000634C(&unk_10001E0F0, &qword_10000F470);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for EmojiGenerationController_new(0);
  v14.receiver = self;
  v14.super_class = v8;
  selfCopy = self;
  [(EmojiGenerationController_new *)&v14 viewDidDisappear:disappearCopy];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = selfCopy;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_100003CBC(0, 0, v7, &unk_10000F6C8, v13);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  EmojiGenerationController_new.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC20StickerPickerService29EmojiGenerationController_new)initWithNibName:(id)name bundle:(id)bundle
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
  return EmojiGenerationController_new.init(nibName:bundle:)(v5, v7, bundle);
}

@end