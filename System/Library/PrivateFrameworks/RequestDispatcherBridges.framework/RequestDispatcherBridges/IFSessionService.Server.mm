@interface IFSessionService.Server
- (void)currentSessionIDForUserID:(id)d reply:(id)reply;
- (void)dealloc;
- (void)sendWithMessageData:(id)data with:(id)with;
@end

@implementation IFSessionService.Server

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;

  sub_223657B98(selfCopy);

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(IFSessionService.Server *)&v5 dealloc];
}

- (void)sendWithMessageData:(id)data with:(id)with
{
  v6 = _Block_copy(with);
  dataCopy = data;
  selfCopy = self;
  v8 = sub_223727358();
  v10 = v9;

  _Block_copy(v6);
  sub_223660770(v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_223661270(v8, v10);
}

- (void)currentSessionIDForUserID:(id)d reply:(id)reply
{
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(reply);
  sub_2237273E8();
  _Block_copy(v11);
  selfCopy = self;
  sub_223660A08(v10, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

@end