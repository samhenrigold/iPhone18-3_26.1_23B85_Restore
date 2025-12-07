@interface AAUIInviteMessageViewFactory
+ (id)createInviteMessageViewUIWithUrlComponents:(id)components;
@end

@implementation AAUIInviteMessageViewFactory

+ (id)createInviteMessageViewUIWithUrlComponents:(id)components
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](components, v3);
  swift_getObjCClassMetadata();
  v6 = static InviteMessageViewFactory.createInviteMessageViewUI(urlComponents:)(components);
  MEMORY[0x1E69E5920](components);

  return v6;
}

@end