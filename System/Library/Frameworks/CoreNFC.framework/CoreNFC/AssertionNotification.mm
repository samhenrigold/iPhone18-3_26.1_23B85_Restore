@interface AssertionNotification
- (_TtC7CoreNFC21AssertionNotification)init;
- (void)dealloc;
- (void)didExpire;
- (void)didFinishCooldown;
@end

@implementation AssertionNotification

- (void)didExpire
{
  v3 = sub_23728DDC0(&qword_27DE99038, &qword_2372D4B38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v8[-v5];
  v8[15] = 0;
  selfCopy = self;
  sub_23728DDC0(&qword_27DE98A90, &qword_2372D3FA0);
  sub_2372D1154();

  (*(v4 + 8))(v6, v3);
}

- (void)didFinishCooldown
{
  v3 = sub_23728DDC0(&qword_27DE99038, &qword_2372D4B38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v8[-v5];
  v8[15] = 1;
  selfCopy = self;
  sub_23728DDC0(&qword_27DE98A90, &qword_2372D3FA0);
  sub_2372D1154();
  (*(v4 + 8))(v6, v3);
  sub_2372D1164();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = sub_23728DDC0(&qword_27DE98A90, &qword_2372D3FA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v9 - v6;
  (*(v5 + 16))(&v9 - v6, self + OBJC_IVAR____TtC7CoreNFC21AssertionNotification_eventStreamContinuation, v4);
  selfCopy = self;
  sub_2372D1164();
  (*(v5 + 8))(v7, v4);
  v9.receiver = selfCopy;
  v9.super_class = ObjectType;
  [(AssertionNotification *)&v9 dealloc];
}

- (_TtC7CoreNFC21AssertionNotification)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end