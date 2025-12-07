@interface AAAppSessionManager
- (AAAppSessionManager)initWithTrackingConsent:(id)consent;
- (AAAppSessionManager)initWithTrackingConsent:(id)consent userDataConfiguration:(id)configuration;
- (id)createSessionManager;
- (id)userEventsID;
- (void)appSessionDidTerminate;
- (void)endAppSession:(id)session;
- (void)startAppSession;
- (void)startAppSessionWithShouldCorrelateSceneSessions:(BOOL)sessions;
@end

@implementation AAAppSessionManager

- (AAAppSessionManager)initWithTrackingConsent:(id)consent
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for SummaryEventConfiguration(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1EDBCAC70;
  consentCopy = consent;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_1EDBCA728);
  sub_1B6980548(v11, v8, type metadata accessor for SummaryEventConfiguration);
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_1EDBCADE8;

  v13 = sub_1B6A9968C(consentCopy, v12, v8);

  *(&self->super.isa + OBJC_IVAR___AAAppSessionManager_appSessionManager) = v13;
  v17.receiver = self;
  v17.super_class = ObjectType;
  v14 = [(AAAppSessionManager *)&v17 init];

  return v14;
}

- (AAAppSessionManager)initWithTrackingConsent:(id)consent userDataConfiguration:(id)configuration
{
  consentCopy = consent;
  configurationCopy = configuration;
  v7 = sub_1B6A99B38(consentCopy, configurationCopy);

  return v7;
}

- (id)createSessionManager
{
  v3 = type metadata accessor for SessionManagerConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  selfCopy = self;
  sub_1B6A97CCC(v5);
  v7 = AppSessionManager.createSessionManager(with:)(v5);
  sub_1B6A9A254(v5, type metadata accessor for SessionManagerConfiguration);
  v8 = objc_allocWithZone(type metadata accessor for BridgedSessionManager());
  v9 = sub_1B6AA700C(v7);

  return v9;
}

- (void)startAppSession
{
  v3 = *(&self->super.isa + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  v4 = *(v3 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  *(v5 + 24) = v3;
  selfCopy = self;

  sub_1B69877A4(v4, sub_1B6A90A48, v5);
}

- (void)startAppSessionWithShouldCorrelateSceneSessions:(BOOL)sessions
{
  v5 = *(&self->super.isa + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  v6 = *(v5 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = sessions;
  *(v7 + 24) = v5;
  selfCopy = self;

  sub_1B69877A4(v6, sub_1B6A90A48, v7);
}

- (void)endAppSession:(id)session
{
  v4 = _Block_copy(session);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B69D72B0;
  *(v6 + 24) = v5;
  selfCopy = self;

  AppSessionManager.endAppSession(_:)(sub_1B6A0BE38, v6);
}

- (void)appSessionDidTerminate
{
  selfCopy = self;
  BridgedAppSessionManager.appSessionDidTerminate()();
}

- (id)userEventsID
{
  sub_1B6A9A194(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  if ((*(&self->super.isa + OBJC_IVAR___AAAppSessionManager_appSessionManager))[5])
  {
    selfCopy = self;
    sub_1B6A81954(v5);
    v7 = sub_1B6AB8E40();
    v8 = *(v7 - 8);
    (*(v8 + 56))(v5, 0, 1, v7);

    v9 = (*(v8 + 48))(v5, 1, v7);
    v10 = 0;
    if (v9 != 1)
    {
      v11 = sub_1B6AB8DE0();
      (*(v8 + 8))(v5, v7);
      v10 = v11;
    }
  }

  else
  {
    v12 = sub_1B6AB8E40();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v10 = 0;
  }

  return v10;
}

@end