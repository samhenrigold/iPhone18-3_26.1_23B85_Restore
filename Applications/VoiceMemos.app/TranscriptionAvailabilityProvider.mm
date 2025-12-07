@interface TranscriptionAvailabilityProvider
+ (_TtC10VoiceMemos33TranscriptionAvailabilityProvider)shared;
+ (void)setShared:(id)shared;
- (BOOL)deviceIsSupported;
- (void)registerObserver:(id)observer;
- (void)updateDeviceIsSupported;
@end

@implementation TranscriptionAvailabilityProvider

+ (_TtC10VoiceMemos33TranscriptionAvailabilityProvider)shared
{
  if (qword_1002CDE28 != -1)
  {
    swift_once();
  }

  v3 = qword_1002E8DC0;

  return v3;
}

- (void)updateDeviceIsSupported
{
  v3 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_100179578(0, 0, v5, &unk_100247080, v9);
}

- (BOOL)deviceIsSupported
{
  selfCopy = self;

  CurrentValueSubject.value.getter();

  return v4;
}

- (void)registerObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10000685C(observer);
  swift_unknownObjectRelease();
}

+ (void)setShared:(id)shared
{
  v3 = qword_1002CDE28;
  sharedCopy = shared;
  if (v3 != -1)
  {
    v6 = sharedCopy;
    swift_once();
    sharedCopy = v6;
  }

  v5 = qword_1002E8DC0;
  qword_1002E8DC0 = sharedCopy;
}

@end