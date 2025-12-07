@interface EditControlsViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport26EditControlsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation EditControlsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257D0BD10();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257D0BF44(appear);
}

- (_TtC16MagnifierSupport26EditControlsViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_257D0CF9C(v5, v7, bundle);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_257E27A60();
    swift_unknownObjectRelease();
  }
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
  v16 = sub_257D0F728(viewCopy);

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
  sub_257D0D814(v21, v14, v28);

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
  sub_257D0DDF4(viewCopy, v13);

  (*(v7 + 8))(v13, v6);
}

@end