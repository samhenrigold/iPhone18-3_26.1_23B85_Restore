@interface IMBMessage
- (_TtC8Business10IMBMessage)initWithData:(id)data url:(id)url messageGUID:(id)d isFromMe:(BOOL)me;
- (id)initFromOriginalMessage:(id)message rootKey:(id)key rootObject:(id)object receivedMessage:(id)receivedMessage replyMessage:(id)replyMessage;
- (id)makeRootObjectWithMessageData:(id)data dictionary:(id)dictionary imageDictionary:(id)imageDictionary version:(int64_t)version;
@end

@implementation IMBMessage

- (id)makeRootObjectWithMessageData:(id)data dictionary:(id)dictionary imageDictionary:(id)imageDictionary version:(int64_t)version
{
  v10 = sub_1000ABFBC();
  if (imageDictionary)
  {
    sub_10003C438();
    imageDictionary = sub_1000ABFBC();
  }

  dataCopy = data;
  selfCopy = self;
  v13 = sub_10003B778(dataCopy, v10, imageDictionary, version);

  return v13;
}

- (_TtC8Business10IMBMessage)initWithData:(id)data url:(id)url messageGUID:(id)d isFromMe:(BOOL)me
{
  meCopy = me;
  v10 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  if (data)
  {
    urlCopy = url;
    dCopy = d;
    dataCopy = data;
    data = sub_1000AB73C();
    v17 = v16;

    if (url)
    {
LABEL_3:
      sub_1000AB6AC();

      v18 = sub_1000AB6EC();
      (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
      goto LABEL_6;
    }
  }

  else
  {
    urlCopy2 = url;
    dCopy2 = d;
    v17 = 0xF000000000000000;
    if (url)
    {
      goto LABEL_3;
    }
  }

  v21 = sub_1000AB6EC();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
LABEL_6:
  if (d)
  {
    v22 = sub_1000AC06C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  return sub_10003BF6C(data, v17, v12, v22, v24, meCopy);
}

- (id)initFromOriginalMessage:(id)message rootKey:(id)key rootObject:(id)object receivedMessage:(id)receivedMessage replyMessage:(id)replyMessage
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for IMBMessage();
  return [(IMBMessage *)&v13 initFromOriginalMessage:message rootKey:key rootObject:object receivedMessage:receivedMessage replyMessage:replyMessage];
}

@end