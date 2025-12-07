@interface AppStateControllerSessionObserver
- (void)controller:(id)controller didUpdateDownlinkAudioPower:(float)power;
- (void)manager:(id)manager didReceiveIncomingPendingSession:(id)session;
- (void)manager:(id)manager didUpdateActiveSession:(id)session;
- (void)serverDisconnectedForDropInCenter:(id)center;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateParticipants:(id)participants;
- (void)session:(id)session didUpdateSessionEndDate:(id)date;
- (void)session:(id)session didUpdateState:(unint64_t)state reason:(unint64_t)reason;
@end

@implementation AppStateControllerSessionObserver

- (void)manager:(id)manager didReceiveIncomingPendingSession:(id)session
{
  managerCopy = manager;
  sessionCopy = session;
  selfCopy = self;
  sub_249DC9F74(selfCopy, sessionCopy, &unk_285D022C8, &unk_249DDF800);
}

- (void)manager:(id)manager didUpdateActiveSession:(id)session
{
  managerCopy = manager;
  sessionCopy = session;
  selfCopy = self;
  sub_249DC9F74(selfCopy, sessionCopy, &unk_285D022A0, &unk_249DDF7F0);
}

- (void)session:(id)session didUpdateState:(unint64_t)state reason:(unint64_t)reason
{
  sessionCopy = session;
  selfCopy = self;
  sub_249DCA2D0(sessionCopy, state, reason);
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_249DCA62C(sessionCopy, errorCopy);
}

- (void)session:(id)session didUpdateParticipants:(id)participants
{
  sub_249DC96C0();
  v6 = sub_249DDC908();
  sessionCopy = session;
  selfCopy = self;
  sub_249DCA980(sessionCopy, v6);
}

- (void)session:(id)session didUpdateSessionEndDate:(id)date
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21578, &qword_249DDF7A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  if (date)
  {
    sub_249DDC648();
    v10 = sub_249DDC668();
    v11 = 0;
  }

  else
  {
    v10 = sub_249DDC668();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v11, 1, v10);
  sessionCopy = session;
  selfCopy = self;
  sub_249DCAD38(sessionCopy, v9);

  sub_249DCBAB4(v9);
}

- (void)serverDisconnectedForDropInCenter:(id)center
{
  centerCopy = center;
  selfCopy = self;
  sub_249DCB2A0();
}

- (void)controller:(id)controller didUpdateDownlinkAudioPower:(float)power
{
  controllerCopy = controller;
  selfCopy = self;
  sub_249DCB4E8(power);
}

@end