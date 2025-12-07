@interface TVIEURLRequestFactoryProxy
+ (void)createRoute:(NSString *)route completion:(id)completion;
- (_TtC18TVIntentsExtension26TVIEURLRequestFactoryProxy)init;
@end

@implementation TVIEURLRequestFactoryProxy

+ (void)createRoute:(NSString *)route completion:(id)completion
{
  sub_100002C2C(&qword_10000C7B0, &qword_100006450);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  v10[2] = route;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_1000056F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100006460;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100006470;
  v13[5] = v12;
  routeCopy = route;
  sub_100003108(0, 0, v8, &unk_100006480, v13);
}

- (_TtC18TVIntentsExtension26TVIEURLRequestFactoryProxy)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TVIEURLRequestFactoryProxy();
  return [(TVIEURLRequestFactoryProxy *)&v3 init];
}

@end