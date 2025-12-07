@interface LSBundleRecord
- (BOOL)sk_allowExternalLink;
- (BOOL)sk_allowExternalPurchase;
- (BOOL)sk_getTaskAllowed;
- (NSURL)sk_advertisingAttributionReportURL;
@end

@implementation LSBundleRecord

- (NSURL)sk_advertisingAttributionReportURL
{
  v3 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  selfCopy = self;
  sub_100071470(v5);

  v7 = type metadata accessor for URL();
  v9 = 0;
  if (sub_100012898(v5, 1, v7) != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v9 = v10;
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v9;
}

- (BOOL)sk_allowExternalLink
{
  selfCopy = self;
  v3 = sub_100071D30(4);

  return v3 & 1;
}

- (BOOL)sk_allowExternalPurchase
{
  selfCopy = self;
  v3 = sub_100071D30(5);

  return v3 & 1;
}

- (BOOL)sk_getTaskAllowed
{
  selfCopy = self;
  v3 = sub_100071DCC();

  return v3 & 1;
}

@end