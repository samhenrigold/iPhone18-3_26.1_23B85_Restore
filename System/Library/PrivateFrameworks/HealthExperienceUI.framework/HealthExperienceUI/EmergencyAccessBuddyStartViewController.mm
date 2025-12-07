@interface EmergencyAccessBuddyStartViewController
- (_TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapCancel:(id)cancel;
- (void)didTapNext:(id)next;
- (void)didTapReviewLater;
- (void)viewDidLoad;
@end

@implementation EmergencyAccessBuddyStartViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for EmergencyAccessBuddyStartViewController(0);
  v2 = v5.receiver;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  navigationItem = [v2 navigationItem];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v2 action:sel_didTapCancel_];
  [navigationItem setRightBarButtonItem_];

  sub_1BA01ECE4();
}

- (void)didTapCancel:(id)cancel
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA01E8A0();

  __swift_destroy_boxed_opaque_existential_1(v5);
}

- (void)didTapReviewLater
{
  selfCopy = self;
  sub_1BA01F4AC();
}

- (void)didTapNext:(id)next
{
  v4 = type metadata accessor for EmergencyAccessUserStatus(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  v9 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_healthStore);
  v11 = *(&selfCopy->super.super.super.super._responderFlags + OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow);
  v14 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow);
  v10 = v14;
  v15 = v11;
  sub_1BA020470(selfCopy + OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_emergencyStatus, v7);
  objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyMedicalIDViewController(0));
  v12 = v9;
  sub_1BA02040C(v10, v11);
  v13 = sub_1BA2B71E4(v12, &v14, v7);

  [(EmergencyAccessBuddyStartViewController *)selfCopy showViewController:v13 sender:selfCopy];
  __swift_destroy_boxed_opaque_existential_1(v16);
}

- (_TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end