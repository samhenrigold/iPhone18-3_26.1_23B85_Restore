@interface TUMetadataDestinationID
+ (id)metadataDestinationIDWithVoicemailMessage:(id)message;
+ (id)metadataDestinationIDsForVMVoicemails:(id)voicemails;
@end

@implementation TUMetadataDestinationID

+ (id)metadataDestinationIDWithVoicemailMessage:(id)message
{
  swift_getObjCClassMetadata();
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = swift_unknownObjectRetain();
  v6 = static TUMetadataDestinationID._metadataDestinationID(with:countryCodeKey:destinationIDKey:)(v5, KeyPath, v4);
  swift_unknownObjectRelease();

  return v6;
}

+ (id)metadataDestinationIDsForVMVoicemails:(id)voicemails
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd, &_s11MobilePhone7Message_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  static TUMetadataDestinationID.metadataDestinationIDs(for:)(v3);

  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for TUMetadataDestinationID, TUMetadataDestinationID_ptr);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

@end