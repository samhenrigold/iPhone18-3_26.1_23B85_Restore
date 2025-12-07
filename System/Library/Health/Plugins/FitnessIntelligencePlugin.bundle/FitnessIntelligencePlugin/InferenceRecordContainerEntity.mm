@interface InferenceRecordContainerEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (HDSyncEntityIdentifier)syncEntityIdentifier;
+ (id)createTableSQLWithBehavior:(id)behavior;
+ (id)databaseTable;
+ (id)decodeSyncObjectWithData:(id)data;
+ (id)propertyForSyncIdentity;
+ (id)propertyForSyncProvenance;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
- (_TtC25FitnessIntelligencePlugin30InferenceRecordContainerEntity)init;
- (_TtC25FitnessIntelligencePlugin30InferenceRecordContainerEntity)initWithPersistentID:(int64_t)d;
@end

@implementation InferenceRecordContainerEntity

+ (id)databaseTable
{
  v2 = sub_75598();

  return v2;
}

+ (id)createTableSQLWithBehavior:(id)behavior
{
  _s25FitnessIntelligencePlugin30InferenceRecordContainerEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0();
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

- (_TtC25FitnessIntelligencePlugin30InferenceRecordContainerEntity)initWithPersistentID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for InferenceRecordContainerEntity();
  return [(InferenceRecordContainerEntity *)&v5 initWithPersistentID:d];
}

- (_TtC25FitnessIntelligencePlugin30InferenceRecordContainerEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InferenceRecordContainerEntity();
  return [(InferenceRecordContainerEntity *)&v3 init];
}

+ (HDSyncEntityIdentifier)syncEntityIdentifier
{
  v2 = objc_allocWithZone(HDSyncEntityIdentifier);
  v3 = sub_75598();
  v4 = [v2 initWithEntityIdentifier:2 schemaIdentifier:v3];

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
  static InferenceRecordContainerEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(sessionCopy, var0, var1, profileCopy, handler);
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

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  sub_38F8(&qword_8EB00, &qword_79B18);
  v9 = sub_75688();
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  profileCopy = profile;
  v11 = sub_47050(v9, *&version, profileCopy);
  swift_unknownObjectRelease();

  return v11;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  v4 = sub_38F8(&unk_8FA00, &qword_7A740);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  dataCopy = data;
  v8 = sub_748C8();
  v10 = v9;

  v11 = _s31InferenceRecordContainerWrapperCMa(0);
  v12 = objc_allocWithZone(v11);
  v13 = sub_74D78();
  sub_398C(v8, v10);
  sub_479D0(&qword_8F178, &type metadata accessor for InferenceRecord, &protocol conformance descriptor for InferenceRecord);
  sub_74F88();
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  sub_477F8(v6, &v12[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecord]);
  v14 = &v12[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecordData];
  *v14 = v8;
  v14[1] = v10;
  v18.receiver = v12;
  v18.super_class = v11;
  v15 = objc_msgSendSuper2(&v18, "init");

  return v15;
}

@end