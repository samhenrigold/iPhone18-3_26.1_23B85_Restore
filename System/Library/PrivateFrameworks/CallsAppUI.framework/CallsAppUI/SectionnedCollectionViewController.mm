@interface SectionnedCollectionViewController
- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (NSArray)keyCommands;
- (_TtC10CallsAppUI34SectionnedCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC10CallsAppUI34SectionnedCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view dropPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)deleteKeyPressed:(id)pressed;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SectionnedCollectionViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1CFBA69F0(appear);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_1CFC9C138();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_1CFBCB968(v11);

  (*(v9 + 8))(v11, v8);
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  selfCopy = self;
  sub_1CFBC497C(editingCopy, animatedCopy);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SectionnedCollectionViewController();
  v4 = v5.receiver;
  [(SectionnedCollectionViewController *)&v5 viewWillDisappear:disappearCopy];
  [v4 setEditing:0 animated:{disappearCopy, v5.receiver, v5.super_class}];
  *(v4 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_isVisible) = 0;
}

- (_TtC10CallsAppUI34SectionnedCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10CallsAppUI34SectionnedCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  v4 = sub_1CFC9C138();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  (*(v5 + 8))(v7, v4);
  return 1;
}

- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1CFC9C0D8();
  viewCopy = view;
  selfCopy = self;
  sub_1CFC9CD28();
  if (v12[15] == 1)
  {
    [(SectionnedCollectionViewController *)selfCopy setEditing:1 animated:1];
  }

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_1CFBCB248(v9);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = sub_1CFC9C138();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  v9 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.isa) + 0x1E8);
  selfCopy = self;
  v9();
  if ([(SectionnedCollectionViewController *)selfCopy isEditing])
  {
    sub_1CFC90748();
  }

  (*(v6 + 8))(v8, v5);
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  viewCopy = view;
  selfCopy = self;
  SectionnedCollectionViewController.collectionView(_:performPrimaryActionForItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  viewCopy = view;
  selfCopy = self;
  sub_1CFBCB684();

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  sub_1CFC9C138();
  v7 = sub_1CFC9F8A8();
  viewCopy = view;
  selfCopy = self;
  v10 = sub_1CFBCBA2C(v7);

  return v10;
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path
{
  v8 = sub_1CFC9C138();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  v16 = sub_1CFBCBE38(viewCopy, v15);

  (*(v9 + 8))(v11, v8);

  return v16;
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CFBCBF3C(animator);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v7 = sub_1CFC9C138();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CFBCC0E8(v10);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_1CFBA2D80(0, &qword_1EC4ED510, 0x1E69DC990);
  v13 = sub_1CFC9F898();

  return v13;
}

- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path
{
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  viewCopy = view;
  selfCopy = self;
  v12 = SectionnedCollectionViewController.collectionView(_:dragPreviewParametersForItemAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CFBCC278(coordinator);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED408, &qword_1CFCA22E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  if (path)
  {
    sub_1CFC9C0D8();
    v12 = sub_1CFC9C138();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_1CFC9C138();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v16 = sub_1CFBCC478(update, v11);

  swift_unknownObjectRelease();
  sub_1CFBC2FB0(v11, &unk_1EC4ED408, &qword_1CFCA22E0);

  return v16;
}

- (id)collectionView:(id)view dropPreviewParametersForItemAtIndexPath:(id)path
{
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1CFC9C0C8();
  v13 = [(SectionnedCollectionViewController *)selfCopy collectionView:viewCopy dragPreviewParametersForItemAtIndexPath:v12];

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (NSArray)keyCommands
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CFCA2540;
  v4 = *MEMORY[0x1E69DDE88];
  v5 = objc_opt_self();
  selfCopy = self;
  *(v3 + 32) = [v5 keyCommandWithInput:v4 modifierFlags:0 action:sel_deleteKeyPressed_];

  sub_1CFBA2D80(0, &qword_1EC4F0178, 0x1E69DCBA0);
  v7 = sub_1CFC9F898();

  return v7;
}

- (void)deleteKeyPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_1CFC92970();
}

@end