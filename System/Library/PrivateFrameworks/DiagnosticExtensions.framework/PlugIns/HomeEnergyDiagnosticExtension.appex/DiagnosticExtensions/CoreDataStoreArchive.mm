@interface CoreDataStoreArchive
+ (id)copyCoreDataStoresWithUrl:(id)url;
- (CoreDataStoreArchive)init;
@end

@implementation CoreDataStoreArchive

+ (id)copyCoreDataStoresWithUrl:(id)url
{
  v3 = sub_1000037FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000031A4(&qword_10000C2A0, &qword_100003DE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  sub_1000037EC();
  sub_10000287C(v6, v9);
  v10 = *(v4 + 8);
  v10(v6, v3);
  v11 = (*(v4 + 48))(v9, 1, v3);
  result = 0;
  if (v11 != 1)
  {
    sub_1000037BC(v11);
    v14 = v13;
    v10(v9, v3);
    return v14;
  }

  return result;
}

- (CoreDataStoreArchive)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CoreDataStoreArchive();
  return [(CoreDataStoreArchive *)&v3 init];
}

@end