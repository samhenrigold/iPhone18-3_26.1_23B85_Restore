@interface InternalPeopleDetectionOptionsViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation InternalPeopleDetectionOptionsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257CAFD5C();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(InternalPeopleDetectionOptionsViewController *)&v9 viewWillAppear:appearCopy];
  navigationItem = [v4 navigationItem];
  v6 = sub_257ECF4C0();
  [navigationItem setTitle_];

  v7 = sub_257CB4058();
  v8 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray;
  swift_beginAccess();
  *&v4[v8] = v7;
}

- (_TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_257CAFFEC(v5, v7, bundle);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_257CB0334(viewCopy, v13);

  (*(v7 + 8))(v13, v6);

  return v16;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v5 = *(self + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionSections);
  if (*(v5 + 16) <= section)
  {
    v7 = 0;

    return v7;
  }

  if ((section & 0x8000000000000000) == 0)
  {
    sub_257C69B84(*(v5 + section + 32));
    v6 = sub_257ECF4C0();

    v7 = v6;

    return v7;
  }

  __break(1u);
  return self;
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
  sub_257CB0D68(viewCopy);

  (*(v7 + 8))(v13, v6);
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_257CB4954();

  (*(v7 + 8))(v13, v6);
  return self & 1;
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

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v8 = sub_257ECCEB0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  sub_257CB2040(viewCopy, style, v15);

  (*(v9 + 8))(v15, v8);
}

@end