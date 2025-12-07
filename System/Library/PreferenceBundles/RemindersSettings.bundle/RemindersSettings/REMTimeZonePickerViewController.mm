@interface REMTimeZonePickerViewController
- (_TtC17RemindersSettings31REMTimeZonePickerViewController)initWithCoder:(id)coder;
- (_TtC17RemindersSettings31REMTimeZonePickerViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC17RemindersSettings31REMTimeZonePickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation REMTimeZonePickerViewController

- (_TtC17RemindersSettings31REMTimeZonePickerViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_dataSource) = 0;
  v3 = (self + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_searchController) = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_initialSearchTerm);
  *v4 = 0;
  v4[1] = 0;
  result = sub_23FF0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_18094();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  ObjectType = swift_getObjectType();
  v6 = sub_7F84(&qword_3AC38, &qword_27250);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v14.receiver = self;
  v14.super_class = ObjectType;
  selfCopy = self;
  [(REMTimeZonePickerViewController *)&v14 viewDidAppear:appearCopy];
  v10 = sub_23DA0();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_23D80();
  v11 = selfCopy;
  v12 = sub_23D70();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_1B8BC(0, 0, v8, &unk_27628, v13);
}

- (_TtC17RemindersSettings31REMTimeZonePickerViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17RemindersSettings31REMTimeZonePickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_23730();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23720();
  viewCopy = view;
  selfCopy = self;
  sub_19970(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v5 = sub_23C90();
  v7 = v6;
  selfCopy = self;
  sub_1203C(v5, v7);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_19CC8(clickedCopy);
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_19F64();
}

@end