@interface QLThumbnailExtensionGenerator
- (QLThumbnailExtensionGenerator)init;
- (void)generateThumbnailWithThumbnailRequest:(QLTGeneratorThumbnailRequest *)request item:(QLThumbnailItem *)item flavor:(int)flavor wantsLowQuality:(BOOL)quality generationData:(NSDictionary *)data completionHandler:(id)handler;
@end

@implementation QLThumbnailExtensionGenerator

- (void)generateThumbnailWithThumbnailRequest:(QLTGeneratorThumbnailRequest *)request item:(QLThumbnailItem *)item flavor:(int)flavor wantsLowQuality:(BOOL)quality generationData:(NSDictionary *)data completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53B0, &qword_261630E00);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  *(v19 + 16) = request;
  *(v19 + 24) = item;
  *(v19 + 32) = flavor;
  *(v19 + 36) = quality;
  *(v19 + 40) = data;
  *(v19 + 48) = v18;
  *(v19 + 56) = self;
  v20 = sub_26162B9BC();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_261630E10;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_261630E20;
  v22[5] = v21;
  requestCopy = request;
  itemCopy = item;
  dataCopy = data;
  selfCopy = self;
  sub_261614ED8(0, 0, v17, &unk_261630E30, v22);
}

- (QLThumbnailExtensionGenerator)init
{
  *(&self->super.isa + OBJC_IVAR___QLThumbnailExtensionGenerator_operation) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ThumbnailExtensionGenerator();
  return [(QLThumbnailExtensionGenerator *)&v3 init];
}

@end