@interface _SFXPCAsyncSequenceContainer
- (_SFXPCAsyncSequenceContainer)init;
- (void)xpcMakeAsyncIteratorFor:(id)for completion:(id)completion;
@end

@implementation _SFXPCAsyncSequenceContainer

- (void)xpcMakeAsyncIteratorFor:(id)for completion:(id)completion
{
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  sub_1A9976290();
  _Block_copy(v10);
  selfCopy = self;
  sub_1A97E4DC8(v9, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

- (_SFXPCAsyncSequenceContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end