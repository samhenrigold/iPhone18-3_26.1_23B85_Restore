@interface SEStorageManagementPresenter
- (_TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter)init;
- (void)deletePassEntry:(NSData *)entry completionHandler:(id)handler;
- (void)deleteSecureElementCredentials:(NSData *)credentials completionHandler:(id)handler;
- (void)dismiss:(NSData *)dismiss completionHandler:(id)handler;
- (void)offloadMuirfieldWithCompletionHandler:(id)handler;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation SEStorageManagementPresenter

- (_TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)deletePassEntry:(NSData *)entry completionHandler:(id)handler
{
  v7 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = entry;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10040F3F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10040F400;
  v14[5] = v13;
  entryCopy = entry;
  selfCopy = self;
  sub_1001F0028(0, 0, v9, &unk_10040F408, v14);
}

- (void)deleteSecureElementCredentials:(NSData *)credentials completionHandler:(id)handler
{
  v7 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = credentials;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10040F3D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10040F3D8;
  v14[5] = v13;
  credentialsCopy = credentials;
  selfCopy = self;
  sub_1001F0028(0, 0, v9, &unk_10040F3E0, v14);
}

- (void)offloadMuirfieldWithCompletionHandler:(id)handler
{
  v5 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10040F3A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10040F3B0;
  v12[5] = v11;
  selfCopy = self;
  sub_1001F0028(0, 0, v7, &unk_10040F3B8, v12);
}

- (void)dismiss:(NSData *)dismiss completionHandler:(id)handler
{
  v7 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = dismiss;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10040F358;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10040F368;
  v14[5] = v13;
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1001F0028(0, 0, v9, &unk_10040F378, v14);
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_1001F1DD4();
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  sub_1001F2390(selfCopy, v5);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  sub_1001F2564(error);
}

@end