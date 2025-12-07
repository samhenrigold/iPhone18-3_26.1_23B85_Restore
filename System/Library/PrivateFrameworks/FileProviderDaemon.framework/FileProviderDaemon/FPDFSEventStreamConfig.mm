@interface FPDFSEventStreamConfig
- (BOOL)historyPurged;
- (NSUUID)previousStreamUUID;
- (_TtC18FileProviderDaemon22FPDFSEventStreamConfig)init;
- (unint64_t)lastPurgedEventID;
- (void)setHistoryPurged:(BOOL)purged;
- (void)setLastPurgedEventID:(unint64_t)d;
- (void)setPreviousStreamUUID:(id)d;
@end

@implementation FPDFSEventStreamConfig

- (BOOL)historyPurged
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_historyPurged;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHistoryPurged:(BOOL)purged
{
  v5 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_historyPurged;
  swift_beginAccess();
  *(self + v5) = purged;
}

- (NSUUID)previousStreamUUID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_previousStreamUUID;
  swift_beginAccess();
  sub_1CF0160C0(self + v6, v5);
  v7 = sub_1CF9E5D98();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1CF9E5D38();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setPreviousStreamUUID:(id)d
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (d)
  {
    sub_1CF9E5D58();
    v8 = sub_1CF9E5D98();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1CF9E5D98();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_previousStreamUUID;
  swift_beginAccess();
  selfCopy = self;
  sub_1CEFFFEB8(v7, self + v10);
  swift_endAccess();
}

- (unint64_t)lastPurgedEventID
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_lastPurgedEventID;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLastPurgedEventID:(unint64_t)d
{
  v5 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_lastPurgedEventID;
  swift_beginAccess();
  *(self + v5) = d;
}

- (_TtC18FileProviderDaemon22FPDFSEventStreamConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end