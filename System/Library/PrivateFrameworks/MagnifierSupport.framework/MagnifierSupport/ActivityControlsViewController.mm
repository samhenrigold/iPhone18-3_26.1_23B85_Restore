@interface ActivityControlsViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport30ActivityControlsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)handleDoneButtonTap:(id)tap;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ActivityControlsViewController

- (_TtC16MagnifierSupport30ActivityControlsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_257ECF500();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_257CDA190(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257CDDAB8();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7600, &unk_257EE1A70);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v16 - v12;
  v16.receiver = self;
  v16.super_class = ObjectType;
  selfCopy = self;
  [(ActivityControlsViewController *)&v16 viewWillAppear:appearCopy];
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_tableView) setEditing_];
  sub_257CDE3EC();
  sub_257CDDD74();
  v15 = sub_257CDA5F8();
  sub_257ECDBF0();

  sub_257CDCF74();
  (*(v7 + 8))(v13, v6);
}

- (void)handleDoneButtonTap:(id)tap
{
  selfCopy = self;
  if (tap)
  {
    selfCopy2 = self;
    swift_unknownObjectRetain();
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    selfCopy3 = self;
  }

  v6 = [(ActivityControlsViewController *)selfCopy navigationController:v9];
  if (v6)
  {
    v7 = v6;
    v8 = [(ActivityControlsViewController *)v6 popViewControllerAnimated:1];

    selfCopy = v7;
  }

  sub_257BE4084(&v9, &unk_27F8F62F0, &unk_257ED9D30);
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  (*(v5 + 8))(v11, v4);
  return 1;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_257CE4F50(viewCopy);

  (*(v7 + 8))(v13, v6);
  return v16;
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  sub_257CE4FEC();
  v13 = v12;
  (*(v5 + 8))(v11, v4);
  if (v13)
  {
    v14 = sub_257ECF4C0();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  (*(v5 + 8))(v11, v4);
  return 0;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  v7 = sub_257ECCEB0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = &v34 - v20;
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v28 = &v34 - v27;
  sub_257ECCE40();
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  sub_257CDF908(v21, v14, v28);

  v31 = *(v8 + 8);
  v31(v14, v7);
  v31(v21, v7);
  v32 = sub_257ECCE30();
  v31(v28, v7);

  return v32;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  sub_257CDFEFC(viewCopy, v13);

  (*(v7 + 8))(v13, v6);
}

@end