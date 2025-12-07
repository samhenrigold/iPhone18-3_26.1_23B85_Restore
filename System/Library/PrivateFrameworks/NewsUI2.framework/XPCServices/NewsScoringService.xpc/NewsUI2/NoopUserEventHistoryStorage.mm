@interface NoopUserEventHistoryStorage
- (NSArray)prunedSessionIDs;
- (NSArray)sessionIDs;
- (NSArray)sessions;
- (NSDate)earliestSessionDate;
- (id)pruneWithPolicy:(id)policy;
- (void)setMetadata:(id)metadata;
- (void)storeSessionID:(id)d sessionData:(id)data;
@end

@implementation NoopUserEventHistoryStorage

- (NSArray)sessionIDs
{
  if (*(self + OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_sessionIDs))
  {

    v2.super.isa = sub_10000A2BC().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (NSArray)sessions
{
  if (*(self + OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_sessions))
  {
    sub_10000A1CC();

    v2.super.isa = sub_10000A2BC().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (NSDate)earliestSessionDate
{
  sub_1000088F8(0, &qword_100015AA0, &type metadata accessor for Date, &type metadata accessor for Optional);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  sub_100008A28(self + OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_earliestSessionDate, &v12 - v4);
  v6 = sub_100009D9C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    isa = sub_100009D8C().super.isa;
    (*(v7 + 8))(v5, v6);
    v9 = isa;
  }

  return v9;
}

- (NSArray)prunedSessionIDs
{

  v2.super.isa = sub_10000A2BC().super.isa;

  return v2.super.isa;
}

- (void)setMetadata:(id)metadata
{
  v4 = *(self + OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_metadata);
  *(self + OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_metadata) = metadata;
  metadataCopy = metadata;
}

- (void)storeSessionID:(id)d sessionData:(id)data
{
  dataCopy = data;
  v4 = sub_100009D7C();
  sub_1000089D4(v4, v5);
}

- (id)pruneWithPolicy:(id)policy
{
  v3.super.isa = sub_10000A2BC().super.isa;

  return v3.super.isa;
}

@end