@interface InheritanceSecurityController
- (void)checkInheritanceKeyForBeneficiaryID:(id)d completion:(id)completion;
- (void)createInheritanceAccessKeyForContact:(id)contact completion:(id)completion;
- (void)preflightInheritanceRecoveryForBeneficiaryID:(id)d accessKey:(id)key completion:(id)completion;
- (void)recreateInheritanceKeyWithAccessKey:(id)key completion:(id)completion;
- (void)removeInheritanceAccessKeyForBeneficiaryID:(id)d completion:(id)completion;
@end

@implementation InheritanceSecurityController

- (void)createInheritanceAccessKeyForContact:(id)contact completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_unknownObjectRetain();

  InheritanceSecurityController.createAccessKey(for:completion:)(contact, sub_100213EA4, v6);
  swift_unknownObjectRelease();
}

- (void)recreateInheritanceKeyWithAccessKey:(id)key completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  keyCopy = key;

  sub_1002129CC(keyCopy, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)removeInheritanceAccessKeyForBeneficiaryID:(id)d completion:(id)completion
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  InheritanceSecurityController.removeAccessKey(for:completion:)(v8, sub_10005B8F8, v10);

  (*(v6 + 8))(v8, v5);
}

- (void)preflightInheritanceRecoveryForBeneficiaryID:(id)d accessKey:(id)key completion:(id)completion
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  keyCopy = key;

  sub_100213084(v11, keyCopy, self, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v9 + 8))(v11, v8);
}

- (void)checkInheritanceKeyForBeneficiaryID:(id)d completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v10);

  sub_100213728(v9, self, v10);
  _Block_release(v10);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

@end