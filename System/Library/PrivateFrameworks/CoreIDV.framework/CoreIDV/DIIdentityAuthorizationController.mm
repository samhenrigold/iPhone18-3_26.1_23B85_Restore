@interface DIIdentityAuthorizationController
- (void)cancelRequest;
- (void)checkCanRequestDocument:(DIIdentityDocumentDescriptor *)document completion:(id)completion;
- (void)requestDocument:(DIIdentityRequest *)document completion:(id)completion;
@end

@implementation DIIdentityAuthorizationController

- (void)checkCanRequestDocument:(DIIdentityDocumentDescriptor *)document completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = document;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21CD83D74();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21CD88E68;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21CD88E70;
  v14[5] = v13;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21CD01F00(0, 0, v9, &unk_21CD88E78, v14);
}

- (void)requestDocument:(DIIdentityRequest *)document completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = document;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21CD83D74();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21CD88E30;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21CD8E390;
  v14[5] = v13;
  documentCopy = document;
  selfCopy = self;
  sub_21CD01F00(0, 0, v9, &unk_21CD8E280, v14);
}

- (void)cancelRequest
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_21CD83D74();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_21CD5C550(0, 0, v5, &unk_21CD88E10, v7);
}

@end