@interface BEDownloadMonitor
+ (id)createAccessToken;
- (BEDownloadMonitor)init;
- (BEDownloadMonitor)initWithSourceURL:(id)l destinationURL:(id)rL observedProgress:(id)progress liveActivityAccessToken:(id)token;
- (void)beginMonitoring:(id)monitoring;
- (void)dealloc;
- (void)resumeMonitoring:(NSURL *)monitoring completionHandler:(id)handler;
- (void)useDownloadsFolderWithPlaceholderType:(id)type finalFileCreatedHandler:(id)handler;
@end

@implementation BEDownloadMonitor

- (BEDownloadMonitor)initWithSourceURL:(id)l destinationURL:(id)rL observedProgress:(id)progress liveActivityAccessToken:(id)token
{
  v8 = sub_19D51DF6C();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  sub_19D51DF3C();
  sub_19D51DF3C();
  progressCopy = progress;
  tokenCopy = token;
  v16 = sub_19D51DFAC();
  v18 = v17;

  return BEDownloadMonitor.init(sourceURL:destinationURL:observedProgress:liveActivityAccessToken:)(v13, v11, progressCopy, v16, v18);
}

- (void)useDownloadsFolderWithPlaceholderType:(id)type finalFileCreatedHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015980, &qword_19D520970);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  if (type)
  {
    selfCopy = self;
    typeCopy = type;
    sub_19D51E16C();

    v13 = sub_19D51E18C();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v14 = sub_19D51E18C();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    selfCopy2 = self;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  sub_19D50DF74(v9, sub_19D516330, v16);

  sub_19D50116C(v9, &qword_1EB015980, &qword_19D520970);
}

- (void)beginMonitoring:(id)monitoring
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(monitoring);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_19D51E37C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_19D520B28;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_19D520B30;
  v12[5] = v11;
  selfCopy = self;
  sub_19D5143E8(0, 0, v7, &unk_19D520B38, v12);
}

- (void)resumeMonitoring:(NSURL *)monitoring completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = monitoring;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_19D51E37C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19D520AE0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19D520AF0;
  v14[5] = v13;
  monitoringCopy = monitoring;
  selfCopy = self;
  sub_19D5143E8(0, 0, v9, &unk_19D520B00, v14);
}

+ (id)createAccessToken
{
  v2 = _s16BrowserEngineKit17BEDownloadMonitorC17createAccessToken10Foundation4DataVSgyFZ_0();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v7 = sub_19D51DF9C();
    sub_19D5155C4(v5, v6);
    v4 = v7;
  }

  return v4;
}

- (void)dealloc
{
  selfCopy = self;
  sandbox_extension_release();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for BEDownloadMonitor(0);
  [(BEDownloadMonitor *)&v3 dealloc];
}

- (BEDownloadMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end