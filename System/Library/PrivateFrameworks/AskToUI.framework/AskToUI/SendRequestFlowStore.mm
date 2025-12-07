@interface SendRequestFlowStore
- (_TtC7AskToUI20SendRequestFlowStore)init;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)sendBeginMessageWithMessageComposeRequest:(id)request reply:(id)reply;
@end

@implementation SendRequestFlowStore

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_2411ABDD8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_2411ABDA8();
  selfCopy = self;
  v11 = sub_2411ABD98();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = result;
  v12[5] = selfCopy;
  sub_241192B80(0, 0, v8, &unk_2411ACDF0, v12);
}

- (_TtC7AskToUI20SendRequestFlowStore)init
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  sub_2411ABDA8();
  sub_2411ABD98();
  v10 = MEMORY[0x277D85700];
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_2411ABDD8();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  controllerCopy = controller;
  contactCopy = contact;
  selfCopy = self;
  v15 = controllerCopy;
  v16 = contactCopy;
  v17 = sub_2411ABD98();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v10;
  v18[4] = selfCopy;
  v18[5] = v15;
  v18[6] = contact;
  sub_241192B80(0, 0, v9, &unk_2411AD2F8, v18);
}

- (void)sendBeginMessageWithMessageComposeRequest:(id)request reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_2411ABDD8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_2411ABDA8();
  requestCopy = request;
  selfCopy = self;
  v15 = requestCopy;

  v16 = sub_2411ABD98();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = selfCopy;
  v17[5] = sub_241191524;
  v17[6] = v11;
  v17[7] = v15;
  sub_241192B80(0, 0, v9, &unk_2411AD1B0, v17);
}

@end