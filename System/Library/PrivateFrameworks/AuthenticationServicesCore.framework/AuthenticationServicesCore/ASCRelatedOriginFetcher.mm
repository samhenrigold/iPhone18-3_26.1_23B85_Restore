@interface ASCRelatedOriginFetcher
- (_TtC26AuthenticationServicesCore23ASCRelatedOriginFetcher)init;
- (void)isOrigin:(NSString *)origin relatedToRelyingPartyIdentifier:(NSString *)identifier completionHandler:(id)handler;
@end

@implementation ASCRelatedOriginFetcher

- (void)isOrigin:(NSString *)origin relatedToRelyingPartyIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = origin;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1C2170BE4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1C21810A8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1C21799C0;
  v16[5] = v15;
  originCopy = origin;
  identifierCopy = identifier;
  selfCopy = self;
  sub_1C2166D88(0, 0, v11, &unk_1C21768B0, v16);
}

- (_TtC26AuthenticationServicesCore23ASCRelatedOriginFetcher)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ASCRelatedOriginFetcher();
  return [(ASCRelatedOriginFetcher *)&v3 init];
}

@end