@interface FAParentalControlsOperation
- (void)fetchParentalControlBitsForAltDSID:(NSString *)d completionHandler:(id)handler;
- (void)setCommLimitsCollaborationSwitchForAltDSID:(NSString *)d enableCollaboration:(BOOL)collaboration completionHandler:(id)handler;
- (void)setCommLimitsMailAppSwitchForAltDSID:(NSString *)d enableMailApp:(BOOL)app completionHandler:(id)handler;
- (void)setDeclaredAgeRangeShareOptionForAltDSID:(NSString *)d shareOption:(NSNumber *)option privacyVersion:(NSNumber *)version completionHandler:(id)handler;
@end

@implementation FAParentalControlsOperation

- (void)fetchParentalControlBitsForAltDSID:(NSString *)d completionHandler:(id)handler
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008E408;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008E410;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_100071FE8(0, 0, v10, &unk_10008E418, v15);
}

- (void)setCommLimitsCollaborationSwitchForAltDSID:(NSString *)d enableCollaboration:(BOOL)collaboration completionHandler:(id)handler
{
  v9 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = d;
  *(v14 + 24) = collaboration;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10008E3E8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10008E3F0;
  v17[5] = v16;
  dCopy = d;
  selfCopy = self;
  sub_100071FE8(0, 0, v12, &unk_10008E3F8, v17);
}

- (void)setCommLimitsMailAppSwitchForAltDSID:(NSString *)d enableMailApp:(BOOL)app completionHandler:(id)handler
{
  v9 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = d;
  *(v14 + 24) = app;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10008E3C8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10008E3D0;
  v17[5] = v16;
  dCopy = d;
  selfCopy = self;
  sub_100071FE8(0, 0, v12, &unk_10008E3D8, v17);
}

- (void)setDeclaredAgeRangeShareOptionForAltDSID:(NSString *)d shareOption:(NSNumber *)option privacyVersion:(NSNumber *)version completionHandler:(id)handler
{
  v11 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = d;
  v16[3] = option;
  v16[4] = version;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10008E380;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_10008C7F0;
  v19[5] = v18;
  dCopy = d;
  optionCopy = option;
  versionCopy = version;
  selfCopy = self;
  sub_100071FE8(0, 0, v14, &unk_10008C6E0, v19);
}

@end