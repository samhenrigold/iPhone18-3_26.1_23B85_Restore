@interface ObjCFinalizedTimestamp
- (BOOL)isEqual:(id)equal;
- (BOOL)isGreaterThanTimestamp:(id)timestamp;
- (NSString)description;
- (_TtC9Coherence11ObjCReplica)replica;
- (_TtC9Coherence22ObjCFinalizedTimestamp)init;
- (_TtC9Coherence22ObjCFinalizedTimestamp)initWithReplica:(id)replica counter:(int64_t)counter;
- (int64_t)hash;
@end

@implementation ObjCFinalizedTimestamp

- (int64_t)hash
{
  v3 = type metadata accessor for FinalizedTimestamp(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADED0548(self + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v6);
  sub_1AE23E31C();
  selfCopy = self;
  sub_1AE23BFAC();
  MEMORY[0x1B26FCBD0](*&v6[*(v4 + 28)]);
  v8 = sub_1AE23E34C();

  sub_1ADE173B8(v6);
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1AE23D83C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1ADDF1048(v8);

  sub_1ADDCEDE0(v8, &qword_1EB5BAA00, &qword_1AE2587A0);
  return v6 & 1;
}

- (_TtC9Coherence11ObjCReplica)replica
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADED0548(self + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v9);
  (*(v4 + 32))(v6, v9, v3);
  v10 = type metadata accessor for ObjCReplica(0);
  v11 = objc_allocWithZone(v10);
  (*(v4 + 16))(&v11[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v6, v3);
  *&v11[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = 0;
  v15.receiver = v11;
  v15.super_class = v10;
  selfCopy = self;
  v13 = [(ObjCFinalizedTimestamp *)&v15 init];
  (*(v4 + 8))(v6, v3);

  return v13;
}

- (_TtC9Coherence22ObjCFinalizedTimestamp)initWithReplica:(id)replica counter:(int64_t)counter
{
  v7 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v8 = self + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp;
  v9 = sub_1AE23BFEC();
  (*(*(v9 - 8) + 16))(v8, replica + v7, v9);
  *&v8[*(type metadata accessor for FinalizedTimestamp(0) + 20)] = counter;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ObjCFinalizedTimestamp(0);
  return [(ObjCFinalizedTimestamp *)&v11 init];
}

- (BOOL)isGreaterThanTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  selfCopy = self;
  LOBYTE(self) = sub_1AE197F48(timestampCopy);

  return self & 1;
}

- (NSString)description
{
  v3 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADED0548(self + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v5);
  selfCopy = self;
  FinalizedTimestamp.description.getter();
  sub_1ADE173B8(v5);

  v7 = sub_1AE23CCDC();

  return v7;
}

- (_TtC9Coherence22ObjCFinalizedTimestamp)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end