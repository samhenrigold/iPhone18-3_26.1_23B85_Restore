@interface SRUIFLatencyStateManager
- (_TtC16SiriUIFoundation24SRUIFLatencyStateManager)init;
- (id)getLatestLatencyInformation;
- (void)processLatencyProgressUpdate:(id)update;
- (void)processTaskReceivedWithIdentifier:(id)identifier;
@end

@implementation SRUIFLatencyStateManager

- (_TtC16SiriUIFoundation24SRUIFLatencyStateManager)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentTaskIdentifier);
  *v2 = 0;
  v2[1] = 0;
  v3 = (&self->super.isa + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencyProgress) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummaryType) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SRUIFLatencyStateManager();
  return [(SRUIFLatencyStateManager *)&v5 init];
}

- (id)getLatestLatencyInformation
{
  selfCopy = self;
  v3 = sub_2695542F4();

  return v3;
}

- (void)processTaskReceivedWithIdentifier:(id)identifier
{
  v4 = sub_269562BB0();
  v6 = v5;
  selfCopy = self;
  sub_26955443C(v4, v6, v8, v9, v10, v11, v12, v13);

  v6, v14, v15, v16, v17, v18, v19, v20;
}

- (void)processLatencyProgressUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_26955455C(updateCopy);
}

@end