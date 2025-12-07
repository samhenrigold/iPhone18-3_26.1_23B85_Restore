@interface ApplicationInfo
- (NSURL)executableURL;
- (void)_loadFromProxy:(id)proxy;
@end

@implementation ApplicationInfo

- (void)_loadFromProxy:(id)proxy
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ApplicationInfo(0);
  [(ApplicationInfo *)&v4 _loadFromProxy:proxy];
}

- (NSURL)executableURL
{
  v3 = sub_100004C60(&qword_10006F308, &qword_10004E048);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  selfCopy = self;
  sub_1000151AC(v5);

  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

@end