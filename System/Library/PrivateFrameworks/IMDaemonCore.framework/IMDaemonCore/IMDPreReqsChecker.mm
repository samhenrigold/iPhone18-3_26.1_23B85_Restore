@interface IMDPreReqsChecker
- (_TtC12IMDaemonCore17IMDPreReqsChecker)init;
- (void)verifyAllPreReqsWithRequireEnablement:(BOOL)enablement completionHandler:(id)handler;
@end

@implementation IMDPreReqsChecker

- (void)verifyAllPreReqsWithRequireEnablement:(BOOL)enablement completionHandler:(id)handler
{
  v7 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = enablement;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_22B7DBA58();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B7FA7A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B7F8D08;
  v14[5] = v13;
  selfCopy = self;
  sub_22B7C0EFC(0, 0, v9, &unk_22B7F8D10, v14);
}

- (_TtC12IMDaemonCore17IMDPreReqsChecker)init
{
  sub_22B7DB288();
  sub_22B7DB2A8();
  v4.receiver = self;
  v4.super_class = type metadata accessor for IMDPreReqsChecker(0);
  return [(IMDPreReqsChecker *)&v4 init];
}

@end