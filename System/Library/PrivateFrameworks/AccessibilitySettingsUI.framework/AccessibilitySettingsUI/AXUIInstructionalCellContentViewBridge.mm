@interface AXUIInstructionalCellContentViewBridge
- (AXUIInstructionalCellContentViewBridge)init;
- (id)makeContentViewControllerWithViewModel:(id)model;
@end

@implementation AXUIInstructionalCellContentViewBridge

- (id)makeContentViewControllerWithViewModel:(id)model
{
  v4 = type metadata accessor for AXTipCellContentView(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  swift_storeEnumTagMultiPayload();
  v8 = (v7 + *(v5 + 28));
  type metadata accessor for AXUIInstructionalCellContentViewModel(0);
  sub_23D9A5688(&qword_27E2F68B0, type metadata accessor for AXUIInstructionalCellContentViewModel, &protocol conformance descriptor for AXUIInstructionalCellContentViewModel);
  modelCopy = model;
  *v8 = sub_23D9D95E4();
  v8[1] = v10;
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68B8, &qword_23D9E1168));
  v12 = sub_23D9D9AF4();

  return v12;
}

- (AXUIInstructionalCellContentViewBridge)init
{
  v3 = OBJC_IVAR___AXUIInstructionalCellContentViewBridge__colorScheme;
  *(&self->super.isa + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  swift_storeEnumTagMultiPayload();
  v5.receiver = self;
  v5.super_class = type metadata accessor for AXUIInstructionalCellContentViewBridge(0);
  return [(AXUIInstructionalCellContentViewBridge *)&v5 init];
}

@end