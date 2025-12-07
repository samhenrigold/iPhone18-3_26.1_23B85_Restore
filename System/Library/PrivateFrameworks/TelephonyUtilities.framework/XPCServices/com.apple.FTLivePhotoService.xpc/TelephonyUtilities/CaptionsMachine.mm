@interface CaptionsMachine
- (NSString)description;
- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish;
- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didStartCaptioningWithReason:(unsigned __int8)reason;
- (void)captionsClient:(id)client didStopCaptioningWithReason:(unsigned __int8)reason;
- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source;
- (void)captionsServerDidDie:(id)die;
@end

@implementation CaptionsMachine

- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error
{
  captionsCopy = captions;
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_100010B6C(client, captionsCopy, error, &unk_100051C38);
}

- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error
{
  captionsCopy = captions;
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_100010B6C(client, captionsCopy, error, &unk_100051BE8);
}

- (void)captionsClient:(id)client didStartCaptioningWithReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  clientCopy = client;
  selfCopy = self;
  sub_100011160(client, reasonCopy, &unk_100051B98, sub_100012A3C);
}

- (void)captionsClient:(id)client didStopCaptioningWithReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  clientCopy = client;
  selfCopy = self;
  sub_100011160(client, reasonCopy, &unk_100051B48, sub_100012A10);
}

- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish
{
  gibberishCopy = gibberish;
  clientCopy = client;
  selfCopy = self;
  sub_100011614(selfCopy, gibberishCopy, v7, v8);
}

- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source
{
  clientCopy = client;
  captionsCopy = captions;
  selfCopy = self;
  sub_100011A24(selfCopy, captions, v9, v10);
}

- (void)captionsServerDidDie:(id)die
{
  dieCopy = die;
  selfCopy = self;
  sub_100012320(selfCopy, v5, v6, v7);
}

- (NSString)description
{
  selfCopy = self;
  sub_100012680();

  v3 = sub_10003985C();

  return v3;
}

@end