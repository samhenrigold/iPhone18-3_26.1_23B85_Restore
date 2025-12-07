@interface NEExtensionBaseProviderHost
- (NEExtensionBaseHostDelegate)extensionDelegate;
- (void)setExtensionDelegate:(id)delegate;
- (void)setExtensionExportedObject:(id)object;
- (void)setExtensionHostXPCProtocol:(id)protocol;
- (void)setExtensionQueue:(id)queue;
- (void)setExtensionXPCProtocol:(id)protocol;
- (void)setupWithCompletion:(id)completion;
- (void)sleepWithCompletion:(id)completion;
- (void)wakeWithCompletion:(id)completion;
@end

@implementation NEExtensionBaseProviderHost

- (void)setExtensionQueue:(id)queue
{
  v4 = *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionQueue);
  *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionQueue) = queue;
  queueCopy = queue;
}

- (void)setExtensionXPCProtocol:(id)protocol
{
  v4 = *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionXPCProtocol);
  *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionXPCProtocol) = protocol;
  protocolCopy = protocol;
}

- (void)setExtensionHostXPCProtocol:(id)protocol
{
  v4 = *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionHostXPCProtocol);
  *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionHostXPCProtocol) = protocol;
  protocolCopy = protocol;
}

- (NEExtensionBaseHostDelegate)extensionDelegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setExtensionDelegate:(id)delegate
{
  *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionDelegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setExtensionExportedObject:(id)object
{
  v4 = *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionExportedObject);
  *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionExportedObject) = object;
  objectCopy = object;
}

- (void)setupWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1BAA39EFC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1BAA4D138;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BAA4D140;
  v12[5] = v11;
  selfCopy = self;
  sub_1BA8737D8(0, 0, v7, &unk_1BAA4D148, v12);
}

- (void)sleepWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1BAA39EFC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1BAA4D118;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BAA4D120;
  v12[5] = v11;
  selfCopy = self;
  sub_1BA8737D8(0, 0, v7, &unk_1BAA4D128, v12);
}

- (void)wakeWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1BAA39EFC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1BAA4D0F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BAA4D100;
  v12[5] = v11;
  selfCopy = self;
  sub_1BA8737D8(0, 0, v7, &unk_1BAA4CD70, v12);
}

@end