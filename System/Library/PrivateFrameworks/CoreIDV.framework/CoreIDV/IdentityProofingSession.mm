@interface IdentityProofingSession
- (void)cancelProofingWithState:(NSString *)state country:(NSString *)country completionHandler:(id)handler;
@end

@implementation IdentityProofingSession

- (void)cancelProofingWithState:(NSString *)state country:(NSString *)country completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = state;
  v13[3] = country;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_21CD83D74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21CD8E270;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21CD8E390;
  v16[5] = v15;
  stateCopy = state;
  countryCopy = country;
  selfCopy = self;
  sub_21CD01F00(0, 0, v11, &unk_21CD8E280, v16);
}

@end