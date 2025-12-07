@interface NSFileManager
+ (id)sharingContainerURL;
@end

@implementation NSFileManager

+ (id)sharingContainerURL
{
  v2 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  sub_1002EFD6C(&v12 - v3);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = 0;
  if (v7 != 1)
  {
    URL._bridgeToObjectiveC()(v7);
    v10 = v9;
    (*(v6 + 8))(v4, v5);
    v8 = v10;
  }

  return v8;
}

@end