@interface ASOAttributionKitBridge
- (ASOAttributionKitBridge)init;
- (id)processReengagementWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s bundleID:(id)iD url:(id)url;
@end

@implementation ASOAttributionKitBridge

- (id)processReengagementWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s bundleID:(id)iD url:(id)url
{
  v9 = sub_10000D4AC(&qword_10002C1C8, &unk_10001CCA0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = sub_100018458();
  v17 = v16;
  v18 = sub_100018458();
  v20 = v19;
  if (url)
  {
    sub_100018078();
    v21 = sub_100018088();
    (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  }

  else
  {
    v21 = sub_100018088();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  }

  selfCopy = self;
  sub_10000DF3C(d, v15, v17, v18, v20, v12);

  sub_10000E79C(v12, &qword_10002C1C8, &unk_10001CCA0);
  sub_100018088();
  v23 = *(v21 - 8);
  v24 = (*(v23 + 48))(v14, 1, v21);
  v25 = 0;
  if (v24 != 1)
  {
    sub_100018068(v24);
    v27 = v26;
    (*(v23 + 8))(v14, v21);
    v25 = v27;
  }

  return v25;
}

- (ASOAttributionKitBridge)init
{
  v3 = sub_1000183D8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002BF58 != -1)
  {
    swift_once();
  }

  v7 = sub_10000E764(v3, qword_10002CD88);
  (*(v4 + 16))(v6, v7, v3);
  sub_1000183E8();
  v8 = type metadata accessor for AttributionKitBridge(0);
  v10.receiver = self;
  v10.super_class = v8;
  return [(ASOAttributionKitBridge *)&v10 init];
}

@end