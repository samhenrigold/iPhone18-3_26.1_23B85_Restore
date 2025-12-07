@interface ContextualSuggestionService
- (void)updateWith:(NSDictionary *)with completionHandler:(id)handler;
@end

@implementation ContextualSuggestionService

- (void)updateWith:(NSDictionary *)with completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = with;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2441D8D9C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2441DBCD0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2441DBCE0;
  v14[5] = v13;
  withCopy = with;

  sub_2441AD2EC(0, 0, v9, &unk_2441DBCF0, v14);
}

@end