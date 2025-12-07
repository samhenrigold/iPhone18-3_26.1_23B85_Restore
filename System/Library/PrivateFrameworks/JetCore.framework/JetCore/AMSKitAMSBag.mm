@interface AMSKitAMSBag
- (BOOL)isExpired;
- (NSDate)expirationDate;
- (_TtC7JetCore12AMSKitAMSBag)init;
- (id)BOOLForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)doubleForKey:(id)key;
- (id)integerForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)createSnapshotWithCompletion:(id)completion;
@end

@implementation AMSKitAMSBag

- (BOOL)isExpired
{
  __swift_project_boxed_opaque_existential_1((self + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(self + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  selfCopy = self;
  v4 = sub_1DB50A0F0();

  return v4 & 1;
}

- (NSDate)expirationDate
{
  v3 = sub_1DB509DD0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((self + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(self + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  selfCopy = self;
  sub_1DB50A090();

  v8 = sub_1DB509D40();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1DB4D575C(selfCopy, keyCopy);
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = v7;
    promiseWithResult_ = [v8 promiseWithResult_];
    v11 = [objc_opt_self() bagValueWithKey:keyCopy valueType:0 valuePromise:promiseWithResult_];

    keyCopy = v9;
    selfCopy = promiseWithResult_;
  }

  else
  {
    v11 = sub_1DB4D6A90(keyCopy, 0);
  }

  return v11;
}

- (id)BOOLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1DB4D6084(keyCopy);

  return v6;
}

- (id)doubleForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1DB4D620C(keyCopy);

  return v6;
}

- (id)integerForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1DB4D639C(keyCopy);

  return v6;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1DB4D6520(keyCopy);

  return v6;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1DB4D6698(keyCopy);

  return v6;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1DB4D68D8(keyCopy);

  return v6;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1DB50ABA0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1DB522488;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DB522498;
  v12[5] = v11;
  selfCopy = self;
  sub_1DB419B9C(0, 0, v7, &unk_1DB5224A8, v12);
}

- (_TtC7JetCore12AMSKitAMSBag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end