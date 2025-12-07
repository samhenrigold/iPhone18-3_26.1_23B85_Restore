@interface IMBMessagesAppViewController
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (IMBMessagesAppViewController)initWithNibName:(id)name bundle:(id)bundle;
- (IMBMessagesAppViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)delegate;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation IMBMessagesAppViewController

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_100076270(conversationCopy, selfCopy);
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  selfCopy = self;
  sub_100076470(style, selfCopy);
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController);
  if (v5)
  {
    v7 = *&self->featureFlagArbiter[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    selfCopy = self;
    v11 = v5;
    width = v9(ObjectType, v7, width, height);
    height = v12;
  }

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (IMBMessagesAppViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1000AC06C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000783AC(v5, v7, bundle);
}

- (IMBMessagesAppViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR___IMBMessagesAppViewController_featureFlagArbiter);
  v6 = [objc_allocWithZone(BCFeatureFlag) init];
  v5[3] = sub_100005A24(0, &unk_1000F23F0, BCFeatureFlag_ptr);
  v5[4] = &off_1000DB3C8;
  *v5 = v6;
  v7 = (&self->super.super.super.super.isa + OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___IMBMessagesAppViewController____lazy_storage___dismissalDelegator) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for IMBMessagesAppViewController();
  return [(IMBMessagesAppViewController *)&v9 initWithShouldBeSheetPresentationControllerDelegate:delegateCopy];
}

@end