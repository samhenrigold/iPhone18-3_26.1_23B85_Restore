@interface BATracker
- (BOOL)optedIn;
- (NSDate)sessionStartTime;
- (NSString)name;
- (NSString)path;
- (_TtC13BookAnalytics9BATracker)init;
- (id)chainWithName:(id)name;
- (void)onSessionChangeWithBlock:(id)block;
- (void)performAfterPrivateDataFetchedWithCompletionHandler:(id)handler;
- (void)popOrientationData;
- (void)popRawDataEventWithName:(id)name;
- (void)popSessionListeningData;
- (void)popSessionReadingData;
- (void)pushOrientationDataFromFile:(id)file line:(int64_t)line;
- (void)pushRawDataEventWithNameData:(id)data :(id)a4 :(id)a5;
- (void)submitAppSessionStartEvent;
- (void)submitRawEvent:(id)event :(id)a4;
- (void)submitRawEventEndTime:(id)time :(id)a4 :(id)a5;
- (void)submitRawEventOnlyIfTimed:(id)timed :(id)a4 :(BOOL)a5;
- (void)timeAppSessionEndEvent;
- (void)timeRawEvent:(id)event :(id)a4 :(id)a5;
@end

@implementation BATracker

- (void)popOrientationData
{
  selfCopy = self;
  BATracker.popOrientationData()();
}

- (void)popSessionListeningData
{
  selfCopy = self;
  BATracker.popSessionListeningData()();
}

- (void)popSessionReadingData
{
  selfCopy = self;
  BATracker.popSessionReadingData()();
}

- (void)pushOrientationDataFromFile:(id)file line:(int64_t)line
{
  v6 = sub_1E1780();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  BATracker.pushOrientationData(file:line:)(v10, line);

  v8, v11, v12, v13, v14, v15, v16, v17;
}

- (void)submitAppSessionStartEvent
{
  type metadata accessor for AppSessionStartEvent(0);
  sub_103870(&qword_286BA8, type metadata accessor for AppSessionStartEvent, protocol conformance descriptor for AppSessionStartEvent);
  selfCopy = self;
  sub_1E1140();
}

- (void)timeAppSessionEndEvent
{
  v3 = sub_3D68(&qword_287B10, &qword_1FCF80);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_1E09E0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  selfCopy = self;
  sub_102A78(v5);

  sub_103798(v5);
}

- (id)chainWithName:(id)name
{
  ObjectType = swift_getObjectType();
  sub_1E1780();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1E1130();
  v6, v9, v10, v11, v12, v13, v14, v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = objc_allocWithZone(ObjectType);
  v18 = sub_1D6388(v8, Strong);

  v8, v19, v20, v21, v22, v23, v24, v25;
  swift_unknownObjectRelease();

  return v18;
}

- (void)onSessionChangeWithBlock:(id)block
{
  v4 = _Block_copy(block);
  v5 = swift_allocObject();
  v5[1].super.isa = v4;
  v6 = swift_allocObject();
  v6[1].super.isa = sub_1D6BF8;
  *v6[1].dataProviders = v5;
  selfCopy = self;

  v8 = sub_1E10E0();
  v8, v9, v10, v11, v12, v13, v14, v15;

  v6, v16, v17, v18, v19, v20, v21, v22;

  v5, v23, v24, v25, v26, v27, v28, v29;
}

- (_TtC13BookAnalytics9BATracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)name
{
  selfCopy = self;
  v3 = sub_1E10B0();
  sub_1E0CA0();
  v5 = v4;

  v6 = sub_1E1770();
  v5, v7, v8, v9, v10, v11, v12, v13;

  return v6;
}

- (BOOL)optedIn
{
  sharedConnection = [objc_opt_self() sharedConnection];
  if (sharedConnection)
  {
    v3 = sharedConnection;
    isDiagnosticSubmissionAllowed = [sharedConnection isDiagnosticSubmissionAllowed];

    LOBYTE(sharedConnection) = isDiagnosticSubmissionAllowed;
  }

  else
  {
    __break(1u);
  }

  return sharedConnection;
}

