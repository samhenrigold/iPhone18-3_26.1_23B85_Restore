@interface AgeRangeDaemonService
- (void)ageRangeGlobalStateForAltDSID:(NSString *)d completion:(id)completion;
- (void)deleteAgeRangesWith:(NSString *)with completion:(id)completion;
- (void)fetchAgeRangesWith:(NSString *)with completion:(id)completion;
- (void)fetchAgeWithCompletionHandler:(id)handler;
- (void)fetchAltDSIDWithCompletionHandler:(id)handler;
- (void)fetchFamilyCircleWithCompletionHandler:(id)handler;
- (void)fetchPrivacyVersionForAltDSID:(NSString *)d completion:(id)completion;
- (void)postAgeRangeNotification:(NSString *)notification lowerAgeBound:(NSNumber *)bound upperAgeBound:(NSNumber *)ageBound completion:(id)completion;
- (void)requestAgeRangeWith:(NSArray *)with userAgeOverride:(NSNumber *)override altDSID:(NSString *)d bundleID:(NSString *)iD appName:(NSString *)name attestedAtOverrideInDays:(NSNumber *)days completion:(id)completion;
- (void)saveAgeRangeGlobalState:(int)state forAltDSID:(NSString *)d cacheDuration:(NSNumber *)duration privacyVersion:(NSNumber *)version completion:(id)completion;
- (void)saveAgeRangeWith:(FAAgeRange *)with completion:(id)completion;
- (void)setAgeRangeGlobalState:(int)state forAltDSID:(NSString *)d privacyVersion:(NSNumber *)version completion:(id)completion;
- (void)shouldPromptAgeRangeWith:(NSArray *)with bundleID:(NSString *)d appName:(NSString *)name privacyVersion:(NSNumber *)version userAgeOverride:(NSNumber *)override attestedAtOverrideInDays:(NSNumber *)days completion:(id)completion;
- (void)updateAgeRangeWith:(FAAgeRange *)with completion:(id)completion;
@end

@implementation AgeRangeDaemonService

- (void)postAgeRangeNotification:(NSString *)notification lowerAgeBound:(NSNumber *)bound upperAgeBound:(NSNumber *)ageBound completion:(id)completion
{
  v11 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = notification;
  v16[3] = bound;
  v16[4] = ageBound;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10008D810;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_10008D818;
  v19[5] = v18;
  notificationCopy = notification;
  boundCopy = bound;
  ageBoundCopy = ageBound;

  sub_100071FE8(0, 0, v14, &unk_10008D820, v19);
}

- (void)requestAgeRangeWith:(NSArray *)with userAgeOverride:(NSNumber *)override altDSID:(NSString *)d bundleID:(NSString *)iD appName:(NSString *)name attestedAtOverrideInDays:(NSNumber *)days completion:(id)completion
{
  v16 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v31 - v18;
  v20 = _Block_copy(completion);
  v21 = swift_allocObject();
  v21[2] = with;
  v21[3] = override;
  v21[4] = d;
  v21[5] = iD;
  v21[6] = name;
  v21[7] = days;
  v21[8] = v20;
  v21[9] = self;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_10008D7F0;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_10008D7F8;
  v24[5] = v23;
  withCopy = with;
  overrideCopy = override;
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  daysCopy = days;

  sub_100071FE8(0, 0, v19, &unk_10008D800, v24);
}

- (void)fetchAgeRangesWith:(NSString *)with completion:(id)completion
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = with;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008D7D0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008D7D8;
  v15[5] = v14;
  withCopy = with;

  sub_100071FE8(0, 0, v10, &unk_10008D7E0, v15);
}

- (void)deleteAgeRangesWith:(NSString *)with completion:(id)completion
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = with;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008D7B0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008D7B8;
  v15[5] = v14;
  withCopy = with;

  sub_100071FE8(0, 0, v10, &unk_10008D7C0, v15);
}

