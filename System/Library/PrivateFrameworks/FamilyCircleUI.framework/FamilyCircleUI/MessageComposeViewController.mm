@interface MessageComposeViewController
- (_TtC14FamilyCircleUI28MessageComposeViewController)initWithCoder:(id)coder;
- (_TtC14FamilyCircleUI28MessageComposeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)messageComposeViewController:(MFMessageComposeViewController *)controller shouldSendMessage:(NSString *)message toRecipients:(NSArray *)recipients completion:(id)completion;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
@end

@implementation MessageComposeViewController

- (_TtC14FamilyCircleUI28MessageComposeViewController)initWithCoder:(id)coder
{
  v3 = type metadata accessor for MessageComposeViewController();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_finalRecipients] = MEMORY[0x277D84F90];
  v5 = &v4[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_onDoneSharing];
  *v5 = nullsub_1;
  v5[1] = 0;
  v6 = &v4[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_onCancel];
  *v6 = nullsub_1;
  v6[1] = 0;
  v9.receiver = v4;
  v9.super_class = v3;
  v7 = [(MessageComposeViewController *)&v9 initWithNibName:0 bundle:0];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller shouldSendMessage:(NSString *)message toRecipients:(NSArray *)recipients completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = controller;
  v15[3] = message;
  v15[4] = recipients;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_21BE28DAC();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_21BE4B5B8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_21BE32A10;
  v18[5] = v17;
  controllerCopy = controller;
  messageCopy = message;
  recipientsCopy = recipients;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v13, &unk_21BE391F0, v18);
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21BDA4064(result);
}

- (_TtC14FamilyCircleUI28MessageComposeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end