- (NSString)path
{
  selfCopy = self;
  v20 = sub_1E1100();
  sub_3D68(&qword_281BC0, &unk_1EDD80);
  sub_EC07C(&qword_28F2E0, &qword_281BC0, &unk_1EDD80, &protocol conformance descriptor for [A]);
  sub_1E1750();
  v4 = v3;
  v20, v3, v5, v6, v7, v8, v9, v10;

  v11 = sub_1E1770();
  v4, v12, v13, v14, v15, v16, v17, v18;

  return v11;
}

- (void)timeRawEvent:(id)event :(id)a4 :(id)a5
{
  eventCopy = event;
  v9 = a4;
  v10 = a5;
  selfCopy = self;
  BATracker.timeRawEvent(eventNameValue:propertiesValue:startTimeValue:)(eventCopy, v9, v10);
}

- (void)submitRawEvent:(id)event :(id)a4
{
  v5 = sub_3D68(&qword_287B10, &qword_1FCF80);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_1E1780();
  v10 = v9;
  sub_3D68(&qword_28B468, &qword_2051D0);
  v11 = sub_1E1730();
  v12 = sub_1E09E0();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  selfCopy = self;
  BATracker.submitRawEvent(_:properties:endTime:)(v8, v10, v11, v7);
  sub_18E48(v7, &qword_287B10, &qword_1FCF80);

  v10, v14, v15, v16, v17, v18, v19, v20;
  v11, v21, v22, v23, v24, v25, v26, v27;
}

- (void)submitRawEventEndTime:(id)time :(id)a4 :(id)a5
{
  v7 = sub_1E1780();
  v9 = v8;
  sub_3D68(&qword_28B468, &qword_2051D0);
  v10 = sub_1E1730();
  v11 = a5;
  selfCopy = self;
  v13._countAndFlagsBits = v7;
  v13._object = v9;
  v29.value.super.isa = a5;
  BATracker.submitRawEvent(_:properties:endTimeValue:)(v13, v10, v29);

  v9, v14, v15, v16, v17, v18, v19, v20;

  v10, v21, v22, v23, v24, v25, v26, v27;
}

- (void)submitRawEventOnlyIfTimed:(id)timed :(id)a4 :(BOOL)a5
{
  v5 = a5;
  v7 = sub_1E1780();
  v9 = v8;
  sub_3D68(&qword_28B468, &qword_2051D0);
  v10 = sub_1E1730();
  selfCopy = self;
  v11 = sub_1D646C(v7, v9, v10);
  v9, v12, v13, v14, v15, v16, v17, v18;
  v10, v19, v20, v21, v22, v23, v24, v25;
  v26 = sub_1E10B0();
  [v26 submitRawEvent:v11 onlyIfTimed:v5];
}

- (void)pushRawDataEventWithNameData:(id)data :(id)a4 :(id)a5
{
  v6 = sub_1E1780();
  v8 = v7;
  v9 = sub_1E1730();
  v10 = sub_1E18C0();
  selfCopy = self;
  v12._countAndFlagsBits = v6;
  v12._object = v8;
  BATracker.pushRawDataEvent(with:data:traitValues:)(v12, v9, v10);

  v8, v13, v14, v15, v16, v17, v18, v19;
  v9, v20, v21, v22, v23, v24, v25, v26;

  v10, v27, v28, v29, v30, v31, v32, v33;
}

- (void)popRawDataEventWithName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  v5 = sub_1E10B0();
  [v5 popDataEventByName:nameCopy];
}

- (NSDate)sessionStartTime
{
  v3 = sub_3D68(&qword_287B10, &qword_1FCF80);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  BATracker.sessionStartTime.getter(v5);

  v7 = sub_1E09E0();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = sub_1E0970().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (void)performAfterPrivateDataFetchedWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  v5[1].super.isa = v4;
  selfCopy = self;
  BATracker.performAfterPrivateDataFetched(completionHandler:)(sub_1D6BB0, v5);

  v5, v7, v8, v9, v10, v11, v12, v13;
}

@end