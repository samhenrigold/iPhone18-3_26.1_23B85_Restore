@interface CKModernDetailsControllerFactory
+ (id)detailsControllerWithConversation:(id)conversation delegate:(id)delegate;
- (CKModernDetailsControllerFactory)init;
@end

@implementation CKModernDetailsControllerFactory

+ (id)detailsControllerWithConversation:(id)conversation delegate:(id)delegate
{
  v6 = objc_allocWithZone(type metadata accessor for ModernDetailsController(0));
  conversationCopy = conversation;
  swift_unknownObjectRetain();
  v8 = sub_1908F2900(conversationCopy, delegate);

  swift_unknownObjectRelease();

  return v8;
}

- (CKModernDetailsControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ModernDetailsControllerFactory();
  return [(CKModernDetailsControllerFactory *)&v3 init];
}

@end