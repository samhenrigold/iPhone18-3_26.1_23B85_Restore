@interface PGGraphEntityTaggingServiceClient
- (PGGraphEntityTaggingServiceClient)init;
- (PGGraphEntityTaggingServiceClient)initWithSupportedTagsAsStrings:(id)strings log:(id)log error:(id *)error;
- (void)entityTagsForPersonWithPersonLocalIdentifier:(NSString *)identifier completionHandler:(id)handler;
@end

@implementation PGGraphEntityTaggingServiceClient

- (PGGraphEntityTaggingServiceClient)initWithSupportedTagsAsStrings:(id)strings log:(id)log error:(id *)error
{
  v6 = sub_22F741420();
  EntityTaggingServiceClient.init(supportedTagsAsStrings:log:)(v6, log);
  return result;
}

- (void)entityTagsForPersonWithPersonLocalIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22F741320();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22F7847D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22F783A70;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_22F33C54C(0, 0, v9, &unk_22F784250, v14);
}

- (PGGraphEntityTaggingServiceClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end