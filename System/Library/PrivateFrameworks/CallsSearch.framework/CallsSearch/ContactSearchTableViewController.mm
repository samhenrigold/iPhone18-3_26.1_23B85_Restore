@interface ContactSearchTableViewController
- (_TtC11CallsSearch32ContactSearchTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)configureWithCardController:(id)controller presentationResultForIndex:(id)index;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)callButtonTapped;
- (void)handleTUIDSLookupManagerStatusChanged;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ContactSearchTableViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1CFB7BE40();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1CFB7BF6C(appear);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  v5 = sub_1CFB7B9BC();
  if (v5 >> 62)
  {
    v6 = sub_1CFB8FFB0();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1CFB7C12C(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  viewCopy = view;
  selfCopy = self;
  sub_1CFB7C780(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)handleTUIDSLookupManagerStatusChanged
{
  selfCopy = self;
  sub_1CFB7D624(selfCopy);
}

- (int64_t)configureWithCardController:(id)controller presentationResultForIndex:(id)index
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  controllerCopy = controller;
  selfCopy = self;
  v12 = sub_1CFB7D75C(controllerCopy);

  (*(v7 + 8))(v9, v6);
  return v12;
}

- (void)callButtonTapped
{
  selfCopy = self;
  sub_1CFB7D9C0();
}

- (_TtC11CallsSearch32ContactSearchTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end