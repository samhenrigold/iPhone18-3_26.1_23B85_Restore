@interface FTMessage
- (BOOL)isDataAvailable;
- (BOOL)isDeleted;
- (BOOL)isRTT;
- (BOOL)isRead;
- (BOOL)isSensitive;
- (BOOL)isTranscriptionAvailable;
- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(double)time;
- (BOOL)transcriptionAttempted;
- (MPMessageID)identifier;
- (MPTranscriptMessage)transcript;
- (NSDate)date;
- (NSUUID)callUUID;
- (TUHandle)senderHandle;
- (_TtC20FaceTimeMessageStore7Message)ftMessage;
- (double)duration;
- (id)contactUsingContactStore:(id)store withKeysToFetch:(id)fetch;
- (id)displayNameUsingContactStore:(id)store;
- (int64_t)folder;
- (int64_t)messageType;
- (void)setFolder:(int64_t)folder;
- (void)setIsDeleted:(BOOL)deleted;
- (void)setIsRead:(BOOL)read;
@end

@implementation FTMessage

- (_TtC20FaceTimeMessageStore7Message)ftMessage
{
  v2 = sub_1001B9BB4();

  return v2;
}

- (MPMessageID)identifier
{
  selfCopy = self;
  v3 = sub_1001B9C08();

  return v3;
}

- (NSUUID)callUUID
{
  v3 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v10 - v4);
  selfCopy = self;
  sub_1001B9E78(v5);

  v7 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100006AC0(v5, 1, v7) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return isa;
}

- (int64_t)messageType
{
  selfCopy = self;
  v3 = sub_1001B9F08();

  return v3;
}

- (TUHandle)senderHandle
{
  selfCopy = self;
  v3 = sub_1001BA078();

  return v3;
}

- (int64_t)folder
{
  selfCopy = self;
  v3 = sub_1001BA430();

  return v3;
}

- (void)setFolder:(int64_t)folder
{
  selfCopy = self;
  sub_1001BA504(folder);
}

- (BOOL)isRead
{
  selfCopy = self;
  v3 = sub_1001BA588();

  return v3 & 1;
}

- (void)setIsRead:(BOOL)read
{
  selfCopy = self;
  sub_1001BA644(read);
}

- (NSDate)date
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1001BA788();

  v8.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.isa;
}

- (BOOL)isTranscriptionAvailable
{
  selfCopy = self;
  sub_1001BA7E8();
  v4 = v3;

  return v4 & 1;
}

- (double)duration
{
  selfCopy = self;
  sub_1001BAC7C();
  v4 = v3;

  return v4;
}

- (BOOL)transcriptionAttempted
{
  selfCopy = self;
  v3 = sub_1001BACEC();

  return v3;
}

- (BOOL)isDeleted
{
  selfCopy = self;
  v3 = sub_1001BADA8();

  return v3 & 1;
}

- (void)setIsDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  selfCopy = self;
  sub_1001BAE14(deletedCopy);
}

- (BOOL)isSensitive
{
  selfCopy = self;
  v3 = sub_1001BAE5C();

  return v3 & 1;
}

- (BOOL)isRTT
{
  selfCopy = self;
  v3 = sub_1001BABE4();

  return v3 & 1;
}

- (BOOL)isDataAvailable
{
  selfCopy = self;
  v3 = sub_1001BB824();

  return v3 & 1;
}

- (MPTranscriptMessage)transcript
{
  selfCopy = self;
  v3 = sub_1001BAC14();

  return v3;
}

- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(double)time
{
  selfCopy = self;
  v5 = sub_1001BCACC(time);

  return v5;
}

- (id)contactUsingContactStore:(id)store withKeysToFetch:(id)fetch
{
  sub_10014EA98(&qword_1003AAF80, &unk_1002FB7D0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  storeCopy = store;
  selfCopy = self;
  v8 = sub_1001BCB7C(storeCopy);

  return v8;
}

- (id)displayNameUsingContactStore:(id)store
{
  storeCopy = store;
  selfCopy = self;
  sub_1001BCCF4(storeCopy);
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