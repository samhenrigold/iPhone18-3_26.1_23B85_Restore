@interface BlastDoorLiteTapback
- (BlastDoorLiteTapback)init;
- (NSUUID)associatedMessageUUID;
- (int64_t)associatedMessageType;
@end

@implementation BlastDoorLiteTapback

- (NSUUID)associatedMessageUUID
{
  v3 = sub_2146D8B88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___BlastDoorLiteTapback_liteTapback, v3);
  v7 = sub_2146D8B38();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (int64_t)associatedMessageType
{
  v3 = type metadata accessor for LiteTapback(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorLiteTapback_liteTapback, v6, type metadata accessor for LiteTapback);
  v7 = v6[*(v4 + 28)];
  selfCopy = self;
  sub_213FB5844(v6, type metadata accessor for LiteTapback);
  if (v7 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 - 1;
  }

  result = sub_2145924D8(v9);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v12 = result;

    return v12;
  }

  return result;
}

- (BlastDoorLiteTapback)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end