- (void)saveAgeRangeWith:(FAAgeRange *)with completion:(id)completion
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = with;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008D790;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008D798;
  v15[5] = v14;
  withCopy = with;

  sub_100071FE8(0, 0, v10, &unk_10008D7A0, v15);
}

- (void)updateAgeRangeWith:(FAAgeRange *)with completion:(id)completion
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = with;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008D770;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008D778;
  v15[5] = v14;
  withCopy = with;

  sub_100071FE8(0, 0, v10, &unk_10008D780, v15);
}

- (void)saveAgeRangeGlobalState:(int)state forAltDSID:(NSString *)d cacheDuration:(NSNumber *)duration privacyVersion:(NSNumber *)version completion:(id)completion
{
  v13 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v25 - v15;
  v17 = _Block_copy(completion);
  v18 = swift_allocObject();
  *(v18 + 16) = state;
  *(v18 + 24) = d;
  *(v18 + 32) = duration;
  *(v18 + 40) = version;
  *(v18 + 48) = v17;
  *(v18 + 56) = self;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_10008D750;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_10008D758;
  v21[5] = v20;
  dCopy = d;
  durationCopy = duration;
  versionCopy = version;

  sub_100071FE8(0, 0, v16, &unk_10008D760, v21);
}

- (void)ageRangeGlobalStateForAltDSID:(NSString *)d completion:(id)completion
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008D730;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008D738;
  v15[5] = v14;
  dCopy = d;

  sub_100071FE8(0, 0, v10, &unk_10008D740, v15);
}

- (void)setAgeRangeGlobalState:(int)state forAltDSID:(NSString *)d privacyVersion:(NSNumber *)version completion:(id)completion
{
  v11 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v22 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  *(v16 + 16) = state;
  *(v16 + 24) = d;
  *(v16 + 32) = version;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10008D710;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_10008D718;
  v19[5] = v18;
  dCopy = d;
  versionCopy = version;

  sub_100071FE8(0, 0, v14, &unk_10008D720, v19);
}

- (void)shouldPromptAgeRangeWith:(NSArray *)with bundleID:(NSString *)d appName:(NSString *)name privacyVersion:(NSNumber *)version userAgeOverride:(NSNumber *)override attestedAtOverrideInDays:(NSNumber *)days completion:(id)completion
{
  v16 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v31 - v18;
  v20 = _Block_copy(completion);
  v21 = swift_allocObject();
  v21[2] = with;
  v21[3] = d;
  v21[4] = name;
  v21[5] = version;
  v21[6] = override;
  v21[7] = days;
  v21[8] = v20;
  v21[9] = self;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_10008D6F0;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_10008D6F8;
  v24[5] = v23;
  withCopy = with;
  dCopy = d;
  nameCopy = name;
  versionCopy = version;
  overrideCopy = override;
  daysCopy = days;

  sub_100071FE8(0, 0, v19, &unk_10008D700, v24);
}

- (void)fetchFamilyCircleWithCompletionHandler:(id)handler
{
  v5 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10008D6D0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10008D6D8;
  v13[5] = v12;

  sub_100071FE8(0, 0, v8, &unk_10008D6E0, v13);
}

- (void)fetchAltDSIDWithCompletionHandler:(id)handler
{
  v5 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10008D6B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10008D6B8;
  v13[5] = v12;

  sub_100071FE8(0, 0, v8, &unk_10008D6C0, v13);
}

- (void)fetchAgeWithCompletionHandler:(id)handler
{
  v5 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10008D690;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10008D698;
  v13[5] = v12;

  sub_100071FE8(0, 0, v8, &unk_10008D6A0, v13);
}

- (void)fetchPrivacyVersionForAltDSID:(NSString *)d completion:(id)completion
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008D680;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008C7F0;
  v15[5] = v14;
  dCopy = d;

  sub_100071FE8(0, 0, v10, &unk_10008C6E0, v15);
}

@end