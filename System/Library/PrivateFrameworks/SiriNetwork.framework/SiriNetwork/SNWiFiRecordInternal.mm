@interface SNWiFiRecordInternal
- (NSDate)timestamp;
- (SNWiFiRecordInternal)initWithRssi:(int64_t)rssi snr:(int64_t)snr cca:(int64_t)cca channelInfo:(id)info phyMode:(id)mode isCaptive:(BOOL)captive timestamp:(id)timestamp;
@end

@implementation SNWiFiRecordInternal

- (NSDate)timestamp
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  WiFiRecordRepresentation.timestamp.getter(v5);
  v6.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);

  return v6.super.isa;
}

- (SNWiFiRecordInternal)initWithRssi:(int64_t)rssi snr:(int64_t)snr cca:(int64_t)cca channelInfo:(id)info phyMode:(id)mode isCaptive:(BOOL)captive timestamp:(id)timestamp
{
  captiveCopy = captive;
  v12 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  return WiFiRecordRepresentation.init(rssi:snr:cca:channelInfo:phyMode:isCaptive:timestamp:)(rssi, snr, cca, v15, v17, v18, v20, captiveCopy, v14);
}

@end