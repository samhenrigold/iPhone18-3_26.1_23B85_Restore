@interface LACDTOMutablePendingPolicyEvaluation
- (BOOL)hasNotifiedUserAboutCompletion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInvalidated;
- (BOOL)isNotificationScheduledForDate:(id)date;
- (NSString)description;
- (NSString)identifier;
- (NSURL)callbackURL;
- (_TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation)init;
- (_TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation)initWithIdentifier:(id)identifier;
- (void)setCallbackURL:(id)l;
- (void)setIsInvalidated:(BOOL)invalidated;
@end

@implementation LACDTOMutablePendingPolicyEvaluation

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier);
  v3 = *(self + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier + 8);

  v4 = MEMORY[0x1B27229A0](v2, v3);

  return v4;
}

- (BOOL)isInvalidated
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsInvalidated:(BOOL)invalidated
{
  v5 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated;
  swift_beginAccess();
  *(self + v5) = invalidated;
}

- (NSURL)callbackURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackURL;
  swift_beginAccess();
  outlined init with copy of (String, Any)(self + v6, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (void)setCallbackURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackURL;
  swift_beginAccess();
  selfCopy = self;
  outlined assign with take of URL?(v7, self + v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  swift_endAccess();
}

- (BOOL)hasNotifiedUserAboutCompletion
{
  selfCopy = self;
  v3 = LACDTOMutablePendingPolicyEvaluation.hasNotifiedUserAboutCompletion.getter();

  return v3 & 1;
}

- (_TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation)initWithIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(self + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated) = 0;
  v7 = (self + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackReason);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackURL;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_notificationScheduledAt;
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 56);
  v12(self + v10, 1, 1, v11);
  v12(self + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_coolOffStarted, 1, 1, v11);
  v13 = (self + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_ratchetUUID);
  *v13 = 0;
  v13[1] = 0;
  v14 = (self + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier);
  *v14 = v4;
  v14[1] = v6;
  v16.receiver = self;
  v16.super_class = type metadata accessor for LACDTOMutablePendingPolicyEvaluation(0);
  return [(LACDTOMutablePendingPolicyEvaluation *)&v16 init];
}

- (BOOL)isNotificationScheduledForDate:(id)date
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = LACDTOMutablePendingPolicyEvaluation.isNotificationScheduled(for:)(v7);

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (_TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  v3 = LACDTOMutablePendingPolicyEvaluation.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B27229A0](v3, v5);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = LACDTOMutablePendingPolicyEvaluation.isEqual(_:)(v8);

  outlined destroy of AsyncStream<()>.Continuation?(v8, &_sypSgMd, _sypSgMR);
  return v6 & 1;
}

@end