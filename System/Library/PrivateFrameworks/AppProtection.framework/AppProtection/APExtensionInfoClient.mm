@interface APExtensionInfoClient
- (_TtC13AppProtection21APExtensionInfoClient)init;
- (void)authenticateForExtensionWithUUID:(id)d reasonDescription:(id)description completion:(id)completion;
- (void)getExtensionIsFirstPartyForUUID:(id)d completion:(id)completion;
@end

@implementation APExtensionInfoClient

- (void)authenticateForExtensionWithUUID:(id)d reasonDescription:(id)description completion:(id)completion
{
  v8 = sub_185B67AFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  sub_185B67ADC();
  if (description)
  {
    v13 = sub_185B67E4C();
    description = v14;
  }

  else
  {
    v13 = 0;
  }

  _Block_copy(v12);
  selfCopy = self;
  sub_185B1858C(v11, v13, description, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v9 + 8))(v11, v8);
}

- (void)getExtensionIsFirstPartyForUUID:(id)d completion:(id)completion
{
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(completion);
  sub_185B67ADC();
  if (sub_185AE97DC(v8) == 2)
  {
    sub_185AD0C64();
    v10 = sub_185B6825C();
  }

  else
  {
    v10 = sub_185B67FBC();
  }

  v11 = v10;
  v9[2](v9, v10, 0);
  _Block_release(v9);

  (*(v6 + 8))(v8, v5);
}

- (_TtC13AppProtection21APExtensionInfoClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end