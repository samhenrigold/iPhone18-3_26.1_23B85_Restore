@interface SDLocalCellularStatusManager
- (BOOL)getCellularSlicingStateForDevice:(id)device;
- (id)statusUpdated;
- (void)publishCellularSlicingEnabledAs:(BOOL)as;
- (void)setStatusUpdated:(id)updated;
- (void)subscribeForCellularSlicingAvailability;
@end

@implementation SDLocalCellularStatusManager

- (id)statusUpdated
{
  if (*(self + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated))
  {
    v2 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated + 8);
    v5[4] = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1005C8BF8;
    v5[3] = &unk_1008E93B8;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStatusUpdated:(id)updated
{
  v4 = _Block_copy(updated);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1005CBE20;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated);
  v8 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated);
  v9 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_100015D04(v8, v9);
}

- (void)publishCellularSlicingEnabledAs:(BOOL)as
{
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SFPlatform();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  static SFPlatform.iOS.getter();
  v13 = static SFPlatform.isPlatform(_:)();
  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = selfCopy;
    *(v15 + 40) = as;
    sub_1002B3098(0, 0, v7, &unk_10080C7C8, v15);
  }

  else
  {
  }
}

- (void)subscribeForCellularSlicingAvailability
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for SFPlatform();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  static SFPlatform.visionOS.getter();
  v11 = static SFPlatform.isPlatform(_:)();
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = selfCopy;
    sub_1002B3098(0, 0, v5, &unk_10080C7A0, v13);
  }

  else
  {
  }
}

- (BOOL)getCellularSlicingStateForDevice:(id)device
{
  if (device)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_1005CB4D4(v4, v6);

  return v8 & 1;
}

@end