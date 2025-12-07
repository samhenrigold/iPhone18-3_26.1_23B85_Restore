@interface SESecureCaptureOpenApplicationAction
- (NSSet)launchActions;
- (SESecureCaptureOpenApplicationAction)init;
- (SESecureCaptureOpenApplicationAction)initWithCoder:(id)coder;
- (SESecureCaptureOpenApplicationAction)initWithInfo:(id)info responder:(id)responder;
- (SESecureCaptureOpenApplicationAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (SESecureCaptureOpenApplicationAction)initWithURL:(id)l responder:(id)responder;
- (SESecureCaptureOpenApplicationAction)initWithUserActivity:(id)activity responder:(id)responder;
- (SESecureCaptureOpenApplicationAction)initWithXPCDictionary:(id)dictionary;
@end

@implementation SESecureCaptureOpenApplicationAction

- (SESecureCaptureOpenApplicationAction)init
{
  v3.receiver = self;
  v3.super_class = SESecureCaptureOpenApplicationAction;
  return [(SESecureCaptureOpenApplicationAction *)&v3 initWithInfo:0 responder:0];
}

- (SESecureCaptureOpenApplicationAction)initWithURL:(id)l responder:(id)responder
{
  v6 = sub_264F13014();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264F13004();
  v10 = objc_allocWithZone(MEMORY[0x277CF0C80]);
  responderCopy = responder;
  v12 = [v10 init];
  v13 = sub_264F12FD4();
  [v12 setObject:v13 forSetting:0];

  v16.receiver = self;
  v16.super_class = SESecureCaptureOpenApplicationAction;
  v14 = [(SESecureCaptureOpenApplicationAction *)&v16 initWithInfo:v12 responder:responderCopy];

  (*(v7 + 8))(v9, v6);
  return v14;
}

- (SESecureCaptureOpenApplicationAction)initWithUserActivity:(id)activity responder:(id)responder
{
  activityCopy = activity;
  responderCopy = responder;
  return SESecureCaptureOpenApplicationAction.init(userActivity:responder:)(activityCopy, responder);
}

- (SESecureCaptureOpenApplicationAction)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SESecureCaptureOpenApplicationAction;
  coderCopy = coder;
  v4 = [(SESecureCaptureOpenApplicationAction *)&v6 initWithCoder:coderCopy];

  if (v4)
  {
  }

  return v4;
}

- (SESecureCaptureOpenApplicationAction)initWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = SESecureCaptureOpenApplicationAction;
  swift_unknownObjectRetain();
  v4 = [(SESecureCaptureOpenApplicationAction *)&v6 initWithXPCDictionary:dictionary];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (NSSet)launchActions
{
  selfCopy = self;
  SESecureCaptureOpenApplicationAction.launchActions.getter();

  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  sub_264EFB470();
  v3 = sub_264F13364();

  return v3;
}

- (SESecureCaptureOpenApplicationAction)initWithInfo:(id)info responder:(id)responder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SESecureCaptureOpenApplicationAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end