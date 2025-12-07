@interface FAPrivacyDisclosureAcknowledgmentHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (_TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook)init;
- (void)processElement:(RUIElement *)element attributes:(NSDictionary *)attributes objectModel:(RUIObjectModel *)model completion:(id)completion;
- (void)processObjectModel:(RUIObjectModel *)model completion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation FAPrivacyDisclosureAcknowledgmentHook

- (RUIServerHookDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate;
  swift_beginAccess();
  *(&self->super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (BOOL)shouldMatchElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  v6 = sub_21BDC3894(elementCopy);

  return v6 & 1;
}

- (BOOL)shouldMatchModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  v6 = sub_21BDC3940(modelCopy);

  return v6 & 1;
}

- (void)processElement:(RUIElement *)element attributes:(NSDictionary *)attributes objectModel:(RUIObjectModel *)model completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = element;
  v15[3] = attributes;
  v15[4] = model;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_21BE28DAC();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_21BE4D3E0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_21BE4D3E8;
  v18[5] = v17;
  elementCopy = element;
  attributesCopy = attributes;
  modelCopy = model;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v13, &unk_21BE4D3F0, v18);
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
  v13[4] = &unk_21BE4D3D0;
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

- (_TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook)init
{
  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for FAPrivacyDisclosureAcknowledgmentHook();
  return [(FAPrivacyDisclosureAcknowledgmentHook *)&v3 init];
}

@end