@interface MPVisualMessage
- (BOOL)isDataAvailable;
- (BOOL)isDeleted;
- (BOOL)isRead;
- (BOOL)isTranscribing;
- (BOOL)isTranscriptionAvailable;
- (BOOL)isTranscriptionRated;
- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(double)time;
- (BOOL)transcriptionAttempted;
- (MPMessageID)identifier;
- (MPTranscriptMessage)transcript;
- (NSDate)date;
- (NSString)provider;
- (NSURL)dataURL;
- (NSURL)thumbnailURL;
- (NSUUID)callUUID;
- (TUHandle)senderHandle;
- (VMVoicemail)vmMessage;
- (double)duration;
- (id)contactUsingContactStore:(id)store withKeysToFetch:(id)fetch;
- (id)displayNameUsingContactStore:(id)store;
- (int64_t)folder;
@end

@implementation MPVisualMessage

- (VMVoicemail)vmMessage
{
  v2 = sub_10021C62C();

  return v2;
}

- (MPMessageID)identifier
{
  selfCopy = self;
  v3 = sub_10021C680();

  return v3;
}

- (NSString)provider
{
  selfCopy = self;
  sub_10021C738();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSUUID)callUUID
{
  v2 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_10021C8F0();
  v5 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100006AC0(v4, 1, v5) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return isa;
}

- (TUHandle)senderHandle
{
  selfCopy = self;
  v3 = sub_10021C970();

  return v3;
}

- (int64_t)folder
{
  selfCopy = self;
  v3 = sub_10021CB84();

  return v3;
}

- (BOOL)isRead
{
  selfCopy = self;
  v3 = sub_10021CC60();

  return v3 & 1;
}

- (NSDate)date
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_10021CD84();

  v8.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.isa;
}

- (BOOL)isTranscriptionAvailable
{
  selfCopy = self;
  v3 = sub_10021CE20();

  return v3 & 1;
}

- (double)duration
{
  selfCopy = self;
  sub_10021CE88();
  v4 = v3;

  return v4;
}

- (BOOL)isTranscriptionRated
{
  selfCopy = self;
  v3 = sub_10021CED4();

  return v3 & 1;
}

- (BOOL)isTranscribing
{
  selfCopy = self;
  v3 = sub_10021CF34();

  return v3;
}

- (BOOL)transcriptionAttempted
{
  selfCopy = self;
  v3 = sub_10021CF9C();

  return v3;
}

- (MPTranscriptMessage)transcript
{
  selfCopy = self;
  v3 = sub_10021D014();

  return v3;
}

- (BOOL)isDeleted
{
  selfCopy = self;
  v3 = sub_10021CC00();

  return v3 & 1;
}

- (NSURL)dataURL
{
  v3 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  selfCopy = self;
  sub_10021D1CC(v5);

  v7 = type metadata accessor for URL();
  v9 = 0;
  if (sub_100006AC0(v5, 1, v7) != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v9 = v10;
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v9;
}

- (NSURL)thumbnailURL
{
  v2 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  sub_10021D334();
  v5 = type metadata accessor for URL();
  v7 = 0;
  if (sub_100006AC0(v4, 1, v5) != 1)
  {
    URL._bridgeToObjectiveC()(v6);
    v7 = v8;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return v7;
}

- (BOOL)isDataAvailable
{
  selfCopy = self;
  v3 = sub_10021D3A4();

  return v3 & 1;
}

- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(double)time
{
  selfCopy = self;
  v5 = sub_10021D458(time);

  return v5 & 1;
}

- (id)contactUsingContactStore:(id)store withKeysToFetch:(id)fetch
{
  sub_10014EA98(&qword_1003AAF80, &unk_1002FB7D0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  storeCopy = store;
  selfCopy = self;
  v9 = sub_10021D4CC(storeCopy, v6);

  return v9;
}

- (id)displayNameUsingContactStore:(id)store
{
  storeCopy = store;
  selfCopy = self;
  sub_10021D5EC(storeCopy);
  v7 = v6;

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end