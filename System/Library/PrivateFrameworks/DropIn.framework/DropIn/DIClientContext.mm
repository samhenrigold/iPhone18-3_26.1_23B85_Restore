@interface DIClientContext
- (BOOL)isEqual:(id)equal;
- (DIClientContext)initWithHomeIdentifier:(id)identifier;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIClientContext

- (DIClientContext)initWithHomeIdentifier:(id)identifier
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21670, &qword_249DE0058);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  if (identifier)
  {
    sub_249DDC688();
    v7 = sub_249DDC6A8();
    v8 = 0;
  }

  else
  {
    v7 = sub_249DDC6A8();
    v8 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v8, 1, v7);
  return ClientContext.init(homeIdentifier:)(v6);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_249DDCBC8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = ClientContext.isEqual(_:)(v8);

  sub_249DBBB44(v8, &qword_27EF21680, "X_");
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  ClientContext.description.getter();

  v3 = sub_249DDC848();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ClientContext.encode(with:)(coderCopy);
}

@end