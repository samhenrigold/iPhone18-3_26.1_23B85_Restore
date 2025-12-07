@interface ObjCReplica
- (NSUUID)uuid;
- (_TtC9Coherence11ObjCReplica)init;
- (_TtC9Coherence11ObjCReplica)initWithUuid:(id)uuid index:(int64_t)index;
- (void)setUuid:(id)uuid;
@end

@implementation ObjCReplica

- (NSUUID)uuid
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = sub_1AE23BF7C();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (_TtC9Coherence11ObjCReplica)initWithUuid:(id)uuid index:(int64_t)index
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23BF9C();
  (*(v7 + 16))(self + OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid, v9, v6);
  *(self + OBJC_IVAR____TtC9Coherence11ObjCReplica_index) = index;
  v10 = type metadata accessor for ObjCReplica(0);
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(ObjCReplica *)&v13 init];
  (*(v7 + 8))(v9, v6);
  return v11;
}

- (void)setUuid:(id)uuid
{
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23BF9C();
  v8 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (_TtC9Coherence11ObjCReplica)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end