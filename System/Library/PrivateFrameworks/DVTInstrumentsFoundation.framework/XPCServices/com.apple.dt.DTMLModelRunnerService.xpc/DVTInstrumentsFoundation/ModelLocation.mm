@interface ModelLocation
- (_TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation)init;
- (_TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation)initWithTempFolderGuid:(id)guid fileName:(id)name;
@end

@implementation ModelLocation

- (_TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation)initWithTempFolderGuid:(id)guid fileName:(id)name
{
  v5 = sub_1000268A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026890();
  v9 = sub_100026CC0();
  v11 = v10;
  (*(v6 + 16))(self + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation_tempFolderGuid, v8, v5);
  v12 = (self + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation_fileName);
  *v12 = v9;
  v12[1] = v11;
  v13 = type metadata accessor for ModelLocation(0);
  v16.receiver = self;
  v16.super_class = v13;
  v14 = [(ModelLocation *)&v16 init];
  (*(v6 + 8))(v8, v5);
  return v14;
}

- (_TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end