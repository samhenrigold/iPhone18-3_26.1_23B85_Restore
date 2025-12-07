@interface ProximityHandoffUIService
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)registerForProximityHandoffInteractionUpdatesWithCompletion:(id)completion;
@end

@implementation ProximityHandoffUIService

- (void)registerForProximityHandoffInteractionUpdatesWithCompletion:(id)completion
{
  v4 = type metadata accessor for SFProximityHandoffClient.Identifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _Block_copy(completion);
  if (qword_1001721F0 != -1)
  {
    swift_once();
  }

  v9 = qword_10017F2E8;
  type metadata accessor for SFProximityHandoffClient();
  (*(v5 + 104))(v7, enum case for SFProximityHandoffClient.Identifier.airDropUI(_:), v4);
  *(v9 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_proximityHandoffClient) = SFProximityHandoffClient.__allocating_init(identifier:)();

  sub_100095544();

  v8[2](v8, 0);
  _Block_release(v8);
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10005A238(connectionCopy);

  swift_unknownObjectRelease();
}

@end