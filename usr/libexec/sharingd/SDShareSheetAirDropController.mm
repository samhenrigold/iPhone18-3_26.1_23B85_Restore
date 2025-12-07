@interface SDShareSheetAirDropController
- (BOOL)hasActiveNearbySharingInteraction;
- (NSArray)availableNodes;
- (SDShareSheetAirDropController)init;
- (SDShareSheetAirDropControllerDelegate)delegate;
- (SDXPCHelperConnection)helperConnection;
- (id)availableNodesChangedHandler;
- (id)transferUpdateChangedHandler;
- (void)activateWithBundleID:(id)d;
- (void)cancelCurrentSend;
- (void)invalidate;
- (void)send:(id)send to:(id)to itemPreviewData:(id)data requestSource:(id)source;
- (void)setAvailableNodes:(id)nodes;
- (void)setAvailableNodesChangedHandler:(id)handler;
- (void)setTransferUpdateChangedHandler:(id)handler;
- (void)showAirDropUnavailableAlert;
@end

@implementation SDShareSheetAirDropController

- (SDXPCHelperConnection)helperConnection
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (SDShareSheetAirDropControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)transferUpdateChangedHandler
{
  if (*(self + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler))
  {
    v2 = *(self + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler + 8);
    v5[4] = *(self + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100035F9C;
    v5[3] = &unk_1008EA1E0;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTransferUpdateChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1003CCB40;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler);
  v8 = *(self + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler);
  v9 = *(self + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_100015D04(v8, v9);
}

- (id)availableNodesChangedHandler
{
  if (*(self + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler))
  {
    v2 = *(self + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler + 8);
    v5[4] = *(self + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1005DBE28;
    v5[3] = &unk_1008EA190;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAvailableNodesChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1005E73EC;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler);
  v8 = *(self + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler);
  v9 = *(self + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_100015D04(v8, v9);
}

- (NSArray)availableNodes
{

  sub_10028088C(&qword_100986248, &qword_10080D420);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setAvailableNodes:(id)nodes
{
  sub_10028088C(&qword_100986248, &qword_10080D420);
  *(self + OBJC_IVAR___SDShareSheetAirDropController_availableNodes) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (BOOL)hasActiveNearbySharingInteraction
{
  v3 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR___SDShareSheetAirDropController_currentNearbySharingInteraction;
  swift_beginAccess();
  sub_10000FF90(self + v6, v5, &unk_100975F60, &unk_1007F91B0);
  v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  LOBYTE(self) = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_100005508(v5, &unk_100975F60, &unk_1007F91B0);
  return self;
}

- (void)activateWithBundleID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_1005DC514(v4, v6);
}

- (void)invalidate
{
  selfCopy = self;
  sub_1005DDDD8();
}

- (void)send:(id)send to:(id)to itemPreviewData:(id)data requestSource:(id)source
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  type metadata accessor for URL();
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (!data)
  {
    sourceCopy = source;
    selfCopy = self;
    v45 = 0xF000000000000000;
    v46 = 0;
    selfCopy4 = self;
    if (source)
    {
      goto LABEL_3;
    }

LABEL_5:
    v42 = 0;
    v43 = 0;
    goto LABEL_6;
  }

  sourceCopy2 = source;
  selfCopy3 = self;
  dataCopy = data;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v22;
  v46 = v21;

  selfCopy4 = self;
  if (!source)
  {
    goto LABEL_5;
  }

LABEL_3:
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v24;
  v43 = v23;

LABEL_6:
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = v47;
  (*(v13 + 16))(v47, v17, v12);
  v29 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v30 = (v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = v17;
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  v33 = v11;
  v34 = selfCopy4;
  *(v32 + 4) = selfCopy4;
  (*(v13 + 32))(&v32[v29], v28, v12);
  v35 = v45;
  *&v32[v30] = v44;
  v36 = &v32[v31];
  v37 = v46;
  *v36 = v46;
  v36[1] = v35;
  v38 = &v32[(v31 + 23) & 0xFFFFFFFFFFFFFFF8];
  v39 = v42;
  *v38 = v43;
  v38[1] = v39;
  v40 = v34;
  sub_1002A9924(v37, v35);
  sub_1002B3098(0, 0, v33, &unk_10080D3B0, v32);

  sub_10028BCC0(v37, v35);
  (*(v13 + 8))(v41, v12);
}

- (void)cancelCurrentSend
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_1002B281C(0, 0, v5, &unk_10080D398, v7);
}

- (void)showAirDropUnavailableAlert
{
  _sSo11SFUserAlertC16DaemoniOSLibraryE03mdmB0AByFZ_0();
  v3 = v2;
  [v2 present];
}

- (SDShareSheetAirDropController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end