@interface CKDTrafficMetadata
- (NSDate)timestamp;
- (NSDictionary)headers;
- (NSURL)url;
- (void)encodeWithCoder:(id)coder;
- (void)setHeaders:(id)headers;
- (void)setTimestamp:(id)timestamp;
- (void)setUrl:(id)url;
@end

@implementation CKDTrafficMetadata

- (NSDate)timestamp
{
  v2 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_225107FA4(&v8 - v3);
  v5 = type metadata accessor for Date();
  isa = 0;
  if (sub_22507C8E8(v4, 1, v5) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return isa;
}

- (void)setTimestamp:(id)timestamp
{
  v5 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (timestamp)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Date();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = 1;
  }

  sub_22507C8C0(v7, v9, 1, v8);
  selfCopy = self;
  sub_225108094(v7);
}

- (NSURL)url
{
  v2 = sub_2250B0DFC(&qword_27D7197B8, &unk_225447A60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  sub_2251081A8(&v10 - v3);
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

- (void)setUrl:(id)url
{
  v5 = sub_2250B0DFC(&qword_27D7197B8, &unk_225447A60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (url)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for URL();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = 1;
  }

  sub_22507C8C0(v7, v9, 1, v8);
  selfCopy = self;
  sub_225108304(v7);
}

- (NSDictionary)headers
{
  if (sub_2251084EC())
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setHeaders:(id)headers
{
  if (headers)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_22510857C(v4);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_225108854(coderCopy);
}

@end