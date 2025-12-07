@interface ULBiomeEventCarPlayConnected
- (_TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected)init;
- (_TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected)initWithTimestamp:(id)timestamp starting:(BOOL)starting reason:(int)reason;
@end

@implementation ULBiomeEventCarPlayConnected

- (_TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected)initWithTimestamp:(id)timestamp starting:(BOOL)starting reason:(int)reason
{
  v8 = sub_259212160();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212140();
  (*(v9 + 16))(self + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_timestamp, v11, v8);
  *(self + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_starting) = starting;
  *(self + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_reason) = reason;
  v12 = type metadata accessor for ULBiomeEventCarPlayConnected(0);
  v15.receiver = self;
  v15.super_class = v12;
  v13 = [(ULBiomeEvent *)&v15 init];
  (*(v9 + 8))(v11, v8);
  return v13;
}

- (_TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end