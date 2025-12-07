@interface VerificationSymptomDateEntryViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (void)datePickerValueChanged:(id)changed;
- (void)didTapCancel;
- (void)didTapSecondaryButton;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSymptomsDateCell:(id)cell;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation VerificationSymptomDateEntryViewController

- (void)didTapSecondaryButton
{
  selfCopy = self;
  sub_251687A98();
}

- (void)viewDidLoad
{
  selfCopy = self;
  VerificationSymptomDateEntryViewController.viewDidLoad()();
}

- (void)updateSymptomsDateCell:(id)cell
{
  cellCopy = cell;
  selfCopy = self;
  sub_251686BE4(cellCopy);
}

- (void)datePickerValueChanged:(id)changed
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538C0, &qword_2517090F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  changedCopy = changed;
  selfCopy = self;
  date = [changedCopy date];
  sub_251702E04();

  v11 = sub_251702E24();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_symptomOnsetDate;
  swift_beginAccess();
  sub_25168A95C(v7, selfCopy + v12);
  swift_endAccess();
  sub_2516852E0();

  sub_25168B718(v7, &unk_27F4538C0, &qword_2517090F0);
}

- (void)viewDidLayoutSubviews
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v11.receiver = self;
  v11.super_class = ObjectType;
  selfCopy = self;
  [(OBTableWelcomeController *)&v11 viewDidLayoutSubviews];
  v8 = *(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_primaryButton);
  sub_251685530(v6);
  v9 = type metadata accessor for SymptomOnset(0);
  v10 = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  sub_25168B718(v6, &unk_27F4538B0, &unk_2517068C0);
  [v8 setEnabled_];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v6 = sub_251702EE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251702EC4();
  viewCopy = view;
  selfCopy = self;
  sub_25168A8AC(v9);
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_251702EE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251702EC4();
  viewCopy = view;
  selfCopy = self;
  VerificationSymptomDateEntryViewController.tableView(_:didSelectRowAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_25168AA3C(section);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_25168AB7C(section);
  v9 = v8;

  return v9;
}

- (void)didTapCancel
{
  v3 = *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_flow);
  swift_getObjectType();
  v4 = *(v3 + 128);
  selfCopy = self;
  v4();
}

- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end