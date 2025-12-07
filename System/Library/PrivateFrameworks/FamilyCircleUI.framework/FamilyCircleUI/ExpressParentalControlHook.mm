@interface ExpressParentalControlHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (_TtC14FamilyCircleUI26ExpressParentalControlHook)init;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(RUIObjectModel *)model completion:(id)completion;
@end

@implementation ExpressParentalControlHook

- (RUIServerHookDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC14FamilyCircleUI26ExpressParentalControlHook)init
{
  type metadata accessor for ParentalControlStore(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore__presets;
  v4 = sub_21BE2679C();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
  v6 = sub_21BE266DC();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_user;
  v8 = sub_21BE2688C();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  sub_21BE2670C();
  v9 = sub_21BC3F624(v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (BOOL)shouldMatchElement:(id)element
{
  elementCopy = element;
  name = [elementCopy name];
  if (name)
  {
    v5 = name;
    sub_21BE28A0C();

    v6 = sub_21BE28B6C();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)shouldMatchModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  v6 = sub_21BC3F77C(modelCopy);

  return v6 & 1;
}

- (void)processObjectModel:(RUIObjectModel *)model completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = model;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21BE391E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE32A10;
  v14[5] = v13;
  modelCopy = model;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v9, &unk_21BE391F0, v14);
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_21BE2890C();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  elementCopy = element;
  modelCopy = model;
  selfCopy = self;
  sub_21BC3B308(elementCopy, v10, modelCopy, sub_21BC0FF38, v11);
}

@end