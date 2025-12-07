@interface FTAVCMoments
- (FTAVCMomentsDelegate)delegate;
- (_TtC18FTLivePhotoService12FTAVCMoments)initWithStreamToken:(int64_t)token requesterID:(id)d delegate:(id)delegate dispatchQueue:(id)queue;
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

@implementation FTAVCMoments

- (FTAVCMomentsDelegate)delegate
{
  v2 = sub_100034038();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  sub_1000340A4(delegate);
}

- (_TtC18FTLivePhotoService12FTAVCMoments)initWithStreamToken:(int64_t)token requesterID:(id)d delegate:(id)delegate dispatchQueue:(id)queue
{
  if (d)
  {
    v9 = sub_10003986C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  delegateCopy = delegate;
  queueCopy = queue;
  return sub_1000340EC(token, v9, v11, delegateCopy, queue);
}

- (int64_t)streamToken
{
  selfCopy = self;
  v3 = sub_10003429C();

  return v3;
}

- (unsigned)capabilities
{
  selfCopy = self;
  v3 = sub_100034370(&selRef_capabilities);

  return v3;
}

- (int)activeRequestCount
{
  selfCopy = self;
  v3 = sub_100034370(&selRef_activeRequestCount);

  return v3;
}

- (int)pendingRequestCount
{
  selfCopy = self;
  v3 = sub_100034370(&selRef_pendingRequestCount);

  return v3;
}

- (id)newRequestWithMediaType:(unsigned __int8)type mode:(unsigned __int8)mode requesteeID:(id)d
{
  typeCopy = type;
  if (d)
  {
    v8 = sub_10003986C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  selfCopy = self;
  v12 = sub_100034390(typeCopy, mode, v8, v10);

  return v12;
}

- (void)moments:(id)moments capabilitiesDidChange:(unsigned int)change
{
  v4 = *&change;
  momentsCopy = moments;
  selfCopy = self;
  sub_100034568(selfCopy, v4);
}

- (void)moments:(id)moments didEndProcessingRequest:(id)request url:(id)url error:(id)error
{
  v7 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  if (url)
  {
    sub_10003958C();
    v10 = sub_1000395CC();
    v11 = 0;
  }

  else
  {
    v10 = sub_1000395CC();
    v11 = 1;
  }

  sub_10000E998(v9, v11, 1, v10);
  sub_10000D3F4(v9);
}

- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error
{
  v13 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  if (l)
  {
    sub_10003958C();
    v19 = sub_1000395CC();
    v20 = 0;
  }

  else
  {
    v19 = sub_1000395CC();
    v20 = 1;
  }

  v21 = 1;
  sub_10000E998(v18, v20, 1, v19);
  if (rL)
  {
    sub_10003958C();
    v21 = 0;
  }

  v22 = sub_1000395CC();
  sub_10000E998(v16, v21, 1, v22);
  momentsCopy = moments;
  requestCopy = request;
  errorCopy = error;
  selfCopy = self;
  sub_100034854(selfCopy, requestCopy, v18, v16, error);

  sub_10000D3F4(v16);
  sub_10000D3F4(v18);
}

- (void)momentsServerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100034BD4();
}

@end