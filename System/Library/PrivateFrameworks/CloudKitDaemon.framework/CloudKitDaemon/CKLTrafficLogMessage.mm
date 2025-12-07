@interface CKLTrafficLogMessage
- (CKLTrafficLogMessage)initWithUuid:(id)uuid requestMetadata:(id)metadata requestObjects:(id)objects bodyStreamResetCount:(int64_t)count responseMetadata:(id)responseMetadata responseObjects:(id)responseObjects;
- (NSString)description;
- (NSString)requestMethod;
- (NSString)uuid;
- (NSURL)requestURL;
@end

@implementation CKLTrafficLogMessage

- (NSString)uuid
{
  v2 = sub_2250FDE7C();
  v3 = MEMORY[0x22AA62D80](v2);

  return v3;
}

- (NSString)requestMethod
{
  v2 = sub_2250FDF5C();
  if (v3)
  {
    v4 = MEMORY[0x22AA62D80](v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)requestURL
{
  v2 = sub_2250B0DFC(&qword_27D7197B8, &unk_225447A60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  sub_2250FE08C(&v10 - v3);
  v5 = type metadata accessor for URL();
  v7 = 0;
  if (sub_22507C8E8(v4, 1, v5) != 1)
  {
    URL._bridgeToObjectiveC()(v6);
    v7 = v8;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return v7;
}

- (CKLTrafficLogMessage)initWithUuid:(id)uuid requestMetadata:(id)metadata requestObjects:(id)objects bodyStreamResetCount:(int64_t)count responseMetadata:(id)responseMetadata responseObjects:(id)responseObjects
{
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (objects)
  {
    sub_2250B0DFC(&qword_27D7197C0, &qword_225447A70);
    objects = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (responseObjects)
  {
    sub_2250B0DFC(&qword_27D7197C0, &qword_225447A70);
    responseObjects = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  metadataCopy = metadata;
  responseMetadataCopy = responseMetadata;
  return sub_2250FE3F4(v13, v15, metadata, objects, count, responseMetadata, responseObjects);
}

- (NSString)description
{
  selfCopy = self;
  v3 = sub_2250FEA14();
  v5 = v4;

  v6 = MEMORY[0x22AA62D80](v3, v5);

  return v6;
}

@end