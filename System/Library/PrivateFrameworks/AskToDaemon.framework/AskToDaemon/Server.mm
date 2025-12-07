@interface Server
- (void)canAskTo:(signed __int16)to requiredCapabilities:(id)capabilities reply:(id)reply;
- (void)canManageContactsFor:(int64_t)for reply:(id)reply;
- (void)deliverResponseWithResponse:(id)response toClientWithBundleIdentifier:(id)identifier reply:(id)reply;
- (void)knownHandlesFrom:(id)from reply:(id)reply;
- (void)messagesComposeDidFinishWithDidSend:(BOOL)send reply:(id)reply;
- (void)payloadForSendRequestWithQuestion:(id)question recipientGroup:(signed __int16)group clientPayload:(id)payload shouldValidateSendDestinations:(BOOL)destinations reply:(id)reply;
- (void)screenTimeDidReceiveAnswer:(id)answer forRequestWithID:(id)d responderDSID:(id)iD reply:(id)reply;
- (void)sendResponse:(id)response to:(id)to requestMessageGUID:(id)d reply:(id)reply;
- (void)updateMessageBubble:(id)bubble responderHandle:(id)handle answerChoice:(id)choice reply:(id)reply;
@end

@implementation Server

- (void)knownHandlesFrom:(id)from reply:(id)reply
{
  v5 = _Block_copy(reply);
  sub_241165928();
  sub_2411356E8(&qword_27E531380, MEMORY[0x277CEEC50], MEMORY[0x277D85378]);
  v6 = sub_241165FD8();
  _Block_copy(v5);

  sub_241133EB0(v6, self, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)sendResponse:(id)response to:(id)to requestMessageGUID:(id)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = _Block_copy(reply);
  v13 = sub_241165EF8();
  v14 = sub_241165DD8();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v18 = sub_241165FA8();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = self;
  v19[5] = response;
  v19[6] = v13;
  v19[7] = v14;
  v19[8] = v16;
  v19[9] = sub_241135C30;
  v19[10] = v17;
  responseCopy = response;

  sub_24113C95C(0, 0, v11, &unk_241168560, v19);
}

- (void)screenTimeDidReceiveAnswer:(id)answer forRequestWithID:(id)d responderDSID:(id)iD reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v12 = _Block_copy(reply);
  v13 = sub_241165DD8();
  v15 = v14;
  v16 = sub_241165DD8();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v20 = sub_241165FA8();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = self;
  v21[5] = answer;
  v21[6] = v13;
  v21[7] = v15;
  v21[8] = v16;
  v21[9] = v18;
  v21[10] = sub_241135C30;
  v21[11] = v19;
  answerCopy = answer;

  sub_24113C95C(0, 0, v11, &unk_241168548, v21);
}

- (void)payloadForSendRequestWithQuestion:(id)question recipientGroup:(signed __int16)group clientPayload:(id)payload shouldValidateSendDestinations:(BOOL)destinations reply:(id)reply
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v16 = _Block_copy(reply);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = sub_241165FA8();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = self;
  *(v19 + 40) = question;
  *(v19 + 48) = group;
  *(v19 + 56) = payload;
  *(v19 + 64) = destinations;
  *(v19 + 72) = sub_241135070;
  *(v19 + 80) = v17;
  questionCopy = question;
  payloadCopy = payload;

  sub_24113C95C(0, 0, v15, &unk_241168500, v19);
}

- (void)updateMessageBubble:(id)bubble responderHandle:(id)handle answerChoice:(id)choice reply:(id)reply
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = _Block_copy(reply);
  v14 = sub_241165DD8();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = sub_241165FA8();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = self;
  v19[5] = bubble;
  v19[6] = v14;
  v19[7] = v16;
  v19[8] = choice;
  v19[9] = sub_241135C30;
  v19[10] = v17;
  bubbleCopy = bubble;
  choiceCopy = choice;

  sub_24113C95C(0, 0, v12, &unk_241168468, v19);
}

- (void)canManageContactsFor:(int64_t)for reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_241165FA8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = for;
  v13[6] = sub_241135C1C;
  v13[7] = v11;

  sub_24113C95C(0, 0, v9, &unk_241168430, v13);
}

- (void)canAskTo:(signed __int16)to requiredCapabilities:(id)capabilities reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = _Block_copy(reply);
  if (capabilities)
  {
    capabilities = sub_241165FD8();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = sub_241165FA8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = self;
  *(v15 + 40) = to;
  *(v15 + 48) = capabilities;
  *(v15 + 56) = sub_2411323C4;
  *(v15 + 64) = v13;

  sub_24113C95C(0, 0, v11, &unk_241168410, v15);
}

- (void)deliverResponseWithResponse:(id)response toClientWithBundleIdentifier:(id)identifier reply:(id)reply
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(reply);
  v12 = sub_241165DD8();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = sub_241165FA8();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = self;
  v17[5] = response;
  v17[6] = v12;
  v17[7] = v14;
  v17[8] = sub_241132210;
  v17[9] = v15;
  responseCopy = response;

  sub_24113C95C(0, 0, v10, &unk_2411683D8, v17);
}

- (void)messagesComposeDidFinishWithDidSend:(BOOL)send reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_241165FA8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = self;
  *(v13 + 40) = send;
  *(v13 + 48) = sub_241135C30;
  *(v13 + 56) = v11;

  sub_24113C95C(0, 0, v9, &unk_241168388, v13);
}

@end