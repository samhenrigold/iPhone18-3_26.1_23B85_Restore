@interface AccountChangedListener
- (_TtC11homeeventsd22AccountChangedListener)init;
- (void)accountChangedWithNotification:(id)notification;
@end

@implementation AccountChangedListener

- (void)accountChangedWithNotification:(id)notification
{
  v3 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    sub_100080ECC(0, 0, v5, &unk_100087FB8, v9);
  }
}

- (_TtC11homeeventsd22AccountChangedListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end