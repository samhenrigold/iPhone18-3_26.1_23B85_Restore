@interface SECUserSession
- (_TtC10seserviced14SECUserSession)init;
- (void)armCredentialForCardEmulation:(id)emulation sceneIdentifier:(id)identifier reply:(id)reply;
- (void)armCurrentCredentialForCardEmulationWithSceneIdentifier:(id)identifier reply:(id)reply;
- (void)authorizeCredentialInWiredModeWith:(id)with instanceAID:(id)d sceneIdentifier:(id)identifier reply:(id)reply;
- (void)createCredentialWithServerConfigUUID:(id)d friendlyName:(id)name reply:(id)reply;
- (void)deleteCredential:(id)credential reply:(id)reply;
- (void)endCardEmulationWithReply:(id)reply;
- (void)endWiredModeWithReply:(id)reply;
- (void)modifyAccessForCredential:(id)credential addingOwners:(id)owners removingOwners:(id)removingOwners addingUsers:(id)users removingUsers:(id)removingUsers reply:(id)reply;
- (void)secureElementInfoWithReply:(id)reply;
- (void)setCredentialInWiredModeWith:(id)with reply:(id)reply;
- (void)transceive:(id)transceive reply:(id)reply;
@end

@implementation SECUserSession

- (void)secureElementInfoWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_1000C25A8(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)armCredentialForCardEmulation:(id)emulation sceneIdentifier:(id)identifier reply:(id)reply
{
  selfCopy = self;
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v31 = &v29 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  v16 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v18;
  v30 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  (*(v10 + 16))(v12, v15, v9);
  v21 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = selfCopy;
  *(v23 + 4) = selfCopy;
  (*(v10 + 32))(&v23[v21], v12, v9);
  v25 = &v23[v22];
  v26 = v29;
  *v25 = v30;
  v25[1] = v26;
  v27 = &v23[(v22 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v27 = sub_10012E5A0;
  v27[1] = v19;
  v28 = v24;

  sub_1001F9BE8(0, 0, v31, &unk_10040B590, v23);

  (*(v10 + 8))(v15, v9);
}

- (void)endCardEmulationWithReply:(id)reply
{
  v5 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_10012DE64;
  v11[6] = v9;
  selfCopy = self;
  sub_1001F9BE8(0, 0, v7, &unk_10040B580, v11);
}

- (void)createCredentialWithServerConfigUUID:(id)d friendlyName:(id)name reply:(id)reply
{
  selfCopy = self;
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v31 = &v29 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  v16 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v18;
  v30 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  (*(v10 + 16))(v12, v15, v9);
  v21 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = selfCopy;
  *(v23 + 4) = selfCopy;
  (*(v10 + 32))(&v23[v21], v12, v9);
  v25 = &v23[v22];
  v26 = v29;
  *v25 = v30;
  v25[1] = v26;
  v27 = &v23[(v22 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v27 = sub_1000C2784;
  v27[1] = v19;
  v28 = v24;

  sub_1001F9BE8(0, 0, v31, &unk_10040F9C8, v23);

  (*(v10 + 8))(v15, v9);
}

- (void)deleteCredential:(id)credential reply:(id)reply
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(v10 + 16))(v12, v15, v9);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = self;
  (*(v10 + 32))(&v21[v19], v12, v9);
  v22 = &v21[v20];
  *v22 = sub_10012E5A0;
  v22[1] = v17;
  selfCopy = self;

  sub_1001F9BE8(0, 0, v8, &unk_10040F9A0, v21);

  (*(v10 + 8))(v15, v9);
}

- (void)modifyAccessForCredential:(id)credential addingOwners:(id)owners removingOwners:(id)removingOwners addingUsers:(id)users removingUsers:(id)removingUsers reply:(id)reply
{
  usersCopy = users;
  removingUsersCopy = removingUsers;
  removingOwnersCopy = removingOwners;
  selfCopy = self;
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v32 = &v32 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  v19 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  removingOwnersCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  usersCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  (*(v13 + 16))(v15, v18, v12);
  v23 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v26 = selfCopy;
  v28 = removingOwnersCopy;
  v27 = v34;
  *(v25 + 4) = selfCopy;
  *(v25 + 5) = v27;
  v29 = usersCopy;
  *(v25 + 6) = v28;
  *(v25 + 7) = v29;
  *(v25 + 8) = v20;
  (*(v13 + 32))(&v25[v23], v15, v12);
  v30 = &v25[v24];
  *v30 = sub_10012DE64;
  v30[1] = v21;
  v31 = v26;

  sub_1001F9BE8(0, 0, v32, &unk_10040F990, v25);

  (*(v13 + 8))(v18, v12);
}

- (_TtC10seserviced14SECUserSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setCredentialInWiredModeWith:(id)with reply:(id)reply
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(v10 + 16))(v12, v15, v9);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = self;
  (*(v10 + 32))(&v21[v19], v12, v9);
  v22 = &v21[v20];
  *v22 = sub_10012E5A0;
  v22[1] = v17;
  selfCopy = self;

  sub_1001F9BE8(0, 0, v8, &unk_100414000, v21);

  (*(v10 + 8))(v15, v9);
}

- (void)authorizeCredentialInWiredModeWith:(id)with instanceAID:(id)d sceneIdentifier:(id)identifier reply:(id)reply
{
  v10 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v10 - 8);
  v47 = &v40 - v11;
  v46 = type metadata accessor for UUID();
  v12 = *(v46 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v46);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v17 = _Block_copy(reply);
  v45 = v16;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  dCopy = d;
  identifierCopy = identifier;
  selfCopy = self;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v21;
  v44 = v20;

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v23;
  v41 = v22;

  v24 = swift_allocObject();
  *(v24 + 16) = v17;
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v47, 1, 1, v25);
  v26 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v46;
  (*(v12 + 16))(v26, v16, v46);
  v28 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v29 = (v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v32 = selfCopy;
  *(v31 + 4) = selfCopy;
  (*(v12 + 32))(&v31[v28], v26, v27);
  v33 = &v31[v29];
  v35 = v43;
  v34 = v44;
  *v33 = v44;
  v33[1] = v35;
  v36 = &v31[v30];
  v37 = v40;
  *v36 = v41;
  v36[1] = v37;
  v38 = &v31[(v30 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v38 = sub_10012E5A0;
  v38[1] = v24;
  v39 = v32;
  sub_100069E2C(v34, v35);

  sub_1001F9BE8(0, 0, v47, &unk_100413FF0, v31);

  sub_10006A178(v34, v35);
  (*(v12 + 8))(v45, v27);
}

- (void)transceive:(id)transceive reply:(id)reply
{
  v6 = _Block_copy(reply);
  transceiveCopy = transceive;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_10029770C(v8, v10, sub_100264854, v11);

  sub_10006A178(v8, v10);
}

- (void)armCurrentCredentialForCardEmulationWithSceneIdentifier:(id)identifier reply:(id)reply
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = _Block_copy(reply);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = sub_10012E5A0;
  v15[6] = v13;
  v15[7] = v10;
  v15[8] = v12;
  selfCopy = self;
  sub_1001F9BE8(0, 0, v8, &unk_100413FD0, v15);
}

- (void)endWiredModeWithReply:(id)reply
{
  v5 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_10012DE64;
  v11[6] = v9;
  selfCopy = self;
  sub_1001F9BE8(0, 0, v7, &unk_100413FC0, v11);
}

@end