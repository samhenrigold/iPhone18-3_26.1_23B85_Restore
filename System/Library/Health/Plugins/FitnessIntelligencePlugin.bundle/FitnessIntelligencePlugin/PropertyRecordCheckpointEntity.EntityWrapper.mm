@interface PropertyRecordCheckpointEntity.EntityWrapper
- (_TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper)init;
- (_TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper)initWithData:(id)data;
- (id)data;
- (int64_t)encodedByteCount;
@end

@implementation PropertyRecordCheckpointEntity.EntityWrapper

- (_TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper)initWithData:(id)data
{
  v5 = sub_38F8(&qword_8EB18, &qword_7A950);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  dataCopy = data;
  v9 = sub_748C8();
  v11 = v10;

  v12 = sub_751D8();
  sub_398C(v9, v11);
  sub_39E0();
  sub_74F88();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  sub_3A38(v7, self + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry);
  v13 = (self + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity);
  *v13 = v9;
  v13[1] = v11;
  v14 = type metadata accessor for PropertyRecordCheckpointEntity.EntityWrapper(0);
  v17.receiver = self;
  v17.super_class = v14;
  return [(PropertyRecordCheckpointEntity.EntityWrapper *)&v17 init];
}

- (id)data
{
  v2 = self + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity;
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity);
  v4 = *(v2 + 1);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if (v4 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = *(v2 + 1);
  }

  sub_11760(v3, v4);
  v7.super.isa = sub_748A8().super.isa;
  sub_FB28(v5, v6);

  return v7.super.isa;
}

- (int64_t)encodedByteCount
{
  selfCopy = self;
  v3 = sub_550E0();

  return v3;
}

- (_TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end