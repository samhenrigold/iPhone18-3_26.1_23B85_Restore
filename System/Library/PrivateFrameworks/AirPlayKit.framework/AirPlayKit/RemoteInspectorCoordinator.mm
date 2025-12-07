@interface RemoteInspectorCoordinator
- (void)CSSAgent:(APKRemoteInspectorCSSAgent *)agent onComputedStylesRequestWithIdentifier:(int)identifier completion:(id)completion;
- (void)CSSAgent:(APKRemoteInspectorCSSAgent *)agent onInlineStylesRequestWithIdentifier:(int)identifier completion:(id)completion;
- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onAttributesRequestWithIdentifier:(int)identifier completion:(id)completion;
- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onChildNodeRequestWithParentIdentifier:(int)identifier depth:(int)depth completion:(id)completion;
- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onDocumentWithCompletion:(id)completion;
- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onOuterHTMLRequestWithIdentifier:(int)identifier completion:(id)completion;
- (void)pageAgent:(APKRemoteInspectorPageAgent *)agent onResourceContentRequestWithIdentifier:(NSString *)identifier completion:(id)completion;
- (void)pageAgent:(APKRemoteInspectorPageAgent *)agent onResourcesRequestWithCompletion:(id)completion;
@end

@implementation RemoteInspectorCoordinator

- (void)CSSAgent:(APKRemoteInspectorCSSAgent *)agent onInlineStylesRequestWithIdentifier:(int)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = agent;
  *(v13 + 24) = identifier;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_23E900A74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E904658;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23E904660;
  v16[5] = v15;
  agentCopy = agent;

  sub_23E8DBC78(0, 0, v11, &unk_23E904668, v16);
}

- (void)CSSAgent:(APKRemoteInspectorCSSAgent *)agent onComputedStylesRequestWithIdentifier:(int)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = agent;
  *(v13 + 24) = identifier;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_23E900A74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E904618;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23E904620;
  v16[5] = v15;
  agentCopy = agent;

  sub_23E8DBC78(0, 0, v11, &unk_23E904628, v16);
}

- (void)pageAgent:(APKRemoteInspectorPageAgent *)agent onResourcesRequestWithCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = agent;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E900A74();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E906C58;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E906C60;
  v14[5] = v13;
  agentCopy = agent;

  sub_23E8DBC78(0, 0, v9, &unk_23E906C68, v14);
}

- (void)pageAgent:(APKRemoteInspectorPageAgent *)agent onResourceContentRequestWithIdentifier:(NSString *)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = agent;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_23E900A74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E906C40;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23E904620;
  v16[5] = v15;
  agentCopy = agent;
  identifierCopy = identifier;

  sub_23E8DBC78(0, 0, v11, &unk_23E904628, v16);
}

- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onDocumentWithCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = agent;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E900A74();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E906EB8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E906EC0;
  v14[5] = v13;
  agentCopy = agent;

  sub_23E8DBC78(0, 0, v9, &unk_23E906EC8, v14);
}

- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onOuterHTMLRequestWithIdentifier:(int)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = agent;
  *(v13 + 24) = identifier;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_23E900A74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E906E90;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23E906E98;
  v16[5] = v15;
  agentCopy = agent;

  sub_23E8DBC78(0, 0, v11, &unk_23E906EA0, v16);
}

- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onAttributesRequestWithIdentifier:(int)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = agent;
  *(v13 + 24) = identifier;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_23E900A74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E906E68;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23E906E70;
  v16[5] = v15;
  agentCopy = agent;

  sub_23E8DBC78(0, 0, v11, &unk_23E906E78, v16);
}

- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onChildNodeRequestWithParentIdentifier:(int)identifier depth:(int)depth completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  *(v15 + 16) = agent;
  *(v15 + 24) = identifier;
  *(v15 + 28) = depth;
  *(v15 + 32) = v14;
  *(v15 + 40) = self;
  v16 = sub_23E900A74();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23E906E28;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_23E904620;
  v18[5] = v17;
  agentCopy = agent;

  sub_23E8DBC78(0, 0, v13, &unk_23E904628, v18);
}

@end