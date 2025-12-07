@interface Singleton
+ (_TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton)shared;
+ (_TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton)shared;
+ (_TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton)shared;
+ (_TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton)shared;
- (_TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton)init;
- (id)listenForActivityPresentationWithActivityIdentifier:(id)identifier presenterBundleIdentifier:(id)bundleIdentifier handler:(id)handler;
- (id)listenForActivityProminenceWithActivityIdentifier:(id)identifier handler:(id)handler;
- (id)listenForActivityQoSWithActivityIdentifier:(id)identifier handler:(id)handler;
- (void)activitiesChanged:(id)changed completion:(id)completion;
- (void)activityDidExceedReducedPushBudgetForIdentifier:(id)identifier;
- (void)activityDidUnsubscribeForIdentifier:(id)identifier;
- (void)activityPresentationsDidChange:(id)change completion:(id)completion;
- (void)activityProminenceDidChange:(id)change completion:(id)completion;
- (void)activityQoSDidChange:(id)change completion:(id)completion;
@end

@implementation Singleton

- (_TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton)init
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E8, &qword_1A2D0AA58);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  (*(v6 + 104))(&v10 - v4, *MEMORY[0x1E69CA970], v3);
  v7 = objc_allocWithZone(type metadata accessor for Singleton(0));
  v8 = sub_1A2C57D70(v5);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (void)activitiesChanged:(id)changed completion:(id)completion
{
  v6 = _Block_copy(completion);
  changedCopy = changed;
  selfCopy = self;
  v9 = sub_1A2D07F44();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  v13 = sub_1A2D07F24();
  sub_1A2C756B4(v13, &v16);

  v14 = v16;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1A2C80998;
  *(v15 + 24) = v12;
  v16 = v14;

  sub_1A2C62964(&v16, 1, sub_1A2C80968, v15);

  sub_1A2C55840(v9, v11);
}

- (id)listenForActivityProminenceWithActivityIdentifier:(id)identifier handler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1A2D08444();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  type metadata accessor for RetryingCancellable();
  v10 = swift_allocObject();
  selfCopy = self;

  v12 = sub_1A2C88734(0, 1, v10, selfCopy, v6, v8, sub_1A2C95754, v9);
  v13 = type metadata accessor for CancellableAssertion();
  v14 = objc_allocWithZone(v13);
  v18 = v12;
  sub_1A2D080E4();
  swift_allocObject();
  sub_1A2C8BAD0(&qword_1EB09ED18, type metadata accessor for RetryingCancellable, &unk_1A2D17280);

  *&v14[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v17.receiver = v14;
  v17.super_class = v13;
  v15 = [(Singleton *)&v17 init];

  return v15;
}

- (void)activityProminenceDidChange:(id)change completion:(id)completion
{
  v6 = _Block_copy(completion);
  changeCopy = change;
  selfCopy = self;
  v8 = sub_1A2D07F44();
  v10 = v9;

  _Block_copy(v6);
  sub_1A2C94F6C(v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1A2C55840(v8, v10);
}

+ (_TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton)shared
{
  if (qword_1ED709C30 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED709C40;

  return v3;
}

+ (_TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton)shared
{
  if (qword_1EB09ECD8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB09ECE8;

  return v3;
}

- (id)listenForActivityPresentationWithActivityIdentifier:(id)identifier presenterBundleIdentifier:(id)bundleIdentifier handler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_1A2D08444();
  v9 = v8;
  v10 = sub_1A2D08444();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  selfCopy = self;
  v15 = sub_1A2CA4AB4(v7, v9, v10, v12, sub_1A2C83438, v13);

  return v15;
}

- (void)activityPresentationsDidChange:(id)change completion:(id)completion
{
  v6 = _Block_copy(completion);
  changeCopy = change;
  selfCopy = self;
  v8 = sub_1A2D07F44();
  v10 = v9;

  _Block_copy(v6);
  sub_1A2CA57BC(v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1A2C55840(v8, v10);
}

+ (_TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton)shared
{
  if (qword_1EB09ECB8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB09ECC8;

  return v3;
}

- (void)activityDidExceedReducedPushBudgetForIdentifier:(id)identifier
{
  v4 = sub_1A2D08444();
  v6 = v5;
  selfCopy = self;
  sub_1A2CBC1AC(v4, v6);
}

- (void)activityDidUnsubscribeForIdentifier:(id)identifier
{
  v4 = sub_1A2D08444();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1A2CBC01C(v10);
  if (*v9)
  {
    sub_1A2CBB62C(v4, v6);
  }

  (v8)(v10, 0);
}

+ (_TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton)shared
{
  if (qword_1EB09F748 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB0A1AE8;

  return v3;
}

- (id)listenForActivityQoSWithActivityIdentifier:(id)identifier handler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1A2D08444();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  v11 = sub_1A2CF9000(v6, v8, sub_1A2C83438, v9);

  return v11;
}

- (void)activityQoSDidChange:(id)change completion:(id)completion
{
  v6 = _Block_copy(completion);
  changeCopy = change;
  selfCopy = self;
  v8 = sub_1A2D07F44();
  v10 = v9;

  _Block_copy(v6);
  sub_1A2CFA304(v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1A2C55840(v8, v10);
}

@end