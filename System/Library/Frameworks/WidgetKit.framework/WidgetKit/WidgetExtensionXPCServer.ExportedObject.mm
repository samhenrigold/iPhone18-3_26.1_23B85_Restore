@interface WidgetExtensionXPCServer.ExportedObject
- (_TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject)init;
- (void)attachPreviewAgentWithFrameworkPath:(id)path endpoint:(id)endpoint handler:(id)handler;
- (void)getAppIntentsXPCListenerEndpointWithCompletion:(id)completion;
- (void)getPlaceholdersWithRequests:(id)requests completion:(id)completion;
- (void)getTimelinesWithRequests:(id)requests isPreview:(BOOL)preview completion:(id)completion;
- (void)getWidgetRelevancesWithRequest:(id)request completion:(id)completion;
- (void)handleURLSessionEventsFor:(id)for completion:(id)completion;
- (void)pushTokensDidChange:(id)change completion:(id)completion;
- (void)setControlState:(id)state completion:(id)completion;
- (void)widgetPushTokensDidChange:(id)change completion:(id)completion;
@end

@implementation WidgetExtensionXPCServer.ExportedObject

- (void)handleURLSessionEventsFor:(id)for completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_192227960();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_19209DB40(v6, v8, sub_1920B3960, v9);
}

- (void)getPlaceholdersWithRequests:(id)requests completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for PlaceholderRequest();
  v6 = sub_192227B70();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  sub_1920AC908(v6, sub_1920B3B48, v7);
}

- (void)getTimelinesWithRequests:(id)requests isPreview:(BOOL)preview completion:(id)completion
{
  previewCopy = preview;
  v7 = _Block_copy(completion);
  type metadata accessor for TimelineRequest();
  v8 = sub_192227B70();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  sub_1920A118C(v8, previewCopy, 0, sub_1920B3B48, v9);
}

- (void)getAppIntentsXPCListenerEndpointWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1920B1490(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)getWidgetRelevancesWithRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  requestCopy = request;
  selfCopy = self;
  sub_1920B15E0(requestCopy, sub_1920B3B6C, v7);
}

- (void)attachPreviewAgentWithFrameworkPath:(id)path endpoint:(id)endpoint handler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_192227960();
  v10 = v9;
  _Block_copy(v7);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1920B18D8(v8, v10, endpoint, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
  swift_unknownObjectRelease();
}

- (_TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)pushTokensDidChange:(id)change completion:(id)completion
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  changeCopy = change;
  sub_192227CD0();
  v12 = sub_192227CF0();
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  sub_192227CC0();
  v13 = changeCopy;

  v14 = sub_192227CB0();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  v15[5] = sub_1920B3B48;
  v15[6] = v10;
  sub_19211CA04(0, 0, v8, &unk_19222B5E8, v15);
}

- (void)setControlState:(id)state completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  stateCopy = state;
  selfCopy = self;
  sub_192227CD0();
  v14 = sub_192227CF0();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  sub_192227CC0();
  v15 = stateCopy;
  v16 = selfCopy;

  v17 = sub_192227CB0();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  v18[5] = v15;
  v18[6] = sub_1920B3B48;
  v18[7] = v11;
  sub_19211CA04(0, 0, v9, &unk_19222B5D0, v18);
}

- (void)widgetPushTokensDidChange:(id)change completion:(id)completion
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_192227CF0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_192227CC0();
  changeCopy = change;

  v13 = sub_192227CB0();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = changeCopy;
  v14[5] = sub_1920B3B48;
  v14[6] = v10;
  sub_19211CA04(0, 0, v8, &unk_19222B5C0, v14);
}

@end