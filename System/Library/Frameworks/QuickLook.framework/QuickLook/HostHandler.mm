@interface HostHandler
- (void)contentEditCompletedWithItemWithSessionUUID:(id)d qlItem:(id)item;
- (void)contentEditCompletedWithSessionUUID:(id)d contentURL:(id)l;
- (void)didRestoreWithItems:(id)items sessionUUID:(id)d;
- (void)didRestoreWithSandboxWrapperData:(id)data error:(id)error sessionUUID:(id)d;
- (void)launchFailedWithSessionUUID:(id)d error:(id)error;
- (void)previewSceneMovedWithSessionUUID:(id)d sceneIdentifier:(id)identifier;
@end

@implementation HostHandler

- (void)launchFailedWithSessionUUID:(id)d error:(id)error
{
  v5 = sub_23A7EDFE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7EDFC4();
  errorCopy = error;

  sub_23A7B5798(v8, errorCopy);

  (*(v6 + 8))(v8, v5);
}

- (void)contentEditCompletedWithSessionUUID:(id)d contentURL:(id)l
{
  v4 = sub_23A7EDF64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23A7EDFE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7EDFC4();
  sub_23A7EDF44();
  sub_23A7B6550(v11, v7);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

- (void)contentEditCompletedWithItemWithSessionUUID:(id)d qlItem:(id)item
{
  v4 = sub_23A7EDFE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7EDFC4();
  (*(v5 + 8))(v7, v4);
}

- (void)previewSceneMovedWithSessionUUID:(id)d sceneIdentifier:(id)identifier
{
  v4 = sub_23A7EDFE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7EDFC4();
  sub_23A7B6A28(v7);
  (*(v5 + 8))(v7, v4);
}

- (void)didRestoreWithItems:(id)items sessionUUID:(id)d
{
  v4 = sub_23A7EDFE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
  v8 = sub_23A7EE9A4();
  sub_23A7EDFC4();

  sub_23A7B6CE8(v8, v7);

  (*(v5 + 8))(v7, v4);
}

- (void)didRestoreWithSandboxWrapperData:(id)data error:(id)error sessionUUID:(id)d
{
  v6 = sub_23A7EDFE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_23A7EE9A4();
  sub_23A7EDFC4();

  errorCopy = error;
  sub_23A7B7410(v10, error, v9);

  (*(v7 + 8))(v9, v6);
}

@end