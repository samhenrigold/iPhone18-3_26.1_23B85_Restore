@interface ISSiriTurn
+ (id)constructWithEventGraph:(id)graph;
- (NSUUID)previousTurnId;
- (NSUUID)turnId;
- (double)timeIntervalSince1970Nonnull;
@end

@implementation ISSiriTurn

+ (id)constructWithEventGraph:(id)graph
{
  v4 = objc_allocWithZone(type metadata accessor for SiriTurn());
  v5 = SiriTurn.init(eventGraph:)(graph);

  return v5;
}

- (NSUUID)turnId
{
  v3 = sub_23C870B74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  result = EventGraph.uei.getter();
  if (result)
  {
    v9 = sub_23C62FC3C();

    sub_23C870E24();

    v10 = sub_23C870B24();
    (*(v4 + 8))(v6, v3);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (double)timeIntervalSince1970Nonnull
{
  selfCopy = self;
  v3 = sub_23C654940();
  v5 = v4;

  result = *&v3;
  if (v5)
  {
    return 0.0;
  }

  return result;
}

- (NSUUID)previousTurnId
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  result = EventGraph.uei.getter();
  if (result)
  {
    ComponentGroup<>.previousTurnId.getter(v5);

    v8 = sub_23C870B74();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v5, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = sub_23C870B24();
      (*(v9 + 8))(v5, v8);
      v11 = v12;
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end