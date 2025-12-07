@interface LocationViewModel
+ (id)createModel;
+ (void)setShared:(id)shared;
- (_TtC14FamilyCircleUI17LocationViewModel)init;
- (void)dealloc;
@end

@implementation LocationViewModel

+ (void)setShared:(id)shared
{
  swift_beginAccess();
  v4 = qword_27CDB9740;
  qword_27CDB9740 = shared;
  sharedCopy = shared;
}

- (void)dealloc
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_21BBA9018(0, 0, v5, &unk_21BE40590, v7);

  v9 = type metadata accessor for LocationViewModel(0);
  v10.receiver = selfCopy;
  v10.super_class = v9;
  [(LocationViewModel *)&v10 dealloc];
}

+ (id)createModel
{
  v2 = _s14FamilyCircleUI17LocationViewModelC06createF0ACyFZ_0();

  return v2;
}

- (_TtC14FamilyCircleUI17LocationViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end