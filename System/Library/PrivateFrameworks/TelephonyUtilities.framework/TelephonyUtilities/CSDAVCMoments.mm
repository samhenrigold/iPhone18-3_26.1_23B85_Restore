@interface CSDAVCMoments
- (CSDAVCMomentsDelegate)delegate;
- (_TtC13callservicesd13CSDAVCMoments)initWithStreamToken:(int64_t)token requesterID:(id)d delegate:(id)delegate dispatchQueue:(id)queue;
- (id)newRequestWithMediaType:(unsigned __int8)type mode:(unsigned __int8)mode requesteeID:(id)d;
- (int)activeRequestCount;
- (int)pendingRequestCount;
- (int64_t)streamToken;
- (unsigned)capabilities;
- (void)moments:(id)moments capabilitiesDidChange:(unsigned int)change;
- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error;
- (void)moments:(id)moments didEndProcessingRequest:(id)request url:(id)url error:(id)error;
- (void)momentsServerDidDisconnect:(id)disconnect;
- (void)setDelegate:(id)delegate;
@end

@implementation CSDAVCMoments

- (CSDAVCMomentsDelegate)delegate
{
  v2 = sub_10044C8E0();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10044C950(delegate);
}

- (_TtC13callservicesd13CSDAVCMoments)initWithStreamToken:(int64_t)token requesterID:(id)d delegate:(id)delegate dispatchQueue:(id)queue
{
  if (d)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  swift_unknownObjectRetain();
  queueCopy = queue;
  return sub_10044C998(token, v9, v11, delegate, queue);
}

- (int64_t)streamToken
{
  selfCopy = self;
  v3 = sub_10044CB50();

  return v3;
}

- (unsigned)capabilities
{
  selfCopy = self;
  v3 = sub_10044CC24(&selRef_capabilities);

  return v3;
}

- (int)activeRequestCount
{
  selfCopy = self;
  v3 = sub_10044CC24(&selRef_activeRequestCount);

  return v3;
}

- (int)pendingRequestCount
{
  selfCopy = self;
  v3 = sub_10044CC24(&selRef_pendingRequestCount);

  return v3;
}

- (id)newRequestWithMediaType:(unsigned __int8)type mode:(unsigned __int8)mode requesteeID:(id)d
{
  typeCopy = type;
  if (d)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  selfCopy = self;
  v12 = sub_10044CC44(typeCopy, mode, v8, v10);

  return v12;
}

- (void)moments:(id)moments capabilitiesDidChange:(unsigned int)change
{
  v4 = *&change;
  momentsCopy = moments;
  selfCopy = self;
  sub_10044CE1C(selfCopy, v4);
}

- (void)moments:(id)moments didEndProcessingRequest:(id)request url:(id)url error:(id)error
{
  v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  if (url)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    v11 = 0;
  }

  else
  {
    v10 = type metadata accessor for URL();
    v11 = 1;
  }

  sub_10000AF74(v9, v11, 1, v10);
  sub_1002E1320(v9);
}

- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error
{
  v13 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = type metadata accessor for URL();
    v20 = 0;
  }

  else
  {
    v19 = type metadata accessor for URL();
    v20 = 1;
  }

  v21 = 1;
  sub_10000AF74(v18, v20, 1, v19);
  if (rL)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = 0;
  }

  v22 = type metadata accessor for URL();
  sub_10000AF74(v16, v21, 1, v22);
  momentsCopy = moments;
  requestCopy = request;
  errorCopy = error;
  selfCopy = self;
  sub_10044D108(selfCopy, requestCopy, v18, v16, error);

  sub_1002E1320(v16);
  sub_1002E1320(v18);
}

- (void)momentsServerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10044D48C();
}

@end