@interface PropertyRecordCheckpointEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (HDSyncEntityIdentifier)syncEntityIdentifier;
+ (id)createTableSQLWithBehavior:(id)behavior;
+ (id)databaseTable;
+ (id)decodeSyncObjectWithData:(id)data;
+ (id)indicesWithBehavior:(id)behavior;
+ (id)propertyForSyncIdentity;
+ (id)propertyForSyncProvenance;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
- (_TtC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity)init;
- (_TtC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity)initWithPersistentID:(int64_t)d;
@end

@implementation PropertyRecordCheckpointEntity

+ (HDSyncEntityIdentifier)syncEntityIdentifier
{
  v2 = objc_allocWithZone(HDSyncEntityIdentifier);
  v3 = sub_75598();
  v4 = [v2 initWithEntityIdentifier:3 schemaIdentifier:v3];

  return v4;
}

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  var1 = range.var1;
  var0 = range.var0;
  swift_getObjCClassMetadata();
  sessionCopy = session;
  profileCopy = profile;
  swift_unknownObjectRetain();
  static PropertyRecordCheckpointEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(sessionCopy, var0, var1, profileCopy, handler);
  swift_unknownObjectRelease();

  return 1;
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sessionCopy = session;
  profileCopy = profile;
  database = [profileCopy database];
  v14 = [ObjCClassFromMetadata nextSyncAnchorWithStartAnchor:anchor predicate:0 syncEntityClass:ObjCClassFromMetadata session:sessionCopy orderingTerms:0 limit:0 healthDatabase:database error:error];

  return v14;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  v4 = sub_38F8(&qword_8EB18, &qword_7A950);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  dataCopy = data;
  v8 = sub_748C8();
  v10 = v9;

  v11 = type metadata accessor for PropertyRecordCheckpointEntity.EntityWrapper(0);
  v12 = objc_allocWithZone(v11);
  v13 = sub_751D8();
  sub_398C(v8, v10);
  sub_39E0();
  sub_74F88();
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  sub_3A38(v6, &v12[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry]);
  v14 = &v12[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity];
  *v14 = v8;
  v14[1] = v10;
  v18.receiver = v12;
  v18.super_class = v11;
  v15 = objc_msgSendSuper2(&v18, "init");

  return v15;
}

+ (id)databaseTable
{
  v2 = sub_75598();

  return v2;
}

+ (id)createTableSQLWithBehavior:(id)behavior
{
  _s25FitnessIntelligencePlugin30PropertyRecordCheckpointEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0();
  if (v3)
  {
    v4 = sub_75598();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)indicesWithBehavior:(id)behavior
{
  swift_getObjCClassMetadata();
  behaviorCopy = behavior;
  static PropertyRecordCheckpointEntity.indices(with:)();

  sub_7688(0, &unk_8F270, HDSQLiteEntityIndex_ptr);
  v5.super.isa = sub_75678().super.isa;

  return v5.super.isa;
}

+ (id)propertyForSyncProvenance
{
  v2 = sub_75598();

  return v2;
}

+ (id)propertyForSyncIdentity
{
  v2 = sub_75598();

  return v2;
}

- (_TtC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity)initWithPersistentID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PropertyRecordCheckpointEntity();
  return [(PropertyRecordCheckpointEntity *)&v5 initWithPersistentID:d];
}

- (_TtC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PropertyRecordCheckpointEntity();
  return [(PropertyRecordCheckpointEntity *)&v3 init];
}

@end