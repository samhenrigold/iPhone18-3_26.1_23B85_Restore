@interface CorePrescriptionServiceConnection
- (_TtC23CorePrescriptionService33CorePrescriptionServiceConnection)init;
- (void)addEnrollment:(CRXCEnrollmentData *)enrollment inGroup:(int64_t)group fromSource:(int64_t)source assigningUUID:(NSString *)d options:(unint64_t)options completionHandler:(id)handler;
- (void)addEnrollments:(NSArray *)enrollments inGroup:(int64_t)group fromSource:(int64_t)source options:(unint64_t)options completionHandler:(id)handler;
- (void)canSkipGazeEnrollmentWithCompletionHandler:(id)handler;
- (void)checkLensPresenceWithCompletionHandler:(id)handler;
- (void)decodeAppClipCodePayload:(NSData *)payload allowUnsupportedRX:(BOOL)x completionHandler:(id)handler;
- (void)deleteAllASAKeysWithCompletionHandler:(id)handler;
- (void)deleteAllEnrollmentsWithCompletionHandler:(id)handler;
- (void)deleteDemoLensEnrollmentsWithCompletionHandler:(id)handler;
- (void)deleteEnrollmentWithUUID:(NSString *)d completionHandler:(id)handler;
- (void)deleteEnrollmentsInGroup:(int64_t)group completionHandler:(id)handler;
- (void)deselectCurrentEnrollmentWithCompletionHandler:(id)handler;
- (void)dumpDataStoreToFileHandle:(NSFileHandle *)handle table:(NSString *)table options:(unint64_t)options completionHandler:(id)handler;
- (void)encodeAppClipCodePayload:(CRXCAppClipCodePayload *)payload completionHandler:(id)handler;
- (void)fetchActiveComfortAdjustmentDataWithCompletionHandler:(id)handler;
- (void)fetchCalibrationDataForACC:(NSData *)c orASAKey:(NSData *)key options:(NSDictionary *)options completionHandler:(id)handler;
- (void)fetchComfortAdjustmentDataWithCompletionHandler:(id)handler;
- (void)fetchEnrollmentWithUUID:(NSString *)d completionHandler:(id)handler;
- (void)fetchPrescriptionRecordsWithTimeout:(double)timeout completionHandler:(id)handler;
- (void)fetchPrescriptionStateWithCompletionHandler:(id)handler;
- (void)fetchPrismCorrectionForUUID:(NSString *)d inGroup:(int64_t)group completionHandler:(id)handler;
- (void)fetchSystemStatusWithCompletionHandler:(id)handler;
- (void)fetchUserInfoWithCompletionHandler:(id)handler;
- (void)generateAppClipCodePayloadWithVersion:(unint64_t)version lensType:(int64_t)type odRX:(CRXCEyePrescription *)x osRX:(CRXCEyePrescription *)rX colorCode:(unint64_t)code secret:(NSData *)secret completionHandler:(id)handler;
- (void)getCurrentCountryCodeWithCompletionHandler:(id)handler;
- (void)getPrismActivationLocationWithCompletionHandler:(id)handler;
- (void)getPrismActivationStatusWithCompletionHandler:(id)handler;
- (void)listBriefEnrollmentsWithCompletionHandler:(id)handler;
- (void)listEnrollmentsInGroup:(int64_t)group completionHandler:(id)handler;
- (void)migrateExistingRecordsToDataSharingWithCompletionHandler:(id)handler;
- (void)purgeDataWithOptions:(unint64_t)options completionHandler:(id)handler;
- (void)renameEnrollmentWithUUID:(NSString *)d toNewName:(NSString *)name completionHandler:(id)handler;
- (void)selectEnrollmentWithUUID:(NSString *)d completionHandler:(id)handler;
- (void)syncEnrollmentsWithExternalSourcesWithCompletionHandler:(id)handler;
- (void)updateActiveComfortAdjustmentData:(NSData *)data completionHandler:(id)handler;
- (void)updatePrismCorrection:(CRXCPrismCorrection *)correction forUUID:(NSString *)d inGroup:(int64_t)group completionHandler:(id)handler;
- (void)validateAndApplySharedLensEnrollmentAssetsWithCompletionHandler:(id)handler;
@end

@implementation CorePrescriptionServiceConnection

- (_TtC23CorePrescriptionService33CorePrescriptionServiceConnection)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CorePrescriptionServiceConnection();
  return [(CorePrescriptionServiceConnection *)&v3 init];
}

- (void)checkLensPresenceWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085670;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085678;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_100085680, v14);
}

- (void)fetchCalibrationDataForACC:(NSData *)c orASAKey:(NSData *)key options:(NSDictionary *)options completionHandler:(id)handler
{
  v11 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v11 - 8, v12, v13);
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = c;
  v17[3] = key;
  v17[4] = options;
  v17[5] = v16;
  v17[6] = self;
  v18 = sub_100081538();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100085648;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_100085650;
  v20[5] = v19;
  cCopy = c;
  keyCopy = key;
  optionsCopy = options;
  selfCopy = self;
  sub_10002ABB8(0, 0, v15, &unk_100085658, v20);
}

