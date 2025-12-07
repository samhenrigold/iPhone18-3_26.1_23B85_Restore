@interface ComposeMailView.Coordinator
- (_TtCV37com_apple_CloudSharingUI_CloudSharing15ComposeMailView11Coordinator)init;
- (void)mailComposeController:(MFMailComposeViewController *)controller shouldSendMail:(NSString *)mail toRecipients:(NSArray *)recipients completion:(id)completion;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
@end

@implementation ComposeMailView.Coordinator

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_1000220E8(result, error);
}

- (void)mailComposeController:(MFMailComposeViewController *)controller shouldSendMail:(NSString *)mail toRecipients:(NSArray *)recipients completion:(id)completion
{
  v11 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = controller;
  v15[3] = mail;
  v15[4] = recipients;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1000C6F44();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000CCB68;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1000CCB70;
  v18[5] = v17;
  controllerCopy = controller;
  mailCopy = mail;
  recipientsCopy = recipients;
  selfCopy = self;
  sub_1000BF368(0, 0, v13, &unk_1000CCB78, v18);
}

- (_TtCV37com_apple_CloudSharingUI_CloudSharing15ComposeMailView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end