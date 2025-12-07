@interface PommesResponse
- (NSString)description;
- (_TtC21SiriInformationSearch14PommesResponse)init;
- (_TtC21SiriInformationSearch14PommesResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PommesResponse

- (_TtC21SiriInformationSearch14PommesResponse)initWithCoder:(id)coder
{
  v4 = type metadata accessor for PommesResponse.Builder(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  ObjectType = swift_getObjectType();
  PommesResponse.Builder.init()(v9);
  coderCopy = coder;
  closure #1 in PommesResponse.init(coder:)(v9, coderCopy);
  outlined init with copy of PommesResponse.Builder(v9, v7);
  v12 = (*(ObjectType + 360))(v7);

  outlined destroy of PommesResponse.Builder(v9, type metadata accessor for PommesResponse.Builder);
  swift_deallocPartialClassInstance();
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PommesResponse.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  v3 = PommesResponse.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1E1299430](v3, v5);

  return v6;
}

- (_TtC21SiriInformationSearch14PommesResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end