@interface IDSDataChannelLinkEngineHandle
- (BOOL)allowOngoingTasks;
- (IDSDataChannelLinkEngineHandle)init;
- (IDSDataChannelLinkEngineHandle)initWithTimeFn:(id)fn enableQualityMetrics:(BOOL)metrics;
- (void)addLinkWithUniqueID:(id)d;
- (void)qualityDeltaSince:(IDSLinksQualityReportSyncTokenObject *)since completionHandler:(id)handler;
- (void)removeLinkWithUniqueID:(id)d;
- (void)setAllowOngoingTasks:(BOOL)tasks;
- (void)setTestableLink:(id)link forLinkWithUniqueID:(id)d;
@end

@implementation IDSDataChannelLinkEngineHandle

- (BOOL)allowOngoingTasks
{
  v2 = *(&self->super.isa + OBJC_IVAR___IDSDataChannelLinkEngineHandle_linkEngine);
  if (v2)
  {
    v3 = *(v2 + 16);
    selfCopy = self;

    os_unfair_lock_lock((v3 + 32));
    v5 = *(v3 + 36);
    os_unfair_lock_unlock((v3 + 32));

    LOBYTE(self) = v5;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)setAllowOngoingTasks:(BOOL)tasks
{
  v3 = *(&self->super.isa + OBJC_IVAR___IDSDataChannelLinkEngineHandle_linkEngine);
  if (v3)
  {
    v5 = *(v3 + 16);
    selfCopy = self;

    os_unfair_lock_lock((v5 + 32));
    *(v5 + 36) = tasks;
    os_unfair_lock_unlock((v5 + 32));
    LinkEngine.scheduleUpdate()();
  }

  else
  {
    __break(1u);
  }
}

- (IDSDataChannelLinkEngineHandle)initWithTimeFn:(id)fn enableQualityMetrics:(BOOL)metrics
{
  v6 = _Block_copy(fn);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = OBJC_IVAR___IDSDataChannelLinkEngineHandle_linkEngine;
  *(&self->super.isa + OBJC_IVAR___IDSDataChannelLinkEngineHandle_linkEngine) = 0;
  type metadata accessor for IDSDataChannelLinkEngine();
  swift_allocObject();

  *(&self->super.isa + v8) = IDSDataChannelLinkEngine.init(timeFn:enableQualityMetrics:)(sub_1A7D53CC8, v7, metrics);

  v11.receiver = self;
  v11.super_class = IDSDataChannelLinkEngineHandle;
  v9 = [(IDSDataChannelLinkEngineHandle *)&v11 init];

  return v9;
}

- (void)addLinkWithUniqueID:(id)d
{
  v4 = sub_1A7E22290();
  if (*(&self->super.isa + OBJC_IVAR___IDSDataChannelLinkEngineHandle_linkEngine))
  {
    v6 = v4;
    v7 = v5;
    selfCopy = self;

    LinkEngine.add(linkWithUniqueName:)(v6, v7);
  }

  else
  {
    __break(1u);
  }
}

- (void)removeLinkWithUniqueID:(id)d
{
  v4 = sub_1A7E22290();
  if (*(&self->super.isa + OBJC_IVAR___IDSDataChannelLinkEngineHandle_linkEngine))
  {
    v6 = v4;
    v7 = v5;
    selfCopy = self;

    v9._countAndFlagsBits = v6;
    v9._object = v7;
    LinkEngine.remove(linkWithUniqueName:)(v9);
  }

  else
  {
    __break(1u);
  }
}

- (void)setTestableLink:(id)link forLinkWithUniqueID:(id)d
{
  v6 = sub_1A7E22290();
  if (*(&self->super.isa + OBJC_IVAR___IDSDataChannelLinkEngineHandle_linkEngine))
  {
    v8 = v6;
    v9 = v7;
    linkCopy = link;
    selfCopy = self;

    sub_1A7DA3B8C(v12, v8, v9);
  }

  else
  {
    __break(1u);
  }
}

- (void)qualityDeltaSince:(IDSLinksQualityReportSyncTokenObject *)since completionHandler:(id)handler
{
  v7 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = since;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A7E226D0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A7E4F560;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A7E48E60;
  v14[5] = v13;
  sinceCopy = since;
  selfCopy = self;
  sub_1A7DE5274(0, 0, v9, &unk_1A7E45700, v14);
}

- (IDSDataChannelLinkEngineHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end