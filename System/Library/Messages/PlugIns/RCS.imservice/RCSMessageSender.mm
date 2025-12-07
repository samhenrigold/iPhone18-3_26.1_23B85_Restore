@interface RCSMessageSender
- (NSArray)recipients;
- (RCSMessageSender)init;
- (RCSMessageSender)initWithSession:(id)session message:(id)message chat:(id)chat style:(unsigned __int8)style recipients:(id)recipients context:(id)context;
- (void)buildWith:(id)with parts:(id)parts completion:(id)completion;
- (void)deriveConfiguration;
- (void)prepareWithCompletion:(id)completion;
- (void)sendWithCompletion:(id)completion;
- (void)setContext:(id)context;
@end

@implementation RCSMessageSender

- (NSArray)recipients
{
  v2 = *(self + OBJC_IVAR___RCSMessageSender_recipients);

  sub_388C8(&qword_128568, &qword_F3950);
  v3 = sub_F09EC();
  v2, v4, v5, v6, v7, v8, v9, v10;

  return v3;
}

- (void)setContext:(id)context
{
  v4 = *(self + OBJC_IVAR___RCSMessageSender_context);
  *(self + OBJC_IVAR___RCSMessageSender_context) = context;
  contextCopy = context;
}

- (RCSMessageSender)initWithSession:(id)session message:(id)message chat:(id)chat style:(unsigned __int8)style recipients:(id)recipients context:(id)context
{
  sub_388C8(&qword_128568, &qword_F3950);
  v13 = sub_F09FC();
  return sub_ACDD0(session, message, chat, style, v13, context);
}

- (void)deriveConfiguration
{
  selfCopy = self;
  session = [(RCSMessageSender *)selfCopy session];
  chat = [(RCSMessageSender *)selfCopy chat];
  v4 = [(IMDTelephonyServiceSession *)session isGroupMessagingEnabledFor:chat];

  [(RCSMessageSender *)selfCopy setSendAsGroupMessage:([(RCSMessageSender *)selfCopy style]!= 45) & v4];
}

- (void)prepareWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_AD028(sub_B1224, v5);
}

- (void)buildWith:(id)with parts:(id)parts completion:(id)completion
{
  v8 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_F0B1C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = with;
  v14[6] = sub_B12B4;
  v14[7] = v12;
  withCopy = with;
  selfCopy = self;
  sub_AE864(0, 0, v10, &unk_F43E8, v14);
}

- (void)sendWithCompletion:(id)completion
{
  v5 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_F0B1C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_B0DAC;
  v11[6] = v9;
  selfCopy = self;
  sub_3CC0C(0, 0, v7, &unk_F4390, v11);
}

- (RCSMessageSender)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end