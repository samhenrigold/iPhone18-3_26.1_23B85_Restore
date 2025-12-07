@interface SummarySharingSystemContactsPickerViewController
- (_TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)summarySharingEntryStore:(id)store didUpdateReachabilityStatus:(id)status error:(id)error;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation SummarySharingSystemContactsPickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA1EE8E0();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SummarySharingSystemContactsPickerViewController();
  v4 = v5.receiver;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:appearCopy];
  sub_1BA1EEC70();
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_1BA1F01E0(cancelCopy);
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  v6 = sub_1BA4A64F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  contactCopy = contact;
  selfCopy = self;
  *v10 = sub_1BA4A7308();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  LOBYTE(contact) = sub_1BA4A6528();
  (*(v7 + 8))(v10, v6);
  if (contact)
  {
    v13 = selfCopy + OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state;
    v14 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state);
    *v13 = contactCopy;
    v15 = v13[8];
    v13[8] = 1;
    v16 = contactCopy;
    sub_1BA1F1484(v14, v15);
    sub_1BA1EEC70();
  }

  else
  {
    __break(1u);
  }
}

- (void)summarySharingEntryStore:(id)store didUpdateReachabilityStatus:(id)status error:(id)error
{
  sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
  v8 = sub_1BA4A6628();
  storeCopy = store;
  selfCopy = self;
  errorCopy = error;
  sub_1BA1F1724(v8);
}

- (_TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end