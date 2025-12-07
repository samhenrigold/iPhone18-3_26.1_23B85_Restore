@interface AnalyticsEndpoint
- (NSString)name;
- (NSString)sharedContainerIdentifier;
- (NSURL)url;
@end

@implementation AnalyticsEndpoint

- (NSURL)url
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10007C37C();

  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  (*(v3 + 8))(v5, v2);

  return v8;
}

- (NSString)name
{

  sub_10007C4C0();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)sharedContainerIdentifier
{

  sub_10007C560();
  v3 = v2;

  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end