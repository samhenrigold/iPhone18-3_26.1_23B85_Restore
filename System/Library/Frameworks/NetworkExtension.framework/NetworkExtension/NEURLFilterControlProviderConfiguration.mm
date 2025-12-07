@interface NEURLFilterControlProviderConfiguration
- (void)fetchPrefilterDataWithTag:(id)tag reply:(id)reply;
- (void)startWithReply:(id)reply;
- (void)stopWithStopReason:(int64_t)reason reply:(id)reply;
@end

@implementation NEURLFilterControlProviderConfiguration

- (void)startWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_1BAA39EFC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_1BAA39EDC();
  swift_retain_n();

  v11 = sub_1BAA39ECC();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = self;
  v12[5] = sub_1BA85EDE0;
  v12[6] = v9;
  sub_1BA86F78C(0, 0, v7, &unk_1BAA4D368, v12);
}

- (void)stopWithStopReason:(int64_t)reason reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_1BAA39EFC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_1BAA39EDC();
  swift_retain_n();

  v13 = sub_1BAA39ECC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = self;
  v14[5] = reason;
  v14[6] = sub_1BA85EC3C;
  v14[7] = v11;
  sub_1BA86F78C(0, 0, v9, &unk_1BAA4D358, v14);
}

- (void)fetchPrefilterDataWithTag:(id)tag reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = _Block_copy(reply);
  if (tag)
  {
    v11 = sub_1BAA39D9C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = sub_1BAA39EFC();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  sub_1BAA39EDC();
  swift_retain_n();

  v16 = sub_1BAA39ECC();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = self;
  v17[5] = v11;
  v17[6] = v13;
  v17[7] = sub_1BA85E9FC;
  v17[8] = v14;
  sub_1BA86F78C(0, 0, v9, &unk_1BAA4D330, v17);
}

@end