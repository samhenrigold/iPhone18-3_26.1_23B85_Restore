@interface AccountMetadata
- (void)profilePhotoWithCompletionHandler:(id)handler;
- (void)updateAccountMetadata;
@end

@implementation AccountMetadata

- (void)updateAccountMetadata
{
  selfCopy = self;
  sub_2296BF5C8();
}

- (void)profilePhotoWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22A4DD9DC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22A57E200;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22A57B590;
  v12[5] = v11;
  selfCopy = self;
  sub_229859F70(0, 0, v7, &unk_22A581CC0, v12);
}

@end