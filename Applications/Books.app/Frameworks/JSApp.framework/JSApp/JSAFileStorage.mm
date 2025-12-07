@interface JSAFileStorage
+ (_TtC5JSApp14JSAFileStorage)sharedInstance;
- (_TtC5JSApp14JSAFileStorage)init;
- (id)getItem:(id)item;
- (void)removeItem:(id)item;
- (void)setItem:(id)item :(id)a4;
@end

@implementation JSAFileStorage

+ (_TtC5JSApp14JSAFileStorage)sharedInstance
{
  if (qword_CA3E0 != -1)
  {
    swift_once();
  }

  v3 = qword_CAB78;

  return v3;
}

- (id)getItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_44DA8(&v13);

  v6 = v14;
  if (v14)
  {
    v7 = sub_40E4C(&v13, v14);
    v8 = *(v6 - 8);
    __chkstk_darwin(v7);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_84BDC();
    (*(v8 + 8))(v10, v6);
    sub_371A8(&v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setItem:(id)item :(id)a4
{
  itemCopy = item;
  v7 = a4;
  selfCopy = self;
  sub_450B8(itemCopy, v7);
}

- (void)removeItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_45374();
}

- (_TtC5JSApp14JSAFileStorage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end