- (void)fetchUserInfoWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085620;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085628;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_100085630, v14);
}

- (void)getCurrentCountryCodeWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000855F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085600;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_100085608, v14);
}

- (void)getPrismActivationLocationWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000855D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000855D8;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_1000855E0, v14);
}

- (void)getPrismActivationStatusWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000855A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000855B0;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_1000855B8, v14);
}

- (void)canSkipGazeEnrollmentWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085580;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085588;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_100085590, v14);
}

- (void)listBriefEnrollmentsWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085558;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085560;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_100085568, v14);
}

- (void)listEnrollmentsInGroup:(int64_t)group completionHandler:(id)handler
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v7 - 8, v8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = group;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_100081538();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100085530;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100085538;
  v16[5] = v15;
  selfCopy = self;
  sub_10002ABB8(0, 0, v11, &unk_100085540, v16);
}

- (void)fetchEnrollmentWithUUID:(NSString *)d completionHandler:(id)handler
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v7 - 8, v8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_100081538();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100085508;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100085510;
  v16[5] = v15;
  dCopy = d;
  selfCopy = self;
  sub_10002ABB8(0, 0, v11, &unk_100085518, v16);
}

- (void)addEnrollment:(CRXCEnrollmentData *)enrollment inGroup:(int64_t)group fromSource:(int64_t)source assigningUUID:(NSString *)d options:(unint64_t)options completionHandler:(id)handler
{
  v15 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v15 - 8, v16, v17);
  v19 = &v28 - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  v21[2] = enrollment;
  v21[3] = group;
  v21[4] = source;
  v21[5] = d;
  v21[6] = options;
  v21[7] = v20;
  v21[8] = self;
  v22 = sub_100081538();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1000854E0;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_1000854E8;
  v24[5] = v23;
  enrollmentCopy = enrollment;
  dCopy = d;
  selfCopy = self;
  sub_10002ABB8(0, 0, v19, &unk_1000854F0, v24);
}

- (void)addEnrollments:(NSArray *)enrollments inGroup:(int64_t)group fromSource:(int64_t)source options:(unint64_t)options completionHandler:(id)handler
{
  v13 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v13 - 8, v14, v15);
  v17 = &v25 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  v19[2] = enrollments;
  v19[3] = group;
  v19[4] = source;
  v19[5] = options;
  v19[6] = v18;
  v19[7] = self;
  v20 = sub_100081538();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1000854B8;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1000854C0;
  v22[5] = v21;
  enrollmentsCopy = enrollments;
  selfCopy = self;
  sub_10002ABB8(0, 0, v17, &unk_1000854C8, v22);
}

- (void)renameEnrollmentWithUUID:(NSString *)d toNewName:(NSString *)name completionHandler:(id)handler
{
  v9 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v9 - 8, v10, v11);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = d;
  v15[3] = name;
  v15[4] = v14;
  v15[5] = self;
  v16 = sub_100081538();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100085490;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100085498;
  v18[5] = v17;
  dCopy = d;
  nameCopy = name;
  selfCopy = self;
  sub_10002ABB8(0, 0, v13, &unk_1000854A0, v18);
}

- (void)deleteEnrollmentWithUUID:(NSString *)d completionHandler:(id)handler
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v7 - 8, v8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_100081538();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100085468;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100085470;
  v16[5] = v15;
  dCopy = d;
  selfCopy = self;
  sub_10002ABB8(0, 0, v11, &unk_100085478, v16);
}

- (void)deleteAllEnrollmentsWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085440;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085448;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_100085450, v14);
}

- (void)deleteEnrollmentsInGroup:(int64_t)group completionHandler:(id)handler
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v7 - 8, v8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = group;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_100081538();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100085418;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100085420;
  v16[5] = v15;
  selfCopy = self;
  sub_10002ABB8(0, 0, v11, &unk_100085428, v16);
}

- (void)deleteDemoLensEnrollmentsWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000853F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000853F8;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_100085400, v14);
}

- (void)selectEnrollmentWithUUID:(NSString *)d completionHandler:(id)handler
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v7 - 8, v8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_100081538();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000853C8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000853D0;
  v16[5] = v15;
  dCopy = d;
  selfCopy = self;
  sub_10002ABB8(0, 0, v11, &unk_1000853D8, v16);
}

- (void)deselectCurrentEnrollmentWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000853A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000853A8;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_1000853B0, v14);
}

- (void)syncEnrollmentsWithExternalSourcesWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085378;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085380;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_100085388, v14);
}

- (void)deleteAllASAKeysWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085350;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085358;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_100085360, v14);
}

- (void)fetchPrescriptionStateWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085328;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085330;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_100085338, v14);
}

- (void)fetchActiveComfortAdjustmentDataWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085300;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085308;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_100085310, v14);
}

- (void)updateActiveComfortAdjustmentData:(NSData *)data completionHandler:(id)handler
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v7 - 8, v8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = data;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_100081538();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000852D8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000852E0;
  v16[5] = v15;
  dataCopy = data;
  selfCopy = self;
  sub_10002ABB8(0, 0, v11, &unk_1000852E8, v16);
}

- (void)fetchComfortAdjustmentDataWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000852B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000852B8;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_1000852C0, v14);
}

- (void)fetchPrismCorrectionForUUID:(NSString *)d inGroup:(int64_t)group completionHandler:(id)handler
{
  v9 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v9 - 8, v10, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = d;
  v15[3] = group;
  v15[4] = v14;
  v15[5] = self;
  v16 = sub_100081538();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100085288;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100085290;
  v18[5] = v17;
  dCopy = d;
  selfCopy = self;
  sub_10002ABB8(0, 0, v13, &unk_100085298, v18);
}

- (void)updatePrismCorrection:(CRXCPrismCorrection *)correction forUUID:(NSString *)d inGroup:(int64_t)group completionHandler:(id)handler
{
  v11 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v11 - 8, v12, v13);
  v15 = &v24 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = correction;
  v17[3] = d;
  v17[4] = group;
  v17[5] = v16;
  v17[6] = self;
  v18 = sub_100081538();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100085260;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_100085268;
  v20[5] = v19;
  correctionCopy = correction;
  dCopy = d;
  selfCopy = self;
  sub_10002ABB8(0, 0, v15, &unk_100085270, v20);
}

- (void)fetchPrescriptionRecordsWithTimeout:(double)timeout completionHandler:(id)handler
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v7 - 8, v8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = timeout;
  *(v13 + 24) = v12;
  *(v13 + 32) = self;
  v14 = sub_100081538();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100085238;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100085240;
  v16[5] = v15;
  selfCopy = self;
  sub_10002ABB8(0, 0, v11, &unk_100085248, v16);
}

- (void)purgeDataWithOptions:(unint64_t)options completionHandler:(id)handler
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v7 - 8, v8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = options;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_100081538();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100085210;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100085218;
  v16[5] = v15;
  selfCopy = self;
  sub_10002ABB8(0, 0, v11, &unk_100085220, v16);
}

- (void)decodeAppClipCodePayload:(NSData *)payload allowUnsupportedRX:(BOOL)x completionHandler:(id)handler
{
  v9 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v9 - 8, v10, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = payload;
  *(v15 + 24) = x;
  *(v15 + 32) = v14;
  *(v15 + 40) = self;
  v16 = sub_100081538();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000851E8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1000851F0;
  v18[5] = v17;
  payloadCopy = payload;
  selfCopy = self;
  sub_10002ABB8(0, 0, v13, &unk_1000851F8, v18);
}

- (void)encodeAppClipCodePayload:(CRXCAppClipCodePayload *)payload completionHandler:(id)handler
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v7 - 8, v8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = payload;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_100081538();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000851C0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000851C8;
  v16[5] = v15;
  payloadCopy = payload;
  selfCopy = self;
  sub_10002ABB8(0, 0, v11, &unk_1000851D0, v16);
}

- (void)generateAppClipCodePayloadWithVersion:(unint64_t)version lensType:(int64_t)type odRX:(CRXCEyePrescription *)x osRX:(CRXCEyePrescription *)rX colorCode:(unint64_t)code secret:(NSData *)secret completionHandler:(id)handler
{
  v16 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v16 - 8, v17, v18);
  v20 = &v30 - v19;
  v21 = _Block_copy(handler);
  v22 = swift_allocObject();
  v22[2] = version;
  v22[3] = type;
  v22[4] = x;
  v22[5] = rX;
  v22[6] = code;
  v22[7] = secret;
  v22[8] = v21;
  v22[9] = self;
  v23 = sub_100081538();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_100085198;
  v24[5] = v22;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_1000851A0;
  v25[5] = v24;
  xCopy = x;
  rXCopy = rX;
  secretCopy = secret;
  selfCopy = self;
  sub_10002ABB8(0, 0, v20, &unk_1000851A8, v25);
}

- (void)dumpDataStoreToFileHandle:(NSFileHandle *)handle table:(NSString *)table options:(unint64_t)options completionHandler:(id)handler
{
  v11 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v11 - 8, v12, v13);
  v15 = &v24 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = handle;
  v17[3] = table;
  v17[4] = options;
  v17[5] = v16;
  v17[6] = self;
  v18 = sub_100081538();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100085170;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_100085178;
  v20[5] = v19;
  handleCopy = handle;
  tableCopy = table;
  selfCopy = self;
  sub_10002ABB8(0, 0, v15, &unk_100085180, v20);
}

- (void)validateAndApplySharedLensEnrollmentAssetsWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085148;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085150;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_100085158, v14);
}

- (void)fetchSystemStatusWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085120;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085128;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_100085130, v14);
}

- (void)migrateExistingRecordsToDataSharingWithCompletionHandler:(id)handler
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_100081538();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000850C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000850D8;
  v14[5] = v13;
  selfCopy = self;
  sub_10002ABB8(0, 0, v9, &unk_1000850E8, v14);
}

@end