@interface Client
- (void)messagesComposeDidFinishWithDidSend:(BOOL)send reply:(id)reply;
@end

@implementation Client

- (void)messagesComposeDidFinishWithDidSend:(BOOL)send reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526880, &qword_2410E60E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_2410DF350();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = self;
  *(v13 + 40) = send;
  *(v13 + 48) = sub_2410D9A08;
  *(v13 + 56) = v11;

  sub_2410D61B4(0, 0, v9, &unk_2410E6378, v13);
}

@end