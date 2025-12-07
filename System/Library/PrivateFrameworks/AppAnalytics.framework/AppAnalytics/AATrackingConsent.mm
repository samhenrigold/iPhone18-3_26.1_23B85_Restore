@interface AATrackingConsent
+ (AATrackingConsent)shared;
+ (NSString)userDefaultsConsentKey;
- (AATrackingConsent)initWithKeychainAccessGroup:(id)group;
- (BOOL)hasConsented;
- (void)allow;
- (void)dealloc;
- (void)deny;
- (void)pop;
- (void)push;
@end

@implementation AATrackingConsent

+ (NSString)userDefaultsConsentKey
{
  v2 = sub_1B6AB92B0();

  return v2;
}

+ (AATrackingConsent)shared
{
  if (qword_1EDBCB498 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDBCB4A0;

  return v3;
}

- (BOOL)hasConsented
{
  v2 = *(&self->super.isa + OBJC_IVAR___AATrackingConsent_consented);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 20));
  v4 = *(v2 + 16) == 0;
  os_unfair_lock_unlock((v2 + 20));

  return v4;
}

- (AATrackingConsent)initWithKeychainAccessGroup:(id)group
{
  ObjectType = swift_getObjectType();
  v10[3] = &type metadata for DefaultKeyValueStore;
  v10[4] = &off_1F2E74C50;
  v10[0] = sub_1B6AB92E0();
  v10[1] = v4;
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v6 = objc_allocWithZone(ObjectType);
  sub_1B69EE930(v10, v9);
  v7 = sub_1B69F15D4(v9, standardUserDefaults, 2, v6);
  sub_1B69F1870(v10);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  sub_1B69949E8(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB9680();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *(&self->super.isa + OBJC_IVAR___AATrackingConsent_userDefaultsObservationTask);
  type metadata accessor for AnalyticsActor();
  inited = swift_initStaticObject();
  v10 = sub_1B69F18A0();
  v11 = swift_allocObject();
  v11[2] = inited;
  v11[3] = v10;
  v11[4] = v8;

  selfCopy = self;
  sub_1B69EE268(0, 0, v6, &unk_1B6ABE558, v11);

  v13.receiver = selfCopy;
  v13.super_class = ObjectType;
  [(AATrackingConsent *)&v13 dealloc];
}

- (void)push
{
  selfCopy = self;
  TrackingConsent.push()();
}

- (void)pop
{
  selfCopy = self;
  TrackingConsent.pop()();
}

- (void)allow
{
  v2 = *(&self->super.isa + OBJC_IVAR___AATrackingConsent_consented);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 20));
  sub_1B69F2A0C((v2 + 16));
  os_unfair_lock_unlock((v2 + 20));
}

- (void)deny
{
  v2 = *(&self->super.isa + OBJC_IVAR___AATrackingConsent_consented);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 20));
  sub_1B69F29F4((v2 + 16));
  os_unfair_lock_unlock((v2 + 20));
}

@end