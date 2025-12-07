@interface IMDScheduledMessageCoordinator
+ (void)notifyPeersWithScheduledMessageUpdate:(id)update scheduleState:(unint64_t)state;
- (IMDScheduledMessageCoordinator)init;
- (IMDScheduledMessageCoordinator)initWithServiceSession:(id)session;
- (id)description;
- (id)processMessageForSending:(id)sending toChat:(id)chat style:(unsigned __int8)style allowWatchdog:(BOOL)watchdog account:(id)account;
- (void)didSendMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account forceDate:(id)date itemIsComingFromStorage:(BOOL)storage;
- (void)didUpdateChatStatus:(int)status chat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d lastAddressedHandle:(id)handle lastAddressedSIMID:(id)iD handleInfo:(id)self0 account:(id)self1 category:(int64_t)self2 spamExtensionName:(id)self3 isBlackholed:(BOOL)self4;
- (void)handleMessageDidReplace:(id)replace newMessage:(id)message;
- (void)informOfCancelledMessageWithMessageGUID:(id)d success:(BOOL)success cancelType:(unint64_t)type error:(id)error;
- (void)removeFailedEditsFrom:(id)from;
- (void)serviceSession:(id)session willMoveChatToRecentlyDeleted:(id)deleted;
- (void)serviceSession:(id)session willRemoveChat:(id)chat;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)timerDidFire;
- (void)updateTimerForTimeInterval:(double)interval;
@end

@implementation IMDScheduledMessageCoordinator

- (IMDScheduledMessageCoordinator)initWithServiceSession:(id)session
{
  v4 = objc_opt_self();
  sessionCopy = session;
  sharedInstance = [v4 sharedInstance];
  sharedInstance2 = [objc_opt_self() sharedInstance];
  sharedInstance3 = [objc_opt_self() sharedInstance];
  v9 = objc_allocWithZone(IMDScheduledMessageCoordinator);
  v10 = sub_22B773558(sessionCopy, sharedInstance, sharedInstance2, sharedInstance3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (void)updateTimerForTimeInterval:(double)interval
{
  selfCopy = self;
  sub_22B773CF8(interval);
}

- (void)informOfCancelledMessageWithMessageGUID:(id)d success:(BOOL)success cancelType:(unint64_t)type error:(id)error
{
  v10 = sub_22B7DB6A8();
  v12 = v11;
  errorCopy = error;
  selfCopy = self;
  sub_22B77A808(v10, v12, success, type);

  v12, v14, v15, v16, v17, v18, v19, v20, v21, errorCopy;
}

- (void)removeFailedEditsFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_22B77B67C(fromCopy);
}

- (void)timerDidFire
{
  selfCopy = self;
  sub_22B775D70();
}

- (id)description
{
  selfCopy = self;
  sub_22B777350();
  v4 = v3;

  v5 = sub_22B7DB678();
  v4, v6, v7, v8, v9, v10, v11, v12, v14, v15;

  return v5;
}

- (IMDScheduledMessageCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleMessageDidReplace:(id)replace newMessage:(id)message
{
  replaceCopy = replace;
  messageCopy = message;
  selfCopy = self;
  sub_22B778F38(replaceCopy, messageCopy);
}

+ (void)notifyPeersWithScheduledMessageUpdate:(id)update scheduleState:(unint64_t)state
{
  v5 = sub_22B7DB6A8();
  v7 = v6;
  sub_22B77BDB8(v5, v6, state);

  v7, v8, v9, v10, v11, v12, v13, v14, v16, v17;
}

- (void)didSendMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account forceDate:(id)date itemIsComingFromStorage:(BOOL)storage
{
  styleCopy = style;
  v13 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v31 - v14;
  v16 = sub_22B7DB6A8();
  v18 = v17;
  if (date)
  {
    sub_22B7DA928();
    v19 = sub_22B7DA968();
    (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
  }

  else
  {
    v20 = sub_22B7DA968();
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  }

  messageCopy = message;
  accountCopy = account;
  selfCopy = self;
  sub_22B77C7AC(messageCopy, v16, v18, styleCopy);

  v18, v24, v25, v26, v27, v28, v29, v30, v31[0], v31[1];
  sub_22B4D0D64(v15, &unk_27D8CF790, &qword_22B7F9578);
}

- (void)didUpdateChatStatus:(int)status chat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d lastAddressedHandle:(id)handle lastAddressedSIMID:(id)iD handleInfo:(id)self0 account:(id)self1 category:(int64_t)self2 spamExtensionName:(id)self3 isBlackholed:(BOOL)self4
{
  v17 = sub_22B7DB6A8();
  v19 = v18;
  accountCopy = account;
  selfCopy = self;
  sub_22B77CCA4(status, v17, v19, style);

  v19, v22, v23, v24, v25, v26, v27, v28, iD, info;
}

- (id)processMessageForSending:(id)sending toChat:(id)chat style:(unsigned __int8)style allowWatchdog:(BOOL)watchdog account:(id)account
{
  styleCopy = style;
  v11 = sub_22B7DB6A8();
  v13 = v12;
  sendingCopy = sending;
  accountCopy = account;
  selfCopy = self;
  sub_22B77CF84(sendingCopy, v11, &v13->super, styleCopy);
  v18 = v17;

  v13, v19, v20, v21, v22, v23, v24, v25, v27, v28;

  return v18;
}

- (void)serviceSession:(id)session willRemoveChat:(id)chat
{
  sessionCopy = session;
  chatCopy = chat;
  selfCopy = self;
  sub_22B77E01C(chatCopy, "%@ Handling chat %@ being removed.");
}

- (void)serviceSession:(id)session willMoveChatToRecentlyDeleted:(id)deleted
{
  sessionCopy = session;
  deletedCopy = deleted;
  selfCopy = self;
  sub_22B77E01C(deletedCopy, "%@ Handling chat %@ being moved to recently deleted.");
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  selfCopy = self;
  sub_22B779CC0();
}

@end