@interface SDAirDropMoveToAppShareSheet
- (_TtC16DaemoniOSLibrary28SDAirDropMoveToAppShareSheet)init;
- (void)showShareSheetWith:(id)with completion:(id)completion;
@end

@implementation SDAirDropMoveToAppShareSheet

- (void)showShareSheetWith:(id)with completion:(id)completion
{
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  type metadata accessor for URL();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = v10;
  v13[6] = sub_10066E1F8;
  v13[7] = v11;
  selfCopy = self;
  sub_1002B3098(0, 0, v8, &unk_10080F1E8, v13);
}

- (_TtC16DaemoniOSLibrary28SDAirDropMoveToAppShareSheet)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SDAirDropMoveToAppShareSheet *)&v3 init];
}

@end