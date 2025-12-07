@interface _SFAirDropTransferObserverAdaptor
- (SFAirDropTransferObserverDelegate)delegate;
- (_TtC7Sharing33_SFAirDropTransferObserverAdaptor)init;
@end

@implementation _SFAirDropTransferObserverAdaptor

- (SFAirDropTransferObserverDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC7Sharing33_SFAirDropTransferObserverAdaptor)init
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for SFAirDropClient.Identifier(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SFAirDropClient(0);
  swift_allocObject();
  *(self + OBJC_IVAR____TtC7Sharing33_SFAirDropTransferObserverAdaptor_client) = SFAirDropClient.init(identifier:)(v6);
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(_SFAirDropTransferObserverAdaptor *)&v8 init];
}

@end