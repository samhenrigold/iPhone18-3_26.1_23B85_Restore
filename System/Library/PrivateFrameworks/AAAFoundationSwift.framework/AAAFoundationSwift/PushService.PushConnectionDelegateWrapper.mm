@interface PushService.PushConnectionDelegateWrapper
- (_TtCC18AAAFoundationSwift11PushService29PushConnectionDelegateWrapper)init;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation PushService.PushConnectionDelegateWrapper

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  selfCopy = self;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  connectionCopy = connection;
  v10 = selfCopy;
  if (token)
  {
    tokenCopy = token;
    token = sub_1B99F3814();
    v13 = v12;
  }

  else
  {
    v13 = 0xF000000000000000;
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (v13 >> 60 == 15)
    {
    }

    else
    {
      v17 = sub_1B99F3EC4();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v15;
      v18[5] = token;
      v18[6] = v13;
      sub_1B99A940C(token, v13);
      sub_1B99C973C(0, 0, v8, &unk_1B99F5B40, v18);

      sub_1B99A92DC(token, v13);
    }
  }

  else
  {
    sub_1B99A92DC(token, v13);

    v16 = selfCopy;
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (message)
    {
      v11 = Strong;
      v12 = sub_1B99F3EC4();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v11;
      v13[5] = message;
      messageCopy = message;
      connectionCopy = connection;
      selfCopy = self;
      sub_1B99C973C(0, 0, v9, &unk_1B99F5B30, v13);
    }

    else
    {
    }
  }
}

- (_TtCC18AAAFoundationSwift11PushService29PushConnectionDelegateWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end