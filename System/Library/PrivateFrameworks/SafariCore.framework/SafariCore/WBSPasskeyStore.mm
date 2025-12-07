@interface WBSPasskeyStore
- (_TtC10SafariCore15WBSPasskeyStore)init;
- (id)initForTesting:(BOOL)testing queue:(id)queue;
- (void)test_copyPasskeyWithCredentialID:(NSData *)d toGroup:(NSString *)group inRecentlyDeleted:(BOOL)deleted completionHandler:(id)handler;
- (void)test_createLegacyCredentialWithName:(NSString *)name displayName:(NSString *)displayName relyingParty:(NSString *)party userHandle:(NSData *)handle completionHandler:(id)handler;
- (void)test_createPasskeyWithName:(NSString *)name displayName:(NSString *)displayName relyingParty:(NSString *)party userHandle:(NSData *)handle groupID:(NSString *)d inRecentlyDeleted:(BOOL)deleted completionHandler:(id)handler;
- (void)test_createPasskeyWithName:(NSString *)name displayName:(NSString *)displayName relyingParty:(NSString *)party userHandle:(NSData *)handle groupID:(NSString *)d inRecentlyDeleted:(BOOL)deleted unsafeAllowRealKeychainAccess:(BOOL)access completionHandler:(id)self0;
@end

@implementation WBSPasskeyStore

- (id)initForTesting:(BOOL)testing queue:(id)queue
{
  self->isForTesting[0] = testing;
  *&self->executorQueue[7] = queue;
  queueCopy = queue;
  *&self->unownedExecutor[7] = sub_1B8566268();
  *&self->unownedExecutor[15] = v6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for WBSPasskeyStore();
  v7 = [(WBSPasskeyStore *)&v9 init];

  return v7;
}

- (_TtC10SafariCore15WBSPasskeyStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)test_createPasskeyWithName:(NSString *)name displayName:(NSString *)displayName relyingParty:(NSString *)party userHandle:(NSData *)handle groupID:(NSString *)d inRecentlyDeleted:(BOOL)deleted completionHandler:(id)handler
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = name;
  *(v20 + 24) = displayName;
  *(v20 + 32) = party;
  *(v20 + 40) = handle;
  *(v20 + 48) = d;
  *(v20 + 56) = deleted;
  *(v20 + 64) = v19;
  *(v20 + 72) = self;
  v21 = sub_1B8566108();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1B8574B20;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1B8574B28;
  v23[5] = v22;
  nameCopy = name;
  displayNameCopy = displayName;
  partyCopy = party;
  handleCopy = handle;
  dCopy = d;

  sub_1B8534B98(0, 0, v18, &unk_1B8574B30, v23);
}

- (void)test_createPasskeyWithName:(NSString *)name displayName:(NSString *)displayName relyingParty:(NSString *)party userHandle:(NSData *)handle groupID:(NSString *)d inRecentlyDeleted:(BOOL)deleted unsafeAllowRealKeychainAccess:(BOOL)access completionHandler:(id)self0
{
  HIDWORD(v29) = deleted;
  nameCopy = name;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = name;
  *(v20 + 24) = displayName;
  *(v20 + 32) = party;
  *(v20 + 40) = handle;
  *(v20 + 48) = d;
  *(v20 + 56) = BYTE4(v29);
  *(v20 + 57) = access;
  *(v20 + 64) = v19;
  *(v20 + 72) = self;
  v21 = sub_1B8566108();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1B8574B00;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1B8574B08;
  v23[5] = v22;
  v24 = nameCopy;
  displayNameCopy = displayName;
  partyCopy = party;
  handleCopy = handle;
  dCopy = d;

  sub_1B8534B98(0, 0, v18, &unk_1B8574B10, v23);
}

- (void)test_createLegacyCredentialWithName:(NSString *)name displayName:(NSString *)displayName relyingParty:(NSString *)party userHandle:(NSData *)handle completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = name;
  v17[3] = displayName;
  v17[4] = party;
  v17[5] = handle;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_1B8566108();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B8574AE0;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1B8574AE8;
  v20[5] = v19;
  nameCopy = name;
  displayNameCopy = displayName;
  partyCopy = party;
  handleCopy = handle;

  sub_1B8534B98(0, 0, v15, &unk_1B8574AF0, v20);
}

- (void)test_copyPasskeyWithCredentialID:(NSData *)d toGroup:(NSString *)group inRecentlyDeleted:(BOOL)deleted completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = d;
  *(v15 + 24) = group;
  *(v15 + 32) = deleted;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = sub_1B8566108();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B8574A98;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B8574428;
  v18[5] = v17;
  dCopy = d;
  groupCopy = group;

  sub_1B8534B98(0, 0, v13, &unk_1B8574430, v18);
}

@end