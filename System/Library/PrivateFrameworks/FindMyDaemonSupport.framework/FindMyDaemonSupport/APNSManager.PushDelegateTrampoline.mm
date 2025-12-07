@interface APNSManager.PushDelegateTrampoline
- (_TtCC19FindMyDaemonSupport11APNSManagerP33_69672C9E20C2D053F65B88CE8A65B96022PushDelegateTrampoline)init;
- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures;
- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forInfo:(id)info;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)connectionDidReconnect:(id)reconnect;
@end

@implementation APNSManager.PushDelegateTrampoline

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  selfCopy = self;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  connectionCopy = connection;
  v10 = selfCopy;
  if (token)
  {
    tokenCopy = token;
    token = sub_24AE83E40();
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
      v17 = sub_24AE84120();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v15;
      v18[5] = token;
      v18[6] = v13;
      sub_24AE60350(token, v13);
      sub_24AE6E000(0, 0, v8, &unk_24AE86408, v18);

      sub_24AE60200(token, v13);
    }
  }

  else
  {
    sub_24AE60200(token, v13);

    v16 = selfCopy;
  }
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  tokenCopy = token;
  if (token)
  {
    connectionCopy = connection;
    topicCopy = topic;
    identifierCopy = identifier;
    selfCopy = self;
    v14 = tokenCopy;
    tokenCopy = sub_24AE83E40();
    v16 = v15;

    if (topic)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    v19 = 0;
    if (identifier)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  connectionCopy2 = connection;
  topicCopy2 = topic;
  identifierCopy2 = identifier;
  selfCopy2 = self;
  v16 = 0xF000000000000000;
  if (!topic)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = sub_24AE83FB0();
  v19 = v18;

  if (identifier)
  {
LABEL_4:
    v20 = sub_24AE83FB0();
    v22 = v21;

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
  v22 = 0;
LABEL_8:
  sub_24AE5FA1C(tokenCopy, v16, v17, v19, v20, v22);

  sub_24AE60200(tokenCopy, v16);
}

- (void)connection:(id)connection didReceiveToken:(id)token forInfo:(id)info
{
  if (token)
  {
    connectionCopy = connection;
    infoCopy = info;
    selfCopy = self;
    tokenCopy = token;
    v12 = sub_24AE83E40();
    v14 = v13;
  }

  else
  {
    connectionCopy2 = connection;
    infoCopy2 = info;
    selfCopy2 = self;
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  sub_24AE5FBD0(v12, v14, info);
  sub_24AE60200(v12, v14);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_24AE5FD48(message);
}

- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_24AE84120();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v9;
    *(v11 + 40) = status;
    sub_24AE6E000(0, 0, v7, &unk_24AE863A0, v11);
  }
}

- (void)connectionDidReconnect:(id)reconnect
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_24AE84120();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    sub_24AE6E000(0, 0, v5, &unk_24AE86378, v9);
  }
}

- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures
{
  if (failures)
  {
    sub_24AE5FF5C(0, &unk_27EFBE828, 0x277CEEA08);
    sub_24AE840A0();
  }

  connectionCopy = connection;
  selfCopy = self;
  sub_24AE5FE6C("NOT IMPLEMENTED: channelSubscriptionsFailedWith:");
}

- (_TtCC19FindMyDaemonSupport11APNSManagerP33_69672C9E20C2D053F65B88CE8A65B96022PushDelegateTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end