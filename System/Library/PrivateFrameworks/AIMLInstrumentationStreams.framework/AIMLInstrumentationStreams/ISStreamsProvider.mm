@interface ISStreamsProvider
- (ISStreamsProvider)init;
- (id)connectedComponentGroupsWithWindowLength:(double)length;
- (id)eventGraphs;
- (id)eventGraphsWithWindowLength:(double)length;
- (id)events;
- (id)siriConversations;
- (id)siriTurns;
- (void)searchForEventGraphWithComponentIdentifier:(ISComponentIdentifier *)identifier completionHandler:(id)handler;
- (void)searchForEventGraphWithComponentIdentifier:(ISComponentIdentifier *)identifier windowLength:(double)length completionHandler:(id)handler;
@end

@implementation ISStreamsProvider

- (id)events
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF80, &unk_23C87D2F0);
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB668, &qword_23C87B0B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 16];
  v12 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 24];
  __swift_project_boxed_opaque_existential_0((&self->super.isa + OBJC_IVAR___ISStreamsProvider_provider), v11);
  v13 = *(v12 + 128);
  selfCopy = self;
  v13(v11, v12);
  type metadata accessor for TimestampedEventBridge();
  sub_23C66298C();
  sub_23C870BC4();
  v14 = v19;
  v15 = sub_23C870B84();

  (*(v20 + 8))(v6, v14);
  (*(v8 + 8))(v10, v7);

  return v15;
}

- (id)eventGraphsWithWindowLength:(double)length
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 16];
  v10 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 24];
  __swift_project_boxed_opaque_existential_0((&self->super.isa + OBJC_IVAR___ISStreamsProvider_provider), v9);
  v11 = *(v10 + 136);
  selfCopy = self;
  v11(v9, v10, length);
  v13 = sub_23C870BE4();

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (id)eventGraphs
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 16];
  v8 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 24];
  __swift_project_boxed_opaque_existential_0((&self->super.isa + OBJC_IVAR___ISStreamsProvider_provider), v7);
  selfCopy = self;
  InstrumentationStreamsProviderProtocol.eventGraphs()(v7, v8);
  v10 = sub_23C870BE4();

  (*(v4 + 8))(v6, v3);

  return v10;
}

- (id)connectedComponentGroupsWithWindowLength:(double)length
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 16];
  v9 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 24];
  __swift_project_boxed_opaque_existential_0((&self->super.isa + OBJC_IVAR___ISStreamsProvider_provider), v8);
  selfCopy = self;
  InstrumentationStreamsProviderProtocol.connectedComponentGroups(windowLength:)(v8, v9);
  v11 = sub_23C870BE4();

  (*(v5 + 8))(v7, v4);

  return v11;
}

- (id)siriTurns
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6C0, &qword_23C87B180);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 16];
  v8 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 24];
  __swift_project_boxed_opaque_existential_0((&self->super.isa + OBJC_IVAR___ISStreamsProvider_provider), v7);
  v9 = *(v8 + 144);
  selfCopy = self;
  v9(v7, v8);
  v11 = sub_23C870BE4();

  (*(v4 + 8))(v6, v3);

  return v11;
}

- (id)siriConversations
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF90, qword_23C87D300);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 16];
  v8 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 24];
  __swift_project_boxed_opaque_existential_0((&self->super.isa + OBJC_IVAR___ISStreamsProvider_provider), v7);
  v9 = *(v8 + 152);
  selfCopy = self;
  v9(v7, v8);
  v11 = sub_23C870BE4();

  (*(v4 + 8))(v6, v3);

  return v11;
}

- (void)searchForEventGraphWithComponentIdentifier:(ISComponentIdentifier *)identifier windowLength:(double)length completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = identifier;
  *(v13 + 24) = length;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_23C8719A4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23C87D3C0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23C87D3C8;
  v16[5] = v15;
  identifierCopy = identifier;
  selfCopy = self;
  sub_23C664E14(0, 0, v11, &unk_23C87D3D0, v16);
}

- (void)searchForEventGraphWithComponentIdentifier:(ISComponentIdentifier *)identifier completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23C8719A4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23C87D378;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23C87D280;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_23C664E14(0, 0, v9, &unk_23C87D288, v14);
}

- (ISStreamsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end