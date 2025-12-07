@interface PushService.PushConnectionDelegateWrapper
- (_TtCC18AppleIDSetupDaemon11PushService29PushConnectionDelegateWrapper)init;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation PushService.PushConnectionDelegateWrapper

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  selfCopy = self;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  connectionCopy = connection;
  v10 = selfCopy;
  if (token)
  {
    tokenCopy = token;
    token = sub_2408D3410();
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
      v17 = sub_2408D4E60();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v15;
      v18[5] = token;
      v18[6] = v13;
      sub_24087827C(token, v13);
      sub_24083AB60(0, 0, v8, &unk_2408D8598, v18);

      sub_240875A6C(token, v13);
    }
  }

  else
  {
    sub_240875A6C(token, v13);

    v16 = selfCopy;
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (message)
    {
      v11 = Strong;
      v12 = sub_2408D4E60();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v11;
      v13[5] = message;
      messageCopy = message;
      connectionCopy = connection;
      selfCopy = self;
      sub_24083AB60(0, 0, v9, &unk_2408D8588, v13);
    }

    else
    {
    }
  }
}

- (_TtCC18AppleIDSetupDaemon11PushService29PushConnectionDelegateWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end