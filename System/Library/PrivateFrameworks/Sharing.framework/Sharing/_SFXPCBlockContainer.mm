@interface _SFXPCBlockContainer
- (_SFXPCBlockContainer)init;
- (void)invoke:(id)invoke parametersData:(id)data parametersAsyncSequenceContainer:(id)container parametersBlocksContainer:(id)blocksContainer sync:(BOOL)sync completion:(id)completion;
@end

@implementation _SFXPCBlockContainer

- (void)invoke:(id)invoke parametersData:(id)data parametersAsyncSequenceContainer:(id)container parametersBlocksContainer:(id)blocksContainer sync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  v13 = sub_1A99762C0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(completion);
  sub_1A9976290();
  dataCopy = data;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  v20 = sub_1A9976070();
  v22 = v21;

  _Block_copy(v17);
  sub_1A97C0468(v16, v20, v22, container, blocksContainer, syncCopy, selfCopy, v17);
  _Block_release(v17);
  _Block_release(v17);
  sub_1A97B43C4(v20, v22);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v14 + 8))(v16, v13);
}

- (_SFXPCBlockContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end