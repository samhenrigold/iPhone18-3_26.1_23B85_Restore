@interface AMSDevice
+ (id)sk_bootSession;
+ (id)sk_defaultMediaAPIPlatform;
@end

@implementation AMSDevice

+ (id)sk_bootSession
{
  v2 = sub_100012634(&qword_1000D2800, qword_100099E20);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_100083BE0(&v8 - v3);
  v5 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100012898(v4, 1, v5) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return isa;
}

+ (id)sk_defaultMediaAPIPlatform
{
  v2 = sub_100084680();

  return v2;
}

@end