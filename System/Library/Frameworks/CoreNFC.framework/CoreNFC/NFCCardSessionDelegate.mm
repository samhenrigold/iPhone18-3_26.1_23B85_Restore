@interface NFCCardSessionDelegate
- (_TtC7CoreNFCP33_EFB2E886CAEE49EE896FB2304411A55622NFCCardSessionDelegate)init;
- (void)didConnectToReader;
- (void)didDetectField:(BOOL)field;
- (void)didDisconnectFromReader;
- (void)didInvalidate;
- (void)didReceiveAPDU:(id)u;
- (void)didStartSession:(id)session;
- (void)didTerminate:(id)terminate;
- (void)fieldChanged:(BOOL)changed;
- (void)hwStateDidChange:(unsigned int)change;
@end

@implementation NFCCardSessionDelegate

- (void)fieldChanged:(BOOL)changed
{
  selfCopy = self;
  sub_237296578(changed);
}

- (void)didReceiveAPDU:(id)u
{
  v5 = sub_23728DDC0(&qword_27DE98EF8, &qword_2372D49B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = v14 - v7;
  uCopy = u;
  selfCopy = self;
  v11 = sub_2372D0FC4();
  v13 = v12;

  v14[1] = v11;
  v14[2] = v13 | 0x1000000000000000;
  v15 = 0;
  sub_23728DFE4(v11, v13);
  sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
  sub_2372D1154();

  sub_23728E084(v11, v13);
  (*(v6 + 8))(v8, v5);
}

- (void)didConnectToReader
{
  selfCopy = self;
  sub_237296970();
}

- (void)didDisconnectFromReader
{
  selfCopy = self;
  sub_237296BE8();
}

- (void)didDetectField:(BOOL)field
{
  selfCopy = self;
  sub_237296E68(field);
}

- (void)didStartSession:(id)session
{
  selfCopy = self;
  sessionCopy = session;
  sub_237297108(session);
}

- (void)didInvalidate
{
  v3 = sub_23728DDC0(&qword_27DE98EF8, &qword_2372D49B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v8 - v5;
  v8 = xmmword_2372D4690;
  v9 = 0;
  selfCopy = self;
  sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
  sub_2372D1154();
  (*(v4 + 8))(v6, v3);
  sub_2372D1164();
}

- (void)didTerminate:(id)terminate
{
  terminateCopy = terminate;
  selfCopy = self;
  sub_2372974B8(terminateCopy);
}

- (void)hwStateDidChange:(unsigned int)change
{
  v5 = sub_23728DDC0(&qword_27DE98EF8, &qword_2372D49B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v10 - v7;
  if (change != 2)
  {
    v10 = xmmword_2372D4690;
    v11 = 0;
    selfCopy = self;
    sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
    sub_2372D1154();
    (*(v6 + 8))(v8, v5);
    sub_2372D1164();
  }
}

- (_TtC7CoreNFCP33_EFB2E886CAEE49EE896FB2304411A55622NFCCardSessionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end