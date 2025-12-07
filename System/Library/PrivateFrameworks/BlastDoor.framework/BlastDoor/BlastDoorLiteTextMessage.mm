@interface BlastDoorLiteTextMessage
- (BlastDoorLiteTapback)tapback;
- (BlastDoorLiteTextMessage)init;
- (int64_t)effect;
@end

@implementation BlastDoorLiteTextMessage

- (int64_t)effect
{
  v3 = type metadata accessor for LiteTextMessage(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorLiteTextMessage_liteTextMessage, v5, type metadata accessor for LiteTextMessage);
  v6 = v5[16];
  selfCopy = self;
  sub_213FB5844(v5, type metadata accessor for LiteTextMessage);
  if (v6 == 14)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  result = sub_2145924C8(v8);
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v11 = result;

    return v11;
  }

  return result;
}

- (BlastDoorLiteTapback)tapback
{
  selfCopy = self;
  v3 = sub_2145606F0();

  return v3;
}

- (BlastDoorLiteTextMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end