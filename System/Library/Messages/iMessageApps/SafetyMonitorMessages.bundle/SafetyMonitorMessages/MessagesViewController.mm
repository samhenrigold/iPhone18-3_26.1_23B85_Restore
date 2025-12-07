@interface MessagesViewController
+ (void)replySuggestionWithCompletion:(id)completion;
- (BOOL)_handleTextInputPayload:(id)payload withPayloadID:(id)d;
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (MessagesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MessagesViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)delegate;
- (UIColor)messageTintColor;
- (void)_validateMessageForSending:(MSMessage *)sending conversation:(MSConversation *)conversation associatedText:(NSString *)text completionHandler:(id)handler;
- (void)didBecomeActiveWithConversation:(id)conversation;
- (void)didResignActiveWithConversation:(id)conversation;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation MessagesViewController

- (UIColor)messageTintColor
{
  sub_16278(0, &qword_24760, UIColor_ptr);
  v2 = sub_18E64();

  return v2;
}

- (BOOL)_handleTextInputPayload:(id)payload withPayloadID:(id)d
{
  v5 = sub_18BD4();
  v6 = sub_18C74();
  v8 = v7;
  selfCopy = self;
  LOBYTE(v6) = sub_1C70(v5, v6, v8);

  return v6 & 1;
}

- (void)_validateMessageForSending:(MSMessage *)sending conversation:(MSConversation *)conversation associatedText:(NSString *)text completionHandler:(id)handler
{
  v11 = sub_11BB4(&qword_24780, &qword_19710);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = sending;
  v15[3] = conversation;
  v15[4] = text;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_18DD4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_19810;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_19820;
  v18[5] = v17;
  sendingCopy = sending;
  conversationCopy = conversation;
  textCopy = text;
  selfCopy = self;
  sub_FD3C(0, 0, v13, &unk_19830, v18);
}

+ (void)replySuggestionWithCompletion:(id)completion
{
  v4 = sub_11BB4(&qword_24780, &qword_19710);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v10 = sub_18DD4();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_18DB4();

  v11 = sub_18DA4();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = ObjCClassMetadata;
  v12[5] = sub_15DC4;
  v12[6] = v8;
  sub_403C(0, 0, v6, &unk_19850, v12);
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_DA44(conversationCopy);
}

- (void)didBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_DD70(conversationCopy);
}

- (void)didResignActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_EBB8(conversationCopy);
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  selfCopy = self;
  sub_A910();
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  selfCopy = self;
  sub_14F94();
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_F690(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (MessagesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (MessagesViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)delegate
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end