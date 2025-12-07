@interface WFSetupServerInternal
- (BOOL)resume;
- (WFSetupServerInternal)init;
- (_TtC10TDGSharing33WFSetupServerAnisetteDataProvider)anisetteDataProvider;
- (void)activateWith:(int64_t)with;
- (void)invalidate;
- (void)prepareToRun;
- (void)sendSetupWithAction:(unsigned int)action info:(id)info responseHandler:(id)handler;
- (void)setAnisetteDataProvider:(id)provider;
- (void)setWithDelegate:(id)delegate;
- (void)tryPin:(id)pin;
@end

@implementation WFSetupServerInternal

- (_TtC10TDGSharing33WFSetupServerAnisetteDataProvider)anisetteDataProvider
{
  v3 = OBJC_IVAR___WFSetupServerInternal_anisetteDataProvider;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAnisetteDataProvider:(id)provider
{
  v5 = OBJC_IVAR___WFSetupServerInternal_anisetteDataProvider;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = provider;
  providerCopy = provider;
}

- (void)setWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_26C68BDEC(delegate);
  swift_unknownObjectRelease();
}

- (WFSetupServerInternal)init
{
  type metadata accessor for SFServiceAgent(0);
  swift_allocObject();
  v2 = sub_26C66D2E0();
  v3 = objc_allocWithZone(type metadata accessor for WFSetupServer());
  v4 = sub_26C6981B8(v2, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)prepareToRun
{
  selfCopy = self;
  sub_26C690860();
}

- (BOOL)resume
{
  selfCopy = self;
  v3 = sub_26C690A24();

  return v3 & 1;
}

- (void)activateWith:(int64_t)with
{
  selfCopy = self;
  sub_26C690F78(with);
}

- (void)invalidate
{
  selfCopy = self;
  sub_26C6920E4();
}

- (void)sendSetupWithAction:(unsigned int)action info:(id)info responseHandler:(id)handler
{
  v7 = _Block_copy(handler);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_26C69A2D4;
  }

  else
  {
    v8 = 0;
  }

  selfCopy = self;
  sub_26C699700(action);
  sub_26C676904(v7, v8);
}

- (void)tryPin:(id)pin
{
  v4 = sub_26C6D8A08();
  v6 = v5;
  selfCopy = self;
  sub_26C692D64(v4, v6);
}

@end