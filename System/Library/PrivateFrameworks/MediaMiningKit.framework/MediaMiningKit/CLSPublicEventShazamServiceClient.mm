@interface CLSPublicEventShazamServiceClient
- (CLSPublicEventShazamServiceClient)init;
- (id)publicEventQueryHelperWithTimeLocationTuples:(id)tuples queryRadius:(double)radius queryContext:(id)context simulatesTimeout:(BOOL)timeout;
- (id)queryContext;
- (void)serverVersionWithCompletionBlock:(id)block;
@end

@implementation CLSPublicEventShazamServiceClient

- (id)publicEventQueryHelperWithTimeLocationTuples:(id)tuples queryRadius:(double)radius queryContext:(id)context simulatesTimeout:(BOOL)timeout
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C90, &qword_22F992320);
  v9 = sub_22F989B90();
  v10 = objc_allocWithZone(type metadata accessor for PublicEventShazamQuery(0));
  swift_unknownObjectRetain();
  v11 = sub_22F91BCD8(v9, context, radius);
  type metadata accessor for PublicEventShazamQueryHelper(0);
  swift_allocObject();
  v12 = PublicEventShazamQueryHelper.init(with:isSimulatingTimeout:)(v11, timeout);
  swift_unknownObjectRelease();

  return v12;
}

- (id)queryContext
{
  v2 = [objc_allocWithZone(type metadata accessor for PublicEventShazamQueryContext(0)) init];

  return v2;
}

- (void)serverVersionWithCompletionBlock:(id)block
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1990, &qword_22F991DD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(block);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22F989BE0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22F9922D8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22F992200;
  v12[5] = v11;
  selfCopy = self;
  sub_22F91FC54(0, 0, v7, &unk_22F991EF0, v12);
}

- (CLSPublicEventShazamServiceClient)init
{
  sub_22F989A10();
  v4.receiver = self;
  v4.super_class = type metadata accessor for PublicEventShazamServiceClient(0);
  return [(CLSPublicEventShazamServiceClient *)&v4 init];
}

@end