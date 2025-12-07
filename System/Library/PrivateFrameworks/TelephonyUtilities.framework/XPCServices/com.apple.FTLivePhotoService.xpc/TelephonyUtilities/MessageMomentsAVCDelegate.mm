@interface MessageMomentsAVCDelegate
- (void)moments:(id)moments capabilitiesDidChange:(unsigned int)change;
- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error;
- (void)momentsServerDidDisconnect:(id)disconnect;
@end

@implementation MessageMomentsAVCDelegate

- (void)moments:(id)moments capabilitiesDidChange:(unsigned int)change
{
  v4 = *&change;
  momentsCopy = moments;
  selfCopy = self;
  sub_10000F3D4(momentsCopy, v4);
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
  sub_10000F4EC(momentsCopy, requestCopy, v18, v16, error);

  sub_10000F990(v16, &unk_100058FA0, &unk_10003F260);
  sub_10000F990(v18, &unk_100058FA0, &unk_10003F260);
}

- (void)momentsServerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10000F77C(disconnectCopy);
}

@end