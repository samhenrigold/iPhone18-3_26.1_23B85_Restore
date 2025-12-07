@interface IMDBackgroundMessageProcessingController
- (id)_scheduler;
- (id)taskIdentifierForExecutorWithGroupName:(id)name lane:(unint64_t)lane;
- (void)addPersistentTaskExecutorMonitor:(id)monitor withID:(id)d;
- (void)removePersistentTaskExecutorMonitorWithID:(id)d;
- (void)resumeExecutorWithGroupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler;
- (void)runExecutorWithTaskLimit:(int64_t)limit groupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler;
@end

@implementation IMDBackgroundMessageProcessingController

- (id)_scheduler
{
  v2 = sub_22B677814();
  if (v2)
  {
    v2 = sub_22B6775C8(v2, v3);
    if (v2)
    {
      v2 = [sub_22B6775C8(v2 v4)];
    }
  }

  return v2;
}

- (void)resumeExecutorWithGroupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler
{
  v15[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

  if (isInternalInstall)
  {
    v12 = [(IMDBackgroundMessageProcessingController *)self taskIdentifierForExecutorWithGroupName:nameCopy lane:lane];
    if (v12)
    {
      _scheduler = [(IMDBackgroundMessageProcessingController *)self _scheduler];
      if (_scheduler)
      {
        v15[0] = v12;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
        [_scheduler forceRunActivities:v14];
      }

      handlerCopy[2](handlerCopy);
    }

    else
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (id)taskIdentifierForExecutorWithGroupName:(id)name lane:(unint64_t)lane
{
  v6 = sub_22B7DB6A8();
  v8 = v7;
  selfCopy = self;
  v10 = sub_22B75F538(v6, v8, lane);

  v8, v11, v12, v13, v14, v15, v16, v17, v27, v29;
  if (v10)
  {
    v18 = v10[32];

    v10 = sub_22B7DB678();
    v18, v19, v20, v21, v22, v23, v24, v25, v28, v30;
  }

  return v10;
}

- (void)runExecutorWithTaskLimit:(int64_t)limit groupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler
{
  v10 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v29 - v11;
  v13 = _Block_copy(handler);
  v14 = sub_22B7DB6A8();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  selfCopy = self;
  _Block_copy(v13);
  v19 = sub_22B75F538(v14, v16, lane);
  v16, v20, v21, v22, v23, v24, v25, v26, v29[0], v29[1];
  if (v19)
  {
    _Block_release(v13);
    v27 = sub_22B7DBA58();
    (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = sub_22B74C9C0;
    v28[5] = v17;
    v28[6] = v19;
    v28[7] = limit;

    sub_22B77E3D4(0, 0, v12, &unk_22B7FB6C0, v28);
  }

  else
  {
    (*(v13 + 2))(v13, 1);

    _Block_release(v13);
  }
}

- (void)addPersistentTaskExecutorMonitor:(id)monitor withID:(id)d
{
  v6 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_22B7DB6A8();
  v11 = v10;
  v12 = sub_22B7DBA58();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = monitor;
  v13[6] = v9;
  v13[7] = v11;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22B77E3D4(0, 0, v8, &unk_22B7FB5F0, v13);
}

- (void)removePersistentTaskExecutorMonitorWithID:(id)d
{
  v4 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_22B7DB6A8();
  v9 = v8;
  v10 = sub_22B7DBA58();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = v7;
  v11[6] = v9;
  selfCopy = self;
  sub_22B77E3D4(0, 0, v6, &unk_22B7FB5D8, v11);
}

@end