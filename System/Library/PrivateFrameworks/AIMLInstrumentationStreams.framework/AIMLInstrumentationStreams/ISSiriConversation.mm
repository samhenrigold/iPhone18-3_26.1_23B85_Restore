@interface ISSiriConversation
- (ISSiriConversation)init;
- (ISSiriConversation)initWithTurns:(id)turns;
- (NSArray)turns;
- (NSDate)date;
- (NSUUID)firstTurnId;
- (double)timestamp;
@end

@implementation ISSiriConversation

- (NSArray)turns
{
  type metadata accessor for SiriTurn();

  v2 = sub_23C871894();

  return v2;
}

- (double)timestamp
{
  v2 = *(self + OBJC_IVAR___ISSiriConversation_turns);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  selfCopy = self;
  v7 = sub_23C871C34();
  self = selfCopy;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_9:
    selfCopy2 = self;
    v9 = MEMORY[0x23EED7610](0, v2);

    v3 = v9;
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v2 + 32);
LABEL_6:
    v4 = *&v3[OBJC_IVAR___ISEventGraph_timestamp];

    return v4;
  }

  __break(1u);
  return result;
}

- (NSDate)date
{
  v3 = sub_23C870AE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(self + OBJC_IVAR___ISSiriConversation_turns);
  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_11:
    selfCopy = self;
    v11 = MEMORY[0x23EED7610](0, v7);
    goto LABEL_6;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v9 = *(v7 + 32);
  selfCopy2 = self;
  v11 = v9;
LABEL_6:

  sub_23C870A54();
  v12 = sub_23C870A84();
  (*(v4 + 8))(v6, v3);

  return v12;
}

- (NSUUID)firstTurnId
{
  v3 = sub_23C870B74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(self + OBJC_IVAR___ISSiriConversation_turns);
  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_12:
    selfCopy = self;
    v11 = MEMORY[0x23EED7610](0, v7);
    goto LABEL_6;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v7 + 32);
  selfCopy2 = self;
  v11 = v9;
LABEL_6:
  v12 = v11;
  result = EventGraph.uei.getter();
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = sub_23C62FC3C();

  sub_23C870E24();

  v14 = sub_23C870B24();
  (*(v4 + 8))(v6, v3);

  return v14;
}

- (ISSiriConversation)initWithTurns:(id)turns
{
  type metadata accessor for SiriTurn();
  sub_23C8718A4();

  v7 = sub_23C5A3EBC(v4);
  sub_23C63084C(&v7);

  *(self + OBJC_IVAR___ISSiriConversation_turns) = v7;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SiriConversation();
  return [(ISSiriConversation *)&v6 init];
}

- (ISSiriConversation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end