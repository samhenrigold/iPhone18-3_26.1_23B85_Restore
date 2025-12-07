@interface CSDConversationSpatialPersonaResolver
- (BOOL)upsertWithParticipantID:(unint64_t)d generationID:(unint64_t)iD spatialPersonaState:(int64_t)state participantCluster:(id)cluster;
- (NSString)description;
- (NSUUID)localParticipantNearbyClusterUUID;
- (id)participantStateStrWithTruncate:(BOOL)truncate;
- (int64_t)nearbyClusterState;
- (unint64_t)generationCounter;
- (unint64_t)setLocalSpatialPersonaEnabled:(BOOL)enabled;
- (void)configureWithLocalParticipantID:(unint64_t)d groupUUID:(id)iD spatialPersonaEnabled:(BOOL)enabled localParticipantCluster:(id)cluster;
- (void)reset;
- (void)setLocalParticipantCluster:(id)cluster;
- (void)setLocalParticipantNearbyClusterUUID:(id)d;
@end

@implementation CSDConversationSpatialPersonaResolver

- (NSUUID)localParticipantNearbyClusterUUID
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_100292084();
  v5 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100015468(v4, 1, v5) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return isa;
}

- (void)setLocalParticipantNearbyClusterUUID:(id)d
{
  v5 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for UUID();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = 1;
  }

  sub_10000AF74(v7, v9, 1, v8);
  selfCopy = self;
  sub_1002921B8(v7);
}

- (unint64_t)generationCounter
{
  selfCopy = self;
  sub_100292664();
  v4 = v3;

  return v4;
}

- (int64_t)nearbyClusterState
{
  selfCopy = self;
  sub_100292F54();
  v4 = v3;

  return v4;
}

- (void)reset
{
  selfCopy = self;
  sub_100293EE8();
}

- (void)configureWithLocalParticipantID:(unint64_t)d groupUUID:(id)iD spatialPersonaEnabled:(BOOL)enabled localParticipantCluster:(id)cluster
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  clusterCopy = cluster;
  selfCopy = self;
  sub_100294148();

  (*(v9 + 8))(v11, v8);
}

- (unint64_t)setLocalSpatialPersonaEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_1002947CC();
  v5 = v4;

  return v5;
}

- (void)setLocalParticipantCluster:(id)cluster
{
  clusterCopy = cluster;
  selfCopy = self;
  sub_100294D80();
}

- (BOOL)upsertWithParticipantID:(unint64_t)d generationID:(unint64_t)iD spatialPersonaState:(int64_t)state participantCluster:(id)cluster
{
  clusterCopy = cluster;
  selfCopy = self;
  sub_1002951A0();
  v10 = v9;

  return v10 & 1;
}

- (id)participantStateStrWithTruncate:(BOOL)truncate
{
  selfCopy = self;
  sub_100296554();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  CSDConversationSpatialPersonaResolver.description.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end