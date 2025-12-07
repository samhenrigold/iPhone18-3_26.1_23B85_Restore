@interface Schedule
- (BOOL)isEqual:(id)equal;
- (_TtC14ScreenTimeCore8Schedule)init;
- (_TtC14ScreenTimeCore8Schedule)initWithEnabled:(BOOL)enabled start:(id)start end:(id)end;
- (id)setWithEnabled:(BOOL)enabled;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation Schedule

- (_TtC14ScreenTimeCore8Schedule)initWithEnabled:(BOOL)enabled start:(id)start end:(id)end
{
  v7 = sub_1B83DD86C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  sub_1B83DD84C();
  sub_1B83DD84C();
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled) = enabled;
  v14 = *(v8 + 16);
  v14(self + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start, v13, v7);
  v14(self + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end, v11, v7);
  v15 = type metadata accessor for Schedule(0);
  v19.receiver = self;
  v19.super_class = v15;
  v16 = [(Schedule *)&v19 init];
  v17 = *(v8 + 8);
  v17(v11, v7);
  v17(v13, v7);
  return v16;
}

- (id)setWithEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  v5 = sub_1B83CEBA4(enabledCopy);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B83CF404(coderCopy);
}

- (int64_t)hash
{
  sub_1B83DE25C();
  sub_1B83DE22C();
  sub_1B83DD86C();
  sub_1B83D0760(&qword_1EBA85210, MEMORY[0x1E6968288]);
  selfCopy = self;
  sub_1B83DDC9C();
  sub_1B83DDC9C();
  v4 = sub_1B83DE23C();

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B83DDF5C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1B83CFBD4(v8);

  sub_1B83AD84C(v8, &qword_1EBA84970, &qword_1B83E8430);
  return v6 & 1;
}

- (_TtC14ScreenTimeCore8Schedule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end