@interface CSDAnsweringMachineController
- (BOOL)hasCustomGreetingFor:(id)for;
- (BOOL)isAvailable;
- (CSDAnsweringMachineController)initWith:(id)with speechAssetManager:(id)manager;
- (NSURL)defaultGreeting;
- (id)customGreetingFor:(id)for;
- (int64_t)liveVoicemailUnavailableReason;
- (void)answeringMachine:(id)machine didFinishAnnouncement:(BOOL)announcement error:(id)error;
- (void)answeringMachine:(id)machine didStart:(BOOL)start error:(id)error;
- (void)answeringMachine:(id)machine didStop:(BOOL)stop messageRecordingURL:(id)l error:(id)error;
- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish;
- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didStartCaptioningWithReason:(unsigned __int8)reason;
- (void)captionsClient:(id)client didStopCaptioningWithReason:(unsigned __int8)reason;
- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source;
- (void)captionsServerDidDie:(id)die;
- (void)deleteCustomGreetingFor:(id)for;
- (void)saveCustomGreeting:(id)greeting for:(id)for;
- (void)serverDidDisconnectForAnsweringMachine:(id)machine;
- (void)setCustomReply:(id)reply;
- (void)startReceptionistReply;
@end

@implementation CSDAnsweringMachineController

- (BOOL)isAvailable
{
  selfCopy = self;
  v3 = sub_100308500();

  return v3 & 1;
}

- (int64_t)liveVoicemailUnavailableReason
{
  selfCopy = self;
  v3 = sub_100308588();

  return v3;
}

- (CSDAnsweringMachineController)initWith:(id)with speechAssetManager:(id)manager
{
  withCopy = with;
  managerCopy = manager;
  sub_100309760();
  return result;
}

- (void)setCustomReply:(id)reply
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003099D8();
}

- (void)startReceptionistReply
{
  selfCopy = self;
  sub_10030A004();
}

- (void)saveCustomGreeting:(id)greeting for:(id)for
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10030B314(v12, v8);

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

- (void)deleteCustomGreetingFor:(id)for
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10030B500(v7);

  (*(v5 + 8))(v7, v4);
}

- (id)customGreetingFor:(id)for
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10030B628(v7);

  (*(v5 + 8))(v7, v4);
  v12 = type metadata accessor for URL();
  v14 = 0;
  if (sub_100015468(v10, 1, v12) != 1)
  {
    URL._bridgeToObjectiveC()(v13);
    v14 = v15;
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  return v14;
}

- (NSURL)defaultGreeting
{
  v3 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  selfCopy = self;
  sub_10030B92C(selfCopy);

  v7 = type metadata accessor for URL();
  v9 = 0;
  if (sub_100015468(v5, 1, v7) != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v9 = v10;
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v9;
}

- (BOOL)hasCustomGreetingFor:(id)for
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_10030B96C(v4, v6);

  return v4 & 1;
}

- (void)answeringMachine:(id)machine didStart:(BOOL)start error:(id)error
{
  machineCopy = machine;
  selfCopy = self;
  errorCopy = error;
  sub_10030C284();
}

- (void)answeringMachine:(id)machine didStop:(BOOL)stop messageRecordingURL:(id)l error:(id)error
{
  stopCopy = stop;
  v11 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v11 - 8);
  v13 = (&v19 - v12);
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for URL();
    v15 = 0;
  }

  else
  {
    v14 = type metadata accessor for URL();
    v15 = 1;
  }

  sub_10000AF74(v13, v15, 1, v14);
  machineCopy = machine;
  errorCopy = error;
  selfCopy = self;
  sub_10030C860(selfCopy, stopCopy, v13, error);

  sub_100009A04(v13, &unk_1006A52C0, &unk_10057D930);
}

- (void)answeringMachine:(id)machine didFinishAnnouncement:(BOOL)announcement error:(id)error
{
  machineCopy = machine;
  selfCopy = self;
  errorCopy = error;
  sub_100312234();
}

- (void)serverDidDisconnectForAnsweringMachine:(id)machine
{
  machineCopy = machine;
  selfCopy = self;
  sub_100313FA0();
}

- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_100314378();
}

- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_100314874();
}

- (void)captionsClient:(id)client didStartCaptioningWithReason:(unsigned __int8)reason
{
  clientCopy = client;
  selfCopy = self;
  sub_100314DE4();
}

- (void)captionsClient:(id)client didStopCaptioningWithReason:(unsigned __int8)reason
{
  clientCopy = client;
  selfCopy = self;
  sub_100314DE4();
}

- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish
{
  clientCopy = client;
  selfCopy = self;
  sub_100315280();
}

- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source
{
  clientCopy = client;
  captionsCopy = captions;
  selfCopy = self;
  sub_1003155D4();
}

- (void)captionsServerDidDie:(id)die
{
  dieCopy = die;
  selfCopy = self;
  sub_100315F8C();
}

@end