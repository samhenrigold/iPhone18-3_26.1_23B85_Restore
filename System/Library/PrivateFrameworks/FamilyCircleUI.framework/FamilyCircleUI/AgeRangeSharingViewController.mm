@interface AgeRangeSharingViewController
- (_TtC14FamilyCircleUI29AgeRangeSharingViewController)initWithAgeRangeAccountProtocol:(id)protocol presentAsModal:(BOOL)modal;
- (_TtC14FamilyCircleUI29AgeRangeSharingViewController)initWithCoder:(id)coder;
- (_TtC14FamilyCircleUI29AgeRangeSharingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AgeRangeSharingViewController

- (_TtC14FamilyCircleUI29AgeRangeSharingViewController)initWithAgeRangeAccountProtocol:(id)protocol presentAsModal:(BOOL)modal
{
  swift_getObjectType();
  v6 = swift_unknownObjectRetain();

  return sub_21BD384D0(v6, modal, self);
}

- (_TtC14FamilyCircleUI29AgeRangeSharingViewController)initWithCoder:(id)coder
{
  result = sub_21BE2978C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21BD37498(selfCopy);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for AgeRangeSharingViewController();
  v15.receiver = self;
  v15.super_class = v8;
  selfCopy = self;
  [(AgeRangeSharingViewController *)&v15 viewWillAppear:appearCopy];
  v10 = sub_21BE28DAC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_21BE28D7C();
  v11 = selfCopy;
  v12 = sub_21BE28D6C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_21BBA932C(0, 0, v7, &unk_21BE45220, v13);
}

- (_TtC14FamilyCircleUI29AgeRangeSharingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end