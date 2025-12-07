@interface PGGraphRebuilderCompatibility
+ (void)fullRebuildWithPhotoLibrary:(PHPhotoLibrary *)library completionHandler:(id)handler;
+ (void)incrementalRebuildWithPhotoLibrary:(PHPhotoLibrary *)library completionHandler:(id)handler;
- (PGGraphRebuilderCompatibility)init;
@end

@implementation PGGraphRebuilderCompatibility

+ (void)fullRebuildWithPhotoLibrary:(PHPhotoLibrary *)library completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = library;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22F741320();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22F786A58;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22F786A60;
  v14[5] = v13;
  libraryCopy = library;
  sub_22F33C54C(0, 0, v9, &unk_22F786A68, v14);
}

+ (void)incrementalRebuildWithPhotoLibrary:(PHPhotoLibrary *)library completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = library;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22F741320();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22F786A10;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22F783A70;
  v14[5] = v13;
  libraryCopy = library;
  sub_22F33C54C(0, 0, v9, &unk_22F784250, v14);
}

- (PGGraphRebuilderCompatibility)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGGraphRebuilderCompatibility *)&v3 init];
}

@end